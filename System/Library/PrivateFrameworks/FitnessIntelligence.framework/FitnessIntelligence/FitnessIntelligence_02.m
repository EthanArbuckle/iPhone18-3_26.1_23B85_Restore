uint64_t sub_1B4980308@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v119 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v117 = *(v3 - 8);
  v118 = v3;
  v4 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v122 = &v107 - v5;
  v120 = sub_1B4D1794C();
  v6 = *(v120 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v9 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v107 - v12;
  v14 = sub_1B4D1777C();
  v124 = *(v14 - 8);
  v125 = v14;
  v15 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v123 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v107 - v18;
  v20 = sub_1B4D178CC();
  v121 = type metadata accessor for FitnessContextDemoClient();
  v21 = v121[5];
  v22 = sub_1B4D1771C();
  v23 = [v20 hk:v22 startOfFitnessWeekBeforeDate:?];

  v24 = v124;
  sub_1B4D1775C();

  v25 = v2;
  v26 = v120;
  (*(v6 + 104))(v9, *MEMORY[0x1E6969A48], v120);
  v126 = v19;
  sub_1B4D1790C();
  v27 = v9;
  v28 = v125;
  (*(v6 + 8))(v27, v26);
  v29 = *(v24 + 48);
  if (v29(v13, 1, v28) == 1)
  {
    (*(v24 + 16))(v123, v25 + v21, v28);
    v30 = v21;
    if (v29(v13, 1, v28) != 1)
    {
      sub_1B4975024(v13, &qword_1EB8A6790, &qword_1B4D1BBC0);
    }
  }

  else
  {
    (*(v24 + 32))(v123, v13, v28);
    v30 = v21;
  }

  v31 = 0;
  v32 = 0;
  v33 = v121;
  v34 = *(v25 + v121[7]);
  v35 = 1 << *(v34 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v34 + 64;
  v38 = v36 & *(v34 + 64);
  v39 = (v35 + 63) >> 6;
  while (v38)
  {
    v40 = v31;
LABEL_14:
    v41 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v42 = *(*(v34 + 56) + 56 * (v41 | (v40 << 6)) + 8);
    v43 = __OFADD__(v32, v42);
    v32 += v42;
    if (v43)
    {
      __break(1u);
LABEL_17:
      v44 = 0;
      v45 = 1 << *(v34 + 32);
      v46 = -1;
      if (v45 < 64)
      {
        v46 = ~(-1 << v45);
      }

      v47 = v46 & *(v34 + 64);
      v48 = (v45 + 63) >> 6;
      for (i = 0.0; v47; i = i + v53 * *(v52 + 8))
      {
        v50 = v44;
LABEL_25:
        v51 = __clz(__rbit64(v47));
        v47 &= v47 - 1;
        v52 = *(v34 + 56) + 56 * (v51 | (v50 << 6));
        v53 = *(v52 + 40);
        if (*(v52 + 48))
        {
          v53 = 0.0;
        }
      }

      while (1)
      {
        v50 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_36;
        }

        if (v50 >= v48)
        {
          v13 = sub_1B4D1771C();
          if (qword_1EDC3CE40 != -1)
          {
            goto LABEL_37;
          }

          goto LABEL_30;
        }

        v47 = *(v37 + 8 * v50);
        ++v44;
        if (v47)
        {
          v44 = v50;
          goto LABEL_25;
        }
      }
    }
  }

  while (1)
  {
    v40 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v40 >= v39)
    {
      goto LABEL_17;
    }

    v38 = *(v37 + 8 * v40);
    ++v31;
    if (v38)
    {
      v31 = v40;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  swift_once();
LABEL_30:
  v54 = sub_1B4D1796C();
  v55 = __swift_project_value_buffer(v54, qword_1EDC3CE48);
  v56 = sub_1B4D178CC();
  v120 = _HKCacheIndexFromDate();

  v57 = sub_1B4D1771C();
  v58 = sub_1B4D178CC();
  v116 = _HKCacheIndexFromDate();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6848, &unk_1B4D1AB60);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1B4D1AA70;
  v60 = sub_1B4D1771C();
  v115 = v55;
  v61 = sub_1B4D178CC();
  v114 = _HKCacheIndexFromDate();

  v62 = sub_1B4D1771C();
  v63 = sub_1B4D178CC();
  v113 = _HKCacheIndexFromDate();

  v121 = *(v25 + v33[6]);
  v112 = [v121 effectiveTypeIdentifier];
  LOBYTE(v139) = 1;
  LOBYTE(v134) = 0;
  v64 = [objc_opt_self() meters];
  v109 = sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  sub_1B4D1741C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v65 = [ObjCClassFromMetadata baseUnit];
  *(v59 + 128) = type metadata accessor for WorkoutDistanceStatisticsProperty(0);
  *(v59 + 136) = sub_1B498AF00(&qword_1EDC38008, type metadata accessor for WorkoutDistanceStatisticsProperty);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v59 + 104));
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
  v110 = v30;
  v111 = v25;
  v68 = v67;
  v69 = *(v67 + 44);
  v70 = v118;
  sub_1B4D1745C();

  sub_1B4D1742C();
  *(boxed_opaque_existential_1 + v68[7]) = 1;
  v71 = v117;
  v72 = *(v117 + 16);
  v72(boxed_opaque_existential_1, boxed_opaque_existential_1 + v69, v70);
  v73 = [ObjCClassFromMetadata baseUnit];
  v74 = boxed_opaque_existential_1 + v68[10];
  sub_1B4D1741C();
  (*(v71 + 8))(v122, v70);
  v72((boxed_opaque_existential_1 + v68[9]), boxed_opaque_existential_1 + v69, v70);
  v72((boxed_opaque_existential_1 + v68[8]), boxed_opaque_existential_1 + v69, v70);
  v75 = v113;
  *(v59 + 32) = v114;
  *(v59 + 40) = v75;
  *(v59 + 48) = 1804;
  *(v59 + 50) = *&v147[7];
  *(v59 + 54) = v148;
  *(v59 + 56) = 0;
  *(v59 + 64) = 1;
  *(v59 + 65) = *v147;
  *(v59 + 68) = *&v147[3];
  *(v59 + 72) = v112;
  *(v59 + 80) = 1280;
  LODWORD(v75) = v145;
  *(v59 + 86) = v146;
  *(v59 + 82) = v75;
  *(v59 + 88) = 0;
  *(v59 + 96) = 0;
  v76 = sub_1B4D1771C();
  v77 = sub_1B4D178CC();
  v78 = _HKCacheIndexFromDate();

  v79 = sub_1B4D1771C();
  v80 = sub_1B4D178CC();
  v81 = _HKCacheIndexFromDate();

  v82 = [v121 effectiveTypeIdentifier];
  LOBYTE(v139) = 1;
  LOBYTE(v134) = 0;
  *(v59 + 240) = &type metadata for WorkoutTotalCountProperty;
  v83 = sub_1B498AF48();
  *(v59 + 144) = v78;
  *(v59 + 248) = v83;
  *(v59 + 216) = v32;
  *(v59 + 152) = v81;
  *(v59 + 160) = 1804;
  *(v59 + 162) = *&v151[7];
  *(v59 + 166) = v152;
  *(v59 + 168) = 0;
  *(v59 + 176) = 1;
  *(v59 + 177) = *v151;
  *(v59 + 180) = *&v151[3];
  *(v59 + 184) = v82;
  *(v59 + 192) = 1280;
  v84 = v116;
  *(v59 + 194) = v149;
  *(v59 + 198) = v150;
  *(v59 + 200) = 0;
  *(v59 + 208) = 0;
  v144 = MEMORY[0x1E69E7CC0];
  sub_1B4BCECFC(0, 2, 0);
  v85 = v144;
  v86 = v120;
  sub_1B498ADFC(v59 + 32, &v134);
  v153 = v135;
  v154 = v136;
  v155 = v137;
  v156 = *&v138[0];
  sub_1B496F398((v138 + 8), v143 + 8);
  *&v139 = v86;
  *(&v139 + 1) = v84;
  v140 = v153;
  v141 = v154;
  v142 = v155;
  *&v143[0] = v156;
  v88 = *(v85 + 16);
  v87 = *(v85 + 24);
  if (v88 >= v87 >> 1)
  {
    sub_1B4BCECFC((v87 > 1), v88 + 1, 1);
    v85 = v144;
  }

  *(v85 + 16) = v88 + 1;
  v89 = (v85 + 112 * v88);
  v90 = v139;
  v91 = v141;
  v89[3] = v140;
  v89[4] = v91;
  v89[2] = v90;
  v92 = v142;
  v93 = v143[0];
  v94 = v143[2];
  v89[7] = v143[1];
  v89[8] = v94;
  v89[5] = v92;
  v89[6] = v93;
  sub_1B498ADFC(v59 + 144, v127);

  v130 = v127[1];
  v131 = v127[2];
  v132 = v127[3];
  v133 = v128;
  sub_1B496F398(&v129, v138 + 8);
  *&v134 = v86;
  *(&v134 + 1) = v84;
  v135 = v130;
  v136 = v131;
  v137 = v132;
  *&v138[0] = v133;
  v96 = *(v85 + 16);
  v95 = *(v85 + 24);
  v97 = v119;
  if (v96 >= v95 >> 1)
  {
    sub_1B4BCECFC((v95 > 1), v96 + 1, 1);
    v85 = v144;
  }

  *(v85 + 16) = v96 + 1;
  v98 = (v85 + 112 * v96);
  v99 = v134;
  v100 = v136;
  v98[3] = v135;
  v98[4] = v100;
  v98[2] = v99;
  v101 = v137;
  v102 = v138[0];
  v103 = v138[2];
  v98[7] = v138[1];
  v98[8] = v103;
  v98[5] = v101;
  v98[6] = v102;
  v104 = *(v124 + 8);
  v105 = v125;
  v104(v123, v125);
  result = (v104)(v126, v105);
  *v97 = v86;
  v97[1] = v84;
  v97[2] = v85;
  return result;
}

uint64_t sub_1B4980E70@<X0>(uint64_t *a1@<X8>)
{
  v94 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6818, &unk_1B4D1AB30);
  v2 = *(v1 - 8);
  v92 = v1;
  v93 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v106 = &v89 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v103 = *(v5 - 8);
  v104 = v5;
  v6 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v112 = &v89 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v110 = &v89 - v10;
  v11 = sub_1B4D1777C();
  v113 = *(v11 - 8);
  v12 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v114 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B4D175FC();
  v108 = *(v14 - 8);
  v109 = v14;
  v15 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
  v18 = sub_1B4D1794C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1B4D1AA70;
  v23 = v22 + v21;
  v24 = *(v19 + 104);
  v24(v23, *MEMORY[0x1E6969A68], v18);
  v24(v23 + v20, *MEMORY[0x1E6969A78], v18);
  v25 = v113;
  sub_1B49B56B4(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v101 = type metadata accessor for FitnessContextDemoClient();
  v26 = *(v101 + 20);
  v27 = v111;
  sub_1B4D1788C();
  v28 = v110;

  v107 = v17;
  v29 = v27;
  sub_1B4D178FC();
  v30 = *(v25 + 48);
  if (v30(v28, 1, v11) == 1)
  {
    (*(v25 + 16))(v114, v27 + v26, v11);
    if (v30(v28, 1, v11) != 1)
    {
      sub_1B4975024(v110, &qword_1EB8A6790, &qword_1B4D1BBC0);
    }
  }

  else
  {
    (*(v25 + 32))(v114, v28, v11);
  }

  v110 = v11;
  v31 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v32 = sub_1B4D1796C();
  v33 = __swift_project_value_buffer(v32, qword_1EDC3CE48);
  v34 = sub_1B4D178CC();
  v91 = _HKCacheIndexFromDate();

  v35 = sub_1B4D1771C();
  v36 = sub_1B4D178CC();
  v90 = _HKCacheIndexFromDate();

  v102 = v26;
  v37 = sub_1B4D1771C();
  v99 = v33;
  v38 = sub_1B4D178CC();
  v98 = _HKCacheIndexFromDate();

  v39 = sub_1B4D1771C();
  v40 = sub_1B4D178CC();
  v97 = _HKCacheIndexFromDate();

  v41 = v101;
  v100 = *(v29 + *(v101 + 24));
  v96 = [v100 effectiveTypeIdentifier];
  LOBYTE(v121) = 1;
  v115[0] = 0;
  v101 = v29 + *(v41 + 28);
  v42 = *(v101 + 192);
  v43 = [objc_opt_self() seconds];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  sub_1B4D1741C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v44 = [ObjCClassFromMetadata baseUnit];
  v146[3] = type metadata accessor for WorkoutDurationStatisticsProperty(0);
  v146[4] = sub_1B498AF00(&qword_1EDC37F58, type metadata accessor for WorkoutDurationStatisticsProperty);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v146);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  v47 = v46[11];
  v48 = v104;
  sub_1B4D1745C();

  sub_1B4D1742C();
  *(boxed_opaque_existential_1 + v46[7]) = 1;
  v49 = v103;
  v50 = *(v103 + 16);
  v50(boxed_opaque_existential_1, boxed_opaque_existential_1 + v47, v48);
  v51 = [ObjCClassFromMetadata baseUnit];
  v52 = boxed_opaque_existential_1 + v46[10];
  sub_1B4D1741C();
  (*(v49 + 8))(v112, v48);
  v50((boxed_opaque_existential_1 + v46[9]), boxed_opaque_existential_1 + v47, v48);
  v50((boxed_opaque_existential_1 + v46[8]), boxed_opaque_existential_1 + v47, v48);
  v133[0] = v98;
  v133[1] = v97;
  v134 = 1804;
  v135 = *&v154[7];
  v136 = v155;
  v137 = 0;
  v138 = 1;
  *v139 = *v154;
  *&v139[3] = *&v154[3];
  v140 = v96;
  v141 = 1280;
  v143 = v153;
  v142 = v152[11];
  v144 = 0;
  v145 = 0;
  v53 = sub_1B4D1771C();
  v54 = sub_1B4D178CC();
  v112 = _HKCacheIndexFromDate();

  v55 = sub_1B4D1771C();
  v56 = sub_1B4D178CC();
  v57 = _HKCacheIndexFromDate();

  v58 = [v100 effectiveTypeIdentifier];
  v115[0] = 1;
  LOBYTE(v128) = 0;
  LOWORD(v156) = 1804;
  v59 = v114;
  *(&v156 + 1) = 0;
  LOBYTE(v157) = 1;
  *(&v157 + 1) = v58;
  LOWORD(v158) = 1280;
  *(&v158 + 1) = 0;
  v159 = 0;
  v60 = *(v101 + 184);
  v61 = v105;
  v62 = v106;
  sub_1B4983C44(v114, v106);
  if (v61)
  {
    sub_1B498AD54(&v156);
    (*(v113 + 8))(v59, v110);
    (*(v108 + 8))(v107, v109);
    sub_1B498AE58(v133);
    return swift_arrayDestroy();
  }

  else
  {
    v111 = 0;
    v64 = sub_1B4D1844C();
    *(v64 + 16) = 3;
    v65 = v93;
    v66 = v64 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
    sub_1B4974FBC(v62, v66, &qword_1EB8A6818, &unk_1B4D1AB30);
    v67 = *(v65 + 72);
    sub_1B4974FBC(v62, v66 + v67, &qword_1EB8A6818, &unk_1B4D1AB30);
    sub_1B498B270(v62, v66 + 2 * v67, &qword_1EB8A6818, &unk_1B4D1AB30);
    *(&v122 + 1) = &type metadata for LongestDistanceProperty;
    *&v123 = sub_1B498ADA8();
    *&v121 = v64;
    v147[0] = v112;
    v147[1] = v57;
    v148 = v156;
    v149 = v157;
    v150 = v158;
    v151 = v159;
    sub_1B496F398(&v121, v152);
    v132 = MEMORY[0x1E69E7CC0];
    sub_1B4BCECFC(0, 2, 0);
    v68 = v132;
    sub_1B498ADFC(v133, v115);
    v128 = v116;
    v129 = v117;
    v130 = v118;
    v131 = v119;
    sub_1B496F398(v120, &v125 + 8);
    v70 = v90;
    v69 = v91;
    *&v121 = v91;
    *(&v121 + 1) = v90;
    v122 = v128;
    v123 = v129;
    v124 = v130;
    *&v125 = v131;
    v72 = *(v68 + 16);
    v71 = *(v68 + 24);
    if (v72 >= v71 >> 1)
    {
      sub_1B4BCECFC((v71 > 1), v72 + 1, 1);
      v68 = v132;
    }

    *(v68 + 16) = v72 + 1;
    v73 = (v68 + 112 * v72);
    v74 = v121;
    v75 = v123;
    v73[3] = v122;
    v73[4] = v75;
    v73[2] = v74;
    v76 = v124;
    v77 = v125;
    v78 = v127;
    v73[7] = v126;
    v73[8] = v78;
    v73[5] = v76;
    v73[6] = v77;
    sub_1B498ADFC(v147, v115);
    v128 = v116;
    v129 = v117;
    v130 = v118;
    v131 = v119;
    sub_1B496F398(v120, &v125 + 8);
    *&v121 = v69;
    *(&v121 + 1) = v70;
    v122 = v128;
    v123 = v129;
    v124 = v130;
    *&v125 = v131;
    v132 = v68;
    v80 = *(v68 + 16);
    v79 = *(v68 + 24);
    v81 = v110;
    if (v80 >= v79 >> 1)
    {
      sub_1B4BCECFC((v79 > 1), v80 + 1, 1);
      v68 = v132;
    }

    *(v68 + 16) = v80 + 1;
    v82 = (v68 + 112 * v80);
    v83 = v121;
    v84 = v123;
    v82[3] = v122;
    v82[4] = v84;
    v82[2] = v83;
    v85 = v124;
    v86 = v125;
    v87 = v127;
    v82[7] = v126;
    v82[8] = v87;
    v82[5] = v85;
    v82[6] = v86;
    swift_arrayDestroy();
    (*(v113 + 8))(v114, v81);
    result = (*(v108 + 8))(v107, v109);
    v88 = v94;
    *v94 = v69;
    v88[1] = v70;
    v88[2] = v68;
  }

  return result;
}

uint64_t sub_1B4981A7C@<X0>(uint64_t *a1@<X8>)
{
  v73 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v71 = *(v2 - 8);
  v72 = v2;
  v3 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v74 = &v60 - v4;
  v5 = sub_1B4D1794C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v60 - v12;
  v14 = sub_1B4D1777C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x1E6969A10], v5, v17);
  v20 = type metadata accessor for FitnessContextDemoClient();
  v68 = *(v20 + 20);
  v69 = v20;
  v70 = v1;
  sub_1B4D1790C();
  (*(v6 + 8))(v9, v5);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1B4975024(v13, &qword_1EB8A6790, &qword_1B4D1BBC0);
    sub_1B498AEAC();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v66 = v15;
    v67 = v14;
    (*(v15 + 32))(v19, v13, v14);
    v22 = sub_1B4D1771C();
    if (qword_1EDC3CE40 != -1)
    {
      swift_once();
    }

    v23 = sub_1B4D1796C();
    __swift_project_value_buffer(v23, qword_1EDC3CE48);
    v24 = sub_1B4D178CC();
    v65 = _HKCacheIndexFromDate();

    v25 = v70;
    v26 = sub_1B4D1771C();
    v27 = sub_1B4D178CC();
    v64 = _HKCacheIndexFromDate();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6848, &unk_1B4D1AB60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B4D1A800;
    v29 = sub_1B4D1771C();
    v30 = sub_1B4D178CC();
    v63 = _HKCacheIndexFromDate();

    v31 = sub_1B4D1771C();
    v32 = sub_1B4D178CC();
    v68 = _HKCacheIndexFromDate();

    v33 = v69;
    v62 = [*&v25[*(v69 + 24)] effectiveTypeIdentifier];
    LOBYTE(v81) = 1;
    v75[0] = 0;
    v34 = *&v25[*(v33 + 28) + 160];
    v35 = [objc_opt_self() meters];
    v69 = sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v70 = v19;
    sub_1B4D1741C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v36 = [ObjCClassFromMetadata baseUnit];
    *(inited + 128) = type metadata accessor for WorkoutDistanceStatisticsProperty(0);
    *(inited + 136) = sub_1B498AF00(&qword_1EDC38008, type metadata accessor for WorkoutDistanceStatisticsProperty);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
    v39 = v38[11];
    v40 = v72;
    sub_1B4D1745C();

    sub_1B4D1742C();
    *(boxed_opaque_existential_1 + v38[7]) = 1;
    v41 = v71;
    v42 = *(v71 + 16);
    v42(boxed_opaque_existential_1, boxed_opaque_existential_1 + v39, v40);
    v43 = [ObjCClassFromMetadata baseUnit];
    v44 = boxed_opaque_existential_1 + v38[10];
    sub_1B4D1741C();
    (*(v41 + 8))(v74, v40);
    v42((boxed_opaque_existential_1 + v38[9]), boxed_opaque_existential_1 + v39, v40);
    v45 = boxed_opaque_existential_1 + v38[8];
    v46 = boxed_opaque_existential_1 + v39;
    v47 = v64;
    v42(v45, v46, v40);
    *(inited + 32) = v63;
    *(inited + 40) = v68;
    *(inited + 48) = 1804;
    *(inited + 50) = *&v89[7];
    *(inited + 54) = v90;
    *(inited + 56) = 0;
    *(inited + 64) = 1;
    *(inited + 65) = *v89;
    *(inited + 68) = *&v89[3];
    *(inited + 72) = v62;
    *(inited + 80) = 1280;
    v48 = v87;
    *(inited + 86) = v88;
    *(inited + 82) = v48;
    *(inited + 88) = 0;
    *(inited + 96) = 0;
    v86 = MEMORY[0x1E69E7CC0];
    sub_1B4BCECFC(0, 1, 0);
    v49 = v86;
    sub_1B498ADFC(inited + 32, v75);

    v91 = v76;
    v92 = v77;
    v93 = v78;
    v94 = v79;
    v50 = v65;
    sub_1B496F398(&v80, v85 + 8);
    *&v81 = v50;
    *(&v81 + 1) = v47;
    v82 = v91;
    v83 = v92;
    v84 = v93;
    *&v85[0] = v94;
    v52 = *(v49 + 16);
    v51 = *(v49 + 24);
    if (v52 >= v51 >> 1)
    {
      sub_1B4BCECFC((v51 > 1), v52 + 1, 1);
      v49 = v86;
    }

    *(v49 + 16) = v52 + 1;
    v53 = (v49 + 112 * v52);
    v54 = v81;
    v55 = v83;
    v53[3] = v82;
    v53[4] = v55;
    v53[2] = v54;
    v56 = v84;
    v57 = v85[0];
    v58 = v85[2];
    v53[7] = v85[1];
    v53[8] = v58;
    v53[5] = v56;
    v53[6] = v57;
    result = (*(v66 + 8))(v70, v67);
    v59 = v73;
    *v73 = v50;
    v59[1] = v47;
    v59[2] = v49;
  }

  return result;
}

uint64_t sub_1B4982240@<X0>(uint64_t *a1@<X8>)
{
  v100 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v98 = *(v1 - 8);
  v99 = v1;
  v2 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v101 = &v91 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6818, &unk_1B4D1AB30);
  v5 = *(v4 - 8);
  v95 = v4;
  ObjCClassFromMetadata = v5;
  v6 = *(v5 + 8);
  MEMORY[0x1EEE9AC00](v4);
  v104 = &v91 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v91 - v10;
  v12 = sub_1B4D1777C();
  v111 = *(v12 - 8);
  v13 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v112 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B4D175FC();
  v106 = *(v15 - 8);
  v107 = v15;
  v16 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
  v19 = sub_1B4D1794C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B4D1A800;
  (*(v20 + 104))(v23 + v22, *MEMORY[0x1E6969A68], v19);
  sub_1B49B56B4(v23);
  swift_setDeallocating();
  (*(v20 + 8))(v23 + v22, v19);
  v24 = v109;
  swift_deallocClassInstance();
  v102 = type metadata accessor for FitnessContextDemoClient();
  v25 = *(v102 + 20);
  sub_1B4D1788C();
  v26 = v111;

  v105 = v18;
  sub_1B4D178FC();
  v27 = *(v26 + 48);
  v28 = v27(v11, 1, v12);
  v110 = v25;
  if (v28 == 1)
  {
    (*(v26 + 16))(v112, &v24[v25], v12);
    if (v27(v11, 1, v12) != 1)
    {
      sub_1B4975024(v11, &qword_1EB8A6790, &qword_1B4D1BBC0);
    }
  }

  else
  {
    (*(v26 + 32))(v112, v11, v12);
  }

  v108 = v12;
  v29 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v30 = sub_1B4D1796C();
  __swift_project_value_buffer(v30, qword_1EDC3CE48);
  v31 = sub_1B4D178CC();
  v32 = _HKCacheIndexFromDate();

  v33 = sub_1B4D1771C();
  v34 = sub_1B4D178CC();
  v97 = _HKCacheIndexFromDate();

  v35 = sub_1B4D1771C();
  v36 = sub_1B4D178CC();
  v93 = _HKCacheIndexFromDate();

  v37 = v24;
  v38 = sub_1B4D1771C();
  v39 = sub_1B4D178CC();
  v92 = _HKCacheIndexFromDate();

  v40 = v37;
  v41 = v112;

  v42 = v102;
  v94 = *&v40[*(v102 + 24)];
  v43 = [v94 effectiveTypeIdentifier];
  v139 = 1;
  v138 = 0;
  LOWORD(v160) = 1804;
  *(&v160 + 1) = 0;
  LOBYTE(v161) = 1;
  *(&v161 + 1) = v43;
  LOWORD(v162) = 1280;
  *(&v162 + 1) = 0;
  v163 = 0;
  v44 = &v40[*(v42 + 28)];
  v45 = *(v44 + 176);
  v46 = v103;
  v47 = v104;
  sub_1B4983C44(v41, v104);
  if (v46)
  {
    sub_1B498AD54(&v160);
    (*(v111 + 8))(v41, v108);
    (*(v106 + 8))(v105, v107);
    return swift_arrayDestroy();
  }

  else
  {
    v102 = 0;
    v49 = sub_1B4D1844C();
    v95 = v44;
    v50 = v49;
    *(v49 + 16) = 3;
    v51 = ObjCClassFromMetadata;
    v52 = v49 + ((ObjCClassFromMetadata[80] + 32) & ~ObjCClassFromMetadata[80]);
    v103 = v32;
    sub_1B4974FBC(v47, v52, &qword_1EB8A6818, &unk_1B4D1AB30);
    v53 = v47;
    v54 = *(v51 + 9);
    sub_1B4974FBC(v53, v52 + v54, &qword_1EB8A6818, &unk_1B4D1AB30);
    sub_1B498B270(v53, v52 + 2 * v54, &qword_1EB8A6818, &unk_1B4D1AB30);
    v136 = &type metadata for LongestDistanceProperty;
    v137 = sub_1B498ADA8();
    *&v135 = v50;
    v140[0] = v93;
    v140[1] = v92;
    v141 = v160;
    v142 = v161;
    v143 = v162;
    v144 = v163;
    sub_1B496F398(&v135, &v145);
    v55 = sub_1B4D1771C();
    v56 = sub_1B4D178CC();
    v104 = _HKCacheIndexFromDate();

    v57 = sub_1B4D1771C();
    v58 = sub_1B4D178CC();
    v110 = _HKCacheIndexFromDate();

    v109 = [v94 effectiveTypeIdentifier];
    LOBYTE(v119) = 1;
    v113[0] = 0;
    v59 = *(v95 + 152);
    v60 = [objc_opt_self() meters];
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    sub_1B4D1741C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v61 = [ObjCClassFromMetadata baseUnit];
    v159[3] = type metadata accessor for WorkoutDistanceStatisticsProperty(0);
    v159[4] = sub_1B498AF00(&qword_1EDC38008, type metadata accessor for WorkoutDistanceStatisticsProperty);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v159);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
    v64 = v63[11];
    v65 = v99;
    sub_1B4D1745C();

    sub_1B4D1742C();
    *(boxed_opaque_existential_1 + v63[7]) = 1;
    v66 = v98;
    v67 = *(v98 + 16);
    v67(boxed_opaque_existential_1, boxed_opaque_existential_1 + v64, v65);
    v68 = [ObjCClassFromMetadata baseUnit];
    v69 = boxed_opaque_existential_1 + v63[10];
    sub_1B4D1741C();
    (*(v66 + 8))(v101, v65);
    v67((boxed_opaque_existential_1 + v63[9]), boxed_opaque_existential_1 + v64, v65);
    v70 = v63[8];
    v71 = v103;
    v67((boxed_opaque_existential_1 + v70), boxed_opaque_existential_1 + v64, v65);
    v146[0] = v104;
    v146[1] = v110;
    v147 = 1804;
    v148 = *&v133[7];
    v149 = v134;
    v150 = 0;
    v151 = 1;
    *v152 = *v133;
    *&v152[3] = *&v133[3];
    v153 = v109;
    v154 = 1280;
    v156 = v132;
    v155 = v131;
    v157 = 0;
    v158 = 0;
    v130 = MEMORY[0x1E69E7CC0];
    sub_1B4BCECFC(0, 2, 0);
    v72 = v130;
    sub_1B498ADFC(v140, v113);
    v126 = v114;
    v127 = v115;
    v128 = v116;
    v129 = v117;
    sub_1B496F398(v118, &v123 + 8);
    v73 = v97;
    *&v119 = v71;
    *(&v119 + 1) = v97;
    v120 = v126;
    v121 = v127;
    v122 = v128;
    *&v123 = v129;
    v75 = *(v72 + 16);
    v74 = *(v72 + 24);
    if (v75 >= v74 >> 1)
    {
      sub_1B4BCECFC((v74 > 1), v75 + 1, 1);
      v72 = v130;
    }

    *(v72 + 16) = v75 + 1;
    v76 = (v72 + 112 * v75);
    v77 = v119;
    v78 = v121;
    v76[3] = v120;
    v76[4] = v78;
    v76[2] = v77;
    v79 = v122;
    v80 = v123;
    v81 = v125;
    v76[7] = v124;
    v76[8] = v81;
    v76[5] = v79;
    v76[6] = v80;
    sub_1B498ADFC(v146, v113);
    v126 = v114;
    v127 = v115;
    v128 = v116;
    v129 = v117;
    sub_1B496F398(v118, &v123 + 8);
    *&v119 = v71;
    *(&v119 + 1) = v73;
    v120 = v126;
    v121 = v127;
    v122 = v128;
    *&v123 = v129;
    v130 = v72;
    v83 = *(v72 + 16);
    v82 = *(v72 + 24);
    v84 = v100;
    if (v83 >= v82 >> 1)
    {
      sub_1B4BCECFC((v82 > 1), v83 + 1, 1);
      v72 = v130;
    }

    *(v72 + 16) = v83 + 1;
    v85 = (v72 + 112 * v83);
    v86 = v119;
    v87 = v121;
    v85[3] = v120;
    v85[4] = v87;
    v85[2] = v86;
    v88 = v122;
    v89 = v123;
    v90 = v125;
    v85[7] = v124;
    v85[8] = v90;
    v85[5] = v88;
    v85[6] = v89;
    swift_arrayDestroy();
    (*(v111 + 8))(v112, v108);
    result = (*(v106 + 8))(v105, v107);
    *v84 = v71;
    v84[1] = v73;
    v84[2] = v72;
  }

  return result;
}

uint64_t sub_1B4982E30@<X0>(uint64_t *a1@<X8>)
{
  v57 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6818, &unk_1B4D1AB30);
  v56 = *(v54 - 8);
  v1 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v62 = &v52 - v2;
  v3 = sub_1B4D1777C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v52 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - v10;
  sub_1B4D176EC();
  v12 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v13 = sub_1B4D1796C();
  __swift_project_value_buffer(v13, qword_1EDC3CE48);
  v14 = sub_1B4D178CC();
  v55 = _HKCacheIndexFromDate();

  v15 = *(v4 + 8);
  v15(v11, v3);
  v16 = type metadata accessor for FitnessContextDemoClient();
  v58 = v3;
  v59 = v16;
  v17 = *(v16 + 20);
  v18 = v63;
  v19 = sub_1B4D1771C();
  v20 = sub_1B4D178CC();
  v53 = _HKCacheIndexFromDate();

  v21 = v60;
  sub_1B4D176EC();
  v22 = sub_1B4D1771C();
  v23 = sub_1B4D178CC();
  v52 = _HKCacheIndexFromDate();

  v24 = v21;
  v25 = v58;
  v60 = (v4 + 8);
  v15(v24, v58);
  v26 = sub_1B4D1771C();
  v27 = sub_1B4D178CC();
  v28 = _HKCacheIndexFromDate();

  v29 = v59;
  v30 = [*(v18 + *(v59 + 24)) effectiveTypeIdentifier];
  v64[0] = 1;
  LOBYTE(v75) = 0;
  LOWORD(v86) = 1804;
  *(&v86 + 1) = 0;
  LOBYTE(v87) = 1;
  *(&v87 + 1) = v30;
  LOWORD(v88) = 1280;
  *(&v88 + 1) = 0;
  v89 = 0;
  v31 = v61;
  sub_1B4D176EC();
  v32 = *(v18 + *(v29 + 28) + 168);
  v33 = v62;
  v34 = v90;
  sub_1B4983C44(v31, v62);
  if (v34)
  {
    v15(v31, v25);
    sub_1B498AD54(&v86);
    return swift_arrayDestroy();
  }

  else
  {
    v15(v31, v25);
    v36 = sub_1B4D1844C();
    *(v36 + 16) = 3;
    v37 = v56;
    v38 = v36 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    sub_1B4974FBC(v33, v38, &qword_1EB8A6818, &unk_1B4D1AB30);
    v39 = *(v37 + 72);
    sub_1B4974FBC(v33, v38 + v39, &qword_1EB8A6818, &unk_1B4D1AB30);
    sub_1B498B270(v33, v38 + 2 * v39, &qword_1EB8A6818, &unk_1B4D1AB30);
    *(&v71 + 1) = &type metadata for LongestDistanceProperty;
    *&v72 = sub_1B498ADA8();
    *&v70 = v36;
    v80[0] = v52;
    v80[1] = v28;
    v81 = v86;
    v82 = v87;
    v83 = v88;
    v84 = v89;
    sub_1B496F398(&v70, &v85);
    v79 = MEMORY[0x1E69E7CC0];
    sub_1B4BCECFC(0, 1, 0);
    v40 = v79;
    sub_1B498ADFC(v80, v64);
    v75 = v65;
    v76 = v66;
    v77 = v67;
    v78 = v68;
    sub_1B496F398(&v69, v74 + 8);
    v41 = v55;
    v42 = v53;
    *&v70 = v55;
    *(&v70 + 1) = v53;
    v71 = v75;
    v72 = v76;
    v73 = v77;
    *&v74[0] = v78;
    v44 = *(v40 + 16);
    v43 = *(v40 + 24);
    if (v44 >= v43 >> 1)
    {
      sub_1B4BCECFC((v43 > 1), v44 + 1, 1);
      v40 = v79;
    }

    *(v40 + 16) = v44 + 1;
    v45 = (v40 + 112 * v44);
    v46 = v70;
    v47 = v72;
    v45[3] = v71;
    v45[4] = v47;
    v45[2] = v46;
    v48 = v73;
    v49 = v74[0];
    v50 = v74[2];
    v45[7] = v74[1];
    v45[8] = v50;
    v45[5] = v48;
    v45[6] = v49;
    result = sub_1B498AE58(v80);
    v51 = v57;
    *v57 = v41;
    v51[1] = v42;
    v51[2] = v40;
  }

  return result;
}

uint64_t sub_1B49833B4()
{
  v1 = v0;
  v61 = sub_1B4D175FC();
  v2 = *(v61 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B4D1777C();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  v13 = sub_1B4D178CC();
  v60 = type metadata accessor for FitnessContextDemoClient();
  v14 = *(v60 + 20);
  v15 = sub_1B4D1771C();
  v16 = [v13 hk:v15 startOfFitnessWeekBeforeDate:?];

  sub_1B4D1775C();
  sub_1B4D1782C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
  v17 = sub_1B4D1794C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B4D1A800;
  (*(v18 + 104))(v21 + v20, *MEMORY[0x1E6969A48], v17);
  sub_1B49B56B4(v21);
  swift_setDeallocating();
  (*(v18 + 8))(v21 + v20, v17);
  swift_deallocClassInstance();
  v56 = v12;
  v57 = v9;
  sub_1B4D1787C();

  v22 = sub_1B4D1757C();
  v24 = v23;
  (*(v2 + 8))(v5, v61);
  v25 = *(v1 + *(v60 + 28));
  v26 = 1 << *(v25 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v25 + 64);
  v29 = (v26 + 63) >> 6;
  if (v24)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v22;
  }

  v31 = 0;
  v32 = MEMORY[0x1E69E7CC8];
  if (v28)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v33 >= v29)
    {
      v52 = *(v58 + 8);
      v53 = v59;
      v52(v57, v59);
      v52(v56, v53);

      return v32;
    }

    v28 = *(v25 + 64 + 8 * v33);
    ++v31;
  }

  while (!v28);
  while (1)
  {
    v34 = __clz(__rbit64(v28)) | (v33 << 6);
    v35 = *(v25 + 56) + 56 * v34;
    v36 = v30 * *(v35 + 16);
    if (COERCE__INT64(fabs(v36)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v36 <= -9.22337204e18)
    {
      goto LABEL_30;
    }

    if (v36 >= 9.22337204e18)
    {
      goto LABEL_31;
    }

    v37 = *v35;
    v38 = v37 + v36;
    if (__OFADD__(v37, v36))
    {
      goto LABEL_32;
    }

    v39 = *(*(v25 + 48) + 8 * v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v32;
    v41 = sub_1B49EF0C0(v39);
    v43 = v32[2];
    v44 = (v42 & 1) == 0;
    v45 = __OFADD__(v43, v44);
    v46 = v43 + v44;
    if (v45)
    {
      goto LABEL_33;
    }

    v47 = v42;
    if (v32[3] >= v46)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v51 = v41;
        sub_1B4989558();
        v41 = v51;
      }
    }

    else
    {
      sub_1B4985958(v46, isUniquelyReferenced_nonNull_native);
      v41 = sub_1B49EF0C0(v39);
      if ((v47 & 1) != (v48 & 1))
      {
        goto LABEL_35;
      }
    }

    v28 &= v28 - 1;
    v32 = v62;
    if (v47)
    {
      *(v62[7] + 8 * v41) = v38;
      v31 = v33;
      if (!v28)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v62[(v41 >> 6) + 8] |= 1 << v41;
      *(v32[6] + 8 * v41) = v39;
      *(v32[7] + 8 * v41) = v38;
      v49 = v32[2];
      v45 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v45)
      {
        goto LABEL_34;
      }

      v32[2] = v50;
      v31 = v33;
      if (!v28)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v33 = v31;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  type metadata accessor for HKWorkoutActivityType(0);
  result = sub_1B4D18E1C();
  __break(1u);
  return result;
}

void *sub_1B4983910(void *(*a1)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (v13 << 9) | (8 * __clz(__rbit64(v9)));
      v15 = *(*(a3 + 48) + v14);
      v16 = *(*(a3 + 56) + v14);
      v18[0] = v15;
      v18[1] = v16;
      result = a1(&v17, &v19, v18);
      if (v3)
      {
      }

      v9 &= v9 - 1;
      v19 = v17;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B4983A34@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v16 - v13;
  result = sub_1B4974FBC(a1, a5, &qword_1EB8A6928, &qword_1B4D20480);
  if (a3 != a4)
  {
    if (a4 >= a3)
    {
      while (a4 != a3)
      {
        v17 = a3;
        a2(a5, &v17);
        if (v5)
        {
          return sub_1B4975024(a5, &qword_1EB8A6928, &qword_1B4D20480);
        }

        ++a3;
        sub_1B4975024(a5, &qword_1EB8A6928, &qword_1B4D20480);
        result = sub_1B498B270(v14, a5, &qword_1EB8A6928, &qword_1B4D20480);
        if (a4 == a3)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

double sub_1B4983B9C@<D0>(double *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  v6 = *a1;
  v7 = a2[1];
  v8 = *(a3 + *(type metadata accessor for FitnessContextDemoClient() + 28));
  v9 = 0.0;
  if (*(v8 + 16))
  {
    v10 = sub_1B49EF0B0(*a2);
    if (v11)
    {
      v12 = *(v8 + 56) + 56 * v10;
      if (*(v12 + 32))
      {
        v9 = 0.0;
      }

      else
      {
        v9 = *(v12 + 24);
      }
    }
  }

  result = v6 + v9 * v7;
  *a4 = result;
  return result;
}

uint64_t sub_1B4983C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6820, &qword_1B4D2CA00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v17 - v6);
  v8 = type metadata accessor for LocalizedDate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LocalizedDate.from(_:)(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6820, &qword_1B4D2CA00);
    sub_1B498AEAC();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    sub_1B498B198(v7, v12, type metadata accessor for LocalizedDate);
    sub_1B4D177BC();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6818, &unk_1B4D1AB30);
    sub_1B498B130(v12, a2 + *(v14 + 28), type metadata accessor for LocalizedDate);
    v15 = [objc_opt_self() meters];
    v16 = *(v14 + 32);
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    sub_1B4D1741C();
    return sub_1B498B000(v12, type metadata accessor for LocalizedDate);
  }
}

uint64_t sub_1B4983EA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4983F3C;

  return sub_1B497CF2C(a1);
}

uint64_t sub_1B4983F3C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B4984030(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68E8, &unk_1B4D1AC00);
  v37 = a2;
  result = sub_1B4D18ADC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v17 = __clz(__rbit64(v13));
      v39 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v38 = *(*(v5 + 56) + 8 * v20);
      if ((v37 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      sub_1B4D18E8C();
      MEMORY[0x1B8C7D290](*(v21 + 16));
      v23 = *(v21 + 16);
      if (v23)
      {
        v24 = (v21 + 40);
        do
        {
          v25 = *(v24 - 1);
          v26 = *v24;

          sub_1B4D1820C();

          v24 += 2;
          --v23;
        }

        while (v23);
      }

      result = sub_1B4D18EDC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      v13 = v39;
      *(*(v8 + 56) + 8 * v16) = v38;
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_40;
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
        v39 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_38;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_1B4984310(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6878, &unk_1B4D1AB90);
  result = sub_1B4D18ADC();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_1B4D18E7C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
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
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1B4984574(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v39 - v8;
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6918, &qword_1B4D1AC30);
  v43 = a2;
  result = sub_1B4D18ADC();
  v12 = result;
  if (*(v9 + 16))
  {
    v39 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v9;
    v42 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = *(*(v9 + 48) + 8 * v25);
      v28 = *(v42 + 72);
      v29 = v26 + v28 * v25;
      if (v43)
      {
        (*v19)(v44, v29, v45);
      }

      else
      {
        (*v40)(v44, v29, v45);
      }

      v30 = *(v12 + 40);
      sub_1B4D18E8C();
      MEMORY[0x1B8C7D2C0](v27);
      result = sub_1B4D18EDC();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v27;
      result = (*v19)(*(v12 + 56) + v28 * v21, v44, v45);
      ++*(v12 + 16);
      v9 = v41;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1B49848E0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - v9;
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68B8, &qword_1B4D1ABD0);
  v43 = a2;
  result = sub_1B4D18ADC();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v7 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
      }

      else
      {
        (*v40)(v47, v28, v6);
      }

      v45 = *(*(v11 + 56) + 8 * v26);
      v29 = *(v14 + 40);
      sub_1B498B070();
      result = sub_1B4D1807C();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v7 = v41;
      v11 = v42;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1B4984C80(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6910, &qword_1B4D1AC28);
  result = sub_1B4D18ADC();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_1B4D18E8C();
      MEMORY[0x1B8C7D290](v21);
      result = sub_1B4D18EDC();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
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
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_1B4984F00(uint64_t a1, int a2)
{
  v3 = v2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v42 - v8;
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68A0, &qword_1B4D1ABB8);
  v48 = a2;
  result = sub_1B4D18ADC();
  v12 = result;
  if (*(v9 + 16))
  {
    v43 = v3;
    v44 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v45 = (v6 + 8);
    v19 = result + 64;
    v20 = result;
    while (v17)
    {
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v26 = v23 | (v13 << 6);
      v27 = *(*(v9 + 48) + v26);
      v28 = *(*(v9 + 56) + 8 * v26);
      if ((v48 & 1) == 0)
      {
      }

      v49 = v28;
      v29 = v20[5];
      sub_1B4D18E8C();
      v50 = v27;
      v30 = v20;
      v31 = v46;
      DistanceReference.rawValue.getter();
      sub_1B498B070();
      v32 = v47;
      sub_1B4D1808C();
      v33 = v31;
      v20 = v30;
      (*v45)(v33, v32);
      result = sub_1B4D18EDC();
      v34 = -1 << *(v30 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v19 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v22 = v49;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v19 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v19 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v22 = v49;
LABEL_9:
      *(v19 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(v20[6] + v21) = v27;
      *(v20[7] + 8 * v21) = v22;
      ++v20[2];
      v9 = v44;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v13 >= v18)
      {
        break;
      }

      v25 = v14[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v17 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if (v48)
    {
      v41 = 1 << *(v9 + 32);
      v3 = v43;
      if (v41 >= 64)
      {
        bzero(v14, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v14 = -1 << v41;
      }

      *(v9 + 16) = 0;
    }

    else
    {

      v3 = v43;
    }
  }

  else
  {

    v20 = v12;
  }

  *v3 = v20;
  return result;
}

uint64_t sub_1B498528C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for WorkoutMilestoneEntry();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6880, &unk_1B4D46FC0);
  v41 = a2;
  result = sub_1B4D18ADC();
  v13 = result;
  if (*(v10 + 16))
  {
    v39 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v40 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v41)
      {
        sub_1B498B198(v28, v9, type metadata accessor for WorkoutMilestoneEntry);
      }

      else
      {
        sub_1B498B130(v28, v9, type metadata accessor for WorkoutMilestoneEntry);
      }

      v29 = *(v13 + 40);
      result = sub_1B4D18E7C();
      v30 = -1 << *(v13 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_1B498B198(v9, *(v13 + 56) + v27 * v21, type metadata accessor for WorkoutMilestoneEntry);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1B49855D4(uint64_t a1, int a2)
{
  v3 = v2;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v46 = *(Descriptor - 8);
  v7 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](Descriptor - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6908, &qword_1B4D1AC20);
  v47 = a2;
  result = sub_1B4D18ADC();
  v13 = v10;
  v14 = result;
  if (*(v10 + 16))
  {
    v44 = v3;
    v45 = v10;
    v15 = 0;
    v16 = (v10 + 64);
    v17 = 1 << *(v10 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v10 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v46 + 72);
      v28 = *(v13 + 48) + v27 * v26;
      if (v47)
      {
        sub_1B498B198(v28, v9, type metadata accessor for FitnessContextQueryDescriptor);
        v29 = *(v13 + 56);
        v30 = v9;
        v31 = *(v29 + 8 * v26);
      }

      else
      {
        sub_1B498B130(v28, v9, type metadata accessor for FitnessContextQueryDescriptor);
        v32 = *(v13 + 56);
        v30 = v9;
        v31 = *(v32 + 8 * v26);
      }

      v33 = *(v14 + 40);
      sub_1B4D18E8C();
      v34 = v30;
      FitnessContextQueryDescriptor.hash(into:)(v48);
      result = sub_1B4D18EDC();
      v35 = -1 << *(v14 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v21 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_1B498B198(v34, *(v14 + 48) + v27 * v22, type metadata accessor for FitnessContextQueryDescriptor);
      *(*(v14 + 56) + 8 * v22) = v31;
      v9 = v34;
      ++*(v14 + 16);
      v13 = v45;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1B4985958(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6860, &qword_1B4D1AB78);
  result = sub_1B4D18ADC();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_1B4D18E8C();
      MEMORY[0x1B8C7D290](v21);
      result = sub_1B4D18EDC();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
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
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_1B4985BD8(uint64_t a1, int a2)
{
  v3 = v2;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v38 = *(Descriptor - 8);
  v7 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](Descriptor - 8);
  v40 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6900, &qword_1B4D1AC18);
  v39 = a2;
  result = sub_1B4D18ADC();
  v12 = result;
  if (*(v9 + 16))
  {
    v37[0] = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    v37[3] = "thisWeekProperties";
    v37[1] = "last_week_total_distance>.";
    v37[2] = "thisTimeLastWeekProperties";
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v9 + 48) + v24);
      v26 = *(v38 + 72);
      v27 = *(v9 + 56) + v26 * v24;
      if (v39)
      {
        sub_1B498B198(v27, v40, type metadata accessor for FitnessContextQueryDescriptor);
      }

      else
      {
        sub_1B498B130(v27, v40, type metadata accessor for FitnessContextQueryDescriptor);
      }

      v28 = *(v12 + 40);
      sub_1B4D18E8C();
      sub_1B4D1820C();

      result = sub_1B4D18EDC();
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + v20) = v25;
      result = sub_1B498B198(v40, *(v12 + 56) + v26 * v20, type metadata accessor for FitnessContextQueryDescriptor);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37[0];
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37[0];
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1B4985F9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68C0, &qword_1B4D1ABD8);
  v39 = a2;
  result = sub_1B4D18ADC();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1B4D18E8C();
      sub_1B4D1820C();
      result = sub_1B4D18EDC();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B4986240(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68C8, &qword_1B4D1ABE0);
  v34 = a2;
  result = sub_1B4D18ADC();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v34 & 1) == 0)
      {
        v26 = v25;
      }

      v27 = *(v8 + 40);
      sub_1B4D18E8C();
      sub_1B4D1820C();

      result = sub_1B4D18EDC();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v16) >> 6;
        while (++v18 != v29 || (v28 & 1) == 0)
        {
          v30 = v18 == v29;
          if (v18 == v29)
          {
            v18 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v18);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

    if (v34)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1B49865A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68F0, &qword_1B4D1BC20);
  v35 = a2;
  result = sub_1B4D18ADC();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      sub_1B4D18E8C();
      v25 = v21;
      sub_1B4D187BC();

      result = sub_1B4D18EDC();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v25;
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
        goto LABEL_37;
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

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B4986848(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for WorkoutState();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68E0, &qword_1B4D1ABF8);
  v40 = a2;
  result = sub_1B4D18ADC();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v9 + 48) + v24);
      v26 = *(v39 + 72);
      v27 = *(v9 + 56) + v26 * v24;
      if (v40)
      {
        sub_1B498B198(v27, v41, type metadata accessor for WorkoutState);
      }

      else
      {
        sub_1B498B130(v27, v41, type metadata accessor for WorkoutState);
      }

      v28 = *(v12 + 40);
      sub_1B4D18E8C();
      MEMORY[0x1B8C7D290](v25);
      result = sub_1B4D18EDC();
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + v20) = v25;
      result = sub_1B498B198(v41, *(v12 + 56) + v26 * v20, type metadata accessor for WorkoutState);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1B4986BB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68D8, &qword_1B4D1ABF0);
  result = sub_1B4D18ADC();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
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
      v19 = v18 | (v9 << 6);
      if (a2)
      {
LABEL_12:
        v20 = *(v5 + 56);
        v21 = *(v5 + 48) + 56 * v19;
        v48 = *v21;
        v49 = *(v21 + 16);
        v50 = *(v21 + 32);
        v51 = *(v21 + 48);
        v22 = *(v20 + 8 * v19);
      }

      else
      {
LABEL_18:
        v25 = *(v5 + 56);
        v26 = *(v5 + 48) + 56 * v19;
        v27 = *(v26 + 48);
        v28 = *(v26 + 32);
        v29 = *v26;
        v41 = *(v26 + 16);
        v42 = v28;
        v40 = v29;
        v43 = v27;
        v22 = *(v25 + 8 * v19);
        sub_1B498B0D4(&v40, &v48);
        v48 = v40;
        v49 = v41;
        v50 = v42;
        v51 = v43;
      }

      v30 = *(v8 + 40);
      v44 = v48;
      v45 = v49;
      v46 = v50;
      v47 = v51;
      sub_1B4D18E8C();
      WorkoutPropertyDimensions.hash(into:)();
      result = sub_1B4D18EDC();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 56 * v16;
      *v17 = v48;
      *(v17 + 16) = v49;
      *(v17 + 32) = v50;
      *(v17 + 48) = v51;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v23 = v9;
    while (1)
    {
      v9 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v24 = v10[v9];
      ++v23;
      if (v24)
      {
        v13 = (v24 - 1) & v24;
        v19 = __clz(__rbit64(v24)) | (v9 << 6);
        if (a2)
        {
          goto LABEL_12;
        }

        goto LABEL_18;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B4986EEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68D0, &qword_1B4D1ABE8);
  v40 = a2;
  result = sub_1B4D18ADC();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
    while (1)
    {
      if (!v13)
      {
        v20 = v9;
        while (1)
        {
          v9 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          if (v9 >= v14)
          {
            break;
          }

          v21 = v10[v9];
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v13 = (v21 - 1) & v21;
            goto LABEL_17;
          }
        }

        if ((v40 & 1) == 0)
        {

          v3 = v38;
          goto LABEL_41;
        }

        v37 = 1 << *(v5 + 32);
        v3 = v38;
        if (v37 >= 64)
        {
          bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v10 = -1 << v37;
        }

        *(v5 + 16) = 0;
        goto LABEL_40;
      }

      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = (*(v5 + 48) + 3 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      v28 = *(v23 + 8 * v22);
      if ((v40 & 1) == 0)
      {
      }

      v41 = v28;
      v29 = *(v8 + 40);
      sub_1B4D18E8C();
      sub_1B4D18EAC();
      if (v25 != 12)
      {
        sub_1B4D1820C();
      }

      if (v26 == 7)
      {
        break;
      }

      sub_1B4D18EAC();
      sub_1B4D1820C();

      if (v27 != 2)
      {
        goto LABEL_23;
      }

LABEL_25:
      sub_1B4D18EAC();
      result = sub_1B4D18EDC();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v17 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v17 = v41;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = (*(v8 + 48) + 3 * v16);
      *v18 = v25;
      v18[1] = v26;
      v18[2] = v27;
      *(*(v8 + 56) + 8 * v16) = v17;
      ++*(v8 + 16);
      v5 = v39;
    }

    sub_1B4D18EAC();
    if (v27 == 2)
    {
      goto LABEL_25;
    }

LABEL_23:
    sub_1B4D18EAC();
    goto LABEL_25;
  }

LABEL_40:

LABEL_41:
  *v3 = v8;
  return result;
}

uint64_t sub_1B4987444(uint64_t a1, int a2)
{
  v3 = v2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v42 - v8;
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68A8, &qword_1B4D1ABC0);
  v48 = a2;
  result = sub_1B4D18ADC();
  v12 = result;
  if (*(v9 + 16))
  {
    v43 = v3;
    v44 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v45 = (v6 + 8);
    v19 = result + 64;
    v20 = result;
    while (v17)
    {
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v26 = v23 | (v13 << 6);
      v27 = *(*(v9 + 48) + v26);
      v28 = *(*(v9 + 56) + 8 * v26);
      if ((v48 & 1) == 0)
      {
      }

      v49 = v28;
      v29 = v20[5];
      sub_1B4D18E8C();
      v50 = v27;
      v30 = v20;
      v31 = v46;
      DistanceReference.rawValue.getter();
      sub_1B498B070();
      v32 = v47;
      sub_1B4D1808C();
      v33 = v31;
      v20 = v30;
      (*v45)(v33, v32);
      result = sub_1B4D18EDC();
      v34 = -1 << *(v30 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v19 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v22 = v49;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v19 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v19 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v22 = v49;
LABEL_9:
      *(v19 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(v20[6] + v21) = v27;
      *(v20[7] + 8 * v21) = v22;
      ++v20[2];
      v9 = v44;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v13 >= v18)
      {
        break;
      }

      v25 = v14[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v17 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if (v48)
    {
      v41 = 1 << *(v9 + 32);
      v3 = v43;
      if (v41 >= 64)
      {
        bzero(v14, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v14 = -1 << v41;
      }

      *(v9 + 16) = 0;
    }

    else
    {

      v3 = v43;
    }
  }

  else
  {

    v20 = v12;
  }

  *v3 = v20;
  return result;
}

uint64_t sub_1B49877D0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for WorkoutMetadata();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68F8, &qword_1B4D1AC10);
  v44 = a2;
  result = sub_1B4D18ADC();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_1B498B198(v31, v45, type metadata accessor for WorkoutMetadata);
      }

      else
      {
        sub_1B498B130(v31, v45, type metadata accessor for WorkoutMetadata);
      }

      v32 = *(v12 + 40);
      sub_1B4D18E8C();
      sub_1B4D1820C();
      result = sub_1B4D18EDC();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_1B498B198(v45, *(v12 + 56) + v30 * v20, type metadata accessor for WorkoutMetadata);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1B4987B48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6890, &qword_1B4D1ABA8);
  v36 = a2;
  result = sub_1B4D18ADC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1B498B060(v25, v37);
      }

      else
      {
        sub_1B4955D64(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1B4D18E8C();
      sub_1B4D1820C();
      result = sub_1B4D18EDC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1B498B060(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1B4987E00(uint64_t a1, int a2)
{
  v3 = v2;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v43 = *(Descriptor - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](Descriptor - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68B0, &qword_1B4D1ABC8);
  v44 = a2;
  result = sub_1B4D18ADC();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_1B498B198(v31, v45, type metadata accessor for FitnessContextQueryDescriptor);
      }

      else
      {
        sub_1B498B130(v31, v45, type metadata accessor for FitnessContextQueryDescriptor);
      }

      v32 = *(v12 + 40);
      sub_1B4D18E8C();
      sub_1B4D1820C();
      result = sub_1B4D18EDC();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_1B498B198(v45, *(v12 + 56) + v30 * v20, type metadata accessor for FitnessContextQueryDescriptor);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1B4988178(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6898, &qword_1B4D1ABB0);
  v36 = a2;
  result = sub_1B4D18ADC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_1B4D18E8C();
      sub_1B4D1820C();
      result = sub_1B4D18EDC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B4988444(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1B4D18ADC();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = v23;
      }

      v26 = *(v10 + 40);
      result = sub_1B4D1879C();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((a2 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

void *sub_1B49886AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68E8, &unk_1B4D1AC00);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1B4988808()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6878, &unk_1B4D1AB90);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B4988954()
{
  v1 = v0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6918, &qword_1B4D1AC30);
  v4 = *v0;
  v5 = sub_1B4D18ACC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_1B4988BC4()
{
  v1 = v0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v26 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68B8, &qword_1B4D1ABD0);
  v4 = *v0;
  v5 = sub_1B4D18ACC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1B4988E3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6910, &qword_1B4D1AC28);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B4988F88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68A0, &qword_1B4D1ABB8);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1B49890E4()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutMilestoneEntry();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6880, &unk_1B4D46FC0);
  v6 = *v0;
  v7 = sub_1B4D18ACC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_1B498B130(*(v6 + 56) + v23, v5, type metadata accessor for WorkoutMilestoneEntry);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = sub_1B498B198(v5, *(v8 + 56) + v23, type metadata accessor for WorkoutMilestoneEntry);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1B4989318()
{
  v1 = v0;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v25 = *(Descriptor - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](Descriptor - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6908, &qword_1B4D1AC20);
  v6 = *v0;
  v7 = sub_1B4D18ACC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_1B498B130(*(v6 + 48) + v22, v5, type metadata accessor for FitnessContextQueryDescriptor);
        v23 = *(*(v6 + 56) + 8 * v21);
        sub_1B498B198(v5, *(v8 + 48) + v22, type metadata accessor for FitnessContextQueryDescriptor);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1B4989558()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6860, &qword_1B4D1AB78);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B49896A4()
{
  v1 = v0;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v25 = *(Descriptor - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](Descriptor - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6900, &qword_1B4D1AC18);
  v6 = *v0;
  v7 = sub_1B4D18ACC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + v21);
        v23 = *(v25 + 72) * v21;
        sub_1B498B130(*(v6 + 56) + v23, v5, type metadata accessor for FitnessContextQueryDescriptor);
        *(*(v8 + 48) + v21) = v22;
        result = sub_1B498B198(v5, *(v8 + 56) + v23, type metadata accessor for FitnessContextQueryDescriptor);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_1B49898D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68C0, &qword_1B4D1ABD8);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
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

        result = v20;
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

id sub_1B4989A44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68C8, &qword_1B4D1ABE0);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1B4989BA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68F0, &qword_1B4D1BC20);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
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

void *sub_1B4989D04()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutState();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68E0, &qword_1B4D1ABF8);
  v6 = *v0;
  v7 = sub_1B4D18ACC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + v21);
        v23 = *(v25 + 72) * v21;
        sub_1B498B130(*(v6 + 56) + v23, v5, type metadata accessor for WorkoutState);
        *(*(v8 + 48) + v21) = v22;
        result = sub_1B498B198(v5, *(v8 + 56) + v23, type metadata accessor for WorkoutState);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1B4989F4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68D8, &qword_1B4D1ABF0);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
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
        v18 = v17 << 6;
        v17 *= 8;
        v19 = v18 - v17;
        v20 = *(v2 + 56);
        v21 = (*(v2 + 48) + v19);
        v22 = *(v21 + 6);
        v23 = v21[2];
        v24 = *v21;
        v31[1] = v21[1];
        v31[2] = v23;
        v31[0] = v24;
        v32 = v22;
        v25 = *(v20 + v17);
        v26 = *(v4 + 48) + v19;
        v27 = *v21;
        v28 = v21[1];
        v29 = v21[2];
        *(v26 + 48) = *(v21 + 6);
        *(v26 + 16) = v28;
        *(v26 + 32) = v29;
        *v26 = v27;
        *(*(v4 + 56) + v17) = v25;
        sub_1B498B0D4(v31, v30);
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

void *sub_1B498A0FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68D0, &qword_1B4D1ABE8);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
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
        v18 = *(v2 + 48) + 3 * v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 2);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 3 * v17;
        *v21 = v19;
        *(v21 + 2) = v18;
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

void *sub_1B498A26C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68A8, &qword_1B4D1ABC0);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1B498A3C8()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutMetadata();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68F8, &qword_1B4D1AC10);
  v5 = *v0;
  v6 = sub_1B4D18ACC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_1B498B130(*(v5 + 56) + v27, v31, type metadata accessor for WorkoutMetadata);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_1B498B198(v26, *(v28 + 56) + v27, type metadata accessor for WorkoutMetadata);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1B498A620()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6890, &qword_1B4D1ABA8);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1B4955D64(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B498B060(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1B498A7C4()
{
  v1 = v0;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v32 = *(Descriptor - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](Descriptor - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68B0, &qword_1B4D1ABC8);
  v5 = *v0;
  v6 = sub_1B4D18ACC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_1B498B130(*(v5 + 56) + v27, v31, type metadata accessor for FitnessContextQueryDescriptor);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_1B498B198(v26, *(v28 + 56) + v27, type metadata accessor for FitnessContextQueryDescriptor);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1B498AA1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6898, &qword_1B4D1ABB0);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

void *sub_1B498ABB0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1B4D18ACC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1B8C7DDA0);
  }

  return result;
}

unint64_t sub_1B498ADA8()
{
  result = qword_1EDC39110;
  if (!qword_1EDC39110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39110);
  }

  return result;
}

unint64_t sub_1B498AEAC()
{
  result = qword_1EB8A6828;
  if (!qword_1EB8A6828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6828);
  }

  return result;
}

uint64_t sub_1B498AF00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B498AF48()
{
  result = qword_1EDC38CC0;
  if (!qword_1EDC38CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38CC0);
  }

  return result;
}

uint64_t sub_1B498AFB8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B498B000(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_OWORD *sub_1B498B060(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1B498B070()
{
  result = qword_1EDC3CB40;
  if (!qword_1EDC3CB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC3CB40);
  }

  return result;
}

uint64_t sub_1B498B130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B498B198(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B498B21C()
{
  result = qword_1EB8A6920;
  if (!qword_1EB8A6920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6920);
  }

  return result;
}

uint64_t sub_1B498B270(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t InferenceResult.init(_:)@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v92 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v98 = *(v3 - 8);
  v99 = v3;
  v4 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v89 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v89 - v11;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6940, &unk_1B4D22400);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v94 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v89 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6948, qword_1B4D1E1C0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v89 - v24;
  v26 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  v27 = (a1 + v26[5]);
  v28 = v27[1];
  v90 = v6;
  v102 = v25;
  if (v28)
  {
    v91 = *v27;
    v100 = v28;
  }

  else
  {
    v91 = 0;
    v100 = 0xE000000000000000;
  }

  v29 = a1 + v26[6];
  if (*(v29 + 8))
  {
    v30 = 0.0;
  }

  else
  {
    v30 = *v29;
  }

  v96 = v26;
  v31 = v26[10];
  sub_1B4974FBC(a1 + v31, v21, &qword_1EB8A6940, &unk_1B4D22400);
  v93 = *(v13 + 48);
  v32 = v93(v21, 1, v12);
  v33 = v12;
  v34 = a1;
  v35 = v32;

  sub_1B4975024(v21, &qword_1EB8A6940, &unk_1B4D22400);
  if (v35 == 1)
  {
    v36 = v34;
    v37 = v102;
    v38 = 1;
  }

  else
  {
    v39 = v94;
    sub_1B4974FBC(v34 + v31, v94, &qword_1EB8A6940, &unk_1B4D22400);
    v40 = v93;
    v36 = v34;
    if (v93(v39, 1, v33) == 1)
    {
      v41 = v95;
      sub_1B4D17BBC();
      v42 = v41 + v33[5];
      *v42 = 0;
      *(v42 + 8) = 1;
      v43 = v41 + v33[6];
      *v43 = 0;
      *(v43 + 8) = 1;
      v44 = (v41 + v33[7]);
      *v44 = 0;
      v44[1] = 0;
      *(v41 + v33[8]) = 2;
      v45 = (v41 + v33[9]);
      *v45 = 0;
      v45[1] = 0;
      v46 = v41 + v33[10];
      *v46 = 0;
      *(v46 + 8) = 1;
      v47 = v40(v39, 1, v33);
      v48 = v101;
      if (v47 != 1)
      {
        sub_1B4975024(v39, &qword_1EB8A6940, &unk_1B4D22400);
      }
    }

    else
    {
      v41 = v95;
      sub_1B498C4F8(v39, v95, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
      v48 = v101;
    }

    v37 = v102;
    AnnounceUtteranceResult.init(_:)(v41, v102);
    if (v48)
    {
      sub_1B498C5C4(v34, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
    }

    v101 = 0;
    v38 = 0;
  }

  v50 = type metadata accessor for AnnounceUtteranceResult();
  (*(*(v50 - 8) + 56))(v37, v38, 1, v50);
  v51 = v97;
  v52 = (v36 + v96[8]);
  v53 = *v52;
  v54 = v52[1];
  v55 = (v36 + v96[9]);
  v56 = *v55;
  v57 = v55[1];
  v93 = v53;
  v94 = v56;
  v58 = v96[11];
  sub_1B4974FBC(v36 + v58, v97, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v59 = v99;
  v98 = *(v98 + 48);
  v60 = (v98)(v51, 1, v99);

  v95 = v54;

  sub_1B4975024(v51, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  if (v60 == 1)
  {
    goto LABEL_24;
  }

  v65 = v89;
  sub_1B4974FBC(v36 + v58, v89, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v66 = v98;
  if ((v98)(v65, 1, v59) == 1)
  {
    v67 = v90;
    sub_1B4D17BBC();
    v68 = (v67 + *(v59 + 20));
    *v68 = 0;
    v68[1] = 0;
    v69 = (v67 + *(v59 + 24));
    *v69 = 0;
    v69[1] = 0;
    v70 = v57;
    if (v66(v65, 1, v59) != 1)
    {
      sub_1B4975024(v65, &qword_1EB8A6938, &qword_1B4D1ACF8);
    }
  }

  else
  {
    v67 = v90;
    sub_1B498C4F8(v65, v90, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    v70 = v57;
  }

  v71 = (v67 + *(v59 + 20));
  v62 = v71[1];
  if (v62)
  {
    v72 = (v67 + *(v59 + 24));
    v64 = v72[1];
    if (v64)
    {
      v73 = *v71;
      v74 = *v72;
      v75 = v71[1];

      sub_1B498C5C4(v67, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
      v63 = v74;
      v61 = v73;
      v37 = v102;
      v57 = v70;
LABEL_24:
      v76 = v36;
      v77 = v61;
      v78 = v63;
      sub_1B498C5C4(v76, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
      v79 = v92;
      v80 = v100;
      *v92 = v91;
      *(v79 + 1) = v80;
      v79[2] = v30;
      v81 = type metadata accessor for InferenceResult();
      result = sub_1B498C368(v37, v79 + v81[6]);
      v82 = (v79 + v81[7]);
      v83 = v94;
      v84 = v95;
      *v82 = v93;
      v82[1] = v84;
      v85 = (v79 + v81[8]);
      *v85 = v83;
      v85[1] = v57;
      v86 = (v79 + v81[9]);
      *v86 = v77;
      v86[1] = v62;
      v86[2] = v78;
      v86[3] = v64;
      return result;
    }

    v87 = 1;
  }

  else
  {
    v87 = 0;
  }

  sub_1B498C3D8();
  swift_allocError();
  *v88 = v87;
  swift_willThrow();
  sub_1B498C5C4(v67, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4975024(v102, &qword_1EB8A6948, qword_1B4D1E1C0);

  return sub_1B498C5C4(v36, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
}

uint64_t InferenceResult.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  sub_1B498C57C(&qword_1EB8A6958, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  return sub_1B4D17DAC();
}

uint64_t sub_1B498BBA4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6948, qword_1B4D1E1C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v55 - v12;
  v14 = type metadata accessor for AnnounceUtteranceResult();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  v19 = a2[1];
  v20 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  v21 = (a1 + v20[5]);
  v22 = v21[1];

  *v21 = v18;
  v21[1] = v19;
  v23 = a1 + v20[6];
  *v23 = a2[2];
  *(v23 + 8) = 0;
  v24 = type metadata accessor for InferenceResult();
  sub_1B4974FBC(a2 + v24[6], v13, &qword_1EB8A6948, qword_1B4D1E1C0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    result = sub_1B4975024(v13, &qword_1EB8A6948, qword_1B4D1E1C0);
  }

  else
  {
    v26 = v13;
    v27 = v56;
    v28 = sub_1B498C4F8(v26, v56, type metadata accessor for AnnounceUtteranceResult);
    MEMORY[0x1EEE9AC00](v28);
    *(&v55 - 2) = v27;
    sub_1B498C57C(&qword_1EB8A6970, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
    v29 = v57;
    v30 = v59;
    v31 = v63;
    sub_1B4D17DAC();
    v63 = v31;
    v32 = v20[10];
    sub_1B4975024(a1 + v32, &qword_1EB8A6940, &unk_1B4D22400);
    sub_1B498C4F8(v29, a1 + v32, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
    (*(v58 + 56))(a1 + v32, 0, 1, v30);
    result = sub_1B498C5C4(v27, type metadata accessor for AnnounceUtteranceResult);
  }

  v33 = v20;
  v34 = (a2 + v24[7]);
  v35 = v34[1];
  if (v35)
  {
    v36 = *v34;
    v37 = (a1 + v20[8]);
    v38 = v37[1];

    *v37 = v36;
    v37[1] = v35;
  }

  v39 = (a2 + v24[8]);
  v40 = v39[1];
  if (v40)
  {
    v41 = *v39;
    v42 = (a1 + v20[9]);
    v43 = v42[1];

    *v42 = v41;
    v42[1] = v40;
  }

  v44 = (a2 + v24[9]);
  if (v44[1])
  {
    v46 = v44[2];
    v45 = v44[3];
    v47 = *v44;
    MEMORY[0x1EEE9AC00](result);
    *(&v55 - 4) = v49;
    *(&v55 - 3) = v48;
    *(&v55 - 2) = v51;
    *(&v55 - 1) = v50;
    sub_1B498C57C(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    v52 = v60;
    v53 = v62;
    sub_1B4D17DAC();
    v54 = v33[11];
    sub_1B4975024(a1 + v54, &qword_1EB8A6938, &qword_1B4D1ACF8);
    sub_1B498C4F8(v52, a1 + v54, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    return (*(v61 + 56))(a1 + v54, 0, 1, v53);
  }

  return result;
}

uint64_t sub_1B498C128(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B498C57C(&qword_1EB8A6968, type metadata accessor for InferenceResult);
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B498C57C(&qword_1EB8A6958, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
    v1 = sub_1B4D17D6C();
    sub_1B498C5C4(v7, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  }

  return v1;
}

uint64_t sub_1B498C2A8()
{
  type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  sub_1B498C57C(&qword_1EB8A6958, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  return sub_1B4D17DAC();
}

uint64_t sub_1B498C368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6948, qword_1B4D1E1C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B498C3D8()
{
  result = qword_1EB8A6950;
  if (!qword_1EB8A6950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6950);
  }

  return result;
}

uint64_t sub_1B498C4F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B498C57C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B498C5C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AnnounceUtteranceResult.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6978, &qword_1B4D47BC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v9 = a1 + v8[5];
  if (*(v9 + 8))
  {
    v10 = 0;
LABEL_5:
    sub_1B498C974();
    swift_allocError();
    *v12 = v10;
    swift_willThrow();
    return sub_1B498C9C8(a1);
  }

  v11 = a1 + v8[6];
  if (*(v11 + 8))
  {
    v10 = 1;
    goto LABEL_5;
  }

  v14 = *v9;
  v15 = *v11;
  v16 = a1 + v8[10];
  v29 = *v16;
  v17 = *(v16 + 8);
  v18 = v8[9];
  v19 = *(a1 + v8[8]);
  if (*(a1 + v18 + 8))
  {
    v20 = *(a1 + v18);
    v21 = v8;
    v22 = *(a1 + v18 + 8);

    v23 = sub_1B4D18B1C();

    v8 = v21;
    if (v23 >= 3)
    {
      LOBYTE(v23) = 3;
    }
  }

  else
  {
    LOBYTE(v23) = 3;
  }

  v24 = (a1 + v8[7]);
  if (v24[1])
  {
    v25 = *v24;
    v26 = v24[1];
  }

  sub_1B4D1766C();

  sub_1B498C9C8(a1);
  *a2 = v14;
  *(a2 + 8) = v29;
  *(a2 + 16) = v17;
  *(a2 + 24) = v15;
  *(a2 + 32) = v19;
  *(a2 + 33) = v23;
  v27 = type metadata accessor for AnnounceUtteranceResult();
  return sub_1B498CA24(v7, a2 + *(v27 + 36));
}

uint64_t AnnounceUtteranceResult.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  sub_1B498D1B8(&qword_1EB8A6970, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  return sub_1B4D17DAC();
}

uint64_t sub_1B498C8E8()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B498C930()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  return sub_1B4D18EDC();
}

unint64_t sub_1B498C974()
{
  result = qword_1EB8A6980;
  if (!qword_1EB8A6980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6980);
  }

  return result;
}

uint64_t sub_1B498C9C8(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B498CA24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6978, &qword_1B4D47BC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B498CA94(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6978, &qword_1B4D47BC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - v6;
  v8 = sub_1B4D1767C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v14 = v13;
  v15 = a1 + v13[5];
  *v15 = v12;
  *(v15 + 8) = 0;
  if ((a2[2] & 1) == 0)
  {
    v16 = a1 + v13[10];
    *v16 = a2[1];
    *(v16 + 8) = 0;
  }

  v17 = a1 + v13[6];
  *v17 = a2[3];
  *(v17 + 8) = 0;
  v18 = *(a2 + 32);
  if (v18 != 2)
  {
    *(a1 + v13[8]) = v18;
  }

  v19 = *(a2 + 33);
  if (v19 > 1)
  {
    if (v19 != 2)
    {
      goto LABEL_12;
    }

    v35 = v9;
    v20 = v8;
    v21 = 0xE600000000000000;
    v22 = 0x6D6165727473;
  }

  else
  {
    v35 = v9;
    v20 = v8;
    if (v19)
    {
      v21 = 0xEC00000065636E75;
      v22 = 0x6F6E6E4169726973;
    }

    else
    {
      v21 = 0xE600000000000000;
      v22 = 0x746365726964;
    }
  }

  v23 = (a1 + v13[9]);
  v24 = v23[1];

  *v23 = v22;
  v23[1] = v21;
  v8 = v20;
  v9 = v35;
LABEL_12:
  v25 = type metadata accessor for AnnounceUtteranceResult();
  sub_1B498D200(a2 + *(v25 + 36), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B498D270(v7);
  }

  v27 = v34;
  (*(v9 + 32))(v34, v7, v8);
  v28 = sub_1B4D1765C();
  v30 = v29;
  (*(v9 + 8))(v27, v8);
  v31 = (a1 + v14[7]);
  v32 = v31[1];

  *v31 = v28;
  v31[1] = v30;
  return result;
}

uint64_t sub_1B498CD54(uint64_t a1)
{
  v3 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B498D1B8(&qword_1EB8A6998, type metadata accessor for AnnounceUtteranceResult);
  (*(v7 + 32))(a1, v7);
  if (!v1)
  {
    sub_1B498D1B8(&qword_1EB8A6970, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
    v3 = sub_1B4D17D6C();
    sub_1B498C9C8(v6);
  }

  return v3;
}

uint64_t sub_1B498CF50()
{
  type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  sub_1B498D1B8(&qword_1EB8A6970, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  return sub_1B4D17DAC();
}

uint64_t _s7FailureOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s7FailureOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B498D164()
{
  result = qword_1EB8A6990;
  if (!qword_1EB8A6990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6990);
  }

  return result;
}

uint64_t sub_1B498D1B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B498D200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6978, &qword_1B4D47BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B498D270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6978, &qword_1B4D47BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B498D2F0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v34 - v17;
  v19 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1B4D1866C();
  if (!v26)
  {
    return sub_1B4D1843C();
  }

  v48 = v26;
  v52 = sub_1B4D18A5C();
  v39 = sub_1B4D18A6C();
  sub_1B4D18A0C();
  result = sub_1B4D1864C();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1B4D186BC();
      v30 = v18;
      v31 = v18;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1B4D18A4C();
      result = sub_1B4D1867C();
      ++v28;
      v18 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t WeeklyStatisticsPropertyValue.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v38 = a3;
  v40 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v37 = type metadata accessor for StatisticsPropertyValue();
  v14 = sub_1B4D1880C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v41 = &v35 - v16;
  v17 = a1[1];
  v46 = *a1;
  v44 = a2;
  v45 = v17;

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A8, &qword_1B4D1AE50);
  v42 = a2;
  sub_1B4D1746C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = sub_1B498E184();
  v21 = v39;
  v23 = sub_1B498D2F0(sub_1B498E164, v43, v18, TupleTypeMetadata2, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v22);

  v45 = v23;
  sub_1B4D184BC();
  sub_1B498E1E8();
  swift_getWitnessTable();
  v24 = v40;
  v25 = sub_1B4D17FCC();
  v26 = *(type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0) + 28);
  sub_1B498E23C(a1 + v26, v13);
  v27 = *(v5 + 48);
  LODWORD(v23) = v27(v13, 1, v24);
  sub_1B498E2AC(v13);
  if (v23 == 1)
  {
    sub_1B498E314(a1);
    v28 = 1;
    v29 = v41;
  }

  else
  {
    v30 = a1 + v26;
    v31 = v35;
    sub_1B498E23C(v30, v35);
    if (v27(v31, 1, v24) == 1)
    {
      v32 = v36;
      *(v36 + 16) = 0u;
      *(v32 + 32) = 0u;
      *v32 = 0u;
      v33 = v32 + *(v24 + 40);
      sub_1B4D17BBC();
      if (v27(v31, 1, v24) != 1)
      {
        sub_1B498E2AC(v31);
      }
    }

    else
    {
      v32 = v36;
      sub_1B498E370(v31, v36);
    }

    v29 = v41;
    StatisticsPropertyValue.init(_:)(v32, v41);
    sub_1B498E314(a1);
    if (v21)
    {
    }

    v28 = 0;
  }

  (*(*(v37 - 8) + 56))(v29, v28, 1);
  return sub_1B49BA6D4(&v46, v25, v29, v38);
}

uint64_t sub_1B498DB30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1B4D1746C();
  v4 = *(swift_getTupleTypeMetadata2() + 48);
  *a2 = *a1;
  v5 = a1[1];
  v6 = [swift_getObjCClassFromMetadata() baseUnit];
  return sub_1B4D1741C();
}

uint64_t WeeklyStatisticsPropertyValue.protobuf()(uint64_t a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  v3 = *(a1 + 16);
  sub_1B498E558(qword_1EDC3AC30, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
  return sub_1B4D17DAC();
}

uint64_t sub_1B498DC90(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StatisticsPropertyValue();
  v10 = sub_1B4D1880C();
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v12;
  v38 = *(v9 - 8);
  v14 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v35 = &v33 - v16;
  v37 = a2;
  v17 = *a2;
  v18 = *(a2 + 1);
  *a1 = v17;
  v47 = v18;
  v46 = a3;
  v42 = a3;
  v43 = sub_1B498E480;
  v44 = &v45;
  sub_1B4D1746C();
  sub_1B498E1E8();
  v19 = sub_1B4D1801C();
  v20 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair(0);

  WitnessTable = swift_getWitnessTable();
  v22 = v40;
  v24 = sub_1B498D2F0(sub_1B498E488, v41, v19, v20, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v23);
  v25 = v39;

  v26 = *(a1 + 1);

  *(a1 + 1) = v24;
  v27 = v38;
  v28 = type metadata accessor for WeeklyStatisticsPropertyValue();
  (*(v25 + 16))(v13, &v37[*(v28 + 32)], v10);
  if ((*(v27 + 48))(v13, 1, v9) == 1)
  {
    return (*(v25 + 8))(v13, v10);
  }

  v30 = v35;
  (*(v27 + 32))(v35, v13, v9);
  v31 = v36;
  StatisticsPropertyValue.protobuf()(v9);
  if (v22)
  {
    return (*(v27 + 8))(v30, v9);
  }

  (*(v27 + 8))(v30, v9);
  v32 = *(type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0) + 28);
  sub_1B498E2AC(&a1[v32]);
  sub_1B498E370(v31, &a1[v32]);
  return (*(v33 + 56))(&a1[v32], 0, 1, v34);
}

uint64_t sub_1B498E074(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair(0);
  sub_1B498E558(qword_1EDC3ACD8, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);
  return sub_1B4D17DAC();
}

unint64_t sub_1B498E184()
{
  result = qword_1EB8A69B0;
  if (!qword_1EB8A69B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A69A8, &qword_1B4D1AE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A69B0);
  }

  return result;
}

unint64_t sub_1B498E1E8()
{
  result = qword_1EDC399C8;
  if (!qword_1EDC399C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC399C8);
  }

  return result;
}

uint64_t sub_1B498E23C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B498E2AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B498E314(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B498E370(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B498E488(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_1B4D1746C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v4(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_1B498E50C(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v4;
  sub_1B4D1746C();
  result = sub_1B4D1742C();
  a1[1] = v7;
  return result;
}

uint64_t sub_1B498E558(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t InferenceTelemetryIdentifier.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0) + 28));
  v8 = *v6;
  v7 = v6[1];
  v10 = a1[2];
  v9 = a1[3];

  result = sub_1B498E634(a1);
  *a2 = v5;
  a2[1] = v4;
  a2[2] = v8;
  a2[3] = v7;
  a2[4] = v10;
  a2[5] = v9;
  return result;
}

uint64_t sub_1B498E634(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InferenceTelemetryIdentifier.protobuf()()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  sub_1B498E9DC(&qword_1EB8A69C0);
  return sub_1B4D17DAC();
}

uint64_t sub_1B498E734(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = a1[1];

  *a1 = v5;
  a1[1] = v4;
  v7 = a2[3];
  if (v7)
  {
    v8 = a2[2];
    v9 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0) + 28));
    v10 = v9[1];

    *v9 = v8;
    v9[1] = v7;
  }

  v12 = a2[4];
  v11 = a2[5];
  v13 = a1[3];

  a1[2] = v12;
  a1[3] = v11;
  return result;
}

uint64_t sub_1B498E7F8(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 8);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v13[0] = *v1;
  v13[1] = v8;
  v14 = *(v1 + 16);
  v15 = v9;
  v16 = v10;
  v11 = sub_1B498EB58();
  (*(v11 + 32))(a1, v11);
  if (!v2)
  {
    sub_1B498E9DC(&qword_1EB8A69C0);
    v4 = sub_1B4D17D6C();
    sub_1B498E634(v7);
  }

  return v4;
}

double sub_1B498E928@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B4B216C4(a1, a2, v9);
  if (!v3)
  {
    v6 = v9[1];
    v7 = v11;
    v8 = v12;
    *a3 = v9[0];
    *(a3 + 8) = v6;
    result = *&v10;
    *(a3 + 16) = v10;
    *(a3 + 32) = v7;
    *(a3 + 40) = v8;
  }

  return result;
}

uint64_t sub_1B498E9DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B498EA20()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  sub_1B498E9DC(&qword_1EB8A69C0);
  return sub_1B4D17DAC();
}

uint64_t sub_1B498EAC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0) + 28));
  v8 = *v6;
  v7 = v6[1];
  v10 = a1[2];
  v9 = a1[3];

  result = sub_1B498E634(a1);
  *a2 = v5;
  a2[1] = v4;
  a2[2] = v8;
  a2[3] = v7;
  a2[4] = v10;
  a2[5] = v9;
  return result;
}

unint64_t sub_1B498EB58()
{
  result = qword_1EB8A69D0;
  if (!qword_1EB8A69D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A69D0);
  }

  return result;
}

void sub_1B498EBC4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AFF8]) initWithCoefficient_];
  v1 = objc_allocWithZone(MEMORY[0x1E696B030]);
  v2 = sub_1B4D1817C();
  v3 = [v1 initWithSymbol:v2 converter:v0];

  qword_1EDC36DF8 = v3;
}

id static NSUnitEnergy.largeCalories.getter()
{
  if (qword_1EDC36DF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC36DF8;

  return v1;
}

uint64_t TrainingLoadFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t TrainingLoadFact.TemplateString.rawValue.getter()
{
  v1 = 0xD000000000000033;
  v2 = 0xD000000000000038;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000033;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000003BLL;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_1B498EDC0()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B498EE8C()
{
  *v0;
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B498EF44()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B498F00C@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return TrainingLoadFact.TemplateString.init(rawValue:)(a1);
}

void sub_1B498F018(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000033;
  v3 = *v1;
  v4 = "my 28-day baseline.";
  v5 = "my 28-day baseline.";
  v6 = 0xD000000000000038;
  if (v3 != 3)
  {
    v5 = "bove my 28-day baseline.";
  }

  if (v3 == 2)
  {
    v6 = 0xD000000000000033;
  }

  else
  {
    v4 = v5;
  }

  if (*v1)
  {
    v7 = "ck with my 28-day baseline.";
  }

  else
  {
    v2 = 0xD00000000000003BLL;
    v7 = "guration";
  }

  if (*v1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v2 = v6;
    v8 = v4;
  }

  *a1 = v2;
  a1[1] = v8 | 0x8000000000000000;
}

unint64_t sub_1B498F0E4()
{
  result = qword_1EB8A69D8;
  if (!qword_1EB8A69D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A69D8);
  }

  return result;
}

unint64_t sub_1B498F13C()
{
  result = qword_1EB8A69E0;
  if (!qword_1EB8A69E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A69E8, &qword_1B4D1AF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A69E0);
  }

  return result;
}

unint64_t sub_1B498F1A4()
{
  result = qword_1EB8A69F0;
  if (!qword_1EB8A69F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A69F0);
  }

  return result;
}

unint64_t sub_1B498F1FC()
{
  result = qword_1EB8A69F8;
  if (!qword_1EB8A69F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A69F8);
  }

  return result;
}

unint64_t sub_1B498F284(uint64_t a1)
{
  result = sub_1B498F2AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B498F2AC()
{
  result = qword_1EB8A6A00;
  if (!qword_1EB8A6A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6A00);
  }

  return result;
}

uint64_t _s14TemplateStringOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s14TemplateStringOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t StreamingAudioData.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(*a1 + 16);
  if (v11)
  {
    v25 = a1;
    v26 = a2;
    v27 = v2;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1B4BCEE1C(0, v11, 0);
    v12 = v34;
    v13 = v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v28 = *(v6 + 72);
    do
    {
      sub_1B498FBA8(v13, v9);
      v14 = *(v9 + 1);
      v31 = *v9;
      v30 = *(v9 + 4);
      v15 = *(v9 + 3);
      v16 = *(v9 + 4);
      v29 = *(v9 + 10);
      v18 = *(v9 + 6);
      v17 = *(v9 + 7);

      v32 = v15;
      sub_1B498FC0C(v15, v16);
      v33 = v17;
      sub_1B498FC0C(v18, v17);
      sub_1B498FC60(v9, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk);
      v34 = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1B4BCEE1C((v19 > 1), v20 + 1, 1);
        v12 = v34;
      }

      *(v12 + 16) = v20 + 1;
      v21 = v12 + (v20 << 6);
      *(v21 + 32) = v31;
      *(v21 + 40) = v14;
      *(v21 + 48) = v30;
      *(v21 + 56) = v32;
      *(v21 + 64) = v16;
      v22 = v28;
      *(v21 + 72) = v29;
      *(v21 + 80) = v18;
      v13 += v22;
      *(v21 + 88) = v33;
      --v11;
    }

    while (v11);
    result = sub_1B498FC60(v25, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData);
    a2 = v26;
  }

  else
  {
    result = sub_1B498FC60(a1, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData);
    v12 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v12;
  return result;
}

uint64_t StreamingAudioData.protobuf()()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData(0);
  sub_1B498FE38(&qword_1EB8A6A08, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData);
  return sub_1B4D17DAC();
}

uint64_t sub_1B498F73C(void *a1, uint64_t a2)
{
  v19 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0);
  v4 = *(v19 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v18 = a1;
    v22 = MEMORY[0x1E69E7CC0];
    v10 = sub_1B4BCF05C(0, v8, 0);
    v9 = v22;
    v11 = (a2 + 32);
    do
    {
      v12 = v11[1];
      v21[0] = *v11;
      v21[1] = v12;
      v13 = v11[3];
      v21[2] = v11[2];
      v21[3] = v13;
      MEMORY[0x1EEE9AC00](v10);
      *(&v18 - 2) = v21;
      sub_1B498FDDC(v21, v20);
      sub_1B498FE38(&qword_1EB8A6A20, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk);
      sub_1B4D17DAC();
      sub_1B498FE80(v21);
      v22 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1B4BCF05C(v14 > 1, v15 + 1, 1);
        v9 = v22;
      }

      *(v9 + 16) = v15 + 1;
      v10 = sub_1B498FED4(v7, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15);
      v11 += 4;
      --v8;
    }

    while (v8);
    a1 = v18;
  }

  v16 = *a1;

  *a1 = v9;
  return result;
}

uint64_t *sub_1B498F970(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v8 = sub_1B498FD6C();
  v9 = &v12;
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B498FE38(&qword_1EB8A6A08, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData);
    v9 = sub_1B4D17D6C();
    sub_1B498FC60(v7, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData);
  }

  return v9;
}

uint64_t sub_1B498FAB4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1B4B2191C(a1, a2, &v6);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1B498FAE8()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData(0);
  sub_1B498FE38(&qword_1EB8A6A08, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData);
  return sub_1B4D17DAC();
}

uint64_t sub_1B498FBA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B498FC0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B498FC60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B498FD6C()
{
  result = qword_1EB8A6A18;
  if (!qword_1EB8A6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6A18);
  }

  return result;
}

uint64_t sub_1B498FE38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B498FED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t WorkoutWeekContext.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for WorkoutRecord();
  v29 = *(v12 - 8);
  v13 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = *(*a1 + 16);
  if (v17)
  {
    v25 = a2;
    v26 = a1;
    v31 = MEMORY[0x1E69E7CC0];
    v27 = v17;
    result = sub_1B4BCED9C(0, v17, 0);
    v19 = 0;
    v20 = v31;
    v28 = v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    while (v19 < *(v16 + 16))
    {
      sub_1B49919C0(v28 + *(v6 + 72) * v19, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
      v21 = v30;
      sub_1B49919C0(v11, v30, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
      WorkoutRecord.init(_:)(v21, v15);
      if (v2)
      {
        sub_1B4991A28(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
        sub_1B4991A28(v26, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
      }

      v22 = v6;
      sub_1B4991A28(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
      v31 = v20;
      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1B4BCED9C(v23 > 1, v24 + 1, 1);
        v20 = v31;
      }

      ++v19;
      *(v20 + 16) = v24 + 1;
      result = sub_1B4991A88(v15, v20 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v24, type metadata accessor for WorkoutRecord);
      v6 = v22;
      if (v27 == v19)
      {
        result = sub_1B4991A28(v26, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
        *v25 = v20;
        return result;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_1B4991A28(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
    *a2 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t WorkoutRecord.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v80 = *(v6 - 8);
  v81 = v6;
  v7 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v79 = (&v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A28, &qword_1B4D20160);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v69 - v14;
  v16 = sub_1B4D1777C();
  v82 = *(v16 - 8);
  v83 = v16;
  v17 = v82[8];
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v85 = &v69 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v69 - v23;
  v25 = sub_1B4D177CC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v84 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v69 - v30;
  v32 = *a1;
  v33 = a1[1];
  sub_1B4D1778C();
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_1B4975024(v24, &qword_1EB8A6A30, &unk_1B4D1FC00);
LABEL_6:
    sub_1B4991628();
    swift_allocError();
    swift_willThrow();
    return sub_1B4991A28(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
  }

  v34 = *(v26 + 32);
  v77 = v26 + 32;
  v78 = a2;
  v76 = v34;
  result = (v34)(v31, v24, v25);
  v36 = a1[4];
  if (v36 < 0)
  {
    __break(1u);
  }

  else
  {
    v38 = a1[5];
    v37 = a1[6];

    v39._countAndFlagsBits = v38;
    v39._object = v37;
    WorkoutLocationType.init(rawValue:)(v39);
    if (v89 == 5)
    {
      (*(v26 + 8))(v31, v25);
      goto LABEL_6;
    }

    v87 = v89;
    v74 = v36;
    v75 = v3;
    v72 = v12;
    (*(v26 + 16))(v84, v31, v25);
    v40 = a1[2];
    sub_1B4D176CC();
    v41 = a1[3];
    sub_1B4D176CC();
    v42 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
    v43 = *(v42 + 44);
    v44 = (a1 + *(v42 + 40));
    v45 = v44[1];
    v73 = *v44;
    v70 = v43;
    sub_1B499167C(a1 + v43, v15);
    v46 = v81;
    v71 = *(v80 + 48);
    v47 = v71(v15, 1, v81);
    v80 = v45;

    sub_1B4975024(v15, &qword_1EB8A6A28, &qword_1B4D20160);
    if (v47 == 1)
    {
      (*(v26 + 8))(v31, v25);
      v81 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
    }

    else
    {
      v51 = v72;
      sub_1B499167C(a1 + v70, v72);
      v52 = v71;
      if (v71(v51, 1, v46) == 1)
      {
        v53 = v79;
        *v79 = 0;
        v53[1] = 0xE000000000000000;
        v53[2] = MEMORY[0x1E69E7CC0];
        v53[3] = 0;
        v53[4] = 0xE000000000000000;
        v54 = v53 + *(v46 + 28);
        sub_1B4D17BBC();
        if (v52(v51, 1, v46) != 1)
        {
          sub_1B4975024(v51, &qword_1EB8A6A28, &qword_1B4D20160);
        }
      }

      else
      {
        v53 = v79;
        sub_1B4991A88(v51, v79, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
      }

      v56 = v53[3];
      v55 = v53[4];

      v57._countAndFlagsBits = v56;
      v57._object = v55;
      FitnessPlusModalityKind.init(rawValue:)(v57);
      v50 = v88;
      if (v88 == 15)
      {

        sub_1B49916EC();
        swift_allocError();
        swift_willThrow();
        sub_1B4991A28(v53, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
        v58 = v83;
        v59 = v82[1];
        v59(v86, v83);
        v59(v85, v58);
        v60 = *(v26 + 8);
        v60(v84, v25);
        v60(v31, v25);
        return sub_1B4991A28(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
      }

      (*(v26 + 8))(v31, v25);
      v48 = v53[1];
      v81 = *v53;
      v49 = v53[2];

      sub_1B4991A28(v53, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
    }

    v61 = v78;
    v76(v78, v84, v25);
    v62 = type metadata accessor for WorkoutRecord();
    v63 = v83;
    v64 = v82[4];
    v64(v61 + v62[5], v85, v83);
    v64(v61 + v62[6], v86, v63);
    *(v61 + v62[7]) = v74;
    *(v61 + v62[8]) = v87;
    v65 = (v61 + v62[9]);
    v67 = v80;
    v66 = v81;
    *v65 = v73;
    v65[1] = v67;
    v68 = v61 + v62[10];
    *v68 = v66;
    *(v68 + 8) = v48;
    *(v68 + 16) = v49;
    *(v68 + 24) = v50;
    return sub_1B4991A28(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
  }

  return result;
}

uint64_t WorkoutWeekContext.protobuf()()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  sub_1B4991978(&qword_1EB8A6A48, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4990AA8(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for WorkoutRecord();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  v24 = *(v10 - 8);
  v25 = v10;
  v11 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v22 = a1;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF07C(0, v14, 0);
    v15 = v26;
    v16 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v23 = *(v6 + 72);
    while (1)
    {
      v17 = sub_1B49919C0(v16, v9, type metadata accessor for WorkoutRecord);
      MEMORY[0x1EEE9AC00](v17);
      *(&v22 - 2) = v9;
      sub_1B4991978(&qword_1EB8A6A50, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
      sub_1B4D17DAC();
      if (v2)
      {
        break;
      }

      sub_1B4991A28(v9, type metadata accessor for WorkoutRecord);
      v26 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1B4BCF07C(v18 > 1, v19 + 1, 1);
        v15 = v26;
      }

      *(v15 + 16) = v19 + 1;
      sub_1B4991A88(v13, v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
      v16 += v23;
      if (!--v14)
      {
        a1 = v22;
        goto LABEL_9;
      }
    }

    sub_1B4991A28(v9, type metadata accessor for WorkoutRecord);
  }

  else
  {
LABEL_9:
    v21 = *a1;

    *a1 = v15;
  }

  return result;
}

uint64_t WorkoutRecord.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  sub_1B4991978(&qword_1EB8A6A50, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
  return sub_1B4D17DAC();
}

uint64_t *sub_1B4990E60(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v8 = sub_1B4991900();
  v9 = &v12;
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4991978(&qword_1EB8A6A48, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
    v9 = sub_1B4D17D6C();
    sub_1B4991A28(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  }

  return v9;
}

uint64_t sub_1B4990FA4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1B4B21B68(a1, a2, &v6);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1B4990FD8()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  sub_1B4991978(&qword_1EB8A6A48, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4991098(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B4D1779C();
  v11 = v10;
  v12 = a1[1];

  *a1 = v9;
  a1[1] = v11;
  v13 = type metadata accessor for WorkoutRecord();
  v14 = a2 + v13[5];
  sub_1B4D176DC();
  a1[2] = v15;
  v16 = a2 + v13[6];
  result = sub_1B4D176DC();
  a1[3] = v18;
  v19 = *(a2 + v13[7]);
  if (v19 < 0)
  {
    __break(1u);
  }

  else
  {
    a1[4] = v19;
    v20 = *(a2 + v13[8]);
    if (v20 <= 1)
    {
      if (*(a2 + v13[8]))
      {
        v21 = 0xE600000000000000;
        v22 = 0x726F6F646E69;
      }

      else
      {
        v21 = 0xE700000000000000;
        v22 = 0x6E776F6E6B6E75;
      }
    }

    else if (v20 == 2)
    {
      v21 = 0xE700000000000000;
      v22 = 0x726F6F6474756FLL;
    }

    else if (v20 == 3)
    {
      v21 = 0xE900000000000072;
      v22 = 0x657461576E65706FLL;
    }

    else
    {
      v21 = 0xEC0000006C6F6F50;
      v22 = 0x676E696D6D697773;
    }

    v23 = a1[6];

    a1[5] = v22;
    a1[6] = v21;
    v24 = (a2 + v13[9]);
    v25 = v24[1];
    if (v25)
    {
      v39 = *v24;
      v26 = v5;
      v27 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0) + 40));
      v28 = v27[1];

      *v27 = v39;
      v27[1] = v25;
      v5 = v26;
    }

    v29 = (a2 + v13[10]);
    if (v29[1])
    {
      v30 = *(v29 + 24);
      v31 = v29[2];
      v32 = *v29;
      MEMORY[0x1EEE9AC00](result);
      *(&v38 - 4) = v34;
      *(&v38 - 3) = v33;
      *(&v38 - 2) = v35;
      *(&v38 - 8) = v36;
      sub_1B4991978(&qword_1EB8A6A80, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
      sub_1B4D17DAC();
      v37 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0) + 44);
      sub_1B4975024(a1 + v37, &qword_1EB8A6A28, &qword_1B4D20160);
      sub_1B4991A88(v8, a1 + v37, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
      return (*(v5 + 56))(a1 + v37, 0, 1, v4);
    }
  }

  return result;
}

uint64_t sub_1B49913E8(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4991978(&qword_1EB8A6A70, type metadata accessor for WorkoutRecord);
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4991978(&qword_1EB8A6A50, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
    v1 = sub_1B4D17D6C();
    sub_1B4991A28(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
  }

  return v1;
}

uint64_t sub_1B4991568()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  sub_1B4991978(&qword_1EB8A6A50, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4991628()
{
  result = qword_1EB8A6A38;
  if (!qword_1EB8A6A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6A38);
  }

  return result;
}

uint64_t sub_1B499167C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A28, &qword_1B4D20160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B49916EC()
{
  result = qword_1EB8A6A40;
  if (!qword_1EB8A6A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6A40);
  }

  return result;
}

unint64_t sub_1B49918AC()
{
  result = qword_1EB8A6A68;
  if (!qword_1EB8A6A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6A68);
  }

  return result;
}

unint64_t sub_1B4991900()
{
  result = qword_1EB8A6A78;
  if (!qword_1EB8A6A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6A78);
  }

  return result;
}

uint64_t sub_1B4991978(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B49919C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4991A28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4991A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B4991B34()
{
  result = qword_1EB8A6A88;
  if (!qword_1EB8A6A88)
  {
    type metadata accessor for WorkoutDetailFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6A88);
  }

  return result;
}

unint64_t sub_1B4991B90()
{
  result = qword_1EB8A6A90;
  if (!qword_1EB8A6A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6A90);
  }

  return result;
}

uint64_t sub_1B4991BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4991C88, 0, 0);
}

uint64_t sub_1B4991C88()
{
  v1 = v0[5];
  sub_1B4992268(v0[3], v1, type metadata accessor for WorkoutState);
  v2 = type metadata accessor for WorkoutState();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1B4991D98;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];

  return sub_1B4CAE2F0(v6, v4);
}

uint64_t sub_1B4991D98(uint64_t a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v7 = *v1;

  sub_1B4975024(v4, &qword_1EB8A6A98, &unk_1B4D1CBE0);

  v5 = *(v7 + 8);

  return v5(a1);
}

unint64_t sub_1B4991ECC(uint64_t a1)
{
  v2 = type metadata accessor for LocationCoordinate();
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WorkoutState();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4992268(a1, v9, type metadata accessor for WorkoutState);
  v10 = *&v9[*(v6 + 52)];
  if (v10)
  {
    v11 = *(v6 + 36);
    v12 = sub_1B4D1777C();
    (*(*(v12 - 8) + 16))(v5, &v9[v11], v12);
    v13 = v10;
    sub_1B49922D0(v9, type metadata accessor for WorkoutState);
    [v13 coordinate];
    v15 = v14;
    [v13 coordinate];
    v17 = v16;
    [v13 altitude];
    v18 = [objc_opt_self() meters];
    v19 = v2[7];
    sub_1B499221C();
    sub_1B4D1741C();
    *&v5[v2[5]] = v15;
    *&v5[v2[6]] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6AA0, &qword_1B4D1B1D0);
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A6AA8, &qword_1B4D1B1D8) - 8);
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1B4D1A800;
    sub_1B4992268(v5, v23 + v22, type metadata accessor for LocationCoordinate);
    type metadata accessor for FitnessContextQueryDescriptor();
    swift_storeEnumTagMultiPayload();
    v24 = sub_1B4C948D4(v23);
    swift_setDeallocating();
    sub_1B4975024(v23 + v22, qword_1EB8A6AA8, &qword_1B4D1B1D8);
    swift_deallocClassInstance();

    sub_1B49922D0(v5, type metadata accessor for LocationCoordinate);
    return v24;
  }

  else
  {
    sub_1B49922D0(v9, type metadata accessor for WorkoutState);
    return sub_1B4C948D4(MEMORY[0x1E69E7CC0]);
  }
}

unint64_t sub_1B499221C()
{
  result = qword_1EDC3CB80;
  if (!qword_1EDC3CB80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC3CB80);
  }

  return result;
}

uint64_t sub_1B4992268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49922D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4992338()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B4992374(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B49923BC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1B499248C()
{
  result = qword_1EB8A6B38;
  if (!qword_1EB8A6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6B38);
  }

  return result;
}

uint64_t sub_1B49924E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4992584, 0, 0);
}