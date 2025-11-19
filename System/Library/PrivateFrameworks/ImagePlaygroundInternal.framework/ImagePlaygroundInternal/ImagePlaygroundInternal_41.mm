uint64_t sub_1D26FB5E0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D26FB6DC, 0, 0);
}

uint64_t sub_1D26FB6DC()
{
  v1 = *(v0 + 96);
  if (*(v0 + 120))
  {

    if (v1)
    {

      v2 = *(v1 + 16);
      if (v2)
      {
        v3 = (v1 + 40);
        v4 = MEMORY[0x1E69E7CC0];
        do
        {
          v5 = *(v0 + 456);
          v6 = *v3;
          *v5 = *(v3 - 1);
          v5[1] = v6;
          swift_storeEnumTagMultiPayload();
          sub_1D2870F68();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_1D27CC818(0, v4[2] + 1, 1, v4);
          }

          v8 = v4[2];
          v7 = v4[3];
          if (v8 >= v7 >> 1)
          {
            v4 = sub_1D27CC818(v7 > 1, v8 + 1, 1, v4);
          }

          v9 = *(v0 + 456);
          v10 = *(v0 + 368);
          v4[2] = v8 + 1;
          sub_1D2701854(v9, v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8);
          v3 += 2;
          --v2;
        }

        while (v2);
      }

      else
      {

        v4 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {

      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1D274DDBC(v4);
    v23 = *(v0 + 584);
  }

  else
  {
    v11 = *(v0 + 464);

    v12 = sub_1D2691DF8(50);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = MEMORY[0x1D38A0BC0](v12, v14, v16, v18);
    v21 = v20;

    *v11 = v19;
    v11[1] = v21;
    swift_storeEnumTagMultiPayload();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v0 + 584);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_1D27CC818(0, v23[2] + 1, 1, *(v0 + 584));
    }

    v25 = v23[2];
    v24 = v23[3];
    if (v25 >= v24 >> 1)
    {
      v23 = sub_1D27CC818(v24 > 1, v25 + 1, 1, v23);
    }

    v26 = *(v0 + 464);
    v27 = *(v0 + 368);
    v23[2] = v25 + 1;
    sub_1D2701854(v26, v23 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25);
  }

  v28 = *(v0 + 576) + 1;
  if (v28 == *(v0 + 560))
  {
LABEL_20:
    v171 = *(v0 + 256);
    sub_1D274DDBC(v23);

    v29 = *(v0 + 8);

    return v29(v171);
  }

  v162 = (v0 + 272);
  v158 = (v0 + 280);
  v159 = (v0 + 264);
  v165 = (v0 + 288);
  while (1)
  {
    *(v0 + 584) = v23;
    *(v0 + 576) = v28;
    v34 = *(v0 + 740);
    v35 = *(v0 + 552);
    v36 = *(v0 + 528);
    v37 = *(v0 + 520);
    sub_1D2872028();
    v38 = *(v36 + 88);
    v39 = v38(v35, v37);
    if (v39 == v34)
    {
      v40 = *(v0 + 552);
      (*(*(v0 + 528) + 96))(v40, *(v0 + 520));
      v41 = *v40;
      *(v0 + 592) = *v40;
      v42 = v40[1];
      *(v0 + 600) = v42;
      if ((v42 & 0x2000000000000000) != 0)
      {
        v43 = HIBYTE(v42) & 0xF;
      }

      else
      {
        v43 = v41 & 0xFFFFFFFFFFFFLL;
      }

      if (!v43)
      {
        goto LABEL_61;
      }

      v44 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
      v45 = sub_1D2878068();
      [v44 setString_];

      *v165 = 0;
      *(swift_task_alloc() + 16) = v165;
      sub_1D2878958();

      if (*v165 >= 50)
      {
        v127 = swift_task_alloc();
        *(v0 + 608) = v127;
        *v127 = v0;
        v127[1] = sub_1D26F8654;
        v128 = v0 + 216;
        goto LABEL_118;
      }

      v46 = *(v0 + 496);
      *v46 = v41;
      v46[1] = v42;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
      }

      v48 = v23[2];
      v47 = v23[3];
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v23 = sub_1D27CC818(v47 > 1, v48 + 1, 1, v23);
      }

      v31 = *(v0 + 496);
      goto LABEL_25;
    }

    if (v39 != *(v0 + 744))
    {
      break;
    }

    v50 = *(v0 + 552);
    v163 = *(*(v0 + 528) + 96);
    v163(v50, *(v0 + 520));
    v51 = *v50;
    *(v0 + 640) = *v50;
    v52 = v50[1];
    *(v0 + 648) = v52;
    if ((v52 & 0x2000000000000000) != 0)
    {
      v53 = HIBYTE(v52) & 0xF;
    }

    else
    {
      v53 = v51 & 0xFFFFFFFFFFFFLL;
    }

    if (!v53)
    {
      goto LABEL_60;
    }

    v168 = v50[3];
    v161 = v50[2];
    v54 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
    v55 = v52;
    v56 = v51;
    v57 = sub_1D2878068();
    [v54 setString_];

    *v162 = 0;
    *(swift_task_alloc() + 16) = v162;
    sub_1D2878958();

    if (*v162 >= 10)
    {
      if (v168)
      {
        goto LABEL_132;
      }

      v168 = 0;
      v131 = 0;
      do
      {
        v166 = *(v0 + 772);
        v132 = *(v0 + 544);
        v133 = *(v0 + 520);
        sub_1D2872028();
        v134 = v38(v132, v133);
        v135 = *(v0 + 544);
        if (v134 == v166)
        {
          v136 = *(v0 + 520);

          v163(v135, v136);
          v161 = *v135;
          v168 = v135[1];
        }

        else
        {
          (*(*(v0 + 528) + 8))(*(v0 + 544), *(v0 + 520));
        }

        ++v131;
      }

      while (v131 != *(v0 + 560));

      v146 = v168;
      if (v168)
      {
LABEL_132:
        *(v0 + 656) = v168;
        v147 = v56;
        v148 = v55;
        if (v161 != v56 || (v146 = v55, v168 != v55))
        {
          if ((sub_1D2879618() & 1) == 0)
          {
            v150 = swift_task_alloc();
            *(v0 + 680) = v150;
            *v150 = v0;
            v150[1] = sub_1D26FCDE8;
            v151 = v0 + 136;
            v152 = v161;
            v153 = v168;
            goto LABEL_146;
          }

          v146 = v168;
        }
      }

      else
      {
        v147 = v56;
        v148 = v55;
      }

      *(v0 + 664) = v146;
      v155 = swift_task_alloc();
      *(v0 + 672) = v155;
      *v155 = v0;
      v155[1] = sub_1D26FB5E0;
      v128 = v0 + 96;
LABEL_151:
      v129 = v147;
      v130 = v148;
      goto LABEL_152;
    }

    v58 = *(v0 + 448);

    *v58 = v56;
    v58[1] = v55;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
    }

    v48 = v23[2];
    v59 = v23[3];
    v49 = v48 + 1;
    if (v48 >= v59 >> 1)
    {
      v23 = sub_1D27CC818(v59 > 1, v48 + 1, 1, v23);
    }

    v31 = *(v0 + 448);
LABEL_25:
    v32 = *(v0 + 368);
    v23[2] = v49;
    v33 = v23 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v48;
LABEL_26:
    sub_1D2701854(v31, v33);
LABEL_27:
    v28 = *(v0 + 576) + 1;
    if (v28 == *(v0 + 560))
    {
      goto LABEL_20;
    }
  }

  if (v39 != *(v0 + 748))
  {
    if (v39 != *(v0 + 752))
    {
      if (v39 == *(v0 + 756))
      {
        v75 = *(v0 + 552);
        v76 = *(v0 + 408);
        v77 = *(v0 + 352);
        v78 = *(v0 + 336);
        v79 = *(v0 + 344);
        (*(*(v0 + 528) + 96))(v75, *(v0 + 520));
        (*(v79 + 32))(v77, v75, v78);
        (*(v79 + 16))(v76, v77, v78);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
        }

        v81 = v23[2];
        v80 = v23[3];
        v82 = v81 + 1;
        if (v81 >= v80 >> 1)
        {
          v23 = sub_1D27CC818(v80 > 1, v81 + 1, 1, v23);
        }

        v83 = *(v0 + 408);
        v84 = *(v0 + 368);
        v86 = *(v0 + 344);
        v85 = *(v0 + 352);
        v87 = *(v0 + 336);
      }

      else
      {
        if (v39 != *(v0 + 760))
        {
          if (v39 == *(v0 + 764))
          {
            v94 = *(v0 + 552);
            v95 = *(v0 + 392);
            (*(*(v0 + 528) + 96))(v94, *(v0 + 520));
            v96 = *v94;
            *v95 = v96;
            swift_storeEnumTagMultiPayload();
            v97 = v96;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
            }

            v99 = v23[2];
            v98 = v23[3];
            v100 = v99 + 1;
            if (v99 >= v98 >> 1)
            {
              v23 = sub_1D27CC818(v98 > 1, v99 + 1, 1, v23);
            }

            v101 = *(v0 + 392);
          }

          else if (v39 == *(v0 + 768))
          {
            v102 = *(v0 + 552);
            v103 = *(v0 + 384);
            (*(*(v0 + 528) + 96))(v102, *(v0 + 520));
            v104 = *v102;
            v105 = type metadata accessor for PlaygroundImage();
            v106 = (v103 + v105[9]);
            *v106 = 0u;
            v106[1] = 0u;
            *(v103 + v105[10]) = xmmword_1D28809A0;
            v107 = v105[11];
            v108 = sub_1D2873AA8();
            (*(*(v108 - 8) + 56))(v103 + v107, 1, 1, v108);
            *v103 = v104;
            *(v103 + 8) = 0;
            *(v103 + 24) = 1;
            *(v103 + 16) = 0;
            *(v103 + 32) = 0;
            *(v103 + 40) = 0;
            *(v103 + v105[12]) = 0;
            v97 = v104;
            sub_1D2871808();
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
            }

            v99 = v23[2];
            v109 = v23[3];
            v100 = v99 + 1;
            if (v99 >= v109 >> 1)
            {
              v23 = sub_1D27CC818(v109 > 1, v99 + 1, 1, v23);
            }

            v101 = *(v0 + 384);
          }

          else
          {
            if (v39 == *(v0 + 772))
            {
              v111 = *(v0 + 552);
              (*(*(v0 + 528) + 96))(v111, *(v0 + 520));
              v112 = *v111;
              v113 = v111[1];
              v114 = HIBYTE(v113) & 0xF;
              if ((v113 & 0x2000000000000000) == 0)
              {
                v114 = v112 & 0xFFFFFFFFFFFFLL;
              }

              if (!v114 || sub_1D27018B8(*(v0 + 296)))
              {
                goto LABEL_61;
              }

              v125 = *(v0 + 416);
              *v125 = v112;
              v125[1] = v113;
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
              }

              v48 = v23[2];
              v126 = v23[3];
              v49 = v48 + 1;
              if (v48 >= v126 >> 1)
              {
                v23 = sub_1D27CC818(v126 > 1, v48 + 1, 1, v23);
              }

              v31 = *(v0 + 416);
              goto LABEL_25;
            }

            v115 = *(v0 + 552);
            v116 = *(v0 + 528);
            v117 = *(v0 + 520);
            if (v39 != *(v0 + 776))
            {
              (*(v116 + 8))(*(v0 + 552), v117);
              goto LABEL_27;
            }

            v118 = *(v0 + 376);
            (*(v116 + 96))(*(v0 + 552), v117);
            v119 = *v115;
            v120 = type metadata accessor for PlaygroundImage();
            *(v118 + 32) = 0;
            *(v118 + 40) = 0;
            v121 = (v118 + v120[9]);
            *v121 = 0u;
            v121[1] = 0u;
            *(v118 + v120[10]) = xmmword_1D28809A0;
            v122 = v120[11];
            v123 = sub_1D2873AA8();
            (*(*(v123 - 8) + 56))(v118 + v122, 1, 1, v123);
            *v118 = v119;
            *(v118 + 8) = 3;
            *(v118 + 24) = 1;
            *(v118 + 16) = 0;
            *(v118 + v120[12]) = 0;
            v97 = v119;
            sub_1D2871808();
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
            }

            v99 = v23[2];
            v124 = v23[3];
            v100 = v99 + 1;
            if (v99 >= v124 >> 1)
            {
              v23 = sub_1D27CC818(v124 > 1, v99 + 1, 1, v23);
            }

            v101 = *(v0 + 376);
          }

          v110 = *(v0 + 368);

          v23[2] = v100;
          v33 = v23 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v99;
          v31 = v101;
          goto LABEL_26;
        }

        v88 = *(v0 + 552);
        v89 = *(v0 + 400);
        v91 = *(v0 + 320);
        v90 = *(v0 + 328);
        v92 = *(v0 + 312);
        (*(*(v0 + 528) + 96))(v88, *(v0 + 520));
        (*(v91 + 32))(v90, v88, v92);
        (*(v91 + 16))(v89, v90, v92);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
        }

        v81 = v23[2];
        v93 = v23[3];
        v82 = v81 + 1;
        if (v81 >= v93 >> 1)
        {
          v23 = sub_1D27CC818(v93 > 1, v81 + 1, 1, v23);
        }

        v83 = *(v0 + 400);
        v84 = *(v0 + 368);
        v86 = *(v0 + 320);
        v85 = *(v0 + 328);
        v87 = *(v0 + 312);
      }

      (*(v86 + 8))(v85, v87);
      v23[2] = v82;
      v33 = v23 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v81;
      v31 = v83;
      goto LABEL_26;
    }

    v69 = *(v0 + 552);
    (*(*(v0 + 528) + 96))(v69, *(v0 + 520));
    v41 = *v69;
    *(v0 + 616) = *v69;
    v42 = v69[1];
    *(v0 + 624) = v42;
    if ((v42 & 0x2000000000000000) != 0)
    {
      v70 = HIBYTE(v42) & 0xF;
    }

    else
    {
      v70 = v41 & 0xFFFFFFFFFFFFLL;
    }

    if (!v70)
    {
      goto LABEL_61;
    }

    v71 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
    v72 = sub_1D2878068();
    [v71 setString_];

    *v158 = 0;
    *(swift_task_alloc() + 16) = v158;
    sub_1D2878958();

    if (*v158 >= 50)
    {
      v149 = swift_task_alloc();
      *(v0 + 632) = v149;
      *v149 = v0;
      v149[1] = sub_1D26F9E18;
      v128 = v0 + 176;
LABEL_118:
      v129 = v41;
      v130 = v42;
LABEL_152:

      return VisualSummarizationClient.summarizeContext(from:)(v128, v129, v130);
    }

    v73 = *(v0 + 472);
    *v73 = v41;
    v73[1] = v42;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
    }

    v48 = v23[2];
    v74 = v23[3];
    v49 = v48 + 1;
    if (v48 >= v74 >> 1)
    {
      v23 = sub_1D27CC818(v74 > 1, v48 + 1, 1, v23);
    }

    v31 = *(v0 + 472);
    goto LABEL_25;
  }

  v60 = *(v0 + 552);
  v164 = *(*(v0 + 528) + 96);
  v164(v60, *(v0 + 520));
  v61 = *v60;
  *(v0 + 688) = *v60;
  v62 = v60[1];
  *(v0 + 696) = v62;
  if ((v62 & 0x2000000000000000) != 0)
  {
    v63 = HIBYTE(v62) & 0xF;
  }

  else
  {
    v63 = v61 & 0xFFFFFFFFFFFFLL;
  }

  if (!v63)
  {
LABEL_60:

LABEL_61:

    goto LABEL_27;
  }

  v169 = v60[3];
  v160 = v60[2];
  v64 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  v65 = v61;
  v66 = sub_1D2878068();
  [v64 setString_];

  *v159 = 0;
  *(swift_task_alloc() + 16) = v159;
  sub_1D2878958();

  if (*v159 < 10)
  {
    v67 = *(v0 + 424);

    *v67 = v65;
    v67[1] = v62;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
    }

    v48 = v23[2];
    v68 = v23[3];
    v49 = v48 + 1;
    if (v48 >= v68 >> 1)
    {
      v23 = sub_1D27CC818(v68 > 1, v48 + 1, 1, v23);
    }

    v31 = *(v0 + 424);
    goto LABEL_25;
  }

  v137 = v160;
  v167 = v62;
  v138 = v65;
  v139 = v169;
  if (!v169)
  {
    v140 = 0;
    do
    {
      v170 = *(v0 + 772);
      v141 = *(v0 + 536);
      v142 = *(v0 + 520);
      sub_1D2872028();
      v143 = v38(v141, v142);
      v144 = *(v0 + 536);
      if (v143 == v170)
      {
        v145 = *(v0 + 520);

        v164(v144, v145);
        v137 = *v144;
        v139 = v144[1];
      }

      else
      {
        (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));
      }

      ++v140;
    }

    while (v140 != *(v0 + 560));

    if (!v139)
    {
      v154 = 0;
      v147 = v138;
      v148 = v167;
LABEL_150:
      *(v0 + 712) = v154;
      v157 = swift_task_alloc();
      *(v0 + 720) = v157;
      *v157 = v0;
      v157[1] = sub_1D26FE5F0;
      v128 = v0 + 16;
      goto LABEL_151;
    }
  }

  *(v0 + 704) = v139;
  v147 = v138;
  v148 = v167;
  if (v137 == v138)
  {
    v154 = v167;
    if (v139 == v167)
    {
      goto LABEL_150;
    }
  }

  if (sub_1D2879618())
  {
    v154 = v139;
    goto LABEL_150;
  }

  v156 = swift_task_alloc();
  *(v0 + 728) = v156;
  *v156 = v0;
  v156[1] = sub_1D26FFDC4;
  v151 = v0 + 56;
  v152 = v137;
  v153 = v139;
LABEL_146:

  return VisualSummarizationClient.summarizeContext(from:textualContext:)(v151, v152, v153, v147, v148);
}

uint64_t sub_1D26FCDE8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D26FCEE4, 0, 0);
}

uint64_t sub_1D26FCEE4()
{
  v1 = *(v0 + 136);
  if (*(v0 + 160))
  {

    if (v1)
    {

      v2 = *(v1 + 16);
      if (v2)
      {
        v3 = (v1 + 40);
        v4 = MEMORY[0x1E69E7CC0];
        do
        {
          v5 = *(v0 + 456);
          v6 = *v3;
          *v5 = *(v3 - 1);
          v5[1] = v6;
          swift_storeEnumTagMultiPayload();
          sub_1D2870F68();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_1D27CC818(0, v4[2] + 1, 1, v4);
          }

          v8 = v4[2];
          v7 = v4[3];
          if (v8 >= v7 >> 1)
          {
            v4 = sub_1D27CC818(v7 > 1, v8 + 1, 1, v4);
          }

          v9 = *(v0 + 456);
          v10 = *(v0 + 368);
          v4[2] = v8 + 1;
          sub_1D2701854(v9, v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8);
          v3 += 2;
          --v2;
        }

        while (v2);
      }

      else
      {

        v4 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {

      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1D274DDBC(v4);
    v23 = *(v0 + 584);
  }

  else
  {
    v11 = *(v0 + 464);

    v12 = sub_1D2691DF8(50);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = MEMORY[0x1D38A0BC0](v12, v14, v16, v18);
    v21 = v20;

    *v11 = v19;
    v11[1] = v21;
    swift_storeEnumTagMultiPayload();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v0 + 584);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_1D27CC818(0, v23[2] + 1, 1, *(v0 + 584));
    }

    v25 = v23[2];
    v24 = v23[3];
    if (v25 >= v24 >> 1)
    {
      v23 = sub_1D27CC818(v24 > 1, v25 + 1, 1, v23);
    }

    v26 = *(v0 + 464);
    v27 = *(v0 + 368);
    v23[2] = v25 + 1;
    sub_1D2701854(v26, v23 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25);
  }

  v28 = *(v0 + 576) + 1;
  if (v28 == *(v0 + 560))
  {
LABEL_20:
    v171 = *(v0 + 256);
    sub_1D274DDBC(v23);

    v29 = *(v0 + 8);

    return v29(v171);
  }

  v162 = (v0 + 272);
  v158 = (v0 + 280);
  v159 = (v0 + 264);
  v165 = (v0 + 288);
  while (1)
  {
    *(v0 + 584) = v23;
    *(v0 + 576) = v28;
    v34 = *(v0 + 740);
    v35 = *(v0 + 552);
    v36 = *(v0 + 528);
    v37 = *(v0 + 520);
    sub_1D2872028();
    v38 = *(v36 + 88);
    v39 = v38(v35, v37);
    if (v39 == v34)
    {
      v40 = *(v0 + 552);
      (*(*(v0 + 528) + 96))(v40, *(v0 + 520));
      v41 = *v40;
      *(v0 + 592) = *v40;
      v42 = v40[1];
      *(v0 + 600) = v42;
      if ((v42 & 0x2000000000000000) != 0)
      {
        v43 = HIBYTE(v42) & 0xF;
      }

      else
      {
        v43 = v41 & 0xFFFFFFFFFFFFLL;
      }

      if (!v43)
      {
        goto LABEL_61;
      }

      v44 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
      v45 = sub_1D2878068();
      [v44 setString_];

      *v165 = 0;
      *(swift_task_alloc() + 16) = v165;
      sub_1D2878958();

      if (*v165 >= 50)
      {
        v127 = swift_task_alloc();
        *(v0 + 608) = v127;
        *v127 = v0;
        v127[1] = sub_1D26F8654;
        v128 = v0 + 216;
        goto LABEL_118;
      }

      v46 = *(v0 + 496);
      *v46 = v41;
      v46[1] = v42;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
      }

      v48 = v23[2];
      v47 = v23[3];
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v23 = sub_1D27CC818(v47 > 1, v48 + 1, 1, v23);
      }

      v31 = *(v0 + 496);
      goto LABEL_25;
    }

    if (v39 != *(v0 + 744))
    {
      break;
    }

    v50 = *(v0 + 552);
    v163 = *(*(v0 + 528) + 96);
    v163(v50, *(v0 + 520));
    v51 = *v50;
    *(v0 + 640) = *v50;
    v52 = v50[1];
    *(v0 + 648) = v52;
    if ((v52 & 0x2000000000000000) != 0)
    {
      v53 = HIBYTE(v52) & 0xF;
    }

    else
    {
      v53 = v51 & 0xFFFFFFFFFFFFLL;
    }

    if (!v53)
    {
      goto LABEL_60;
    }

    v168 = v50[3];
    v161 = v50[2];
    v54 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
    v55 = v52;
    v56 = v51;
    v57 = sub_1D2878068();
    [v54 setString_];

    *v162 = 0;
    *(swift_task_alloc() + 16) = v162;
    sub_1D2878958();

    if (*v162 >= 10)
    {
      if (v168)
      {
        goto LABEL_132;
      }

      v168 = 0;
      v131 = 0;
      do
      {
        v166 = *(v0 + 772);
        v132 = *(v0 + 544);
        v133 = *(v0 + 520);
        sub_1D2872028();
        v134 = v38(v132, v133);
        v135 = *(v0 + 544);
        if (v134 == v166)
        {
          v136 = *(v0 + 520);

          v163(v135, v136);
          v161 = *v135;
          v168 = v135[1];
        }

        else
        {
          (*(*(v0 + 528) + 8))(*(v0 + 544), *(v0 + 520));
        }

        ++v131;
      }

      while (v131 != *(v0 + 560));

      v146 = v168;
      if (v168)
      {
LABEL_132:
        *(v0 + 656) = v168;
        v147 = v56;
        v148 = v55;
        if (v161 != v56 || (v146 = v55, v168 != v55))
        {
          if ((sub_1D2879618() & 1) == 0)
          {
            v150 = swift_task_alloc();
            *(v0 + 680) = v150;
            *v150 = v0;
            v150[1] = sub_1D26FCDE8;
            v151 = v0 + 136;
            v152 = v161;
            v153 = v168;
            goto LABEL_146;
          }

          v146 = v168;
        }
      }

      else
      {
        v147 = v56;
        v148 = v55;
      }

      *(v0 + 664) = v146;
      v155 = swift_task_alloc();
      *(v0 + 672) = v155;
      *v155 = v0;
      v155[1] = sub_1D26FB5E0;
      v128 = v0 + 96;
LABEL_151:
      v129 = v147;
      v130 = v148;
      goto LABEL_152;
    }

    v58 = *(v0 + 448);

    *v58 = v56;
    v58[1] = v55;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
    }

    v48 = v23[2];
    v59 = v23[3];
    v49 = v48 + 1;
    if (v48 >= v59 >> 1)
    {
      v23 = sub_1D27CC818(v59 > 1, v48 + 1, 1, v23);
    }

    v31 = *(v0 + 448);
LABEL_25:
    v32 = *(v0 + 368);
    v23[2] = v49;
    v33 = v23 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v48;
LABEL_26:
    sub_1D2701854(v31, v33);
LABEL_27:
    v28 = *(v0 + 576) + 1;
    if (v28 == *(v0 + 560))
    {
      goto LABEL_20;
    }
  }

  if (v39 != *(v0 + 748))
  {
    if (v39 != *(v0 + 752))
    {
      if (v39 == *(v0 + 756))
      {
        v75 = *(v0 + 552);
        v76 = *(v0 + 408);
        v77 = *(v0 + 352);
        v78 = *(v0 + 336);
        v79 = *(v0 + 344);
        (*(*(v0 + 528) + 96))(v75, *(v0 + 520));
        (*(v79 + 32))(v77, v75, v78);
        (*(v79 + 16))(v76, v77, v78);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
        }

        v81 = v23[2];
        v80 = v23[3];
        v82 = v81 + 1;
        if (v81 >= v80 >> 1)
        {
          v23 = sub_1D27CC818(v80 > 1, v81 + 1, 1, v23);
        }

        v83 = *(v0 + 408);
        v84 = *(v0 + 368);
        v86 = *(v0 + 344);
        v85 = *(v0 + 352);
        v87 = *(v0 + 336);
      }

      else
      {
        if (v39 != *(v0 + 760))
        {
          if (v39 == *(v0 + 764))
          {
            v94 = *(v0 + 552);
            v95 = *(v0 + 392);
            (*(*(v0 + 528) + 96))(v94, *(v0 + 520));
            v96 = *v94;
            *v95 = v96;
            swift_storeEnumTagMultiPayload();
            v97 = v96;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
            }

            v99 = v23[2];
            v98 = v23[3];
            v100 = v99 + 1;
            if (v99 >= v98 >> 1)
            {
              v23 = sub_1D27CC818(v98 > 1, v99 + 1, 1, v23);
            }

            v101 = *(v0 + 392);
          }

          else if (v39 == *(v0 + 768))
          {
            v102 = *(v0 + 552);
            v103 = *(v0 + 384);
            (*(*(v0 + 528) + 96))(v102, *(v0 + 520));
            v104 = *v102;
            v105 = type metadata accessor for PlaygroundImage();
            v106 = (v103 + v105[9]);
            *v106 = 0u;
            v106[1] = 0u;
            *(v103 + v105[10]) = xmmword_1D28809A0;
            v107 = v105[11];
            v108 = sub_1D2873AA8();
            (*(*(v108 - 8) + 56))(v103 + v107, 1, 1, v108);
            *v103 = v104;
            *(v103 + 8) = 0;
            *(v103 + 24) = 1;
            *(v103 + 16) = 0;
            *(v103 + 32) = 0;
            *(v103 + 40) = 0;
            *(v103 + v105[12]) = 0;
            v97 = v104;
            sub_1D2871808();
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
            }

            v99 = v23[2];
            v109 = v23[3];
            v100 = v99 + 1;
            if (v99 >= v109 >> 1)
            {
              v23 = sub_1D27CC818(v109 > 1, v99 + 1, 1, v23);
            }

            v101 = *(v0 + 384);
          }

          else
          {
            if (v39 == *(v0 + 772))
            {
              v111 = *(v0 + 552);
              (*(*(v0 + 528) + 96))(v111, *(v0 + 520));
              v112 = *v111;
              v113 = v111[1];
              v114 = HIBYTE(v113) & 0xF;
              if ((v113 & 0x2000000000000000) == 0)
              {
                v114 = v112 & 0xFFFFFFFFFFFFLL;
              }

              if (!v114 || sub_1D27018B8(*(v0 + 296)))
              {
                goto LABEL_61;
              }

              v125 = *(v0 + 416);
              *v125 = v112;
              v125[1] = v113;
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
              }

              v48 = v23[2];
              v126 = v23[3];
              v49 = v48 + 1;
              if (v48 >= v126 >> 1)
              {
                v23 = sub_1D27CC818(v126 > 1, v48 + 1, 1, v23);
              }

              v31 = *(v0 + 416);
              goto LABEL_25;
            }

            v115 = *(v0 + 552);
            v116 = *(v0 + 528);
            v117 = *(v0 + 520);
            if (v39 != *(v0 + 776))
            {
              (*(v116 + 8))(*(v0 + 552), v117);
              goto LABEL_27;
            }

            v118 = *(v0 + 376);
            (*(v116 + 96))(*(v0 + 552), v117);
            v119 = *v115;
            v120 = type metadata accessor for PlaygroundImage();
            *(v118 + 32) = 0;
            *(v118 + 40) = 0;
            v121 = (v118 + v120[9]);
            *v121 = 0u;
            v121[1] = 0u;
            *(v118 + v120[10]) = xmmword_1D28809A0;
            v122 = v120[11];
            v123 = sub_1D2873AA8();
            (*(*(v123 - 8) + 56))(v118 + v122, 1, 1, v123);
            *v118 = v119;
            *(v118 + 8) = 3;
            *(v118 + 24) = 1;
            *(v118 + 16) = 0;
            *(v118 + v120[12]) = 0;
            v97 = v119;
            sub_1D2871808();
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
            }

            v99 = v23[2];
            v124 = v23[3];
            v100 = v99 + 1;
            if (v99 >= v124 >> 1)
            {
              v23 = sub_1D27CC818(v124 > 1, v99 + 1, 1, v23);
            }

            v101 = *(v0 + 376);
          }

          v110 = *(v0 + 368);

          v23[2] = v100;
          v33 = v23 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v99;
          v31 = v101;
          goto LABEL_26;
        }

        v88 = *(v0 + 552);
        v89 = *(v0 + 400);
        v91 = *(v0 + 320);
        v90 = *(v0 + 328);
        v92 = *(v0 + 312);
        (*(*(v0 + 528) + 96))(v88, *(v0 + 520));
        (*(v91 + 32))(v90, v88, v92);
        (*(v91 + 16))(v89, v90, v92);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
        }

        v81 = v23[2];
        v93 = v23[3];
        v82 = v81 + 1;
        if (v81 >= v93 >> 1)
        {
          v23 = sub_1D27CC818(v93 > 1, v81 + 1, 1, v23);
        }

        v83 = *(v0 + 400);
        v84 = *(v0 + 368);
        v86 = *(v0 + 320);
        v85 = *(v0 + 328);
        v87 = *(v0 + 312);
      }

      (*(v86 + 8))(v85, v87);
      v23[2] = v82;
      v33 = v23 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v81;
      v31 = v83;
      goto LABEL_26;
    }

    v69 = *(v0 + 552);
    (*(*(v0 + 528) + 96))(v69, *(v0 + 520));
    v41 = *v69;
    *(v0 + 616) = *v69;
    v42 = v69[1];
    *(v0 + 624) = v42;
    if ((v42 & 0x2000000000000000) != 0)
    {
      v70 = HIBYTE(v42) & 0xF;
    }

    else
    {
      v70 = v41 & 0xFFFFFFFFFFFFLL;
    }

    if (!v70)
    {
      goto LABEL_61;
    }

    v71 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
    v72 = sub_1D2878068();
    [v71 setString_];

    *v158 = 0;
    *(swift_task_alloc() + 16) = v158;
    sub_1D2878958();

    if (*v158 >= 50)
    {
      v149 = swift_task_alloc();
      *(v0 + 632) = v149;
      *v149 = v0;
      v149[1] = sub_1D26F9E18;
      v128 = v0 + 176;
LABEL_118:
      v129 = v41;
      v130 = v42;
LABEL_152:

      return VisualSummarizationClient.summarizeContext(from:)(v128, v129, v130);
    }

    v73 = *(v0 + 472);
    *v73 = v41;
    v73[1] = v42;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
    }

    v48 = v23[2];
    v74 = v23[3];
    v49 = v48 + 1;
    if (v48 >= v74 >> 1)
    {
      v23 = sub_1D27CC818(v74 > 1, v48 + 1, 1, v23);
    }

    v31 = *(v0 + 472);
    goto LABEL_25;
  }

  v60 = *(v0 + 552);
  v164 = *(*(v0 + 528) + 96);
  v164(v60, *(v0 + 520));
  v61 = *v60;
  *(v0 + 688) = *v60;
  v62 = v60[1];
  *(v0 + 696) = v62;
  if ((v62 & 0x2000000000000000) != 0)
  {
    v63 = HIBYTE(v62) & 0xF;
  }

  else
  {
    v63 = v61 & 0xFFFFFFFFFFFFLL;
  }

  if (!v63)
  {
LABEL_60:

LABEL_61:

    goto LABEL_27;
  }

  v169 = v60[3];
  v160 = v60[2];
  v64 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  v65 = v61;
  v66 = sub_1D2878068();
  [v64 setString_];

  *v159 = 0;
  *(swift_task_alloc() + 16) = v159;
  sub_1D2878958();

  if (*v159 < 10)
  {
    v67 = *(v0 + 424);

    *v67 = v65;
    v67[1] = v62;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
    }

    v48 = v23[2];
    v68 = v23[3];
    v49 = v48 + 1;
    if (v48 >= v68 >> 1)
    {
      v23 = sub_1D27CC818(v68 > 1, v48 + 1, 1, v23);
    }

    v31 = *(v0 + 424);
    goto LABEL_25;
  }

  v137 = v160;
  v167 = v62;
  v138 = v65;
  v139 = v169;
  if (!v169)
  {
    v140 = 0;
    do
    {
      v170 = *(v0 + 772);
      v141 = *(v0 + 536);
      v142 = *(v0 + 520);
      sub_1D2872028();
      v143 = v38(v141, v142);
      v144 = *(v0 + 536);
      if (v143 == v170)
      {
        v145 = *(v0 + 520);

        v164(v144, v145);
        v137 = *v144;
        v139 = v144[1];
      }

      else
      {
        (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));
      }

      ++v140;
    }

    while (v140 != *(v0 + 560));

    if (!v139)
    {
      v154 = 0;
      v147 = v138;
      v148 = v167;
LABEL_150:
      *(v0 + 712) = v154;
      v157 = swift_task_alloc();
      *(v0 + 720) = v157;
      *v157 = v0;
      v157[1] = sub_1D26FE5F0;
      v128 = v0 + 16;
      goto LABEL_151;
    }
  }

  *(v0 + 704) = v139;
  v147 = v138;
  v148 = v167;
  if (v137 == v138)
  {
    v154 = v167;
    if (v139 == v167)
    {
      goto LABEL_150;
    }
  }

  if (sub_1D2879618())
  {
    v154 = v139;
    goto LABEL_150;
  }

  v156 = swift_task_alloc();
  *(v0 + 728) = v156;
  *v156 = v0;
  v156[1] = sub_1D26FFDC4;
  v151 = v0 + 56;
  v152 = v137;
  v153 = v139;
LABEL_146:

  return VisualSummarizationClient.summarizeContext(from:textualContext:)(v151, v152, v153, v147, v148);
}

uint64_t sub_1D26FE5F0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D26FE6EC, 0, 0);
}

uint64_t sub_1D26FE6EC()
{
  v1 = *(v0 + 16);
  if (*(v0 + 40))
  {

    if (v1)
    {

      v2 = *(v1 + 16);
      if (v2)
      {
        v3 = (v1 + 40);
        v4 = MEMORY[0x1E69E7CC0];
        do
        {
          v5 = *(v0 + 432);
          v6 = *v3;
          *v5 = *(v3 - 1);
          v5[1] = v6;
          swift_storeEnumTagMultiPayload();
          sub_1D2870F68();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_1D27CC818(0, v4[2] + 1, 1, v4);
          }

          v8 = v4[2];
          v7 = v4[3];
          if (v8 >= v7 >> 1)
          {
            v4 = sub_1D27CC818(v7 > 1, v8 + 1, 1, v4);
          }

          v9 = *(v0 + 432);
          v10 = *(v0 + 368);
          v4[2] = v8 + 1;
          sub_1D2701854(v9, v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8);
          v3 += 2;
          --v2;
        }

        while (v2);
      }

      else
      {

        v4 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {

      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1D274DDBC(v4);
    v23 = *(v0 + 584);
  }

  else
  {
    v11 = *(v0 + 440);

    v12 = sub_1D2691DF8(50);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = MEMORY[0x1D38A0BC0](v12, v14, v16, v18);
    v21 = v20;

    *v11 = v19;
    v11[1] = v21;
    swift_storeEnumTagMultiPayload();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v0 + 584);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_1D27CC818(0, v23[2] + 1, 1, *(v0 + 584));
    }

    v25 = v23[2];
    v24 = v23[3];
    if (v25 >= v24 >> 1)
    {
      v23 = sub_1D27CC818(v24 > 1, v25 + 1, 1, v23);
    }

    v26 = *(v0 + 440);
    v27 = *(v0 + 368);
    v23[2] = v25 + 1;
    sub_1D2701854(v26, v23 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25);
  }

  v28 = *(v0 + 576) + 1;
  if (v28 == *(v0 + 560))
  {
LABEL_20:
    v167 = *(v0 + 256);
    sub_1D274DDBC(v23);

    v29 = *(v0 + 8);

    return v29(v167);
  }

  v158 = (v0 + 272);
  v152 = (v0 + 280);
  v153 = (v0 + 264);
  v162 = (v0 + 288);
  v31 = 0x1E6977000uLL;
  while (1)
  {
    *(v0 + 584) = v23;
    *(v0 + 576) = v28;
    v32 = *(v0 + 740);
    v33 = *(v0 + 552);
    v34 = *(v0 + 528);
    v35 = *(v0 + 520);
    sub_1D2872028();
    v36 = *(v34 + 88);
    v37 = v36(v33, v35);
    if (v37 == v32)
    {
      v38 = *(v0 + 552);
      (*(*(v0 + 528) + 96))(v38, *(v0 + 520));
      v39 = *v38;
      *(v0 + 592) = *v38;
      v40 = v38[1];
      *(v0 + 600) = v40;
      if ((v40 & 0x2000000000000000) != 0)
      {
        v41 = HIBYTE(v40) & 0xF;
      }

      else
      {
        v41 = v39 & 0xFFFFFFFFFFFFLL;
      }

      if (v41)
      {
        v42 = [objc_allocWithZone(*(v31 + 2696)) initWithUnit_];
        v43 = sub_1D2878068();
        [v42 setString_];

        *v162 = 0;
        *(swift_task_alloc() + 16) = v162;
        sub_1D2878958();

        if (*v162 >= 50)
        {
          v124 = swift_task_alloc();
          *(v0 + 608) = v124;
          *v124 = v0;
          v124[1] = sub_1D26F8654;
          v125 = v0 + 216;
          goto LABEL_119;
        }

        v44 = *(v0 + 496);
        *v44 = v39;
        v44[1] = v40;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
        }

        v46 = v23[2];
        v45 = v23[3];
        v47 = v46 + 1;
        if (v46 >= v45 >> 1)
        {
          v23 = sub_1D27CC818(v45 > 1, v46 + 1, 1, v23);
        }

        v48 = *(v0 + 496);
        goto LABEL_71;
      }

      goto LABEL_24;
    }

    if (v37 == *(v0 + 744))
    {
      v49 = *(v0 + 552);
      v159 = *(*(v0 + 528) + 96);
      v159(v49, *(v0 + 520));
      v50 = *v49;
      *(v0 + 640) = *v49;
      v40 = v49[1];
      *(v0 + 648) = v40;
      v51 = v49[3];
      if ((v40 & 0x2000000000000000) != 0)
      {
        v52 = HIBYTE(v40) & 0xF;
      }

      else
      {
        v52 = v50 & 0xFFFFFFFFFFFFLL;
      }

      if (v52)
      {
        v154 = v36;
        v163 = v23;
        v156 = v49[2];
        v53 = [objc_allocWithZone(*(v31 + 2696)) initWithUnit_];
        v54 = sub_1D2878068();
        [v53 setString_];

        *v158 = 0;
        *(swift_task_alloc() + 16) = v158;
        sub_1D2878958();

        if (*v158 >= 10)
        {
          if (v51)
          {
            goto LABEL_133;
          }

          v127 = 0;
          v128 = 0;
          do
          {
            v165 = *(v0 + 772);
            v129 = *(v0 + 544);
            v130 = *(v0 + 520);
            sub_1D2872028();
            v131 = v154(v129, v130);
            v132 = *(v0 + 544);
            if (v131 == v165)
            {
              v133 = *(v0 + 520);

              v159(v132, v133);
              v127 = v132[1];
              v156 = *v132;
            }

            else
            {
              (*(*(v0 + 528) + 8))(*(v0 + 544), *(v0 + 520));
            }

            ++v128;
          }

          while (v128 != *(v0 + 560));

          v51 = v127;
          if (v127)
          {
LABEL_133:
            *(v0 + 656) = v51;
            if (v156 != v50 || (v141 = v40, v51 != v40))
            {
              if ((sub_1D2879618() & 1) == 0)
              {
                v143 = swift_task_alloc();
                *(v0 + 680) = v143;
                *v143 = v0;
                v143[1] = sub_1D26FCDE8;
                v144 = v0 + 136;
                v145 = v156;
                v146 = v51;
                v147 = v50;
                goto LABEL_147;
              }

              v141 = v51;
            }
          }

          else
          {
            v141 = 0;
          }

          *(v0 + 664) = v141;
          v149 = swift_task_alloc();
          *(v0 + 672) = v149;
          *v149 = v0;
          v149[1] = sub_1D26FB5E0;
          v125 = v0 + 96;
          v126 = v50;
          goto LABEL_152;
        }

        v55 = *(v0 + 448);

        *v55 = v50;
        v55[1] = v40;
        swift_storeEnumTagMultiPayload();
        v23 = v163;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v163[2] + 1, 1, v163);
        }

        v31 = 0x1E6977000;
        v46 = v23[2];
        v56 = v23[3];
        v47 = v46 + 1;
        if (v46 >= v56 >> 1)
        {
          v23 = sub_1D27CC818(v56 > 1, v46 + 1, 1, v23);
        }

        v48 = *(v0 + 448);
LABEL_71:
        v70 = *(v0 + 368);
        v23[2] = v47;
        v71 = v23 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v46;
        goto LABEL_72;
      }

LABEL_59:

      goto LABEL_24;
    }

    if (v37 == *(v0 + 748))
    {
      break;
    }

    if (v37 == *(v0 + 752))
    {
      v64 = *(v0 + 552);
      (*(*(v0 + 528) + 96))(v64, *(v0 + 520));
      v39 = *v64;
      *(v0 + 616) = *v64;
      v40 = v64[1];
      *(v0 + 624) = v40;
      if ((v40 & 0x2000000000000000) != 0)
      {
        v65 = HIBYTE(v40) & 0xF;
      }

      else
      {
        v65 = v39 & 0xFFFFFFFFFFFFLL;
      }

      if (v65)
      {
        v66 = [objc_allocWithZone(*(v31 + 2696)) initWithUnit_];
        v67 = sub_1D2878068();
        [v66 setString_];

        *v152 = 0;
        *(swift_task_alloc() + 16) = v152;
        sub_1D2878958();

        if (*v152 >= 50)
        {
          v142 = swift_task_alloc();
          *(v0 + 632) = v142;
          *v142 = v0;
          v142[1] = sub_1D26F9E18;
          v125 = v0 + 176;
LABEL_119:
          v126 = v39;
LABEL_152:

          return VisualSummarizationClient.summarizeContext(from:)(v125, v126, v40);
        }

        v68 = *(v0 + 472);
        *v68 = v39;
        v68[1] = v40;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
        }

        v46 = v23[2];
        v69 = v23[3];
        v47 = v46 + 1;
        if (v46 >= v69 >> 1)
        {
          v23 = sub_1D27CC818(v69 > 1, v46 + 1, 1, v23);
        }

        v48 = *(v0 + 472);
        goto LABEL_71;
      }
    }

    else
    {
      if (v37 == *(v0 + 756))
      {
        v72 = *(v0 + 552);
        v73 = *(v0 + 408);
        v74 = *(v0 + 352);
        v76 = *(v0 + 336);
        v75 = *(v0 + 344);
        (*(*(v0 + 528) + 96))(v72, *(v0 + 520));
        (*(v75 + 32))(v74, v72, v76);
        (*(v75 + 16))(v73, v74, v76);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
        }

        v78 = v23[2];
        v77 = v23[3];
        v79 = v78 + 1;
        if (v78 >= v77 >> 1)
        {
          v23 = sub_1D27CC818(v77 > 1, v78 + 1, 1, v23);
        }

        v80 = *(v0 + 408);
        v81 = *(v0 + 368);
        v83 = *(v0 + 344);
        v82 = *(v0 + 352);
        v84 = *(v0 + 336);
LABEL_85:
        (*(v83 + 8))(v82, v84);
        v23[2] = v79;
        v91 = v23 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
        v92 = *(v81 + 72);
        goto LABEL_99;
      }

      if (v37 == *(v0 + 760))
      {
        v85 = *(v0 + 552);
        v86 = *(v0 + 400);
        v87 = *(v0 + 320);
        v88 = *(v0 + 328);
        v89 = *(v0 + 312);
        (*(*(v0 + 528) + 96))(v85, *(v0 + 520));
        (*(v87 + 32))(v88, v85, v89);
        (*(v87 + 16))(v86, v88, v89);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
        }

        v78 = v23[2];
        v90 = v23[3];
        v79 = v78 + 1;
        if (v78 >= v90 >> 1)
        {
          v23 = sub_1D27CC818(v90 > 1, v78 + 1, 1, v23);
        }

        v80 = *(v0 + 400);
        v81 = *(v0 + 368);
        v83 = *(v0 + 320);
        v82 = *(v0 + 328);
        v84 = *(v0 + 312);
        goto LABEL_85;
      }

      if (v37 == *(v0 + 764))
      {
        v93 = *(v0 + 552);
        v94 = *(v0 + 392);
        (*(*(v0 + 528) + 96))(v93, *(v0 + 520));
        v95 = *v93;
        *v94 = v95;
        swift_storeEnumTagMultiPayload();
        v96 = v95;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
        }

        v78 = v23[2];
        v97 = v23[3];
        v98 = v78 + 1;
        if (v78 >= v97 >> 1)
        {
          v23 = sub_1D27CC818(v97 > 1, v78 + 1, 1, v23);
        }

        v80 = *(v0 + 392);
        goto LABEL_98;
      }

      if (v37 == *(v0 + 768))
      {
        v99 = *(v0 + 552);
        v100 = *(v0 + 384);
        (*(*(v0 + 528) + 96))(v99, *(v0 + 520));
        v101 = *v99;
        v102 = type metadata accessor for PlaygroundImage();
        v103 = (v100 + v102[9]);
        *v103 = 0u;
        v103[1] = 0u;
        *(v100 + v102[10]) = xmmword_1D28809A0;
        v104 = v102[11];
        v105 = sub_1D2873AA8();
        (*(*(v105 - 8) + 56))(v100 + v104, 1, 1, v105);
        *v100 = v101;
        *(v100 + 8) = 0;
        *(v100 + 24) = 1;
        *(v100 + 16) = 0;
        *(v100 + 32) = 0;
        *(v100 + 40) = 0;
        *(v100 + v102[12]) = 0;
        v96 = v101;
        sub_1D2871808();
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
        }

        v78 = v23[2];
        v106 = v23[3];
        v98 = v78 + 1;
        if (v78 >= v106 >> 1)
        {
          v23 = sub_1D27CC818(v106 > 1, v78 + 1, 1, v23);
        }

        v80 = *(v0 + 384);
        goto LABEL_98;
      }

      if (v37 != *(v0 + 772))
      {
        v112 = *(v0 + 552);
        v113 = *(v0 + 528);
        v114 = *(v0 + 520);
        if (v37 != *(v0 + 776))
        {
          (*(v113 + 8))(*(v0 + 552), v114);
          goto LABEL_25;
        }

        v115 = *(v0 + 376);
        (*(v113 + 96))(*(v0 + 552), v114);
        v116 = *v112;
        v117 = type metadata accessor for PlaygroundImage();
        *(v115 + 32) = 0;
        *(v115 + 40) = 0;
        v118 = (v115 + v117[9]);
        *v118 = 0u;
        v118[1] = 0u;
        *(v115 + v117[10]) = xmmword_1D28809A0;
        v119 = v117[11];
        v120 = sub_1D2873AA8();
        (*(*(v120 - 8) + 56))(v115 + v119, 1, 1, v120);
        *v115 = v116;
        *(v115 + 8) = 3;
        *(v115 + 24) = 1;
        *(v115 + 16) = 0;
        *(v115 + v117[12]) = 0;
        v96 = v116;
        sub_1D2871808();
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
        }

        v78 = v23[2];
        v121 = v23[3];
        v98 = v78 + 1;
        if (v78 >= v121 >> 1)
        {
          v23 = sub_1D27CC818(v121 > 1, v78 + 1, 1, v23);
        }

        v80 = *(v0 + 376);
LABEL_98:
        v107 = *(v0 + 368);

        v23[2] = v98;
        v91 = v23 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
        v92 = *(v107 + 72);
LABEL_99:
        v71 = &v91[v92 * v78];
        v48 = v80;
LABEL_72:
        sub_1D2701854(v48, v71);
        goto LABEL_25;
      }

      v108 = *(v0 + 552);
      (*(*(v0 + 528) + 96))(v108, *(v0 + 520));
      v109 = *v108;
      v110 = v108[1];
      v111 = HIBYTE(v110) & 0xF;
      if ((v110 & 0x2000000000000000) == 0)
      {
        v111 = v109 & 0xFFFFFFFFFFFFLL;
      }

      if (v111 && !sub_1D27018B8(*(v0 + 296)))
      {
        v122 = *(v0 + 416);
        *v122 = v109;
        v122[1] = v110;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
        }

        v46 = v23[2];
        v123 = v23[3];
        v47 = v46 + 1;
        if (v46 >= v123 >> 1)
        {
          v23 = sub_1D27CC818(v123 > 1, v46 + 1, 1, v23);
        }

        v48 = *(v0 + 416);
        goto LABEL_71;
      }
    }

LABEL_24:

LABEL_25:
    v28 = *(v0 + 576) + 1;
    if (v28 == *(v0 + 560))
    {
      goto LABEL_20;
    }
  }

  v57 = *(v0 + 552);
  v160 = (*(v0 + 528) + 96);
  v157 = *v160;
  (*v160)(v57, *(v0 + 520));
  v58 = *v57;
  *(v0 + 688) = *v57;
  v40 = v57[1];
  *(v0 + 696) = v40;
  if ((v40 & 0x2000000000000000) != 0)
  {
    v59 = HIBYTE(v40) & 0xF;
  }

  else
  {
    v59 = v58 & 0xFFFFFFFFFFFFLL;
  }

  if (!v59)
  {
    goto LABEL_59;
  }

  v161 = v57[3];
  v164 = v23;
  v155 = v57[2];
  v60 = [objc_allocWithZone(*(v31 + 2696)) initWithUnit_];
  v61 = sub_1D2878068();
  [v60 setString_];

  *v153 = 0;
  *(swift_task_alloc() + 16) = v153;
  sub_1D2878958();

  if (*v153 < 10)
  {
    v62 = *(v0 + 424);

    *v62 = v58;
    v62[1] = v40;
    swift_storeEnumTagMultiPayload();
    v23 = v164;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1D27CC818(0, v164[2] + 1, 1, v164);
    }

    v31 = 0x1E6977000;
    v46 = v23[2];
    v63 = v23[3];
    v47 = v46 + 1;
    if (v46 >= v63 >> 1)
    {
      v23 = sub_1D27CC818(v63 > 1, v46 + 1, 1, v23);
    }

    v48 = *(v0 + 424);
    goto LABEL_71;
  }

  v134 = v161;
  if (!v161)
  {
    v135 = 0;
    do
    {
      v166 = *(v0 + 772);
      v136 = *(v0 + 536);
      v137 = *(v0 + 520);
      sub_1D2872028();
      v138 = v36(v136, v137);
      v139 = *(v0 + 536);
      if (v138 == v166)
      {
        v140 = *(v0 + 520);

        v157(v139, v140);
        v134 = v139[1];
        v155 = *v139;
      }

      else
      {
        (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));
      }

      ++v135;
    }

    while (v135 != *(v0 + 560));

    if (!v134)
    {
      v148 = 0;
      goto LABEL_151;
    }
  }

  *(v0 + 704) = v134;
  if (v155 == v58)
  {
    v148 = v40;
    if (v134 == v40)
    {
      goto LABEL_151;
    }
  }

  if (sub_1D2879618())
  {
    v148 = v134;
LABEL_151:
    *(v0 + 712) = v148;
    v151 = swift_task_alloc();
    *(v0 + 720) = v151;
    *v151 = v0;
    v151[1] = sub_1D26FE5F0;
    v125 = v0 + 16;
    v126 = v58;
    goto LABEL_152;
  }

  v150 = swift_task_alloc();
  *(v0 + 728) = v150;
  *v150 = v0;
  v150[1] = sub_1D26FFDC4;
  v144 = v0 + 56;
  v145 = v155;
  v146 = v134;
  v147 = v58;
LABEL_147:

  return VisualSummarizationClient.summarizeContext(from:textualContext:)(v144, v145, v146, v147, v40);
}

uint64_t sub_1D26FFDC4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D26FFEC0, 0, 0);
}

uint64_t sub_1D26FFEC0()
{
  v1 = *(v0 + 56);
  if (*(v0 + 80))
  {

    if (v1)
    {

      v2 = *(v1 + 16);
      if (v2)
      {
        v3 = (v1 + 40);
        v4 = MEMORY[0x1E69E7CC0];
        do
        {
          v5 = *(v0 + 432);
          v6 = *v3;
          *v5 = *(v3 - 1);
          v5[1] = v6;
          swift_storeEnumTagMultiPayload();
          sub_1D2870F68();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_1D27CC818(0, v4[2] + 1, 1, v4);
          }

          v8 = v4[2];
          v7 = v4[3];
          if (v8 >= v7 >> 1)
          {
            v4 = sub_1D27CC818(v7 > 1, v8 + 1, 1, v4);
          }

          v9 = *(v0 + 432);
          v10 = *(v0 + 368);
          v4[2] = v8 + 1;
          sub_1D2701854(v9, v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8);
          v3 += 2;
          --v2;
        }

        while (v2);
      }

      else
      {

        v4 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {

      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1D274DDBC(v4);
    v23 = *(v0 + 584);
  }

  else
  {
    v11 = *(v0 + 440);

    v12 = sub_1D2691DF8(50);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = MEMORY[0x1D38A0BC0](v12, v14, v16, v18);
    v21 = v20;

    *v11 = v19;
    v11[1] = v21;
    swift_storeEnumTagMultiPayload();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v0 + 584);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_1D27CC818(0, v23[2] + 1, 1, *(v0 + 584));
    }

    v25 = v23[2];
    v24 = v23[3];
    if (v25 >= v24 >> 1)
    {
      v23 = sub_1D27CC818(v24 > 1, v25 + 1, 1, v23);
    }

    v26 = *(v0 + 440);
    v27 = *(v0 + 368);
    v23[2] = v25 + 1;
    sub_1D2701854(v26, v23 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25);
  }

  v28 = *(v0 + 576) + 1;
  if (v28 == *(v0 + 560))
  {
LABEL_20:
    v167 = *(v0 + 256);
    sub_1D274DDBC(v23);

    v29 = *(v0 + 8);

    return v29(v167);
  }

  v158 = (v0 + 272);
  v152 = (v0 + 280);
  v153 = (v0 + 264);
  v162 = (v0 + 288);
  v31 = 0x1E6977000uLL;
  while (1)
  {
    *(v0 + 584) = v23;
    *(v0 + 576) = v28;
    v32 = *(v0 + 740);
    v33 = *(v0 + 552);
    v34 = *(v0 + 528);
    v35 = *(v0 + 520);
    sub_1D2872028();
    v36 = *(v34 + 88);
    v37 = v36(v33, v35);
    if (v37 == v32)
    {
      v38 = *(v0 + 552);
      (*(*(v0 + 528) + 96))(v38, *(v0 + 520));
      v39 = *v38;
      *(v0 + 592) = *v38;
      v40 = v38[1];
      *(v0 + 600) = v40;
      if ((v40 & 0x2000000000000000) != 0)
      {
        v41 = HIBYTE(v40) & 0xF;
      }

      else
      {
        v41 = v39 & 0xFFFFFFFFFFFFLL;
      }

      if (v41)
      {
        v42 = [objc_allocWithZone(*(v31 + 2696)) initWithUnit_];
        v43 = sub_1D2878068();
        [v42 setString_];

        *v162 = 0;
        *(swift_task_alloc() + 16) = v162;
        sub_1D2878958();

        if (*v162 >= 50)
        {
          v124 = swift_task_alloc();
          *(v0 + 608) = v124;
          *v124 = v0;
          v124[1] = sub_1D26F8654;
          v125 = v0 + 216;
          goto LABEL_119;
        }

        v44 = *(v0 + 496);
        *v44 = v39;
        v44[1] = v40;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
        }

        v46 = v23[2];
        v45 = v23[3];
        v47 = v46 + 1;
        if (v46 >= v45 >> 1)
        {
          v23 = sub_1D27CC818(v45 > 1, v46 + 1, 1, v23);
        }

        v48 = *(v0 + 496);
        goto LABEL_71;
      }

      goto LABEL_24;
    }

    if (v37 == *(v0 + 744))
    {
      v49 = *(v0 + 552);
      v159 = *(*(v0 + 528) + 96);
      v159(v49, *(v0 + 520));
      v50 = *v49;
      *(v0 + 640) = *v49;
      v40 = v49[1];
      *(v0 + 648) = v40;
      v51 = v49[3];
      if ((v40 & 0x2000000000000000) != 0)
      {
        v52 = HIBYTE(v40) & 0xF;
      }

      else
      {
        v52 = v50 & 0xFFFFFFFFFFFFLL;
      }

      if (v52)
      {
        v154 = v36;
        v163 = v23;
        v156 = v49[2];
        v53 = [objc_allocWithZone(*(v31 + 2696)) initWithUnit_];
        v54 = sub_1D2878068();
        [v53 setString_];

        *v158 = 0;
        *(swift_task_alloc() + 16) = v158;
        sub_1D2878958();

        if (*v158 >= 10)
        {
          if (v51)
          {
            goto LABEL_133;
          }

          v127 = 0;
          v128 = 0;
          do
          {
            v165 = *(v0 + 772);
            v129 = *(v0 + 544);
            v130 = *(v0 + 520);
            sub_1D2872028();
            v131 = v154(v129, v130);
            v132 = *(v0 + 544);
            if (v131 == v165)
            {
              v133 = *(v0 + 520);

              v159(v132, v133);
              v127 = v132[1];
              v156 = *v132;
            }

            else
            {
              (*(*(v0 + 528) + 8))(*(v0 + 544), *(v0 + 520));
            }

            ++v128;
          }

          while (v128 != *(v0 + 560));

          v51 = v127;
          if (v127)
          {
LABEL_133:
            *(v0 + 656) = v51;
            if (v156 != v50 || (v141 = v40, v51 != v40))
            {
              if ((sub_1D2879618() & 1) == 0)
              {
                v143 = swift_task_alloc();
                *(v0 + 680) = v143;
                *v143 = v0;
                v143[1] = sub_1D26FCDE8;
                v144 = v0 + 136;
                v145 = v156;
                v146 = v51;
                v147 = v50;
                goto LABEL_147;
              }

              v141 = v51;
            }
          }

          else
          {
            v141 = 0;
          }

          *(v0 + 664) = v141;
          v149 = swift_task_alloc();
          *(v0 + 672) = v149;
          *v149 = v0;
          v149[1] = sub_1D26FB5E0;
          v125 = v0 + 96;
          v126 = v50;
          goto LABEL_152;
        }

        v55 = *(v0 + 448);

        *v55 = v50;
        v55[1] = v40;
        swift_storeEnumTagMultiPayload();
        v23 = v163;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v163[2] + 1, 1, v163);
        }

        v31 = 0x1E6977000;
        v46 = v23[2];
        v56 = v23[3];
        v47 = v46 + 1;
        if (v46 >= v56 >> 1)
        {
          v23 = sub_1D27CC818(v56 > 1, v46 + 1, 1, v23);
        }

        v48 = *(v0 + 448);
LABEL_71:
        v70 = *(v0 + 368);
        v23[2] = v47;
        v71 = v23 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v46;
        goto LABEL_72;
      }

LABEL_59:

      goto LABEL_24;
    }

    if (v37 == *(v0 + 748))
    {
      break;
    }

    if (v37 == *(v0 + 752))
    {
      v64 = *(v0 + 552);
      (*(*(v0 + 528) + 96))(v64, *(v0 + 520));
      v39 = *v64;
      *(v0 + 616) = *v64;
      v40 = v64[1];
      *(v0 + 624) = v40;
      if ((v40 & 0x2000000000000000) != 0)
      {
        v65 = HIBYTE(v40) & 0xF;
      }

      else
      {
        v65 = v39 & 0xFFFFFFFFFFFFLL;
      }

      if (v65)
      {
        v66 = [objc_allocWithZone(*(v31 + 2696)) initWithUnit_];
        v67 = sub_1D2878068();
        [v66 setString_];

        *v152 = 0;
        *(swift_task_alloc() + 16) = v152;
        sub_1D2878958();

        if (*v152 >= 50)
        {
          v142 = swift_task_alloc();
          *(v0 + 632) = v142;
          *v142 = v0;
          v142[1] = sub_1D26F9E18;
          v125 = v0 + 176;
LABEL_119:
          v126 = v39;
LABEL_152:

          return VisualSummarizationClient.summarizeContext(from:)(v125, v126, v40);
        }

        v68 = *(v0 + 472);
        *v68 = v39;
        v68[1] = v40;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
        }

        v46 = v23[2];
        v69 = v23[3];
        v47 = v46 + 1;
        if (v46 >= v69 >> 1)
        {
          v23 = sub_1D27CC818(v69 > 1, v46 + 1, 1, v23);
        }

        v48 = *(v0 + 472);
        goto LABEL_71;
      }
    }

    else
    {
      if (v37 == *(v0 + 756))
      {
        v72 = *(v0 + 552);
        v73 = *(v0 + 408);
        v74 = *(v0 + 352);
        v76 = *(v0 + 336);
        v75 = *(v0 + 344);
        (*(*(v0 + 528) + 96))(v72, *(v0 + 520));
        (*(v75 + 32))(v74, v72, v76);
        (*(v75 + 16))(v73, v74, v76);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
        }

        v78 = v23[2];
        v77 = v23[3];
        v79 = v78 + 1;
        if (v78 >= v77 >> 1)
        {
          v23 = sub_1D27CC818(v77 > 1, v78 + 1, 1, v23);
        }

        v80 = *(v0 + 408);
        v81 = *(v0 + 368);
        v83 = *(v0 + 344);
        v82 = *(v0 + 352);
        v84 = *(v0 + 336);
LABEL_85:
        (*(v83 + 8))(v82, v84);
        v23[2] = v79;
        v91 = v23 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
        v92 = *(v81 + 72);
        goto LABEL_99;
      }

      if (v37 == *(v0 + 760))
      {
        v85 = *(v0 + 552);
        v86 = *(v0 + 400);
        v87 = *(v0 + 320);
        v88 = *(v0 + 328);
        v89 = *(v0 + 312);
        (*(*(v0 + 528) + 96))(v85, *(v0 + 520));
        (*(v87 + 32))(v88, v85, v89);
        (*(v87 + 16))(v86, v88, v89);
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
        }

        v78 = v23[2];
        v90 = v23[3];
        v79 = v78 + 1;
        if (v78 >= v90 >> 1)
        {
          v23 = sub_1D27CC818(v90 > 1, v78 + 1, 1, v23);
        }

        v80 = *(v0 + 400);
        v81 = *(v0 + 368);
        v83 = *(v0 + 320);
        v82 = *(v0 + 328);
        v84 = *(v0 + 312);
        goto LABEL_85;
      }

      if (v37 == *(v0 + 764))
      {
        v93 = *(v0 + 552);
        v94 = *(v0 + 392);
        (*(*(v0 + 528) + 96))(v93, *(v0 + 520));
        v95 = *v93;
        *v94 = v95;
        swift_storeEnumTagMultiPayload();
        v96 = v95;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
        }

        v78 = v23[2];
        v97 = v23[3];
        v98 = v78 + 1;
        if (v78 >= v97 >> 1)
        {
          v23 = sub_1D27CC818(v97 > 1, v78 + 1, 1, v23);
        }

        v80 = *(v0 + 392);
        goto LABEL_98;
      }

      if (v37 == *(v0 + 768))
      {
        v99 = *(v0 + 552);
        v100 = *(v0 + 384);
        (*(*(v0 + 528) + 96))(v99, *(v0 + 520));
        v101 = *v99;
        v102 = type metadata accessor for PlaygroundImage();
        v103 = (v100 + v102[9]);
        *v103 = 0u;
        v103[1] = 0u;
        *(v100 + v102[10]) = xmmword_1D28809A0;
        v104 = v102[11];
        v105 = sub_1D2873AA8();
        (*(*(v105 - 8) + 56))(v100 + v104, 1, 1, v105);
        *v100 = v101;
        *(v100 + 8) = 0;
        *(v100 + 24) = 1;
        *(v100 + 16) = 0;
        *(v100 + 32) = 0;
        *(v100 + 40) = 0;
        *(v100 + v102[12]) = 0;
        v96 = v101;
        sub_1D2871808();
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
        }

        v78 = v23[2];
        v106 = v23[3];
        v98 = v78 + 1;
        if (v78 >= v106 >> 1)
        {
          v23 = sub_1D27CC818(v106 > 1, v78 + 1, 1, v23);
        }

        v80 = *(v0 + 384);
        goto LABEL_98;
      }

      if (v37 != *(v0 + 772))
      {
        v112 = *(v0 + 552);
        v113 = *(v0 + 528);
        v114 = *(v0 + 520);
        if (v37 != *(v0 + 776))
        {
          (*(v113 + 8))(*(v0 + 552), v114);
          goto LABEL_25;
        }

        v115 = *(v0 + 376);
        (*(v113 + 96))(*(v0 + 552), v114);
        v116 = *v112;
        v117 = type metadata accessor for PlaygroundImage();
        *(v115 + 32) = 0;
        *(v115 + 40) = 0;
        v118 = (v115 + v117[9]);
        *v118 = 0u;
        v118[1] = 0u;
        *(v115 + v117[10]) = xmmword_1D28809A0;
        v119 = v117[11];
        v120 = sub_1D2873AA8();
        (*(*(v120 - 8) + 56))(v115 + v119, 1, 1, v120);
        *v115 = v116;
        *(v115 + 8) = 3;
        *(v115 + 24) = 1;
        *(v115 + 16) = 0;
        *(v115 + v117[12]) = 0;
        v96 = v116;
        sub_1D2871808();
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
        }

        v78 = v23[2];
        v121 = v23[3];
        v98 = v78 + 1;
        if (v78 >= v121 >> 1)
        {
          v23 = sub_1D27CC818(v121 > 1, v78 + 1, 1, v23);
        }

        v80 = *(v0 + 376);
LABEL_98:
        v107 = *(v0 + 368);

        v23[2] = v98;
        v91 = v23 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
        v92 = *(v107 + 72);
LABEL_99:
        v71 = &v91[v92 * v78];
        v48 = v80;
LABEL_72:
        sub_1D2701854(v48, v71);
        goto LABEL_25;
      }

      v108 = *(v0 + 552);
      (*(*(v0 + 528) + 96))(v108, *(v0 + 520));
      v109 = *v108;
      v110 = v108[1];
      v111 = HIBYTE(v110) & 0xF;
      if ((v110 & 0x2000000000000000) == 0)
      {
        v111 = v109 & 0xFFFFFFFFFFFFLL;
      }

      if (v111 && !sub_1D27018B8(*(v0 + 296)))
      {
        v122 = *(v0 + 416);
        *v122 = v109;
        v122[1] = v110;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D27CC818(0, v23[2] + 1, 1, v23);
        }

        v46 = v23[2];
        v123 = v23[3];
        v47 = v46 + 1;
        if (v46 >= v123 >> 1)
        {
          v23 = sub_1D27CC818(v123 > 1, v46 + 1, 1, v23);
        }

        v48 = *(v0 + 416);
        goto LABEL_71;
      }
    }

LABEL_24:

LABEL_25:
    v28 = *(v0 + 576) + 1;
    if (v28 == *(v0 + 560))
    {
      goto LABEL_20;
    }
  }

  v57 = *(v0 + 552);
  v160 = (*(v0 + 528) + 96);
  v157 = *v160;
  (*v160)(v57, *(v0 + 520));
  v58 = *v57;
  *(v0 + 688) = *v57;
  v40 = v57[1];
  *(v0 + 696) = v40;
  if ((v40 & 0x2000000000000000) != 0)
  {
    v59 = HIBYTE(v40) & 0xF;
  }

  else
  {
    v59 = v58 & 0xFFFFFFFFFFFFLL;
  }

  if (!v59)
  {
    goto LABEL_59;
  }

  v161 = v57[3];
  v164 = v23;
  v155 = v57[2];
  v60 = [objc_allocWithZone(*(v31 + 2696)) initWithUnit_];
  v61 = sub_1D2878068();
  [v60 setString_];

  *v153 = 0;
  *(swift_task_alloc() + 16) = v153;
  sub_1D2878958();

  if (*v153 < 10)
  {
    v62 = *(v0 + 424);

    *v62 = v58;
    v62[1] = v40;
    swift_storeEnumTagMultiPayload();
    v23 = v164;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1D27CC818(0, v164[2] + 1, 1, v164);
    }

    v31 = 0x1E6977000;
    v46 = v23[2];
    v63 = v23[3];
    v47 = v46 + 1;
    if (v46 >= v63 >> 1)
    {
      v23 = sub_1D27CC818(v63 > 1, v46 + 1, 1, v23);
    }

    v48 = *(v0 + 424);
    goto LABEL_71;
  }

  v134 = v161;
  if (!v161)
  {
    v135 = 0;
    do
    {
      v166 = *(v0 + 772);
      v136 = *(v0 + 536);
      v137 = *(v0 + 520);
      sub_1D2872028();
      v138 = v36(v136, v137);
      v139 = *(v0 + 536);
      if (v138 == v166)
      {
        v140 = *(v0 + 520);

        v157(v139, v140);
        v134 = v139[1];
        v155 = *v139;
      }

      else
      {
        (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));
      }

      ++v135;
    }

    while (v135 != *(v0 + 560));

    if (!v134)
    {
      v148 = 0;
      goto LABEL_151;
    }
  }

  *(v0 + 704) = v134;
  if (v155 == v58)
  {
    v148 = v40;
    if (v134 == v40)
    {
      goto LABEL_151;
    }
  }

  if (sub_1D2879618())
  {
    v148 = v134;
LABEL_151:
    *(v0 + 712) = v148;
    v151 = swift_task_alloc();
    *(v0 + 720) = v151;
    *v151 = v0;
    v151[1] = sub_1D26FE5F0;
    v125 = v0 + 16;
    v126 = v58;
    goto LABEL_152;
  }

  v150 = swift_task_alloc();
  *(v0 + 728) = v150;
  *v150 = v0;
  v150[1] = sub_1D26FFDC4;
  v144 = v0 + 56;
  v145 = v155;
  v146 = v134;
  v147 = v58;
LABEL_147:

  return VisualSummarizationClient.summarizeContext(from:textualContext:)(v144, v145, v146, v147, v40);
}

uint64_t PromptElementConceptExtractor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D27015F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  type metadata accessor for VisualSummarizationClient();
  v3 = swift_allocObject();
  sub_1D2873DE8();
  swift_allocObject();
  *(v3 + 24) = sub_1D2873DD8();
  v4 = sub_1D27D8C8C();

  *(v3 + 16) = v4 & 1;
  *(v2 + 16) = v3;
  *a1 = v2;
  return result;
}

uint64_t type metadata accessor for PromptElementConceptExtractor.Concept()
{
  result = qword_1EC6E0730;
  if (!qword_1EC6E0730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D270172C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptElementConceptExtractor.Concept();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2701790(uint64_t a1)
{
  v2 = type metadata accessor for PromptElementConceptExtractor.Concept();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D27017EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0728);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2701854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptElementConceptExtractor.Concept();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_1D27018B8(uint64_t a1)
{
  v2 = sub_1D2872018();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = sub_1D2872038();
  v7 = MEMORY[0x1EEE9AC00](v29);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a1 + 16);
  if (!v10)
  {
    return 0;
  }

  v12 = *(v6 + 16);
  v11 = v6 + 16;
  v28 = v12;
  v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
  v26 = *(v11 + 56);
  v14 = (v11 - 8);
  v15 = (v3 + 88);
  v27 = *MEMORY[0x1E696E360];
  v25 = *MEMORY[0x1E696E340];
  v16 = (v3 + 8);
  v17 = v10 - 1;
  while (1)
  {
    v18 = v29;
    v19 = v11;
    v28(v9, v13, v29, v7);
    sub_1D2872028();
    (*v14)(v9, v18);
    v20 = (*v15)(v5, v2);
    if (v20 == v27)
    {
      break;
    }

    v21 = v20;
    (*v16)(v5, v2);
    result = v21 == v25;
    v23 = v21 == v25 || v17-- == 0;
    v13 += v26;
    v11 = v19;
    if (v23)
    {
      return result;
    }
  }

  (*v16)(v5, v2);
  return 1;
}

void sub_1D2701B2C()
{
  sub_1D2701BD4();
  if (v0 <= 0x3F)
  {
    sub_1D2877E58();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CVBuffer(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for PlaygroundImage();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1D2701BD4()
{
  if (!qword_1EC6E0740)
  {
    v0 = sub_1D28721C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6E0740);
    }
  }
}

unint64_t sub_1D2701C20()
{
  result = qword_1EC6E0748;
  if (!qword_1EC6E0748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0748);
  }

  return result;
}

unint64_t sub_1D2701C78()
{
  result = qword_1EC6E0750;
  if (!qword_1EC6E0750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0750);
  }

  return result;
}

uint64_t type metadata accessor for EditorViewController()
{
  result = qword_1EC6E0788;
  if (!qword_1EC6E0788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2701D1C()
{
  sub_1D2702C60(319, &qword_1ED8A6BF0, MEMORY[0x1E696E310]);
  if (v0 <= 0x3F)
  {
    sub_1D2702C60(319, &qword_1EC6E0798, MEMORY[0x1E696E2B8]);
    if (v1 <= 0x3F)
    {
      sub_1D2702C60(319, &qword_1EC6E07A0, MEMORY[0x1E696E290]);
      if (v2 <= 0x3F)
      {
        sub_1D2702C60(319, &qword_1EC6E07A8, MEMORY[0x1E696E3C0]);
        if (v3 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1D2701EF0()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + qword_1EC6E0758);
  if (v5)
  {
    v6 = *(v0 + qword_1EC6E0768);
    v7 = *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading);
    if (v6 == v7)
    {
      *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__isLoading) = v6;
      sub_1D2870F78();
      sub_1D23068A8(v7);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v13[-2] = v5;
      LOBYTE(v13[-1]) = v6;
      v13[1] = v5;
      sub_1D245EB0C();
      sub_1D2870F78();
      sub_1D28719D8();
    }
  }

  else
  {
    sub_1D28725E8();
    v10 = sub_1D2873CA8();
    v11 = sub_1D2878A18();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D226E000, v10, v11, "creationViewModel is nil", v12, 2u);
      MEMORY[0x1D38A3520](v12, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_1D270214C()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_1EC6E0758))
  {
    v5 = *(v0 + qword_1EC6E0770);
    sub_1D2870F78();
    if (v5)
    {
      v6 = v5;
      ComposingViewModel.load(fromAPIRecipe:)(v6);
    }

    else
    {
      ComposingViewModel.reset()();
    }
  }

  else
  {
    sub_1D28725E8();
    v7 = sub_1D2873CA8();
    v8 = sub_1D2878A18();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D226E000, v7, v8, "creationViewModel is nil", v9, 2u);
      MEMORY[0x1D38A3520](v9, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

void sub_1D2702300()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_1EC6E0758))
  {
    v5 = *(v0 + qword_1EC6E0778);
    if (v5)
    {
      sub_1D2870F78();
      v6 = v5;
      sub_1D231C140(v6);
    }
  }

  else
  {
    sub_1D28725E8();
    v7 = sub_1D2873CA8();
    v8 = sub_1D2878A18();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D226E000, v7, v8, "creationViewModel is nil", v9, 2u);
      MEMORY[0x1D38A3520](v9, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_1D27024D4()
{
  *(v0 + qword_1EC6E0758) = 0;
  *(v0 + qword_1EC6E0760) = 0;
  *(v0 + qword_1EC6E0768) = 0;
  *(v0 + qword_1EC6E0770) = 0;
  *(v0 + qword_1EC6E0778) = 0;
  *(v0 + qword_1EC6E0780) = 0;
  v1 = qword_1EC6E3F70;
  v2 = sub_1D2872008();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = qword_1EC6E3F78;
  v4 = sub_1D2871E18();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = qword_1EC6E3F80;
  v6 = sub_1D2871DD8();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = qword_1EC6E3F88;
  v8 = sub_1D2872088();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  return sub_1D28759F8();
}

uint64_t sub_1D27026D0()
{
  *(v0 + qword_1EC6E0758) = 0;
  *(v0 + qword_1EC6E0760) = 0;
  *(v0 + qword_1EC6E0768) = 0;
  *(v0 + qword_1EC6E0770) = 0;
  *(v0 + qword_1EC6E0778) = 0;
  *(v0 + qword_1EC6E0780) = 0;
  v1 = qword_1EC6E3F70;
  v2 = sub_1D2872008();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = qword_1EC6E3F78;
  v4 = sub_1D2871E18();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = qword_1EC6E3F80;
  v6 = sub_1D2871DD8();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = qword_1EC6E3F88;
  v8 = sub_1D2872088();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  return sub_1D28759E8();
}

id sub_1D2702890(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[qword_1EC6E0758] = 0;
  *&v1[qword_1EC6E0760] = 0;
  v1[qword_1EC6E0768] = 0;
  *&v1[qword_1EC6E0770] = 0;
  *&v1[qword_1EC6E0778] = 0;
  *&v1[qword_1EC6E0780] = 0;
  v4 = qword_1EC6E3F70;
  v5 = sub_1D2872008();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = qword_1EC6E3F78;
  v7 = sub_1D2871E18();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v8 = qword_1EC6E3F80;
  v9 = sub_1D2871DD8();
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  v10 = qword_1EC6E3F88;
  v11 = sub_1D2872088();
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);

  if (v12)
  {
  }

  return v12;
}

uint64_t sub_1D2702A8C()
{

  sub_1D22BD238(v0 + qword_1EC6E3F70, &qword_1EC6D9A30);
  sub_1D22BD238(v0 + qword_1EC6E3F78, &unk_1EC6D94A0);
  sub_1D22BD238(v0 + qword_1EC6E3F80, &qword_1EC6E07B0);
  return sub_1D22BD238(v0 + qword_1EC6E3F88, &qword_1EC6E07B8);
}

uint64_t sub_1D2702B70(uint64_t a1)
{

  sub_1D22BD238(a1 + qword_1EC6E3F70, &qword_1EC6D9A30);
  sub_1D22BD238(a1 + qword_1EC6E3F78, &unk_1EC6D94A0);
  sub_1D22BD238(a1 + qword_1EC6E3F80, &qword_1EC6E07B0);
  return sub_1D22BD238(a1 + qword_1EC6E3F88, &qword_1EC6E07B8);
}

void sub_1D2702C60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D2878F18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s19BlockingSubCategoryOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x39)
  {
    goto LABEL_17;
  }

  if (a2 + 199 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 199) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 199;
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

      return (*a1 | (v4 << 8)) - 199;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 199;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) & 0xFFFFFFC7 | (8 * ((*a1 >> 2) & 7))) ^ 0x3F;
  if (v6 >= 0x38)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t _s19BlockingSubCategoryOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 199 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 199) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x39)
  {
    v4 = 0;
  }

  if (a2 > 0x38)
  {
    v5 = ((a2 - 57) >> 8) + 1;
    *result = a2 - 57;
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
    *result = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D2702E18(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 5;
  v4 = (v1 & 3 | (4 * (v1 >> 5))) - 12;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_BYTE *sub_1D2702E4C(_BYTE *result, unsigned int a2)
{
  if (a2 < 4)
  {
    *result = *result & 3 | (32 * a2);
  }

  else
  {
    *result = (a2 & 3 | (32 * (a2 >> 2))) + 96;
  }

  return result;
}

uint64_t sub_1D2702EB0(unsigned __int8 a1)
{
  v1 = a1 >> 5;
  if (v1 <= 3)
  {
    v2 = 5461577;
    v3 = 0x6F6F626154;
    if (v1 != 2)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 >> 5)
    {
      v2 = 0x654E797465666153;
    }

    v4 = (a1 >> 5) <= 1u;
LABEL_7:
    if (v4)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  if ((a1 >> 5) > 5u)
  {
    if (v1 == 6)
    {
      v8 = 0x656C7069746C754DLL;
      if (a1 != 194)
      {
        v8 = 0xD00000000000001CLL;
      }

      v9 = 0xD000000000000018;
      if (a1 == 192)
      {
        v9 = 0xD00000000000001ELL;
      }

      if (a1 <= 0xC1u)
      {
        return v9;
      }

      else
      {
        return v8;
      }
    }

    else
    {
      v10 = 0x42726579614C4955;
      if (a1 == 226)
      {
        v10 = 0xD00000000000001ALL;
      }

      v11 = 0xD000000000000021;
      if (a1 == 224)
      {
        v11 = 0xD00000000000001FLL;
      }

      if (a1 <= 0xE1u)
      {
        return v11;
      }

      else
      {
        return v10;
      }
    }
  }

  else
  {
    if (v1 != 4)
    {
      v2 = 0x6566615374786554;
      v3 = 0xD000000000000016;
      if (a1 != 162)
      {
        v3 = 0xD00000000000001CLL;
      }

      if (a1 != 160)
      {
        v2 = 0x73696C6B636F6C42;
      }

      v4 = a1 <= 0xA1u;
      goto LABEL_7;
    }

    v6 = 0x6669636570736E55;
    v7 = 0xD000000000000011;
    if (a1 != 130)
    {
      v7 = 0x6867697279706F43;
    }

    if (a1 != 128)
    {
      v6 = 0x727265764F534D47;
    }

    if (a1 <= 0x81u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }
}

unint64_t sub_1D2703190(char a1)
{
  result = 0x6669636570736E75;
  switch(a1)
  {
    case 1:
      result = 0x727265764F736D67;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6867697279706F63;
      break;
    case 4:
      result = 0x6566615374786574;
      break;
    case 5:
      result = 0x73696C6B636F6C62;
      break;
    case 6:
      result = 7566953;
      break;
    case 7:
      result = 0x654E797465666173;
      break;
    case 8:
      result = 0x6F6F626174;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0x656C7069746C756DLL;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 16:
      result = 0xD00000000000001FLL;
      break;
    case 17:
      result = 0xD000000000000021;
      break;
    case 18:
      result = 0xD00000000000001ALL;
      break;
    case 19:
      result = 0x42726579614C6975;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D27033F8(void *a1, int a2)
{
  v127 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0930);
  v111 = *(v3 - 8);
  v112 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v110 = &v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0938);
  v108 = *(v5 - 8);
  v109 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v107 = &v69 - v6;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0940);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v69 - v7;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0948);
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v69 - v8;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0950);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v69 - v9;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0958);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v69 - v10;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0960);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v69 - v11;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0968);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v69 - v12;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0970);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v69 - v13;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0978);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v69 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0980);
  v123 = *(v15 - 8);
  v124 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v122 = &v69 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0988);
  v120 = *(v17 - 8);
  v121 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v119 = &v69 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0990);
  v117 = *(v19 - 8);
  v118 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v116 = &v69 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0998);
  v114 = *(v21 - 8);
  v115 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v113 = &v69 - v22;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E09A0);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v69 - v23;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E09A8);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v69 - v24;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E09B0);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v74 = &v69 - v25;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E09B8);
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v69 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E09C0);
  v70 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v69 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E09C8);
  v69 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v69 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E09D0);
  v34 = *(v33 - 8);
  v125 = v33;
  v126 = v34;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v69 - v35;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2708110();
  v37 = v36;
  v38 = v127;
  sub_1D2879888();
  v39 = v38 >> 5;
  if (v39 <= 3)
  {
    if ((v38 >> 5) > 1u)
    {
      v40 = v125;
      v41 = v37;
      v46 = v38 & 0x1F;
      if (v39 == 2)
      {
        v128 = 8;
        sub_1D2708554();
        v42 = v119;
        sub_1D2879548();
        v128 = v46;
        sub_1D2708848();
        v43 = v121;
        sub_1D2879598();
        v44 = v120;
      }

      else
      {
        v128 = 9;
        sub_1D27084AC();
        v42 = v122;
        sub_1D2879548();
        v128 = v46;
        sub_1D2708848();
        v43 = v124;
        sub_1D2879598();
        v44 = v123;
      }
    }

    else
    {
      v40 = v125;
      v41 = v37;
      if (v38 >> 5)
      {
        v128 = 7;
        sub_1D27085A8();
        v42 = v116;
        sub_1D2879548();
        v128 = v38 & 0x1F;
        sub_1D2708848();
        v43 = v118;
        sub_1D2879598();
        v44 = v117;
      }

      else
      {
        v128 = 6;
        sub_1D27085FC();
        v42 = v113;
        sub_1D2879548();
        v128 = v38;
        sub_1D2708848();
        v43 = v115;
        sub_1D2879598();
        v44 = v114;
      }
    }

    (*(v44 + 8))(v42, v43);
    return (*(v126 + 8))(v41, v40);
  }

  if ((v38 >> 5) > 5u)
  {
    if (v39 == 6)
    {
      v47 = v38;
      v48 = v125;
      v49 = v37;
      if (v47 > 193)
      {
        if (v47 == 194)
        {
          v128 = 14;
          sub_1D2708308();
          v58 = v95;
          sub_1D2879548();
          (*(v96 + 8))(v58, v97);
        }

        else
        {
          v128 = 15;
          sub_1D27082B4();
          v67 = v98;
          sub_1D2879548();
          (*(v99 + 8))(v67, v100);
        }
      }

      else if (v47 == 192)
      {
        v128 = 12;
        sub_1D27083B0();
        v50 = v89;
        sub_1D2879548();
        (*(v90 + 8))(v50, v91);
      }

      else
      {
        v128 = 13;
        sub_1D270835C();
        v63 = v92;
        sub_1D2879548();
        (*(v93 + 8))(v63, v94);
      }
    }

    else
    {
      v54 = v38;
      v48 = v125;
      v49 = v37;
      if (v54 > 225)
      {
        if (v54 == 226)
        {
          v128 = 18;
          sub_1D27081B8();
          v60 = v107;
          sub_1D2879548();
          v62 = v108;
          v61 = v109;
        }

        else
        {
          v128 = 19;
          sub_1D2708164();
          v60 = v110;
          sub_1D2879548();
          v62 = v111;
          v61 = v112;
        }

        (*(v62 + 8))(v60, v61);
      }

      else if (v54 == 224)
      {
        v128 = 16;
        sub_1D2708260();
        v55 = v101;
        sub_1D2879548();
        (*(v102 + 8))(v55, v103);
      }

      else
      {
        v128 = 17;
        sub_1D270820C();
        v65 = v104;
        sub_1D2879548();
        (*(v105 + 8))(v65, v106);
      }
    }

    return (*(v126 + 8))(v49, v48);
  }

  if (v39 != 4)
  {
    v51 = v38;
    v48 = v125;
    v49 = v37;
    if (v51 > 161)
    {
      if (v51 == 162)
      {
        v128 = 10;
        sub_1D2708458();
        v59 = v83;
        sub_1D2879548();
        (*(v84 + 8))(v59, v85);
      }

      else
      {
        v128 = 11;
        sub_1D2708404();
        v68 = v86;
        sub_1D2879548();
        (*(v87 + 8))(v68, v88);
      }
    }

    else if (v51 == 160)
    {
      v128 = 4;
      sub_1D27086A4();
      v52 = v77;
      sub_1D2879548();
      (*(v78 + 8))(v52, v79);
    }

    else
    {
      v128 = 5;
      sub_1D2708650();
      v64 = v80;
      sub_1D2879548();
      (*(v81 + 8))(v64, v82);
    }

    return (*(v126 + 8))(v49, v48);
  }

  if (v38 > 0x81u)
  {
    if (v38 == 130)
    {
      v128 = 2;
      sub_1D270874C();
      v56 = v71;
      v57 = v125;
      sub_1D2879548();
      (*(v72 + 8))(v56, v73);
      return (*(v126 + 8))(v37, v57);
    }

    v128 = 3;
    sub_1D27086F8();
    v66 = v74;
    v45 = v125;
    sub_1D2879548();
    (*(v75 + 8))(v66, v76);
  }

  else if (v38 == 128)
  {
    v128 = 0;
    sub_1D27087F4();
    v45 = v125;
    sub_1D2879548();
    (*(v69 + 8))(v32, v30);
  }

  else
  {
    v128 = 1;
    sub_1D27087A0();
    v45 = v125;
    sub_1D2879548();
    (*(v70 + 8))(v29, v27);
  }

  return (*(v126 + 8))(v37, v45);
}

uint64_t sub_1D27047BC(uint64_t a1)
{
  v2 = sub_1D27083B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D27047F8(uint64_t a1)
{
  v2 = sub_1D27083B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704834(uint64_t a1)
{
  v2 = sub_1D2708650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704870(uint64_t a1)
{
  v2 = sub_1D2708650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D27048B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D2706048(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D27048E8(uint64_t a1)
{
  v2 = sub_1D2708110();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704924(uint64_t a1)
{
  v2 = sub_1D2708110();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704960(uint64_t a1)
{
  v2 = sub_1D27086F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D270499C(uint64_t a1)
{
  v2 = sub_1D27086F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D27049D8(uint64_t a1)
{
  v2 = sub_1D270820C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704A14(uint64_t a1)
{
  v2 = sub_1D270820C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704A50(uint64_t a1)
{
  v2 = sub_1D2708260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704A8C(uint64_t a1)
{
  v2 = sub_1D2708260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704AC8(uint64_t a1)
{
  v2 = sub_1D27082B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704B04(uint64_t a1)
{
  v2 = sub_1D27082B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704B40(uint64_t a1)
{
  v2 = sub_1D27087A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704B7C(uint64_t a1)
{
  v2 = sub_1D27087A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704BB8(uint64_t a1)
{
  v2 = sub_1D27085FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704BF4(uint64_t a1)
{
  v2 = sub_1D27085FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704C30(uint64_t a1)
{
  v2 = sub_1D270874C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704C6C(uint64_t a1)
{
  v2 = sub_1D270874C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704CA8(uint64_t a1)
{
  v2 = sub_1D2708404();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704CE4(uint64_t a1)
{
  v2 = sub_1D2708404();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704D20(uint64_t a1)
{
  v2 = sub_1D2708308();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704D5C(uint64_t a1)
{
  v2 = sub_1D2708308();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704D98(uint64_t a1)
{
  v2 = sub_1D2708458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704DD4(uint64_t a1)
{
  v2 = sub_1D2708458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704E10(uint64_t a1)
{
  v2 = sub_1D27081B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704E4C(uint64_t a1)
{
  v2 = sub_1D27081B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704E88(uint64_t a1)
{
  v2 = sub_1D27085A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704EC4(uint64_t a1)
{
  v2 = sub_1D27085A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704F00(uint64_t a1)
{
  v2 = sub_1D27084AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2704F3C(uint64_t a1)
{
  v2 = sub_1D27084AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2704F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001BLL && 0x80000001D28C0670 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D2879618();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D270500C(uint64_t a1)
{
  v2 = sub_1D2708554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2705048(uint64_t a1)
{
  v2 = sub_1D2708554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2705084(uint64_t a1)
{
  v2 = sub_1D27086A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D27050C0(uint64_t a1)
{
  v2 = sub_1D27086A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D27050FC(uint64_t a1)
{
  v2 = sub_1D2708164();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2705138(uint64_t a1)
{
  v2 = sub_1D2708164();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2705174(uint64_t a1)
{
  v2 = sub_1D270835C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D27051B0(uint64_t a1)
{
  v2 = sub_1D270835C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D27051EC(uint64_t a1)
{
  v2 = sub_1D27087F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2705228(uint64_t a1)
{
  v2 = sub_1D27087F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D2705264@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D2706680(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D27052C0()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D27053D0()
{
  sub_1D2877F38();
}

uint64_t sub_1D27054CC()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D27055D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D270889C();
  *a1 = result;
  return result;
}

void sub_1D2705608(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646569;
  v4 = 0x6669636570736E55;
  v5 = 0xEE006E6F69746365;
  v6 = 0x6A65526567616D49;
  v7 = 0x80000001D28AEF60;
  v8 = 0xD000000000000015;
  if (v2 != 3)
  {
    v8 = 0x6572617774666F53;
    v7 = 0xED0000726F727245;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000001D28AEF30;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1D2705784()
{
  v1 = *v0;
  v2 = 0x6669636570736E55;
  v3 = 0x6A65526567616D49;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0x6572617774666F53;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_1D2705858()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D27058FC()
{
  sub_1D2877F38();
}

uint64_t sub_1D270598C()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D2705A2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D270893C();
  *a1 = result;
  return result;
}

void sub_1D2705A5C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646569;
  v4 = 0xE500000000000000;
  v5 = 0x7475706E49;
  if (v2 != 1)
  {
    v5 = 0x74757074754FLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6669636570736E55;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D2705B6C()
{
  v1 = 0x7475706E49;
  if (*v0 != 1)
  {
    v1 = 0x74757074754FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6669636570736E55;
  }
}

uint64_t sub_1D2705BC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x7475706E49;
  if (v2 != 1)
  {
    v4 = 0x74757074754FLL;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6669636570736E55;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB00000000646569;
  }

  v7 = 0xE500000000000000;
  v8 = 0x7475706E49;
  if (*a2 != 1)
  {
    v8 = 0x74757074754FLL;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6669636570736E55;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB00000000646569;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D2879618();
  }

  return v11 & 1;
}

unint64_t sub_1D2705CC4()
{
  result = qword_1EC6E07C0;
  if (!qword_1EC6E07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E07C0);
  }

  return result;
}

unint64_t sub_1D2705D1C()
{
  result = qword_1EC6E07C8;
  if (!qword_1EC6E07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E07C8);
  }

  return result;
}

uint64_t sub_1D2705D70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a2;
  v3 = a1 >> 5;
  if (v3 > 3)
  {
    if ((a1 >> 5) > 5u)
    {
      if (v3 == 6)
      {
        if (a1 > 0xC1u)
        {
          if (a1 == 194)
          {
            if (a2 != 194)
            {
              return 0;
            }
          }

          else if (a2 != 195)
          {
            return 0;
          }
        }

        else if (a1 == 192)
        {
          if (a2 != 192)
          {
            return 0;
          }
        }

        else if (a2 != 193)
        {
          return 0;
        }
      }

      else if (a1 > 0xE1u)
      {
        if (a1 == 226)
        {
          if (a2 != 226)
          {
            return 0;
          }
        }

        else if (a2 != 227)
        {
          return 0;
        }
      }

      else if (a1 == 224)
      {
        if (a2 != 224)
        {
          return 0;
        }
      }

      else if (a2 != 225)
      {
        return 0;
      }
    }

    else if (v3 == 4)
    {
      if (a1 > 0x81u)
      {
        if (a1 == 130)
        {
          if (a2 != 130)
          {
            return 0;
          }
        }

        else if (a2 != 131)
        {
          return 0;
        }
      }

      else if (a1 == 128)
      {
        if (a2 != 128)
        {
          return 0;
        }
      }

      else if (a2 != 129)
      {
        return 0;
      }
    }

    else if (a1 > 0xA1u)
    {
      if (a1 == 162)
      {
        if (a2 != 162)
        {
          return 0;
        }
      }

      else if (a2 != 163)
      {
        return 0;
      }
    }

    else if (a1 == 160)
    {
      if (a2 != 160)
      {
        return 0;
      }
    }

    else if (a2 != 161)
    {
      return 0;
    }

    return 1;
  }

  if ((a1 >> 5) > 1u)
  {
    if (v3 == 2)
    {
      if ((a2 & 0xE0) != 0x40)
      {
        return 0;
      }
    }

    else if ((a2 & 0xE0) != 0x60)
    {
      return 0;
    }

LABEL_28:
    v2 = a2 & 0x1F;
    v4 = a1 & 0x1F;
    if ((a1 & 0x1F) == 0)
    {
      goto LABEL_6;
    }

LABEL_29:
    if (v4 == 1)
    {
      v5 = 0x7475706E49;
    }

    else
    {
      v5 = 0x74757074754FLL;
    }

    if (v4 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }

    goto LABEL_35;
  }

  if (a1 >> 5)
  {
    if ((a2 & 0xE0) != 0x20)
    {
      return 0;
    }

    goto LABEL_28;
  }

  if (a2 > 0x1Fu)
  {
    return 0;
  }

  v4 = a1;
  if (a1)
  {
    goto LABEL_29;
  }

LABEL_6:
  v5 = 0x6669636570736E55;
  v6 = 0xEB00000000646569;
LABEL_35:
  v7 = 0xE500000000000000;
  v8 = 0x7475706E49;
  if (v2 != 1)
  {
    v8 = 0x74757074754FLL;
    v7 = 0xE600000000000000;
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6669636570736E55;
  }

  if (v2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB00000000646569;
  }

  if (v5 == v9 && v6 == v10)
  {

    return 1;
  }

  else
  {
    v12 = sub_1D2879618();

    return v12 & 1;
  }
}

uint64_t sub_1D2706048(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6669636570736E75 && a2 == 0xEB00000000646569;
  if (v4 || (sub_1D2879618() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x727265764F736D67 && a2 == 0xEB00000000656469 || (sub_1D2879618() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D28C0520 == a2 || (sub_1D2879618() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6867697279706F63 && a2 == 0xE900000000000074 || (sub_1D2879618() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6566615374786574 && a2 == 0xEF6C65646F4D7974 || (sub_1D2879618() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73696C6B636F6C62 && a2 == 0xE900000000000074 || (sub_1D2879618() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 7566953 && a2 == 0xE300000000000000 || (sub_1D2879618() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x654E797465666173 && a2 == 0xE900000000000074 || (sub_1D2879618() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F6F626174 && a2 == 0xE500000000000000 || (sub_1D2879618() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D28C0540 == a2 || (sub_1D2879618() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D28C0560 == a2 || (sub_1D2879618() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D28C0580 == a2 || (sub_1D2879618() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D28C05A0 == a2 || (sub_1D2879618() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D28C05C0 == a2 || (sub_1D2879618() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x656C7069746C756DLL && a2 == 0xEE00656C706F6550 || (sub_1D2879618() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D28C05E0 == a2 || (sub_1D2879618() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001D28C0600 == a2 || (sub_1D2879618() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001D28C0620 == a2 || (sub_1D2879618() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D28C0650 == a2 || (sub_1D2879618() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x42726579614C6975 && a2 == 0xEF676E696B636F6CLL)
  {

    return 19;
  }

  else
  {
    v6 = sub_1D2879618();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t sub_1D2706680(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E07D0);
  v157 = *(v2 - 8);
  v158 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v151 = &v96 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E07D8);
  v152 = *(v4 - 8);
  v153 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v150 = &v96 - v5;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E07E0);
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v149 = &v96 - v6;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E07E8);
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v148 = &v96 - v7;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E07F0);
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v147 = &v96 - v8;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E07F8);
  v129 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v146 = &v96 - v9;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0800);
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v145 = &v96 - v10;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0808);
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v144 = &v96 - v11;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0810);
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v143 = &v96 - v12;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0818);
  v119 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v141 = &v96 - v13;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0820);
  v120 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v142 = &v96 - v14;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0828);
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v140 = &v96 - v15;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0830);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v156 = &v96 - v16;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0838);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v139 = &v96 - v17;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0840);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v155 = &v96 - v18;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0848);
  v110 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v138 = &v96 - v19;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0850);
  v108 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v137 = &v96 - v20;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0858);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v154 = &v96 - v21;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0860);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v23 = &v96 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0868);
  v102 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v96 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0870);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v96 - v29;
  v31 = a1[3];
  v160 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_1D2708110();
  v32 = v159;
  sub_1D2879868();
  if (v32)
  {
LABEL_45:
    v89 = v160;
    goto LABEL_46;
  }

  v98 = v26;
  v97 = v24;
  v99 = v23;
  v33 = v154;
  v34 = v155;
  v35 = v156;
  v100 = 0;
  v37 = v157;
  v36 = v158;
  v101 = v28;
  v38 = v30;
  v159 = sub_1D2879538();
  if (*(v159 + 16) != 1 || *(v159 + 32) == 20)
  {
    v44 = v27;
    v27 = sub_1D28791F8();
    swift_allocError();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0880);
    *v46 = &_s19BlockingSubCategoryON;
    sub_1D28794B8();
    sub_1D28791E8();
    (*(*(v27 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v27);
    swift_willThrow();
    (*(v101 + 8))(v30, v44);
LABEL_44:
    swift_unknownObjectRelease();
    goto LABEL_45;
  }

  v39 = v36;
  v41 = v152;
  v40 = v153;
  switch(*(v159 + 32))
  {
    case 1:
      v161 = 1;
      sub_1D27087A0();
      v71 = v99;
      v72 = v100;
      sub_1D2879498();
      if (v72)
      {
        goto LABEL_43;
      }

      (*(v103 + 8))(v71, v104);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 129;
      goto LABEL_52;
    case 2:
      v161 = 2;
      sub_1D270874C();
      v62 = v100;
      sub_1D2879498();
      if (v62)
      {
        goto LABEL_43;
      }

      (*(v106 + 8))(v33, v107);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 130;
      goto LABEL_52;
    case 3:
      v161 = 3;
      sub_1D27086F8();
      v65 = v137;
      v66 = v100;
      sub_1D2879498();
      if (v66)
      {
        goto LABEL_43;
      }

      (*(v108 + 8))(v65, v105);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 131;
      goto LABEL_52;
    case 4:
      v161 = 4;
      sub_1D27086A4();
      v53 = v138;
      v54 = v100;
      sub_1D2879498();
      if (v54)
      {
        goto LABEL_43;
      }

      (*(v110 + 8))(v53, v109);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 160;
      goto LABEL_52;
    case 5:
      v161 = 5;
      sub_1D2708650();
      v75 = v100;
      sub_1D2879498();
      if (v75)
      {
        goto LABEL_43;
      }

      (*(v111 + 8))(v34, v112);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 161;
      goto LABEL_52;
    case 6:
      v161 = 6;
      sub_1D27085FC();
      v78 = v139;
      v79 = v100;
      sub_1D2879498();
      if (v79)
      {
        goto LABEL_43;
      }

      v80 = v27;
      sub_1D2708500();
      v81 = v114;
      sub_1D2879528();
      v82 = v101;
      (*(v113 + 8))(v78, v81);
      (*(v82 + 8))(v38, v80);
      swift_unknownObjectRelease();
      v27 = v161;
      goto LABEL_52;
    case 7:
      v161 = 7;
      sub_1D27085A8();
      v67 = v100;
      sub_1D2879498();
      if (v67)
      {
        goto LABEL_43;
      }

      v68 = v27;
      sub_1D2708500();
      v69 = v116;
      sub_1D2879528();
      v70 = v101;
      (*(v115 + 8))(v35, v69);
      (*(v70 + 8))(v38, v68);
      swift_unknownObjectRelease();
      v27 = v161 | 0x20u;
      goto LABEL_52;
    case 8:
      v161 = 8;
      sub_1D2708554();
      v87 = v140;
      v88 = v100;
      sub_1D2879498();
      if (v88)
      {
        goto LABEL_43;
      }

      v93 = v27;
      sub_1D2708500();
      v94 = v118;
      sub_1D2879528();
      v95 = v101;
      (*(v117 + 8))(v87, v94);
      (*(v95 + 8))(v38, v93);
      swift_unknownObjectRelease();
      v27 = v161 | 0x40u;
      goto LABEL_52;
    case 9:
      v161 = 9;
      sub_1D27084AC();
      v57 = v142;
      v58 = v100;
      sub_1D2879498();
      if (v58)
      {
        goto LABEL_43;
      }

      v59 = v27;
      sub_1D2708500();
      v60 = v122;
      sub_1D2879528();
      v61 = v101;
      (*(v120 + 8))(v57, v60);
      (*(v61 + 8))(v38, v59);
      swift_unknownObjectRelease();
      v27 = v161 | 0x60u;
      goto LABEL_52;
    case 0xA:
      v161 = 10;
      sub_1D2708458();
      v85 = v141;
      v86 = v100;
      sub_1D2879498();
      if (v86)
      {
        goto LABEL_43;
      }

      (*(v119 + 8))(v85, v121);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 162;
      goto LABEL_52;
    case 0xB:
      v161 = 11;
      sub_1D2708404();
      v51 = v143;
      v52 = v100;
      sub_1D2879498();
      if (v52)
      {
        goto LABEL_43;
      }

      (*(v123 + 8))(v51, v124);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 163;
      goto LABEL_52;
    case 0xC:
      v161 = 12;
      sub_1D27083B0();
      v55 = v144;
      v56 = v100;
      sub_1D2879498();
      if (v56)
      {
        goto LABEL_43;
      }

      (*(v125 + 8))(v55, v126);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 192;
      goto LABEL_52;
    case 0xD:
      v161 = 13;
      sub_1D270835C();
      v76 = v145;
      v77 = v100;
      sub_1D2879498();
      if (v77)
      {
        goto LABEL_43;
      }

      (*(v127 + 8))(v76, v128);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 193;
      goto LABEL_52;
    case 0xE:
      v161 = 14;
      sub_1D2708308();
      v49 = v146;
      v50 = v100;
      sub_1D2879498();
      if (v50)
      {
        goto LABEL_43;
      }

      (*(v129 + 8))(v49, v130);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 194;
      goto LABEL_52;
    case 0xF:
      v161 = 15;
      sub_1D27082B4();
      v63 = v147;
      v64 = v100;
      sub_1D2879498();
      if (v64)
      {
        goto LABEL_43;
      }

      (*(v131 + 8))(v63, v132);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 195;
      goto LABEL_52;
    case 0x10:
      v161 = 16;
      sub_1D2708260();
      v47 = v148;
      v48 = v100;
      sub_1D2879498();
      if (v48)
      {
        goto LABEL_43;
      }

      (*(v133 + 8))(v47, v134);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 224;
      goto LABEL_52;
    case 0x11:
      v161 = 17;
      sub_1D270820C();
      v73 = v149;
      v74 = v100;
      sub_1D2879498();
      if (v74)
      {
        goto LABEL_43;
      }

      (*(v135 + 8))(v73, v136);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 225;
      goto LABEL_52;
    case 0x12:
      v161 = 18;
      sub_1D27081B8();
      v83 = v150;
      v84 = v100;
      sub_1D2879498();
      if (v84)
      {
        goto LABEL_43;
      }

      (*(v41 + 8))(v83, v40);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 226;
      goto LABEL_52;
    case 0x13:
      v161 = 19;
      sub_1D2708164();
      v91 = v151;
      v92 = v100;
      sub_1D2879498();
      if (v92)
      {
        (*(v101 + 8))(v38, v27);
        swift_unknownObjectRelease();
      }

      else
      {
        (*(v37 + 8))(v91, v39);
        (*(v101 + 8))(v38, v27);
        swift_unknownObjectRelease();
        v27 = 227;
      }

      v89 = v160;
      break;
    default:
      v161 = 0;
      sub_1D27087F4();
      v42 = v98;
      v43 = v100;
      sub_1D2879498();
      if (v43)
      {
LABEL_43:
        (*(v101 + 8))(v38, v27);
        goto LABEL_44;
      }

      (*(v102 + 8))(v42, v97);
      (*(v101 + 8))(v38, v27);
      swift_unknownObjectRelease();
      v27 = 128;
LABEL_52:
      v89 = v160;
      break;
  }

LABEL_46:
  __swift_destroy_boxed_opaque_existential_0(v89);
  return v27;
}

unint64_t sub_1D2708110()
{
  result = qword_1EC6E0878;
  if (!qword_1EC6E0878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0878);
  }

  return result;
}

unint64_t sub_1D2708164()
{
  result = qword_1EC6E0888;
  if (!qword_1EC6E0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0888);
  }

  return result;
}

unint64_t sub_1D27081B8()
{
  result = qword_1EC6E0890;
  if (!qword_1EC6E0890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0890);
  }

  return result;
}

unint64_t sub_1D270820C()
{
  result = qword_1EC6E0898;
  if (!qword_1EC6E0898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0898);
  }

  return result;
}

unint64_t sub_1D2708260()
{
  result = qword_1EC6E08A0;
  if (!qword_1EC6E08A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E08A0);
  }

  return result;
}

unint64_t sub_1D27082B4()
{
  result = qword_1EC6E08A8;
  if (!qword_1EC6E08A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E08A8);
  }

  return result;
}

unint64_t sub_1D2708308()
{
  result = qword_1EC6E08B0;
  if (!qword_1EC6E08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E08B0);
  }

  return result;
}

unint64_t sub_1D270835C()
{
  result = qword_1EC6E08B8;
  if (!qword_1EC6E08B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E08B8);
  }

  return result;
}

unint64_t sub_1D27083B0()
{
  result = qword_1EC6E08C0;
  if (!qword_1EC6E08C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E08C0);
  }

  return result;
}

unint64_t sub_1D2708404()
{
  result = qword_1EC6E08C8;
  if (!qword_1EC6E08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E08C8);
  }

  return result;
}

unint64_t sub_1D2708458()
{
  result = qword_1EC6E08D0;
  if (!qword_1EC6E08D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E08D0);
  }

  return result;
}

unint64_t sub_1D27084AC()
{
  result = qword_1EC6E08D8;
  if (!qword_1EC6E08D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E08D8);
  }

  return result;
}

unint64_t sub_1D2708500()
{
  result = qword_1EC6E08E0;
  if (!qword_1EC6E08E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E08E0);
  }

  return result;
}

unint64_t sub_1D2708554()
{
  result = qword_1EC6E08E8;
  if (!qword_1EC6E08E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E08E8);
  }

  return result;
}

unint64_t sub_1D27085A8()
{
  result = qword_1EC6E08F0;
  if (!qword_1EC6E08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E08F0);
  }

  return result;
}

unint64_t sub_1D27085FC()
{
  result = qword_1EC6E08F8;
  if (!qword_1EC6E08F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E08F8);
  }

  return result;
}

unint64_t sub_1D2708650()
{
  result = qword_1EC6E0900;
  if (!qword_1EC6E0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0900);
  }

  return result;
}

unint64_t sub_1D27086A4()
{
  result = qword_1EC6E0908;
  if (!qword_1EC6E0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0908);
  }

  return result;
}

unint64_t sub_1D27086F8()
{
  result = qword_1EC6E0910;
  if (!qword_1EC6E0910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0910);
  }

  return result;
}

unint64_t sub_1D270874C()
{
  result = qword_1EC6E0918;
  if (!qword_1EC6E0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0918);
  }

  return result;
}

unint64_t sub_1D27087A0()
{
  result = qword_1EC6E0920;
  if (!qword_1EC6E0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0920);
  }

  return result;
}

unint64_t sub_1D27087F4()
{
  result = qword_1EC6E0928;
  if (!qword_1EC6E0928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0928);
  }

  return result;
}

unint64_t sub_1D2708848()
{
  result = qword_1EC6E09D8;
  if (!qword_1EC6E09D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E09D8);
  }

  return result;
}

uint64_t sub_1D270889C()
{
  v0 = sub_1D2879488();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D27088E8()
{
  result = qword_1EC6E09E0;
  if (!qword_1EC6E09E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E09E0);
  }

  return result;
}

uint64_t sub_1D270893C()
{
  v0 = sub_1D2879488();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D2708988()
{
  result = qword_1EC6E09E8;
  if (!qword_1EC6E09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E09E8);
  }

  return result;
}

uint64_t _s19BlockingSubCategoryO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s19BlockingSubCategoryO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D2708C70()
{
  result = qword_1EC6E09F0;
  if (!qword_1EC6E09F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E09F0);
  }

  return result;
}

unint64_t sub_1D2708CC8()
{
  result = qword_1EC6E09F8;
  if (!qword_1EC6E09F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E09F8);
  }

  return result;
}

unint64_t sub_1D2708D20()
{
  result = qword_1EC6E0A00;
  if (!qword_1EC6E0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A00);
  }

  return result;
}

unint64_t sub_1D2708D78()
{
  result = qword_1EC6E0A08;
  if (!qword_1EC6E0A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A08);
  }

  return result;
}

unint64_t sub_1D2708DD0()
{
  result = qword_1EC6E0A10;
  if (!qword_1EC6E0A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A10);
  }

  return result;
}

unint64_t sub_1D2708E28()
{
  result = qword_1EC6E0A18;
  if (!qword_1EC6E0A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A18);
  }

  return result;
}

unint64_t sub_1D2708E80()
{
  result = qword_1EC6E0A20;
  if (!qword_1EC6E0A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A20);
  }

  return result;
}

unint64_t sub_1D2708ED8()
{
  result = qword_1EC6E0A28;
  if (!qword_1EC6E0A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A28);
  }

  return result;
}

unint64_t sub_1D2708F30()
{
  result = qword_1EC6E0A30;
  if (!qword_1EC6E0A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A30);
  }

  return result;
}

unint64_t sub_1D2708F88()
{
  result = qword_1EC6E0A38;
  if (!qword_1EC6E0A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A38);
  }

  return result;
}

unint64_t sub_1D2708FE0()
{
  result = qword_1EC6E0A40;
  if (!qword_1EC6E0A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A40);
  }

  return result;
}

unint64_t sub_1D2709038()
{
  result = qword_1EC6E0A48;
  if (!qword_1EC6E0A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A48);
  }

  return result;
}

unint64_t sub_1D2709090()
{
  result = qword_1EC6E0A50;
  if (!qword_1EC6E0A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A50);
  }

  return result;
}

unint64_t sub_1D27090E8()
{
  result = qword_1EC6E0A58;
  if (!qword_1EC6E0A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A58);
  }

  return result;
}

unint64_t sub_1D2709140()
{
  result = qword_1EC6E0A60;
  if (!qword_1EC6E0A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A60);
  }

  return result;
}

unint64_t sub_1D2709198()
{
  result = qword_1EC6E0A68;
  if (!qword_1EC6E0A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A68);
  }

  return result;
}

unint64_t sub_1D27091F0()
{
  result = qword_1EC6E0A70;
  if (!qword_1EC6E0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A70);
  }

  return result;
}

unint64_t sub_1D2709248()
{
  result = qword_1EC6E0A78;
  if (!qword_1EC6E0A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A78);
  }

  return result;
}

unint64_t sub_1D27092A0()
{
  result = qword_1EC6E0A80;
  if (!qword_1EC6E0A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A80);
  }

  return result;
}

unint64_t sub_1D27092F8()
{
  result = qword_1EC6E0A88;
  if (!qword_1EC6E0A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A88);
  }

  return result;
}

unint64_t sub_1D2709350()
{
  result = qword_1EC6E0A90;
  if (!qword_1EC6E0A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A90);
  }

  return result;
}

unint64_t sub_1D27093A8()
{
  result = qword_1EC6E0A98;
  if (!qword_1EC6E0A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0A98);
  }

  return result;
}

unint64_t sub_1D2709400()
{
  result = qword_1EC6E0AA0;
  if (!qword_1EC6E0AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0AA0);
  }

  return result;
}

unint64_t sub_1D2709458()
{
  result = qword_1EC6E0AA8;
  if (!qword_1EC6E0AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0AA8);
  }

  return result;
}

unint64_t sub_1D27094B0()
{
  result = qword_1EC6E0AB0;
  if (!qword_1EC6E0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0AB0);
  }

  return result;
}

unint64_t sub_1D2709508()
{
  result = qword_1EC6E0AB8;
  if (!qword_1EC6E0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0AB8);
  }

  return result;
}

unint64_t sub_1D2709560()
{
  result = qword_1EC6E0AC0;
  if (!qword_1EC6E0AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0AC0);
  }

  return result;
}

unint64_t sub_1D27095B8()
{
  result = qword_1EC6E0AC8;
  if (!qword_1EC6E0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0AC8);
  }

  return result;
}

unint64_t sub_1D2709610()
{
  result = qword_1EC6E0AD0;
  if (!qword_1EC6E0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0AD0);
  }

  return result;
}

unint64_t sub_1D2709668()
{
  result = qword_1EC6E0AD8;
  if (!qword_1EC6E0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0AD8);
  }

  return result;
}

unint64_t sub_1D27096C0()
{
  result = qword_1EC6E0AE0;
  if (!qword_1EC6E0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0AE0);
  }

  return result;
}

unint64_t sub_1D2709718()
{
  result = qword_1EC6E0AE8;
  if (!qword_1EC6E0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0AE8);
  }

  return result;
}

unint64_t sub_1D2709770()
{
  result = qword_1EC6E0AF0;
  if (!qword_1EC6E0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0AF0);
  }

  return result;
}

unint64_t sub_1D27097C8()
{
  result = qword_1EC6E0AF8;
  if (!qword_1EC6E0AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0AF8);
  }

  return result;
}

unint64_t sub_1D2709820()
{
  result = qword_1EC6E0B00;
  if (!qword_1EC6E0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B00);
  }

  return result;
}

unint64_t sub_1D2709878()
{
  result = qword_1EC6E0B08;
  if (!qword_1EC6E0B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B08);
  }

  return result;
}

unint64_t sub_1D27098D0()
{
  result = qword_1EC6E0B10;
  if (!qword_1EC6E0B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B10);
  }

  return result;
}

unint64_t sub_1D2709928()
{
  result = qword_1EC6E0B18;
  if (!qword_1EC6E0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B18);
  }

  return result;
}

unint64_t sub_1D2709980()
{
  result = qword_1EC6E0B20;
  if (!qword_1EC6E0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B20);
  }

  return result;
}

unint64_t sub_1D27099D8()
{
  result = qword_1EC6E0B28;
  if (!qword_1EC6E0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B28);
  }

  return result;
}

unint64_t sub_1D2709A30()
{
  result = qword_1EC6E0B30;
  if (!qword_1EC6E0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B30);
  }

  return result;
}

unint64_t sub_1D2709A88()
{
  result = qword_1EC6E0B38;
  if (!qword_1EC6E0B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B38);
  }

  return result;
}

unint64_t sub_1D2709AE0()
{
  result = qword_1EC6E0B40;
  if (!qword_1EC6E0B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B40);
  }

  return result;
}

unint64_t sub_1D2709B38()
{
  result = qword_1EC6E0B48;
  if (!qword_1EC6E0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B48);
  }

  return result;
}

unint64_t sub_1D2709B90()
{
  result = qword_1EC6E0B50;
  if (!qword_1EC6E0B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B50);
  }

  return result;
}

unint64_t sub_1D2709BE8()
{
  result = qword_1EC6E0B58;
  if (!qword_1EC6E0B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B58);
  }

  return result;
}

unint64_t sub_1D2709C40()
{
  result = qword_1EC6E0B60;
  if (!qword_1EC6E0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0B60);
  }

  return result;
}

void sub_1D2709CB4(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >= 3)
  {
    sub_1D2872698();
    v9 = sub_1D2873CA8();
    v10 = sub_1D2878A28();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = a1;
      _os_log_impl(&dword_1D226E000, v9, v10, "Tried to initialise CreationViewStyle from unknown GPStyle: %ld. Fallback on GenerativePlayground", v11, 0xCu);
      MEMORY[0x1D38A3520](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    LOBYTE(v8) = 4;
  }

  else
  {
    v8 = 0x401u >> (8 * a1);
  }

  *a2 = v8;
}

uint64_t type metadata accessor for OnboardingTextViewModifier()
{
  result = qword_1ED89F840;
  if (!qword_1ED89F840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2709ECC()
{
  sub_1D24AF338();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D2709F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v42 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860);
  MEMORY[0x1EEE9AC00](v40);
  v48 = &v40 - v2;
  v47 = sub_1D2875C28();
  v3 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  v46 = sub_1D2875C48();
  v8 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0B68);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0B70);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  v19 = sub_1D28764D8();
  KeyPath = swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0B78);
  (*(*(v21 - 8) + 16))(v15, v42, v21);
  v22 = &v15[*(v13 + 36)];
  *v22 = KeyPath;
  v22[1] = v19;
  sub_1D2876438();
  sub_1D270AAEC();
  v23 = v16;
  sub_1D2876758();
  sub_1D22BD238(v15, &qword_1EC6E0B68);
  v24 = *(v45 + *(type metadata accessor for OnboardingTextViewModifier() + 20));
  v25 = swift_getKeyPath();
  v26 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0B80) + 36)];
  *v26 = v25;
  v26[1] = v24;
  v27 = swift_getKeyPath();
  v28 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0B88) + 36)];
  *v28 = v27;
  v28[8] = 1;
  sub_1D2875C18();
  v29 = v47;
  (*(v3 + 16))(v44, v7, v47);
  sub_1D2875C38();
  (*(v3 + 8))(v7, v29);
  v30 = v46;
  (*(v8 + 16))(v43, v12, v46);
  sub_1D270B36C(&qword_1ED89D4C8, MEMORY[0x1E697FBD0]);
  v31 = v30;
  v32 = sub_1D2874988();
  v33 = v48;
  (*(v8 + 8))(v12, v31);
  *&v18[*(v23 + 36)] = v32;
  v34 = *MEMORY[0x1E697E6C0];
  v35 = sub_1D2874E88();
  (*(*(v35 - 8) + 104))(v33, v34, v35);
  sub_1D270B36C(&qword_1ED89DE70, MEMORY[0x1E697E730]);
  result = sub_1D2877F98();
  if (result)
  {
    sub_1D270ABD0();
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    v37 = v41;
    sub_1D28769B8();
    sub_1D22BD238(v33, &unk_1EC6DE860);
    sub_1D22990C0(v18);
    sub_1D2739754(1, 1, v49);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0B90);
    v38 = v37 + *(result + 36);
    v39 = v49[1];
    *v38 = v49[0];
    *(v38 + 16) = v39;
    *(v38 + 32) = v49[2];
    *(v38 + 48) = v50;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D270A560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D2875F38();
  v6 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0B98) + 36));
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
  swift_storeEnumTagMultiPayload();
  *(v6 + *(type metadata accessor for OnboardingTextViewModifier() + 20)) = 0x3FF0000000000000;
  KeyPath = swift_getKeyPath();
  v8 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0BA0) + 36);
  *v8 = KeyPath;
  *(v8 + 8) = 1;
  *(v8 + 16) = 0;
  LOBYTE(KeyPath) = sub_1D2876328();
  v9 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0BA8) + 36);
  *v9 = KeyPath;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 1;
  LOBYTE(KeyPath) = sub_1D2876398();
  sub_1D2874298();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0BB0) + 36);
  *v18 = KeyPath;
  *(v18 + 8) = v11;
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;
  *(v18 + 32) = v17;
  *(v18 + 40) = 0;
  v19 = sub_1D2877848();
  v21 = v20;
  v22 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0BB8) + 36));
  *v22 = sub_1D2877848();
  v22[1] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0BC0);
  sub_1D270A744(a1, a2, v22 + *(v24 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0BC8);
  v26 = (v22 + *(result + 36));
  *v26 = v19;
  v26[1] = v21;
  return result;
}

uint64_t sub_1D270A744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v32 = a1;
  v36 = a3;
  v3 = sub_1D2877548();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC7C0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v34 = &v30 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0BD0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v19 = *MEMORY[0x1E697F468];
  v20 = sub_1D2875868();
  v21 = *(*(v20 - 8) + 104);
  v21(v18, v19, v20);
  v22 = [objc_opt_self() systemFillColor];
  *&v18[*(v13 + 60)] = sub_1D2877128();
  *&v18[*(v13 + 64)] = 256;
  v21(v5, v19, v20);
  if (sub_1D2875F48())
  {
    v23 = v31;
    sub_1D2870F78();
  }

  else
  {
    v37 = sub_1D2877098();
    v23 = sub_1D28748D8();
  }

  sub_1D270AE34(v5, v9);
  v24 = v33;
  v25 = v34;
  *&v9[*(v33 + 52)] = v23;
  *&v9[*(v24 + 56)] = 256;
  sub_1D270AE98(v9, v25);
  sub_1D22BD1D0(v18, v15, &qword_1EC6E0BD0);
  v26 = v35;
  sub_1D22BD1D0(v25, v35, &qword_1EC6DC7C0);
  v27 = v36;
  sub_1D22BD1D0(v15, v36, &qword_1EC6E0BD0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0BD8);
  sub_1D22BD1D0(v26, v27 + *(v28 + 48), &qword_1EC6DC7C0);
  sub_1D22BD238(v25, &qword_1EC6DC7C0);
  sub_1D22BD238(v18, &qword_1EC6E0BD0);
  sub_1D22BD238(v26, &qword_1EC6DC7C0);
  return sub_1D22BD238(v15, &qword_1EC6E0BD0);
}

unint64_t sub_1D270AAEC()
{
  result = qword_1ED89DDB0;
  if (!qword_1ED89DDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0B68);
    sub_1D22BB9D8(&qword_1ED89D470, &qword_1EC6E0B78);
    sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DDB0);
  }

  return result;
}

unint64_t sub_1D270ABD0()
{
  result = qword_1ED89D8F0;
  if (!qword_1ED89D8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0B70);
    sub_1D270AC88();
    sub_1D22BB9D8(&qword_1ED89D4A0, &qword_1EC6DB918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D8F0);
  }

  return result;
}

unint64_t sub_1D270AC88()
{
  result = qword_1ED89DA70;
  if (!qword_1ED89DA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0B88);
    sub_1D270AD40();
    sub_1D22BB9D8(&qword_1ED89D310, &qword_1EC6DA0F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DA70);
  }

  return result;
}

unint64_t sub_1D270AD40()
{
  result = qword_1ED89DCE0;
  if (!qword_1ED89DCE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0B80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0B68);
    sub_1D270AAEC();
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D358, &qword_1EC6DC9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DCE0);
  }

  return result;
}

uint64_t sub_1D270AE34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2877548();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D270AE98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC7C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D270AF08()
{
  result = qword_1ED89DC78;
  if (!qword_1ED89DC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0B90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0B70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE860);
    sub_1D270ABD0();
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    swift_getOpaqueTypeConformance2();
    sub_1D22F5CDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DC78);
  }

  return result;
}

unint64_t sub_1D270B030()
{
  result = qword_1EC6D79D0;
  if (!qword_1EC6D79D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0BB8);
    sub_1D270B144(&qword_1EC6D7A40, &qword_1EC6E0BB0, &unk_1D28A0E50, sub_1D270B114);
    sub_1D22BB9D8(&qword_1EC6D78A0, &qword_1EC6E0BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D79D0);
  }

  return result;
}

uint64_t sub_1D270B144(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D270B1C8()
{
  result = qword_1EC6D7BB8;
  if (!qword_1EC6D7BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0BA0);
    sub_1D270B280();
    sub_1D22BB9D8(&qword_1ED89D2B8, &qword_1EC6DA270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7BB8);
  }

  return result;
}

unint64_t sub_1D270B280()
{
  result = qword_1EC6D7D60;
  if (!qword_1EC6D7D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0B98);
    sub_1D270B36C(&qword_1ED89D398, MEMORY[0x1E697C8D0]);
    sub_1D270B36C(&qword_1ED89F850, type metadata accessor for OnboardingTextViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7D60);
  }

  return result;
}

uint64_t sub_1D270B36C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D270B3E0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0BE0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19[-v4];
  v23 = *(v1 + 24);
  v20 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877308();
  if (v22)
  {
    v6 = 2.0;
  }

  else
  {
    v6 = 1.0;
  }

  sub_1D2877AE8();
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0BE8);
  (*(*(v11 - 8) + 16))(v5, a1, v11);
  v12 = &v5[*(v3 + 36)];
  *v12 = v6;
  v12[1] = v6;
  *(v12 + 2) = v8;
  *(v12 + 3) = v10;
  v13 = *(v1 + 8);
  LOBYTE(v12) = *(v1 + 16);
  *&v20 = *v1;
  v14 = v20;
  *(&v20 + 1) = v13;
  v21 = v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318);
  MEMORY[0x1D389FF60](&v22, v15);
  v19[15] = v22;
  v22 = v14;
  v16 = swift_allocObject();
  v17 = *(v1 + 16);
  *(v16 + 16) = *v1;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(v1 + 32);
  sub_1D250D77C(&v22, &v20);
  sub_1D2870F78();
  sub_1D270B8F0(&v23, &v20);
  sub_1D270B960();
  sub_1D2876F58();

  return sub_1D270BA50(v5);
}

void *sub_1D270B60C(uint64_t *a1)
{
  v2 = sub_1D28760E8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *a1;
  v6 = a1[1];
  LOBYTE(v4) = *(a1 + 16);
  *&v14 = *a1;
  *(&v14 + 1) = v6;
  v15 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318);
  result = MEMORY[0x1D389FF60](v13, v8);
  if (LOBYTE(v13[0]) == 1)
  {
    MEMORY[0x1EEE9AC00](result);
    *&v12[-16] = a1;
    v16 = v7;
    v14 = *(a1 + 3);
    v10 = swift_allocObject();
    v11 = *(a1 + 1);
    *(v10 + 16) = *a1;
    *(v10 + 32) = v11;
    *(v10 + 48) = a1[4];
    sub_1D250D77C(&v16, v13);
    sub_1D2870F78();
    sub_1D270B8F0(&v14, v13);
    sub_1D2877938();
    sub_1D28760D8();
    sub_1D2874BD8();

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_1D270B804()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318);
  sub_1D28774F8();
  sub_1D2877938();
  sub_1D2874BE8();
}

uint64_t sub_1D270B8F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D270B960()
{
  result = qword_1ED89DD80;
  if (!qword_1ED89DD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0BE0);
    sub_1D270B9EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD80);
  }

  return result;
}

unint64_t sub_1D270B9EC()
{
  result = qword_1ED89D420;
  if (!qword_1ED89D420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E0BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D420);
  }

  return result;
}

uint64_t sub_1D270BA50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_30()
{

  return swift_deallocObject();
}

uint64_t sub_1D270BBA0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v28 = a3;
  v29 = type metadata accessor for PlaygroundImage();
  v7 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAB8);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - v18;
  v27 = *(v4 + 16);
  v20 = sub_1D2871818();
  v21 = *(v20 - 8);
  v22 = *(v21 + 16);
  v23 = v21 + 16;
  v30 = a2;
  v22(v19, a2, v20);
  v19[*(v17 + 44)] = v28 & 1;
  sub_1D22BD1D0(a1, v15, &unk_1EC6DE5A0);
  sub_1D22BD1D0(v15, v13, &unk_1EC6DE5A0);
  v24 = (*(v7 + 48))(v13, 1, v29);
  v25 = (v23 - 8);
  if (v24 == 1)
  {
    sub_1D22BD238(v13, &unk_1EC6DE5A0);
    sub_1D2719850(v19);
    (*v25)(v30, v20);
    sub_1D22BD238(a1, &unk_1EC6DE5A0);
  }

  else
  {
    sub_1D23EEBD4(v13, v9);
    sub_1D27192DC(v19, v9);
    (*v25)(v30, v20);
    sub_1D22BD238(a1, &unk_1EC6DE5A0);
    sub_1D23D4DFC(v9);
  }

  sub_1D22BD238(v15, &unk_1EC6DE5A0);
  return sub_1D22BD238(v19, &qword_1EC6DCAB8);
}

uint64_t sub_1D270BEC8(uint64_t a1, char a2, char a3)
{
  *(v4 + 105) = a3;
  *(v4 + 104) = a2;
  *(v4 + 48) = a1;
  *(v4 + 56) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  *(v4 + 64) = swift_task_alloc();
  sub_1D2878568();
  *(v4 + 72) = sub_1D2878558();
  v6 = sub_1D28784F8();
  *(v4 + 80) = v6;
  *(v4 + 88) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D270BFA0, v6, v5);
}

uint64_t sub_1D270BFA0()
{
  if (*(v0 + 105) == 1)
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v2 = *(v0 + 64);
    sub_1D270C724(*(v0 + 56) + *(**(v0 + 56) + 160), *(v0 + 104) & 1, v2);
    v3 = type metadata accessor for PlaygroundImage();
    v4 = *(v3 - 8);
    if ((*(v4 + 48))(v2, 1, v3) != 1)
    {
      v16 = *(v0 + 64);
      v17 = *(v0 + 48);

      sub_1D23EEBD4(v16, v17);
      (*(v4 + 56))(v17, 0, 1, v3);
      goto LABEL_13;
    }

    sub_1D22BD238(*(v0 + 64), &unk_1EC6DE5A0);
    v1 = *(v0 + 56);
  }

  v5 = *(v0 + 104);
  v6 = swift_task_alloc();
  *v6 = sub_1D22BCFD0(0, &qword_1EC6D74E0);
  v6[1] = &protocol witness table for PHAsset;
  swift_getKeyPath();

  *(v0 + 40) = v1;
  sub_1D2583618();
  sub_1D28719E8();

  v7 = *(*v1 + 192);
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (*(v8 + 16))
  {
    v9 = sub_1D25D0C1C(v5 & 1);
    if ((v10 & 1) != 0 && *(*(v8 + 56) + v9) == 1)
    {
      v11 = *(v0 + 48);

      v12 = type metadata accessor for PlaygroundImage();
      (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
LABEL_13:

      v18 = *(v0 + 8);

      return v18();
    }
  }

  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  *v13 = v0;
  v13[1] = sub_1D270C2A8;
  v14 = *(v0 + 48);

  return sub_1D270DC44(v14, v5 & 1);
}

uint64_t sub_1D270C2A8()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1D270C3C8, v3, v2);
}

uint64_t sub_1D270C3C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D270C430()
{
  swift_getKeyPath();
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  return *(v0 + 49);
}

uint64_t sub_1D270C4D0(uint64_t result)
{
  if (*(v1 + 48) == (result & 1))
  {
    *(v1 + 48) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D270C5E0()
{
  swift_getKeyPath();
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  return *(v0 + 48);
}

uint64_t sub_1D270C680()
{
  swift_getKeyPath();
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  return sub_1D2870F78();
}

uint64_t sub_1D270C724@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCAB8);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = *(v3 + 16);
  v12 = sub_1D2871818();
  (*(*(v12 - 8) + 16))(v10, a1, v12);
  v10[*(v8 + 44)] = a2 & 1;
  swift_beginAccess();
  v13 = *(v11 + 16);
  if (*(v13 + 16) && (v14 = sub_1D25D0A7C(v10), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
    swift_endAccess();
    v17 = sub_1D2870F78();
    sub_1D27190D8(v17);
    sub_1D22BD238(v10, &qword_1EC6DCAB8);
    v18 = *(*v16 + 112);
    swift_beginAccess();
    sub_1D239A330(v16 + v18, a3);

    v19 = 0;
  }

  else
  {
    swift_endAccess();
    sub_1D22BD238(v10, &qword_1EC6DCAB8);
    v19 = 1;
  }

  v20 = type metadata accessor for PlaygroundImage();
  return (*(*(v20 - 8) + 56))(a3, v19, 1, v20);
}

uint64_t sub_1D270C914()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF658);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v12 - v2;
  if (*(v0 + 96))
  {
    v4 = *(v0 + 96);
  }

  else
  {
    v5 = swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF660);
    v4 = swift_allocObject();
    v6 = (v4 + *(*v4 + 104));
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE08);
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v8 = v1[7];
    *&v3[v8] = sub_1D25D92F4(MEMORY[0x1E69E7CC0]);
    *&v3[v1[8]] = 0;
    v3[v1[9]] = 0;
    *v6 = 0;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF668) + 28);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF670);
    bzero(v6 + v9, *(*(v10 - 8) + 64));
    sub_1D22EC9BC(v3, v6 + v9, &qword_1EC6DF658);
    *(v4 + 16) = &unk_1D28A1170;
    *(v4 + 24) = v5;
    *(v4 + 32) = 0;
    *(v0 + 96) = v4;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v4;
}

uint64_t sub_1D270CB24(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_1D2872438();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = sub_1D2878568();
  v2[14] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v2[15] = v5;
  v2[16] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D270CC1C, v5, v4);
}

uint64_t sub_1D270CC1C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = v2[10];
    v0[18] = v3;
    if (v3)
    {
      __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
      v4 = objc_allocWithZone(MEMORY[0x1E6978868]);
      v5 = v3;
      v6 = [v4 init];
      v0[19] = v6;
      [v6 setNetworkAccessAllowed_];
      [v6 setDeliveryMode_];
      [v6 setSynchronous_];
      v0[20] = sub_1D2878558();
      v7 = swift_task_alloc();
      v0[21] = v7;
      *v7 = v0;
      v7[1] = sub_1D270CE18;
      v8 = v0[12];

      return sub_1D23E4308(v8, v5);
    }
  }

  sub_1D233F184();
  swift_allocError();
  *v10 = 0;
  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D270CE18()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = sub_1D28784F8();
  if (v0)
  {
    v5 = sub_1D270D270;
  }

  else
  {
    *(v2 + 184) = v3;
    *(v2 + 192) = v4;
    v5 = sub_1D270CF7C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D270CF7C()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = sub_1D263A720();
  *(v0 + 248) = 0;
  *(v0 + 252) = 1;
  v4 = swift_task_alloc();
  *(v0 + 200) = v4;
  v4[1].i64[0] = v0 + 248;
  v4[1].i64[1] = v2;
  v4[2] = vdupq_n_s64(0x4080000000000000uLL);
  v4[3].i64[0] = v1;
  v4[3].i8[8] = v3 & 1;
  v5 = swift_task_alloc();
  *(v0 + 208) = v5;
  *(v5 + 16) = v0 + 248;
  v6 = sub_1D2878558();
  *(v0 + 216) = v6;
  v7 = swift_task_alloc();
  *(v0 + 224) = v7;
  v8 = type metadata accessor for PlaygroundImage();
  *v7 = v0;
  v7[1] = sub_1D270D0DC;
  v9 = *(v0 + 64);
  v10 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE18](v9, &unk_1D289A680, v4, sub_1D2643374, v5, v6, v10, v8);
}

uint64_t sub_1D270D0DC()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_1D270D3FC;
  }

  else
  {
    v5 = sub_1D270D2E4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D270D270()
{

  *(v0 + 240) = *(v0 + 176);
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D270D494, v1, v2);
}

uint64_t sub_1D270D2E4()
{
  v1 = v0[19];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  (*(v3 + 8))(v2, v4);
  v5 = v0[15];
  v6 = v0[16];

  return MEMORY[0x1EEE6DFA0](sub_1D270D374, v5, v6);
}

uint64_t sub_1D270D374()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D270D3FC()
{
  v1 = v0[19];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  (*(v3 + 8))(v2, v4);
  v0[30] = v0[29];
  v5 = v0[15];
  v6 = v0[16];

  return MEMORY[0x1EEE6DFA0](sub_1D270D494, v5, v6);
}

uint64_t sub_1D270D494()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D270D510()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF658);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v12 - v2;
  if (*(v0 + 104))
  {
    v4 = *(v0 + 104);
  }

  else
  {
    v5 = swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF660);
    v4 = swift_allocObject();
    v6 = (v4 + *(*v4 + 104));
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE08);
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v8 = v1[7];
    *&v3[v8] = sub_1D25D92F4(MEMORY[0x1E69E7CC0]);
    *&v3[v1[8]] = 0;
    v3[v1[9]] = 0;
    *v6 = 0;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF668) + 28);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF670);
    bzero(v6 + v9, *(*(v10 - 8) + 64));
    sub_1D22EC9BC(v3, v6 + v9, &qword_1EC6DF658);
    *(v4 + 16) = &unk_1D28A11F0;
    *(v4 + 24) = v5;
    *(v4 + 32) = 0;
    *(v0 + 104) = v4;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v4;
}

uint64_t sub_1D270D720(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  sub_1D2878568();
  v2[10] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v2[11] = v4;
  v2[12] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D270D7B8, v4, v3);
}

uint64_t sub_1D270D7B8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = v2[10];
    v0[14] = v3;
    if (v3)
    {
      __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
      v4 = objc_allocWithZone(MEMORY[0x1E6978868]);
      v5 = v3;
      v6 = [v4 init];
      v0[15] = v6;
      [v6 setNetworkAccessAllowed_];
      [v6 setDeliveryMode_];
      [v6 setSynchronous_];
      v7 = swift_task_alloc();
      v0[16] = v7;
      *v7 = v0;
      v7[1] = sub_1D270D9A0;
      v8 = v0[8];

      return sub_1D23E3EFC(v8, v5, v6);
    }
  }

  sub_1D233F184();
  swift_allocError();
  *v10 = 0;
  swift_willThrow();
  v11 = v0[1];

  return v11();
}

uint64_t sub_1D270D9A0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1D270DB68;
  }

  else
  {
    v5 = sub_1D270DAF4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D270DAF4()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D270DB68()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D270DBDC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1D26421EC();

  return sub_1D2870F68();
}

uint64_t sub_1D270DC44(uint64_t a1, char a2)
{
  *(v3 + 520) = a2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  v4 = sub_1D2878538();
  *(v3 + 256) = v4;
  *(v3 + 264) = *(v4 - 8);
  *(v3 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  *(v3 + 280) = swift_task_alloc();
  v5 = sub_1D2871818();
  *(v3 + 288) = v5;
  *(v3 + 296) = *(v5 - 8);
  *(v3 + 304) = swift_task_alloc();
  v6 = type metadata accessor for PlaygroundImage();
  *(v3 + 312) = v6;
  *(v3 + 320) = *(v6 - 8);
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  v7 = sub_1D2873CB8();
  *(v3 + 352) = v7;
  *(v3 + 360) = *(v7 - 8);
  *(v3 + 368) = swift_task_alloc();
  *(v3 + 376) = swift_task_alloc();
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  sub_1D2878568();
  *(v3 + 408) = sub_1D2878558();
  v9 = sub_1D28784F8();
  *(v3 + 416) = v9;
  *(v3 + 424) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D270DED0, v9, v8);
}

uint64_t sub_1D270DED0()
{
  v66 = v0;
  sub_1D28724F8();
  sub_1D2870F78();
  v1 = sub_1D2873CA8();
  v2 = sub_1D2878A08();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 400);
  v6 = *(v0 + 352);
  v5 = *(v0 + 360);
  if (v3)
  {
    v58 = *(v0 + 520);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315394;
    v61 = v4;
    v65 = v8;
    sub_1D271A340(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
    v9 = sub_1D28795C8();
    v11 = v10;

    v12 = sub_1D23D7C84(v9, v11, &v65);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    if (v58)
    {
      v13 = 0x696665446C6C7566;
    }

    else
    {
      v13 = 0x69616E626D756874;
    }

    if (v58)
    {
      v14 = 0xEE006E6F6974696ELL;
    }

    else
    {
      v14 = 0xE90000000000006CLL;
    }

    v15 = sub_1D23D7C84(v13, v14, &v65);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_1D226E000, v1, v2, "Will load image with id: %s, type: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);

    v16 = *(v5 + 8);
    v16(v61, v6);
  }

  else
  {

    v16 = *(v5 + 8);
    v16(v4, v6);
  }

  *(v0 + 432) = v16;
  v17 = *(v0 + 248);
  swift_beginAccess();
  if (*(v17 + 80))
  {
    v62 = *(v0 + 408);
    v18 = *(v0 + 248);
    v19 = *(v0 + 520);
    v20 = swift_task_alloc();
    v21 = sub_1D22BCFD0(0, &qword_1EC6D74E0);
    *(v0 + 440) = v21;
    *v20 = v21;
    v20[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    *(v0 + 448) = *(*v18 + 224);
    *(v0 + 160) = v18;
    *(v0 + 456) = sub_1D2583618();
    sub_1D28719E8();

    *(v0 + 168) = v18;
    v22 = swift_task_alloc();
    *v22 = v21;
    v22[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    sub_1D2871A08();

    v23 = *(*v18 + 192);
    *(v0 + 464) = v23;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = *(v18 + v23);
    *(v18 + v23) = 0x8000000000000000;
    sub_1D24E8AB8(2, v19 & 1, isUniquelyReferenced_nonNull_native);
    *(v18 + v23) = v65;
    swift_endAccess();
    *(v0 + 176) = v18;
    v25 = swift_task_alloc();
    *v25 = v21;
    v25[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    sub_1D28719F8();

    if (v19)
    {
      *(v0 + 496) = sub_1D270D510();
      sub_1D2870F78();
      v26 = swift_task_alloc();
      *(v0 + 504) = v26;
      *v26 = v0;
      v26[1] = sub_1D270EA38;
      v27 = *(v0 + 328);
    }

    else
    {
      *(v0 + 472) = sub_1D270C914();
      sub_1D2870F78();
      v44 = swift_task_alloc();
      *(v0 + 480) = v44;
      *v44 = v0;
      v44[1] = sub_1D270E8BC;
      v27 = *(v0 + 336);
    }

    v45 = MEMORY[0x1E69E85E0];

    return sub_1D271066C(v27, v62, v45);
  }

  else
  {

    sub_1D28724F8();
    sub_1D2870F78();
    v28 = sub_1D2873CA8();
    v29 = sub_1D2878A08();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 392);
    v32 = *(v0 + 352);
    if (v30)
    {
      v56 = *(v0 + 520);
      v63 = *(v0 + 352);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v65 = v34;
      *v33 = 136315394;
      v59 = v31;
      sub_1D271A340(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
      v35 = sub_1D28795C8();
      v37 = v36;

      v38 = sub_1D23D7C84(v35, v37, &v65);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2080;
      if (v56)
      {
        v39 = 0x696665446C6C7566;
      }

      else
      {
        v39 = 0x69616E626D756874;
      }

      if (v56)
      {
        v40 = 0xEE006E6F6974696ELL;
      }

      else
      {
        v40 = 0xE90000000000006CLL;
      }

      v41 = sub_1D23D7C84(v39, v40, &v65);

      *(v33 + 14) = v41;
      _os_log_impl(&dword_1D226E000, v28, v29, "Asset unavailable with id: %s, type: %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v34, -1, -1);
      MEMORY[0x1D38A3520](v33, -1, -1);

      v42 = v59;
      v43 = v63;
    }

    else
    {

      v42 = v31;
      v43 = v32;
    }

    v16(v42, v43);
    v55 = *(v0 + 320);
    v57 = *(v0 + 520);
    v47 = *(v0 + 248);
    v60 = *(v0 + 240);
    v64 = *(v0 + 312);
    v48 = swift_task_alloc();
    v49 = sub_1D22BCFD0(0, &qword_1EC6D74E0);
    *v48 = v49;
    v48[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    *(v0 + 136) = v47;
    sub_1D2583618();
    sub_1D28719E8();

    *(v0 + 144) = v47;
    v50 = swift_task_alloc();
    *v50 = v49;
    v50[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    sub_1D2871A08();

    v51 = *(*v47 + 192);
    swift_beginAccess();
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v65 = *(v47 + v51);
    *(v47 + v51) = 0x8000000000000000;
    sub_1D24E8AB8(1, v57 & 1, v52);
    *(v47 + v51) = v65;
    swift_endAccess();
    *(v0 + 152) = v47;
    v53 = swift_task_alloc();
    *v53 = v49;
    v53[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    sub_1D28719F8();

    (*(v55 + 56))(v60, 1, 1, v64);

    v54 = *(v0 + 8);

    return v54();
  }
}

uint64_t sub_1D270E8BC()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  v3 = *(v2 + 424);
  v4 = *(v2 + 416);
  if (v0)
  {
    v5 = sub_1D270F104;
  }

  else
  {
    v5 = sub_1D270EBB4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D270EA38()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  v3 = *(v2 + 424);
  v4 = *(v2 + 416);
  if (v0)
  {
    v5 = sub_1D270FE64;
  }

  else
  {
    v5 = sub_1D270F90C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D270EBB4()
{
  v41 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);

  sub_1D23EEBD4(v1, v2);
  sub_1D28724F8();
  sub_1D2870F78();
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A08();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 432);
  v7 = *(v0 + 384);
  v8 = *(v0 + 352);
  if (v5)
  {
    v34 = *(v0 + 520);
    v38 = *(v0 + 384);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v40 = v10;
    *v9 = 136315394;
    v36 = v6;
    sub_1D271A340(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
    v11 = sub_1D28795C8();
    v13 = v12;

    v14 = sub_1D23D7C84(v11, v13, &v40);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    if (v34)
    {
      v15 = 0x696665446C6C7566;
    }

    else
    {
      v15 = 0x69616E626D756874;
    }

    if (v34)
    {
      v16 = 0xEE006E6F6974696ELL;
    }

    else
    {
      v16 = 0xE90000000000006CLL;
    }

    v17 = sub_1D23D7C84(v15, v16, &v40);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1D226E000, v3, v4, "Did load asset with id: %s, type: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v10, -1, -1);
    MEMORY[0x1D38A3520](v9, -1, -1);

    v36(v38, v8);
  }

  else
  {

    v6(v7, v8);
  }

  v18 = *(v0 + 464);
  v19 = *(v0 + 440);
  v32 = *(v0 + 344);
  v33 = *(v0 + 320);
  v28 = *(v0 + 296);
  v29 = *(v0 + 288);
  v30 = *(v0 + 304);
  v31 = *(v0 + 280);
  v39 = *(v0 + 520);
  v20 = *(v0 + 248);
  v35 = *(v0 + 312);
  v37 = *(v0 + 240);
  v21 = swift_task_alloc();
  *v21 = v19;
  v21[1] = &protocol witness table for PHAsset;
  swift_getKeyPath();

  *(v0 + 216) = v20;
  sub_1D28719E8();

  *(v0 + 224) = v20;
  v22 = swift_task_alloc();
  *v22 = v19;
  v22[1] = &protocol witness table for PHAsset;
  swift_getKeyPath();

  sub_1D2871A08();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v20 + v18);
  *(v20 + v18) = 0x8000000000000000;
  sub_1D24E8AB8(0, v39 & 1, isUniquelyReferenced_nonNull_native);
  *(v20 + v18) = v40;
  swift_endAccess();
  *(v0 + 232) = v20;
  v24 = swift_task_alloc();
  *v24 = v19;
  v24[1] = &protocol witness table for PHAsset;
  swift_getKeyPath();

  sub_1D28719F8();

  (*(v28 + 16))(v30, v20 + *(*v20 + 160), v29);
  sub_1D239A330(v32, v31);
  v25 = *(v33 + 56);
  v25(v31, 0, 1, v35);
  sub_1D270BBA0(v31, v30, v39 & 1);
  sub_1D23EEBD4(v32, v37);
  v25(v37, 0, 1, v35);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1D270F104()
{
  v61 = v0;
  v1 = *(v0 + 488);

  *(v0 + 184) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  if (swift_dynamicCast())
  {

    sub_1D28724F8();
    sub_1D2870F78();
    v3 = sub_1D2873CA8();
    v4 = sub_1D2878A08();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 432);
    v7 = *(v0 + 376);
    v8 = *(v0 + 352);
    if (v5)
    {
      v54 = *(v0 + 520);
      v59 = *(v0 + 376);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v60 = v10;
      *v9 = 136315394;
      v57 = v6;
      sub_1D271A340(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
      v11 = sub_1D28795C8();
      v13 = v12;

      v14 = sub_1D23D7C84(v11, v13, &v60);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      if (v54)
      {
        v15 = 0x696665446C6C7566;
      }

      else
      {
        v15 = 0x69616E626D756874;
      }

      if (v54)
      {
        v16 = 0xEE006E6F6974696ELL;
      }

      else
      {
        v16 = 0xE90000000000006CLL;
      }

      v17 = sub_1D23D7C84(v15, v16, &v60);

      *(v9 + 14) = v17;
      _os_log_impl(&dword_1D226E000, v3, v4, "Image request cancelled with id: %s, type: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v10, -1, -1);
      MEMORY[0x1D38A3520](v9, -1, -1);

      v57(v59, v8);
    }

    else
    {

      v6(v7, v8);
    }

    v37 = *(v0 + 264);
    v36 = *(v0 + 272);
    v38 = *(v0 + 256);
    (*(*(v0 + 320) + 56))(*(v0 + 240), 1, 1, *(v0 + 312));
    (*(v37 + 8))(v36, v38);
  }

  else
  {

    sub_1D28724F8();
    sub_1D2870F78();
    v18 = v1;
    v19 = sub_1D2873CA8();
    v20 = sub_1D2878A18();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 432);
    v23 = *(v0 + 368);
    v24 = *(v0 + 352);
    if (v21)
    {
      v48 = *(v0 + 520);
      v25 = swift_slowAlloc();
      v55 = v24;
      v26 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v60 = v50;
      *v25 = 136315650;
      v52 = v22;
      sub_1D271A340(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
      v27 = sub_1D28795C8();
      v49 = v23;
      v29 = v28;

      v30 = sub_1D23D7C84(v27, v29, &v60);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      if (v48)
      {
        v31 = 0x696665446C6C7566;
      }

      else
      {
        v31 = 0x69616E626D756874;
      }

      if (v48)
      {
        v32 = 0xEE006E6F6974696ELL;
      }

      else
      {
        v32 = 0xE90000000000006CLL;
      }

      v33 = sub_1D23D7C84(v31, v32, &v60);

      *(v25 + 14) = v33;
      *(v25 + 22) = 2112;
      v34 = v1;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 24) = v35;
      *v26 = v35;
      _os_log_impl(&dword_1D226E000, v19, v20, "Image request failed with id: %s, type: %s, error: %@", v25, 0x20u);
      sub_1D22BD238(v26, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v26, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v50, -1, -1);
      MEMORY[0x1D38A3520](v25, -1, -1);

      v52(v49, v55);
    }

    else
    {

      v22(v23, v24);
    }

    v39 = *(v0 + 464);
    v40 = *(v0 + 440);
    v56 = *(v0 + 320);
    v58 = *(v0 + 312);
    v51 = *(v0 + 520);
    v41 = *(v0 + 248);
    v53 = *(v0 + 240);
    v42 = swift_task_alloc();
    *v42 = v40;
    v42[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    *(v0 + 192) = v41;
    sub_1D28719E8();

    *(v0 + 200) = v41;
    v43 = swift_task_alloc();
    *v43 = v40;
    v43[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    sub_1D2871A08();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *(v41 + v39);
    *(v41 + v39) = 0x8000000000000000;
    sub_1D24E8AB8(3, v51 & 1, isUniquelyReferenced_nonNull_native);
    *(v41 + v39) = v60;
    swift_endAccess();
    *(v0 + 208) = v41;
    v45 = swift_task_alloc();
    *v45 = v40;
    v45[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    sub_1D28719F8();

    (*(v56 + 56))(v53, 1, 1, v58);
  }

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1D270F90C()
{
  v41 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 344);

  sub_1D23EEBD4(v1, v2);
  sub_1D28724F8();
  sub_1D2870F78();
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A08();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 432);
  v7 = *(v0 + 384);
  v8 = *(v0 + 352);
  if (v5)
  {
    v34 = *(v0 + 520);
    v38 = *(v0 + 384);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v40 = v10;
    *v9 = 136315394;
    v36 = v6;
    sub_1D271A340(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
    v11 = sub_1D28795C8();
    v13 = v12;

    v14 = sub_1D23D7C84(v11, v13, &v40);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    if (v34)
    {
      v15 = 0x696665446C6C7566;
    }

    else
    {
      v15 = 0x69616E626D756874;
    }

    if (v34)
    {
      v16 = 0xEE006E6F6974696ELL;
    }

    else
    {
      v16 = 0xE90000000000006CLL;
    }

    v17 = sub_1D23D7C84(v15, v16, &v40);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1D226E000, v3, v4, "Did load asset with id: %s, type: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v10, -1, -1);
    MEMORY[0x1D38A3520](v9, -1, -1);

    v36(v38, v8);
  }

  else
  {

    v6(v7, v8);
  }

  v18 = *(v0 + 464);
  v19 = *(v0 + 440);
  v32 = *(v0 + 344);
  v33 = *(v0 + 320);
  v28 = *(v0 + 296);
  v29 = *(v0 + 288);
  v30 = *(v0 + 304);
  v31 = *(v0 + 280);
  v39 = *(v0 + 520);
  v20 = *(v0 + 248);
  v35 = *(v0 + 312);
  v37 = *(v0 + 240);
  v21 = swift_task_alloc();
  *v21 = v19;
  v21[1] = &protocol witness table for PHAsset;
  swift_getKeyPath();

  *(v0 + 216) = v20;
  sub_1D28719E8();

  *(v0 + 224) = v20;
  v22 = swift_task_alloc();
  *v22 = v19;
  v22[1] = &protocol witness table for PHAsset;
  swift_getKeyPath();

  sub_1D2871A08();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v20 + v18);
  *(v20 + v18) = 0x8000000000000000;
  sub_1D24E8AB8(0, v39 & 1, isUniquelyReferenced_nonNull_native);
  *(v20 + v18) = v40;
  swift_endAccess();
  *(v0 + 232) = v20;
  v24 = swift_task_alloc();
  *v24 = v19;
  v24[1] = &protocol witness table for PHAsset;
  swift_getKeyPath();

  sub_1D28719F8();

  (*(v28 + 16))(v30, v20 + *(*v20 + 160), v29);
  sub_1D239A330(v32, v31);
  v25 = *(v33 + 56);
  v25(v31, 0, 1, v35);
  sub_1D270BBA0(v31, v30, v39 & 1);
  sub_1D23EEBD4(v32, v37);
  v25(v37, 0, 1, v35);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1D270FE64()
{
  v61 = v0;
  v1 = *(v0 + 512);

  *(v0 + 184) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
  if (swift_dynamicCast())
  {

    sub_1D28724F8();
    sub_1D2870F78();
    v3 = sub_1D2873CA8();
    v4 = sub_1D2878A08();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 432);
    v7 = *(v0 + 376);
    v8 = *(v0 + 352);
    if (v5)
    {
      v54 = *(v0 + 520);
      v59 = *(v0 + 376);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v60 = v10;
      *v9 = 136315394;
      v57 = v6;
      sub_1D271A340(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
      v11 = sub_1D28795C8();
      v13 = v12;

      v14 = sub_1D23D7C84(v11, v13, &v60);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2080;
      if (v54)
      {
        v15 = 0x696665446C6C7566;
      }

      else
      {
        v15 = 0x69616E626D756874;
      }

      if (v54)
      {
        v16 = 0xEE006E6F6974696ELL;
      }

      else
      {
        v16 = 0xE90000000000006CLL;
      }

      v17 = sub_1D23D7C84(v15, v16, &v60);

      *(v9 + 14) = v17;
      _os_log_impl(&dword_1D226E000, v3, v4, "Image request cancelled with id: %s, type: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v10, -1, -1);
      MEMORY[0x1D38A3520](v9, -1, -1);

      v57(v59, v8);
    }

    else
    {

      v6(v7, v8);
    }

    v37 = *(v0 + 264);
    v36 = *(v0 + 272);
    v38 = *(v0 + 256);
    (*(*(v0 + 320) + 56))(*(v0 + 240), 1, 1, *(v0 + 312));
    (*(v37 + 8))(v36, v38);
  }

  else
  {

    sub_1D28724F8();
    sub_1D2870F78();
    v18 = v1;
    v19 = sub_1D2873CA8();
    v20 = sub_1D2878A18();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 432);
    v23 = *(v0 + 368);
    v24 = *(v0 + 352);
    if (v21)
    {
      v48 = *(v0 + 520);
      v25 = swift_slowAlloc();
      v55 = v24;
      v26 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v60 = v50;
      *v25 = 136315650;
      v52 = v22;
      sub_1D271A340(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
      v27 = sub_1D28795C8();
      v49 = v23;
      v29 = v28;

      v30 = sub_1D23D7C84(v27, v29, &v60);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      if (v48)
      {
        v31 = 0x696665446C6C7566;
      }

      else
      {
        v31 = 0x69616E626D756874;
      }

      if (v48)
      {
        v32 = 0xEE006E6F6974696ELL;
      }

      else
      {
        v32 = 0xE90000000000006CLL;
      }

      v33 = sub_1D23D7C84(v31, v32, &v60);

      *(v25 + 14) = v33;
      *(v25 + 22) = 2112;
      v34 = v1;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 24) = v35;
      *v26 = v35;
      _os_log_impl(&dword_1D226E000, v19, v20, "Image request failed with id: %s, type: %s, error: %@", v25, 0x20u);
      sub_1D22BD238(v26, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v26, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D38A3520](v50, -1, -1);
      MEMORY[0x1D38A3520](v25, -1, -1);

      v52(v49, v55);
    }

    else
    {

      v22(v23, v24);
    }

    v39 = *(v0 + 464);
    v40 = *(v0 + 440);
    v56 = *(v0 + 320);
    v58 = *(v0 + 312);
    v51 = *(v0 + 520);
    v41 = *(v0 + 248);
    v53 = *(v0 + 240);
    v42 = swift_task_alloc();
    *v42 = v40;
    v42[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    *(v0 + 192) = v41;
    sub_1D28719E8();

    *(v0 + 200) = v41;
    v43 = swift_task_alloc();
    *v43 = v40;
    v43[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    sub_1D2871A08();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *(v41 + v39);
    *(v41 + v39) = 0x8000000000000000;
    sub_1D24E8AB8(3, v51 & 1, isUniquelyReferenced_nonNull_native);
    *(v41 + v39) = v60;
    swift_endAccess();
    *(v0 + 208) = v41;
    v45 = swift_task_alloc();
    *v45 = v40;
    v45[1] = &protocol witness table for PHAsset;
    swift_getKeyPath();

    sub_1D28719F8();

    (*(v56 + 56))(v53, 1, 1, v58);
  }

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1D271066C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v6 = sub_1D2871818();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0C00);
  v4[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE08);
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v8 = sub_1D28784F8();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v4[15] = v8;
  v4[16] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D2710818, v8, v10);
}

uint64_t sub_1D2710818()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = (v0[6] + *(*v0[6] + 104));
  os_unfair_lock_lock(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF668);
  sub_1D22BD1D0(v4 + *(v5 + 28), v3, &qword_1EC6E0C00);
  os_unfair_lock_unlock(v4);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[9];
    v7 = v0[6];
    sub_1D22BD238(v0[10], &qword_1EC6E0C00);
    sub_1D2871808();
    v8 = swift_task_alloc();
    v0[17] = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = swift_task_alloc();
    v0[18] = v9;
    *(v9 + 16) = v7;
    *(v9 + 24) = v6;
    v10 = swift_task_alloc();
    v0[19] = v10;
    v11 = type metadata accessor for PlaygroundImage();
    *v10 = v0;
    v10[1] = sub_1D2710B2C;
    v12 = v0[4];
    v13 = v0[5];
    v14 = v0[3];

    return MEMORY[0x1EEE6DE18](v14, &unk_1D28A11C0, v8, sub_1D2719DC0, v9, v12, v13, v11);
  }

  else
  {
    v15 = v0[13];
    v16 = v0[14];
    sub_1D22EC9BC(v0[10], v16, &qword_1EC6DAE08);
    sub_1D22BD1D0(v16, v15, &qword_1EC6DAE08);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v18 = v0[13];
    v19 = v0[14];
    if (EnumCaseMultiPayload == 1)
    {
      v0[2] = *v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0);
      swift_willThrowTypedImpl();
      sub_1D22BD238(v19, &qword_1EC6DAE08);
    }

    else
    {
      v21 = v0[3];
      sub_1D22BD238(v0[14], &qword_1EC6DAE08);
      sub_1D23EEBD4(v18, v21);
    }

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1D2710B2C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_1D2710CF0;
  }

  else
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_1D2710C50;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D2710C50()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D2710CF0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D2710DA8(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  v5 = *(v1 + 16);
  if (a1)
  {
    if (v5)
    {
      sub_1D2870F78();
      v6 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();

      if (v6)
      {
        return result;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  swift_getKeyPath();
  sub_1D28719E8();

  if (*(v2 + 16))
  {
    sub_1D2870F78();
    sub_1D2710F84();
  }

  v7 = sub_1D23C7998()[4];
  sub_1D2877C38();

  swift_getKeyPath();
  sub_1D28719E8();

  if (*(v2 + 16))
  {
    v8 = sub_1D2870F78();
    sub_1D2711674(v8);
  }

  return result;
}

uint64_t sub_1D2710F84()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v50 - v3;
  v5 = sub_1D2873CB8();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1D2871988();
  v62 = *(v58 - 1);
  v7 = MEMORY[0x1EEE9AC00](v58);
  v57 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v52 = &v50 - v10;
  v56 = v11;
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v50 - v12;
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC23ImagePlaygroundInternal15DetailViewModel___observationRegistrar;
  v63 = v1;
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  v51 = v13;
  sub_1D28719E8();

  v61 = v1;
  v14 = *(v1 + 24);
  v59 = v4;
  if (v14 >> 62)
  {
LABEL_24:
    v15 = sub_1D2879368();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D2870F68();
  v16 = 0;
  while (1)
  {
    if (v15 == v16)
    {

      v19 = v60;
      sub_1D2871978();
      v20 = v58;
      v21 = v62;
      v22 = v53;
      goto LABEL_18;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1D38A1C30](v16, v14);
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      sub_1D2870F78();
    }

    v17 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();

    if (v17)
    {
      break;
    }

    if (__OFADD__(v16++, 1))
    {
      goto LABEL_23;
    }
  }

  swift_getKeyPath();
  v63 = v61;
  sub_1D28719E8();

  if (__OFSUB__(v16, 2))
  {
    __break(1u);
    goto LABEL_26;
  }

  if (__OFADD__(v16, 3))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (*(v61 + 24) >> 62)
  {
LABEL_27:
    sub_1D2879368();
  }

  v20 = v58;
  v21 = v62;
  v19 = v60;
  v22 = v53;
  sub_1D2871918();
LABEL_18:
  sub_1D28724F8();
  v23 = *(v21 + 16);
  v24 = v52;
  v23(v52, v19, v20);
  v25 = sub_1D2873CA8();
  v26 = sub_1D2878A08();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v51 = v23;
    v28 = v27;
    v29 = swift_slowAlloc();
    v63 = v29;
    *v28 = 136315138;
    sub_1D271A340(&qword_1EC6E0BF0, MEMORY[0x1E6969B50]);
    v30 = sub_1D28795C8();
    v32 = v31;
    v33 = *(v62 + 8);
    v53 = ((v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v58 = v33;
    (v33)(v24, v20);
    v34 = sub_1D23D7C84(v30, v32, &v63);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_1D226E000, v25, v26, "toBeLoadedIndexSet: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v35 = v29;
    v21 = v62;
    MEMORY[0x1D38A3520](v35, -1, -1);
    v36 = v28;
    v23 = v51;
    v19 = v60;
    MEMORY[0x1D38A3520](v36, -1, -1);
  }

  else
  {

    v37 = *(v21 + 8);
    v53 = ((v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v58 = v37;
    (v37)(v24, v20);
  }

  (*(v54 + 8))(v22, v55);
  v38 = v59;
  v39 = sub_1D28785F8();
  (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
  v40 = v57;
  v23(v57, v19, v20);
  sub_1D2878568();
  v41 = v19;
  v42 = v61;
  sub_1D2870F78();
  v43 = sub_1D2878558();
  v44 = v20;
  v45 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v46 = (v56 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v48 = MEMORY[0x1E69E85E0];
  *(v47 + 16) = v43;
  *(v47 + 24) = v48;
  (*(v21 + 32))(v47 + v45, v40, v44);
  *(v47 + v46) = v42;
  sub_1D22AE01C(0, 0, v38, &unk_1D28A10F0, v47);

  return (v58)(v41, v44);
}

void sub_1D2711674(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v16 - v5;
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D22BCFD0(0, &qword_1ED89CDA0);
  v7 = sub_1D2878A58();
  v8 = sub_1D2878068();
  v9 = [v7 BOOLForKey_];

  if (v9)
  {
    if (*(v2 + 88) == 1)
    {
      *(v2 + 88) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v16[-2] = v2;
      LOBYTE(v16[-1]) = 1;
      v16[1] = v2;
      sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
      sub_1D28719D8();
    }

    v11 = sub_1D28785F8();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = swift_allocObject();
    swift_weakInit();
    sub_1D2878568();
    sub_1D2870F78();
    sub_1D2870F78();
    v13 = sub_1D2878558();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E85E0];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = a1;
    v14[5] = v12;

    sub_1D22AE01C(0, 0, v6, &unk_1D28A1228, v14);
  }
}

uint64_t sub_1D271195C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 16);
  return sub_1D2870F78();
}

uint64_t sub_1D2711A34(uint64_t a1)
{
  if (!*(v1 + 16))
  {
    if (!a1)
    {
      v4 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
    sub_1D28719D8();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D2870F78();
  v3 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = *(v1 + 16);
LABEL_8:
  *(v1 + 16) = a1;
  sub_1D2870F78();
  sub_1D2710DA8(v4);
}

uint64_t sub_1D2711BE4()
{
  swift_getKeyPath();
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  return sub_1D2870F68();
}

uint64_t sub_1D2711C88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 24);
  return sub_1D2870F68();
}

uint64_t sub_1D2711D60(uint64_t a1)
{
  v3 = sub_1D2870F68();
  v4 = sub_1D233875C(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;

    swift_getKeyPath();
    sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
    sub_1D28719E8();

    if (*(v1 + 16))
    {
      sub_1D2870F78();
      sub_1D2710F84();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2711F24(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = a2;
  sub_1D2870F68();

  swift_getKeyPath();
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  if (*(a1 + 16))
  {
    sub_1D2870F78();
    sub_1D2710F84();
  }

  return result;
}

uint64_t sub_1D2712000(uint64_t result)
{
  if (*(v1 + 49) == (result & 1))
  {
    *(v1 + 49) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2712118()
{
  swift_getKeyPath();
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  v1 = *(v0 + 56);
  sub_1D22A58B8(v1);
  return v1;
}

uint64_t sub_1D27121CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  sub_1D22A58B8(a2);
  return sub_1D22A576C(v3);
}

uint64_t sub_1D2712218()
{
  swift_getKeyPath();
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D27122C0(uint64_t result)
{
  if (*(v1 + 88) == (result & 1))
  {
    *(v1 + 88) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D27123D0(uint64_t result)
{
  if (*(v1 + 89) == (result & 1))
  {
    *(v1 + 89) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D27124E0(uint64_t result)
{
  if (*(v1 + 90) == (result & 1))
  {
    *(v1 + 90) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D27125F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  swift_getKeyPath();
  v15 = v0;
  sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  v6 = *(v0 + 16);
  if (v6)
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v14 - 2) = sub_1D22BCFD0(0, &qword_1EC6D74E0);
    *(&v14 - 1) = &protocol witness table for PHAsset;
    swift_getKeyPath();
    v15 = v6;
    sub_1D2583618();
    swift_retain_n();
    sub_1D28719E8();

    v7 = *(v6 + *(*v6 + 208));
    type metadata accessor for FavoriteAssetOperation();
    v8 = swift_allocObject();
    *(v8 + 24) = v6;
    *(v8 + 32) = 0;
    *(v8 + 16) = (v7 & 1) == 0;
    v9 = *(v1 + 40);
    v10 = sub_1D28785F8();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    sub_1D2878568();
    swift_retain_n();
    swift_retain_n();
    sub_1D2870F78();
    v11 = sub_1D2878558();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    *(v12 + 16) = v11;
    *(v12 + 24) = v13;
    *(v12 + 32) = v8;
    *(v12 + 40) = &off_1EEC2D558;
    *(v12 + 48) = 1;
    *(v12 + 56) = v9;
    *(v12 + 64) = sub_1D271A320;
    *(v12 + 72) = v6;
    sub_1D22AE01C(0, 0, v4, &unk_1D28A1330, v12);
  }

  return result;
}

void sub_1D27128DC(void *a1)
{
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    sub_1D28724F8();
    v7 = a1;
    sub_1D2870F78();
    v8 = sub_1D2873CA8();
    v9 = sub_1D2878A18();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v10 = 136315394;
      sub_1D2871818();
      sub_1D271A340(&qword_1ED8A6C90, MEMORY[0x1E69695A8]);
      v11 = sub_1D28795C8();
      v13 = sub_1D23D7C84(v11, v12, &v21);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2112;
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v15;
      v16 = v19;
      *v19 = v15;
      _os_log_impl(&dword_1D226E000, v8, v9, "failed to favorite asset: %s error: %@", v10, 0x16u);
      sub_1D22BD238(v16, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v16, -1, -1);
      v17 = v20;
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1D38A3520](v17, -1, -1);
      MEMORY[0x1D38A3520](v10, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1D2712B84()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v38 - v3;
  swift_getKeyPath();
  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal15DetailViewModel___observationRegistrar;
  v41 = v0;
  v6 = sub_1D271A340(&qword_1EC6D8880, type metadata accessor for DetailViewModel);
  sub_1D28719E8();

  v8 = *(v0 + 16);
  if (v8)
  {
    sub_1D2870F78();
    v9 = sub_1D2713138();
    if (v10)
    {
    }

    v38 = v4;
    v39 = v9;
    sub_1D23C7CA8();
    v40 = sub_1D2878068();
    v11 = sub_1D2878068();
    v12 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
    v13 = sub_1D2878068();
    v14 = sub_1D2418030(v12);

    if (v14)
    {
      type metadata accessor for IAPayloadKey(0);
      sub_1D22BCFD0(0, &qword_1ED89CC48);
      sub_1D271A340(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
      v15 = sub_1D2877E78();
    }

    else
    {
      v15 = 0;
    }

    v16 = objc_opt_self();
    v17 = v40;
    [v16 asyncSendSignal:v11 toChannel:v40 withNullableUniqueStringID:v13 withPayload:v15];

    swift_getKeyPath();
    v41 = v1;
    v18 = v1 + v5;
    sub_1D28719E8();

    v19 = *(v1 + 24);
    if (v19 >> 62)
    {
      v37 = sub_1D2879368();
      v21 = v37 - 1;
      if (!__OFSUB__(v37, 1))
      {
LABEL_8:
        if (v39 >= v21)
        {
          if (v39 < 1)
          {
            v6 = 0;
            goto LABEL_16;
          }

          v22 = -1;
        }

        else
        {
          v22 = 1;
        }

        v23 = v39 + v22;
        swift_getKeyPath();
        v41 = v1;
        sub_1D28719E8();

        v24 = *(v1 + 24);
        if ((v24 & 0xC000000000000001) == 0)
        {
          if ((v23 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v23 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v6 = *(v24 + 8 * v23 + 32);
            sub_1D2870F78();
            goto LABEL_16;
          }

          __break(1u);
          return result;
        }

        sub_1D2870F68();
        v6 = MEMORY[0x1D38A1C30](v23, v24);

LABEL_16:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1D28809B0;
        *(v18 + 32) = v8;
        v25 = qword_1EC6D8B40;
        sub_1D2870F78();
        if (v25 == -1)
        {
LABEL_17:
          v26 = qword_1EC6D8B50;
          type metadata accessor for DeleteAssetOperation();
          v27 = swift_allocObject();
          v27[4] = 0;
          v27[5] = v18;
          v27[2] = v26;
          v27[3] = 0;
          v28 = *(v1 + 40);
          v29 = swift_allocObject();
          swift_weakInit();
          v30 = swift_allocObject();
          v30[2] = v8;
          v30[3] = v6;
          v30[4] = v29;
          v31 = sub_1D28785F8();
          v32 = v38;
          (*(*(v31 - 8) + 56))(v38, 1, 1, v31);
          sub_1D2878568();
          sub_1D2870F78();
          sub_1D2870F78();
          sub_1D2870F78();
          sub_1D2870F78();
          swift_retain_n();
          sub_1D2870F78();
          v33 = v26;
          v34 = sub_1D2878558();
          v35 = swift_allocObject();
          v36 = MEMORY[0x1E69E85E0];
          *(v35 + 16) = v34;
          *(v35 + 24) = v36;
          *(v35 + 32) = v27;
          *(v35 + 40) = &off_1EEC2D930;
          *(v35 + 48) = 1;
          *(v35 + 56) = v28;
          *(v35 + 64) = sub_1D271A314;
          *(v35 + 72) = v30;
          sub_1D22AE01C(0, 0, v32, &unk_1D288CB00, v35);
        }

LABEL_24:
        swift_once();
        goto LABEL_17;
      }
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v21 = v20 - 1;
      if (!__OFSUB__(v20, 1))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  return result;
}