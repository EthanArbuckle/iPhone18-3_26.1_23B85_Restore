void sub_1B4C5F670(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v8 = *(v159 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v158 = &v143 - v10;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v11 = *(v173 - 8);
  v12 = *(v11 + 8);
  MEMORY[0x1EEE9AC00](v173);
  v172 = &v143 - v13;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v14 = *(v171 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v149 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v148 = &v143 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v155 = &v143 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v170 = &v143 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v154 = &v143 - v24;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v169 = *(v157 - 8);
  v25 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v157);
  v147 = &v143 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v165 = &v143 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v153 = &v143 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v166 = &v143 - v32;
  v33 = type metadata accessor for DistanceSampleIntervalRecord();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v152 = &v143 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v150 = (&v143 - v37);
  MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v39);
  v43 = *(v42 + 72);
  if (!v43)
  {
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v43 == -1)
  {
    goto LABEL_77;
  }

  v44 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v43 == -1)
  {
    goto LABEL_78;
  }

  v45 = (a2 - a1) / v43;
  v177 = a1;
  v176 = a4;
  v174 = v33;
  v156 = v43;
  if (v45 >= v44 / v43)
  {
    v162 = v14;
    v166 = v11;
    v47 = v44 / v43 * v43;
    if (a4 < a2 || a2 + v47 <= a4)
    {
      v48 = v8;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v48 = v8;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v92 = a2;
    v93 = a4 + v47;
    if (v47 >= 1)
    {
      v94 = -v156;
      v163 = (v166 + 8);
      v146 = (v48 + 8);
      ++v162;
      v145 = (v169 + 8);
      v95 = (a4 + v47);
      v96 = v152;
      v97 = v150;
      v167 = a4;
      v168 = a1;
      v164 = -v156;
      do
      {
        v144 = v93;
        v98 = v92 + v94;
        v169 = v92 + v94;
        v153 = v92;
        while (1)
        {
          v166 = a3;
          if (v92 <= a1)
          {
            v177 = v92;
            v175 = v144;
            goto LABEL_75;
          }

          v151 = v93;
          v161 = v95;
          v154 = &v95[v94];
          sub_1B4C63E94(&v95[v94], v97, type metadata accessor for DistanceSampleIntervalRecord);
          sub_1B4C63E94(v98, v96, type metadata accessor for DistanceSampleIntervalRecord);
          v100 = *(v33 + 28);
          v160 = objc_opt_self();
          v101 = [v160 meters];
          v102 = v172;
          v103 = v173;
          sub_1B4D1745C();

          sub_1B4D1742C();
          v105 = v104;
          v106 = *v163;
          (*v163)(v102, v103);
          v156 = v106;
          if (v105 > 0.0)
          {
            v107 = *(v33 + 32);
            v108 = [objc_opt_self() seconds];
            v109 = v158;
            v110 = v159;
            sub_1B4D1745C();

            sub_1B4D1742C();
            (*v146)(v109, v110);
          }

          if (qword_1EDC36E80 != -1)
          {
            swift_once();
          }

          v111 = qword_1EDC36E88;
          type metadata accessor for UnitPace();
          v112 = v111;
          v113 = v148;
          sub_1B4D1741C();
          if (qword_1EDC36E80 != -1)
          {
            swift_once();
          }

          v115 = v170;
          v114 = v171;
          sub_1B4D1745C();
          sub_1B4D1742C();
          v116 = *v162;
          (*v162)(v115, v114);
          v117 = [objc_opt_self() metersPerSecond];
          v155 = sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
          sub_1B4D1741C();
          v116(v113, v114);
          v118 = *(v174 + 28);
          v119 = [v160 meters];
          v120 = v152;
          v121 = v172;
          v122 = v173;
          sub_1B4D1745C();

          sub_1B4D1742C();
          v124 = v123;
          (v156)(v121, v122);
          if (v124 > 0.0)
          {
            v125 = *(v174 + 32);
            v126 = [objc_opt_self() seconds];
            v127 = v158;
            v128 = v159;
            sub_1B4D1745C();

            sub_1B4D1742C();
            (*v146)(v127, v128);
          }

          v129 = v112;
          v130 = v149;
          sub_1B4D1741C();
          v132 = v170;
          v131 = v171;
          sub_1B4D1745C();
          sub_1B4D1742C();
          v116(v132, v131);
          v133 = [objc_opt_self() metersPerSecond];
          v134 = v147;
          sub_1B4D1741C();
          v135 = v166;
          a3 = &v166[v164];
          v116(v130, v131);
          sub_1B4B9474C(&qword_1EB8AD210, &qword_1EB8A71C0, &unk_1B4D40CF0);
          v136 = v165;
          v137 = v157;
          v138 = sub_1B4D180EC();
          v139 = *v145;
          (*v145)(v134, v137);
          v139(v136, v137);
          sub_1B4C63EFC(v120, type metadata accessor for DistanceSampleIntervalRecord);
          v97 = v150;
          sub_1B4C63EFC(v150, type metadata accessor for DistanceSampleIntervalRecord);
          v96 = v120;
          if (v138)
          {
            break;
          }

          v140 = v154;
          v93 = v154;
          v49 = v135 >= v161;
          a1 = v168;
          v98 = v169;
          v141 = v167;
          v33 = v174;
          if (v49 && a3 < v161)
          {
            if (v166 != v161)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          else
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          v95 = v93;
          v99 = v140 > v141;
          v94 = v164;
          v92 = v153;
          if (!v99)
          {
            goto LABEL_73;
          }
        }

        v49 = v135 >= v153;
        a1 = v168;
        v142 = v167;
        v33 = v174;
        if (v49 && a3 < v153)
        {
          v92 = v169;
          v93 = v151;
          if (v166 != v153)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v92 = v169;
          swift_arrayInitWithTakeFrontToBack();
          v93 = v151;
        }

        v95 = v161;
        v94 = v164;
      }

      while (v161 > v142);
    }

LABEL_73:
    v177 = v92;
    v175 = v93;
  }

  else
  {
    v46 = v45 * v43;
    v164 = &v143 - v40;
    v165 = v41;
    if (a4 < a1 || a1 + v46 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v152 = (a4 + v46);
    v175 = a4 + v46;
    v49 = v46 < 1 || a2 >= a3;
    if (!v49)
    {
      v163 = (v11 + 8);
      v150 = (v8 + 8);
      v162 = (v14 + 8);
      v149 = (v169 + 8);
      v151 = a3;
      do
      {
        v168 = a1;
        sub_1B4C63E94(a2, v164, type metadata accessor for DistanceSampleIntervalRecord);
        sub_1B4C63E94(a4, v165, type metadata accessor for DistanceSampleIntervalRecord);
        v50 = *(v33 + 28);
        v51 = objc_opt_self();
        v52 = [v51 meters];
        v54 = v172;
        v53 = v173;
        sub_1B4D1745C();

        sub_1B4D1742C();
        v56 = v55;
        v161 = *v163;
        (v161)(v54, v53);
        v169 = a2;
        if (v56 > 0.0)
        {
          v57 = *(v33 + 32);
          v58 = [objc_opt_self() seconds];
          v59 = v158;
          v60 = v159;
          sub_1B4D1745C();

          sub_1B4D1742C();
          (*v150)(v59, v60);
        }

        v61 = v154;
        if (qword_1EDC36E80 != -1)
        {
          swift_once();
        }

        v167 = a4;
        v62 = qword_1EDC36E88;
        type metadata accessor for UnitPace();
        v63 = v62;
        sub_1B4D1741C();
        if (qword_1EDC36E80 != -1)
        {
          swift_once();
        }

        v65 = v170;
        v64 = v171;
        sub_1B4D1745C();
        sub_1B4D1742C();
        v66 = *v162;
        (*v162)(v65, v64);
        v67 = [objc_opt_self() metersPerSecond];
        v160 = sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
        sub_1B4D1741C();
        v66(v61, v64);
        v68 = *(v174 + 28);
        v69 = [v51 meters];
        v70 = v165;
        v71 = v172;
        v72 = v173;
        sub_1B4D1745C();

        sub_1B4D1742C();
        v74 = v73;
        (v161)(v71, v72);
        if (v74 > 0.0)
        {
          v75 = *(v174 + 32);
          v76 = [objc_opt_self() seconds];
          v77 = v158;
          v78 = v159;
          sub_1B4D1745C();

          sub_1B4D1742C();
          (*v150)(v77, v78);
        }

        v79 = v63;
        v80 = v155;
        sub_1B4D1741C();
        v82 = v170;
        v81 = v171;
        sub_1B4D1745C();
        sub_1B4D1742C();
        v66(v82, v81);
        v83 = [objc_opt_self() metersPerSecond];
        v84 = v153;
        sub_1B4D1741C();
        v66(v80, v81);
        sub_1B4B9474C(&qword_1EB8AD210, &qword_1EB8A71C0, &unk_1B4D40CF0);
        v85 = v166;
        v86 = v157;
        v87 = sub_1B4D180EC();
        v88 = *v149;
        (*v149)(v84, v86);
        v88(v85, v86);
        sub_1B4C63EFC(v70, type metadata accessor for DistanceSampleIntervalRecord);
        sub_1B4C63EFC(v164, type metadata accessor for DistanceSampleIntervalRecord);
        v89 = v168;
        if (v87)
        {
          v90 = v156;
          a2 = v169 + v156;
          a4 = v167;
          v33 = v174;
          v91 = v151;
          if (v168 < v169 || v168 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v168 != v169)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v90 = v156;
          a4 = v167 + v156;
          a2 = v169;
          v33 = v174;
          v91 = v151;
          if (v168 < v167 || v168 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v168 != v167)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v176 = a4;
        }

        a1 = v89 + v90;
        v177 = a1;
      }

      while (a4 < v152 && a2 < v91);
    }
  }

LABEL_75:
  sub_1B4CDE024(&v177, &v176, &v175);
}

void sub_1B4C60920(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = type metadata accessor for DistanceSampleIntervalRecord();
  v8 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v42 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v55 = a1;
  v54 = a4;
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

    v29 = a4 + v17;
    if (v17 >= 1)
    {
      v45 = a4;
      v30 = -v13;
      v31 = a4 + v17;
      v51 = a1;
      v46 = -v13;
      do
      {
        v43 = v29;
        v32 = a2;
        v33 = a2 + v30;
        v47 = a2;
        v48 = a2 + v30;
        while (1)
        {
          if (v32 <= a1)
          {
            v55 = v32;
            v53 = v43;
            goto LABEL_59;
          }

          v35 = a3;
          v44 = v29;
          a3 += v30;
          v36 = v31 + v30;
          v37 = v49;
          sub_1B4C63E94(v36, v49, type metadata accessor for DistanceSampleIntervalRecord);
          v38 = v50;
          sub_1B4C63E94(v33, v50, type metadata accessor for DistanceSampleIntervalRecord);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
          v39 = *(v52 + 32);
          sub_1B4B9474C(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
          v40 = sub_1B4D180FC();
          sub_1B4C63EFC(v38, type metadata accessor for DistanceSampleIntervalRecord);
          sub_1B4C63EFC(v37, type metadata accessor for DistanceSampleIntervalRecord);
          if (v40)
          {
            break;
          }

          v29 = v36;
          if (v35 < v31 || a3 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            v33 = v48;
          }

          else
          {
            v33 = v48;
            if (v35 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v36;
          v34 = v36 > v45;
          a1 = v51;
          v30 = v46;
          v32 = v47;
          if (!v34)
          {
            a2 = v47;
            goto LABEL_58;
          }
        }

        if (v35 < v47 || a3 >= v47)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v44;
          v30 = v46;
        }

        else
        {
          v41 = v35 == v47;
          a2 = v48;
          v29 = v44;
          v30 = v46;
          if (!v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v51;
      }

      while (v31 > v45);
    }

LABEL_58:
    v55 = a2;
    v53 = v29;
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

    v48 = a4 + v16;
    v53 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v46 = v13;
      v47 = a3;
      v19 = v50;
      do
      {
        v51 = a1;
        v20 = v49;
        sub_1B4C63E94(a2, v49, type metadata accessor for DistanceSampleIntervalRecord);
        v21 = a2;
        sub_1B4C63E94(a4, v19, type metadata accessor for DistanceSampleIntervalRecord);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
        v22 = a4;
        v23 = *(v52 + 32);
        sub_1B4B9474C(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
        v24 = sub_1B4D180FC();
        sub_1B4C63EFC(v19, type metadata accessor for DistanceSampleIntervalRecord);
        sub_1B4C63EFC(v20, type metadata accessor for DistanceSampleIntervalRecord);
        if (v24)
        {
          v25 = v46;
          v26 = v51;
          a4 = v22;
          if (v51 < v21 || v51 >= v21 + v46)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v21 + v25;
            v27 = v47;
          }

          else
          {
            v27 = v47;
            if (v51 != v21)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v21 + v25;
          }
        }

        else
        {
          v25 = v46;
          a4 = v22 + v46;
          v26 = v51;
          v28 = v22;
          if (v51 < v22 || v51 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v47;
            a2 = v21;
          }

          else
          {
            v27 = v47;
            a2 = v21;
            if (v51 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v54 = a4;
        }

        a1 = v26 + v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v27);
    }
  }

LABEL_59:
  sub_1B4CDE024(&v55, &v54, &v53);
}

void *_s19FitnessIntelligence14WorkoutInsightV12bestDuration3for7samples12smoothFactor5limitSDyAA17DistanceReferenceOSayAA0L20SampleIntervalRecordVGGSayAJG_SaySo010HKQuantityN0CGS2itFZ_0(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v307 = a4;
  v381 = a1;
  v6 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v297 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v367 = &v297 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v297 - v15;
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v17 = *(v366 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v366);
  v357 = &v297 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v355 = &v297 - v21;
  v371 = type metadata accessor for DistanceSampleIntervalRecord();
  v314 = *(v371 - 8);
  v22 = *(v314 + 64);
  MEMORY[0x1EEE9AC00](v371);
  v337 = &v297 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v369 = &v297 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v311 = &v297 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v335 = &v297 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v360 = &v297 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v309 = &v297 - v33;
  v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v378 = *(v368 - 8);
  v34 = *(v378 + 64);
  MEMORY[0x1EEE9AC00](v368);
  v310 = &v297 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v356 = &v297 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v308 = &v297 - v39;
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v375 = *(v382 - 8);
  v40 = *(v375 + 64);
  MEMORY[0x1EEE9AC00](v382);
  v319 = &v297 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v316 = &v297 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v326 = &v297 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v317 = &v297 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v327 = &v297 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v345 = &v297 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v338 = &v297 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v56 = (&v297 - v55);
  MEMORY[0x1EEE9AC00](v57);
  v372 = &v297 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v377 = &v297 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v332 = &v297 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v331 = &v297 - v64;
  v341 = sub_1B4D1777C();
  v373 = *(v341 - 8);
  v65 = *(v373 + 64);
  MEMORY[0x1EEE9AC00](v341);
  v313 = &v297 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v312 = &v297 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v346 = &v297 - v70;
  v352 = type metadata accessor for WorkoutInsight.DistanceAccumulator();
  v344 = *(v352 - 1);
  v71 = *(v344 + 64);
  MEMORY[0x1EEE9AC00](v352);
  v298 = &v297 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73);
  v362 = &v297 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v351 = &v297 - v76;
  v78.n128_f64[0] = MEMORY[0x1EEE9AC00](v77);
  v80 = &v297 - v79;
  v302 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_175;
  }

  if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_176:
    v296 = MEMORY[0x1E69E7CC0];

    return sub_1B4C98728(v296);
  }

LABEL_3:
  v376 = a2 & 0xC000000000000001;
  v379 = v56;
  v321 = v6;
  v354 = v11;
  v370 = a3;
  v363 = v17;
  if ((a2 & 0xC000000000000001) != 0)
  {
    a3 = a2;
    v342 = MEMORY[0x1B8C7CD90](0, a2, v78);
    v82 = v381;
  }

  else
  {
    v81 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v82 = v381;
    if (!v81)
    {
      __break(1u);
LABEL_181:

      __break(1u);
LABEL_182:

      __break(1u);
      goto LABEL_183;
    }

    a3 = a2;
    v342 = *(a2 + 32);
  }

  v83 = *(v82 + 2);
  v6 = MEMORY[0x1E69E7CC0];
  v17 = 0x1E7C11000;
  v374 = a3;
  v365 = v7;
  v353 = v16;
  if (v83)
  {
    v364 = v8;
    v384 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF55C(0, v83, 0);
    v84 = v384;
    v380 = objc_opt_self();
    v85 = (v82 + 32);
    do
    {
      v86 = *v85;
      v381 = (v85 + 1);
      v87 = v342;
      v88 = v380;
      v89 = [v380 meters];
      v90 = v352[9];
      sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
      v91 = v352;
      sub_1B4D1741C();
      v92 = [v88 meters];
      v93 = &v80[v91[10]];
      sub_1B4D1741C();
      *v80 = v86;
      *(v80 + 1) = 0;
      *(v80 + 2) = v87;
      *(v80 + 3) = -1;
      *(v80 + 4) = v87;
      *&v80[v91[11]] = MEMORY[0x1E69E7CC0];
      v384 = v84;
      v7 = v84[2];
      v94 = v84[3];
      v16 = v7 + 1;
      if (v7 >= v94 >> 1)
      {
        sub_1B4BCF55C(v94 > 1, v7 + 1, 1);
        v84 = v384;
      }

      v84[2] = v16;
      sub_1B4C63F5C(v80, v84 + ((*(v344 + 80) + 32) & ~*(v344 + 80)) + *(v344 + 72) * v7, type metadata accessor for WorkoutInsight.DistanceAccumulator);
      --v83;
      v85 = v381;
    }

    while (v83);
    a3 = v374;
    v56 = v84;
    v6 = MEMORY[0x1E69E7CC0];
    v17 = 0x1E7C11000;
    v8 = v364;
  }

  else
  {
    v56 = MEMORY[0x1E69E7CC0];
  }

  a2 = 0;
  if (v370 <= 1)
  {
    v95 = 1;
  }

  else
  {
    v95 = v370;
  }

  v96 = a3 & 0xFFFFFFFFFFFFFF8;
  v370 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 < 0)
  {
    v96 = a3;
  }

  v299 = v96;
  v339 = (v373 + 8);
  v315 = a3 + 32;
  v328 = (v375 + 16);
  v380 = (v375 + 8);
  v375 += 32;
  v306 = (v378 + 16);
  v361 = (v378 + 8);
  v364 = v8 + 1;
  ++v363;
  v305 = xmmword_1B4D1A800;
  v97 = -v95;
  v11 = v382;
  v80 = v346;
  v300 = v95;
  while (1)
  {
    v99 = __OFADD__(v97, v95);
    v100 = v97 + v95;
    if (v99)
    {
      goto LABEL_170;
    }

    v303 = v100;
    v7 = v56[2];
    if (v7)
    {
      break;
    }

    v56 = v6;
LABEL_139:
    if (v302)
    {
      v98 = sub_1B4D18ABC();
    }

    else
    {
      v98 = *(v370 + 16);
    }

    v95 = v300;
    v97 = v303;
    a2 += v300;
    if (v303 >= v98)
    {
      goto LABEL_143;
    }
  }

  v301 = a2;
  v384 = v6;
  sub_1B4BCF55C(0, v7, 0);
  v16 = v384;
  if (v302)
  {
    v101 = sub_1B4D18ABC();
  }

  else
  {
    v101 = *(v370 + 16);
  }

  a2 = v362;
  v102 = v101 - 1;
  if (__OFSUB__(v101, 1))
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v6 = 0;
  v333 = (*(v344 + 80) + 32) & ~*(v344 + 80);
  v334 = v56 + v333;
  v103 = v303;
  if (v102 < v303)
  {
    v103 = v101 - 1;
  }

  v347 = v103;
  if (v301 < v102)
  {
    v102 = v301;
  }

  v373 = 1 - v102;
  v322 = v56;
  v320 = v7;
  while (1)
  {
    if (v6 == v7)
    {
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
      goto LABEL_173;
    }

    if (v6 >= v56[2])
    {
      goto LABEL_164;
    }

    v104 = *(v344 + 72);
    v350 = v6;
    v349 = v104;
    v105 = sub_1B4C63E94(&v334[v104 * v6], a2, type metadata accessor for WorkoutInsight.DistanceAccumulator);
    v348 = MEMORY[0x1B8C7D560](v105);
    v106 = [v342 startDate];
    sub_1B4D1775C();

    a2 = v362;
    v6 = *(v362 + 3);
    if (v6 < v347)
    {
      break;
    }

    (*v339)(v80, v341);
    sub_1B4C63E94(a2, v351, type metadata accessor for WorkoutInsight.DistanceAccumulator);
LABEL_133:
    objc_autoreleasePoolPop(v348);
    sub_1B4C63EFC(a2, type metadata accessor for WorkoutInsight.DistanceAccumulator);
    v384 = v16;
    v286 = *(v16 + 16);
    v285 = *(v16 + 24);
    if (v286 >= v285 >> 1)
    {
      sub_1B4BCF55C(v285 > 1, v286 + 1, 1);
      a2 = v362;
      v16 = v384;
    }

    v287 = v350 + 1;
    *(v16 + 16) = v286 + 1;
    v288 = v16 + v333 + v286 * v349;
    v6 = v287;
    sub_1B4C63F5C(v351, v288, type metadata accessor for WorkoutInsight.DistanceAccumulator);
    v80 = v346;
    if (v6 == v7)
    {

      v56 = v16;
      v6 = MEMORY[0x1E69E7CC0];
      a2 = v301;
      goto LABEL_139;
    }
  }

  v330 = v16;
  if (v376)
  {
    v107 = MEMORY[0x1B8C7CD90]();
  }

  else
  {
    if (v347 < 0)
    {
      goto LABEL_166;
    }

    if (v347 >= *(v370 + 16))
    {
      goto LABEL_167;
    }

    v107 = *(v315 + 8 * v347);
  }

  v336 = v107;
  v56 = objc_opt_self();
  v108 = [v56 *(v17 + 3680)];
  v109 = sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v110 = v332;
  v378 = v109;
  sub_1B4D1741C();
  v359 = *v328;
  (v359)(v377, v110, v11);
  v80 = objc_opt_self();
  v111 = v6 + 5;
  v112 = v374;
  v381 = v56;
  while (1)
  {
    v113 = v111 - 4;
    if (v376)
    {
      v114 = MEMORY[0x1B8C7CD90](v111 - 4, v112);
    }

    else
    {
      if ((v113 & 0x8000000000000000) != 0)
      {
        goto LABEL_141;
      }

      if (v113 >= *(v370 + 16))
      {
        goto LABEL_142;
      }

      v114 = *(v112 + 8 * v111);
    }

    v115 = v114;
    a3 = v373 + v111;
    v116 = [v114 quantity];
    v117 = [v80 meterUnit];
    [v116 doubleValueForUnit_];

    v118 = [v56 *(v17 + 3680)];
    v119 = v379;
    sub_1B4D1741C();
    v120 = v372;
    v121 = v377;
    sub_1B4D1743C();

    v6 = *v380;
    v122 = v382;
    (*v380)(v119, v382);
    (v6)(v121, v122);
    v56 = *v375;
    (*v375)(v121, v120, v122);
    if (a3 == 5)
    {
      break;
    }

    ++v111;
    v112 = v374;
    v17 = 0x1E7C11000;
    v56 = v381;
    if (__OFADD__(v113, 1))
    {
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      v11 = v56[2];
      if (!v11)
      {
        goto LABEL_157;
      }

      v7 = 0;
      v16 = v352[11];
      v8 = v56;
      v56 = (v56 + ((*(v344 + 80) + 32) & ~*(v344 + 80)));
      v6 = MEMORY[0x1E69E7CC0];
      a2 = v298;
      while (v7 < v8[2])
      {
        sub_1B4C63E94(v56 + *(v344 + 72) * v7, a2, type metadata accessor for WorkoutInsight.DistanceAccumulator);
        if (*(*(a2 + v16) + 16))
        {
          a3 = *a2;
          v384 = *(a2 + v16);

          v289 = v321;
          sub_1B4C5C220(&v384, sub_1B4C5D468, sub_1B4C5C7A0);
          v290 = &v353;
          v321 = v289;
          if (v289)
          {
            goto LABEL_182;
          }

          v80 = v384;
          sub_1B4C63EFC(a2, type metadata accessor for WorkoutInsight.DistanceAccumulator);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1B4A1E330(0, *(v6 + 16) + 1, 1, v6);
          }

          v17 = *(v6 + 16);
          v291 = *(v6 + 24);
          if (v17 >= v291 >> 1)
          {
            v6 = sub_1B4A1E330((v291 > 1), v17 + 1, 1, v6);
          }

          *(v6 + 16) = v17 + 1;
          v292 = v6 + 16 * v17;
          *(v292 + 32) = a3;
          *(v292 + 40) = v80;
          a2 = v298;
        }

        else
        {
          sub_1B4C63EFC(a2, type metadata accessor for WorkoutInsight.DistanceAccumulator);
        }

        if (v11 == ++v7)
        {
          goto LABEL_158;
        }
      }

LABEL_174:
      __break(1u);
LABEL_175:
      if (!sub_1B4D18ABC())
      {
        goto LABEL_176;
      }

      goto LABEL_3;
    }
  }

  v17 = v380;
  (v6)(v332, v122);
  (v56)(v331, v377, v122);
  v123 = v352;
  v124 = v362;
  v125 = &v362[v352[10]];
  sub_1B4D1743C();
  v7 = v123[9];
  sub_1B4D1743C();
  LOBYTE(v383) = *v124;
  v16 = v327;
  DistanceReference.rawValue.getter();
  v126 = [v381 meters];
  v8 = v379;
  sub_1B4D1745C();

  v11 = v382;
  (v6)(v16, v382);
  a3 = sub_1B4B9474C(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40);
  v127 = sub_1B4D1810C();
  (v6)(v8, v11);
  v329 = v56;
  if (v127)
  {
    if (v376)
    {
      v128 = MEMORY[0x1B8C7CD90](v347, v374);
    }

    else
    {
      v128 = *(v315 + 8 * v347);
    }

    v325 = v128;
    a2 = [*(v362 + 2) quantity];
    v193 = [v80 meterUnit];
    [a2 doubleValueForUnit_];

    v194 = [v381 meters];
    v80 = v317;
    v11 = v378;
    sub_1B4D1741C();
    v195 = *(v362 + 1);
    v196 = v195 + 1;
    if (__OFADD__(v195, 1))
    {
      goto LABEL_165;
    }

    v358 = a3;
    v318 = v195 + 1;
    if (v376)
    {
      v324 = MEMORY[0x1B8C7CD90]();
    }

    else
    {
      a3 = v326;
      a2 = v345;
      if ((v196 & 0x8000000000000000) != 0)
      {
        goto LABEL_168;
      }

      if (v196 >= *(v370 + 16))
      {
        goto LABEL_169;
      }

      v324 = *(v315 + 8 * v196);
    }

    sub_1B4D1744C();
    LOBYTE(v383) = *v362;
    v197 = v327;
    DistanceReference.rawValue.getter();
    v198 = v381;
    v199 = v80;
    v200 = [v381 meters];
    v17 = v379;
    v201 = v382;
    sub_1B4D1745C();

    v202 = v197;
    v11 = v201;
    v8 = v380;
    (v6)(v202, v201);
    v203 = sub_1B4D1810C();
    (v6)(v17, v201);
    if (v203)
    {
      LOBYTE(v383) = *v362;
      DistanceReference.rawValue.getter();
      v204 = [v198 meters];
      sub_1B4D1745C();

      (v6)(v17, v201);
      v205 = [v325 endDate];
      v206 = v312;
      sub_1B4D1775C();

      v207 = [v324 startDate];
      v208 = v313;
      sub_1B4D1775C();

      sub_1B4D176FC();
      v209 = *v339;
      v8 = v341;
      (*v339)(v208, v341);
      v209(v206, v8);
      sub_1B4D1742C();
      v210 = [v381 meters];
      sub_1B4D1745C();

      sub_1B4D1742C();
      (v6)(v17, v11);
      v340 = objc_opt_self();
      v211 = [v340 seconds];
      sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
      v212 = v308;
      sub_1B4D1741C();
      v213 = [v324 startDate];
      sub_1B4D1775C();

      a3 = v346;
      sub_1B4D176FC();
      v215 = v214;
      v209(v206, v8);
      v216 = [v325 endDate];
      sub_1B4D1775C();

      sub_1B4D176FC();
      v218 = v217;
      v304 = v209;
      v209(v206, v8);
      v219 = v371;
      v220 = v11;
      v221 = v309;
      v222 = &v309[*(v371 + 24)];
      sub_1B4D1744C();
      (v359)(&v221[*(v219 + 28)], v316, v220);
      (*v306)(&v221[*(v219 + 32)], v212, v368);
      *v221 = v215;
      *(v221 + 1) = v218;
      v223 = *&v362[v352[11]];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C80, &qword_1B4D47070);
      v224 = (*(v314 + 80) + 32) & ~*(v314 + 80);
      v378 = *(v314 + 72);
      v225 = swift_allocObject();
      *(v225 + 16) = v305;
      sub_1B4C63E94(v221, v225 + v224, type metadata accessor for DistanceSampleIntervalRecord);
      v383 = v223;

      sub_1B4997A74(v225);
      v226 = v383;
      v227 = v360;
      v359 = *(v383 + 16);
      if (v359)
      {
        v228 = 0;
        v323 = v224;
        v229 = (v383 + v224);
        v343 = MEMORY[0x1E69E7CC0];
        v230 = v371;
        v17 = 0x1E7C11000;
        v358 = v383;
        while (1)
        {
          if (v228 >= v226[2])
          {
            goto LABEL_156;
          }

          sub_1B4C63E94(v229, v227, type metadata accessor for DistanceSampleIntervalRecord);
          v231 = v230;
          v232 = *(v230 + 28);
          v233 = [v381 *(v17 + 3680)];
          v234 = v379;
          v235 = v382;
          sub_1B4D1745C();

          sub_1B4D1742C();
          v237 = v236;
          (v6)(v234, v235);
          if (v237 <= 0.0)
          {
            break;
          }

          v238 = *(v231 + 32);
          v239 = [v340 seconds];
          v240 = v356;
          v241 = v368;
          sub_1B4D1745C();

          sub_1B4D1742C();
          (*v361)(v240, v241);
          if (qword_1EDC36E80 != -1)
          {
            goto LABEL_91;
          }

LABEL_93:
          v242 = qword_1EDC36E88;
          type metadata accessor for UnitPace();
          v243 = v242;
          v244 = v353;
          sub_1B4D1741C();
          v17 = &property descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.hourOfDay;
          if (qword_1EDC36E80 != -1)
          {
            swift_once();
          }

          v245 = v367;
          v8 = v365;
          sub_1B4D1745C();
          sub_1B4D1742C();
          v246 = *v364;
          (*v364)(v245, v8);
          v247 = [objc_opt_self() metersPerSecond];
          sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
          a3 = v355;
          sub_1B4D1741C();
          v246(v244, v8);
          v248 = v366;
          sub_1B4D1742C();
          v250 = v249;
          (*v363)(a3, v248);
          v227 = v360;
          if (v250 >= 14.0 || (v251 = &v360[*(v371 + 32)], sub_1B4D1742C(), v252 <= 0.0))
          {
            sub_1B4C63EFC(v227, type metadata accessor for DistanceSampleIntervalRecord);
            v230 = v371;
          }

          else
          {
            sub_1B4C63F5C(v227, v335, type metadata accessor for DistanceSampleIntervalRecord);
            v253 = v343;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v383 = v253;
            if (isUniquelyReferenced_nonNull_native)
            {
              v230 = v371;
              v255 = v253;
            }

            else
            {
              sub_1B4BCF57C(0, v253[2] + 1, 1);
              v255 = v383;
              v230 = v371;
            }

            v257 = v255[2];
            v256 = v255[3];
            if (v257 >= v256 >> 1)
            {
              sub_1B4BCF57C(v256 > 1, v257 + 1, 1);
              v230 = v371;
              v255 = v383;
            }

            v255[2] = v257 + 1;
            v343 = v255;
            sub_1B4C63F5C(v335, v323 + v255 + v257 * v378, type metadata accessor for DistanceSampleIntervalRecord);
          }

          v226 = v358;
          ++v228;
          v229 += v378;
          if (v359 == v228)
          {
            goto LABEL_118;
          }
        }

        if (qword_1EDC36E80 == -1)
        {
          goto LABEL_93;
        }

LABEL_91:
        swift_once();
        goto LABEL_93;
      }

      v343 = MEMORY[0x1E69E7CC0];
LABEL_118:

      v383 = v343;

      v274 = v321;
      sub_1B4C5C220(&v383, sub_1B4C5ECB8, sub_1B4C5D1D4);
      v81 = &v353;
      v321 = v274;
      if (v274)
      {
        goto LABEL_181;
      }

      a2 = sub_1B4C5B7F8(v307, v383);
      v80 = v275;
      v11 = v276;
      v7 = v277;
      if ((v277 & 1) == 0)
      {
        swift_unknownObjectRetain();
        goto LABEL_121;
      }

      v56 = sub_1B4D18DDC();
      swift_unknownObjectRetain_n();
      v279 = swift_dynamicCastClass();
      if (!v279)
      {
        swift_unknownObjectRelease();
        v279 = MEMORY[0x1E69E7CC0];
      }

      v16 = *(v279 + 16);

      if (__OFSUB__(v7 >> 1, v11))
      {
        goto LABEL_172;
      }

      if (v16 == (v7 >> 1) - v11)
      {
        v280 = swift_dynamicCastClass();
        if (v280)
        {
          v260 = v280;
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease_n();
          v260 = MEMORY[0x1E69E7CC0];
        }

        v11 = v382;
        v56 = v322;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
LABEL_121:
        v56 = v322;
        sub_1B4C5C4C0(a2, v80, v11, v7, &qword_1EB8A7C80, &qword_1B4D47070, type metadata accessor for DistanceSampleIntervalRecord);
        v260 = v278;
        swift_unknownObjectRelease_n();

        v11 = v382;
      }

      sub_1B4C63EFC(v309, type metadata accessor for DistanceSampleIntervalRecord);
      (*v361)(v308, v368);
      (v6)(v316, v11);
      (v6)(v317, v11);
      (v6)(v345, v11);
      (v6)(v331, v11);
      v304(v346, v341);
      v258 = v352;
      v259 = v362;
    }

    else
    {

      (v6)(v199, v201);
      (v6)(v345, v201);
      (v6)(v331, v201);
      (*v339)(v346, v341);
      v258 = v352;
      v259 = v362;
      v260 = *&v362[v352[11]];

      v56 = v322;
    }

    v281 = *v259;
    v282 = v351;
    a3 = v329;
    (v329)(v351 + v258[10], v338, v11);
    *v282 = v281;
    v283 = v324;
    *(v282 + 8) = v318;
    *(v282 + 16) = v283;
    v284 = v325;
    *(v282 + 24) = v347;
    *(v282 + 32) = v284;
    (a3)(v282 + v258[9], v326, v11);
    *(v282 + v258[11]) = v260;
    a2 = v259;
LABEL_132:
    v17 = &property descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.hourOfDay;
    v7 = v320;
    v16 = v330;
    goto LABEL_133;
  }

  v129 = *(v362 + 2);
  LOBYTE(v383) = *v362;
  DistanceReference.rawValue.getter();
  v130 = v381;
  v131 = [v381 meters];
  sub_1B4D1745C();

  (v6)(v16, v11);
  v132 = sub_1B4D1810C();
  (v6)(v8, v11);
  v133 = v341;
  v324 = v129;
  if ((v132 & 1) == 0)
  {
    (v6)(v331, v11);
    (*v339)(v346, v133);
    v190 = v352;
    v191 = v362;
    v192 = *&v362[v352[11]];

    v56 = v322;
LABEL_116:
    v267 = *v191;
    v268 = *(v362 + 1);
    v269 = v351;
    a3 = v375;
    v270 = v329;
    (v329)(v351 + v190[9], v345, v11);
    (v270)(v269 + v190[10], v338, v11);
    *v269 = v267;
    *(v269 + 8) = v268;
    a2 = v362;
    v271 = v324;
    v272 = v347;
    *(v269 + 16) = v324;
    *(v269 + 24) = v272;
    *(v269 + 32) = v336;
    *(v269 + v190[11]) = v192;
    v273 = v271;
    goto LABEL_132;
  }

  LOBYTE(v383) = *v362;
  DistanceReference.rawValue.getter();
  v134 = [v130 meters];
  sub_1B4D1745C();

  (v6)(v8, v11);
  v135 = [v336 endDate];
  v136 = v133;
  v137 = v312;
  sub_1B4D1775C();

  v138 = [v129 startDate];
  v139 = v313;
  sub_1B4D1775C();

  sub_1B4D176FC();
  v140 = *v339;
  (*v339)(v139, v136);
  v140(v137, v136);
  sub_1B4D1742C();
  v17 = v140;
  v141 = [v381 meters];
  sub_1B4D1745C();

  sub_1B4D1742C();
  (v6)(v8, v11);
  v340 = objc_opt_self();
  v142 = [v340 seconds];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  v143 = v310;
  sub_1B4D1741C();
  v144 = [v129 startDate];
  sub_1B4D1775C();

  a3 = v346;
  sub_1B4D176FC();
  v146 = v145;
  v147 = v341;
  (v17)(v137, v341);
  v148 = [v336 endDate];
  sub_1B4D1775C();

  sub_1B4D176FC();
  v150 = v149;
  v323 = v17;
  (v17)(v137, v147);
  v151 = v371;
  v152 = v11;
  v153 = v311;
  v154 = &v311[*(v371 + 24)];
  sub_1B4D1744C();
  (v359)(&v153[*(v151 + 28)], v319, v152);
  (*v306)(&v153[*(v151 + 32)], v143, v368);
  *v153 = v146;
  *(v153 + 1) = v150;
  v155 = *&v362[v352[11]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7C80, &qword_1B4D47070);
  v156 = ((*(v314 + 80) + 32) & ~*(v314 + 80));
  v378 = *(v314 + 72);
  v157 = swift_allocObject();
  *(v157 + 16) = v305;
  sub_1B4C63E94(v153, &v156[v157], type metadata accessor for DistanceSampleIntervalRecord);
  v383 = v155;

  sub_1B4997A74(v157);
  v158 = v383;
  v359 = *(v383 + 16);
  if (!v359)
  {
    v343 = MEMORY[0x1E69E7CC0];
LABEL_105:

    v383 = v343;

    v261 = v321;
    sub_1B4C5C220(&v383, sub_1B4C5ECB8, sub_1B4C5D1D4);
    v81 = &v353;
    v321 = v261;
    if (v261)
    {
      goto LABEL_181;
    }

    a2 = sub_1B4C5B7F8(v307, v383);
    v56 = v322;
    if (v264)
    {
      v16 = v264;
      v7 = v263;
      v11 = v262;
      v80 = sub_1B4D18DDC();
      swift_unknownObjectRetain_n();
      v266 = swift_dynamicCastClass();
      if (!v266)
      {
        swift_unknownObjectRelease();
        v266 = MEMORY[0x1E69E7CC0];
      }

      v56 = *(v266 + 16);

      if (__OFSUB__(v16 >> 1, v7))
      {
        goto LABEL_171;
      }

      if (v56 == ((v16 >> 1) - v7))
      {
        v192 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v11 = v382;
        v56 = v322;
        if (v192)
        {
LABEL_115:
          sub_1B4C63EFC(v311, type metadata accessor for DistanceSampleIntervalRecord);
          (*v361)(v310, v368);
          (v6)(v319, v11);
          (v6)(v331, v11);
          v323(v346, v341);
          v190 = v352;
          v191 = v362;
          goto LABEL_116;
        }

        v192 = MEMORY[0x1E69E7CC0];
LABEL_114:
        swift_unknownObjectRelease();
        goto LABEL_115;
      }

      swift_unknownObjectRelease();
      v264 = v16;
      v263 = v7;
      v262 = v11;
      v56 = v322;
    }

    sub_1B4C5C4C0(a2, v262, v263, v264, &qword_1EB8A7C80, &qword_1B4D47070, type metadata accessor for DistanceSampleIntervalRecord);
    v192 = v265;
    v11 = v382;
    goto LABEL_114;
  }

  v159 = 0;
  v325 = v156;
  v160 = &v156[v383];
  v343 = MEMORY[0x1E69E7CC0];
  v161 = v371;
  v8 = &property descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.hourOfDay;
  v358 = v383;
  while (v159 < v158[2])
  {
    sub_1B4C63E94(v160, v369, type metadata accessor for DistanceSampleIntervalRecord);
    v162 = v161;
    v163 = *(v161 + 28);
    v164 = [v381 v8[460]];
    v165 = v379;
    v166 = v382;
    sub_1B4D1745C();

    sub_1B4D1742C();
    v168 = v167;
    (v6)(v165, v166);
    if (v168 <= 0.0)
    {
      if (qword_1EDC36E80 == -1)
      {
        goto LABEL_65;
      }

LABEL_63:
      swift_once();
      goto LABEL_65;
    }

    v169 = *(v162 + 32);
    v170 = [v340 seconds];
    v171 = v356;
    v172 = v368;
    sub_1B4D1745C();

    sub_1B4D1742C();
    (*v361)(v171, v172);
    if (qword_1EDC36E80 != -1)
    {
      goto LABEL_63;
    }

LABEL_65:
    v173 = qword_1EDC36E88;
    type metadata accessor for UnitPace();
    v174 = v173;
    a3 = v354;
    sub_1B4D1741C();
    v8 = &property descriptor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.hourOfDay;
    if (qword_1EDC36E80 != -1)
    {
      swift_once();
    }

    v175 = v367;
    v17 = v365;
    sub_1B4D1745C();
    sub_1B4D1742C();
    v176 = *v364;
    (*v364)(v175, v17);
    v177 = [objc_opt_self() metersPerSecond];
    sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
    v178 = v357;
    sub_1B4D1741C();
    v176(a3, v17);
    v179 = v366;
    sub_1B4D1742C();
    v181 = v180;
    (*v363)(v178, v179);
    if (v181 >= 14.0 || (v182 = v369 + *(v371 + 32), sub_1B4D1742C(), v183 <= 0.0))
    {
      sub_1B4C63EFC(v369, type metadata accessor for DistanceSampleIntervalRecord);
      v161 = v371;
    }

    else
    {
      sub_1B4C63F5C(v369, v337, type metadata accessor for DistanceSampleIntervalRecord);
      v184 = v343;
      v185 = swift_isUniquelyReferenced_nonNull_native();
      v383 = v184;
      v186 = v325;
      if (v185)
      {
        v161 = v371;
        v187 = v184;
      }

      else
      {
        sub_1B4BCF57C(0, v184[2] + 1, 1);
        v187 = v383;
        v161 = v371;
      }

      v189 = v187[2];
      v188 = v187[3];
      if (v189 >= v188 >> 1)
      {
        sub_1B4BCF57C(v188 > 1, v189 + 1, 1);
        v161 = v371;
        v187 = v383;
      }

      v187[2] = v189 + 1;
      v343 = v187;
      sub_1B4C63F5C(v337, v186 + v187 + v189 * v378, type metadata accessor for DistanceSampleIntervalRecord);
    }

    v158 = v358;
    ++v159;
    v160 += v378;
    if (v359 == v159)
    {
      goto LABEL_105;
    }
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  v6 = MEMORY[0x1E69E7CC0];
LABEL_158:

  if (*(v6 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68A8, &qword_1B4D1ABC0);
    v293 = sub_1B4D18AEC();
  }

  else
  {
    v293 = MEMORY[0x1E69E7CC8];
  }

  v294 = v321;
  v384 = v293;
  sub_1B4C5BEBC(v6, 1, &v384);
  if (!v294)
  {

    return v384;
  }

LABEL_183:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for WorkoutInsight.DistanceAccumulator()
{
  result = qword_1EDC37570;
  if (!qword_1EDC37570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4C63E94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4C63EFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4C63F5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1B4C63FEC()
{
  sub_1B498AFB8(319, &qword_1EDC36DD0, 0x1E696C358);
  if (v0 <= 0x3F)
  {
    sub_1B4B59D8C();
    if (v1 <= 0x3F)
    {
      sub_1B4C640B8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4C640B8()
{
  if (!qword_1EDC36E10)
  {
    type metadata accessor for DistanceSampleIntervalRecord();
    v0 = sub_1B4D184BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC36E10);
    }
  }
}

uint64_t sub_1B4C64110(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a1 > 36)
  {
    switch(a1)
    {
      case '4':
        if (a2)
        {
          sub_1B4D1896C();
          MEMORY[0x1B8C7C620](0xD000000000000043, 0x80000001B4D640C0);
          MEMORY[0x1B8C7C620](a3, a4);
          v6 = "t breakthrough moment.";
          v7 = 0xD0000000000003F7;
        }

        else
        {
          sub_1B4D1896C();
          MEMORY[0x1B8C7C620](0xD000000000000043, 0x80000001B4D640C0);
          MEMORY[0x1B8C7C620](a3, a4);
          v6 = "breakthrough moment.";
          v7 = 0xD000000000000336;
        }

        break;
      case ',':
        sub_1B4D1896C();
        MEMORY[0x1B8C7C620](0xD000000000000043, 0x80000001B4D640C0);
        MEMORY[0x1B8C7C620](a3, a4);
        v6 = "onth/this year/ever).";
        v7 = 0xD00000000000033CLL;
        break;
      case '%':
        if (a2)
        {
          sub_1B4D1896C();
          MEMORY[0x1B8C7C620](0xD000000000000043, 0x80000001B4D640C0);
          MEMORY[0x1B8C7C620](a3, a4);
          v6 = "eakthrough moment.";
          v7 = 0xD0000000000003F8;
        }

        else
        {
          sub_1B4D1896C();
          MEMORY[0x1B8C7C620](0xD000000000000043, 0x80000001B4D640C0);
          MEMORY[0x1B8C7C620](a3, a4);
          v6 = "eakthrough moment.";
          v7 = 0xD000000000000332;
        }

        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    if (a1 != 13)
    {
      if (a1 == 16)
      {
        sub_1B4D1896C();
        MEMORY[0x1B8C7C620](0xD000000000000043, 0x80000001B4D640C0);
        MEMORY[0x1B8C7C620](a3, a4);
        v6 = " the current workout moment.";
        v7 = 0xD00000000000033ELL;
        goto LABEL_21;
      }

      if (a1 == 24)
      {
        sub_1B4D1896C();
        MEMORY[0x1B8C7C620](0xD000000000000043, 0x80000001B4D640C0);
        MEMORY[0x1B8C7C620](a3, a4);
        v6 = "e current breakthrough moment.";
        v7 = 0xD000000000000334;
        goto LABEL_21;
      }

LABEL_15:
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD000000000000043, 0x80000001B4D640C0);
      MEMORY[0x1B8C7C620](a3, a4);
      v6 = "through* moment:\n\n{";
      v7 = 0xD000000000000295;
      goto LABEL_21;
    }

    if (a2)
    {
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD000000000000043, 0x80000001B4D640C0);
      MEMORY[0x1B8C7C620](a3, a4);
      v6 = " current breakthrough moment.";
      v7 = 0xD000000000000342;
    }

    else
    {
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD000000000000043, 0x80000001B4D640C0);
      MEMORY[0x1B8C7C620](a3, a4);
      v6 = "current workout moment.";
      v7 = 0xD00000000000033DLL;
    }
  }

LABEL_21:
  MEMORY[0x1B8C7C620](v7, v6 | 0x8000000000000000);
  return 0;
}

uint64_t StreamingAudioChunk.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v12 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);

  sub_1B498FC0C(v7, v8);
  sub_1B498FC0C(v9, v10);
  result = sub_1B4C64624(a1);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v12;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  return result;
}

uint64_t sub_1B4C64624(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StreamingAudioChunk.protobuf()()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0);
  sub_1B4C649E0(&qword_1EB8A6A20);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C64724(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a1 + 8);

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 4);
  v15 = *(a2 + 3);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  sub_1B4C64BC0(&v15, &v14);
  result = sub_1B49DDD2C(v7, v8);
  *(a1 + 24) = v15;
  v10 = a2[5];
  if (v10 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v10 <= 0x7FFFFFFF)
  {
    *(a1 + 40) = v10;
    v14 = *(a2 + 3);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    sub_1B4C64BC0(&v14, &v13);
    result = sub_1B49DDD2C(v11, v12);
    *(a1 + 48) = v14;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4C6480C(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[1];
  v12[0] = *v1;
  v12[1] = v8;
  v9 = v1[3];
  v12[2] = v1[2];
  v12[3] = v9;
  v10 = sub_1B4C64B6C();
  (*(v10 + 32))(a1, v10);
  if (!v2)
  {
    sub_1B4C649E0(&qword_1EB8A6A20);
    v4 = sub_1B4D17D6C();
    sub_1B4C64624(v7);
  }

  return v4;
}

double sub_1B4C64934@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1B4B270F0(a1, a2, v8);
  if (!v3)
  {
    v6 = v8[1];
    *a3 = v8[0];
    a3[1] = v6;
    result = *&v9;
    v7 = v10;
    a3[2] = v9;
    a3[3] = v7;
  }

  return result;
}

uint64_t sub_1B4C649E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4C64A24()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0);
  sub_1B4C649E0(&qword_1EB8A6A20);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C64AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v12 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);

  sub_1B498FC0C(v7, v8);
  sub_1B498FC0C(v9, v10);
  result = sub_1B4C64624(a1);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v12;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  return result;
}

unint64_t sub_1B4C64B6C()
{
  result = qword_1EB8AD4E8;
  if (!qword_1EB8AD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD4E8);
  }

  return result;
}

uint64_t VitalsDay.init(_:)@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*a1 > 3 || (v4 = a1[1], v4 > 3) || (v5 = a1[2], v5 > 3) || (v6 = a1[3], v6 > 3) || (v7 = a1[4], v7 >= 4))
  {
    sub_1B4C64D2C();
    swift_allocError();
    swift_willThrow();
    return sub_1B4C65368(a1, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  }

  else
  {
    result = sub_1B4C65368(a1, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
    *a2 = v3;
    a2[1] = v4;
    a2[2] = v5;
    a2[3] = v6;
    a2[4] = v7;
  }

  return result;
}

unint64_t sub_1B4C64D2C()
{
  result = qword_1EB8AD4F0;
  if (!qword_1EB8AD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD4F0);
  }

  return result;
}

uint64_t VitalsDay.protobuf()()
{
  v1 = *(v0 + 4);
  type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  v3 = *v0;
  sub_1B4C65948(&qword_1EB8AA6D8, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  return sub_1B4D17DAC();
}

uint32x4_t sub_1B4C64E3C(uint32x4_t *a1, uint8x8_t a2)
{
  v3 = *(v2 + 20);
  a2.i32[0] = *(v2 + 16);
  result = vmovl_u16(*&vmovl_u8(a2));
  *a1 = result;
  a1[1].i32[0] = v3;
  return result;
}

int *sub_1B4C64E58(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v6) = *(v1 + 4);
  v12 = *v1;
  v13 = v6;
  v8 = sub_1B4C65B20();
  v9 = &v12;
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4C65948(&qword_1EB8AA6D8, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
    v9 = sub_1B4D17D6C();
    sub_1B4C65368(v7, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  }

  return v9;
}

uint64_t sub_1B4C64FA4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1B4B2736C(a1, a2, &v7);
  if (!v3)
  {
    v6 = v8;
    *a3 = v7;
    *(a3 + 4) = v6;
  }

  return result;
}

uint64_t sub_1B4C64FE0()
{
  v1 = *(v0 + 4);
  type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  v3 = *v0;
  sub_1B4C65948(&qword_1EB8AA6D8, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  return sub_1B4D17DAC();
}

uint64_t VitalsContext.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6C8, &unk_1B4D2FC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  sub_1B4C65290(a1 + *(v14 + 20), v8);
  v15 = *(v10 + 48);
  if (v15(v8, 1, v9) == 1)
  {
    *v13 = 0;
    *(v13 + 1) = 0;
    *(v13 + 4) = 0;
    v16 = &v13[*(v9 + 36)];
    sub_1B4D17BBC();
    if (v15(v8, 1, v9) != 1)
    {
      sub_1B4C65300(v8);
    }
  }

  else
  {
    sub_1B4C653C8(v8, v13);
  }

  VitalsDay.init(_:)(v13, &v20);
  result = sub_1B4C65368(a1, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  if (!v2)
  {
    v18 = v21;
    *a2 = v20;
    *(a2 + 4) = v18;
  }

  return result;
}

uint64_t sub_1B4C65290(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6C8, &unk_1B4D2FC70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C65300(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6C8, &unk_1B4D2FC70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C65368(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4C653C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t VitalsContext.protobuf()()
{
  v1 = *(v0 + 4);
  type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  v3 = *v0;
  sub_1B4C65948(&qword_1EB8AA6D0, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C654E8(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 8;
  v5 = a2 >> 16;
  v6 = a2 >> 24;
  v7 = HIDWORD(a2);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15[16] = v2;
  v15[17] = v4;
  v15[18] = v5;
  v15[19] = v6;
  v15[20] = v7;
  sub_1B4C65948(&qword_1EB8AA6D8, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  sub_1B4D17DAC();
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0) + 20);
  sub_1B4C65300(a1 + v13);
  sub_1B4C653C8(v12, a1 + v13);
  return (*(v9 + 56))(a1 + v13, 0, 1, v8);
}

int *sub_1B4C65730(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v6) = *(v1 + 4);
  v12 = *v1;
  v13 = v6;
  v8 = sub_1B4C65ACC();
  v9 = &v12;
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4C65948(&qword_1EB8AA6D0, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
    v9 = sub_1B4D17D6C();
    sub_1B4C65368(v7, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  }

  return v9;
}

uint64_t sub_1B4C6587C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1B4B275C0(a1, a2, &v7);
  if (!v3)
  {
    v6 = v8;
    *a3 = v7;
    *(a3 + 4) = v6;
  }

  return result;
}

uint64_t sub_1B4C65948(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4C65990()
{
  v1 = *(v0 + 4);
  type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  v3 = *v0;
  sub_1B4C65948(&qword_1EB8AA6D0, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4C65A78()
{
  result = qword_1EB8AD4F8;
  if (!qword_1EB8AD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD4F8);
  }

  return result;
}

unint64_t sub_1B4C65ACC()
{
  result = qword_1EB8AD500;
  if (!qword_1EB8AD500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD500);
  }

  return result;
}

unint64_t sub_1B4C65B20()
{
  result = qword_1EB8AD508;
  if (!qword_1EB8AD508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD508);
  }

  return result;
}

uint64_t sub_1B4C65BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v200) = a3;
  v199 = a2;
  v190 = a1;
  v203 = a4;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DA8, &qword_1B4D25850);
  v4 = *(*(v183 - 8) + 64);
  MEMORY[0x1EEE9AC00](v183);
  v182 = &v179 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DB0, &qword_1B4D25858);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v181 = &v179 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v189 = &v179 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v193 = &v179 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v194 = *(v14 - 8);
  v195 = v14;
  v15 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v179 = &v179 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v180 = &v179 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v185 = &v179 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v186 = &v179 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v188 = &v179 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v191 = &v179 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A8DB8, &qword_1B4D25860);
  v28 = *(v27 - 8);
  v201 = v27;
  v202 = v28;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v184 = &v179 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v179 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v179 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v196 = *(v38 - 8);
  v197 = v38;
  v39 = *(v196 + 8);
  MEMORY[0x1EEE9AC00](v38);
  v187 = &v179 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v192 = &v179 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v46 = &v179 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v179 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v179 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v179 - v54;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v56 = *(*(v198 - 8) + 64);
  MEMORY[0x1EEE9AC00](v198);
  MEMORY[0x1EEE9AC00](&v179 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v58);
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v179 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v179 - v63;
  v70.n128_f64[0] = MEMORY[0x1EEE9AC00](v65);
  v72 = &v179 - v71;
  v73 = v200;
  if (v200 > 1u)
  {
    if (v200 != 2)
    {
      v94 = v203;
      v95 = *(v202 + 56);
      v96 = v201;

      return v95(v94, 1, 1, v96, v70);
    }

    v83 = type metadata accessor for HKActivitySummaryRepresentable();
    v84 = v199;
    sub_1B4974FBC(v199 + *(v83 + 56), v37, &qword_1EB8A6D18, &unk_1B4D1BCA0);
    v86 = v196;
    v85 = v197;
    v87 = *(v196 + 6);
    if (v87(v37, 1, v197) != 1)
    {
      v101 = v192;
      v102 = v37;
      v103 = *(v86 + 4);
      v103(v192, v102, v85);
      sub_1B4974FBC(v84 + *(v83 + 52), v34, &qword_1EB8A6D18, &unk_1B4D1BCA0);
      if (v87(v34, 1, v85) == 1)
      {
        (*(v86 + 1))(v101, v85);
        v81 = &qword_1EB8A6D18;
        v82 = &unk_1B4D1BCA0;
        v88 = v34;
        goto LABEL_54;
      }

      v113 = v187;
      v103(v187, v34, v85);
      v114 = sub_1B4A61EE8();
      if (v115)
      {
        v116 = *(v86 + 1);
        v116(v113, v85);
        v117 = v192;
      }

      else
      {
        v128 = v114;
        v129 = sub_1B4A61EE8();
        v130 = v192;
        if ((v131 & 1) == 0)
        {
          v143 = v129;
          v144 = v183;
          v145 = *(v86 + 2);
          v52 = v182;
          v145(&v182[*(v183 + 28)], v192, v85);
          v145(&v52[v144[8]], v113, v85);
          v146 = v144[9];
          type metadata accessor for UnitCount();
          sub_1B4D1744C();
          v147 = *(v86 + 1);
          v147(v113, v85);
          v147(v130, v85);
          *v52 = 2;
          *&v52[v144[10]] = v128;
          *&v52[v144[11]] = v143;
          v52[v144[12]] = 0;
          v81 = &qword_1EB8A8DA8;
          v82 = &qword_1B4D25850;
          goto LABEL_17;
        }

        v116 = *(v86 + 1);
        v116(v113, v85);
        v117 = v130;
      }

      v116(v117, v85);
      return (*(v202 + 56))(v203, 1, 1, v201);
    }

    v81 = &qword_1EB8A6D18;
    v82 = &unk_1B4D1BCA0;
    v88 = v37;
    goto LABEL_54;
  }

  v200 = v67;
  if (v73)
  {
    v195 = v66;
    v196 = v68;
    v197 = v69;
    v89 = type metadata accessor for HKActivitySummaryRepresentable();
    v90 = v199;
    sub_1B4974FBC(v199 + *(v89 + 48), v55, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    v91 = v200;
    v92 = v200[6];
    v93 = v198;
    if (v92(v55, 1, v198) != 1)
    {
      v104 = v91[4];
      v104(v72, v55, v93);
      sub_1B4974FBC(v90 + *(v89 + 44), v46, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      if (v92(v46, 1, v93) == 1)
      {
        (v91[1])(v72, v93);
        v81 = &qword_1EB8A6C90;
        v82 = &unk_1B4D1BBD0;
        v88 = v46;
        goto LABEL_54;
      }

      v118 = v197;
      v104(v197, v46, v93);
      v119 = sub_1B4A61B14();
      if (v120)
      {
        v121 = v200[1];
        v121(v118, v93);
      }

      else
      {
        v132 = v119;
        v133 = sub_1B4A61B14();
        if ((v134 & 1) == 0)
        {
          v199 = v133;
          sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
          v148 = v196;
          v194 = v132;
          v149 = v197;
          sub_1B4D1744C();
          v150 = [objc_opt_self() minutes];
          v151 = v195;
          sub_1B4D1745C();

          sub_1B4D1742C();
          v153 = v152;
          (v200[1])(v151, v93);
          v154 = v153 <= 30.0 && v153 >= 10.0;
          v155 = v201;
          v156 = v184;
          v104(&v184[v201[7]], v72, v93);
          v104(&v156[v155[8]], v149, v93);
          *v156 = 1;
          v104(&v156[v155[9]], v148, v93);
          *&v156[v155[10]] = v194;
          *&v156[v155[11]] = v199;
          v156[v155[12]] = v154;
          v157 = v203;
          sub_1B498B270(v156, v203, qword_1EB8A8DB8, &qword_1B4D25860);
          return (*(v202 + 56))(v157, 0, 1, v155);
        }

        v121 = v200[1];
        v121(v197, v93);
      }

      v121(v72, v93);
      return (*(v202 + 56))(v203, 1, 1, v201);
    }

    v81 = &qword_1EB8A6C90;
    v82 = &unk_1B4D1BBD0;
    v88 = v55;
LABEL_54:
    sub_1B4975024(v88, v81, v82);
    return (*(v202 + 56))(v203, 1, 1, v201);
  }

  v74 = type metadata accessor for HKActivitySummaryRepresentable();
  v75 = v74;
  v76 = v199;
  v77 = v199 + v74[18];
  if ((*(v77 + 8) & 1) != 0 || *v77 != 2)
  {
    v52 = v193;
    sub_1B4974FBC(v199 + v74[8], v193, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    v98 = v194;
    v99 = v195;
    v100 = *(v194 + 48);
    if (v100(v52, 1, v195) == 1)
    {
      v81 = &qword_1EB8A6CA8;
      v82 = &unk_1B4D1C2B0;
      goto LABEL_17;
    }

    v198 = v6;
    if (qword_1EDC36DF0 != -1)
    {
      swift_once();
    }

    v105 = v188;
    v200 = qword_1EDC36DF8;
    sub_1B4D1745C();
    v106 = v52;
    v107 = *(v98 + 8);
    v107(v106, v99);
    v108 = v191;
    v109 = v105;
    v110 = *(v98 + 32);
    v110(v191, v109, v99);
    v111 = v76 + v75[7];
    v112 = v189;
    sub_1B4974FBC(v111, v189, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    if (v100(v112, 1, v99) == 1)
    {
      v107(v108, v99);
      v81 = &qword_1EB8A6CA8;
      v82 = &unk_1B4D1C2B0;
      v88 = v112;
      goto LABEL_54;
    }

    v122 = v185;
    sub_1B4D1745C();
    v107(v112, v99);
    v123 = v186;
    v110(v186, v122, v99);
    v124 = sub_1B4A612D4();
    if (v125)
    {
      v107(v123, v99);
      v107(v191, v99);
    }

    else
    {
      v135 = v124;
      v136 = sub_1B4A612D4();
      if ((v137 & 1) == 0)
      {
        v199 = v136;
        sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
        v158 = v180;
        v159 = v191;
        sub_1B4D1744C();
        v160 = v179;
        v161 = v195;
        sub_1B4D1745C();
        sub_1B4D1742C();
        v163 = v162;
        v107(v160, v161);
        v164 = v163 <= 100.0 && v163 >= 20.0;
        v165 = v198;
        v166 = v110;
        v49 = v181;
        v166(&v181[*(v198 + 28)], v159, v161);
        v166(&v49[v165[8]], v186, v161);
        *v49 = 0;
        v166(&v49[v165[9]], v158, v161);
        *&v49[v165[10]] = v135;
        *&v49[v165[11]] = v199;
        v49[v165[12]] = v164;
        v81 = &qword_1EB8A8DB0;
        v82 = &qword_1B4D25858;
        goto LABEL_53;
      }

      v138 = v195;
      v107(v123, v195);
      v107(v191, v138);
    }

    return (*(v202 + 56))(v203, 1, 1, v201);
  }

  sub_1B4974FBC(v199 + v74[10], v52, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  v78 = v200;
  v79 = v200[6];
  v80 = v198;
  if (v79(v52, 1, v198) == 1)
  {
    v81 = &qword_1EB8A6C90;
    v82 = &unk_1B4D1BBD0;
LABEL_17:
    v88 = v52;
    goto LABEL_54;
  }

  v197 = v79;
  v126 = v76;
  v127 = v78[4];
  v127(v64, v52, v80);
  sub_1B4974FBC(v126 + v75[9], v49, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if (v197(v49, 1, v80) == 1)
  {
    (v78[1])(v64, v80);
    v81 = &qword_1EB8A6C90;
    v82 = &unk_1B4D1BBD0;
LABEL_53:
    v88 = v49;
    goto LABEL_54;
  }

  v127(v61, v49, v80);
  v139 = sub_1B4A612D4();
  if (v140)
  {
    v141 = v80;
    v142 = v200[1];
    v142(v61, v80);
LABEL_58:
    v142(v64, v141);
    return (*(v202 + 56))(v203, 1, 1, v201);
  }

  v167 = v139;
  v168 = sub_1B4A612D4();
  if (v169)
  {
    v142 = v200[1];
    v141 = v198;
    v142(v61, v198);
    goto LABEL_58;
  }

  v170 = v168;
  v172 = v200;
  v171 = v201;
  v173 = v200[2];
  v174 = v184;
  v175 = v198;
  v173(&v184[v201[7]], v64, v198);
  v173(&v174[v171[8]], v61, v175);
  v176 = v171[9];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  sub_1B4D1744C();
  v177 = v172[1];
  v177(v61, v175);
  v177(v64, v175);
  *v174 = 0;
  *&v174[v171[10]] = v167;
  *&v174[v171[11]] = v170;
  v174[v171[12]] = 0;
  v178 = v203;
  sub_1B498B270(v174, v203, qword_1EB8A8DB8, &qword_1B4D25860);
  return (*(v202 + 56))(v178, 0, 1, v171);
}

uint64_t sub_1B4C66E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v208) = a3;
  v207 = a2;
  v199 = a1;
  v210 = a4;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DA8, &qword_1B4D25850);
  v4 = *(*(v192 - 8) + 64);
  MEMORY[0x1EEE9AC00](v192);
  v191 = &v187 - v5;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DB0, &qword_1B4D25858);
  v211 = *(v209 - 8);
  v6 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v209);
  v190 = &v187 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v198 = &v187 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v202 = &v187 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v203 = *(v13 - 8);
  v204 = v13;
  v14 = *(v203 + 8);
  MEMORY[0x1EEE9AC00](v13);
  v188 = &v187 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v189 = &v187 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v194 = &v187 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v196 = &v187 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v197 = &v187 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v200 = &v187 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A8DB8, &qword_1B4D25860);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v193 = &v187 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v187 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v187 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v205 = *(v36 - 8);
  v206 = v36;
  v37 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v195 = &v187 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v201 = &v187 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v44 = &v187 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v187 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v187 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v187 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  MEMORY[0x1EEE9AC00](v56);
  MEMORY[0x1EEE9AC00](v57);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v187 - v59;
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v187 - v62;
  v70.n128_f64[0] = MEMORY[0x1EEE9AC00](v64);
  v72 = &v187 - v71;
  v73 = v208;
  if (v208 > 1u)
  {
    if (v208 == 2)
    {
      v83 = type metadata accessor for HKActivitySummaryRepresentable();
      v84 = v207;
      sub_1B4974FBC(v207 + *(v83 + 56), v35, &qword_1EB8A6D18, &unk_1B4D1BCA0);
      v86 = v205;
      v85 = v206;
      v87 = *(v205 + 48);
      if (v87(v35, 1, v206) == 1)
      {
        v80 = &qword_1EB8A6D18;
        v81 = &unk_1B4D1BCA0;
        v82 = v35;
        goto LABEL_49;
      }

      v101 = v201;
      v102 = v35;
      v103 = *(v86 + 32);
      v103(v201, v102, v85);
      sub_1B4974FBC(v84 + *(v83 + 52), v32, &qword_1EB8A6D18, &unk_1B4D1BCA0);
      if (v87(v32, 1, v85) == 1)
      {
        (*(v86 + 8))(v101, v85);
        v80 = &qword_1EB8A6D18;
        v81 = &unk_1B4D1BCA0;
        v82 = v32;
        goto LABEL_49;
      }

      v113 = v195;
      v103(v195, v32, v85);
      v114 = sub_1B4A61EE8();
      if (v115)
      {
        v116 = *(v86 + 8);
        v116(v113, v85);
        v117 = v201;
      }

      else
      {
        v132 = v114;
        v133 = sub_1B4A61EE8();
        v134 = v201;
        if ((v135 & 1) == 0)
        {
          v147 = v133;
          v148 = v192;
          v149 = *(v86 + 16);
          v150 = v191;
          v149(&v191[*(v192 + 28)], v201, v85);
          v149(&v150[v148[8]], v113, v85);
          v151 = v148[9];
          type metadata accessor for UnitCount();
          sub_1B4D1744C();
          v152 = *(v86 + 8);
          v152(v113, v85);
          v152(v134, v85);
          *v150 = 2;
          *&v150[v148[10]] = v132;
          *&v150[v148[11]] = v147;
          v150[v148[12]] = 0;
          v80 = &qword_1EB8A8DA8;
          v81 = &qword_1B4D25850;
          v82 = v150;
          goto LABEL_49;
        }

        v116 = *(v86 + 8);
        v116(v113, v85);
        v117 = v134;
      }

      v116(v117, v85);
      return (*(v211 + 56))(v210, 1, 1, v209);
    }

    v93 = v210;
    v94 = *(v211 + 56);
    v95 = v209;

    return v94(v93, 1, 1, v95, v70);
  }

  else
  {
    v208 = v67;
    v206 = v65;
    if (v73)
    {
      v202 = v66;
      v203 = v68;
      v204 = v26;
      v205 = v69;
      v88 = type metadata accessor for HKActivitySummaryRepresentable();
      v89 = v207;
      sub_1B4974FBC(v207 + *(v88 + 48), v53, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v90 = v208;
      v91 = *(v208 + 48);
      v92 = v206;
      if (v91(v53, 1, v206) == 1)
      {
        v80 = &qword_1EB8A6C90;
        v81 = &unk_1B4D1BBD0;
        v82 = v53;
        goto LABEL_49;
      }

      v104 = v53;
      v105 = *(v90 + 32);
      v105(v72, v104, v92);
      sub_1B4974FBC(v89 + *(v88 + 44), v44, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      if (v91(v44, 1, v92) == 1)
      {
        (*(v90 + 8))(v72, v92);
        v80 = &qword_1EB8A6C90;
        v81 = &unk_1B4D1BBD0;
        v82 = v44;
        goto LABEL_49;
      }

      v118 = v205;
      v105(v205, v44, v92);
      v119 = sub_1B4A61B14();
      if (v120)
      {
        v121 = *(v208 + 8);
        v121(v118, v92);
        v121(v72, v92);
      }

      else
      {
        v136 = v119;
        v137 = sub_1B4A61B14();
        if ((v138 & 1) == 0)
        {
          v207 = v137;
          sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
          v153 = v203;
          v154 = v205;
          sub_1B4D1744C();
          v155 = [objc_opt_self() minutes];
          v156 = v202;
          v157 = v105;
          v158 = v206;
          sub_1B4D1745C();

          sub_1B4D1742C();
          v160 = v159;
          (*(v208 + 8))(v156, v158);
          v161 = v160 <= 30.0 && v160 >= 10.0;
          v162 = v204;
          v47 = v193;
          v157(&v193[v204[7]], v72, v158);
          v157(&v47[v162[8]], v154, v158);
          *v47 = 1;
          v157(&v47[v162[9]], v153, v158);
          *&v47[v162[10]] = v136;
          *&v47[v162[11]] = v207;
          v47[v162[12]] = v161;
          v80 = qword_1EB8A8DB8;
          v81 = &qword_1B4D25860;
          goto LABEL_48;
        }

        v139 = *(v208 + 8);
        v140 = v206;
        v139(v205, v206);
        v139(v72, v140);
      }

      return (*(v211 + 56))(v210, 1, 1, v209);
    }

    v74 = type metadata accessor for HKActivitySummaryRepresentable();
    v75 = v74;
    v76 = v207;
    v77 = v207 + v74[18];
    if ((*(v77 + 8) & 1) == 0 && *v77 == 2)
    {
      sub_1B4974FBC(v207 + v74[10], v50, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v78 = v208;
      v79 = *(v208 + 48);
      if (v79(v50, 1, v206) == 1)
      {
        v80 = &qword_1EB8A6C90;
        v81 = &unk_1B4D1BBD0;
        v82 = v50;
LABEL_49:
        sub_1B4975024(v82, v80, v81);
        return (*(v211 + 56))(v210, 1, 1, v209);
      }

      v204 = v26;
      v128 = v76;
      v129 = *(v78 + 32);
      v130 = v50;
      v131 = v206;
      v205 = v78 + 32;
      v129(v63, v130, v206);
      sub_1B4974FBC(v128 + v75[9], v47, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      if (v79(v47, 1, v131) == 1)
      {
        (*(v78 + 8))(v63, v131);
        v80 = &qword_1EB8A6C90;
        v81 = &unk_1B4D1BBD0;
LABEL_48:
        v82 = v47;
        goto LABEL_49;
      }

      v129(v60, v47, v131);
      v144 = sub_1B4A612D4();
      if ((v145 & 1) == 0)
      {
        v174 = v144;
        v175 = sub_1B4A612D4();
        if (v176)
        {
          v177 = *(v208 + 8);
          v178 = v206;
          v177(v60, v206);
          v177(v63, v178);
          return (*(v211 + 56))(v210, 1, 1, v209);
        }

        v179 = v175;
        v180 = v204;
        v181 = v208;
        v182 = *(v208 + 16);
        v183 = v193;
        v184 = v206;
        v182(&v193[v204[7]], v63, v206);
        v182(&v183[v180[8]], v60, v184);
        v185 = v180[9];
        sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
        sub_1B4D1744C();
        v186 = *(v181 + 8);
        v186(v60, v184);
        v186(v63, v184);
        *v183 = 0;
        *&v183[v180[10]] = v174;
        *&v183[v180[11]] = v179;
        v183[v180[12]] = 0;
        v80 = qword_1EB8A8DB8;
        v81 = &qword_1B4D25860;
        v82 = v183;
        goto LABEL_49;
      }

      v146 = *(v208 + 8);
      v146(v60, v131);
      v146(v63, v131);
      return (*(v211 + 56))(v210, 1, 1, v209);
    }

    v97 = v202;
    sub_1B4974FBC(v207 + v74[8], v202, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    v98 = v203;
    v99 = v204;
    v100 = *(v203 + 6);
    if (v100(v97, 1, v204) == 1)
    {
      v80 = &qword_1EB8A6CA8;
      v81 = &unk_1B4D1C2B0;
      v82 = v97;
      goto LABEL_49;
    }

    if (qword_1EDC36DF0 != -1)
    {
      swift_once();
    }

    v106 = qword_1EDC36DF8;
    v107 = v197;
    sub_1B4D1745C();
    v208 = *(v98 + 1);
    (v208)(v97, v99);
    v108 = v200;
    v109 = v107;
    v110 = *(v98 + 4);
    v110(v200, v109, v99);
    v111 = v76 + v75[7];
    v112 = v198;
    sub_1B4974FBC(v111, v198, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    if (v100(v112, 1, v99) == 1)
    {
      (v208)(v108, v99);
      v80 = &qword_1EB8A6CA8;
      v81 = &unk_1B4D1C2B0;
      v82 = v112;
      goto LABEL_49;
    }

    v122 = v194;
    v206 = v106;
    sub_1B4D1745C();
    v123 = v208;
    (v208)(v112, v99);
    v124 = v196;
    v110(v196, v122, v99);
    v125 = sub_1B4A612D4();
    if (v126)
    {
      v127 = v124;
LABEL_40:
      v123(v127, v99);
      v123(v200, v99);
      return (*(v211 + 56))(v210, 1, 1, v209);
    }

    v141 = v125;
    v142 = sub_1B4A612D4();
    if (v143)
    {
      v127 = v196;
      goto LABEL_40;
    }

    v207 = v142;
    sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
    v163 = v189;
    v164 = v196;
    v205 = v141;
    v165 = v200;
    sub_1B4D1744C();
    v166 = v188;
    sub_1B4D1745C();
    sub_1B4D1742C();
    v168 = v167;
    v123(v166, v99);
    v169 = v168 <= 100.0 && v168 >= 20.0;
    v170 = v110;
    v171 = v209;
    v172 = v190;
    v170(&v190[*(v209 + 28)], v165, v99);
    v170(&v172[v171[8]], v164, v99);
    *v172 = 0;
    v170(&v172[v171[9]], v163, v99);
    *&v172[v171[10]] = v205;
    *&v172[v171[11]] = v207;
    v172[v171[12]] = v169;
    v173 = v210;
    sub_1B498B270(v172, v210, &qword_1EB8A8DB0, &qword_1B4D25858);
    return (*(v211 + 56))(v173, 0, 1, v171);
  }
}

uint64_t sub_1B4C68078@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_1B4C680EC(uint64_t a1)
{
  *(a1 + 8) = sub_1B4C6811C();
  result = sub_1B4C68170();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4C6811C()
{
  result = qword_1EB8AD510;
  if (!qword_1EB8AD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD510);
  }

  return result;
}

unint64_t sub_1B4C68170()
{
  result = qword_1EB8AD518;
  if (!qword_1EB8AD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD518);
  }

  return result;
}

unint64_t sub_1B4C681C8()
{
  result = qword_1EB8AD520;
  if (!qword_1EB8AD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD520);
  }

  return result;
}

unint64_t sub_1B4C68220()
{
  result = qword_1EB8AD528;
  if (!qword_1EB8AD528)
  {
    type metadata accessor for RingProgressFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD528);
  }

  return result;
}

unint64_t sub_1B4C6827C()
{
  result = qword_1EB8AD530;
  if (!qword_1EB8AD530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD530);
  }

  return result;
}

unint64_t sub_1B4C682D0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD550, &qword_1B4D419C8);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD558, &unk_1B4D419D0) - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B4D1A800;
  v6 = *(type metadata accessor for WorkoutState() + 36);
  v7 = sub_1B4D1777C();
  (*(*(v7 - 8) + 16))(v5 + v4, a1 + v6, v7);
  type metadata accessor for FitnessContextQueryDescriptor();
  swift_storeEnumTagMultiPayload();
  v8 = sub_1B4C9655C(v5);
  swift_setDeallocating();
  sub_1B4975024(v5 + v4, &qword_1EB8AD558, &unk_1B4D419D0);
  swift_deallocClassInstance();
  return v8;
}

uint64_t sub_1B4C68438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B49AA274;

  return sub_1B4C684F8(a1, a3, a4);
}

uint64_t sub_1B4C684F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for RingProgressFact();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD538, &qword_1B4D41998) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD540, &unk_1B4D419A0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v11 = type metadata accessor for HKActivitySummaryRepresentable();
  v3[18] = v11;
  v12 = *(v11 - 8);
  v3[19] = v12;
  v13 = *(v12 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5C8, &qword_1B4D39050) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v15 = type metadata accessor for ActivitySummaryContext();
  v3[23] = v15;
  v16 = *(v15 - 8);
  v3[24] = v16;
  v17 = *(v16 + 64) + 15;
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4C687D4, 0, 0);
}

uint64_t sub_1B4C687D4()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[3];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v0[2] = &type metadata for RingProgressFactGenerator.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67D0, &unk_1B4D419B0);
  v90 = sub_1B4D181CC();
  v91 = v7;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000016, 0x80000001B4D4C4C0);
  (*(v6 + 8))(v90, v91, v1, v1, v5, v6);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v8 = v0[22];
    v9 = &qword_1EB8AA5C8;
    v10 = &qword_1B4D39050;
LABEL_13:
    sub_1B4975024(v8, v9, v10);
LABEL_14:
    v89 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

  v11 = v0[14];
  v12 = v0[5];
  sub_1B4C690E0(v0[22], v0[25], type metadata accessor for ActivitySummaryContext);
  sub_1B4974FBC(v12, v11, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v13 = type metadata accessor for WorkoutState();
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13);
  v15 = v0[18];
  v16 = v0[19];
  v17 = v0[16];
  v18 = v0[14];
  if (v14 == 1)
  {
    sub_1B4975024(v0[14], &qword_1EB8A6A98, &unk_1B4D1CBE0);
    (*(v16 + 56))(v17, 1, 1, v15);
  }

  else
  {
    sub_1B4974FBC(v18 + *(v13 + 128), v0[16], &qword_1EB8A6C98, &unk_1B4D2F3F0);
    sub_1B4C69148(v18, type metadata accessor for WorkoutState);
    v19 = *(v16 + 48);
    if (v19(v17, 1, v15) != 1)
    {
      v23 = v0[18];
      v24 = v0[19];
      v25 = v0[17];
      sub_1B4C690E0(v0[16], v25, type metadata accessor for HKActivitySummaryRepresentable);
      (*(v24 + 56))(v25, 0, 1, v23);
      goto LABEL_9;
    }
  }

  v20 = v0[18];
  v21 = v0[19];
  v22 = v0[16];
  sub_1B4974FBC(v0[25], v0[17], &qword_1EB8A6C98, &unk_1B4D2F3F0);
  v19 = *(v21 + 48);
  if (v19(v22, 1, v20) != 1)
  {
    sub_1B4975024(v0[16], &qword_1EB8A6C98, &unk_1B4D2F3F0);
  }

LABEL_9:
  v27 = v0[17];
  v26 = v0[18];
  if (v19(v27, 1, v26) == 1)
  {
    sub_1B4C69148(v0[25], type metadata accessor for ActivitySummaryContext);
    v9 = &qword_1EB8A6C98;
    v10 = &unk_1B4D2F3F0;
    v8 = v27;
    goto LABEL_13;
  }

  v28 = v0[15];
  v29 = v0[4];
  sub_1B4C690E0(v27, v0[21], type metadata accessor for HKActivitySummaryRepresentable);
  sub_1B4974FBC(v29 + *(v13 + 128), v28, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  v30 = v19(v28, 1, v26);
  v31 = v0[15];
  if (v30 == 1)
  {
    v32 = v0[25];
    sub_1B4C69148(v0[21], type metadata accessor for HKActivitySummaryRepresentable);
    sub_1B4C69148(v32, type metadata accessor for ActivitySummaryContext);
    v9 = &qword_1EB8A6C98;
    v10 = &unk_1B4D2F3F0;
    v8 = v31;
    goto LABEL_13;
  }

  v45 = v0[20];
  sub_1B4C690E0(v0[15], v45, type metadata accessor for HKActivitySummaryRepresentable);
  if (*(v45 + 25))
  {
    v46 = v0[25];
    v47 = v0[21];
    sub_1B4C69148(v0[20], type metadata accessor for HKActivitySummaryRepresentable);
    sub_1B4C69148(v47, type metadata accessor for HKActivitySummaryRepresentable);
    sub_1B4C69148(v46, type metadata accessor for ActivitySummaryContext);
    goto LABEL_14;
  }

  v48 = v0[20];
  v49 = v0[18];
  v50 = v0[13];
  v51 = v0[11];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DB0, &qword_1B4D25858);
  (*(*(v52 - 8) + 56))(v50, 1, 1, v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A8DB8, &qword_1B4D25860);
  (*(*(v53 - 8) + 56))(v51, 1, 1, v53);
  v54 = v48 + *(v49 + 72);
  if ((*(v54 + 8) & 1) != 0 || *v54 != 2)
  {
    v55 = v0[12];
    v56 = v0[13];
    sub_1B4C66E0C(v0[21], v0[20], 0, v55);
    v57 = &qword_1EB8AD540;
    v58 = &unk_1B4D419A0;
  }

  else
  {
    v55 = v0[10];
    v56 = v0[11];
    sub_1B4C65BA4(v0[21], v0[20], 0, v55);
    v57 = &qword_1EB8AD538;
    v58 = &qword_1B4D41998;
  }

  sub_1B4975024(v56, v57, v58);
  sub_1B498B270(v55, v56, v57, v58);
  sub_1B4C65BA4(v0[21], v0[20], 1, v0[9]);
  v59 = sub_1B4A612D4();
  if (v60 & 1) != 0 || (v61 = *&v59, v62 = v0[20], v63 = sub_1B4A61B14(), (v64) || (v65 = *&v63, v66 = v0[20], v67 = COERCE_DOUBLE(sub_1B4A61EE8()), (v68))
  {
    v69 = 0;
  }

  else if (v61 < 1.0)
  {
    v69 = 0;
  }

  else
  {
    v69 = 0;
    if (v65 >= 1.0)
    {
      v69 = v67 >= 1.0;
    }
  }

  v86 = v0[21];
  v88 = v0[25];
  v82 = v0[13];
  v84 = v0[20];
  v70 = v0[11];
  v71 = v0[8];
  v72 = v0[9];
  v73 = v0[6];
  v74 = v0[7];
  v75 = *(v84 + *(v0[18] + 76));
  sub_1B4974FBC(v82, v71, &qword_1EB8AD540, &unk_1B4D419A0);
  sub_1B4974FBC(v70, v71 + v73[5], &qword_1EB8AD538, &qword_1B4D41998);
  sub_1B4974FBC(v72, v71 + v73[6], &qword_1EB8AD538, &qword_1B4D41998);
  v76 = v73[7];
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DA8, &qword_1B4D25850);
  (*(*(v77 - 8) + 56))(v71 + v76, 1, 1, v77);
  *(v71 + v73[8]) = v69;
  *(v71 + v73[9]) = v75 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD548, &qword_1B4D419C0);
  v78 = *(v74 + 72);
  v79 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1B4D1A800;
  v89 = v80;
  sub_1B4C690E0(v71, v80 + v79, type metadata accessor for RingProgressFact);
  sub_1B4975024(v72, &qword_1EB8AD538, &qword_1B4D41998);
  sub_1B4975024(v70, &qword_1EB8AD538, &qword_1B4D41998);
  sub_1B4975024(v82, &qword_1EB8AD540, &unk_1B4D419A0);
  sub_1B4C69148(v84, type metadata accessor for HKActivitySummaryRepresentable);
  sub_1B4C69148(v86, type metadata accessor for HKActivitySummaryRepresentable);
  sub_1B4C69148(v88, type metadata accessor for ActivitySummaryContext);
LABEL_15:
  v33 = v0[25];
  v35 = v0[21];
  v34 = v0[22];
  v36 = v0[20];
  v38 = v0[16];
  v37 = v0[17];
  v40 = v0[14];
  v39 = v0[15];
  v41 = v0[12];
  v42 = v0[13];
  v81 = v0[11];
  v83 = v0[10];
  v85 = v0[9];
  v87 = v0[8];

  v43 = v0[1];

  return v43(v89);
}

uint64_t sub_1B4C690E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4C69148(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4C691A8(_BYTE *a1, _BYTE *a2)
{
  v3 = 1702260589;
  v4 = *a1;
  v5 = 0xE400000000000000;
  v6 = 0xE500000000000000;
  v7 = 0x646E617473;
  if (v4 != 2)
  {
    v7 = 0x65657268546C6C61;
    v6 = 0xED000073676E6952;
  }

  v8 = 0x6573696372657865;
  if (*a1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 1702260589;
  }

  if (*a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v4 <= 1)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0xE400000000000000;
  v12 = 0xE500000000000000;
  v13 = 0x646E617473;
  if (*a2 != 2)
  {
    v13 = 0x65657268546C6C61;
    v12 = 0xED000073676E6952;
  }

  if (*a2)
  {
    v3 = 0x6573696372657865;
    v11 = 0xE800000000000000;
  }

  if (*a2 <= 1u)
  {
    v14 = v3;
  }

  else
  {
    v14 = v13;
  }

  if (*a2 <= 1u)
  {
    v15 = v11;
  }

  else
  {
    v15 = v12;
  }

  if (v9 == v14 && v10 == v15)
  {
  }

  else
  {
    v17 = sub_1B4D18DCC();

    if ((v17 & 1) == 0)
    {
LABEL_32:
      v22 = 0;
      return v22 & 1;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DB0, &qword_1B4D25858);
  v19 = v18[7];
  sub_1B4A1F6B0(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80);
  if ((sub_1B4D1816C() & 1) == 0)
  {
    goto LABEL_32;
  }

  v20 = v18[8];
  if ((sub_1B4D1816C() & 1) == 0)
  {
    goto LABEL_32;
  }

  v21 = v18[9];
  if ((sub_1B4D1816C() & 1) == 0 || *&a1[v18[10]] != *&a2[v18[10]] || *&a1[v18[11]] != *&a2[v18[11]])
  {
    goto LABEL_32;
  }

  v22 = a1[v18[12]] ^ a2[v18[12]] ^ 1;
  return v22 & 1;
}

uint64_t sub_1B4C69404(_BYTE *a1, _BYTE *a2)
{
  v3 = 1702260589;
  v4 = *a1;
  v5 = 0xE400000000000000;
  v6 = 0xE500000000000000;
  v7 = 0x646E617473;
  if (v4 != 2)
  {
    v7 = 0x65657268546C6C61;
    v6 = 0xED000073676E6952;
  }

  v8 = 0x6573696372657865;
  if (*a1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 1702260589;
  }

  if (*a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v4 <= 1)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0xE400000000000000;
  v12 = 0xE500000000000000;
  v13 = 0x646E617473;
  if (*a2 != 2)
  {
    v13 = 0x65657268546C6C61;
    v12 = 0xED000073676E6952;
  }

  if (*a2)
  {
    v3 = 0x6573696372657865;
    v11 = 0xE800000000000000;
  }

  if (*a2 <= 1u)
  {
    v14 = v3;
  }

  else
  {
    v14 = v13;
  }

  if (*a2 <= 1u)
  {
    v15 = v11;
  }

  else
  {
    v15 = v12;
  }

  if (v9 == v14 && v10 == v15)
  {
  }

  else
  {
    v17 = sub_1B4D18DCC();

    if ((v17 & 1) == 0)
    {
LABEL_32:
      v22 = 0;
      return v22 & 1;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A8DB8, &qword_1B4D25860);
  v19 = v18[7];
  sub_1B4A1F6B0(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
  if ((sub_1B4D1816C() & 1) == 0)
  {
    goto LABEL_32;
  }

  v20 = v18[8];
  if ((sub_1B4D1816C() & 1) == 0)
  {
    goto LABEL_32;
  }

  v21 = v18[9];
  if ((sub_1B4D1816C() & 1) == 0 || *&a1[v18[10]] != *&a2[v18[10]] || *&a1[v18[11]] != *&a2[v18[11]])
  {
    goto LABEL_32;
  }

  v22 = a1[v18[12]] ^ a2[v18[12]] ^ 1;
  return v22 & 1;
}

uint64_t sub_1B4C69660(_BYTE *a1, _BYTE *a2)
{
  v3 = 1702260589;
  v4 = *a1;
  v5 = 0xE400000000000000;
  v6 = 0xE500000000000000;
  v7 = 0x646E617473;
  if (v4 != 2)
  {
    v7 = 0x65657268546C6C61;
    v6 = 0xED000073676E6952;
  }

  v8 = 0x6573696372657865;
  if (*a1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 1702260589;
  }

  if (*a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v4 <= 1)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0xE400000000000000;
  v12 = 0xE500000000000000;
  v13 = 0x646E617473;
  if (*a2 != 2)
  {
    v13 = 0x65657268546C6C61;
    v12 = 0xED000073676E6952;
  }

  if (*a2)
  {
    v3 = 0x6573696372657865;
    v11 = 0xE800000000000000;
  }

  if (*a2 <= 1u)
  {
    v14 = v3;
  }

  else
  {
    v14 = v13;
  }

  if (*a2 <= 1u)
  {
    v15 = v11;
  }

  else
  {
    v15 = v12;
  }

  if (v9 == v14 && v10 == v15)
  {
  }

  else
  {
    v17 = sub_1B4D18DCC();

    if ((v17 & 1) == 0)
    {
LABEL_32:
      v22 = 0;
      return v22 & 1;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DA8, &qword_1B4D25850);
  v19 = v18[7];
  sub_1B4A1F6B0(&qword_1EB8A6F70, &qword_1EB8A6870, &unk_1B4D1C2C0);
  if ((sub_1B4D1816C() & 1) == 0)
  {
    goto LABEL_32;
  }

  v20 = v18[8];
  if ((sub_1B4D1816C() & 1) == 0)
  {
    goto LABEL_32;
  }

  v21 = v18[9];
  if ((sub_1B4D1816C() & 1) == 0 || *&a1[v18[10]] != *&a2[v18[10]] || *&a1[v18[11]] != *&a2[v18[11]])
  {
    goto LABEL_32;
  }

  v22 = a1[v18[12]] ^ a2[v18[12]] ^ 1;
  return v22 & 1;
}

uint64_t RingProgressFact.init(moveCaloriesProgress:moveMinutesProgress:exerciseProgress:standProgress:closedAllThreeRings:isWheelchairUser:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  sub_1B498B270(a1, a7, &qword_1EB8AD540, &unk_1B4D419A0);
  v13 = type metadata accessor for RingProgressFact();
  sub_1B498B270(a2, a7 + v13[5], &qword_1EB8AD538, &qword_1B4D41998);
  sub_1B498B270(a3, a7 + v13[6], &qword_1EB8AD538, &qword_1B4D41998);
  result = sub_1B498B270(a4, a7 + v13[7], &qword_1EB8AD560, &qword_1B4D419E0);
  *(a7 + v13[8]) = a5;
  *(a7 + v13[9]) = a6;
  return result;
}

uint64_t type metadata accessor for RingProgressFact()
{
  result = qword_1EB8AD568;
  if (!qword_1EB8AD568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RingProgressFact.moveRingPercentage.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD538, &qword_1B4D41998);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD540, &unk_1B4D419A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  sub_1B4974FBC(v0, &v17 - v7, &qword_1EB8AD540, &unk_1B4D419A0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DB0, &qword_1B4D25858);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) != 1)
  {
    v12 = *&v8[*(v9 + 40)];
    v13 = &qword_1EB8A8DB0;
    v14 = &qword_1B4D25858;
    v15 = v8;
LABEL_6:
    sub_1B4975024(v15, v13, v14);
    return v12;
  }

  sub_1B4975024(v8, &qword_1EB8AD540, &unk_1B4D419A0);
  v10 = type metadata accessor for RingProgressFact();
  sub_1B4974FBC(v0 + *(v10 + 20), v4, &qword_1EB8AD538, &qword_1B4D41998);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A8DB8, &qword_1B4D25860);
  if ((*(*(v11 - 8) + 48))(v4, 1, v11) != 1)
  {
    v12 = *&v4[*(v11 + 40)];
    v13 = qword_1EB8A8DB8;
    v14 = &qword_1B4D25860;
    v15 = v4;
    goto LABEL_6;
  }

  sub_1B4975024(v4, &qword_1EB8AD538, &qword_1B4D41998);
  return 0;
}

uint64_t _s19FitnessIntelligence16RingProgressFactV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v87 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DA8, &qword_1B4D25850);
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v73 = &v72 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD560, &qword_1B4D419E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v74 = &v72 - v8;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD590, &qword_1B4D41A70);
  v9 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A8DB8, &qword_1B4D25860);
  v83 = *(v11 - 8);
  v84 = v11;
  v12 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v72 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD538, &qword_1B4D41998);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v79 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v72 - v18;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD598, &qword_1B4D41A78);
  v19 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v81 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v72 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DB0, &qword_1B4D25858);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v72 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD540, &unk_1B4D419A0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v72 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD5A0, &qword_1B4D41A80);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v72 - v35;
  v38 = *(v37 + 56);
  v85 = a1;
  sub_1B4974FBC(a1, &v72 - v35, &qword_1EB8AD540, &unk_1B4D419A0);
  sub_1B4974FBC(v87, &v36[v38], &qword_1EB8AD540, &unk_1B4D419A0);
  v39 = *(v25 + 48);
  if (v39(v36, 1, v24) == 1)
  {
    if (v39(&v36[v38], 1, v24) == 1)
    {
      sub_1B4975024(v36, &qword_1EB8AD540, &unk_1B4D419A0);
      goto LABEL_8;
    }

LABEL_6:
    v40 = &qword_1EB8AD5A0;
    v41 = &qword_1B4D41A80;
    v42 = v36;
LABEL_20:
    sub_1B4975024(v42, v40, v41);
    goto LABEL_21;
  }

  sub_1B4974FBC(v36, v32, &qword_1EB8AD540, &unk_1B4D419A0);
  if (v39(&v36[v38], 1, v24) == 1)
  {
    sub_1B4975024(v32, &qword_1EB8A8DB0, &qword_1B4D25858);
    goto LABEL_6;
  }

  sub_1B498B270(&v36[v38], v28, &qword_1EB8A8DB0, &qword_1B4D25858);
  v43 = sub_1B4C691A8(v32, v28);
  sub_1B4975024(v28, &qword_1EB8A8DB0, &qword_1B4D25858);
  sub_1B4975024(v32, &qword_1EB8A8DB0, &qword_1B4D25858);
  sub_1B4975024(v36, &qword_1EB8AD540, &unk_1B4D419A0);
  if ((v43 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_8:
  v44 = type metadata accessor for RingProgressFact();
  v45 = *(v44 + 20);
  v46 = v85;
  v47 = *(v86 + 48);
  sub_1B4974FBC(v85 + v45, v23, &qword_1EB8AD538, &qword_1B4D41998);
  v48 = v87 + v45;
  v49 = v87;
  sub_1B4974FBC(v48, &v23[v47], &qword_1EB8AD538, &qword_1B4D41998);
  v50 = v84;
  v51 = *(v83 + 48);
  if (v51(v23, 1, v84) == 1)
  {
    if (v51(&v23[v47], 1, v50) != 1)
    {
      goto LABEL_18;
    }

    sub_1B4975024(v23, &qword_1EB8AD538, &qword_1B4D41998);
  }

  else
  {
    v52 = v82;
    sub_1B4974FBC(v23, v82, &qword_1EB8AD538, &qword_1B4D41998);
    if (v51(&v23[v47], 1, v50) == 1)
    {
      goto LABEL_17;
    }

    v53 = v46;
    v54 = v49;
    v55 = v44;
    v56 = v80;
    sub_1B498B270(&v23[v47], v80, qword_1EB8A8DB8, &qword_1B4D25860);
    v57 = sub_1B4C69404(v52, v56);
    v58 = v56;
    v44 = v55;
    v49 = v54;
    v46 = v53;
    sub_1B4975024(v58, qword_1EB8A8DB8, &qword_1B4D25860);
    sub_1B4975024(v52, qword_1EB8A8DB8, &qword_1B4D25860);
    sub_1B4975024(v23, &qword_1EB8AD538, &qword_1B4D41998);
    if ((v57 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v83 = v44;
  v59 = *(v44 + 24);
  v60 = *(v86 + 48);
  v23 = v81;
  sub_1B4974FBC(v46 + v59, v81, &qword_1EB8AD538, &qword_1B4D41998);
  sub_1B4974FBC(v49 + v59, &v23[v60], &qword_1EB8AD538, &qword_1B4D41998);
  if (v51(v23, 1, v50) == 1)
  {
    if (v51(&v23[v60], 1, v50) == 1)
    {
      sub_1B4975024(v23, &qword_1EB8AD538, &qword_1B4D41998);
      goto LABEL_24;
    }

LABEL_18:
    v40 = &qword_1EB8AD598;
    v41 = &qword_1B4D41A78;
LABEL_19:
    v42 = v23;
    goto LABEL_20;
  }

  v52 = v79;
  sub_1B4974FBC(v23, v79, &qword_1EB8AD538, &qword_1B4D41998);
  if (v51(&v23[v60], 1, v50) == 1)
  {
LABEL_17:
    sub_1B4975024(v52, qword_1EB8A8DB8, &qword_1B4D25860);
    goto LABEL_18;
  }

  v63 = v80;
  sub_1B498B270(&v23[v60], v80, qword_1EB8A8DB8, &qword_1B4D25860);
  v64 = sub_1B4C69404(v52, v63);
  sub_1B4975024(v63, qword_1EB8A8DB8, &qword_1B4D25860);
  sub_1B4975024(v52, qword_1EB8A8DB8, &qword_1B4D25860);
  sub_1B4975024(v23, &qword_1EB8AD538, &qword_1B4D41998);
  if ((v64 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_24:
  v65 = *(v83 + 28);
  v66 = *(v75 + 48);
  v23 = v78;
  sub_1B4974FBC(v46 + v65, v78, &qword_1EB8AD560, &qword_1B4D419E0);
  sub_1B4974FBC(v49 + v65, &v23[v66], &qword_1EB8AD560, &qword_1B4D419E0);
  v67 = v77;
  v68 = *(v76 + 48);
  if (v68(v23, 1, v77) != 1)
  {
    v69 = v74;
    sub_1B4974FBC(v23, v74, &qword_1EB8AD560, &qword_1B4D419E0);
    if (v68(&v23[v66], 1, v67) != 1)
    {
      v70 = v73;
      sub_1B498B270(&v23[v66], v73, &qword_1EB8A8DA8, &qword_1B4D25850);
      v71 = sub_1B4C69660(v69, v70);
      sub_1B4975024(v70, &qword_1EB8A8DA8, &qword_1B4D25850);
      sub_1B4975024(v69, &qword_1EB8A8DA8, &qword_1B4D25850);
      sub_1B4975024(v23, &qword_1EB8AD560, &qword_1B4D419E0);
      if ((v71 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_31;
    }

    sub_1B4975024(v69, &qword_1EB8A8DA8, &qword_1B4D25850);
    goto LABEL_29;
  }

  if (v68(&v23[v66], 1, v67) != 1)
  {
LABEL_29:
    v40 = &qword_1EB8AD590;
    v41 = &qword_1B4D41A70;
    goto LABEL_19;
  }

  sub_1B4975024(v23, &qword_1EB8AD560, &qword_1B4D419E0);
LABEL_31:
  if (*(v46 + *(v83 + 32)) == *(v49 + *(v83 + 32)))
  {
    v61 = *(v46 + *(v83 + 36)) ^ *(v49 + *(v83 + 36)) ^ 1;
    return v61 & 1;
  }

LABEL_21:
  v61 = 0;
  return v61 & 1;
}

void sub_1B4C6A804()
{
  sub_1B49AFCD8(319, &qword_1EB8AD578, &qword_1EB8A8DB0, &qword_1B4D25858);
  if (v0 <= 0x3F)
  {
    sub_1B49AFCD8(319, &qword_1EB8AD580, qword_1EB8A8DB8, &qword_1B4D25860);
    if (v1 <= 0x3F)
    {
      sub_1B49AFCD8(319, &qword_1EB8AD588, &qword_1EB8A8DA8, &qword_1B4D25850);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t FitnessPlusPropertyDimensions.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9540, &unk_1B4D27B00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v17 = (a1 + v16[5]);
  v18 = v17[1];
  if (v18)
  {
    v19 = *v17;
    v20 = v17[1];

    v21._countAndFlagsBits = v19;
    v21._object = v18;
    MonthOfYear.init(rawValue:)(v21);
    v22 = v53;
  }

  else
  {
    v22 = 12;
  }

  v52 = v22;
  v23 = (a1 + v16[6]);
  v24 = v23[1];
  if (v24)
  {
    v25 = *v23;
    v26 = v23[1];

    v27._countAndFlagsBits = v25;
    v27._object = v24;
    DayOfWeek.init(rawValue:)(v27);
    v28 = v54;
  }

  else
  {
    v28 = 7;
  }

  v49 = v28;
  v29 = a1 + v16[7];
  if (*(v29 + 8))
  {
    v48 = 0;
    v30 = 1;
  }

  else
  {
    HourOfDay.init(rawValue:)(*v29, &v50);
    v48 = v50;
    v30 = v51;
  }

  v47 = v30;
  v31 = (a1 + v16[8]);
  v32 = v31[1];
  v45 = v8;
  if (v32)
  {
    v33 = *v31;

    v34._countAndFlagsBits = v33;
    v34._object = v32;
    FitnessPlusModalityKind.init(rawValue:)(v34);
    v35 = v55;
  }

  else
  {
    v35 = 15;
  }

  v46 = v35;
  v36 = v16[9];
  sub_1B4C6AC84(a1 + v36, v15);
  v37 = *(v5 + 48);
  v38 = v37(v15, 1, v4);
  sub_1B4C6ACF4(v15);
  if (v38 == 1)
  {
    result = sub_1B4C6AD5C(a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
    v40 = 0;
  }

  else
  {
    sub_1B4C6AC84(a1 + v36, v12);
    if (v37(v12, 1, v4) == 1)
    {
      v41 = v45;
      *v45 = MEMORY[0x1E69E7CC0];
      v42 = v41 + *(v4 + 20);
      sub_1B4D17BBC();
      if (v37(v12, 1, v4) != 1)
      {
        sub_1B4C6ACF4(v12);
      }
    }

    else
    {
      v41 = v45;
      sub_1B4C6AE94(v12, v45);
    }

    sub_1B4C6AD5C(a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
    v40 = *v41;

    result = sub_1B4C6AD5C(v41, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  }

  *a2 = v52;
  *(a2 + 1) = v49;
  *(a2 + 8) = v48;
  v43 = v46;
  *(a2 + 16) = v47;
  *(a2 + 17) = v43;
  *(a2 + 24) = v40;
  return result;
}

uint64_t sub_1B4C6AC84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9540, &unk_1B4D27B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C6ACF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9540, &unk_1B4D27B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C6AD5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FitnessPlusPropertyDimensions.protobuf()()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 3);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  sub_1B4C6B618(&qword_1EB8A95C8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C6AE94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C6AEF8(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4, uint64_t a5)
{
  v34 = a5;
  v32 = a3;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0xE700000000000000;
  v14 = 0x797261756E616ALL;
  switch(a2)
  {
    case 1:
      v13 = 0xE800000000000000;
      v14 = 0x7972617572626566;
      goto LABEL_14;
    case 2:
      v13 = 0xE500000000000000;
      v14 = 0x686372616DLL;
      goto LABEL_14;
    case 3:
      v13 = 0xE500000000000000;
      v14 = 0x6C69727061;
      goto LABEL_14;
    case 4:
      v13 = 0xE300000000000000;
      v14 = 7954797;
      goto LABEL_14;
    case 5:
      v13 = 0xE400000000000000;
      v14 = 1701737834;
      goto LABEL_14;
    case 6:
      v13 = 0xE400000000000000;
      v14 = 2037151082;
      goto LABEL_14;
    case 7:
      v13 = 0xE600000000000000;
      v14 = 0x747375677561;
      goto LABEL_14;
    case 8:
      v13 = 0xE900000000000072;
      v14 = 0x65626D6574706573;
      goto LABEL_14;
    case 9:
      v14 = 0x7265626F74636FLL;
      goto LABEL_14;
    case 10:
      v13 = 0xE800000000000000;
      v15 = 1702260590;
      goto LABEL_6;
    case 11:
      v13 = 0xE800000000000000;
      v15 = 1701012836;
LABEL_6:
      v14 = v15 | 0x7265626D00000000;
      goto LABEL_14;
    case 12:
      goto LABEL_15;
    default:
LABEL_14:
      v16 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 20));
      v17 = v16[1];

      *v16 = v14;
      v16[1] = v13;
LABEL_15:
      v18 = HIBYTE(a2);
      if (HIBYTE(a2) <= 3u)
      {
        if (HIBYTE(a2) <= 1u)
        {
          if (HIBYTE(a2))
          {
            v19 = 0x79616473657574;
          }

          else
          {
            v19 = 0x7961646E6F6DLL;
          }

          if (v18)
          {
            v20 = 0xE700000000000000;
          }

          else
          {
            v20 = 0xE600000000000000;
          }

          goto LABEL_33;
        }

        if (HIBYTE(a2) == 2)
        {
          v20 = 0xE900000000000079;
          v19 = 0x616473656E646577;
          goto LABEL_33;
        }

        v20 = 0xE800000000000000;
        v21 = 0x647372756874;
LABEL_32:
        v19 = v21 & 0xFFFFFFFFFFFFLL | 0x7961000000000000;
        goto LABEL_33;
      }

      if (HIBYTE(a2) <= 5u)
      {
        if (HIBYTE(a2) == 4)
        {
          v20 = 0xE600000000000000;
          v19 = 0x796164697266;
          goto LABEL_33;
        }

        v20 = 0xE800000000000000;
        v21 = 0x647275746173;
        goto LABEL_32;
      }

      if (HIBYTE(a2) != 6)
      {
        goto LABEL_34;
      }

      v19 = 0x7961646E7573;
      v20 = 0xE600000000000000;
LABEL_33:
      v22 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 24));
      v23 = v22[1];

      *v22 = v19;
      v22[1] = v20;
LABEL_34:
      if ((a4 & 1) == 0)
      {
        result = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
        v24 = a1 + *(result + 28);
        *v24 = v32;
        *(v24 + 8) = 0;
      }

      v25 = HIBYTE(a4);
      v26 = 0xE800000000000000;
      v27 = 0x6E776F646C6F6F63;
      switch(v25)
      {
        case 1:
          v26 = 0xE400000000000000;
          v27 = 1701998435;
          goto LABEL_51;
        case 2:
          v26 = 0xE700000000000000;
          v27 = 0x676E696C637963;
          goto LABEL_51;
        case 3:
          v26 = 0xE500000000000000;
          v27 = 0x65636E6164;
          goto LABEL_51;
        case 4:
          v26 = 0xE90000000000006ELL;
          v27 = 0x7552646564697567;
          goto LABEL_51;
        case 5:
          v26 = 0xEA00000000006B6CLL;
          v27 = 0x6157646564697567;
          goto LABEL_51;
        case 6:
          v26 = 0xE400000000000000;
          v27 = 1953065320;
          goto LABEL_51;
        case 7:
          v27 = 0x69786F626B63696BLL;
          v26 = 0xEA0000000000676ELL;
          goto LABEL_51;
        case 8:
          v26 = 0xEA00000000006E6FLL;
          v27 = 0x697461746964656DLL;
          goto LABEL_51;
        case 9:
          v26 = 0xE700000000000000;
          v27 = 0x736574616C6970;
          goto LABEL_51;
        case 10:
          v26 = 0xE600000000000000;
          v27 = 0x676E69776F72;
          goto LABEL_51;
        case 11:
          v27 = 0x6874676E65727473;
          goto LABEL_51;
        case 12:
          v27 = 0x6C696D6461657274;
          v26 = 0xE90000000000006CLL;
          goto LABEL_51;
        case 13:
          v26 = 0xE400000000000000;
          v27 = 1634168697;
          goto LABEL_51;
        case 14:
          v26 = 0xE500000000000000;
          v27 = 0x726568746FLL;
          goto LABEL_51;
        case 15:
          goto LABEL_52;
        default:
LABEL_51:
          v28 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 32));
          v29 = v28[1];

          *v28 = v27;
          v28[1] = v26;
LABEL_52:
          if (v34)
          {
            MEMORY[0x1EEE9AC00](result);
            *(&v32 - 2) = v30;
            sub_1B4C6B618(&qword_1EB8A9560, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
            sub_1B4D17DAC();
            v31 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 36);
            sub_1B4C6ACF4(a1 + v31);
            sub_1B4C6AE94(v12, a1 + v31);
            return (*(v33 + 56))(a1 + v31, 0, 1, v8);
          }

          return result;
      }
  }
}

uint64_t sub_1B4C6B528()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 3);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  sub_1B4C6B618(&qword_1EB8A95C8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C6B618(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LocationCoordinate.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4D1777C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for LocationCoordinate()
{
  result = qword_1EDC39678;
  if (!qword_1EDC39678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LocationCoordinate.altitude.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LocationCoordinate() + 28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LocationCoordinate.init(timestamp:latitude:longitude:altitude:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_1B4D1777C();
  (*(*(v10 - 8) + 32))(a3, a1, v10);
  v11 = type metadata accessor for LocationCoordinate();
  *(a3 + v11[5]) = a4;
  *(a3 + v11[6]) = a5;
  v12 = v11[7];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v14 = *(*(v13 - 8) + 32);

  return v14(a3 + v12, a2, v13);
}

uint64_t sub_1B4C6B8EC()
{
  v1 = 0x6D617473656D6974;
  v2 = 0x64757469676E6F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x6564757469746C61;
  }

  if (*v0)
  {
    v1 = 0x656475746974616CLL;
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

uint64_t sub_1B4C6B970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4C6C6FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4C6B998(uint64_t a1)
{
  v2 = sub_1B4C6C3E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C6B9D4(uint64_t a1)
{
  v2 = sub_1B4C6C3E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocationCoordinate.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD5A8, &qword_1B4D41AA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4C6C3E8();
  sub_1B4D18EFC();
  v16[15] = 0;
  sub_1B4D1777C();
  sub_1B4C6C4E0(&qword_1EDC37820, MEMORY[0x1E6969530]);
  sub_1B4D18D0C();
  if (!v2)
  {
    v11 = type metadata accessor for LocationCoordinate();
    v12 = *(v3 + v11[5]);
    v16[14] = 1;
    sub_1B4D18CDC();
    v13 = *(v3 + v11[6]);
    v16[13] = 2;
    sub_1B4D18CDC();
    v14 = v11[7];
    v16[12] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B4B5A0C0(&qword_1EB8A6EE8);
    sub_1B4D18D0C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t LocationCoordinate.hash(into:)()
{
  sub_1B4D1777C();
  sub_1B4C6C4E0(&qword_1EB8A72A8, MEMORY[0x1E6969530]);
  sub_1B4D1808C();
  v1 = type metadata accessor for LocationCoordinate();
  v2 = *(v0 + v1[5]);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1B8C7D2C0](*&v2);
  v3 = *(v0 + v1[6]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1B8C7D2C0](*&v3);
  v4 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B4B5A0C0(&qword_1EDC3CB40);
  return sub_1B4D1808C();
}

uint64_t LocationCoordinate.hashValue.getter()
{
  sub_1B4D18E8C();
  LocationCoordinate.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t LocationCoordinate.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v28 = *(v30 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v5 = &v27 - v4;
  v6 = sub_1B4D1777C();
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD5B8, &qword_1B4D41AB0);
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v13 = type metadata accessor for LocationCoordinate();
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4C6C3E8();
  v35 = v12;
  v18 = v36;
  sub_1B4D18EEC();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v36 = v5;
  v19 = v31;
  v40 = 0;
  sub_1B4C6C4E0(&qword_1EB8A6FB8, MEMORY[0x1E6969530]);
  sub_1B4D18C0C();
  (*(v19 + 32))(v16, v34, v6);
  v39 = 1;
  sub_1B4D18BDC();
  *&v16[v13[5]] = v20;
  v38 = 2;
  sub_1B4D18BDC();
  v21 = v32;
  *&v16[v13[6]] = v22;
  v37 = 3;
  sub_1B4B5A0C0(&qword_1EB8A6F28);
  v34 = v16;
  v23 = v36;
  v24 = v30;
  sub_1B4D18C0C();
  (*(v21 + 8))(v35, v33);
  v25 = v34;
  (*(v28 + 32))(&v34[v13[7]], v23, v24);
  sub_1B4B861F8(v25, v29);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1B4C6C43C(v25);
}

uint64_t sub_1B4C6C29C()
{
  sub_1B4D18E8C();
  LocationCoordinate.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C6C2E0()
{
  sub_1B4D18E8C();
  LocationCoordinate.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t _s19FitnessIntelligence18LocationCoordinateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1B4D1774C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for LocationCoordinate();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  if (*(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v6 = *(v5 + 28);
  sub_1B4B5A0C0(&qword_1EDC3CB38);
  return sub_1B4D1816C() & 1;
}

unint64_t sub_1B4C6C3E8()
{
  result = qword_1EB8AD5B0;
  if (!qword_1EB8AD5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD5B0);
  }

  return result;
}

uint64_t sub_1B4C6C43C(uint64_t a1)
{
  v2 = type metadata accessor for LocationCoordinate();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C6C4E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B4C6C550()
{
  sub_1B4D1777C();
  if (v0 <= 0x3F)
  {
    sub_1B4B59D8C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B4C6C5F8()
{
  result = qword_1EB8AD5C8;
  if (!qword_1EB8AD5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD5C8);
  }

  return result;
}

unint64_t sub_1B4C6C650()
{
  result = qword_1EB8AD5D0;
  if (!qword_1EB8AD5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD5D0);
  }

  return result;
}

unint64_t sub_1B4C6C6A8()
{
  result = qword_1EB8AD5D8;
  if (!qword_1EB8AD5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD5D8);
  }

  return result;
}

uint64_t sub_1B4C6C6FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6564757469746C61 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t RingsMilestoneEntry.hashValue.getter()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D2C0](v1);
  return sub_1B4D18EDC();
}

FitnessIntelligence::RingsMilestonePropertyValue __swiftcall RingsMilestonePropertyValue.init(currentCount:currentEntries:milestones:)(Swift::Int currentCount, Swift::OpaquePointer currentEntries, Swift::OpaquePointer milestones)
{
  v3->_rawValue = currentCount;
  v3[1]._rawValue = currentEntries._rawValue;
  v3[2]._rawValue = milestones._rawValue;
  result.milestones = milestones;
  result.currentEntries = currentEntries;
  result.currentCount = currentCount;
  return result;
}

BOOL static RingsMilestonePropertyValue.isMilestone(count:)(uint64_t a1)
{
  if (a1 > 999)
  {
    return __ROR8__(0x1CAC083126E978D5 * a1, 1) < 0x10624DD2F1A9FBFuLL;
  }

  result = 1;
  if (a1 <= 364)
  {
    if (a1 == 1 || a1 == 100)
    {
      return result;
    }

    return 0;
  }

  if (a1 != 365 && a1 != 500)
  {
    return 0;
  }

  return result;
}

uint64_t static RingsMilestonePropertyValue.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  result = a1[2];
  v6 = a2[2];
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return sub_1B4A23AD4(result, v6);
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      return sub_1B4A23AD4(result, v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t RingsMilestonePropertyValue.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[1];
  v5 = v2[2];
  MEMORY[0x1B8C7D290](*v2);
  MEMORY[0x1B8C7D290](*(v4 + 16));
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = (v4 + 32);
    do
    {
      v8 = *v7++;
      MEMORY[0x1B8C7D2C0](v8);
      --v6;
    }

    while (v6);
  }

  return sub_1B4A27684(a1, v5);
}

uint64_t RingsMilestonePropertyValue.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  MEMORY[0x1B8C7D290](*(v2 + 16));
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = (v2 + 32);
    do
    {
      v6 = *v5++;
      MEMORY[0x1B8C7D2C0](v6);
      --v4;
    }

    while (v4);
  }

  sub_1B4A27684(v8, v3);
  return sub_1B4D18EDC();
}

BOOL sub_1B4C6CB10(uint64_t a1)
{
  if (a1 > 999)
  {
    return __ROR8__(0x1CAC083126E978D5 * a1, 1) < 0x10624DD2F1A9FBFuLL;
  }

  result = 1;
  if (a1 <= 364)
  {
    if (a1 == 1 || a1 == 100)
    {
      return result;
    }

    return 0;
  }

  if (a1 != 365 && a1 != 500)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B4C6CB88()
{
  v2[9] = *v0;
  v3 = *(v0 + 8);
  sub_1B4D18E8C();
  RingsMilestonePropertyValue.hash(into:)(v2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C6CBE0()
{
  v2[9] = *v0;
  v3 = *(v0 + 8);
  sub_1B4D18E8C();
  RingsMilestonePropertyValue.hash(into:)(v2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C6CC30(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[2];
  v3 = a1[2];
  if ((sub_1B4A0A164(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_1B4A23AD4(v3, v2);
}

unint64_t sub_1B4C6CCC0()
{
  result = qword_1EB8AD5E0;
  if (!qword_1EB8AD5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD5E0);
  }

  return result;
}

unint64_t sub_1B4C6CD14()
{
  result = qword_1EB8AD5E8;
  if (!qword_1EB8AD5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD5E8);
  }

  return result;
}

unint64_t sub_1B4C6CD68()
{
  result = qword_1EB8AD5F0;
  if (!qword_1EB8AD5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD5F0);
  }

  return result;
}

unint64_t sub_1B4C6CDC0()
{
  result = qword_1EB8AD5F8;
  if (!qword_1EB8AD5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD5F8);
  }

  return result;
}

unint64_t sub_1B4C6CE14(uint64_t a1)
{
  result = sub_1B4B1A260();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4C6CE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4C6CEA4()
{
  result = qword_1EDC389B0;
  if (!qword_1EDC389B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC389B0);
  }

  return result;
}

unint64_t sub_1B4C6CEF8()
{
  result = qword_1EDC389C8[0];
  if (!qword_1EDC389C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC389C8);
  }

  return result;
}

unint64_t sub_1B4C6CF50()
{
  result = qword_1EDC389C0;
  if (!qword_1EDC389C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC389C0);
  }

  return result;
}

FitnessIntelligence::QueryMetrics __swiftcall QueryMetrics.init(processingDuration:waitingDuration:isSnapshotQuery:)(Swift::Double processingDuration, Swift::Double waitingDuration, Swift::Bool isSnapshotQuery)
{
  *v3 = processingDuration;
  *(v3 + 8) = waitingDuration;
  v4 = processingDuration + waitingDuration;
  *(v3 + 16) = isSnapshotQuery;
  *(v3 + 24) = v4;
  result.waitingDuration = waitingDuration;
  result.processingDuration = v4;
  result.isSnapshotQuery = isSnapshotQuery;
  return result;
}

uint64_t sub_1B4C6CFFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B4C6D050(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t static VitalsFact.queries(workoutVoiceWorkoutState:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4C6D490(v3, v1, v2);
}

uint64_t static VitalsFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B49C016C;

  return sub_1B4C6D66C(a1);
}

uint64_t VitalsFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4C6D22C()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C6D2B0()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4C6D30C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_1B4C6D38C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4C6D490(v3, v1, v2);
}

uint64_t sub_1B4C6D3CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B49C0344;

  return sub_1B4C6D66C(a1);
}

unint64_t sub_1B4C6D490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD640, &qword_1B4D42038);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD648, &unk_1B4D42040) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B4D1A800;
  (*(a3 + 80))(a2, a3);
  type metadata accessor for FitnessContextQueryDescriptor();
  swift_storeEnumTagMultiPayload();
  v14 = sub_1B4C961CC(v13);
  swift_setDeallocating();
  sub_1B4C6E21C(v13 + v12);
  swift_deallocClassInstance();
  (*(v5 + 8))(v9, a2);
  return v14;
}

uint64_t sub_1B4C6D68C()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  *(v0 + 16) = &type metadata for VitalsFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD630, &qword_1B4D42028);
  v31 = sub_1B4D181CC();
  v33 = v4;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0x6F43736C61746976, 0xED0000747865746ELL);
  (*(v3 + 8))(v31, v33, &type metadata for VitalsContext, &type metadata for VitalsContext, v2, v3);

  v5 = *(v0 + 32);
  v6 = v5 | (*(v0 + 36) << 32);
  if (v5 == 4)
  {
LABEL_44:
    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_46;
  }

  *(v0 + 36);
  v7 = MEMORY[0x1E69E7CC0];
  if (*(v0 + 32) != 3)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF29C(0, 1, 1);
    v7 = v32;
    v9 = *(v32 + 16);
    v8 = *(v32 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_1B4BCF29C((v8 > 1), v9 + 1, 1);
      v7 = v32;
    }

    *(v7 + 16) = v9 + 1;
    *(v7 + v9 + 32) = v6;
  }

  if (BYTE1(v6) != 3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B4BCF29C(0, *(v7 + 16) + 1, 1);
    }

    v11 = *(v7 + 16);
    v10 = *(v7 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1B4BCF29C((v10 > 1), v11 + 1, 1);
    }

    *(v7 + 16) = v11 + 1;
    *(v7 + v11 + 32) = BYTE1(v6);
  }

  if (BYTE2(v6) != 3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B4BCF29C(0, *(v7 + 16) + 1, 1);
    }

    v13 = *(v7 + 16);
    v12 = *(v7 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1B4BCF29C((v12 > 1), v13 + 1, 1);
    }

    *(v7 + 16) = v13 + 1;
    *(v7 + v13 + 32) = BYTE2(v6);
  }

  if (BYTE3(v6) != 3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B4BCF29C(0, *(v7 + 16) + 1, 1);
    }

    v15 = *(v7 + 16);
    v14 = *(v7 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1B4BCF29C((v14 > 1), v15 + 1, 1);
    }

    *(v7 + 16) = v15 + 1;
    *(v7 + v15 + 32) = BYTE3(v6);
  }

  if (HIDWORD(v6) != 3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B4BCF29C(0, *(v7 + 16) + 1, 1);
    }

    v23 = *(v7 + 16);
    v22 = *(v7 + 24);
    v16 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      sub_1B4BCF29C((v22 > 1), v23 + 1, 1);
    }

    *(v7 + 16) = v16;
    *(v7 + v23 + 32) = BYTE4(v6);
    if (v16 >= 3)
    {
      goto LABEL_26;
    }

    goto LABEL_39;
  }

  v16 = *(v7 + 16);
  if (v16 < 3)
  {
LABEL_39:

    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v24 = sub_1B4D17F6C();
    __swift_project_value_buffer(v24, qword_1EDC3CED0);
    v25 = sub_1B4D17F5C();
    v26 = sub_1B4D1873C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = 3;
      _os_log_impl(&dword_1B4953000, v25, v26, "Fewer than %ld available: not returning fact", v27, 0xCu);
      MEMORY[0x1B8C7DDA0](v27, -1, -1);
    }

    goto LABEL_44;
  }

LABEL_26:
  v17 = MEMORY[0x1E69E7CC0];
  v18 = 32;
  do
  {
    v21 = *(v7 + v18);
    if (v21 <= 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B4BCF29C(0, *(v17 + 16) + 1, 1);
      }

      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1B4BCF29C((v19 > 1), v20 + 1, 1);
      }

      *(v17 + 16) = v20 + 1;
      *(v17 + v20 + 32) = v21;
    }

    ++v18;
    --v16;
  }

  while (v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD638, &qword_1B4D42030);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B4D1A800;
  *(v28 + 32) = v6;
  *(v28 + 34) = BYTE2(v6);
  *(v28 + 35) = BYTE3(v6);
  *(v28 + 36) = BYTE4(v6);
  *(v28 + 40) = v17;
LABEL_46:
  v29 = *(v0 + 8);

  return v29(v28);
}

unint64_t _s19FitnessIntelligence10VitalsFactV10makePrompt15promptFormatterSSAA0fH0C_tF_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = MEMORY[0x1E69E7CC0];
  if (v1 < 2)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF29C(0, 1, 1);
    v6 = v20;
    v8 = *(v20 + 16);
    v7 = *(v20 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_1B4BCF29C((v7 > 1), v8 + 1, 1);
      v6 = v20;
    }

    *(v6 + 16) = v8 + 1;
    *(v6 + v8 + 32) = v1;
    if (v2 > 1)
    {
LABEL_3:
      if (v3 > 1)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if (v2 > 1)
  {
    goto LABEL_3;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B4BCF29C(0, *(v6 + 16) + 1, 1);
  }

  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (v10 >= v9 >> 1)
  {
    sub_1B4BCF29C((v9 > 1), v10 + 1, 1);
  }

  *(v6 + 16) = v10 + 1;
  *(v6 + v10 + 32) = v2;
  if (v3 > 1)
  {
LABEL_4:
    if (v4 > 1)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_14:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B4BCF29C(0, *(v6 + 16) + 1, 1);
  }

  v12 = *(v6 + 16);
  v11 = *(v6 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_1B4BCF29C((v11 > 1), v12 + 1, 1);
  }

  *(v6 + 16) = v12 + 1;
  *(v6 + v12 + 32) = v3;
  if (v4 <= 1)
  {
LABEL_19:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B4BCF29C(0, *(v6 + 16) + 1, 1);
    }

    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1B4BCF29C((v13 > 1), v14 + 1, 1);
    }

    *(v6 + 16) = v14 + 1;
    *(v6 + v14 + 32) = v4;
  }

LABEL_24:
  if (v5 <= 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B4BCF29C(0, *(v6 + 16) + 1, 1);
    }

    v16 = *(v6 + 16);
    v15 = *(v6 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1B4BCF29C((v15 > 1), v16 + 1, 1);
    }

    *(v6 + 16) = v16 + 1;
    *(v6 + v16 + 32) = v5;
    goto LABEL_31;
  }

  if (*(v6 + 16))
  {
LABEL_31:
    sub_1B4D1896C();
    MEMORY[0x1B8C7C620](0x67696E207473614CLL, 0xEC000000202C7468);
    v17 = *(v6 + 16);

    v18 = sub_1B4D18D5C();
    MEMORY[0x1B8C7C620](v18);

    MEMORY[0x1B8C7C620](0xD00000000000003ALL, 0x80000001B4D66280);
    return 0;
  }

  return 0xD000000000000044;
}

unint64_t sub_1B4C6DF7C()
{
  result = qword_1EB8AD600;
  if (!qword_1EB8AD600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD600);
  }

  return result;
}

unint64_t sub_1B4C6DFFC()
{
  result = qword_1EB8AD608;
  if (!qword_1EB8AD608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD608);
  }

  return result;
}

unint64_t sub_1B4C6E050()
{
  result = qword_1EB8AD610;
  if (!qword_1EB8AD610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD610);
  }

  return result;
}

unint64_t sub_1B4C6E0A8()
{
  result = qword_1EB8AD618;
  if (!qword_1EB8AD618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD618);
  }

  return result;
}

uint64_t sub_1B4C6E128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4C6E164()
{
  result = qword_1EB8AD620;
  if (!qword_1EB8AD620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD620);
  }

  return result;
}

unint64_t sub_1B4C6E1B8()
{
  result = qword_1EB8AD628;
  if (!qword_1EB8AD628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD628);
  }

  return result;
}

uint64_t sub_1B4C6E21C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD648, &unk_1B4D42040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 InferenceRequest.init(adapter:prompt:audioSynthesisSettings:telemetryIdentifier:requestIdentifier:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v29 = a5;
  v35 = a1;
  v36 = a2;
  v11 = sub_1B4D177CC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a3;
  v30 = a3[1];
  v31 = v16;
  v17 = *(a3 + 32);
  v18 = *a4;
  v33 = *(a4 + 16);
  v34 = v18;
  v19 = *(a4 + 40);
  v32 = *(a4 + 32);
  if (qword_1EB8A6498 != -1)
  {
    swift_once();
  }

  v20 = qword_1EB8AC698;
  v21 = unk_1EB8AC6A0;

  if (a6)
  {
    v22 = v29;
  }

  else
  {
    sub_1B4D177BC();
    v22 = sub_1B4D1779C();
    a6 = v23;
    (*(v12 + 8))(v15, v11);
  }

  v24 = sub_1B4BC2B00();
  v25 = v36;
  *a7 = v35;
  *(a7 + 8) = v25;
  v26 = v30;
  *(a7 + 16) = v31;
  *(a7 + 32) = v26;
  *(a7 + 48) = v17;
  *(a7 + 56) = v20;
  *(a7 + 64) = v21;
  result = v34;
  *(a7 + 88) = v33;
  *(a7 + 72) = result;
  *(a7 + 104) = v32;
  *(a7 + 112) = v19;
  *(a7 + 120) = v22;
  *(a7 + 128) = a6;
  *(a7 + 136) = v24 & 1;
  return result;
}

uint64_t InferenceRequest.prompt.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InferenceRequest.audioSynthesisSettings.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 48);
  return sub_1B4C6E80C(v2, v3);
}

uint64_t InferenceRequest.osBuildVersion.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t InferenceRequest.telemetryIdentifier.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v6 = v1[13];
  v7 = v1[14];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1B4C6E81C(v2, v3);
}

uint64_t InferenceRequest.requestIdentifier.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

__n128 InferenceRequest.init(adapter:prompt:audioSynthesisSettings:telemetryIdentifier:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v32 = a1;
  v33 = a2;
  v8 = sub_1B4D177CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  v27 = a3[1];
  v28 = v13;
  v14 = *(a3 + 32);
  v15 = *a4;
  v30 = *(a4 + 16);
  v31 = v15;
  v16 = *(a4 + 32);
  v29 = *(a4 + 40);
  if (qword_1EB8A6498 != -1)
  {
    swift_once();
  }

  v17 = qword_1EB8AC698;
  v18 = unk_1EB8AC6A0;

  sub_1B4D177BC();
  v19 = sub_1B4D1779C();
  v21 = v20;
  (*(v9 + 8))(v12, v8);
  v22 = sub_1B4BC2B00();
  v23 = v33;
  *a5 = v32;
  *(a5 + 8) = v23;
  v24 = v27;
  *(a5 + 16) = v28;
  *(a5 + 32) = v24;
  *(a5 + 48) = v14;
  *(a5 + 56) = v17;
  *(a5 + 64) = v18;
  result = v31;
  *(a5 + 88) = v30;
  *(a5 + 72) = result;
  v26 = v29;
  *(a5 + 104) = v16;
  *(a5 + 112) = v26;
  *(a5 + 120) = v19;
  *(a5 + 128) = v21;
  *(a5 + 136) = v22 & 1;
  return result;
}

uint64_t InferenceRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 48);
  v4 = *(v0 + 136);
  sub_1B4D1896C();
  MEMORY[0x1B8C7C620](0xD000000000000011, 0x80000001B4D662C0);
  sub_1B4D18A8C();
  MEMORY[0x1B8C7C620](8236, 0xE200000000000000);
  MEMORY[0x1B8C7C620](v1, v2);
  MEMORY[0x1B8C7C620](8236, 0xE200000000000000);
  v10 = *(v0 + 2);
  v9 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD650, &qword_1B4D42050);
  v5 = sub_1B4D187FC();
  MEMORY[0x1B8C7C620](v5);

  MEMORY[0x1B8C7C620](0x6D6165727473202CLL, 0xE900000000000020);
  if (v4)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v4)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1B8C7C620](v6, v7);

  return 0;
}

uint64_t sub_1B4C6E80C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_1B49B3D28(a1, a2);
  }

  return a1;
}

uint64_t sub_1B4C6E81C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19FitnessIntelligence22AudioSynthesisSettingsVSg(uint64_t a1)
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

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1B4C6E8C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_1B4C6E90C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

FitnessIntelligence::WeeklySummaryContext __swiftcall WeeklySummaryContext.init(currentWeekSummaries:previousWeekSummaries:)(Swift::OpaquePointer currentWeekSummaries, Swift::OpaquePointer previousWeekSummaries)
{
  v2->_rawValue = currentWeekSummaries._rawValue;
  v2[1]._rawValue = previousWeekSummaries._rawValue;
  result.previousWeekSummaries = previousWeekSummaries;
  result.currentWeekSummaries = currentWeekSummaries;
  return result;
}

uint64_t sub_1B4C6E9B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B497558C(v4, v15);
      v6 = v16;
      v7 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      v8 = PromptFormatable.promptString(formatter:)(a2, v6, v7);
      if (v9)
      {
        MEMORY[0x1B8C7C620](v8);

        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1B4A1D690(0, *(v5 + 2) + 1, 1, v5);
        }

        v11 = *(v5 + 2);
        v10 = *(v5 + 3);
        if (v11 >= v10 >> 1)
        {
          v5 = sub_1B4A1D690((v10 > 1), v11 + 1, 1, v5);
        }

        *(v5 + 2) = v11 + 1;
        v12 = &v5[16 * v11];
        *(v12 + 4) = 8237;
        *(v12 + 5) = 0xE200000000000000;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
      }

      v4 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v15[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B38, &qword_1B4D36300);
  sub_1B4C6EB78();
  v13 = sub_1B4D180DC();

  return v13;
}

unint64_t sub_1B4C6EB78()
{
  result = qword_1EDC378E8;
  if (!qword_1EDC378E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A7B38, &qword_1B4D36300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC378E8);
  }

  return result;
}

unint64_t sub_1B4C6EBF0()
{
  result = qword_1EB8AD658;
  if (!qword_1EB8AD658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD658);
  }

  return result;
}

unint64_t sub_1B4C6EC48()
{
  result = qword_1EB8AD660;
  if (!qword_1EB8AD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD660);
  }

  return result;
}

uint64_t sub_1B4C6ECA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4C6ED48, 0, 0);
}

uint64_t sub_1B4C6ED48()
{
  v1 = v0[6];
  sub_1B4992854(v0[4], v1);
  v2 = type metadata accessor for WorkoutState();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1B4994820;
  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[2];
  v6 = v0[3];

  return sub_1B4CAC990(v7, v6, v4, v5);
}

uint64_t WorkoutDictionaryPropertyValue.protobuf()(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  sub_1B4C71980(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  return sub_1B4D17DAC();
}

uint64_t WorkoutDictionaryPropertyValue.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v8 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD668, &qword_1B4D42230);
  swift_getTupleTypeMetadata2();
  sub_1B4C702D8();
  sub_1B4D182BC();
  if (v2)
  {
    sub_1B4C71770(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  }

  else
  {

    sub_1B4D184BC();
    swift_getWitnessTable();
    v5 = sub_1B4D17FCC();
    v6 = a1[1];
    result = sub_1B4C71770(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    *a2 = v5;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_1B4C6F094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v96 = a5;
  v100 = a4;
  v102 = a1;
  v92 = a6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v94 = (&v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E90, &unk_1B4D25C60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v89 = &v82 - v13;
  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v87 = *(v14 - 8);
  v88 = v14;
  v15 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = a3;
  v82 = *(a3 - 8);
  v17 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v91 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B4D1880C();
  v85 = *(v20 - 8);
  v86 = v20;
  v21 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v82 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA0, &unk_1B4D42260);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v84 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v82 - v28;
  v30 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v83 = (&v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v82 - v35;
  v37 = a2;
  v99 = *(a2 - 8);
  v38 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v95 = &v82 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v8;
  v42 = v41;
  sub_1B4974FBC(v102 + *(v8 + 20), v29, &qword_1EB8A7EA0, &unk_1B4D42260);
  v43 = *(v31 + 48);
  if (v43(v29, 1, v42) == 1)
  {
    *v36 = 0;
    *(v36 + 1) = 0;
    v36[16] = -1;
    v44 = &v36[*(v42 + 20)];
    sub_1B4D17BBC();
    if (v43(v29, 1, v42) != 1)
    {
      sub_1B4975024(v29, &qword_1EB8A7EA0, &unk_1B4D42260);
    }
  }

  else
  {
    sub_1B4C717D0(v29, v36, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  }

  v45 = v37;
  v46 = v98;
  v47 = v96;
  sub_1B4C6FAEC(v36, v101);
  sub_1B4C71770(v36, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
  v48 = swift_dynamicCast();
  v49 = v99;
  v50 = *(v99 + 56);
  if (v48)
  {
    v50(v23, 0, 1, v45);
    v94 = *(v49 + 32);
    v94(v95, v23, v45);
    v51 = v89;
    sub_1B4974FBC(v102 + *(v93 + 24), v89, &qword_1EB8A7E90, &unk_1B4D25C60);
    v52 = v88;
    v53 = *(v87 + 48);
    if (v53(v51, 1, v88) == 1)
    {
      v54 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
      v55 = v52;
      v56 = v90;
      (*(*(v54 - 8) + 56))(v90, 1, 1, v54);
      v57 = v56 + *(v55 + 20);
      sub_1B4D17BBC();
      v58 = v53(v51, 1, v55);
      v59 = v97;
      if (v58 != 1)
      {
        sub_1B4975024(v51, &qword_1EB8A7E90, &unk_1B4D25C60);
      }
    }

    else
    {
      v56 = v90;
      sub_1B4C717D0(v51, v90, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
      v59 = v97;
    }

    v71 = v91;
    sub_1B4C6FE54(v56, v45, v46, v100, v47, v91);
    sub_1B4C71770(v56, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    if (v59)
    {
      return (*(v99 + 8))(v95, v45);
    }

    else
    {
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v74 = *(TupleTypeMetadata2 + 48);
      v75 = v46;
      v76 = v92;
      v94(v92, v95, v45);
      (*(v82 + 32))(&v76[v74], v71, v75);
      return (*(*(TupleTypeMetadata2 - 8) + 56))(v76, 0, 1, TupleTypeMetadata2);
    }
  }

  else
  {
    v100 = v42;
    v50(v23, 1, 1, v45);
    (*(v85 + 8))(v23, v86);
    if (qword_1EDC3CBB8[0] != -1)
    {
      swift_once();
    }

    v60 = sub_1B4D17F6C();
    __swift_project_value_buffer(v60, qword_1EDC37A40);
    v61 = v94;
    sub_1B4C7170C(v102, v94);
    v62 = sub_1B4D17F5C();
    v63 = sub_1B4D1871C();
    if (os_log_type_enabled(v62, v63))
    {
      LODWORD(v102) = v63;
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v101[0] = v65;
      *v64 = 136315138;
      v66 = v61 + *(v93 + 20);
      v67 = v84;
      sub_1B4974FBC(v66, v84, &qword_1EB8A7EA0, &unk_1B4D42260);
      v68 = v100;
      if (v43(v67, 1, v100) == 1)
      {
        v69 = v83;
        *v83 = 0;
        v69[1] = 0;
        *(v69 + 16) = -1;
        v70 = v69 + *(v68 + 20);
        sub_1B4D17BBC();
        if (v43(v67, 1, v68) != 1)
        {
          sub_1B4975024(v67, &qword_1EB8A7EA0, &unk_1B4D42260);
        }
      }

      else
      {
        sub_1B4C717D0(v67, v83, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
      }

      v77 = sub_1B4D181AC();
      v79 = v78;
      sub_1B4C71770(v94, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
      v80 = sub_1B49558AC(v77, v79, v101);

      *(v64 + 4) = v80;
      _os_log_impl(&dword_1B4953000, v62, v102, "Unexpected key = %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x1B8C7DDA0](v65, -1, -1);
      MEMORY[0x1B8C7DDA0](v64, -1, -1);
    }

    else
    {

      sub_1B4C71770(v61, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
    }

    v81 = swift_getTupleTypeMetadata2();
    return (*(*(v81 - 8) + 56))(v92, 1, 1, v81);
  }
}

void sub_1B4C6FAEC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27[-v10];
  v12 = *a1;
  v13 = *(a1 + 16);
  if (v13 > 2)
  {
    if (v13 != 3)
    {
      if (v13 == 4)
      {
        v18 = *a1;
        v19 = [objc_opt_self() meters];
        *(a2 + 24) = v4;
        __swift_allocate_boxed_opaque_existential_1(a2);
        sub_1B499221C();
        sub_1B4D1741C();
        return;
      }

      goto LABEL_17;
    }

    v23 = *a1;
    v24 = [objc_opt_self() meters];
    sub_1B499221C();
    sub_1B4D1741C();
    (*(v5 + 16))(v8, v11, v4);
    DistanceReference.init(rawValue:)(v8, &v29);
    v25 = v29;
    if (v29 == 16)
    {
      (*(v5 + 8))(v11, v4);
LABEL_17:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }

    *(a2 + 24) = &type metadata for DistanceReference;
    *a2 = v25;
    (*(v5 + 8))(v11, v4);
  }

  else
  {
    if (!*(a1 + 16))
    {
      v20 = *(a1 + 8);

      v21._countAndFlagsBits = v12;
      v21._object = v20;
      DayOfWeek.init(rawValue:)(v21);
      v22 = v28;
      if (v28 != 7)
      {
        *(a2 + 24) = &type metadata for DayOfWeek;
        *a2 = v22;
        return;
      }

      goto LABEL_17;
    }

    if (v13 == 1)
    {
      if (v12 >= 0x18)
      {
        if (qword_1EDC3CEC8 != -1)
        {
          swift_once();
        }

        v14 = sub_1B4D17F6C();
        __swift_project_value_buffer(v14, qword_1EDC3CED0);
        v15 = sub_1B4D17F5C();
        v16 = sub_1B4D1871C();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 134217984;
          *(v17 + 4) = v12;
          _os_log_impl(&dword_1B4953000, v15, v16, "Invalid hourOfDay: %lld", v17, 0xCu);
          MEMORY[0x1B8C7DDA0](v17, -1, -1);
        }

        goto LABEL_17;
      }

      *(a2 + 24) = &type metadata for HourOfDay;
    }

    else
    {
      type metadata accessor for _HKPrivateWeatherCondition(0);
      *(a2 + 24) = v26;
    }

    *a2 = v12;
  }
}

uint64_t sub_1B4C6FE54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a2;
  v32 = a4;
  v28[1] = a6;
  v8 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1B4D1880C();
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v30 = *(AssociatedTypeWitness - 8);
  v14 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v28 - v19;
  v21 = v34;
  result = sub_1B4C7149C(a1, v33);
  if (!v21)
  {
    v23 = v29;
    v34 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
    v24 = swift_dynamicCast();
    v25 = v30;
    v26 = *(v30 + 56);
    if (v24)
    {
      v26(v13, 0, 1, AssociatedTypeWitness);
      (*(v25 + 32))(v20, v13, AssociatedTypeWitness);
      (*(v25 + 16))(v17, v20, AssociatedTypeWitness);
      (*(v8 + 40))(v17, a3, v8);
      return (*(v25 + 8))(v20, AssociatedTypeWitness);
    }

    else
    {
      v26(v13, 1, 1, AssociatedTypeWitness);
      (*(v23 + 8))(v13, v10);
      sub_1B4BF5D40();
      swift_allocError();
      *v27 = 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B4C70150(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[1] = a2;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v17[6] = sub_1B4C71838;
  v17[7] = &v18;
  v10 = sub_1B4D1801C();
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1B498D2F0(sub_1B4C71858, v17, v10, v11, v12, WitnessTable, MEMORY[0x1E69E7288], v23);

  if (!v7)
  {
    v16 = *a1;

    *a1 = v14;
    a1[1] = a3;
  }

  return result;
}

unint64_t sub_1B4C702D8()
{
  result = qword_1EB8AD670;
  if (!qword_1EB8AD670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AD668, &qword_1B4D42230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD670);
  }

  return result;
}

uint64_t sub_1B4C703CC()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  sub_1B4C71980(qword_1EDC3A650, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C704AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a3;
  v35 = a1;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a4;
  v37 = a5;
  v43 = a4;
  v44 = a5;
  v40 = a6;
  v41 = a7;
  v45 = a6;
  v46 = a7;
  v39 = a2;
  v47 = a2;
  sub_1B4C71980(&qword_1EDC3A6F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  v20 = v48;
  result = sub_1B4D17DAC();
  if (!v20)
  {
    v22 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
    v23 = v35;
    v24 = v12;
    v25 = *(v22 + 20);
    sub_1B4975024(v35 + v25, &qword_1EB8A7EA0, &unk_1B4D42260);
    sub_1B4C717D0(v19, v23 + v25, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
    v26 = v23;
    v27 = (*(v16 + 56))(v23 + v25, 0, 1, v15);
    MEMORY[0x1EEE9AC00](v27);
    v28 = v37;
    *(&v33 - 6) = v36;
    *(&v33 - 5) = v28;
    v29 = v41;
    *(&v33 - 4) = v40;
    *(&v33 - 3) = v29;
    v30 = v39;
    *(&v33 - 2) = v38;
    *(&v33 - 1) = v30;
    sub_1B4C71980(qword_1EDC3A7A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    v31 = v42;
    sub_1B4D17DAC();
    v32 = *(v22 + 24);
    sub_1B4975024(v26 + v32, &qword_1EB8A7E90, &unk_1B4D25C60);
    sub_1B4C717D0(v31, v26 + v32, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    return (*(v34 + 56))(v26 + v32, 0, 1, v24);
  }

  return result;
}

uint64_t sub_1B4C7080C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v61 = *(v64 - 8);
  v6 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v60 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v60 - v12;
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v60 = &v60 - v19;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v60 - v22;
  v24 = *(v13 + 16);
  v24(&v60 - v22, a2, a3, v21);
  if (swift_dynamicCast())
  {
    v25 = *&aMonday_1[8 * v67];
    v26 = qword_1B4D42370[v67];
    sub_1B4A1F5C0(*a1, *(a1 + 8), *(a1 + 16));
    *a1 = v25;
    *(a1 + 8) = v26;
    *(a1 + 16) = 0;
    return (*(v13 + 8))(v23, a3);
  }

  if (swift_dynamicCast())
  {
    v27 = v67;
    sub_1B4A1F5C0(*a1, *(a1 + 8), *(a1 + 16));
    *a1 = v27;
    *(a1 + 8) = 0;
    v28 = 1;
LABEL_11:
    *(a1 + 16) = v28;
    return (*(v13 + 8))(v23, a3);
  }

  type metadata accessor for _HKPrivateWeatherCondition(0);
  if (swift_dynamicCast())
  {
    v29 = v67;
    sub_1B4A1F5C0(*a1, *(a1 + 8), *(a1 + 16));
    *a1 = v29;
    *(a1 + 8) = 0;
    v28 = 2;
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v66 = v67;
    DistanceReference.rawValue.getter();
    sub_1B499221C();
    v30 = [swift_getObjCClassFromMetadata() baseUnit];
    v32 = v63;
    v31 = v64;
    sub_1B4D1745C();

    v33 = *(v61 + 8);
    v33(v62, v31);
    sub_1B4D1742C();
    v35 = v34;
    v33(v32, v31);
    sub_1B4A1F5C0(*a1, *(a1 + 8), *(a1 + 16));
    *a1 = v35;
    *(a1 + 8) = 0;
    v28 = 3;
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v36 = v61;
    v37 = v64;
    (*(v61 + 32))(v63, v8, v64);
    sub_1B499221C();
    v38 = [swift_getObjCClassFromMetadata() baseUnit];
    v39 = v62;
    sub_1B4D1745C();

    sub_1B4D1742C();
    v41 = v40;
    v42 = *(v36 + 8);
    v42(v39, v37);
    v42(v63, v37);
    sub_1B4A1F5C0(*a1, *(a1 + 8), *(a1 + 16));
    *a1 = v41;
    *(a1 + 8) = 0;
    v28 = 4;
    goto LABEL_11;
  }

  if (qword_1EDC3CBB8[0] != -1)
  {
    swift_once();
  }

  v44 = sub_1B4D17F6C();
  __swift_project_value_buffer(v44, qword_1EDC37A40);
  v45 = v60;
  (v24)(v60, a2, a3);
  v46 = sub_1B4D17F5C();
  v47 = sub_1B4D1871C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v64 = v48;
    v65 = swift_slowAlloc();
    v67 = v65;
    *v48 = 136315138;
    v49 = v60;
    (v24)(v17, v60, a3);
    v50 = sub_1B4D181AC();
    v52 = v51;
    LODWORD(v63) = v47;
    v53 = *(v13 + 8);
    v53(v49, a3);
    v54 = sub_1B49558AC(v50, v52, &v67);

    v55 = v64;
    *(v64 + 4) = v54;
    v56 = v53;
    v57 = v55;
    _os_log_impl(&dword_1B4953000, v46, v63, "Unexpected key = %s", v55, 0xCu);
    v58 = v65;
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    MEMORY[0x1B8C7DDA0](v58, -1, -1);
    MEMORY[0x1B8C7DDA0](v57, -1, -1);
  }

  else
  {

    v56 = *(v13 + 8);
    v56(v45, a3);
  }

  sub_1B4BF5D40();
  swift_allocError();
  *v59 = 0;
  swift_willThrow();
  return (v56)(v23, a3);
}

uint64_t sub_1B4C70E84(NSObject *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v64 = a3;
  v65 = a4;
  v67 = a1;
  v62 = *(a4 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v61 = &v59[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v59[-v12];
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v59[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v59[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *(a7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = *(AssociatedTypeWitness - 8);
  v22 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24 = &v59[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v59[-v27];
  v29 = v69;
  result = (*(v20 + 32))(a5, v20, v26);
  if (!v29)
  {
    v31 = v66;
    v32 = v67;
    v69 = 0;
    (*(v66 + 16))(v24, v28, AssociatedTypeWitness);
    v33 = AssociatedTypeWitness;
    v34 = v31;
    if (swift_dynamicCast())
    {
      v35 = v24;
      v36 = *(v31 + 8);
      v36(v28, v33);
      v37 = v32;
      sub_1B4975024(v32, &qword_1EB8A7E80, &unk_1B4D25C50);
      sub_1B4C717D0(v68, v32, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
LABEL_6:
      v39 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v39 - 8) + 56))(v37, 0, 1, v39);
      return (v36)(v35, v33);
    }

    if (swift_dynamicCast())
    {
      v35 = v24;
      v38 = v16;
      v36 = *(v34 + 8);
      v36(v28, v33);
      v37 = v32;
      sub_1B4975024(v32, &qword_1EB8A7E80, &unk_1B4D25C50);
      sub_1B4C717D0(v38, v32, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      goto LABEL_6;
    }

    v68 = v33;
    v69 = v28;
    if (qword_1EDC3CBB8[0] != -1)
    {
      swift_once();
    }

    v40 = sub_1B4D17F6C();
    __swift_project_value_buffer(v40, qword_1EDC37A40);
    v41 = v62;
    v42 = v63;
    v43 = *(v62 + 16);
    v44 = v65;
    v43(v63, v64, v65);
    v45 = sub_1B4D17F5C();
    v46 = sub_1B4D1871C();
    v67 = v45;
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v70 = v64;
      *v47 = 136315138;
      v60 = v46;
      v43(v61, v42, v44);
      v48 = sub_1B4D181AC();
      v50 = v49;
      (*(v41 + 8))(v42, v44);
      v51 = sub_1B49558AC(v48, v50, &v70);

      v52 = v47;
      *(v47 + 4) = v51;
      v53 = v67;
      v54 = v52;
      _os_log_impl(&dword_1B4953000, v67, v60, "Unexpected value = %s", v52, 0xCu);
      v55 = v64;
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      MEMORY[0x1B8C7DDA0](v55, -1, -1);
      MEMORY[0x1B8C7DDA0](v54, -1, -1);
    }

    else
    {

      (*(v41 + 8))(v42, v44);
    }

    sub_1B4BF5D40();
    swift_allocError();
    *v56 = 0;
    swift_willThrow();
    v57 = *(v34 + 8);
    v58 = v68;
    v57(v69, v68);
    return (v57)(v24, v58);
  }

  return result;
}

uint64_t sub_1B4C7149C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E80, &unk_1B4D25C50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v21 - v14;
  sub_1B4974FBC(a1, &v21 - v14, &qword_1EB8A7E80, &unk_1B4D25C50);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  result = (*(*(v16 - 8) + 48))(v15, 1, v16);
  if (result == 1)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
      sub_1B4C717D0(v15, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      *(a2 + 24) = v4;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      v20 = v7;
    }

    else
    {
      v18 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
      sub_1B4C717D0(v15, v11, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      *(a2 + 24) = v8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      v20 = v11;
    }

    return sub_1B4C717D0(v20, boxed_opaque_existential_1, v18);
  }

  return result;
}

uint64_t sub_1B4C716E8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return WorkoutDictionaryPropertyValue.init(_:)(a1, a3);
}

uint64_t sub_1B4C7170C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C71770(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4C717D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4C71838()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_1B4C703CC();
}

uint64_t sub_1B4C71858(uint64_t a1, void *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[6];
  v8 = v2[7];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v9(a1, a1 + *(TupleTypeMetadata2 + 48));
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_1B4C71904(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  return sub_1B4C7080C(a1, v1[6], v1[2]);
}

uint64_t sub_1B4C71980(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B4C719DC()
{
  result = qword_1EB8AD678;
  if (!qword_1EB8AD678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD678);
  }

  return result;
}

uint64_t WorkoutVoiceFastestRecordFact.init(type:value:distance:pace:timescale:activityType:identifier:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v16 = *a5;
  *a9 = *a1;
  v17 = type metadata accessor for WorkoutVoiceFastestRecordFact();
  sub_1B498B270(a2, &a9[v17[5]], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B498B270(a3, &a9[v17[6]], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  result = sub_1B498B270(a4, &a9[v17[7]], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  a9[v17[8]] = v16;
  *&a9[v17[9]] = a6;
  v19 = &a9[v17[10]];
  *v19 = a7;
  v19[1] = a8;
  return result;
}

uint64_t type metadata accessor for WorkoutVoiceFastestRecordFact()
{
  result = qword_1EB8AD698;
  if (!qword_1EB8AD698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id WorkoutVoiceFastestRecordFact.activityType.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutVoiceFastestRecordFact() + 36));

  return v1;
}

uint64_t WorkoutVoiceFastestRecordFact.timescale.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WorkoutVoiceFastestRecordFact();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t WorkoutVoiceFastestRecordFact.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutVoiceFastestRecordFact() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

unint64_t sub_1B4C71CF8()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0xD000000000000013;
  if (v1 != 5)
  {
    v3 = 0x696669746E656469;
  }

  v4 = 1701011824;
  if (v1 != 3)
  {
    v4 = 0x6C616373656D6974;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x65756C6176;
  if (v1 != 1)
  {
    v5 = 0x65636E6174736964;
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

uint64_t sub_1B4C71DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4C73970(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4C71DF4(uint64_t a1)
{
  v2 = sub_1B4C73600();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C71E30(uint64_t a1)
{
  v2 = sub_1B4C73600();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutVoiceFastestRecordFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD680, &qword_1B4D423A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4C73600();
  sub_1B4D18EFC();
  LOBYTE(v20) = *v3;
  v21 = 0;
  sub_1B4B59AD0();
  sub_1B4D18D0C();
  if (!v2)
  {
    v19 = type metadata accessor for WorkoutVoiceFastestRecordFact();
    v11 = v19[5];
    LOBYTE(v20) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10);
    sub_1B4D18CAC();
    v12 = v19[6];
    LOBYTE(v20) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B49B0578(&qword_1EB8A6EE8, &qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B4D18CAC();
    v13 = v19[7];
    LOBYTE(v20) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
    sub_1B49B0578(&qword_1EB8A71E8, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
    sub_1B4D18CAC();
    LOBYTE(v20) = v3[v19[8]];
    v21 = 4;
    sub_1B4B59B24();
    sub_1B4D18D0C();
    v20 = *&v3[v19[9]];
    v21 = 5;
    v14 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    sub_1B49B0578(&qword_1EB8A6FA0, &qword_1EB8A6F98, &qword_1B4D2CA80);
    sub_1B4D18D0C();

    v15 = &v3[v19[10]];
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v20) = 6;
    sub_1B4D18CBC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t WorkoutVoiceFastestRecordFact.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD690, &qword_1B4D423B0);
  v15 = *(v14 - 8);
  v39 = v14;
  v40 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  v19 = type metadata accessor for WorkoutVoiceFastestRecordFact();
  v20 = *(*(v19 - 1) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v24 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1B4C73600();
  v25 = v41;
  sub_1B4D18EEC();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v42);
  }

  v41 = v9;
  v44 = 0;
  sub_1B4B59B78();
  v26 = v39;
  sub_1B4D18C0C();
  v27 = v22;
  *v22 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  LOBYTE(v43) = 1;
  sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B4D18BAC();
  v28 = v40;
  sub_1B498B270(v13, &v27[v19[5]], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  LOBYTE(v43) = 2;
  sub_1B49B0578(&qword_1EB8A6F28, &qword_1EB8A6830, &unk_1B4D1AB40);
  v29 = v41;
  sub_1B4D18BAC();
  sub_1B498B270(v29, &v27[v19[6]], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  LOBYTE(v43) = 3;
  sub_1B49B0578(&qword_1EB8A7200, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v30 = v38;
  sub_1B4D18BAC();
  sub_1B498B270(v30, &v27[v19[7]], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v44 = 4;
  sub_1B4B59BCC();
  sub_1B4D18C0C();
  v41 = 0;
  *v19[8] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
  v44 = 5;
  sub_1B49B0578(&qword_1EB8A6FB0, &qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B4D18C0C();
  *v19[9] = v43;
  LOBYTE(v43) = 6;
  v31 = sub_1B4D18BBC();
  v33 = v32;
  (*(v28 + 8))(v18, v26);
  v34 = v19[10];
  *v34 = v31;
  v34[1] = v33;
  sub_1B4C73654(0, v37);
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  return sub_1B4C736B8(0);
}

uint64_t _s19FitnessIntelligence29WorkoutVoiceFastestRecordFactV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v104 = *(v4 - 8);
  v105 = v4;
  v5 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v102 = &v97 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v109 = &v97 - v9;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9E18, &unk_1B4D2C410);
  v10 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v110 = &v97 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v106 = &v97 - v14;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F50, &qword_1B4D425A0);
  v15 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v97 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v97 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v97 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F60, &qword_1B4D2C420);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v97 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v97 - v35;
  v38 = *a1;
  v39 = *a2;
  if (v38 <= 0x11)
  {
    if (v38 == 16)
    {
      if (v39 != 16)
      {
        goto LABEL_31;
      }

      goto LABEL_16;
    }

    if (v38 == 17)
    {
      if (v39 != 17)
      {
        goto LABEL_31;
      }

      goto LABEL_16;
    }

LABEL_10:
    if ((v39 & 0xFC) == 0x10)
    {
      goto LABEL_31;
    }

    v113 = v38;
    v112 = v39;
    v100 = a1;
    v101 = v36;
    v99 = &v97 - v35;
    DistanceReference.rawValue.getter();
    DistanceReference.rawValue.getter();
    sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
    LODWORD(v98) = sub_1B4D1816C();
    v111 = a2;
    v40 = *(v101 + 8);
    v40(v33, v30);
    v40(v99, v30);
    v37 = v99;
    a1 = v100;
    v36 = v101;
    a2 = v111;
    if ((v98 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_16;
  }

  if (v38 != 18)
  {
    if (v38 == 19)
    {
      if (v39 != 19)
      {
        goto LABEL_31;
      }

      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v39 != 18)
  {
    goto LABEL_31;
  }

LABEL_16:
  v99 = v37;
  v101 = v36;
  v111 = a2;
  v98 = type metadata accessor for WorkoutVoiceFastestRecordFact();
  v41 = *(v98 + 20);
  v42 = *(v26 + 48);
  v100 = a1;
  sub_1B4974FBC(&a1[v41], v29, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B4974FBC(&v111[v41], &v29[v42], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  v43 = *(v18 + 48);
  if (v43(v29, 1, v17) == 1)
  {
    if (v43(&v29[v42], 1, v17) == 1)
    {
      sub_1B4975024(v29, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      goto LABEL_24;
    }

LABEL_21:
    v44 = &qword_1EB8A6F60;
    v45 = &qword_1B4D2C420;
LABEL_22:
    v46 = v29;
LABEL_30:
    sub_1B4975024(v46, v44, v45);
    goto LABEL_31;
  }

  sub_1B4974FBC(v29, v25, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if (v43(&v29[v42], 1, v17) == 1)
  {
    (*(v18 + 8))(v25, v17);
    goto LABEL_21;
  }

  (*(v18 + 32))(v21, &v29[v42], v17);
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
  v47 = sub_1B4D1816C();
  v48 = *(v18 + 8);
  v48(v21, v17);
  v48(v25, v17);
  sub_1B4975024(v29, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if ((v47 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_24:
  v49 = v98;
  v50 = *(v98 + 24);
  v51 = v108;
  v52 = *(v107 + 48);
  sub_1B4974FBC(&v100[v50], v108, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(&v111[v50], v51 + v52, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v53 = *(v101 + 48);
  if (v53(v51, 1, v30) == 1)
  {
    v54 = v53(v51 + v52, 1, v30);
    v55 = v109;
    v29 = v110;
    if (v54 == 1)
    {
      sub_1B4975024(v51, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      goto LABEL_34;
    }

LABEL_29:
    v44 = &qword_1EB8A6F50;
    v45 = &qword_1B4D425A0;
    v46 = v51;
    goto LABEL_30;
  }

  v56 = v106;
  sub_1B4974FBC(v51, v106, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v57 = v53(v51 + v52, 1, v30);
  v55 = v109;
  v29 = v110;
  if (v57 == 1)
  {
    (*(v101 + 8))(v56, v30);
    goto LABEL_29;
  }

  v60 = v101;
  v61 = v51 + v52;
  v62 = v99;
  (*(v101 + 32))(v99, v61, v30);
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
  v63 = sub_1B4D1816C();
  v64 = *(v60 + 8);
  v64(v62, v30);
  v64(v56, v30);
  sub_1B4975024(v51, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((v63 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_34:
  v65 = v49[7];
  v66 = *(v103 + 48);
  sub_1B4974FBC(&v100[v65], v29, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4974FBC(&v111[v65], &v29[v66], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v68 = v104;
  v67 = v105;
  v69 = *(v104 + 48);
  if (v69(v29, 1, v105) == 1)
  {
    if (v69(&v29[v66], 1, v67) == 1)
    {
      sub_1B4975024(v29, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  sub_1B4974FBC(v29, v55, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if (v69(&v29[v66], 1, v67) == 1)
  {
    (*(v68 + 8))(v55, v67);
LABEL_39:
    v44 = &qword_1EB8A9E18;
    v45 = &unk_1B4D2C410;
    goto LABEL_22;
  }

  v70 = &v29[v66];
  v71 = v102;
  (*(v68 + 32))(v102, v70, v67);
  sub_1B49B0578(&qword_1EB8A71C8, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v72 = sub_1B4D1816C();
  v73 = *(v68 + 8);
  v73(v71, v67);
  v73(v55, v67);
  sub_1B4975024(v29, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if ((v72 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_41:
  v74 = v111;
  v75 = v100;
  if ((sub_1B4975E34(v100[v49[8]], v111[v49[8]]) & 1) == 0)
  {
    goto LABEL_31;
  }

  v76 = v49[9];
  v77 = *&v75[v76];
  v78 = *&v74[v76];
  objc_opt_self();
  v79 = swift_dynamicCastObjCClass();
  if (!v79 || (v80 = v79, objc_opt_self(), (v81 = swift_dynamicCastObjCClass()) == 0))
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    if (sub_1B4D187AC())
    {
      goto LABEL_48;
    }

LABEL_31:
    v58 = 0;
    return v58 & 1;
  }

  v82 = v81;
  v83 = v77;
  v84 = v78;
  [v80 coordinate];
  v86 = v85;
  [v82 coordinate];
  if (v86 != v87)
  {

    goto LABEL_31;
  }

  [v80 coordinate];
  v89 = v88;
  [v82 coordinate];
  v91 = v90;

  if (v89 != v91)
  {
    goto LABEL_31;
  }

LABEL_48:
  v92 = v49[10];
  v93 = &v100[v92];
  v94 = *&v100[v92];
  v95 = *&v100[v92 + 8];
  v96 = &v111[v92];
  if (*v93 == *v96 && v95 == *(v96 + 1))
  {
    v58 = 1;
  }

  else
  {
    v58 = sub_1B4D18DCC();
  }

  return v58 & 1;
}

unint64_t sub_1B4C73600()
{
  result = qword_1EB8AD688;
  if (!qword_1EB8AD688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD688);
  }

  return result;
}

uint64_t sub_1B4C73654(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceFastestRecordFact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C736B8(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutVoiceFastestRecordFact();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B4C7373C()
{
  sub_1B49AFCD8(319, &qword_1EDC3CB20, &qword_1EB8A6850, &unk_1B4D1BC10);
  if (v0 <= 0x3F)
  {
    sub_1B49AFCD8(319, &qword_1EDC3CB30, &qword_1EB8A6830, &unk_1B4D1AB40);
    if (v1 <= 0x3F)
    {
      sub_1B49AFCD8(319, &qword_1EDC37888, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
      if (v2 <= 0x3F)
      {
        sub_1B49B13FC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1B4C7386C()
{
  result = qword_1EB8AD6A8;
  if (!qword_1EB8AD6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD6A8);
  }

  return result;
}

unint64_t sub_1B4C738C4()
{
  result = qword_1EB8AD6B0;
  if (!qword_1EB8AD6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD6B0);
  }

  return result;
}

unint64_t sub_1B4C7391C()
{
  result = qword_1EB8AD6B8;
  if (!qword_1EB8AD6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD6B8);
  }

  return result;
}

uint64_t sub_1B4C73970(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701011824 && a2 == 0xE400000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C616373656D6974 && a2 == 0xE900000000000065 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t DayOfWeek.init(from:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_1B4D1794C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v9 = sub_1B4D1796C();
  __swift_project_value_buffer(v9, qword_1EDC3CE48);
  (*(v5 + 104))(v8, *MEMORY[0x1E6969AB0], v4);
  v10 = sub_1B4D1795C();
  (*(v5 + 8))(v8, v4);
  if ((v10 - 1) >= 7)
  {
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v12 = sub_1B4D17F6C();
    __swift_project_value_buffer(v12, qword_1EDC3CED0);
    v11 = sub_1B4D17F5C();
    v13 = sub_1B4D1871C();
    if (os_log_type_enabled(v11, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v10;
      _os_log_impl(&dword_1B4953000, v11, v13, "Invalid day of week: %ld", v14, 0xCu);
      MEMORY[0x1B8C7DDA0](v14, -1, -1);
    }

    LOBYTE(v11) = 7;
  }

  else
  {
    v11 = (0x5040302010006uLL >> (8 * (v10 - 1)));
  }

  v15 = sub_1B4D1777C();
  result = (*(*(v15 - 8) + 8))(a1, v15);
  *a2 = v11;
  return result;
}

uint64_t DayOfWeek.description.getter()
{
  v1 = 0x7961646E6F6DLL;
  v2 = *v0;
  v3 = 0x7961647275746173;
  if (v2 != 5)
  {
    v3 = 0x7961646E7573;
  }

  v4 = 0x7961647372756874;
  if (v2 != 3)
  {
    v4 = 0x796164697266;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x79616473657574;
  if (v2 != 1)
  {
    v5 = 0x616473656E646577;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

FitnessIntelligence::DayOfWeek_optional __swiftcall DayOfWeek.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

Swift::String_optional __swiftcall DayOfWeek.promptDescription()()
{
  v1 = sub_1B4D1794C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v47 - v8;
  v10 = sub_1B4D1777C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v47 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  v20 = *v0;
  sub_1B4D1776C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v21 = sub_1B4D1796C();
  __swift_project_value_buffer(v21, qword_1EDC3CE48);
  (*(v2 + 104))(v5, *MEMORY[0x1E6969A48], v1);
  sub_1B4D1790C();
  (*(v2 + 8))(v5, v1);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B497A590(v9);
    v22 = v20;
LABEL_9:
    v28 = *&aMonday_2[8 * v22];
    v29 = qword_1B4D42778[v22];
    (*(v11 + 8))(v19, v10);
    goto LABEL_10;
  }

  v23 = v47;
  (*(v11 + 32))(v47, v9, v10);
  v24 = *(v11 + 16);
  v24(v14, v19, v10);
  DayOfWeek.init(from:)(v14, &v49);
  v25 = v49;
  v22 = v20;
  if (v49 == 7)
  {
    (*(v11 + 8))(v23, v10);
    goto LABEL_9;
  }

  v24(v14, v23, v10);
  DayOfWeek.init(from:)(v14, &v48);
  v26 = v23;
  v27 = v48;
  if (v48 == 7)
  {
    (*(v11 + 8))(v26, v10);
    goto LABEL_9;
  }

  v32 = 0x7961646E6F6DLL;
  if (v20 <= 2u)
  {
    if (v20)
    {
      if (v20 == 1)
      {
        v33 = 0xE700000000000000;
        v34 = 0x79616473657574;
      }

      else
      {
        v34 = 0x616473656E646577;
        v33 = 0xE900000000000079;
      }
    }

    else
    {
      v33 = 0xE600000000000000;
      v34 = 0x7961646E6F6DLL;
    }
  }

  else if (v20 > 4u)
  {
    if (v20 == 5)
    {
      v33 = 0xE800000000000000;
      v34 = 0x7961647275746173;
    }

    else
    {
      v34 = 0x7961646E7573;
      v33 = 0xE600000000000000;
    }
  }

  else if (v20 == 3)
  {
    v33 = 0xE800000000000000;
    v34 = 0x7961647372756874;
  }

  else
  {
    v33 = 0xE600000000000000;
    v34 = 0x796164697266;
  }

  if (v25 <= 2)
  {
    if (v25)
    {
      if (v25 == 1)
      {
        v35 = 0xE700000000000000;
        v36 = 0x79616473657574;
      }

      else
      {
        v36 = 0x616473656E646577;
        v35 = 0xE900000000000079;
      }
    }

    else
    {
      v35 = 0xE600000000000000;
      v36 = 0x7961646E6F6DLL;
    }
  }

  else if (v25 > 4)
  {
    if (v25 == 5)
    {
      v35 = 0xE800000000000000;
      v36 = 0x7961647275746173;
    }

    else
    {
      v36 = 0x7961646E7573;
      v35 = 0xE600000000000000;
    }
  }

  else if (v25 == 3)
  {
    v35 = 0xE800000000000000;
    v36 = 0x7961647372756874;
  }

  else
  {
    v35 = 0xE600000000000000;
    v36 = 0x796164697266;
  }

  if (v34 == v36 && v33 == v35)
  {

LABEL_41:
    v38 = *(v11 + 8);
    v38(v47, v10);
    v38(v19, v10);
    v29 = 0xE500000000000000;
    v28 = 0x7961646F74;
    goto LABEL_10;
  }

  v37 = sub_1B4D18DCC();

  if (v37)
  {
    goto LABEL_41;
  }

  v29 = 0xE900000000000079;
  if (v20 <= 2u)
  {
    if (v20)
    {
      if (v20 == 1)
      {
        v39 = 0xE700000000000000;
        v40 = 0x79616473657574;
      }

      else
      {
        v40 = 0x616473656E646577;
        v39 = 0xE900000000000079;
      }
    }

    else
    {
      v39 = 0xE600000000000000;
      v40 = 0x7961646E6F6DLL;
    }
  }

  else if (v20 > 4u)
  {
    if (v20 == 5)
    {
      v39 = 0xE800000000000000;
      v40 = 0x7961647275746173;
    }

    else
    {
      v40 = 0x7961646E7573;
      v39 = 0xE600000000000000;
    }
  }

  else if (v20 == 3)
  {
    v39 = 0xE800000000000000;
    v40 = 0x7961647372756874;
  }

  else
  {
    v39 = 0xE600000000000000;
    v40 = 0x796164697266;
  }

  if (v27 <= 2)
  {
    if (v27)
    {
      if (v27 == 1)
      {
        v41 = 0xE700000000000000;
        v32 = 0x79616473657574;
      }

      else
      {
        v32 = 0x616473656E646577;
        v41 = 0xE900000000000079;
      }

      goto LABEL_68;
    }
  }

  else
  {
    if (v27 <= 4)
    {
      if (v27 == 3)
      {
        v41 = 0xE800000000000000;
        v32 = 0x7961647372756874;
      }

      else
      {
        v41 = 0xE600000000000000;
        v32 = 0x796164697266;
      }

      goto LABEL_68;
    }

    if (v27 == 5)
    {
      v41 = 0xE800000000000000;
      v32 = 0x7961647275746173;
      goto LABEL_68;
    }

    v32 = 0x7961646E7573;
  }

  v41 = 0xE600000000000000;
LABEL_68:
  v42 = v47;
  if (v40 == v32 && v39 == v41)
  {
  }

  else
  {
    v43 = sub_1B4D18DCC();

    if ((v43 & 1) == 0)
    {
      v28 = *&aMonday_2[8 * v22];
      v29 = qword_1B4D42778[v22];
      v45 = *(v11 + 8);
      v45(v42, v10);
      v45(v19, v10);
      goto LABEL_10;
    }
  }

  v44 = *(v11 + 8);
  v44(v42, v10);
  v44(v19, v10);
  v28 = 0x6164726574736579;
LABEL_10:
  v30 = v28;
  v31 = v29;
  result.value._object = v31;
  result.value._countAndFlagsBits = v30;
  return result;
}

uint64_t DayOfWeek.init(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21[-v6];
  v8 = sub_1B4D1777C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21[-v14];
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v16 = sub_1B4D1796C();
  __swift_project_value_buffer(v16, qword_1EDC3CE48);
  sub_1B4D178FC();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v17 = sub_1B4D175FC();
    (*(*(v17 - 8) + 8))(a1, v17);
    result = sub_1B497A590(v7);
    v19 = 7;
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    (*(v9 + 16))(v12, v15, v8);
    DayOfWeek.init(from:)(v12, &v22);
    v20 = sub_1B4D175FC();
    (*(*(v20 - 8) + 8))(a1, v20);
    result = (*(v9 + 8))(v15, v8);
    v19 = v22;
  }

  *a2 = v19;
  return result;
}

uint64_t sub_1B4C74A14()
{
  *v0;
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4C74BDC()
{
  v1 = 0x7961646E6F6DLL;
  v2 = *v0;
  v3 = 0x7961647275746173;
  if (v2 != 5)
  {
    v3 = 0x7961646E7573;
  }

  v4 = 0x7961647372756874;
  if (v2 != 3)
  {
    v4 = 0x796164697266;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x79616473657574;
  if (v2 != 1)
  {
    v5 = 0x616473656E646577;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

void sub_1B4C74CB4(uint64_t *a1@<X8>)
{
  v2 = 0x7961646E6F6DLL;
  v3 = *v1;
  v4 = 0xE600000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x7961647275746173;
  if (v3 != 5)
  {
    v6 = 0x7961646E7573;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7961647372756874;
  if (v3 != 3)
  {
    v8 = 0x796164697266;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x79616473657574;
  if (v3 != 1)
  {
    v10 = 0x616473656E646577;
    v9 = 0xE900000000000079;
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11;
}

unint64_t sub_1B4C74D88()
{
  result = qword_1EB8AD6C0;
  if (!qword_1EB8AD6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD6C0);
  }

  return result;
}

unint64_t sub_1B4C74DE0()
{
  result = qword_1EB8AD6C8;
  if (!qword_1EB8AD6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AD6D0, &qword_1B4D42660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD6C8);
  }

  return result;
}

unint64_t sub_1B4C74E54()
{
  result = qword_1EB8AD6D8;
  if (!qword_1EB8AD6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD6D8);
  }

  return result;
}

uint64_t static WorkoutDetails.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6 && (v7 = v6, objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) != 0))
  {
    v9 = v8;
    v10 = v4;
    v11 = v5;
    [v7 coordinate];
    v13 = v12;
    [v9 coordinate];
    if (v13 != v14)
    {

      return 0;
    }

    [v7 coordinate];
    v16 = v15;
    [v9 coordinate];
    v18 = v17;

    if (v16 != v18)
    {
      return 0;
    }
  }

  else
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    if ((sub_1B4D187AC() & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v19 = *(type metadata accessor for WorkoutDetails() + 24);

  return sub_1B4D1774C();
}

uint64_t type metadata accessor for WorkoutDetails()
{
  result = qword_1EB8AD6F8;
  if (!qword_1EB8AD6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B4C75080()
{
  v1 = 0x6E6F697461727564;
  if (*v0 != 1)
  {
    v1 = 0x65746144646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1B4C750E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4C75AB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4C75108(uint64_t a1)
{
  v2 = sub_1B4C753A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C75144(uint64_t a1)
{
  v2 = sub_1B4C753A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutDetails.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD6E0, &unk_1B4D427B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4C753A0();
  sub_1B4D18EFC();
  v16 = *v3;
  v15[7] = 0;
  v11 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B49B1148(&qword_1EB8A6FA0);
  sub_1B4D18D0C();

  if (!v2)
  {
    v12 = *(v3 + 8);
    v15[6] = 1;
    sub_1B4D18CDC();
    v13 = *(type metadata accessor for WorkoutDetails() + 24);
    v15[5] = 2;
    sub_1B4D1777C();
    sub_1B49B1198(&qword_1EDC37820);
    sub_1B4D18D0C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1B4C753A0()
{
  result = qword_1EB8AD6E8;
  if (!qword_1EB8AD6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD6E8);
  }

  return result;
}

void WorkoutDetails.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_1B4D1777C();
  v22 = *(v25 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD6F0, &qword_1B4D427C0);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v9 = &v20 - v8;
  v10 = type metadata accessor for WorkoutDetails();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4C753A0();
  sub_1B4D18EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v20 = v10;
    v21 = v6;
    v16 = v24;
    v15 = v25;
    v17 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v29 = 0;
    sub_1B49B1148(&qword_1EB8A6FB0);
    v18 = v26;
    sub_1B4D18C0C();
    *v17 = v30;
    v28 = 1;
    sub_1B4D18BDC();
    *(v17 + 1) = v19;
    v27 = 2;
    sub_1B49B1198(&qword_1EB8A6FB8);
    sub_1B4D18C0C();
    (*(v16 + 8))(v9, v18);
    (*(v22 + 32))(&v17[*(v20 + 24)], v21, v15);
    sub_1B4C7577C(v17, v23);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_1B4C757E0(v17);
  }
}

uint64_t sub_1B4C7577C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutDetails();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C757E0(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutDetails();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4C7586C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_1B49B0864(*a1, *a2) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return sub_1B4D1774C();
}

void sub_1B4C75914()
{
  sub_1B49B13FC();
  if (v0 <= 0x3F)
  {
    sub_1B4D1777C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B4C759B4()
{
  result = qword_1EB8AD708;
  if (!qword_1EB8AD708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD708);
  }

  return result;
}

unint64_t sub_1B4C75A0C()
{
  result = qword_1EB8AD710;
  if (!qword_1EB8AD710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD710);
  }

  return result;
}

unint64_t sub_1B4C75A64()
{
  result = qword_1EB8AD718;
  if (!qword_1EB8AD718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AD718);
  }

  return result;
}

uint64_t sub_1B4C75AB8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B4C75BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4D177CC();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for BestWorkoutMeasurementEntry();
  sub_1B4AF497C(a2, a4 + *(v9 + 28));
  v10 = *(v9 + 32);
  v11 = sub_1B4D1746C();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

uint64_t DistanceReference.rawValue.getter()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = qword_1B4D43DD8[v1];
  v4 = [v2 *off_1E7C11C98[v1]];
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);

  return sub_1B4D1741C();
}

uint64_t DistanceSampleIntervalRecord.speed.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  DistanceSampleIntervalRecord.pace.getter(&v11 - v6);
  if (qword_1EDC36E80 != -1)
  {
    swift_once();
  }

  sub_1B4D1745C();
  sub_1B4D1742C();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v9 = [objc_opt_self() metersPerSecond];
  sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
  sub_1B4D1741C();
  return (v8)(v7, v0);
}

uint64_t DistanceReference.init(rawValue:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v15 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v4 = *(*(v3 - 8) + 64);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = 0;
  v10 = (v9 + 8);
  while (v8 != 16)
  {
    v11 = byte_1F2CB79C0[v8++ + 32];
    v16 = v11;
    DistanceReference.rawValue.getter();
    sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
    v12 = sub_1B4D1816C();
    v13 = *v10;
    (*v10)(v7, v3);
    if (v12)
    {
      *v15 = v11;
      return (v13)(a1, v3);
    }
  }

  result = (*v10)(a1, v3, v5);
  *v15 = 16;
  return result;
}

uint64_t sub_1B4C76108(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8[-v5];
  v8[15] = *a1;
  DistanceReference.rawValue.getter();
  sub_1B49B0578(&qword_1EDC37878, &qword_1EB8A6830, &unk_1B4D1AB40);
  LOBYTE(a1) = sub_1B4D1811C();
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t sub_1B4C76250(char a1)
{
  result = 0x6D6F6C694B656E6FLL;
  switch(a1)
  {
    case 1:
      result = 0x656C694D656E6FLL;
      break;
    case 2:
      result = 0x6F6C694B65766966;
      break;
    case 3:
      result = 0x656C694D65766966;
      break;
    case 4:
      result = 0x6D6F6C694B6E6574;
      break;
    case 5:
      result = 0x73656C694D6E6574;
      break;
    case 6:
    case 9:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x694D79746E657774;
      break;
    case 10:
      result = 0x6C694B7974666966;
      break;
    case 11:
      result = 0x6C694D7974666966;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      v3 = 1214606959;
      goto LABEL_14;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      v3 = 1215264628;
LABEL_14:
      result = v3 | 0x72646E7500000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B4C76430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4C7CA98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4C76458(uint64_t a1)
{
  v2 = sub_1B4C7957C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C76494(uint64_t a1)
{
  v2 = sub_1B4C7957C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C764D0(uint64_t a1)
{
  v2 = sub_1B4C79774();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C7650C(uint64_t a1)
{
  v2 = sub_1B4C79774();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C76548(uint64_t a1)
{
  v2 = sub_1B4C79720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C76584(uint64_t a1)
{
  v2 = sub_1B4C79720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C765C0(uint64_t a1)
{
  v2 = sub_1B4C79A14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C765FC(uint64_t a1)
{
  v2 = sub_1B4C79A14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C76638(uint64_t a1)
{
  v2 = sub_1B4C799C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C76674(uint64_t a1)
{
  v2 = sub_1B4C799C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C766B0(uint64_t a1)
{
  v2 = sub_1B4C79870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C766EC(uint64_t a1)
{
  v2 = sub_1B4C79870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C76728(uint64_t a1)
{
  v2 = sub_1B4C797C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C76764(uint64_t a1)
{
  v2 = sub_1B4C797C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C767A0(uint64_t a1)
{
  v2 = sub_1B4C796CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C767DC(uint64_t a1)
{
  v2 = sub_1B4C796CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C76818(uint64_t a1)
{
  v2 = sub_1B4C79678();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C76854(uint64_t a1)
{
  v2 = sub_1B4C79678();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C76890(uint64_t a1)
{
  v2 = sub_1B4C79ABC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C768CC(uint64_t a1)
{
  v2 = sub_1B4C79ABC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C76908(uint64_t a1)
{
  v2 = sub_1B4C79A68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C76944(uint64_t a1)
{
  v2 = sub_1B4C79A68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C76980(uint64_t a1)
{
  v2 = sub_1B4C7996C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C769BC(uint64_t a1)
{
  v2 = sub_1B4C7996C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C769F8(uint64_t a1)
{
  v2 = sub_1B4C79918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C76A34(uint64_t a1)
{
  v2 = sub_1B4C79918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C76A70(uint64_t a1)
{
  v2 = sub_1B4C798C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C76AAC(uint64_t a1)
{
  v2 = sub_1B4C798C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C76AE8(uint64_t a1)
{
  v2 = sub_1B4C7981C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C76B24(uint64_t a1)
{
  v2 = sub_1B4C7981C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C76B60(uint64_t a1)
{
  v2 = sub_1B4C79624();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C76B9C(uint64_t a1)
{
  v2 = sub_1B4C79624();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4C76BD8(uint64_t a1)
{
  v2 = sub_1B4C795D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4C76C14(uint64_t a1)
{
  v2 = sub_1B4C795D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DistanceReference.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD720, &qword_1B4D42980);
  v112 = *(v4 - 8);
  v113 = v4;
  v5 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v111 = &v68 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD728, &qword_1B4D42988);
  v109 = *(v7 - 8);
  v110 = v7;
  v8 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v108 = &v68 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD730, &qword_1B4D42990);
  v106 = *(v10 - 8);
  v107 = v10;
  v11 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v105 = &v68 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD738, &qword_1B4D42998);
  v103 = *(v13 - 8);
  v104 = v13;
  v14 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD740, &qword_1B4D429A0);
  v100 = *(v16 - 8);
  v101 = v16;
  v17 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v99 = &v68 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD748, &qword_1B4D429A8);
  v97 = *(v19 - 8);
  v98 = v19;
  v20 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v96 = &v68 - v21;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD750, &qword_1B4D429B0);
  v94 = *(v95 - 8);
  v22 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v68 - v23;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD758, &qword_1B4D429B8);
  v91 = *(v92 - 8);
  v24 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v68 - v25;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD760, &qword_1B4D429C0);
  v88 = *(v89 - 8);
  v26 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v68 - v27;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD768, &qword_1B4D429C8);
  v85 = *(v86 - 8);
  v28 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v68 - v29;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD770, &qword_1B4D429D0);
  v82 = *(v83 - 8);
  v30 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v68 - v31;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD778, &qword_1B4D429D8);
  v79 = *(v80 - 8);
  v32 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v68 - v33;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD780, &qword_1B4D429E0);
  v76 = *(v77 - 8);
  v34 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v68 - v35;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD788, &qword_1B4D429E8);
  v73 = *(v74 - 8);
  v36 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v68 - v37;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD790, &qword_1B4D429F0);
  v70 = *(v71 - 8);
  v38 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v40 = &v68 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD798, &qword_1B4D429F8);
  v69 = *(v41 - 8);
  v42 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v68 - v43;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD7A0, &qword_1B4D42A00);
  v45 = *(v115 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v48 = &v68 - v47;
  v49 = *v2;
  v50 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4C7957C();
  v114 = v48;
  sub_1B4D18EFC();
  switch(v49)
  {
    case 1:
      v117 = 1;
      sub_1B4C79A68();
      v51 = v114;
      v52 = v115;
      sub_1B4D18C5C();
      v57 = *(v70 + 8);
      v58 = v40;
      v59 = &v103;
      goto LABEL_19;
    case 2:
      v117 = 2;
      sub_1B4C79A14();
      v61 = v72;
      v51 = v114;
      v52 = v115;
      sub_1B4D18C5C();
      v57 = *(v73 + 8);
      v58 = v61;
      v59 = &v106;
      goto LABEL_19;
    case 3:
      v117 = 3;
      sub_1B4C799C0();
      v62 = v75;
      v51 = v114;
      v52 = v115;
      sub_1B4D18C5C();
      v57 = *(v76 + 8);
      v58 = v62;
      v59 = &v109;
      goto LABEL_19;
    case 4:
      v117 = 4;
      sub_1B4C7996C();
      v56 = v78;
      v51 = v114;
      v52 = v115;
      sub_1B4D18C5C();
      v57 = *(v79 + 8);
      v58 = v56;
      v59 = &v112;
      goto LABEL_19;
    case 5:
      v117 = 5;
      sub_1B4C79918();
      v64 = v81;
      v51 = v114;
      v52 = v115;
      sub_1B4D18C5C();
      v57 = *(v82 + 8);
      v58 = v64;
      v59 = &v115;
      goto LABEL_19;
    case 6:
      v117 = 6;
      sub_1B4C798C4();
      v65 = v84;
      v51 = v114;
      v52 = v115;
      sub_1B4D18C5C();
      v57 = *(v85 + 8);
      v58 = v65;
      v59 = &v116;
      goto LABEL_19;
    case 7:
      v117 = 7;
      sub_1B4C79870();
      v63 = v87;
      v51 = v114;
      v52 = v115;
      sub_1B4D18C5C();
      v57 = *(v88 + 8);
      v58 = v63;
      v59 = &v118;
      goto LABEL_19;
    case 8:
      v117 = 8;
      sub_1B4C7981C();
      v66 = v90;
      v51 = v114;
      v52 = v115;
      sub_1B4D18C5C();
      v57 = *(v91 + 8);
      v58 = v66;
      v59 = &v119;
      goto LABEL_19;
    case 9:
      v117 = 9;
      sub_1B4C797C8();
      v60 = v93;
      v51 = v114;
      v52 = v115;
      sub_1B4D18C5C();
      v57 = *(v94 + 8);
      v58 = v60;
      v59 = &v120;
LABEL_19:
      v57(v58, *(v59 - 32));
      return (*(v45 + 8))(v51, v52);
    case 10:
      v117 = 10;
      sub_1B4C79774();
      v53 = v96;
      v51 = v114;
      v52 = v115;
      sub_1B4D18C5C();
      v55 = v97;
      v54 = v98;
      goto LABEL_17;
    case 11:
      v117 = 11;
      sub_1B4C79720();
      v53 = v99;
      v51 = v114;
      v52 = v115;
      sub_1B4D18C5C();
      v55 = v100;
      v54 = v101;
      goto LABEL_17;
    case 12:
      v117 = 12;
      sub_1B4C796CC();
      v53 = v102;
      v51 = v114;
      v52 = v115;
      sub_1B4D18C5C();
      v55 = v103;
      v54 = v104;
      goto LABEL_17;
    case 13:
      v117 = 13;
      sub_1B4C79678();
      v53 = v105;
      v51 = v114;
      v52 = v115;
      sub_1B4D18C5C();
      v55 = v106;
      v54 = v107;
      goto LABEL_17;
    case 14:
      v117 = 14;
      sub_1B4C79624();
      v53 = v108;
      v51 = v114;
      v52 = v115;
      sub_1B4D18C5C();
      v55 = v109;
      v54 = v110;
      goto LABEL_17;
    case 15:
      v117 = 15;
      sub_1B4C795D0();
      v53 = v111;
      v51 = v114;
      v52 = v115;
      sub_1B4D18C5C();
      v55 = v112;
      v54 = v113;
LABEL_17:
      (*(v55 + 8))(v53, v54);
      break;
    default:
      v117 = 0;
      sub_1B4C79ABC();
      v51 = v114;
      v52 = v115;
      sub_1B4D18C5C();
      (*(v69 + 8))(v44, v41);
      break;
  }

  return (*(v45 + 8))(v51, v52);
}