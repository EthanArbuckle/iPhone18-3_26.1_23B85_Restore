uint64_t sub_1D156C7A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v130 = a2;
  v127 = a3;
  v146 = sub_1D15A26A8();
  v126 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v145 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v144 = &v116 - v6;
  sub_1D1580868(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v122 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15800F0(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v129 = (&v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v125 = &v116 - v12;
  sub_1D1580AB0(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v141 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v116 - v16;
  sub_1D15801C4(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v124 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v139 = &v116 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v143 = (&v116 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v123 = &v116 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v116 - v27;
  sub_1D1491C64();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D148EF60();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v140 = &v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v116 - v36;
  v38 = sub_1D15A22A8();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v116 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v116 - v44;
  v46 = *(v43 + 16);
  if (v46)
  {
    v138 = v17;
    v47 = *(a1 + 152);
    v48 = *(a1 + 168);
    v136 = *(a1 + 160);
    v135 = v48;
    v49 = *(a1 + 184);
    v134 = *(a1 + 176);
    v133 = v49;
    v132 = *(a1 + 192);
    v50 = *(a1 + 200);
    v51 = *(a1 + 208);
    v120 = v46;
    v52 = v46 - 1;
    v53 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v142 = v43;
    v119 = v53;
    v131 = *(v33 + 72);
    sub_1D158015C(v43 + v53 + v131 * v52, v37, sub_1D148EF60);
    v54 = v38;
    v55 = *(v39 + 32);
    v55(v41, v37, v54);
    v55(v45, v41, v54);
    if (v51)
    {
      (*(v39 + 8))(v45, v54);
      v56 = type metadata accessor for SignificantChangeEngine.Output(0);
      return (*(*(v56 - 8) + 56))(v127, 1, 1, v56);
    }

    v121 = v39;
    v137 = v54;
    v63 = v130;
    sub_1D1580144(v130, v28);
    v64 = type metadata accessor for SignificantChangeEngine.State(0);
    v65 = *(v64 - 8);
    v66 = *(v65 + 48);
    v67 = 1;
    v128 = v64;
    v68 = v66(v28, 1);
    v69 = sub_1D15801C4;
    v118 = v65;
    if (v68 == 1)
    {
      v70 = v137;
      v71 = v121;
    }

    else
    {
      v71 = v121;
      v70 = v137;
      (*(v121 + 16))(v31, v28, v137);
      v67 = 0;
      v69 = type metadata accessor for SignificantChangeEngine.State;
    }

    sub_1D158034C(v28, v69);
    (*(v71 + 56))(v31, v67, 1, v70);
    v72 = v142;
    v117 = sub_1D1573C18(v31, v142);
    v74 = v73;
    sub_1D158034C(v31, sub_1D1491C64);
    if (v74)
    {
      v75 = v144;
      sub_1D15A2258();
      v76 = v145;
      v77 = sub_1D15A2608();
      MEMORY[0x1EEE9AC00](v77);
      *(&v116 - 2) = v75;
      *(&v116 - 1) = v76;

      sub_1D1565874(sub_1D1583988, (&v116 - 4), v72);
      v78 = *(v126 + 8);
      v79 = v146;
      v78(v76, v146);
      v78(v75, v79);
      v147 = v47;
      v148 = v136;
      v149 = v135;
      v150 = v134;
      v151 = v133;
      v152 = v132;
      v153 = v50;
      v80 = v124;
      (*(v118 + 56))(v124, 1, 1, v128);
      sub_1D1574250(&v147, v80, v127);

      sub_1D158034C(v80, sub_1D15801C4);
      return (*(v71 + 8))(v45, v70);
    }

    v81 = type metadata accessor for SignificantChange(0);
    v82 = *(*(v81 - 8) + 56);
    v83 = v125;
    v82(v125, 1, 1, v81);
    v84 = v123;
    sub_1D1580144(v63, v123);
    v85 = v128;
    if ((v66)(v84, 1, v128) == 1)
    {
      sub_1D158034C(v84, sub_1D15801C4);
      v86 = v143;
      v87 = v129;
    }

    else
    {
      v88 = v84 + *(v85 + 24);
      v89 = v84;
      v90 = v122;
      sub_1D1580850(v88, v122);
      sub_1D158034C(v89, type metadata accessor for SignificantChangeEngine.State);
      v91 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
      v92 = (*(*(v91 - 8) + 48))(v90, 1, v91);
      v86 = v143;
      v87 = v129;
      if (v92 != 1)
      {
        sub_1D15800D8(v90 + *(v91 + 24), v129);
        sub_1D158034C(v90, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
LABEL_18:
        v124 = v45;
        v93 = type metadata accessor for SignificantChangeEngine.Output(0);
        v94 = v138;
        sub_1D1580144(v63, &v138[*(v93 + 24)]);
        sub_1D1580218(v83, v94);
        sub_1D1580218(v87, v94 + *(v93 + 20));
        v95 = *(v93 - 8);
        (*(v95 + 56))(v94, 0, 1, v93);
        result = sub_1D1580144(v63, v86);
        v96 = v117 + 1;
        v97 = v137;
        if (__OFADD__(v117, 1))
        {
          __break(1u);
        }

        else
        {
          v130 = v93;
          if (v120 >= v96)
          {
            if (v96 == v120)
            {
LABEL_21:
              sub_1D158034C(v86, sub_1D15801C4);
              (*(v121 + 8))(v124, v97);
              v98 = v138;
              sub_1D158015C(v138, v127, sub_1D1580AB0);
              return sub_1D158034C(v98, sub_1D1580AB0);
            }

            if (v96 < v120)
            {
              if ((v96 & 0x8000000000000000) == 0)
              {
                v129 = (v121 + 8);
                v99 = (v126 + 8);
                v100 = (v95 + 48);
                v126 = v118 + 56;
                v101 = ~v117 + v120;
                v102 = v142 + v119 + v131 * v96;
                do
                {
                  v105 = v140;
                  sub_1D158015C(v102, v140, sub_1D148EF60);
                  v106 = v144;
                  sub_1D15A2258();
                  (*v129)(v105, v97);
                  v107 = v145;
                  v108 = sub_1D15A2608();
                  MEMORY[0x1EEE9AC00](v108);
                  *(&v116 - 2) = v106;
                  *(&v116 - 1) = v107;
                  v109 = v142;

                  sub_1D1565874(sub_1D1583988, (&v116 - 4), v109);
                  v110 = *v99;
                  v111 = v146;
                  (*v99)(v107, v146);
                  v112 = v106;
                  v86 = v143;
                  v110(v112, v111);
                  v147 = v47;
                  v148 = v136;
                  v149 = v135;
                  v150 = v134;
                  v151 = v133;
                  v152 = v132;
                  v153 = v50;
                  v113 = v141;
                  sub_1D1574250(&v147, v86, v141);

                  sub_1D158034C(v86, sub_1D15801C4);
                  v114 = v138;
                  sub_1D15836B8(v113, v138);
                  v115 = v130;
                  if ((*v100)(v114, 1, v130))
                  {
                    v104 = v139;
                    (*v126)(v139, 1, 1, v128);
                  }

                  else
                  {
                    v103 = v114 + *(v115 + 24);
                    v104 = v139;
                    sub_1D1580144(v103, v139);
                  }

                  sub_1D1580230(v104, v86);
                  v102 += v131;
                  --v101;
                  v97 = v137;
                }

                while (v101);
                goto LABEL_21;
              }

              goto LABEL_32;
            }

LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            return result;
          }
        }

        __break(1u);
        goto LABEL_31;
      }

      sub_1D158034C(v90, sub_1D1580868);
    }

    v82(v87, 1, 1, v81);
    goto LABEL_18;
  }

  v58 = type metadata accessor for SignificantChange(0);
  v59 = *(*(v58 - 8) + 56);
  v60 = v127;
  v59(v127, 1, 1, v58);
  v61 = type metadata accessor for SignificantChangeEngine.Output(0);
  v59(v60 + *(v61 + 20), 1, 1, v58);
  sub_1D1580144(v130, v60 + *(v61 + 24));
  v62 = *(*(v61 - 8) + 56);

  return v62(v60, 0, 1, v61);
}

uint64_t sub_1D156D6F4@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v462 = a3;
  v8 = sub_1D15A25F8();
  v391 = *(v8 - 8);
  v392 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v390 = &v379 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1583510(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v399 = &v379 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v400 = &v379 - v13;
  v14 = type metadata accessor for SignificantChange.Notification(0);
  v438 = *(v14 - 8);
  v439 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v387 = &v379 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v426 = &v379 - v17;
  sub_1D148EF2C(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v418 = &v379 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v396 = &v379 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v395 = &v379 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v425 = &v379 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v435 = &v379 - v27;
  sub_1D15800F0(0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v427 = &v379 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v379 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v433 = &v379 - v34;
  v448 = type metadata accessor for SignificantChangeEngine.State(0);
  v447 = *(v448 - 8);
  MEMORY[0x1EEE9AC00](v448);
  v405 = &v379 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v416 = &v379 - v37;
  v38 = type metadata accessor for SignificantChange(0);
  v461 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v428 = &v379 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v434 = &v379 - v41;
  v431 = type metadata accessor for SignificantChange.Period(0);
  v401 = *(v431 - 8);
  MEMORY[0x1EEE9AC00](v431);
  v402 = &v379 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v422 = &v379 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v412 = &v379 - v46;
  v451 = type metadata accessor for SignificantChangeEngine.Changepoint(0);
  v440 = *(v451 - 1);
  MEMORY[0x1EEE9AC00](v451);
  v407 = &v379 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15801C4(0);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v388 = &v379 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v397 = &v379 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v394 = &v379 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v414 = &v379 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v430 = &v379 - v57;
  sub_1D15807FC(0);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v383 = &v379 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v404 = &v379 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v386 = &v379 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v385 = &v379 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v389 = &v379 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v415 = &v379 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v406 = &v379 - v71;
  sub_1D14F104C(0);
  MEMORY[0x1EEE9AC00](v72 - 8);
  v393 = &v379 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v403 = &v379 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v413 = &v379 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v429 = &v379 - v79;
  v449 = sub_1D15A26A8();
  v450 = *(v449 - 8);
  MEMORY[0x1EEE9AC00](v449);
  v420 = &v379 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v81);
  v437 = &v379 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v436 = &v379 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v384 = &v379 - v86;
  sub_1D1583544(0);
  MEMORY[0x1EEE9AC00](v87 - 8);
  v446 = (&v379 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1583578(0);
  v454 = v89;
  v445 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v424 = &v379 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v91);
  v419 = &v379 - v92;
  MEMORY[0x1EEE9AC00](v93);
  v417 = (&v379 - v94);
  MEMORY[0x1EEE9AC00](v95);
  v441 = &v379 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v408 = &v379 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v455 = &v379 - v100;
  v463 = sub_1D15A22A8();
  v453 = *(v463 - 8);
  MEMORY[0x1EEE9AC00](v463);
  v423 = &v379 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v102);
  v398 = &v379 - v103;
  MEMORY[0x1EEE9AC00](v104);
  v421 = &v379 - v105;
  MEMORY[0x1EEE9AC00](v106);
  v432 = (&v379 - v107);
  MEMORY[0x1EEE9AC00](v108);
  v411 = &v379 - v109;
  MEMORY[0x1EEE9AC00](v110);
  v112 = &v379 - v111;
  MEMORY[0x1EEE9AC00](v113);
  v444 = &v379 - v114;
  MEMORY[0x1EEE9AC00](v115);
  v452 = &v379 - v116;
  sub_1D148EF60();
  v118 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  MEMORY[0x1EEE9AC00](v119);
  MEMORY[0x1EEE9AC00](v120);
  v443 = (&v379 - v121);
  MEMORY[0x1EEE9AC00](v122);
  v442 = (&v379 - v123);
  MEMORY[0x1EEE9AC00](v124);
  v126 = &v379 - v125;
  MEMORY[0x1EEE9AC00](v127);
  v130 = &v379 - v129;
  v131 = a2[7];
  v480 = a2[6];
  v481 = v131;
  v482 = *(a2 + 16);
  v132 = a2[3];
  v476 = a2[2];
  v477 = v132;
  v133 = a2[5];
  v478 = a2[4];
  v479 = v133;
  v134 = a2[1];
  v474 = *a2;
  v475 = v134;
  v135 = a1[2];
  v459 = a4;
  v458 = v38;
  v460 = a1;
  v457 = v112;
  v382 = v32;
  v464 = v128;
  v409 = v137;
  v410 = v136;
  v456 = v135;
  if (!v135)
  {
    if (*(&v480 + 1) > 0)
    {
      goto LABEL_10;
    }

    v138 = 0;
    if (BYTE8(v481))
    {
      goto LABEL_7;
    }

LABEL_15:
    v381 = sub_1D15708E4(v481, a1);
    v155 = v154;
    v156 = v152;
    v157 = (v153 >> 1);
    if (v152 <= (v153 >> 1))
    {
      v158 = (v153 >> 1);
    }

    else
    {
      v158 = v152;
    }

    do
    {
      if (v157 == v156)
      {
        swift_unknownObjectRelease();
        v178 = *(v461 + 56);
        a4 = v459;
        v179 = v458;
        v178(v459, 1, 1, v458);
        v148 = type metadata accessor for SignificantChangeEngine.Output(0);
        v178(a4 + *(v148 + 20), 1, 1, v179);
        goto LABEL_11;
      }

      if (v158 == v156)
      {
        __break(1u);
        goto LABEL_101;
      }

      sub_1D158015C(v155 + *(v118 + 72) * v156, v126, sub_1D148EF60);
      v156 = (v156 + 1);
      v159 = v126[*(v464 + 48) + 8];
      sub_1D158034C(v126, sub_1D148EF60);
    }

    while ((v159 & 1) != 0);
    swift_unknownObjectRelease();
    a4 = v459;
    a1 = v460;
    v112 = v457;
    v135 = v456;
    if (!v456)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

  v138 = 0;
  v139 = &v130[*(v128 + 48)];
  v140 = a1 + ((*(v118 + 80) + 32) & ~*(v118 + 80));
  v141 = *(v118 + 72);
  v142 = v135;
  do
  {
    sub_1D158015C(v140, v130, sub_1D148EF60);
    v143 = v139[8];
    sub_1D158034C(v130, sub_1D148EF60);
    v144 = (v143 & 1) == 0;
    v145 = __OFADD__(v138, v144);
    v138 += v144;
    if (v145)
    {
      __break(1u);
      goto LABEL_94;
    }

    v140 += v141;
    --v142;
  }

  while (v142);
  a4 = v459;
  a1 = v460;
  v112 = v457;
  v135 = v456;
  if (v138 < *(&v480 + 1))
  {
    goto LABEL_10;
  }

  if ((BYTE8(v481) & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (!v135)
  {
LABEL_10:
    v146 = *(v461 + 56);
    v147 = v458;
    v146(a4, 1, 1, v458);
    v148 = type metadata accessor for SignificantChangeEngine.Output(0);
    v146(a4 + *(v148 + 20), 1, 1, v147);
LABEL_11:
    v149 = a4 + *(v148 + 24);
    v150 = v462;
    goto LABEL_12;
  }

LABEL_23:
  v160 = a1 + ((*(v118 + 80) + 32) & ~*(v118 + 80));
  v380 = sub_1D148EF60;
  v381 = v160;
  v161 = v442;
  v162 = v135;
  sub_1D158015C(v160, v442, sub_1D148EF60);
  v163 = (v453 + 32);
  v164 = *(v453 + 32);
  v165 = v444;
  v166 = v463;
  v164(v444, v161, v463);
  v164(v452, v165, v166);
  v442 = *(v118 + 72);
  v167 = v443;
  sub_1D158015C(v381 + v442 * (v162 - 1), v443, v380);
  v168 = v112;
  v444 = v163;
  v443 = v164;
  v164(v112, v167, v166);
  sub_1D157096C(v460, v480);
  v170 = v169;
  MEMORY[0x1EEE9AC00](v169);
  v171 = v462;
  *(&v379 - 2) = &v474;
  *(&v379 - 1) = v171;

  sub_1D1565B00(sub_1D1583610, (&v379 - 4), v170);
  LOBYTE(v465) = BYTE9(v479);
  v172 = v446;
  sub_1D1571E0C(v173, &v465, v446);

  v174 = v454;
  if ((*(v445 + 48))(v172, 1, v454) != 1)
  {
    v380 = v170;
    sub_1D1580248(v172, v455, sub_1D1583578);
    v180 = v430;
    sub_1D1580144(v171, v430);
    v181 = v447 + 48;
    v182 = v448;
    v446 = *(v447 + 48);
    if ((v446)(v180, 1, v448) == 1)
    {
      sub_1D158034C(v180, sub_1D15801C4);
    }

    else
    {
      v183 = v406;
      sub_1D15807E4(v180 + *(v182 + 20), v406);
      sub_1D158034C(v180, type metadata accessor for SignificantChangeEngine.State);
      v184 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
      if ((*(*(v184 - 8) + 48))(v183, 1, v184) != 1)
      {
        v185 = v429;
        sub_1D1455A40(v183 + *(v184 + 24), v429);
        sub_1D158034C(v183, type metadata accessor for SignificantChangeEngine.State.MeanShift);
        v244 = (*(v450 + 48))(v185, 1, v449);
        v174 = v454;
        if (v244 != 1)
        {
          v245 = v450;
          v246 = v384;
          v247 = v449;
          (*(v450 + 32))(v384, v185, v449);
          *&v465 = 0;
          *(&v465 + 1) = 0xE000000000000000;
          sub_1D15A47D8();

          *&v465 = 0x676E697472617453;
          *(&v465 + 1) = 0xEF203A6D6F726620;
          sub_1D1580304(&qword_1EE05B3F0, MEMORY[0x1E6969530]);
          v248 = sub_1D15A4B68();
          MEMORY[0x1D388A330](v248);
          v174 = v454;

          v157 = *(&v465 + 1);
          v430 = v465;
          (*(v245 + 8))(v246, v247);
LABEL_32:
          v186 = v455 + *(v174 + 48);
          v445 = v181;
          if ((BYTE8(v474) & 1) == 0 && *&v474 < *(v186 + v451[5]) || (BYTE8(v475) & 1) == 0 && *(v186 + v451[9]) < *&v475 || (BYTE8(v476) & 1) == 0 && fabs(*(v186 + v451[7])) < *&v476)
          {

            if (qword_1EE056C98 != -1)
            {
LABEL_101:
              swift_once();
            }

            v187 = sub_1D15A3268();
            __swift_project_value_buffer(v187, qword_1EE056CA0);
            v188 = v408;
            sub_1D158015C(v455, v408, sub_1D1583578);

            v189 = sub_1D15A3248();
            v190 = sub_1D15A4338();

            v191 = os_log_type_enabled(v189, v190);
            v192 = v453;
            if (v191)
            {
              v193 = swift_slowAlloc();
              v194 = swift_slowAlloc();
              *&v465 = v194;
              *v193 = 136315394;
              v195 = v190;
              v196 = sub_1D1479780(v430, v157, &v465);

              *(v193 + 4) = v196;
              *(v193 + 12) = 2080;
              v197 = v188;
              v198 = v441;
              sub_1D158015C(v188, v441, sub_1D1583578);
              v199 = v407;
              sub_1D1580248(v198 + *(v454 + 48), v407, type metadata accessor for SignificantChangeEngine.Changepoint);
              (*(v192 + 8))(v198, v463);
              v200 = SignificantChangeEngine.Changepoint.description.getter();
              v202 = v201;
              sub_1D158034C(v199, type metadata accessor for SignificantChangeEngine.Changepoint);
              sub_1D158034C(v197, sub_1D1583578);
              v203 = sub_1D1479780(v200, v202, &v465);
              v192 = v453;

              *(v193 + 14) = v203;
              _os_log_impl(&dword_1D1446000, v189, v195, "[%s] No significant mean shift; maximum changepoint is: %s", v193, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1D388BF00](v194, -1, -1);
              MEMORY[0x1D388BF00](v193, -1, -1);
            }

            else
            {

              sub_1D158034C(v188, sub_1D1583578);
            }

            v212 = v464;
            v213 = (v192 + 8);
            v214 = 0.0;
            v216 = v409;
            v215 = v410;
            v217 = v456;
            v218 = v442;
            v219 = v381;
            do
            {
              sub_1D158015C(v219, v216, sub_1D148EF60);
              sub_1D1580248(v216, v215, sub_1D148EF60);
              v220 = v215 + *(v212 + 48);
              if (!*(v220 + 8))
              {
                v214 = v214 + *v220;
              }

              v221 = *v213;
              (*v213)(v215, v463);
              v219 += v218;
              --v217;
            }

            while (v217);
            v222 = v214 / v138;
            v223 = v463;
            v224 = v452;
            sub_1D15A2288();
            v225 = v457;
            sub_1D15A2258();
            v226 = v411;
            sub_1D15A2268();
            v227 = v412;
            (*(v453 + 16))(v412, v226, v223);
            sub_1D1572DA4(v460, v226);
            v228 = v431;
            *&v227[*(v431 + 20)] = v222;
            *&v227[*(v228 + 24)] = v229;
            v227[*(v228 + 28)] = 2;
            v230 = v227;
            v231 = v434;
            sub_1D1580248(v230, v434, type metadata accessor for SignificantChange.Period);
            v221(v226, v223);
            sub_1D158034C(v455, sub_1D1583578);
            v221(v224, v223);
            v232 = v458;
            (*(v438 + 56))(&v231[*(v458 + 24)], 1, 1, v439);
            *&v231[*(v232 + 20)] = MEMORY[0x1E69E7CC0];
            v233 = v443;
            v443(v432, v225, v223);
            v234 = v433;
            sub_1D158015C(v231, v433, type metadata accessor for SignificantChange);
            v235 = *(v461 + 56);
            v235(v234, 0, 1, v232);
            (*(v440 + 56))(v435, 1, 1, v451);
            v236 = v414;
            sub_1D1580144(v462, v414);
            v237 = v448;
            if ((v446)(v236, 1, v448) == 1)
            {
              sub_1D158034C(v236, sub_1D15801C4);
              v238 = v450;
              a4 = v459;
            }

            else
            {
              v239 = v389;
              sub_1D15807E4(v236 + *(v237 + 20), v389);
              sub_1D158034C(v236, type metadata accessor for SignificantChangeEngine.State);
              v240 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
              v241 = (*(*(v240 - 8) + 48))(v239, 1, v240);
              v238 = v450;
              a4 = v459;
              if (v241 != 1)
              {
                v243 = v413;
                sub_1D1455A40(v239 + *(v240 + 24), v413);
                sub_1D158034C(v239, type metadata accessor for SignificantChangeEngine.State.MeanShift);
                goto LABEL_59;
              }

              sub_1D158034C(v239, sub_1D15807FC);
            }

            v242 = v413;
            (*(v238 + 56))(v413, 1, 1, v449);
            v243 = v242;
LABEL_59:
            v252 = v415;
            sub_1D1580218(v433, v415);
            v253 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
            sub_1D15808F4(v435, v252 + *(v253 + 20));
            sub_1D150F280(v243, v252 + *(v253 + 24));
            (*(*(v253 - 8) + 56))(v252, 0, 1, v253);
            v254 = *(v237 + 24);
            v255 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
            v256 = v416;
            (*(*(v255 - 8) + 56))(&v416[v254], 1, 1, v255);
            v233(v256, v432, v463);
            sub_1D1580248(v252, &v256[*(v237 + 20)], sub_1D15807FC);
            sub_1D1580248(v434, a4, type metadata accessor for SignificantChange);
            v235(a4, 0, 1, v232);
            v148 = type metadata accessor for SignificantChangeEngine.Output(0);
            v235(a4 + *(v148 + 20), 1, 1, v232);
            v257 = *(v148 + 24);
            v258 = a4 + v257;
            v259 = v256;
LABEL_99:
            sub_1D1580248(v259, v258, type metadata accessor for SignificantChangeEngine.State);
            (*(v447 + 56))(a4 + v257, 0, 1, v237);
            return (*(*(v148 - 8) + 56))(a4, 0, 1, v148);
          }

          v442 = v157;
          v204 = v394;
          sub_1D1580144(v171, v394);
          if ((v446)(v204, 1, v182) == 1)
          {
            sub_1D158034C(v204, sub_1D15801C4);
            v205 = v451;
            v206 = v440;
            v207 = v455;
            v208 = v453;
            v209 = v395;
            v210 = v396;
            v211 = v417;
          }

          else
          {
            v249 = v385;
            sub_1D15807E4(v204 + *(v182 + 20), v385);
            sub_1D158034C(v204, type metadata accessor for SignificantChangeEngine.State);
            v250 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
            v251 = (*(*(v250 - 8) + 48))(v249, 1, v250);
            v205 = v451;
            v206 = v440;
            v207 = v455;
            v209 = v395;
            v210 = v396;
            v211 = v417;
            if (v251 != 1)
            {
              sub_1D15808BC(v249 + *(v250 + 20), v395);
              sub_1D158034C(v249, type metadata accessor for SignificantChangeEngine.State.MeanShift);
              v208 = v453;
LABEL_61:
              v471 = v480;
              v472 = v481;
              v473 = v482;
              v467 = v476;
              v468 = v477;
              v469 = v478;
              v470 = v479;
              v465 = v474;
              v466 = v475;
              v260 = v425;
              sub_1D157323C(v209, v380, &v465, v425);

              sub_1D158034C(v209, sub_1D148EF2C);
              v261 = v441;
              sub_1D158015C(v207, v441, sub_1D1583578);
              sub_1D1580248(v261 + *(v454 + 48), v210, type metadata accessor for SignificantChangeEngine.Changepoint);
              v434 = *(v206 + 56);
              v440 = v206 + 56;
              (v434)(v210, 0, 1, v205);
              v471 = v480;
              v472 = v481;
              v473 = v482;
              v467 = v476;
              v468 = v477;
              v469 = v478;
              v470 = v479;
              v465 = v474;
              v466 = v475;
              LODWORD(v435) = sub_1D1573790(v260, v210, &v465);
              sub_1D158034C(v210, sub_1D148EF2C);
              v263 = *(v208 + 8);
              v262 = v208 + 8;
              v456 = v263;
              (v263)(v261, v463);
              if (qword_1EE056C98 != -1)
              {
                swift_once();
              }

              v464 = v262;
              v264 = sub_1D15A3268();
              __swift_project_value_buffer(v264, qword_1EE056CA0);
              sub_1D158015C(v207, v211, sub_1D1583578);
              v265 = v442;

              v266 = sub_1D15A3248();
              v267 = sub_1D15A4338();

              if (os_log_type_enabled(v266, v267))
              {
                v268 = swift_slowAlloc();
                v433 = swift_slowAlloc();
                *&v465 = v433;
                *v268 = 136315394;
                v269 = sub_1D1479780(v430, v265, &v465);
                LODWORD(v432) = v267;
                v270 = v269;

                *(v268 + 4) = v270;
                *(v268 + 12) = 2080;
                v271 = v441;
                sub_1D158015C(v211, v441, sub_1D1583578);
                v272 = v454;
                v273 = v407;
                sub_1D1580248(v271 + *(v454 + 48), v407, type metadata accessor for SignificantChangeEngine.Changepoint);
                v442 = v266;
                v274 = v463;
                v275 = v456;
                (v456)(v271, v463);
                v276 = SignificantChangeEngine.Changepoint.description.getter();
                v278 = v277;
                sub_1D158034C(v273, type metadata accessor for SignificantChangeEngine.Changepoint);
                sub_1D158034C(v417, sub_1D1583578);
                v279 = sub_1D1479780(v276, v278, &v465);
                v205 = v451;

                *(v268 + 14) = v279;
                v280 = v274;
                v281 = v442;
                _os_log_impl(&dword_1D1446000, v442, v432, "[%s] Significant Mean Shift Changepoint: %s", v268, 0x16u);
                v282 = v433;
                swift_arrayDestroy();
                MEMORY[0x1D388BF00](v282, -1, -1);
                MEMORY[0x1D388BF00](v268, -1, -1);

                v283 = v397;
              }

              else
              {

                sub_1D158034C(v211, sub_1D1583578);
                v280 = v463;
                v271 = v441;
                v272 = v454;
                v283 = v397;
                v275 = v456;
              }

              sub_1D158015C(v455, v271, sub_1D1583578);
              v284 = v271 + *(v272 + 48);
              v4 = *(v284 + v205[7]);
              sub_1D158034C(v284, type metadata accessor for SignificantChangeEngine.Changepoint);
              v275(v271, v280);
              sub_1D1580144(v462, v283);
              v285 = v448;
              v286 = (v446)(v283, 1, v448);
              v143 = v449;
              v138 = v438;
              if (v286 == 1)
              {
                sub_1D158034C(v283, sub_1D15801C4);
                v141 = v426;
                v140 = v454;
                v142 = v399;
                v118 = v400;
              }

              else
              {
                v287 = v283 + *(v285 + 20);
                v288 = v386;
                sub_1D15807E4(v287, v386);
                sub_1D158034C(v283, type metadata accessor for SignificantChangeEngine.State);
                v289 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
                v290 = (*(*(v289 - 8) + 48))(v288, 1, v289);
                v141 = v426;
                v142 = v399;
                v118 = v400;
                if (v290 == 1)
                {
                  sub_1D158034C(v288, sub_1D15807FC);
                  v140 = v454;
                }

                else
                {
                  v126 = v382;
                  sub_1D15800D8(v288, v382);
                  sub_1D158034C(v288, type metadata accessor for SignificantChangeEngine.State.MeanShift);
                  v139 = v458;
                  v291 = (*(v461 + 48))(v126, 1, v458);
                  v140 = v454;
                  if (v291 != 1)
                  {
LABEL_94:
                    sub_1D158015C(&v126[*(v139 + 6)], v118, sub_1D1583510);
                    sub_1D158034C(v126, type metadata accessor for SignificantChange);
                    v292 = v439;
LABEL_73:
                    v293 = v419;
                    sub_1D158015C(v455, v419, sub_1D1583578);
                    v294 = *(v140 + 48);
                    v295 = v450 + 16;
                    v417 = *(v450 + 16);
                    (v417)(v420, v293 + v294, v143);
                    sub_1D158034C(v293 + v294, type metadata accessor for SignificantChangeEngine.Changepoint);
                    sub_1D158015C(v118, v142, sub_1D1583510);
                    v296 = (*(v138 + 48))(v142, 1, v292);
                    v429 = v295;
                    if (v296 == 1)
                    {
                      v297 = sub_1D1583510;
                      v298 = v142;
                    }

                    else
                    {
                      v299 = v387;
                      sub_1D1580248(v142, v387, type metadata accessor for SignificantChange.Notification);
                      if (v435)
                      {
                        v300 = v450;
                        (*(v450 + 8))(v420, v143);
                        sub_1D158034C(v118, sub_1D1583510);
                        if (*(v299 + 16))
                        {
                          sub_1D1580248(v299, v141, type metadata accessor for SignificantChange.Notification);
                          goto LABEL_84;
                        }

                        v368 = v299;
                        v307 = *v299;
                        v308 = *(v368 + 8);
                        v369 = v439;
                        v370 = *(v300 + 32);
                        v370(v141 + *(v439 + 24), v368 + *(v439 + 24), v143);
                        v370(v141 + *(v369 + 28), v368 + *(v369 + 28), v143);
LABEL_83:
                        *v141 = v307;
                        *(v141 + 8) = v308;
                        *(v141 + 16) = 1;
LABEL_84:
                        v310 = v463;
                        v311 = v456;
                        LODWORD(v433) = v4 <= 0.0;
                        (v456)(v419, v463);
                        sub_1D15A2288();
                        v442 = sub_1D1583578;
                        v312 = v455;
                        v313 = v441;
                        sub_1D158015C(v455, v441, sub_1D1583578);
                        v430 = *(v454 + 48);
                        v314 = v454;
                        sub_1D15A2288();
                        v311(v313, v310);
                        v315 = v421;
                        sub_1D15A2268();
                        v432 = type metadata accessor for SignificantChangeEngine.Changepoint;
                        sub_1D158034C(v313 + v430, type metadata accessor for SignificantChangeEngine.Changepoint);
                        v453 = *(v453 + 16);
                        v316 = v422;
                        (v453)(v422, v315, v310);
                        v317 = v442;
                        sub_1D158015C(v312, v313, v442);
                        v318 = v313 + *(v314 + 48);
                        v319 = *(v318 + v451[11] + 24);
                        sub_1D158034C(v318, type metadata accessor for SignificantChangeEngine.Changepoint);
                        sub_1D1572DA4(v460, v315);
                        v320 = v456;
                        v321 = v313;
                        v322 = v431;
                        *(v316 + *(v431 + 20)) = v319;
                        *(v316 + v322[6]) = v323;
                        *(v316 + v322[7]) = 2;
                        v324 = v463;
                        v320(v313, v463);
                        sub_1D158015C(v455, v313, v317);
                        v325 = v454;
                        v430 = *(v454 + 48);
                        sub_1D15A2288();
                        v320(v313, v324);
                        sub_1D15A2258();
                        v326 = v398;
                        sub_1D15A2268();
                        v327 = v432;
                        sub_1D158034C(v321 + v430, v432);
                        v328 = v402;
                        (v453)(v402, v326, v324);
                        sub_1D158015C(v455, v321, v442);
                        v329 = v321 + *(v325 + 48);
                        v330 = *(v329 + v451[12] + 24);
                        sub_1D158034C(v329, v327);
                        v331 = v326;
                        sub_1D1572DA4(v460, v326);
                        *(v328 + v322[5]) = v330;
                        *(v328 + v322[6]) = v332;
                        *(v328 + v322[7]) = v433;
                        v333 = v456;
                        (v456)(v321, v324);
                        v334 = v422;
                        v335 = v428;
                        sub_1D158015C(v422, v428, type metadata accessor for SignificantChange.Period);
                        sub_1D1583630(0);
                        v336 = (*(v401 + 80) + 32) & ~*(v401 + 80);
                        v337 = swift_allocObject();
                        *(v337 + 16) = xmmword_1D15ACDD0;
                        sub_1D1580248(v328, v337 + v336, type metadata accessor for SignificantChange.Period);
                        v333(v331, v324);
                        sub_1D158034C(v334, type metadata accessor for SignificantChange.Period);
                        v338 = v324;
                        v333(v421, v324);
                        sub_1D158034C(v425, sub_1D148EF2C);
                        v333(v452, v324);
                        v339 = v458;
                        v340 = *(v458 + 24);
                        sub_1D1580248(v426, v335 + v340, type metadata accessor for SignificantChange.Notification);
                        v341 = v335 + v340;
                        v342 = v455;
                        (*(v438 + 56))(v341, 0, 1, v439);
                        *(v335 + *(v339 + 20)) = v337;
                        v443(v423, v457, v324);
                        v343 = v427;
                        sub_1D158015C(v335, v427, type metadata accessor for SignificantChange);
                        v344 = *(v461 + 56);
                        v345 = v454;
                        v461 += 56;
                        v460 = v344;
                        (v344)(v343, 0, 1, v339);
                        v346 = v424;
                        sub_1D158015C(v342, v424, v442);
                        v347 = v418;
                        sub_1D1580248(v346 + *(v345 + 48), v418, type metadata accessor for SignificantChangeEngine.Changepoint);
                        (v434)(v347, 0, 1, v451);
                        if (v435)
                        {
                          v348 = v388;
                          sub_1D1580144(v462, v388);
                          v349 = v448;
                          v350 = (v446)(v348, 1, v448);
                          a4 = v459;
                          v351 = v449;
                          v352 = v404;
                          if (v350 == 1)
                          {
                            sub_1D158034C(v348, sub_1D15801C4);
                            v353 = v403;
LABEL_90:
                            v361 = v450;
                            (*(v450 + 56))(v393, 1, 1, v351);
                            goto LABEL_91;
                          }

                          v358 = v383;
                          sub_1D15807E4(v348 + *(v349 + 20), v383);
                          sub_1D158034C(v348, type metadata accessor for SignificantChangeEngine.State);
                          v359 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
                          v360 = (*(*(v359 - 8) + 48))(v358, 1, v359);
                          v353 = v403;
                          if (v360 == 1)
                          {
                            sub_1D158034C(v358, sub_1D15807FC);
                            goto LABEL_90;
                          }

                          v371 = v358 + *(v359 + 24);
                          v372 = v393;
                          sub_1D1455A40(v371, v393);
                          sub_1D158034C(v358, type metadata accessor for SignificantChangeEngine.State.MeanShift);
                          v361 = v450;
                          if ((*(v450 + 48))(v372, 1, v351) == 1)
                          {
LABEL_91:
                            v362 = v441;
                            sub_1D1580248(v455, v441, sub_1D1583578);
                            v363 = *(v454 + 48);
                            (v417)(v353, v362 + v363, v351);
                            v364 = v362 + v363;
                            v365 = v393;
                            sub_1D158034C(v364, type metadata accessor for SignificantChangeEngine.Changepoint);
                            v366 = v362;
                            v338 = v463;
                            v357 = v456;
                            (v456)(v366, v463);
                            v367 = (*(v361 + 48))(v365, 1, v351);
                            v347 = v418;
                            if (v367 != 1)
                            {
                              sub_1D158034C(v365, sub_1D14F104C);
                            }

                            goto LABEL_98;
                          }

                          sub_1D158034C(v455, sub_1D1583578);
                          (*(v361 + 32))(v353, v372, v351);
                          v338 = v463;
                          v347 = v418;
                          v357 = v456;
                        }

                        else
                        {
                          v354 = v342;
                          v355 = v441;
                          sub_1D1580248(v354, v441, sub_1D1583578);
                          v356 = *(v345 + 48);
                          v353 = v403;
                          v351 = v449;
                          (v417)(v403, v355 + v356, v449);
                          sub_1D158034C(v355 + v356, type metadata accessor for SignificantChangeEngine.Changepoint);
                          v357 = v456;
                          (v456)(v355, v324);
                          a4 = v459;
                          v352 = v404;
                        }

LABEL_98:
                        (*(v450 + 56))(v353, 0, 1, v351);
                        sub_1D1580218(v427, v352);
                        v373 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
                        sub_1D15808F4(v347, v352 + *(v373 + 20));
                        sub_1D150F280(v353, v352 + *(v373 + 24));
                        v357(v424, v338);
                        (*(*(v373 - 8) + 56))(v352, 0, 1, v373);
                        v237 = v448;
                        v374 = *(v448 + 24);
                        v375 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
                        v376 = v405;
                        (*(*(v375 - 8) + 56))(&v405[v374], 1, 1, v375);
                        v443(v376, v423, v338);
                        sub_1D1580248(v352, &v376[*(v237 + 20)], sub_1D15807FC);
                        sub_1D1580248(v428, a4, type metadata accessor for SignificantChange);
                        v377 = v458;
                        v378 = v460;
                        (v460)(a4, 0, 1, v458);
                        v148 = type metadata accessor for SignificantChangeEngine.Output(0);
                        v378(a4 + *(v148 + 20), 1, 1, v377);
                        v257 = *(v148 + 24);
                        v258 = a4 + v257;
                        v259 = v376;
                        goto LABEL_99;
                      }

                      v297 = type metadata accessor for SignificantChange.Notification;
                      v298 = v299;
                    }

                    v301 = sub_1D158034C(v298, v297);
                    v302 = v450;
                    v303 = v390;
                    MEMORY[0x1D38884F0](v301);
                    sub_1D1580304(&qword_1EE0594B0, MEMORY[0x1E69693A0]);
                    v304 = v392;
                    v305 = v420;
                    sub_1D15A2688();
                    (*(v391 + 8))(v303, v304);
                    if (v4 > 0.0)
                    {
                      v306 = 0x6973616572636E69;
                    }

                    else
                    {
                      v306 = 0x6973616572636564;
                    }

                    MEMORY[0x1D388A330](95, 0xE100000000000000);
                    MEMORY[0x1D388A330](v306, 0xEA0000000000676ELL);

                    v308 = *(&v465 + 1);
                    v307 = v465;
                    v309 = v439;
                    _s19HealthVisualization25PresentationDateProvidingPAAE012presentationD010Foundation0D0VvgZ_0();
                    sub_1D158034C(v118, sub_1D1583510);
                    (*(v302 + 32))(v141 + *(v309 + 28), v305, v449);
                    goto LABEL_83;
                  }

                  sub_1D158034C(v126, sub_1D15800F0);
                }
              }

              v292 = v439;
              (*(v138 + 56))(v118, 1, 1, v439);
              goto LABEL_73;
            }

            sub_1D158034C(v249, sub_1D15807FC);
            v208 = v453;
          }

          (*(v206 + 56))(v209, 1, 1, v205);
          goto LABEL_61;
        }

LABEL_31:
        sub_1D158034C(v185, sub_1D14F104C);
        v157 = 0x80000001D15C2670;
        v430 = 0xD000000000000019;
        goto LABEL_32;
      }

      sub_1D158034C(v183, sub_1D15807FC);
      v174 = v454;
    }

    v185 = v429;
    (*(v450 + 56))(v429, 1, 1, v449);
    goto LABEL_31;
  }

  v175 = *(v453 + 8);
  v175(v168, v166);
  v175(v452, v166);
  sub_1D158034C(v172, sub_1D1583544);
  v176 = *(v461 + 56);
  a4 = v459;
  v177 = v458;
  v176(v459, 1, 1, v458);
  v148 = type metadata accessor for SignificantChangeEngine.Output(0);
  v176(a4 + *(v148 + 20), 1, 1, v177);
  v149 = a4 + *(v148 + 24);
  v150 = v171;
LABEL_12:
  sub_1D1580144(v150, v149);
  return (*(*(v148 - 8) + 56))(a4, 0, 1, v148);
}

uint64_t sub_1D15708E4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D148EF60();
    return a2;
  }

  return result;
}

void sub_1D157096C(uint64_t a1, void (**a2)(uint64_t, uint64_t, uint64_t))
{
  sub_1D151E0D0();
  v139 = v4;
  v138 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v149 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1D15A26A8();
  v6 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v136 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D148EF2C(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v135 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D148EF60();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v134 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v148 = &v127 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v127 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v158 = &v127 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v150 = &v127 - v21;
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v127 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v127 - v27;
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v127 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v38 = &v127 - v37;
  v39 = *(a1 + 16);
  if (v39)
  {
    v154 = a2;
    v146 = v36;
    v145 = v25;
    v152 = v35;
    v153 = v6;
    v40 = 0;
    v151 = v34;
    v41 = &v38[*(v34 + 48)];
    v42 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v43 = 0.0;
    v159 = v39;
    v157 = *&v42;
    do
    {
      if (v40 >= v39)
      {
        __break(1u);
LABEL_58:
        __break(1u);
        return;
      }

      v156 = *(v11 + 72);
      sub_1D158015C(v42 + v156 * v40, v38, sub_1D148EF60);
      v44 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_58;
      }

      v45 = v41[8];
      sub_1D158034C(v38, sub_1D148EF60);
      if (v45 != 1)
      {
        v43 = v43 + 1.0;
      }

      ++v40;
      v39 = v159;
      v46 = v44 == v159;
      *&v42 = v157;
    }

    while (!v46);
    v147 = v17;
    v47 = 0.0;
    v48 = v151;
    v49 = v156;
    v50 = v32;
    do
    {
      v51 = v49;
      sub_1D158015C(v42, v50, sub_1D148EF60);
      sub_1D1580248(v50, v28, sub_1D148EF60);
      v52 = &v28[*(v48 + 48)];
      if (v52[8])
      {
        v53 = 0.0;
      }

      else
      {
        v53 = *v52;
      }

      v54 = sub_1D15A22A8();
      v55 = *(v54 - 8);
      v56 = *(*&v55 + 8);
      v56(v28, v54);
      v49 = v51;
      v47 = v47 + v53;
      v42 += v51;
      --v39;
    }

    while (v39);
    v144 = v55;
    v57 = *&v157;
    v58 = v159;
    v59 = 0.0;
    v155 = (*&v55 + 8);
    v60 = v48;
    v61 = *&v152;
    v62 = v145;
    v63 = v146;
    do
    {
      sub_1D158015C(v57, v63, sub_1D148EF60);
      sub_1D158015C(v63, v62, sub_1D148EF60);
      v64 = v62 + *(v60 + 48);
      if (*(v64 + 8))
      {
        v65 = 0.0;
      }

      else
      {
        v65 = *v64;
      }

      v56(v62, v54);
      sub_1D1580248(v63, v61, sub_1D148EF60);
      v66 = v61 + *(v60 + 48);
      if (*(v66 + 8))
      {
        v67 = 0.0;
      }

      else
      {
        v67 = *v66;
      }

      v56(v61, v54);
      v59 = v59 + v65 * v67;
      v57 += v51;
      --v58;
    }

    while (v58);
    v146 = v56;
    if (v43 >= 2.0)
    {
      v68 = v43 + -1.0;
      v69 = (v59 - v47 * v47 / v43) / (v43 + -1.0);
      if (v69 <= 0.00000001)
      {
        v69 = 0.00000001;
      }
    }

    else
    {
      v68 = v43 + -1.0;
      v69 = 0.00000001;
    }

    v70 = v54;
    v145 = (v150 + *(v151 + 48));
    v141 = v154;
    v143 = v69;
    v128 = v69 * v69 / (v43 * v43 * v68);
    v127 = (*&v153 + 32);
    v133 = (*&v153 + 8);
    v154 = (*&v144 + 32);
    v155 = MEMORY[0x1E69E7CC0];
    v71 = 0.0;
    v72 = 0.00000001;
    v140 = NAN;
    v73 = 1.0;
    v74 = 2.0;
    v75 = 0.0;
    v152 = 0.0;
    v153 = 0.00000001;
    v76 = v47 / v43;
    v77 = *&v157;
    do
    {
      v157 = v75;
      v81 = v77;
      v82 = v150;
      sub_1D158015C(v77, v150, sub_1D148EF60);
      v83 = *v145;
      v84 = v145[8];
      v85 = v151;
      v86 = v158 + *(v151 + 48);
      v87 = *v154;
      (*v154)(v158, v82, v70);
      *v86 = v83;
      *(v86 + 8) = v84;
      v88 = v158;
      v89 = v147;
      sub_1D158015C(v158, v147, sub_1D148EF60);
      v90 = v89 + *(v85 + 48);
      if (*(v90 + 8))
      {
        sub_1D158034C(v88, sub_1D148EF60);
        v146(v89, v70);
        v78 = v159;
        v79 = v81;
        v80 = v156;
        v75 = v157;
      }

      else
      {
        v144 = *v90;
        v91 = v146;
        v146(v89, v70);
        sub_1D158015C(v88, v148, sub_1D148EF60);
        v92 = v134;
        sub_1D158015C(v88, v134, sub_1D148EF60);
        v93 = v136;
        sub_1D15A2288();
        v91(v92, v70);
        v94 = v135;
        if (v71 >= v141)
        {
          v79 = v81;
          if (v43 >= v141)
          {
            v97 = v157 / v71;
            v98 = v47 / v43;
            v131 = vabdd_f64(v157 / v71, v47 / v43);
            v132 = v76;
            v142 = v71;
            v99 = v72;
            v100 = v143;
            v101 = v72 / v142 + v143 / v43;
            v102 = pow(v101, -0.5);
            v129 = v131 * v102;
            v103 = v99 * v99 / (v142 * v142 * (v142 + -1.0)) + v100 * v100 / (v43 * v43 * (v43 + -1.0));
            if (v103 <= 0.0)
            {
              v103 = v128;
            }

            if (v101 * v101 / v103 > v153)
            {
              v104 = v101 * v101 / v103;
            }

            else
            {
              v104 = v153;
            }

            v130 = v98 - v97;
            v143 = v100;
            v131 = v142 * v99 + v43 * v100;
            v105 = vabdd_f64(v98, v97) / sqrt((v99 + v100) * 0.5);
            v106 = v129;
            v113 = StudentsCDF(v129, v104, v107, v108, v109, v110, v111, v112);
            if (v106 > 0.0)
            {
              v113 = 1.0 - v113;
            }

            v114 = v113 + v113;
            (*v127)(v94, v93, v137);
            v115 = type metadata accessor for SignificantChangeEngine.Changepoint(0);
            *(v94 + v115[5]) = v114;
            v74 = 2.0;
            *(v94 + v115[6]) = v106;
            *(v94 + v115[7]) = v130;
            *(v94 + v115[8]) = v104;
            *(v94 + v115[9]) = v105;
            v73 = 1.0;
            *(v94 + v115[10]) = v131;
            v116 = v94 + v115[11];
            v117 = v157;
            *v116 = v142;
            *(v116 + 8) = v117;
            v118 = v140;
            *(v116 + 16) = v152;
            *(v116 + 24) = v118;
            *(v116 + 32) = v99;
            v71 = v142;
            v119 = v94 + v115[12];
            *v119 = v43;
            *(v119 + 8) = v47;
            v120 = v132;
            *(v119 + 16) = v59;
            *(v119 + 24) = v120;
            *(v119 + 32) = v143;
            (*(*(v115 - 1) + 56))(v94, 0, 1, v115);
          }

          else
          {
            (*v133)(v93, v137);
            v96 = type metadata accessor for SignificantChangeEngine.Changepoint(0);
            (*(*(v96 - 8) + 56))(v94, 1, 1, v96);
          }
        }

        else
        {
          (*v133)(v93, v137);
          v95 = type metadata accessor for SignificantChangeEngine.Changepoint(0);
          (*(*(v95 - 8) + 56))(v94, 1, 1, v95);
          v79 = v81;
        }

        v80 = v156;
        v121 = *(v139 + 48);
        v122 = v149;
        v87(v149, v148, v70);
        sub_1D15808F4(v94, v122 + v121);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v155 = sub_1D148CB88(0, v155[2] + 1, 1, v155);
        }

        v124 = v155[2];
        v123 = v155[3];
        if (v124 >= v123 >> 1)
        {
          v155 = sub_1D148CB88(v123 > 1, v124 + 1, 1, v155);
        }

        sub_1D158034C(v88, sub_1D148EF60);
        v125 = v155;
        v155[2] = v124 + 1;
        sub_1D1580248(v149, v125 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v124, sub_1D151E0D0);
        v71 = v71 + v73;
        v75 = v157 + v144;
        v72 = v153;
        v152 = v152 + v144 * v144;
        if (v71 >= v74)
        {
          if ((v152 - v75 * v75 / v71) / (v71 + -1.0) > v153)
          {
            v72 = (v152 - v75 * v75 / v71) / (v71 + -1.0);
          }

          else
          {
            v72 = v153;
          }
        }

        v140 = v75 / v71;
        v43 = v43 + -1.0;
        v47 = v47 - v144;
        v59 = v59 - v144 * v144;
        v76 = v47 / v43;
        v78 = v159;
        if (v43 >= v74)
        {
          v126 = (v59 - v47 * v47 / v43) / (v43 + -1.0);
          if (v126 <= v153)
          {
            v126 = v153;
          }
        }

        else
        {
          v126 = v153;
        }

        v143 = v126;
      }

      v77 = v79 + v80;
      v159 = v78 - 1;
    }

    while (v78 != 1);
  }

  else
  {
    v155 = MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1D1571714(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v48 = a3;
  v51 = a2;
  sub_1D15801C4(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15807FC(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F104C(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D15A26A8();
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v44 - v16;
  sub_1D151E0D0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v44 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  v23 = type metadata accessor for SignificantChangeEngine.Changepoint(0);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  sub_1D158015C(a1, v22, sub_1D151E0D0);
  v27 = *(v18 + 48);
  if ((*(v24 + 48))(&v22[v27], 1, v23) != 1)
  {
    sub_1D1580248(&v22[v27], v26, type metadata accessor for SignificantChangeEngine.Changepoint);
    v29 = sub_1D15A22A8();
    v30 = *(*(v29 - 8) + 8);
    (v30)(v22, v29);
    v31 = v51[12];
    if (*&v26[*(v23 + 44)] < v31 || *&v26[*(v23 + 48)] < v31)
    {
      sub_1D158034C(v26, type metadata accessor for SignificantChangeEngine.Changepoint);
      goto LABEL_6;
    }

    v51 = v30;
    sub_1D1580144(v48, v6);
    v34 = type metadata accessor for SignificantChangeEngine.State(0);
    if ((*(*(v34 - 8) + 48))(v6, 1, v34) == 1)
    {
      sub_1D158034C(v6, sub_1D15801C4);
      v36 = v49;
      v35 = v50;
    }

    else
    {
      sub_1D15807E4(&v6[*(v34 + 20)], v9);
      sub_1D158034C(v6, type metadata accessor for SignificantChangeEngine.State);
      v37 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
      v38 = (*(*(v37 - 8) + 48))(v9, 1, v37);
      v36 = v49;
      v35 = v50;
      if (v38 != 1)
      {
        sub_1D1455A40(&v9[*(v37 + 24)], v12);
        sub_1D158034C(v9, type metadata accessor for SignificantChangeEngine.State.MeanShift);
        if ((*(v36 + 48))(v12, 1, v35) != 1)
        {
          v39 = v45;
          (*(v36 + 32))();
          v40 = v44;
          sub_1D158015C(v47, v44, sub_1D151E0D0);
          v48 = *(v18 + 48);
          v41 = v46;
          sub_1D15A2288();
          (v51)(v40, v29);
          sub_1D1580304(&qword_1EE05B518, MEMORY[0x1E6969530]);
          v42 = v39;
          v32 = sub_1D15A3EB8();
          v43 = *(v36 + 8);
          v43(v41, v35);
          v43(v42, v35);
          sub_1D158034C(v26, type metadata accessor for SignificantChangeEngine.Changepoint);
          sub_1D158034C(v40 + v48, sub_1D148EF2C);
          return v32 & 1;
        }

        goto LABEL_13;
      }

      sub_1D158034C(v9, sub_1D15807FC);
    }

    (*(v36 + 56))(v12, 1, 1, v35);
LABEL_13:
    sub_1D158034C(v26, type metadata accessor for SignificantChangeEngine.Changepoint);
    sub_1D158034C(v12, sub_1D14F104C);
    v32 = 1;
    return v32 & 1;
  }

  sub_1D158034C(&v22[v27], sub_1D148EF2C);
  v28 = sub_1D15A22A8();
  (*(*(v28 - 8) + 8))(v22, v28);
LABEL_6:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_1D1571E0C@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v121 = a3;
  v140 = type metadata accessor for SignificantChangeEngine.Changepoint(0);
  v5 = *(v140 - 1);
  MEMORY[0x1EEE9AC00](v140);
  v132 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1583544(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1583578(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v126 = &v114 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v118 = &v114 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v119 = &v114 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v117 = &v114 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v125 = &v114 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v124 = &v114 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v123 = &v114 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v115 = &v114 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v116 = &v114 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v131 = &v114 - v33;
  sub_1D151E0D0();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v130 = &v114 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v114 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v114 - v42;
  v122 = *a2;
  v44 = *(a1 + 16);
  v127 = v12;
  if (v44)
  {
    v45 = a1 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v46 = *(v41 + 72);
    v137 = (v5 + 48);
    v138 = v46;
    v136 = (v12 + 56);
    v128 = (v12 + 48);
    v139 = MEMORY[0x1E69E7CC0];
    v129 = &v114 - v42;
    while (1)
    {
      sub_1D158015C(v45, v43, sub_1D151E0D0);
      sub_1D158015C(v43, v39, sub_1D151E0D0);
      v48 = *(v35 + 48);
      if ((*v137)(&v39[v48], 1, v140) == 1)
      {
        sub_1D158034C(v43, sub_1D151E0D0);
        sub_1D158034C(&v39[v48], sub_1D148EF2C);
        v47 = sub_1D15A22A8();
        (*(*(v47 - 8) + 8))(v39, v47);
        (*v136)(v9, 1, 1, v11);
      }

      else
      {
        v134 = type metadata accessor for SignificantChangeEngine.Changepoint;
        v135 = v44;
        v49 = v132;
        sub_1D1580248(&v39[v48], v132, type metadata accessor for SignificantChangeEngine.Changepoint);
        v50 = sub_1D15A22A8();
        v51 = *(v50 - 8);
        (*(v51 + 8))(v39, v50);
        v52 = v39;
        v53 = *(v11 + 48);
        v54 = v43;
        v55 = v130;
        sub_1D1580248(v54, v130, sub_1D151E0D0);
        v133 = *(v35 + 48);
        (*(v51 + 32))(v9, v55, v50);
        v56 = &v9[v53];
        v39 = v52;
        v57 = v49;
        v44 = v135;
        sub_1D1580248(v57, v56, v134);
        (*v136)(v9, 0, 1, v11);
        v58 = v55 + v133;
        v43 = v129;
        sub_1D158034C(v58, sub_1D148EF2C);
        if ((*v128)(v9, 1, v11) != 1)
        {
          sub_1D1580248(v9, v131, sub_1D1583578);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v139 = sub_1D148CBC4(0, v139[2] + 1, 1, v139);
          }

          v60 = v139[2];
          v59 = v139[3];
          if (v60 >= v59 >> 1)
          {
            v139 = sub_1D148CBC4(v59 > 1, v60 + 1, 1, v139);
          }

          v61 = v139;
          v139[2] = v60 + 1;
          sub_1D1580248(v131, v61 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v60, sub_1D1583578);
          goto LABEL_5;
        }
      }

      sub_1D158034C(v9, sub_1D1583544);
LABEL_5:
      v45 += v138;
      if (!--v44)
      {
        goto LABEL_14;
      }
    }
  }

  v139 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v62 = v139[2];
  if (v122 <= 1)
  {
    v63 = v127;
    v65 = v123;
    v64 = v124;
    if (!v122)
    {
      if (v62)
      {
        v138 = v139 + ((*(v127 + 80) + 32) & ~*(v127 + 80));
        result = sub_1D158015C(v138, v126, sub_1D1583578);
        v67 = v120;
        if (v62 == 1)
        {
LABEL_18:

          v68 = v121;
          sub_1D1580248(v126, v121, sub_1D1583578);
          v69 = 0;
          v63 = v127;
          return (*(v63 + 56))(v68, v69, 1, v11);
        }

        v80 = 1;
        while (v80 < v139[2])
        {
          sub_1D158015C(v138 + *(v127 + 72) * v80, v67, sub_1D1583578);
          sub_1D158015C(v67, v65, sub_1D1583578);
          v81 = v65 + *(v11 + 48);
          v82 = v140;
          v83 = *(v81 + v140[5]);
          sub_1D158034C(v81, type metadata accessor for SignificantChangeEngine.Changepoint);
          v84 = v126;
          sub_1D158015C(v126, v64, sub_1D1583578);
          v85 = v64 + *(v11 + 48);
          v86 = *(v85 + v82[5]);
          sub_1D158034C(v85, type metadata accessor for SignificantChangeEngine.Changepoint);
          v87 = sub_1D15A22A8();
          v88 = *(*(v87 - 8) + 8);
          v88(v64, v87);
          v88(v65, v87);
          if (v83 >= v86)
          {
            result = sub_1D158034C(v67, sub_1D1583578);
          }

          else
          {
            sub_1D158034C(v84, sub_1D1583578);
            result = sub_1D1580248(v67, v84, sub_1D1583578);
          }

          if (v62 == ++v80)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        goto LABEL_57;
      }

LABEL_33:

      v69 = 1;
      v68 = v121;
      return (*(v63 + 56))(v68, v69, 1, v11);
    }

    if (!v62)
    {
      goto LABEL_33;
    }

    v137 = (v139 + ((*(v127 + 80) + 32) & ~*(v127 + 80)));
    v75 = v119;
    result = sub_1D158015C(v137, v119, sub_1D1583578);
    v138 = v62;
    v72 = v62 == 1;
    v76 = v118;
    if (!v72)
    {
      v98 = 1;
      while (v98 < v139[2])
      {
        sub_1D158015C(v137 + *(v63 + 72) * v98, v76, sub_1D1583578);
        sub_1D158015C(v75, v65, sub_1D1583578);
        v99 = v65 + *(v11 + 48);
        v100 = v140;
        v101 = *(v99 + v140[9]);
        sub_1D158034C(v99, type metadata accessor for SignificantChangeEngine.Changepoint);
        sub_1D158015C(v76, v64, sub_1D1583578);
        v102 = v64 + *(v11 + 48);
        v103 = *(v102 + v100[9]);
        sub_1D158034C(v102, type metadata accessor for SignificantChangeEngine.Changepoint);
        v104 = sub_1D15A22A8();
        v105 = *(*(v104 - 8) + 8);
        v105(v64, v104);
        v105(v65, v104);
        if (v101 >= v103)
        {
          result = sub_1D158034C(v76, sub_1D1583578);
        }

        else
        {
          sub_1D158034C(v75, sub_1D1583578);
          result = sub_1D1580248(v76, v75, sub_1D1583578);
        }

        if (v138 == ++v98)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_58;
    }

LABEL_27:

    v74 = v75;
LABEL_32:
    v68 = v121;
    sub_1D1580248(v74, v121, sub_1D1583578);
    v69 = 0;
    return (*(v63 + 56))(v68, v69, 1, v11);
  }

  v63 = v127;
  v71 = v123;
  v70 = v124;
  if (v122 != 2)
  {
    if (!v62)
    {
      goto LABEL_33;
    }

    v137 = (v139 + ((*(v127 + 80) + 32) & ~*(v127 + 80)));
    v77 = v62;
    v78 = v116;
    result = sub_1D158015C(v137, v116, sub_1D1583578);
    v138 = v77;
    v72 = v77 == 1;
    v79 = v115;
    if (!v72)
    {
      v106 = 1;
      while (v106 < v139[2])
      {
        sub_1D158015C(v137 + *(v63 + 72) * v106, v79, sub_1D1583578);
        sub_1D158015C(v78, v71, sub_1D1583578);
        v107 = v71 + *(v11 + 48);
        v108 = v140;
        v109 = *(v107 + v140[6]);
        sub_1D158034C(v107, type metadata accessor for SignificantChangeEngine.Changepoint);
        sub_1D158015C(v79, v70, sub_1D1583578);
        v110 = v70 + *(v11 + 48);
        v111 = *(v110 + v108[6]);
        sub_1D158034C(v110, type metadata accessor for SignificantChangeEngine.Changepoint);
        v112 = sub_1D15A22A8();
        v113 = *(*(v112 - 8) + 8);
        v113(v70, v112);
        v113(v71, v112);
        if (v109 >= v111)
        {
          result = sub_1D158034C(v79, sub_1D1583578);
        }

        else
        {
          sub_1D158034C(v78, sub_1D1583578);
          result = sub_1D1580248(v79, v78, sub_1D1583578);
        }

        if (v138 == ++v106)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_59;
    }

LABEL_31:

    v74 = v78;
    goto LABEL_32;
  }

  if (!v62)
  {
    goto LABEL_33;
  }

  v137 = (v139 + ((*(v127 + 80) + 32) & ~*(v127 + 80)));
  result = sub_1D158015C(v137, v125, sub_1D1583578);
  v138 = v62;
  v72 = v62 == 1;
  v73 = v117;
  if (v72)
  {
LABEL_23:

    v74 = v125;
    goto LABEL_32;
  }

  v89 = 1;
  while (v89 < v139[2])
  {
    sub_1D158015C(v137 + *(v63 + 72) * v89, v73, sub_1D1583578);
    sub_1D158015C(v73, v71, sub_1D1583578);
    v90 = v71 + *(v11 + 48);
    v91 = v140;
    v92 = *(v90 + v140[10]);
    sub_1D158034C(v90, type metadata accessor for SignificantChangeEngine.Changepoint);
    v93 = v125;
    sub_1D158015C(v125, v70, sub_1D1583578);
    v94 = v70 + *(v11 + 48);
    v95 = *(v94 + v91[10]);
    sub_1D158034C(v94, type metadata accessor for SignificantChangeEngine.Changepoint);
    v96 = sub_1D15A22A8();
    v97 = *(*(v96 - 8) + 8);
    v97(v70, v96);
    v97(v71, v96);
    if (v92 >= v95)
    {
      result = sub_1D158034C(v73, sub_1D1583578);
    }

    else
    {
      sub_1D158034C(v93, sub_1D1583578);
      result = sub_1D1580248(v73, v93, sub_1D1583578);
    }

    if (v138 == ++v89)
    {
      goto LABEL_23;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

void sub_1D1572DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D15A26A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  sub_1D148EF60();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v21 = *(a1 + 16);
  if (v21)
  {
    v45 = v10;
    v46 = v4;
    v47 = v7;
    v51 = a2;
    v42 = &v40 + *(v12 + 48) - v20;
    v43 = &v40 - v20;
    v22 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v23 = *(v19 + 72);
    v40 = v14;
    v41 = v23;
    v24 = (v5 + 8);
    v25 = 0.0;
    v26 = 0.0;
    v44 = v12;
    do
    {
      v52 = v22;
      v53 = v21;
      v27 = v43;
      sub_1D158015C(v22, v43, sub_1D148EF60);
      v28 = *v42;
      v29 = v42[8];
      v30 = &v17[*(v12 + 48)];
      v31 = sub_1D15A22A8();
      v32 = *(v31 - 8);
      (*(v32 + 32))(v17, v27, v31);
      *v30 = v28;
      v48 = v29;
      v30[8] = v29;
      sub_1D158015C(v17, v14, sub_1D148EF60);
      v33 = v45;
      sub_1D15A2288();
      v50 = *(v32 + 8);
      v50(v14, v31);
      v34 = v47;
      sub_1D15A2288();
      v35 = sub_1D1580304(&qword_1EE05B518, MEMORY[0x1E6969530]);
      v36 = v17;
      v37 = v46;
      v49 = v35;
      LOBYTE(v28) = sub_1D15A3EB8();
      v38 = *v24;
      (*v24)(v34, v37);
      v38(v33, v37);
      if (v28)
      {
        sub_1D158015C(v36, v14, sub_1D148EF60);
        sub_1D15A2258();
        v50(v14, v31);
        sub_1D15A2258();
        v39 = sub_1D15A3EC8();
        v38(v34, v37);
        v38(v33, v37);
        sub_1D158034C(v36, sub_1D148EF60);
        v17 = v36;
        if (v39)
        {
          v26 = v26 + 1.0;
          if (!v48)
          {
            v25 = v25 + 1.0;
          }
        }

        v12 = v44;
        v14 = v40;
      }

      else
      {
        sub_1D158034C(v36, sub_1D148EF60);
        v12 = v44;
        v17 = v36;
      }

      v22 = v52 + v41;
      v21 = v53 - 1;
    }

    while (v53 != 1);
  }
}

uint64_t sub_1D157323C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a2;
  sub_1D1583664(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D148EF2C(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v16 = type metadata accessor for SignificantChangeEngine.Changepoint(0);
  v17 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  v23 = *a3;
  v24 = *(a3 + 8);
  v25 = *(a3 + 16);
  v45 = *(a3 + 24);
  v46 = v24;
  v26 = *(a3 + 32);
  v27 = *(a3 + 48);
  v28 = *(a3 + 56);
  v43 = *(a3 + 40);
  v44 = v28;
  v29 = *(a3 + 64);
  v30 = *(a3 + 72);
  v31 = *(a3 + 80);
  v41 = *(a3 + 88);
  v42 = v30;
  sub_1D15808BC(a1, v15);
  v32 = *(v17 + 48);
  if (v32(v15, 1, v16) == 1)
  {
    sub_1D158034C(v15, sub_1D148EF2C);
    return (*(v17 + 56))(a4, 1, 1, v16);
  }

  v40 = a4;
  v34 = sub_1D1580248(v15, v22, type metadata accessor for SignificantChangeEngine.Changepoint);
  MEMORY[0x1EEE9AC00](v34);
  *(&v40 - 2) = v22;
  sub_1D1565D8C(sub_1D1583698, v47, v9);
  sub_1D151E0D0();
  v36 = v35;
  if ((*(*(v35 - 8) + 48))(v9, 1, v35) == 1)
  {
    sub_1D158034C(v9, sub_1D1583664);
    (*(v17 + 56))(v12, 1, 1, v16);
LABEL_6:
    sub_1D158034C(v12, sub_1D148EF2C);
    (*(v17 + 56))(v40, 1, 1, v16);
    goto LABEL_7;
  }

  sub_1D15808F4(&v9[*(v36 + 48)], v12);
  v37 = sub_1D15A22A8();
  (*(*(v37 - 8) + 8))(v9, v37);
  if (v32(v12, 1, v16) == 1)
  {
    goto LABEL_6;
  }

  sub_1D1580248(v12, v19, type metadata accessor for SignificantChangeEngine.Changepoint);
  v39 = v40;
  if (((v46 & 1) == 0 && v23 < *&v19[v16[5]] || (v45 & 1) == 0 && *&v19[v16[9]] < v25 || (v43 & 1) == 0 && fabs(*&v19[v16[7]]) < v26) && ((v44 & 1) == 0 && v27 < *&v19[v16[5]] || (v42 & 1) == 0 && *&v19[v16[9]] < v29 || (v41 & 1) == 0 && fabs(*&v19[v16[7]]) < v31))
  {
    sub_1D158034C(v19, type metadata accessor for SignificantChangeEngine.Changepoint);
    (*(v17 + 56))(v39, 1, 1, v16);
    v38 = v22;
    return sub_1D158034C(v38, type metadata accessor for SignificantChangeEngine.Changepoint);
  }

  sub_1D1580248(v19, v40, type metadata accessor for SignificantChangeEngine.Changepoint);
  (*(v17 + 56))(v39, 0, 1, v16);
LABEL_7:
  v38 = v22;
  return sub_1D158034C(v38, type metadata accessor for SignificantChangeEngine.Changepoint);
}

BOOL sub_1D1573790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D148EF2C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for SignificantChangeEngine.Changepoint(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  v19 = *(a3 + 128);
  sub_1D15808BC(a1, v11);
  v20 = *(v13 + 48);
  if (v20(v11, 1, v12) != 1)
  {
    sub_1D1580248(v11, v18, type metadata accessor for SignificantChangeEngine.Changepoint);
    sub_1D15808BC(a2, v8);
    if (v20(v8, 1, v12) == 1)
    {
      sub_1D158034C(v18, type metadata accessor for SignificantChangeEngine.Changepoint);
      v21 = sub_1D148EF2C;
      v22 = v8;
      goto LABEL_10;
    }

    sub_1D1580248(v8, v15, type metadata accessor for SignificantChangeEngine.Changepoint);
    v23 = *(v12 + 28);
    v24 = *&v18[v23];
    if ((*&v15[v23] & 0x8000000000000000) != 0)
    {
      if (v24 < 0)
      {
        goto LABEL_7;
      }
    }

    else if ((v24 & 0x8000000000000000) == 0)
    {
LABEL_7:
      sub_1D15A2588();
      v26 = fabs(v25);
      sub_1D158034C(v15, type metadata accessor for SignificantChangeEngine.Changepoint);
      sub_1D158034C(v18, type metadata accessor for SignificantChangeEngine.Changepoint);
      return v19 >= v26;
    }

    sub_1D158034C(v15, type metadata accessor for SignificantChangeEngine.Changepoint);
    v22 = v18;
    v21 = type metadata accessor for SignificantChangeEngine.Changepoint;
    goto LABEL_10;
  }

  v21 = sub_1D148EF2C;
  v22 = v11;
LABEL_10:
  sub_1D158034C(v22, v21);
  return 0;
}

uint64_t sub_1D1573A60(uint64_t a1)
{
  v2 = sub_1D15A26A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D151E0D0();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D158015C(a1, v9, sub_1D151E0D0);
  v10 = *(v7 + 56);
  sub_1D15A2288();
  v11 = sub_1D15A22A8();
  (*(*(v11 - 8) + 8))(v9, v11);
  LOBYTE(a1) = sub_1D15A2658();
  (*(v3 + 8))(v5, v2);
  sub_1D158034C(&v9[v10], sub_1D148EF2C);
  return a1 & 1;
}

uint64_t sub_1D1573C18(uint64_t a1, uint64_t a2)
{
  v78 = sub_1D15A26A8();
  v4 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v75 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v63 - v7;
  sub_1D148EF60();
  v77 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15837D4();
  v73 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v63 - v14;
  sub_1D1491C64();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D15A22A8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D158015C(a1, v17, sub_1D1491C64);
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    (*(v19 + 32))(v21, v17, v18);
    v23 = *(a2 + 16);
    if (v23)
    {
      v69 = v21;
      v70 = v18;
      v81 = MEMORY[0x1E69E7CC0];
      sub_1D14A7A34(0, v23, 0);
      v24 = 0;
      v25 = v81;
      v26 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v67 = *(v9 + 72);
      v64 = v19;
      v65 = v4 + 8;
      v66 = (v19 + 16);
      v68 = v23;
      v27 = v72;
      v28 = (v4 + 8);
      do
      {
        v79 = v24;
        v80 = v25;
        v29 = v73;
        v30 = *(v73 + 48);
        v31 = v71;
        sub_1D158015C(v26, &v71[v30], sub_1D148EF60);
        *v27 = v24;
        v32 = v27 + *(v29 + 48);
        sub_1D1580248(&v31[v30], v32, sub_1D148EF60);
        v33 = v76;
        v34 = v77;
        v35 = v32 + *(v77 + 48);
        v36 = *v35;
        v37 = *(v35 + 8);
        (*v66)(v76, v32, v70);
        v38 = v33 + *(v34 + 48);
        *v38 = v36;
        *(v38 + 8) = v37;
        v39 = v74;
        sub_1D15A2288();
        sub_1D15A2548();
        v41 = v40;
        v42 = *v28;
        v43 = v78;
        (*v28)(v39, v78);
        v44 = v75;
        sub_1D15A2288();
        sub_1D15A2548();
        v46 = v45;
        v42(v44, v43);
        sub_1D15A2258();
        sub_1D15A2548();
        v48 = v47;
        v42(v39, v43);
        sub_1D15A2258();
        sub_1D15A2548();
        v50 = v49;
        v42(v44, v43);
        sub_1D158034C(v33, sub_1D148EF60);
        sub_1D158034C(v27, sub_1D15837D4);
        v25 = v80;
        v81 = v80;
        v52 = *(v80 + 16);
        v51 = *(v80 + 24);
        v53 = v52 + 1;
        if (v52 >= v51 >> 1)
        {
          sub_1D14A7A34((v51 > 1), v52 + 1, 1);
          v25 = v81;
        }

        v54 = v25 + 16 * v52;
        v55 = v79;
        *(v54 + 32) = v79;
        *(v25 + 16) = v53;
        *(v54 + 40) = vabdd_f64(v41, v46) + vabdd_f64(v48, v50);
        v26 += v67;
        v24 = v55 + 1;
      }

      while (v68 != v55 + 1);
      v21 = v69;
      v18 = v70;
      v19 = v64;
    }

    else
    {
      v25 = MEMORY[0x1E69E7CC0];
      v53 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v53)
      {
        v22 = 0;
LABEL_15:

        (*(v19 + 8))(v21, v18);
        return v22;
      }
    }

    v22 = *(v25 + 32);
    v56 = v53 - 1;
    if (v53 != 1)
    {
      v57 = *(v25 + 40);
      v58 = (v25 + 56);
      do
      {
        v59 = *(v58 - 1);
        v60 = *v58;
        v58 += 2;
        v61 = v60;
        if (v60 <= v57)
        {
          v22 = v59;
          v57 = v61;
        }

        --v56;
      }

      while (v56);
    }

    goto LABEL_15;
  }

  sub_1D158034C(v17, sub_1D1491C64);
  return 0;
}

void sub_1D1574250(uint64_t (*a1)(uint64_t a1)@<X1>, uint64_t **a2@<X2>, uint64_t a3@<X8>)
{
  v712 = a2;
  v716 = a1;
  v709 = a3;
  sub_1D1583510(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v610 = (&v586 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v662 = sub_1D15A26D8();
  v661 = *(v662 - 8);
  MEMORY[0x1EEE9AC00](v662);
  v660 = &v586 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v664 = type metadata accessor for SignificantChange.Notification(0);
  v665 = *(v664 - 8);
  MEMORY[0x1EEE9AC00](v664);
  v659 = &v586 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v650 = &v586 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v616 = &v586 - v10;
  v663 = type metadata accessor for SignificantChange.Period(0);
  v666 = *(v663 - 8);
  MEMORY[0x1EEE9AC00](v663);
  v611 = &v586 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v668 = &v586 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v667 = &v586 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v645 = &v586 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v644 = &v586 - v19;
  sub_1D15807FC(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v641 = &v586 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v634 = &v586 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v635 = &v586 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v618 = &v586 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v609 = &v586 - v29;
  sub_1D15800F0(0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v658 = &v586 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v657 = &v586 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v670 = &v586 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v653 = &v586 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v651 = &v586 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v633 = &v586 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v652 = &v586 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v604 = &v586 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v654 = &v586 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v617 = &v586 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v646 = &v586 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v622 = &v586 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v621 = &v586 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v649 = &v586 - v57;
  v58 = type metadata accessor for SignificantChange(0);
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v640 = &v586 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v639 = &v586 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v676 = &v586 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v643 = &v586 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v620 = &v586 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v608 = &v586 - v70;
  sub_1D14F104C(0);
  MEMORY[0x1EEE9AC00](v71 - 8);
  v673 = &v586 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73);
  v687 = &v586 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v672 = &v586 - v76;
  v77 = sub_1D15A26A8();
  v678 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v680 = &v586 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v689 = &v586 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v715 = &v586 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v683 = &v586 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v703 = &v586 - v86;
  sub_1D1580868(0);
  MEMORY[0x1EEE9AC00](v87 - 8);
  v656 = &v586 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v89);
  v669 = &v586 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v631 = &v586 - v92;
  MEMORY[0x1EEE9AC00](v93);
  v632 = &v586 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v642 = &v586 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v619 = &v586 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v648 = &v586 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v684 = &v586 - v102;
  v694 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
  v691 = *(v694 - 8);
  MEMORY[0x1EEE9AC00](v694);
  v627 = &v586 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v104);
  v628 = &v586 - v105;
  MEMORY[0x1EEE9AC00](v106);
  v614 = &v586 - v107;
  MEMORY[0x1EEE9AC00](v108);
  v710 = &v586 - v109;
  sub_1D15801C4(0);
  MEMORY[0x1EEE9AC00](v110 - 8);
  v637 = &v586 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v112);
  v636 = &v586 - v113;
  MEMORY[0x1EEE9AC00](v114);
  v638 = &v586 - v115;
  MEMORY[0x1EEE9AC00](v116);
  v625 = &v586 - v117;
  MEMORY[0x1EEE9AC00](v118);
  v623 = &v586 - v119;
  MEMORY[0x1EEE9AC00](v120);
  v629 = &v586 - v121;
  MEMORY[0x1EEE9AC00](v122);
  v626 = &v586 - v123;
  MEMORY[0x1EEE9AC00](v124);
  v624 = &v586 - v125;
  MEMORY[0x1EEE9AC00](v126);
  v630 = &v586 - v127;
  MEMORY[0x1EEE9AC00](v128);
  v613 = &v586 - v129;
  MEMORY[0x1EEE9AC00](v130);
  v612 = &v586 - v131;
  MEMORY[0x1EEE9AC00](v132);
  v615 = &v586 - v133;
  MEMORY[0x1EEE9AC00](v134);
  v697 = &v586 - v135;
  MEMORY[0x1EEE9AC00](v136);
  v606 = &v586 - v137;
  MEMORY[0x1EEE9AC00](v138);
  v605 = &v586 - v139;
  MEMORY[0x1EEE9AC00](v140);
  v607 = &v586 - v141;
  MEMORY[0x1EEE9AC00](v142);
  v700 = &v586 - v143;
  v705 = type metadata accessor for SignificantChangeEngine.State(0);
  v707 = *(v705 - 8);
  MEMORY[0x1EEE9AC00](v705);
  v696 = &v586 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v145);
  v695 = &v586 - v146;
  sub_1D148EF60();
  v706 = v147;
  v148 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  *&v704 = &v586 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v150);
  v693 = &v586 - v151;
  MEMORY[0x1EEE9AC00](v152);
  v671 = &v586 - v153;
  MEMORY[0x1EEE9AC00](v154);
  v714 = (&v586 - v155);
  MEMORY[0x1EEE9AC00](v156);
  v655 = &v586 - v157;
  MEMORY[0x1EEE9AC00](v158);
  v674 = &v586 - v159;
  MEMORY[0x1EEE9AC00](v160);
  v702 = (&v586 - v161);
  MEMORY[0x1EEE9AC00](v162);
  v647 = &v586 - v163;
  MEMORY[0x1EEE9AC00](v164);
  v677 = &v586 - v165;
  MEMORY[0x1EEE9AC00](v166);
  v682 = &v586 - v167;
  MEMORY[0x1EEE9AC00](v168);
  v711 = (&v586 - v169);
  MEMORY[0x1EEE9AC00](v170);
  v692 = &v586 - v171;
  MEMORY[0x1EEE9AC00](v172);
  v603 = &v586 - v173;
  MEMORY[0x1EEE9AC00](v174);
  v675 = &v586 - v175;
  MEMORY[0x1EEE9AC00](v176);
  v686 = &v586 - v177;
  MEMORY[0x1EEE9AC00](v178);
  v701 = &v586 - v179;
  MEMORY[0x1EEE9AC00](v180);
  v708 = (&v586 - v181);
  MEMORY[0x1EEE9AC00](v182);
  v184 = &v586 - v183;
  v185 = sub_1D15A22A8();
  v186 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  MEMORY[0x1EEE9AC00](v187);
  MEMORY[0x1EEE9AC00](&v586 - v188);
  MEMORY[0x1EEE9AC00](v189);
  MEMORY[0x1EEE9AC00](v190);
  MEMORY[0x1EEE9AC00](v191);
  MEMORY[0x1EEE9AC00](v192);
  MEMORY[0x1EEE9AC00](v193);
  MEMORY[0x1EEE9AC00](v194);
  MEMORY[0x1EEE9AC00](v195);
  v197 = &v586 - v196;
  v210 = MEMORY[0x1EEE9AC00](v198);
  v212 = &v586 - v211;
  v213 = *(v208 + 16);
  if (!v213)
  {
    v228 = *(v59 + 56);
    v229 = v709;
    v228(v709, 1, 1, v58, v210);
    v230 = type metadata accessor for SignificantChangeEngine.Output(0);
    (v228)(v229 + *(v230 + 20), 1, 1, v58);
    sub_1D1580144(v712, v229 + *(v230 + 24));
    v231 = *(*(v230 - 8) + 56);

    v231(v229, 0, 1, v230);
    return;
  }

  v593 = v205;
  v589 = v204;
  v594 = v203;
  v595 = v202;
  v596 = v201;
  v590 = v200;
  v591 = v199;
  v592 = v209;
  v717 = v77;
  v681 = v58;
  v679 = v59;
  v214 = *v716;
  v698 = *(v716 + 24);
  v602 = *(v716 + 8);
  v601 = *(v716 + 5);
  v215 = *(v716 + 6);
  v713 = (*(v148 + 80) + 32) & ~*(v148 + 80);
  v216 = v208 + v713;
  v699 = v207;
  v690 = v208;
  v217 = v206;
  sub_1D158015C(v208 + v713, v184, sub_1D148EF60);
  v685 = v186;
  v218 = *(v186 + 32);
  v218(v197, v184, v217);
  v688 = v212;
  v218(v212, v197, v217);
  v716 = v213;
  v219 = v213 - 1;
  v220 = *(v148 + 72);
  v221 = v699;
  v222 = v708;
  sub_1D158015C(v216 + v220 * v219, v708, sub_1D148EF60);
  v599 = v186 + 32;
  v598 = v218;
  v218(v221, v222, v217);
  v223 = v700;
  sub_1D1580144(v712, v700);
  v224 = v707 + 48;
  v225 = v705;
  v597 = *(v707 + 48);
  if (v597(v223, 1, v705) == 1)
  {
    sub_1D158034C(v223, sub_1D15801C4);
    v226 = v697;
    sub_1D1579728(v690, v698, v697, v215);
    v227 = *(v685 + 8);
    v227(v221, v217);
LABEL_9:
    v227(v688, v217);
    v238 = *(v679 + 56);
    v239 = v709;
    v240 = v681;
    v238(v709, 1, 1, v681);
    v241 = type metadata accessor for SignificantChangeEngine.Output(0);
    v238(v239 + *(v241 + 20), 1, 1, v240);
    sub_1D1580230(v226, v239 + *(v241 + 24));
    (*(*(v241 - 8) + 56))(v239, 0, 1, v241);
    return;
  }

  v587 = v219;
  v232 = v695;
  sub_1D1580248(v223, v695, type metadata accessor for SignificantChangeEngine.State);
  v718 = v214;
  v720 = v698;
  v719 = v602;
  v721 = v601;
  v722 = v215;
  v233 = v696;
  v234 = v690;
  sub_1D157A314(&v718, v232, v696);
  v235 = v684;
  sub_1D1580850(v232 + *(v225 + 24), v684);
  v236 = *(v691 + 48);
  v237 = v694;
  v700 = v691 + 48;
  *&v602 = v236;
  if (v236(v235, 1, v694) == 1)
  {
    sub_1D158034C(v235, sub_1D1580868);
    v226 = v697;
    sub_1D1579728(v234, v698, v697, v215);
    sub_1D158034C(v233, type metadata accessor for SignificantChangeEngine.State);
    sub_1D158034C(v232, type metadata accessor for SignificantChangeEngine.State);
    v227 = *(v685 + 8);
    v227(v699, v217);
    goto LABEL_9;
  }

  v242 = v710;
  sub_1D1580248(v235, v710, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
  v243 = *(v242 + *(v237 + 20));
  v244 = v678;
  v245 = v678 + 48;
  v246 = v717;
  v600 = v217;
  v586 = v224;
  if (v243)
  {
    v247 = v673;
    sub_1D1455A40(v242, v673);
    v248 = *v245;
    if ((*v245)(v247, 1, v246) == 1)
    {
      sub_1D15A2288();
      v249 = v248(v247, 1, v246);
      v250 = v715;
      v251 = v702;
      if (v249 != 1)
      {
        sub_1D158034C(v247, sub_1D14F104C);
      }
    }

    else
    {
      (*(v244 + 32))(v680, v247, v246);
      v250 = v715;
      v251 = v702;
    }

    v258 = 0;
    v712 = (v244 + 8);
    *&v259 = MEMORY[0x1E69E7CC0];
    v260 = v680;
    do
    {
      v261 = (v258 + 1);
      if (__OFADD__(v258, 1))
      {
        __break(1u);
LABEL_160:
        sub_1D1580248(v261, v242, type metadata accessor for SignificantChange.Notification);
        goto LABEL_138;
      }

      sub_1D158015C(v216, v251, sub_1D148EF60);
      v245 = v251;
      sub_1D15A2288();
      sub_1D1580304(&qword_1EE05B518, MEMORY[0x1E6969530]);
      v262 = v717;
      v242 = sub_1D15A3EB8();
      v711 = *v712;
      v711(v250, v262);
      if (v242)
      {
        sub_1D1580248(v245, v714, sub_1D148EF60);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v718 = *&v259;
        if (isUniquelyReferenced_nonNull_native)
        {
          v251 = v245;
        }

        else
        {
          sub_1D14A7A54(0, *(v259 + 16) + 1, 1);
          v251 = v702;
          *&v259 = v718;
        }

        v245 = *(v259 + 16);
        v264 = *(v259 + 24);
        if (v245 >= v264 >> 1)
        {
          sub_1D14A7A54(v264 > 1, v245 + 1, 1);
          v251 = v702;
          *&v259 = v718;
        }

        *(v259 + 16) = v245 + 1;
        sub_1D1580248(v714, v259 + v713 + v245 * v220, sub_1D148EF60);
        v250 = v715;
      }

      else
      {
        sub_1D158034C(v245, sub_1D148EF60);
        v251 = v245;
      }

      ++v258;
      v216 += v220;
    }

    while (v261 != v716);
    v265 = *(v259 + 16);
    v266 = v706;
    v267 = v671;
    if (v265)
    {
      v268 = 0;
      v269 = v259 + v713;
      v270 = v259 + v713;
      while (1)
      {
        if (v268 >= *(v259 + 16))
        {
          __break(1u);
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        sub_1D158015C(v270, v267, sub_1D148EF60);
        if (*(v267 + 8 + *(v266 + 48)) != 1)
        {
          break;
        }

        ++v268;
        sub_1D158034C(v267, sub_1D148EF60);
        v270 += v220;
        if (v265 == v268)
        {
          goto LABEL_34;
        }
      }

      v321 = v655;
      sub_1D1580248(v267, v655, sub_1D148EF60);
      sub_1D1580248(v321, v674, sub_1D148EF60);
      v322 = 0;
      v323 = v693;
      v324 = v693 + 8;
      v325 = MEMORY[0x1E69E7CC0];
      do
      {
        if (v322 >= *(v259 + 16))
        {
          goto LABEL_162;
        }

        sub_1D158015C(v269, v323, sub_1D148EF60);
        if (v324[*(v266 + 48)])
        {
          sub_1D158034C(v323, sub_1D148EF60);
        }

        else
        {
          sub_1D1580248(v323, *&v704, sub_1D148EF60);
          v326 = swift_isUniquelyReferenced_nonNull_native();
          v718 = v325;
          if ((v326 & 1) == 0)
          {
            sub_1D14A7A54(0, *(*&v325 + 16) + 1, 1);
            v325 = v718;
          }

          v328 = *(*&v325 + 16);
          v327 = *(*&v325 + 24);
          if (v328 >= v327 >> 1)
          {
            sub_1D14A7A54(v327 > 1, v328 + 1, 1);
            v325 = v718;
          }

          *(*&v325 + 16) = v328 + 1;
          sub_1D1580248(*&v704, *&v325 + v713 + v328 * v220, sub_1D148EF60);
          v266 = v706;
          v323 = v693;
        }

        ++v322;
        v269 += v220;
      }

      while (v265 != v322);
      v329 = *(*&v325 + 16);

      v714 = v329;
      MEMORY[0x1EEE9AC00](v330);
      v331 = v674;
      *(&v586 - 2) = v674;
      sub_1D1565874(sub_1D158371C, (&v586 - 4), v259);
      v333 = *(v332 + 16);

      (*(v678 + 16))(v715, v680, v717);
      v334 = v708;
      sub_1D158015C(v331, v708, sub_1D148EF60);
      sub_1D15A2288();
      v335 = v685 + 8;
      v336 = *(v685 + 8);
      v337 = v600;
      (v336)(v334, v600);
      v338 = v667;
      sub_1D15A2268();
      v339 = v663;
      *(v338 + *(v663 + 20)) = 0;
      *(v338 + v339[6]) = 0;
      *(v338 + v339[7]) = 2;
      sub_1D158015C(v331, v334, sub_1D148EF60);
      sub_1D15A2288();
      v685 = v335;
      v716 = v336;
      (v336)(v334, v337);
      sub_1D15A2258();
      v340 = v668;
      sub_1D15A2268();
      *(v340 + v339[5]) = 0;
      *(v340 + v339[6]) = v329 / v333;
      *(v340 + v339[7]) = 0;
      v341 = *(v694 + 24);
      v342 = v654;
      sub_1D15800D8(v710 + v341, v654);
      v245 = v679;
      v343 = *(v679 + 48);
      v258 = v681;
      if (v343(v342, 1, v681) == 1)
      {
        sub_1D158034C(v342, sub_1D15800F0);
        goto LABEL_137;
      }

      v393 = *(v342 + *(v258 + 20));

      sub_1D158034C(v342, type metadata accessor for SignificantChange);
      if (!*(v393 + 16))
      {

        goto LABEL_137;
      }

      v394 = v611;
      sub_1D158015C(v393 + ((*(v666 + 80) + 32) & ~*(v666 + 80)), v611, type metadata accessor for SignificantChange.Period);

      v395 = *(v394 + v339[6]);
      sub_1D158034C(v394, type metadata accessor for SignificantChange.Period);
      if (v395 <= 0.0)
      {
LABEL_137:
        v260 = v664;
        v242 = v659;
        sub_1D15A2288();
        v501 = v660;
        sub_1D15A26C8();
        v502 = sub_1D15A26B8();
        v504 = v503;
        (*(v661 + 8))(v501, v662);
        _s19HealthVisualization25PresentationDateProvidingPAAE012presentationD010Foundation0D0VvgZ_0();
        *v242 = v502;
        *(v242 + 8) = v504;
        *(v242 + 16) = 0;
        goto LABEL_138;
      }

      v396 = v710 + v341;
      v397 = v604;
      sub_1D15800D8(v396, v604);
      v398 = v343(v397, 1, v258);
      v242 = v659;
      if (v398 == 1)
      {
        sub_1D158034C(v397, sub_1D15800F0);
        v399 = v665;
        v260 = v664;
        (*(v665 + 56))(v610, 1, 1, v664);
      }

      else
      {
        v261 = v610;
        sub_1D158015C(v397 + *(v258 + 24), v610, sub_1D1583510);
        sub_1D158034C(v397, type metadata accessor for SignificantChange);
        v399 = v665;
        v260 = v664;
        if ((*(v665 + 48))(v261, 1, v664) != 1)
        {
          goto LABEL_160;
        }
      }

      sub_1D15A2288();
      v561 = v660;
      sub_1D15A26C8();
      v562 = sub_1D15A26B8();
      v564 = v563;
      v242 = v659;
      (*(v661 + 8))(v561, v662);
      _s19HealthVisualization25PresentationDateProvidingPAAE012presentationD010Foundation0D0VvgZ_0();
      *v242 = v562;
      *(v242 + 8) = v564;
      v565 = v610;
      *(v242 + 16) = 0;
      if ((*(v399 + 48))(v565, 1, v260) != 1)
      {
        sub_1D158034C(v565, sub_1D1583510);
      }

LABEL_138:
      if (*(v242 + 16) == 1)
      {
        v505 = v242;
        v506 = v650;
        sub_1D1580248(v505, v650, type metadata accessor for SignificantChange.Notification);
        v507 = v260;
      }

      else
      {
        v508 = *v242;
        v509 = *(v242 + 8);
        v510 = v242;
        v507 = v260;
        v511 = *(v678 + 32);
        v506 = v650;
        v512 = v717;
        v511(v650 + *(v260 + 6), v510 + *(v260 + 6), v717);
        v511(v506 + *(v507 + 7), v510 + *(v507 + 7), v512);
        *v506 = v508;
        *(v506 + 8) = v509;
        *(v506 + 16) = 1;
      }

      v513 = v667;
      v514 = v714;
      sub_1D158015C(v667, v676, type metadata accessor for SignificantChange.Period);
      sub_1D1583630(0);
      v515 = (*(v666 + 80) + 32) & ~*(v666 + 80);
      v516 = swift_allocObject();
      *(v516 + 16) = xmmword_1D15ACDD0;
      v517 = v516 + v515;
      v518 = v668;
      sub_1D158015C(v668, v517, type metadata accessor for SignificantChange.Period);
      v519 = *(v258 + 24);
      sub_1D158015C(v506, v676 + v519, type metadata accessor for SignificantChange.Notification);
      (*(v665 + 56))(v676 + v519, 0, 1, v507);
      *(v676 + *(v258 + 20)) = v516;
      v520 = v676;
      if (v514 < v698)
      {
        sub_1D158034C(v506, type metadata accessor for SignificantChange.Notification);
        sub_1D158034C(v518, type metadata accessor for SignificantChange.Period);
        sub_1D158034C(v513, type metadata accessor for SignificantChange.Period);
        sub_1D158034C(v695, type metadata accessor for SignificantChangeEngine.State);
        v521 = v600;
        (v716)(v688, v600);
        v522 = v710;
        v523 = v627;
        sub_1D1455A40(v710, v627);
        v524 = v694;
        v525 = *(v694 + 24);
        sub_1D158015C(v520, v523 + v525, type metadata accessor for SignificantChange);
        v526 = *(v245 + 56);
        v526(v523 + v525, 0, 1, v258);
        *(v523 + *(v524 + 20)) = 1;
        v526(v651, 1, 1, v258);
        v527 = v653;
        sub_1D1580248(v520, v653, type metadata accessor for SignificantChange);
        v526(v527, 0, 1, v258);
        v528 = v623;
        sub_1D1580248(v696, v623, type metadata accessor for SignificantChangeEngine.State);
        v529 = *(v707 + 56);
        v530 = v705;
        v529(v528, 0, 1, v705);
        v531 = v631;
        sub_1D1580248(v523, v631, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
        (*(v691 + 56))(v531, 0, 1, v524);
        v532 = v521;
        v533 = v598;
        v598(v591, v699, v532);
        v534 = v625;
        sub_1D1580230(v528, v625);
        if (v597(v534, 1, v530) == 1)
        {
          sub_1D158034C(v534, sub_1D15801C4);
          v535 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
          v536 = v634;
          (*(*(v535 - 8) + 56))(v634, 1, 1, v535);
        }

        else
        {
          v536 = v634;
          sub_1D15807E4(v534 + *(v530 + 20), v634);
          sub_1D158034C(v534, type metadata accessor for SignificantChangeEngine.State);
        }

        v555 = v629;
        sub_1D1580248(v531, &v629[*(v530 + 24)], sub_1D1580868);
        v533(v555, v591, v600);
        sub_1D1580248(v536, v555 + *(v530 + 20), sub_1D15807FC);
        v529(v555, 0, 1, v530);
        v556 = v709;
        sub_1D1580218(v651, v709);
        v557 = type metadata accessor for SignificantChangeEngine.Output(0);
        sub_1D1580218(v653, v556 + *(v557 + 20));
        sub_1D1580230(v555, v556 + *(v557 + 24));
        (*(*(v557 - 8) + 56))(v556, 0, 1, v557);
        sub_1D158034C(v674, sub_1D148EF60);
        v711(v680, v717);
        sub_1D158034C(v522, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
        return;
      }

      v537 = v708;
      sub_1D158015C(v674, v708, sub_1D148EF60);
      v538 = v628;
      sub_1D15A2258();
      sub_1D158034C(v506, type metadata accessor for SignificantChange.Notification);
      sub_1D158034C(v518, type metadata accessor for SignificantChange.Period);
      sub_1D158034C(v513, type metadata accessor for SignificantChange.Period);
      sub_1D158034C(v695, type metadata accessor for SignificantChangeEngine.State);
      v539 = v600;
      v540 = v716;
      (v716)(v688, v600);
      (v540)(v537, v539);
      (*(v678 + 56))(v538, 0, 1, v717);
      v541 = v694;
      v542 = *(v694 + 24);
      sub_1D158015C(v520, v538 + v542, type metadata accessor for SignificantChange);
      v543 = *(v245 + 56);
      v543(v538 + v542, 0, 1, v258);
      *(v538 + *(v541 + 20)) = 0;
      v543(v652, 1, 1, v258);
      v544 = v633;
      sub_1D1580248(v520, v633, type metadata accessor for SignificantChange);
      v543(v544, 0, 1, v258);
      v545 = v624;
      sub_1D1580248(v696, v624, type metadata accessor for SignificantChangeEngine.State);
      v546 = *(v707 + 56);
      v547 = v705;
      v546(v545, 0, 1, v705);
      v548 = v632;
      sub_1D1580248(v538, v632, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
      (*(v691 + 56))(v548, 0, 1, v541);
      v549 = v598;
      v598(v592, v699, v539);
      v550 = v545;
      v551 = v626;
      sub_1D1580230(v550, v626);
      v552 = v597(v551, 1, v547);
      v497 = v710;
      if (v552 == 1)
      {
        sub_1D158034C(v551, sub_1D15801C4);
        v553 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
        v554 = v635;
        (*(*(v553 - 8) + 56))(v635, 1, 1, v553);
      }

      else
      {
        v554 = v635;
        sub_1D15807E4(v551 + *(v547 + 20), v635);
        sub_1D158034C(v551, type metadata accessor for SignificantChangeEngine.State);
      }

      v558 = v630;
      sub_1D1580248(v548, &v630[*(v547 + 24)], sub_1D1580868);
      v549(v558, v592, v600);
      sub_1D1580248(v554, v558 + *(v547 + 20), sub_1D15807FC);
      v546(v558, 0, 1, v547);
      v559 = v709;
      sub_1D1580218(v652, v709);
      v560 = type metadata accessor for SignificantChangeEngine.Output(0);
      sub_1D1580218(v544, v559 + *(v560 + 20));
      sub_1D1580230(v558, v559 + *(v560 + 24));
      (*(*(v560 - 8) + 56))(v559, 0, 1, v560);
      sub_1D158034C(v674, sub_1D148EF60);
      v711(v680, v717);
      goto LABEL_150;
    }

LABEL_34:

    v271 = v696;
    v272 = v669;
    sub_1D1580850(v696 + *(v705 + 24), v669);
    v273 = v694;
    if ((v602)(v272, 1, v694) == 1)
    {
      sub_1D158034C(v272, sub_1D1580868);
      v274 = v679;
      v275 = v670;
      v276 = v681;
      (*(v679 + 56))(v670, 1, 1, v681);
      v277 = v707;
    }

    else
    {
      v275 = v670;
      sub_1D15800D8(v272 + *(v273 + 24), v670);
      sub_1D158034C(v272, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
      v274 = v679;
      v276 = v681;
      v308 = (*(v679 + 48))(v275, 1, v681);
      v277 = v707;
      if (v308 != 1)
      {
        v716 = type metadata accessor for SignificantChange;
        v377 = v639;
        sub_1D1580248(v275, v639, type metadata accessor for SignificantChange);
        v378 = v715;
        sub_1D15A2258();
        v379 = v640;
        sub_1D157B418(v378, v640, 0.0, 0.0);
        v711(v378, v717);
        sub_1D158034C(v377, type metadata accessor for SignificantChange);
        sub_1D158034C(v695, type metadata accessor for SignificantChangeEngine.State);
        (*(v685 + 8))(v688, v600);
        v380 = *(v274 + 56);
        v380(v657, 1, 1, v276);
        v381 = v658;
        sub_1D158015C(v379, v658, type metadata accessor for SignificantChange);
        v380(v381, 0, 1, v276);
        v382 = v636;
        sub_1D1580248(v271, v636, type metadata accessor for SignificantChangeEngine.State);
        v383 = *(v277 + 56);
        v384 = v705;
        v707 = v277 + 56;
        v383(v382, 0, 1, v705);
        v385 = v383;
        v386 = v656;
        sub_1D1455A40(v710, v656);
        v387 = *(v273 + 24);
        sub_1D1580248(v379, v386 + v387, v716);
        v380(v386 + v387, 0, 1, v276);
        v388 = v600;
        *(v386 + *(v273 + 20)) = 1;
        (*(v691 + 56))(v386, 0, 1, v273);
        v389 = v598;
        v598(v593, v699, v388);
        v390 = v637;
        sub_1D1580230(v382, v637);
        if (v597(v390, 1, v384) == 1)
        {
          sub_1D158034C(v390, sub_1D15801C4);
          v391 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
          v392 = v641;
          (*(*(v391 - 8) + 56))(v641, 1, 1, v391);
        }

        else
        {
          v392 = v641;
          sub_1D15807E4(v390 + *(v384 + 20), v641);
          sub_1D158034C(v390, type metadata accessor for SignificantChangeEngine.State);
        }

        v485 = v638;
        sub_1D1580248(v656, &v638[*(v384 + 24)], sub_1D1580868);
        v389(v485, v593, v388);
        sub_1D1580248(v392, v485 + *(v384 + 20), sub_1D15807FC);
        v385(v485, 0, 1, v384);
        v486 = v709;
        sub_1D1580218(v657, v709);
        v487 = type metadata accessor for SignificantChangeEngine.Output(0);
        sub_1D1580218(v658, v486 + *(v487 + 20));
        sub_1D1580230(v485, v486 + *(v487 + 24));
        (*(*(v487 - 8) + 56))(v486, 0, 1, v487);
        goto LABEL_124;
      }
    }

    sub_1D158034C(v275, sub_1D15800F0);
    v309 = type metadata accessor for SignificantChangeEngine.Output(0);
    v310 = *(v309 + 24);
    v311 = v697;
    sub_1D158015C(v271, v697, type metadata accessor for SignificantChangeEngine.State);
    v312 = *(v277 + 56);
    v707 = v277 + 56;
    v313 = v705;
    v312(v311, 0, 1, v705);
    v314 = v271;
    v315 = v709;
    v316 = v699;
    sub_1D157BA28(v311, v699, v709 + v310);
    sub_1D158034C(v311, sub_1D15801C4);
    sub_1D158034C(v314, type metadata accessor for SignificantChangeEngine.State);
    sub_1D158034C(v695, type metadata accessor for SignificantChangeEngine.State);
    v317 = *(v685 + 8);
    v318 = v316;
    v319 = v600;
    v317(v318, v600);
    v317(v688, v319);
    v312(v315 + v310, 0, 1, v313);
    v320 = *(v274 + 56);
    v320(v315, 1, 1, v276);
    v320(v315 + *(v309 + 20), 1, 1, v276);
    (*(*(v309 - 8) + 56))(v315, 0, 1, v309);
LABEL_124:
    v711(v680, v717);
    goto LABEL_125;
  }

  v252 = v672;
  sub_1D1455A40(v242, v672);
  v253 = *v245;
  v254 = (*v245)(v252, 1, v246);
  v255 = v716;
  v712 = v245;
  v714 = v253;
  if (v254 == 1)
  {
    sub_1D15A2288();
    v256 = v253(v252, 1, v246);
    v257 = v701;
    if (v256 != 1)
    {
      sub_1D158034C(v252, sub_1D14F104C);
    }
  }

  else
  {
    (*(v244 + 32))(v703, v252, v246);
    v257 = v701;
  }

  v278 = 0;
  v279 = v220 * ~v255 - v713;
  v280 = -(v713 + v220 * v255);
  v281 = v713 + v220 * v587 + *(v706 + 48) + 8;
  v282 = v690;
  do
  {
    if (v255 == v278)
    {
      v301 = type metadata accessor for SignificantChangeEngine.Output(0);
      v302 = v244;
      v303 = v709;
      sub_1D1579728(v282, v698, v709 + *(v301 + 24), v215);
      sub_1D158034C(v696, type metadata accessor for SignificantChangeEngine.State);
      sub_1D158034C(v695, type metadata accessor for SignificantChangeEngine.State);
      v304 = *(v685 + 8);
      v305 = v600;
      v304(v699, v600);
      v304(v688, v305);
      v306 = *(v679 + 56);
      v307 = v681;
      v306(v303, 1, 1, v681);
      v306(v303 + *(v301 + 20), 1, 1, v307);
      (*(*(v301 - 8) + 56))(v303, 0, 1, v301);
      (*(v302 + 8))(v703, v717);
      goto LABEL_54;
    }

    v283 = *(v690 + v281);
    v278 = (v278 + 1);
    v279 += v220;
    v280 += v220;
    v281 -= v220;
  }

  while ((v283 & 1) != 0);
  if (v278 - 1 >= *(&v698 + 1))
  {
    v700 = v278 - 1;
    v701 = (v255 - v278 + 1);
    sub_1D158015C(v690 - v280, v692, sub_1D148EF60);
    v344 = 0;
    v714 = (v244 + 8);
    v702 = (v685 + 8);
    v704 = MEMORY[0x1E69E7CC0];
    v345 = v715;
    do
    {
      v347 = (v344 + 1);
      if (__OFADD__(v344, 1))
      {
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
        goto LABEL_166;
      }

      v348 = v711;
      sub_1D158015C(v216, v711, sub_1D148EF60);
      sub_1D15A2258();
      sub_1D1580304(&qword_1EE05B518, MEMORY[0x1E6969530]);
      v349 = v717;
      v350 = sub_1D15A3EB8();
      v712 = *v714;
      (v712)(v345, v349);
      if (v350 & 1) != 0 && (v351 = v715, sub_1D15A2258(), v352 = v708, sub_1D158015C(v692, v708, sub_1D148EF60), v353 = v689, sub_1D15A2258(), (*v702)(v352, v600), v354 = v717, LOBYTE(v352) = sub_1D15A3EC8(), v355 = v712, (v712)(v353, v354), v355(v351, v354), v348 = v711, (v352))
      {
        sub_1D1580248(v711, v682, sub_1D148EF60);
        *&v356 = v704;
        v357 = swift_isUniquelyReferenced_nonNull_native();
        v718 = *&v356;
        if ((v357 & 1) == 0)
        {
          sub_1D14A7A54(0, *(v356 + 16) + 1, 1);
          *&v356 = v718;
        }

        v359 = *(v356 + 16);
        v358 = *(v356 + 24);
        v346 = v716;
        if (v359 >= v358 >> 1)
        {
          sub_1D14A7A54(v358 > 1, v359 + 1, 1);
          *&v356 = v718;
        }

        *(v356 + 16) = v359 + 1;
        v704 = *&v356;
        sub_1D1580248(v682, v356 + v713 + v359 * v220, sub_1D148EF60);
      }

      else
      {
        sub_1D158034C(v348, sub_1D148EF60);
        v346 = v716;
      }

      ++v344;
      v216 += v220;
      v345 = v715;
    }

    while (v347 != v346);
    v366 = *&v704;
    v367 = *(*&v704 + 16);
    v368 = v647;
    if (v367)
    {
      v369 = 0;
      v370 = v677;
      v371 = v677 + 8;
      v372 = *&v704 + v713;
      v373 = MEMORY[0x1E69E7CC0];
      while (v369 < *(v366 + 16))
      {
        sub_1D158015C(v372, v370, sub_1D148EF60);
        if (v371[*(v706 + 48)])
        {
          sub_1D158034C(v370, sub_1D148EF60);
        }

        else
        {
          sub_1D1580248(v370, v368, sub_1D148EF60);
          v374 = swift_isUniquelyReferenced_nonNull_native();
          v718 = v373;
          if ((v374 & 1) == 0)
          {
            sub_1D14A7A54(0, *(*&v373 + 16) + 1, 1);
            v373 = v718;
          }

          v376 = *(*&v373 + 16);
          v375 = *(*&v373 + 24);
          if (v376 >= v375 >> 1)
          {
            sub_1D14A7A54(v375 > 1, v376 + 1, 1);
            v373 = v718;
          }

          *(*&v373 + 16) = v376 + 1;
          sub_1D1580248(v368, *&v373 + v713 + v376 * v220, sub_1D148EF60);
          v370 = v677;
          v366 = *&v704;
        }

        ++v369;
        v372 += v220;
        if (v367 == v369)
        {
          goto LABEL_103;
        }
      }

LABEL_166:
      __break(1u);
    }

    else
    {
      v373 = MEMORY[0x1E69E7CC0];
LABEL_103:
      v415 = *(*&v373 + 16);

      v416 = *(v366 + 16);

      sub_1D15A2288();
      v417 = v708;
      sub_1D158015C(v692, v708, sub_1D148EF60);
      sub_1D15A2258();
      v418 = *v702;
      v419 = v600;
      (*v702)(v417, v600);
      sub_1D15A2268();
      if (v701 < v716)
      {
        sub_1D158015C(v690 - v279, v417, sub_1D148EF60);
        v598(v595, v417, v419);
        sub_1D15A2288();
        sub_1D15A2258();
        sub_1D15A2268();
        v420 = v416 - v415;
        v421 = v416 - v415 + v700;
        v422 = v681;
        v423 = v685;
        if (!__OFADD__(v416 - v415, v700))
        {
          if (!__OFADD__(v420, v415))
          {
            v424 = v416 + v700;
            if (!__OFADD__(v421, v415))
            {
              if ((v420 & 0x8000000000000000) == 0)
              {
                if (!__OFSUB__(v424, v421))
                {
                  v425 = v415 - v416;
                  if (!__OFSUB__(v415, v416))
                  {
                    v426 = 0;
                    v427 = v421;
                    v428 = v415 / v416;
                    v429 = v424;
                    v430 = 0.0;
                    v431 = v709;
                    do
                    {
                      if (__OFADD__(v425, v426))
                      {
                        goto LABEL_165;
                      }

                      if (((v425 + v426) & 0x8000000000000000) == 0)
                      {
                        HypergeometricPDF(v426, v427, v416, v429);
                        v430 = v430 + v432;
                      }

                      if (v420 == v426)
                      {
                        goto LABEL_118;
                      }
                    }

                    while (!__OFADD__(v426++, 1));
                    __break(1u);
LABEL_118:
                    v716 = v418;
                    if (v430 > v214)
                    {
                      (*(v679 + 56))(v431, 1, 1, v422);
                      v434 = *(v694 + 24);
                      v435 = v431;
                      v436 = type metadata accessor for SignificantChangeEngine.Output(0);
                      sub_1D15800D8(v710 + v434, v435 + *(v436 + 20));
                      v437 = *(v436 + 24);
                      v713 = v437;
                      v438 = v696;
                      v439 = v697;
                      sub_1D158015C(v696, v697, type metadata accessor for SignificantChangeEngine.State);
                      v715 = *(v707 + 56);
                      v440 = v705;
                      (v715)(v439, 0, 1, v705);
                      v441 = v699;
                      sub_1D157BA28(v439, v699, v435 + v437);
                      sub_1D158034C(v439, sub_1D15801C4);
                      v442 = v600;
                      v443 = v716;
                      (v716)(v594, v600);
                      (v443)(v595, v442);
                      (v443)(v596, v442);
                      sub_1D158034C(v438, type metadata accessor for SignificantChangeEngine.State);
                      sub_1D158034C(v695, type metadata accessor for SignificantChangeEngine.State);
                      (v443)(v441, v442);
                      (v443)(v688, v442);
                      (v715)(v435 + v713, 0, 1, v440);
                      (*(*(v436 - 8) + 56))(v435, 0, 1, v436);
                      sub_1D158034C(v692, sub_1D148EF60);
                      (v712)(v703, v717);
LABEL_125:
                      sub_1D158034C(v710, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
                      return;
                    }

                    v444 = *(v423 + 16);
                    v445 = v644;
                    v446 = v600;
                    v444(v644, v596, v600);
                    v447 = v663;
                    *(v445 + *(v663 + 20)) = 0;
                    *(v445 + v447[6]) = v428;
                    *(v445 + v447[7]) = 2;
                    v448 = v645;
                    v444(v645, v594, v446);
                    *(v448 + v447[5]) = 0;
                    *(v448 + v447[6]) = 0;
                    *(v448 + v447[7]) = 1;
                    v449 = v643;
                    sub_1D158015C(v445, v643, type metadata accessor for SignificantChange.Period);
                    sub_1D1583630(0);
                    v450 = (*(v666 + 80) + 32) & ~*(v666 + 80);
                    v451 = swift_allocObject();
                    v715 = v451;
                    *(v451 + 16) = xmmword_1D15ACDD0;
                    sub_1D158015C(v448, v451 + v450, type metadata accessor for SignificantChange.Period);
                    v452 = v449 + *(v422 + 24);
                    v453 = v664;
                    v454 = *(v664 + 28);
                    v455 = v616;
                    sub_1D15A2288();
                    v456 = v660;
                    sub_1D15A26C8();
                    v457 = sub_1D15A26B8();
                    v459 = v458;
                    (*(v661 + 8))(v456, v662);
                    v460 = *(v453 + 24);
                    _s19HealthVisualization25PresentationDateProvidingPAAE012presentationD010Foundation0D0VvgZ_0();
                    *v455 = v457;
                    *(v455 + 1) = v459;
                    v455[16] = 0;
                    v461 = v678;
                    v462 = *(v678 + 32);
                    v463 = &v455[v460];
                    v464 = v717;
                    v462(v452 + *(v453 + 24), v463, v717);
                    v462(v452 + *(v453 + 28), &v455[v454], v464);
                    *v452 = v457;
                    *(v452 + 8) = v459;
                    *(v452 + 16) = 1;
                    (*(v665 + 56))(v452, 0, 1, v453);
                    v465 = v681;
                    v466 = v643;
                    *(v643 + *(v681 + 20)) = v715;
                    v467 = v708;
                    sub_1D158015C(v692, v708, sub_1D148EF60);
                    v468 = v614;
                    sub_1D15A2258();
                    sub_1D158034C(v645, type metadata accessor for SignificantChange.Period);
                    sub_1D158034C(v644, type metadata accessor for SignificantChange.Period);
                    v469 = v600;
                    v470 = v716;
                    (v716)(v594, v600);
                    (v470)(v595, v469);
                    (v470)(v596, v469);
                    sub_1D158034C(v695, type metadata accessor for SignificantChangeEngine.State);
                    (v470)(v688, v469);
                    (v470)(v467, v469);
                    (*(v461 + 56))(v468, 0, 1, v464);
                    v471 = v694;
                    v472 = *(v694 + 24);
                    sub_1D158015C(v466, v468 + v472, type metadata accessor for SignificantChange);
                    v473 = *(v679 + 56);
                    v474 = v468 + v472;
                    v475 = v465;
                    v473(v474, 0, 1, v465);
                    *(v468 + *(v471 + 20)) = 1;
                    v473(v646, 1, 1, v465);
                    v476 = v617;
                    sub_1D1580248(v466, v617, type metadata accessor for SignificantChange);
                    v473(v476, 0, 1, v475);
                    v477 = v612;
                    sub_1D1580248(v696, v612, type metadata accessor for SignificantChangeEngine.State);
                    v478 = *(v707 + 56);
                    v479 = v705;
                    v478(v477, 0, 1, v705);
                    v480 = v642;
                    sub_1D1580248(v468, v642, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
                    (*(v691 + 56))(v480, 0, 1, v471);
                    v481 = v598;
                    v598(v590, v699, v469);
                    v482 = v613;
                    sub_1D1580230(v477, v613);
                    if (v597(v482, 1, v479) == 1)
                    {
                      sub_1D158034C(v482, sub_1D15801C4);
                      v483 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
                      v484 = v618;
                      (*(*(v483 - 8) + 56))(v618, 1, 1, v483);
                    }

                    else
                    {
                      v484 = v618;
                      sub_1D15807E4(v482 + *(v479 + 20), v618);
                      sub_1D158034C(v482, type metadata accessor for SignificantChangeEngine.State);
                    }

                    v497 = v710;
                    v498 = v615;
                    sub_1D1580248(v642, &v615[*(v479 + 24)], sub_1D1580868);
                    v481(v498, v590, v600);
                    sub_1D1580248(v484, v498 + *(v479 + 20), sub_1D15807FC);
                    v478(v498, 0, 1, v479);
                    v499 = v709;
                    sub_1D1580218(v646, v709);
                    v500 = type metadata accessor for SignificantChangeEngine.Output(0);
                    sub_1D1580218(v476, v499 + *(v500 + 20));
                    sub_1D1580230(v498, v499 + *(v500 + 24));
                    (*(*(v500 - 8) + 56))(v499, 0, 1, v500);
                    sub_1D158034C(v692, sub_1D148EF60);
                    (v712)(v703, v717);
LABEL_150:
                    sub_1D158034C(v497, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
                    return;
                  }

LABEL_173:
                  __break(1u);
                  return;
                }

LABEL_172:
                __break(1u);
                goto LABEL_173;
              }

LABEL_171:
              __break(1u);
              goto LABEL_172;
            }

LABEL_170:
            __break(1u);
            goto LABEL_171;
          }

LABEL_169:
          __break(1u);
          goto LABEL_170;
        }

LABEL_168:
        __break(1u);
        goto LABEL_169;
      }
    }

    __break(1u);
    goto LABEL_168;
  }

  v284 = 0;
  v708 = (v244 + 32);
  v711 = (v244 + 8);
  v285 = MEMORY[0x1E69E7CC0];
  v286 = v687;
  v287 = v686;
  v588 = v220;
  do
  {
    v289 = (v284 + 1);
    if (__OFADD__(v284, 1))
    {
LABEL_163:
      __break(1u);
      goto LABEL_164;
    }

    v290 = v285;
    sub_1D158015C(v216, v257, sub_1D148EF60);
    sub_1D1455A40(v242, v286);
    v291 = v717;
    if ((v714)(v286, 1, v717) == 1)
    {
      sub_1D158034C(v286, sub_1D14F104C);
    }

    else
    {
      v292 = v683;
      (*v708)(v683, v286, v291);
      v293 = v715;
      sub_1D15A2258();
      sub_1D1580304(&qword_1EE05B518, MEMORY[0x1E6969530]);
      v294 = sub_1D15A3EB8();
      v295 = *v711;
      v296 = v293;
      v286 = v687;
      (*v711)(v296, v291);
      v297 = v292;
      v257 = v701;
      v295(v297, v291);
      v287 = v686;
      if ((v294 & 1) == 0)
      {
        sub_1D158034C(v257, sub_1D148EF60);
        v242 = v710;
        v285 = v290;
        v288 = v588;
        goto LABEL_43;
      }
    }

    sub_1D1580248(v257, v287, sub_1D148EF60);
    v285 = v290;
    v298 = swift_isUniquelyReferenced_nonNull_native();
    v718 = v290;
    if ((v298 & 1) == 0)
    {
      sub_1D14A7A54(0, *(*&v290 + 16) + 1, 1);
      v285 = v718;
    }

    v288 = v588;
    v300 = *(*&v285 + 16);
    v299 = *(*&v285 + 24);
    if (v300 >= v299 >> 1)
    {
      sub_1D14A7A54(v299 > 1, v300 + 1, 1);
      v285 = v718;
    }

    *(*&v285 + 16) = v300 + 1;
    sub_1D1580248(v287, *&v285 + v713 + v300 * v288, sub_1D148EF60);
    v242 = v710;
LABEL_43:
    ++v284;
    v216 += v288;
  }

  while (v289 != v716);
  v360 = v285;
  v361 = v648;
  sub_1D1580850(v696 + *(v705 + 24), v648);
  v362 = v694;
  if ((v602)(v361, 1, v694) == 1)
  {

    sub_1D158034C(v361, sub_1D1580868);
    v363 = v679;
    v364 = v649;
    (*(v679 + 56))(v649, 1, 1, v681);
    v365 = v707;
LABEL_101:
    sub_1D158034C(v364, sub_1D15800F0);
    v402 = type metadata accessor for SignificantChangeEngine.Output(0);
    v403 = *(v402 + 24);
    v404 = v696;
    v405 = v697;
    sub_1D158015C(v696, v697, type metadata accessor for SignificantChangeEngine.State);
    v406 = *(v365 + 56);
    v407 = v705;
    v406(v405, 0, 1, v705);
    v408 = v709;
    v409 = v699;
    sub_1D157BA28(v405, v699, v709 + v403);
    sub_1D158034C(v405, sub_1D15801C4);
    sub_1D158034C(v404, type metadata accessor for SignificantChangeEngine.State);
    sub_1D158034C(v695, type metadata accessor for SignificantChangeEngine.State);
    v410 = *(v685 + 8);
    v411 = v409;
    v412 = v600;
    v410(v411, v600);
    v410(v688, v412);
    v406(v408 + v403, 0, 1, v407);
    v413 = *(v363 + 56);
    v414 = v681;
    v413(v408, 1, 1, v681);
    v413(v408 + *(v402 + 20), 1, 1, v414);
    (*(*(v402 - 8) + 56))(v408, 0, 1, v402);
    (*v711)(v703, v717);
    goto LABEL_125;
  }

  v400 = v361 + *(v362 + 24);
  v364 = v649;
  sub_1D15800D8(v400, v649);
  sub_1D158034C(v361, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
  v401 = (*(v679 + 48))(v364, 1, v681);
  v365 = v707;
  if (v401 == 1)
  {

    v363 = v679;
    goto LABEL_101;
  }

  v488 = v608;
  sub_1D1580248(v364, v608, type metadata accessor for SignificantChange);
  v489 = *(*&v360 + 16);
  if (v489)
  {
    v490 = *&v360 + v713;
    v491 = MEMORY[0x1E69E7CC0];
    v492 = v685;
    v493 = v603;
    do
    {
      v494 = v675;
      sub_1D158015C(v490, v675, sub_1D148EF60);
      sub_1D1580248(v494, v493, sub_1D148EF60);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v491 = sub_1D148CB54(0, v491[2] + 1, 1, v491);
      }

      v496 = v491[2];
      v495 = v491[3];
      if (v496 >= v495 >> 1)
      {
        v491 = sub_1D148CB54(v495 > 1, v496 + 1, 1, v491);
      }

      v491[2] = v496 + 1;
      sub_1D1580248(v493, v491 + v713 + v496 * v288, sub_1D148EF60);
      v490 += v288;
      --v489;
      v242 = v710;
      v365 = v707;
    }

    while (v489);
  }

  else
  {
    v491 = MEMORY[0x1E69E7CC0];
    v492 = v685;
  }

  v566 = v491[2];

  v567 = *(*&v360 + 16);

  v568 = v715;
  sub_1D15A2258();
  v569 = v620;
  sub_1D157B418(v568, v620, 0.0, v566 / v567);
  v716 = *v711;
  (v716)(v568, v717);
  sub_1D158034C(v488, type metadata accessor for SignificantChange);
  sub_1D158034C(v695, type metadata accessor for SignificantChangeEngine.State);
  (*(v492 + 8))(v688, v600);
  v570 = *(v679 + 56);
  v571 = v681;
  v570(v621, 1, 1, v681);
  v572 = v622;
  sub_1D158015C(v569, v622, type metadata accessor for SignificantChange);
  v570(v572, 0, 1, v571);
  v573 = v605;
  sub_1D1580248(v696, v605, type metadata accessor for SignificantChangeEngine.State);
  v574 = v705;
  v715 = *(v365 + 56);
  (v715)(v573, 0, 1, v705);
  v575 = v619;
  sub_1D1455A40(v242, v619);
  v576 = v694;
  v577 = *(v694 + 24);
  sub_1D1580248(v620, v575 + v577, type metadata accessor for SignificantChange);
  v570(v575 + v577, 0, 1, v571);
  *(v575 + *(v576 + 20)) = 0;
  (*(v691 + 56))(v575, 0, 1, v576);
  v578 = v598;
  v598(v589, v699, v600);
  v579 = v606;
  sub_1D1580230(v573, v606);
  if (v597(v579, 1, v574) == 1)
  {
    sub_1D158034C(v579, sub_1D15801C4);
    v580 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
    v581 = v609;
    (*(*(v580 - 8) + 56))(v609, 1, 1, v580);
  }

  else
  {
    v581 = v609;
    sub_1D15807E4(v579 + *(v574 + 20), v609);
    sub_1D158034C(v579, type metadata accessor for SignificantChangeEngine.State);
  }

  v582 = v703;
  v583 = v607;
  sub_1D1580248(v619, &v607[*(v574 + 24)], sub_1D1580868);
  v578(v583, v589, v600);
  sub_1D1580248(v581, v583 + *(v574 + 20), sub_1D15807FC);
  (v715)(v583, 0, 1, v574);
  v584 = v709;
  sub_1D1580218(v621, v709);
  v585 = type metadata accessor for SignificantChangeEngine.Output(0);
  sub_1D1580218(v622, v584 + *(v585 + 20));
  sub_1D1580230(v583, v584 + *(v585 + 24));
  (*(*(v585 - 8) + 56))(v584, 0, 1, v585);
  (v716)(v582, v717);
LABEL_54:
  sub_1D158034C(v242, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
}

uint64_t sub_1D1579728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v123 = a2;
  v7 = sub_1D15A26A8();
  v135 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v122 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v121 - v10;
  sub_1D148EF60();
  v136 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v121 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v124 = &v121 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v130 = &v121 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v137 = &v121 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v138 = &v121 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v121 - v28;
  v30 = sub_1D15A22A8();
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v121 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v39 = &v121 - v38;
  v40 = a1;
  v41 = *(a1 + 16);
  if (v41)
  {
    v132 = v11;
    v133 = v7;
    v134 = a3;
    v131 = v13;
    v128 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v129 = v40;
    v42 = v40 + v128;
    v127 = sub_1D148EF60;
    v139 = v36;
    v43 = v35;
    v44 = v29;
    v45 = v37;
    sub_1D158015C(v40 + v128, v29, sub_1D148EF60);
    v125 = v45;
    v46 = *(v45 + 32);
    v46(v33, v44, v43);
    v126 = v39;
    v46(v39, v33, v43);
    v47 = *(v131 + 72);
    v48 = v47 * (v41 - 1);
    v49 = v138;
    sub_1D158015C(v42 + v48, v138, v127);
    v131 = v43;
    v46(v139, v49, v43);
    v50 = v136;
    v51 = v129 + v128 + v47 * v41;
    v52 = (v128 + *(v136 + 48) + v129 + v48 + 8);
    v53 = v41 + 1;
    do
    {
      if (!--v53)
      {
LABEL_9:
        v57 = v125;
        v58 = v134;
        v59 = v139;
        v60 = v131;
        (*(v125 + 16))(v134, v139, v131);
        v61 = type metadata accessor for SignificantChangeEngine.State(0);
        v62 = *(v61 + 20);
        v63 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
        (*(*(v63 - 8) + 56))(v58 + v62, 1, 1, v63);
        v64 = v58 + *(v61 + 24);
        v65 = v132;
        v66 = v126;
        sub_1D15A2288();
        v67 = *(v57 + 8);
        v67(v59, v60);
        v67(v66, v60);
        v68 = v135;
        v69 = v133;
        (*(v135 + 32))(v64, v65, v133);
        (*(v68 + 56))(v64, 0, 1, v69);
        v70 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
        v71 = *(v70 + 24);
        v72 = type metadata accessor for SignificantChange(0);
        (*(*(v72 - 8) + 56))(v64 + v71, 1, 1, v72);
        *(v64 + *(v70 + 20)) = 1;
        (*(*(v70 - 8) + 56))(v64, 0, 1, v70);
        return (*(*(v61 - 8) + 56))(v58, 0, 1, v61);
      }

      v51 -= v47;
      v54 = *v52;
      v52 -= v47;
    }

    while ((v54 & 1) != 0);
    sub_1D158015C(v51, v137, sub_1D148EF60);
    v55 = v42;
    v56 = v41;
    while (1)
    {
      sub_1D158015C(v55, v18, sub_1D148EF60);
      if ((v18[*(v50 + 48) + 8] & 1) == 0)
      {
        break;
      }

      sub_1D158034C(v18, sub_1D148EF60);
      v55 += v47;
      if (!--v56)
      {
        sub_1D158034C(v137, sub_1D148EF60);
        goto LABEL_9;
      }
    }

    v76 = v124;
    sub_1D1580248(v18, v124, sub_1D148EF60);
    sub_1D1580248(v76, v130, sub_1D148EF60);
    v77 = 0;
    v78 = &v15[*(v50 + 48)];
    v79 = v138;
    do
    {
      sub_1D158015C(v42, v15, sub_1D148EF60);
      v80 = v78[8];
      result = sub_1D158034C(v15, sub_1D148EF60);
      v81 = (v80 & 1) == 0;
      v82 = __OFADD__(v77, v81);
      v77 += v81;
      if (v82)
      {
        __break(1u);
        return result;
      }

      v42 += v47;
      --v41;
    }

    while (v41);
    v83 = v132;
    v84 = v139;
    sub_1D15A2258();
    sub_1D15A2548();
    v86 = v85;
    v88 = v135 + 8;
    v87 = *(v135 + 8);
    v89 = v83;
    v90 = v133;
    v87(v89, v133);
    sub_1D158015C(v137, v79, sub_1D148EF60);
    v91 = v122;
    sub_1D15A2258();
    v92 = v125;
    v93 = v79;
    v94 = v131;
    v136 = *(v125 + 8);
    (v136)(v93, v131);
    sub_1D15A2548();
    v96 = v95;
    v87(v91, v90);
    v97 = v134;
    (*(v92 + 16))(v134, v84, v94);
    v98 = type metadata accessor for SignificantChangeEngine.State(0);
    v99 = *(v98 + 20);
    v100 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
    (*(*(v100 - 8) + 56))(v97 + v99, 1, 1, v100);
    v101 = v97 + *(v98 + 24);
    v102 = (v88 + 24);
    v103 = (v88 + 48);
    if (v77 < v123 || v86 - v96 >= a4)
    {
      v114 = v137;
      v113 = v138;
      sub_1D158015C(v137, v138, sub_1D148EF60);
      v115 = v132;
      sub_1D15A2258();
      sub_1D158034C(v130, sub_1D148EF60);
      sub_1D158034C(v114, sub_1D148EF60);
      v116 = v131;
      v117 = v136;
      (v136)(v139, v131);
      v117(v126, v116);
      v117(v113, v116);
      v118 = v133;
      (*v102)(v101, v115, v133);
      (*v103)(v101, 0, 1, v118);
      v110 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
      v119 = *(v110 + 24);
      v120 = type metadata accessor for SignificantChange(0);
      (*(*(v120 - 8) + 56))(v101 + v119, 1, 1, v120);
      *(v101 + *(v110 + 20)) = 1;
    }

    else
    {
      v104 = v130;
      v105 = v138;
      sub_1D158015C(v130, v138, sub_1D148EF60);
      v106 = v132;
      sub_1D15A2288();
      sub_1D158034C(v104, sub_1D148EF60);
      sub_1D158034C(v137, sub_1D148EF60);
      v107 = v131;
      v108 = v136;
      (v136)(v139, v131);
      v108(v126, v107);
      v108(v105, v107);
      v109 = v133;
      (*v102)(v101, v106, v133);
      (*v103)(v101, 0, 1, v109);
      v110 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
      v111 = *(v110 + 24);
      v112 = type metadata accessor for SignificantChange(0);
      (*(*(v112 - 8) + 56))(v101 + v111, 1, 1, v112);
      *(v101 + *(v110 + 20)) = 0;
    }

    (*(*(v110 - 8) + 56))(v101, 0, 1, v110);
    return (*(*(v98 - 8) + 56))(v134, 0, 1, v98);
  }

  else
  {
    v74 = type metadata accessor for SignificantChangeEngine.State(0);
    v75 = *(*(v74 - 8) + 56);

    return v75(a3, 1, 1, v74);
  }
}

uint64_t sub_1D157A314@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v161 = a3;
  v162 = a2;
  sub_1D15807FC(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15801C4(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v148 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v147 = &v128 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v155 = &v128 - v12;
  v159 = type metadata accessor for SignificantChangeEngine.State(0);
  v149 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v14 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1D15A26A8();
  v154 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v16 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v153 = &v128 - v18;
  sub_1D1580868(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v151 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v152 = &v128 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v157 = &v128 - v24;
  v160 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
  v158 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v156 = &v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D15A22A8();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v146 = &v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v128 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v128 - v33;
  sub_1D148EF60();
  MEMORY[0x1EEE9AC00](v35 - 8);
  MEMORY[0x1EEE9AC00](&v128 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v37);
  v39 = (&v128 - v38);
  MEMORY[0x1EEE9AC00](v40);
  v46 = &v128 - v43;
  v47 = *(v45 + 2);
  if (!v47)
  {
    v61 = v162;
LABEL_23:
    v110 = v161;
    return sub_1D158015C(v61, v110, type metadata accessor for SignificantChangeEngine.State);
  }

  v140 = v41;
  v141 = v16;
  v145 = v44;
  v133 = v6;
  v135 = v14;
  v139 = *(a1 + 24);
  v48 = *(a1 + 48);
  v49 = v47 - 1;
  v50 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v144 = v45;
  v137 = v50;
  v51 = v45 + v50;
  v136 = *(v42 + 72);
  v143 = v49;
  v52 = v45 + v50 + v136 * v49;
  sub_1D158015C(v52, &v128 - v43, sub_1D148EF60);
  sub_1D158015C(v51, v39, sub_1D148EF60);
  v53 = *(v27 + 32);
  v131 = v27 + 32;
  v53(v34, v39, v26);
  sub_1D158015C(v52, v39, sub_1D148EF60);
  v138 = v39;
  v132 = v53;
  v53(v31, v39, v26);
  v54 = v162;
  v55 = v157;
  sub_1D1580850(v162 + *(v159 + 24), v157);
  v56 = v160;
  v142 = *(v158 + 48);
  v57 = v26;
  if (v142(v55, 1, v160) == 1)
  {
    v58 = *(v27 + 8);
    v58(v31, v26);
    v58(v34, v26);
    sub_1D158034C(v46, sub_1D148EF60);
    v59 = sub_1D1580868;
    v60 = v55;
LABEL_22:
    sub_1D158034C(v60, v59);
    v61 = v54;
    goto LABEL_23;
  }

  v62 = v27;
  v129 = v31;
  v134 = v46;
  v130 = v34;
  v63 = v156;
  sub_1D1580248(v55, v156, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
  if ((*(v63 + *(v56 + 20)) & 1) == 0)
  {
LABEL_21:
    sub_1D158034C(v63, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
    v109 = *(v62 + 8);
    v109(v129, v57);
    v109(v130, v57);
    v59 = sub_1D148EF60;
    v60 = v134;
    goto LABEL_22;
  }

  v65 = sub_1D157B384(v143, v144);
  v157 = v66;
  v68 = v67;
  if ((v67 & 1) == 0)
  {
    v69 = v64;

LABEL_8:
    sub_1D157DC00(v65, v69, v157, v68, sub_1D158373C, sub_1D148EF60);
    v71 = v70;
    goto LABEL_15;
  }

  v143 = v64;
  sub_1D15A4BC8();
  swift_unknownObjectRetain_n();

  v72 = swift_dynamicCastClass();
  if (!v72)
  {
    swift_unknownObjectRelease();
    v72 = MEMORY[0x1E69E7CC0];
  }

  v73 = *(v72 + 16);

  if (__OFSUB__(v68 >> 1, v157))
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v73 != (v68 >> 1) - v157)
  {
LABEL_38:
    swift_unknownObjectRelease();
    v69 = v143;
    goto LABEL_8;
  }

  v71 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v71)
  {
    goto LABEL_16;
  }

  v71 = MEMORY[0x1E69E7CC0];
LABEL_15:
  swift_unknownObjectRelease();
LABEL_16:
  v74 = *(v71 + 16);
  if (!v74)
  {

    goto LABEL_21;
  }

  v75 = v57;
  v76 = v145;
  sub_1D158015C(v71 + v137 + (v74 - 1) * v136, v145, sub_1D148EF60);
  v77 = v153;
  v78 = v138;
  sub_1D158015C(v134, v138, sub_1D148EF60);
  sub_1D15A2258();
  v79 = *(v62 + 8);
  v79(v78, v57);
  sub_1D15A2548();
  v81 = v80;
  v138 = v62;
  v82 = v77;
  v83 = *(v154 + 8);
  v84 = v150;
  v83(v82, v150);
  v85 = v76;
  v86 = v84;
  v87 = v140;
  sub_1D158015C(v85, v140, sub_1D148EF60);
  v88 = v141;
  sub_1D15A2258();
  v143 = v75;
  v157 = v62 + 8;
  v144 = v79;
  v79(v87, v75);
  sub_1D15A2548();
  v90 = v89;
  v83(v88, v86);
  v91 = v155;
  sub_1D1579728(v71, v139, v155, v48 - (v81 - v90));

  v92 = v149;
  v93 = *(v149 + 48);
  v94 = v159;
  if (v93(v91, 1, v159) == 1)
  {
    v95 = v147;
    sub_1D158015C(v162, v147, type metadata accessor for SignificantChangeEngine.State);
    (*(v92 + 56))(v95, 0, 1, v94);
    v96 = v153;
    sub_1D15A2288();
    v97 = v154;
    v98 = v152;
    (*(v154 + 32))(v152, v96, v86);
    (*(v97 + 56))(v98, 0, 1, v86);
    v99 = v160;
    v100 = *(v160 + 24);
    v101 = type metadata accessor for SignificantChange(0);
    (*(*(v101 - 8) + 56))(v98 + v100, 1, 1, v101);
    *(v98 + *(v99 + 20)) = 1;
    (*(v158 + 56))(v98, 0, 1, v99);
    v102 = v146;
    v103 = v143;
    v138[2](v146, v129, v143);
    v104 = v95;
    v105 = v148;
    sub_1D1580230(v104, v148);
    v106 = v93;
    if (v93(v105, 1, v94) == 1)
    {
      sub_1D158034C(v105, sub_1D15801C4);
      v107 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
      v108 = v133;
      (*(*(v107 - 8) + 56))(v133, 1, 1, v107);
    }

    else
    {
      v108 = v133;
      sub_1D15807E4(v105 + *(v94 + 20), v133);
      sub_1D158034C(v105, type metadata accessor for SignificantChangeEngine.State);
    }

    v114 = v156;
    v112 = v135;
    sub_1D1580248(v152, &v135[*(v94 + 24)], sub_1D1580868);
    v132(v112, v102, v103);
    sub_1D1580248(v108, v112 + *(v94 + 20), sub_1D15807FC);
    v115 = v155;
    v116 = v106(v155, 1, v94);
    v113 = v162;
    if (v116 != 1)
    {
      sub_1D158034C(v115, sub_1D15801C4);
    }
  }

  else
  {
    v103 = v143;
    v112 = v135;
    sub_1D1580248(v91, v135, type metadata accessor for SignificantChangeEngine.State);
    v113 = v162;
    v114 = v156;
  }

  v117 = v151;
  sub_1D1580850(v112 + *(v94 + 24), v151);
  v118 = v160;
  v119 = v142(v117, 1, v160);
  v120 = v161;
  if (v119 == 1)
  {
    sub_1D158034C(v117, sub_1D1580868);
    sub_1D158034C(v145, sub_1D148EF60);
    sub_1D158034C(v114, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
    v121 = v144;
    v144(v129, v103);
    v121(v130, v103);
    sub_1D158034C(v134, sub_1D148EF60);
LABEL_31:
    sub_1D158034C(v112, type metadata accessor for SignificantChangeEngine.State);
    v61 = v113;
    v110 = v120;
    return sub_1D158015C(v61, v110, type metadata accessor for SignificantChangeEngine.State);
  }

  v122 = *(v117 + *(v118 + 20));
  sub_1D158034C(v117, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
  v123 = v130;
  v124 = v129;
  if (v122)
  {
    v125 = sub_1D15A4BA8();

    sub_1D158034C(v145, sub_1D148EF60);
    sub_1D158034C(v114, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
    v126 = v144;
    v144(v124, v103);
    v126(v123, v103);
    sub_1D158034C(v134, sub_1D148EF60);
    if ((v125 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    swift_bridgeObjectRelease_n();
    sub_1D158034C(v145, sub_1D148EF60);
    sub_1D158034C(v114, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
    v127 = v144;
    v144(v124, v103);
    v127(v123, v103);
    sub_1D158034C(v134, sub_1D148EF60);
  }

  return sub_1D1580248(v112, v120, type metadata accessor for SignificantChangeEngine.State);
}

uint64_t sub_1D157B384(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D148EF60();
    return a2;
  }

  return result;
}

uint64_t sub_1D157B418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v60 = a1;
  v62 = a2;
  v7 = sub_1D15A22A8();
  v8 = *(v7 - 8);
  v56 = v7;
  v57 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D15A26A8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  v17 = type metadata accessor for SignificantChange.Period(0);
  v18 = *(v17 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v58 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v53 - v24;
  v26 = type metadata accessor for SignificantChange(0);
  v27 = *(v26 + 20);
  v61 = v4;
  v28 = *(v4 + v27);
  v29 = *(v28 + 16);
  if (!v29)
  {
    return sub_1D158015C(v61, v62, type metadata accessor for SignificantChange);
  }

  v54 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v55 = v26;
  v30 = *(v18 + 72);
  sub_1D158015C(v28 + v54 + v30 * (v29 - 1), v25, type metadata accessor for SignificantChange.Period);
  sub_1D15A2288();
  sub_1D1580304(&qword_1EE05B518, MEMORY[0x1E6969530]);
  v31 = sub_1D15A3EB8();
  (*(v11 + 8))(v16, v10);
  if ((v31 & 1) == 0)
  {
    sub_1D158034C(v25, type metadata accessor for SignificantChange.Period);
    return sub_1D158015C(v61, v62, type metadata accessor for SignificantChange);
  }

  v53 = v30;
  sub_1D15A2288();
  (*(v11 + 16))(v13, v60, v10);
  v32 = v59;
  sub_1D15A2268();
  v34 = v56;
  v33 = v57;
  (*(v57 + 16))(v22, v32, v56);
  v35 = v25[v17[7]];
  *&v22[v17[5]] = a3;
  *&v22[v17[6]] = a4;
  v22[v17[7]] = v35;
  v36 = sub_1D157D364(1uLL, v28);
  v38 = v37;
  v40 = v39;
  v42 = v41;
  if ((v41 & 1) == 0)
  {

    v43 = v62;
LABEL_5:
    sub_1D157DC00(v36, v38, v40, v42, sub_1D1583630, type metadata accessor for SignificantChange.Period);
    v45 = v44;
    v46 = v61;
LABEL_14:
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  sub_1D15A4BC8();
  swift_unknownObjectRetain_n();

  v48 = swift_dynamicCastClass();
  if (!v48)
  {
    swift_unknownObjectRelease();
    v48 = MEMORY[0x1E69E7CC0];
  }

  v49 = *(v48 + 16);

  if (__OFSUB__(v42 >> 1, v40))
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v49 != (v42 >> 1) - v40)
  {
LABEL_21:
    swift_unknownObjectRelease();
    v43 = v62;
    v33 = v57;
    goto LABEL_5;
  }

  v45 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v46 = v61;
  v43 = v62;
  v33 = v57;
  if (!v45)
  {
    v45 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

LABEL_15:
  sub_1D158015C(v22, v58, type metadata accessor for SignificantChange.Period);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v45 = sub_1D148C92C(0, v45[2] + 1, 1, v45);
  }

  v51 = v45[2];
  v50 = v45[3];
  if (v51 >= v50 >> 1)
  {
    v45 = sub_1D148C92C(v50 > 1, v51 + 1, 1, v45);
  }

  sub_1D158034C(v22, type metadata accessor for SignificantChange.Period);
  (*(v33 + 8))(v59, v34);
  sub_1D158034C(v25, type metadata accessor for SignificantChange.Period);
  v45[2] = v51 + 1;
  sub_1D1580248(v58, v45 + v54 + v51 * v53, type metadata accessor for SignificantChange.Period);
  sub_1D158015C(v46, v43, type metadata accessor for SignificantChange.Period);
  v52 = v55;
  result = sub_1D158015C(v46 + *(v55 + 24), v43 + *(v55 + 24), sub_1D1583510);
  *(v43 + *(v52 + 20)) = v45;
  return result;
}

uint64_t sub_1D157BA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  sub_1D1580868(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v29 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15801C4(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  sub_1D15807FC(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D15A22A8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a2, v16, v18);
  v21 = a1;
  sub_1D1580144(a1, v12);
  v22 = type metadata accessor for SignificantChangeEngine.State(0);
  v23 = *(*(v22 - 8) + 48);
  if (v23(v12, 1, v22) == 1)
  {
    sub_1D158034C(v12, sub_1D15801C4);
    v24 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
    (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  }

  else
  {
    sub_1D15807E4(&v12[*(v22 + 20)], v15);
    sub_1D158034C(v12, type metadata accessor for SignificantChangeEngine.State);
  }

  sub_1D1580144(v21, v9);
  if (v23(v9, 1, v22) == 1)
  {
    sub_1D158034C(v9, sub_1D15801C4);
    v25 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
    v26 = v29;
    (*(*(v25 - 8) + 56))(v29, 1, 1, v25);
  }

  else
  {
    v26 = v29;
    sub_1D1580850(&v9[*(v22 + 24)], v29);
    sub_1D158034C(v9, type metadata accessor for SignificantChangeEngine.State);
  }

  v27 = v30;
  (*(v17 + 32))(v30, v20, v16);
  sub_1D1580248(v15, v27 + *(v22 + 20), sub_1D15807FC);
  return sub_1D1580248(v26, v27 + *(v22 + 24), sub_1D1580868);
}

uint64_t sub_1D157BE0C(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = sub_1D15A26A8();
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  sub_1D148EF60();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  sub_1D158015C(a1, &v19 - v12, sub_1D148EF60);
  sub_1D15A2288();
  v14 = sub_1D15A22A8();
  v15 = *(*(v14 - 8) + 8);
  v15(v13, v14);
  sub_1D158015C(v21, v10, sub_1D148EF60);
  v16 = v20;
  sub_1D15A2288();
  v15(v10, v14);
  sub_1D1580304(&qword_1EE05B518, MEMORY[0x1E6969530]);
  LOBYTE(v14) = sub_1D15A3EB8();
  v17 = *(v22 + 8);
  v17(v16, v3);
  v17(v7, v3);
  return v14 & 1;
}

uint64_t sub_1D157C088()
{
  v1 = *v0;
  v2 = 0x746E756F63;
  v3 = 0x5364657261757173;
  v4 = 1851876717;
  if (v1 != 3)
  {
    v4 = 0x65636E6169726176;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7173491;
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

uint64_t sub_1D157C114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1582FD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D157C13C(uint64_t a1)
{
  v2 = sub_1D1580B18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D157C178(uint64_t a1)
{
  v2 = sub_1D1580B18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignificantChangeEngine.ChangepointComponent.encode(to:)(void *a1)
{
  sub_1D1580C14(0, &qword_1EE056368, sub_1D1580B18, &type metadata for SignificantChangeEngine.ChangepointComponent.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1580B18();
  sub_1D15A4CE8();
  v9[15] = 0;
  sub_1D15A4B18();
  if (!v1)
  {
    v9[14] = 1;
    sub_1D15A4B18();
    v9[13] = 2;
    sub_1D15A4B18();
    v9[12] = 3;
    sub_1D15A4B18();
    v9[11] = 4;
    sub_1D15A4B18();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SignificantChangeEngine.ChangepointComponent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  sub_1D1580C14(0, &qword_1EE056438, sub_1D1580B18, &type metadata for SignificantChangeEngine.ChangepointComponent.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1580B18();
  sub_1D15A4CD8();
  if (!v2)
  {
    v9 = v21;
    v26 = 0;
    sub_1D15A4A58();
    v11 = v10;
    v25 = 1;
    sub_1D15A4A58();
    v13 = v12;
    v24 = 2;
    sub_1D15A4A58();
    v15 = v14;
    v23 = 3;
    sub_1D15A4A58();
    v17 = v16;
    v22 = 4;
    sub_1D15A4A58();
    v20 = v19;
    (*(v6 + 8))(v8, v5);
    *v9 = v11;
    v9[1] = v13;
    v9[2] = v15;
    v9[3] = v17;
    v9[4] = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D157C66C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1702125924;
    v6 = 0x7473655474;
    if (a1 != 2)
    {
      v6 = 0x666968536E61656DLL;
    }

    if (a1)
    {
      v5 = 0x65756C615670;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 12908;
    v2 = 7563372;
    if (a1 != 7)
    {
      v2 = 7563378;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x6953746365666665;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D157C774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1583184(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D157C7A8(uint64_t a1)
{
  v2 = sub_1D1580B6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D157C7E4(uint64_t a1)
{
  v2 = sub_1D1580B6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignificantChangeEngine.Changepoint.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D1580C14(0, &qword_1EE056370, sub_1D1580B6C, &type metadata for SignificantChangeEngine.Changepoint.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1580B6C();
  sub_1D15A4CE8();
  LOBYTE(v18) = 0;
  sub_1D15A26A8();
  sub_1D1580304(&qword_1EE05B3F8, MEMORY[0x1E6969530]);
  sub_1D15A4B38();
  if (!v2)
  {
    v10 = type metadata accessor for SignificantChangeEngine.Changepoint(0);
    LOBYTE(v18) = 1;
    sub_1D15A4B18();
    LOBYTE(v18) = 2;
    sub_1D15A4B18();
    LOBYTE(v18) = 3;
    sub_1D15A4B18();
    LOBYTE(v18) = 4;
    sub_1D15A4B18();
    LOBYTE(v18) = 5;
    sub_1D15A4B18();
    LOBYTE(v18) = 6;
    sub_1D15A4B18();
    v11 = (v3 + *(v10 + 44));
    v12 = *(v11 + 4);
    v13 = v11[1];
    v18 = *v11;
    v19 = v13;
    v20 = v12;
    v21 = 7;
    sub_1D1580BC0();
    sub_1D15A4B38();
    v14 = (v3 + *(v10 + 48));
    v15 = *(v14 + 4);
    v16 = v14[1];
    v18 = *v14;
    v19 = v16;
    v20 = v15;
    v21 = 8;
    sub_1D15A4B38();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t SignificantChangeEngine.Changepoint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1D15A26A8();
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1580C14(0, &qword_1EE056440, sub_1D1580B6C, &type metadata for SignificantChangeEngine.Changepoint.CodingKeys, MEMORY[0x1E69E6F48]);
  v31 = v5;
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v8 = type metadata accessor for SignificantChangeEngine.Changepoint(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1580B6C();
  v33 = v7;
  v11 = v34;
  sub_1D15A4CD8();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v29;
  v12 = v30;
  LOBYTE(v35) = 0;
  sub_1D1580304(&qword_1EE05B800, MEMORY[0x1E6969530]);
  sub_1D15A4A78();
  (*(v12 + 32))(v10, v32, v3);
  LOBYTE(v35) = 1;
  sub_1D15A4A58();
  *&v10[v8[5]] = v14;
  LOBYTE(v35) = 2;
  sub_1D15A4A58();
  *&v10[v8[6]] = v15;
  LOBYTE(v35) = 3;
  sub_1D15A4A58();
  *&v10[v8[7]] = v16;
  LOBYTE(v35) = 4;
  sub_1D15A4A58();
  *&v10[v8[8]] = v17;
  LOBYTE(v35) = 5;
  sub_1D15A4A58();
  *&v10[v8[9]] = v18;
  LOBYTE(v35) = 6;
  sub_1D15A4A58();
  *&v10[v8[10]] = v19;
  v38 = 7;
  sub_1D1580C7C();
  sub_1D15A4A78();
  v20 = v37;
  v21 = &v10[v8[11]];
  v22 = v36;
  *v21 = v35;
  *(v21 + 1) = v22;
  *(v21 + 4) = v20;
  v38 = 8;
  sub_1D15A4A78();
  (*(v13 + 8))(v33, v31);
  v23 = v37;
  v24 = &v10[v8[12]];
  v25 = v36;
  *v24 = v35;
  *(v24 + 1) = v25;
  *(v24 + 4) = v23;
  sub_1D158015C(v10, v28, type metadata accessor for SignificantChangeEngine.Changepoint);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D158034C(v10, type metadata accessor for SignificantChangeEngine.Changepoint);
}

uint64_t sub_1D157D108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[1] = a3;
  v4 = sub_1D15A26A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D148EF60();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a1;
  sub_1D158015C(a1, v10, sub_1D148EF60);
  sub_1D15A2258();
  v11 = sub_1D15A22A8();
  v12 = *(*(v11 - 8) + 8);
  v12(v10, v11);
  sub_1D1580304(&qword_1EE05B518, MEMORY[0x1E6969530]);
  v13 = sub_1D15A3EC8();
  v14 = *(v5 + 8);
  v14(v7, v4);
  if (v13)
  {
    sub_1D158015C(v17[0], v10, sub_1D148EF60);
    sub_1D15A2258();
    v12(v10, v11);
    v15 = sub_1D15A2628();
    v14(v7, v4);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

unint64_t sub_1D157D364(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    if ((v3 - result) >= 1 && v3 < result)
    {
      __break(1u);
    }

    type metadata accessor for SignificantChange.Period(0);
    return a2;
  }

  return result;
}

uint64_t SignificantChangeEngine.Changepoint.description.getter()
{
  v1 = v0;
  sub_1D1583770(0, &qword_1EE05B538, sub_1D14C8F3C, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D15ACDD0;
  v3 = *(v1 + *(type metadata accessor for SignificantChangeEngine.Changepoint(0) + 28));
  v4 = MEMORY[0x1E69E6438];
  *(v2 + 56) = MEMORY[0x1E69E63B0];
  *(v2 + 64) = v4;
  *(v2 + 32) = v3;
  v5 = sub_1D15A3F58();
  v7 = v6;
  sub_1D15A47D8();
  MEMORY[0x1D388A330](0x6F7065676E616843, 0xED00005B7B746E69);
  sub_1D15A26A8();
  sub_1D1580304(&qword_1EE05B3F0, MEMORY[0x1E6969530]);
  v8 = sub_1D15A4B68();
  MEMORY[0x1D388A330](v8);

  MEMORY[0x1D388A330](2629725, 0xE300000000000000);
  sub_1D15A4178();
  MEMORY[0x1D388A330](64, 0xE100000000000000);
  sub_1D15A4178();
  MEMORY[0x1D388A330](8233, 0xE200000000000000);
  MEMORY[0x1D388A330](v5, v7);

  MEMORY[0x1D388A330](10272, 0xE200000000000000);
  sub_1D15A4178();
  MEMORY[0x1D388A330](64, 0xE100000000000000);
  sub_1D15A4178();
  MEMORY[0x1D388A330](0x203A702029, 0xE500000000000000);
  sub_1D15A4178();
  MEMORY[0x1D388A330](0x746365666665202CLL, 0xEA0000000000203ALL);
  sub_1D15A4178();
  MEMORY[0x1D388A330](0x203A76202CLL, 0xE500000000000000);
  sub_1D15A4178();
  MEMORY[0x1D388A330](47, 0xE100000000000000);
  sub_1D15A4178();
  MEMORY[0x1D388A330](125, 0xE100000000000000);
  return 0;
}

uint64_t SignificantChange.description.getter()
{
  v1 = type metadata accessor for SignificantChange.Period(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0x2865676E616843;
  v30 = 0xE700000000000000;
  v5 = *(v0 + *(type metadata accessor for SignificantChange(0) + 20));
  if (*(v5 + 16))
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x20796461657453;
  }

  if (*(v5 + 16))
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  MEMORY[0x1D388A330](v6, v7);

  v8 = SignificantChange.Period.description.getter();
  MEMORY[0x1D388A330](v8);

  result = MEMORY[0x1D388A330](32, 0xE100000000000000);
  v10 = *(v5 + 16);
  if (v10)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D14A7854(0, v10, 0);
    v11 = v27;
    v12 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v13 = *(v2 + 72);
    do
    {
      sub_1D158015C(v12, v4, type metadata accessor for SignificantChange.Period);
      v14 = SignificantChange.Period.description.getter();
      v16 = v15;
      result = sub_1D158034C(v4, type metadata accessor for SignificantChange.Period);
      v27 = v11;
      v18 = v11[2];
      v17 = v11[3];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        result = sub_1D14A7854((v17 > 1), v18 + 1, 1);
        v11 = v27;
      }

      v11[2] = v19;
      v20 = &v11[2 * v18];
      v20[4] = v14;
      v20[5] = v16;
      v12 += v13;
      --v10;
    }

    while (v10);
LABEL_14:
    v21 = 0;
    v22 = 0;
    v23 = v11 + 5;
    v24 = 0xE000000000000000;
    while (v22 < v11[2])
    {
      ++v22;
      v26 = *(v23 - 1);
      v25 = *v23;
      v27 = v21;
      v28 = v24;

      MEMORY[0x1D388A330](v26, v25);

      v21 = v27;
      v24 = v28;
      v23 += 2;
      if (v19 == v22)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    return result;
  }

  v11 = MEMORY[0x1E69E7CC0];
  v19 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v19)
  {
    goto LABEL_14;
  }

  v21 = 0;
  v24 = 0xE000000000000000;
LABEL_17:

  MEMORY[0x1D388A330](v21, v24);

  return v29;
}

uint64_t SignificantChange.Period.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for SignificantChange.Period(0) + 28));
  if (v1 == 2)
  {
    sub_1D15A47D8();
    v2 = 0x80000001D15C24A0;
    v3 = 0xD000000000000012;
  }

  else
  {
    if (v1)
    {
      v4 = 0x6973616572636544;
    }

    else
    {
      v4 = 0x6973616572636E49;
    }

    sub_1D15A47D8();
    MEMORY[0x1D388A330](0x28646F69726550, 0xE700000000000000);
    MEMORY[0x1D388A330](v4, 0xEE00206F7420676ELL);

    v3 = 10272;
    v2 = 0xE200000000000000;
  }

  MEMORY[0x1D388A330](v3, v2);
  sub_1D15A4178();
  MEMORY[0x1D388A330](8236, 0xE200000000000000);
  sub_1D15A4178();
  MEMORY[0x1D388A330](0x207265766F2029, 0xE700000000000000);
  sub_1D15A22A8();
  sub_1D1580304(&qword_1EE05B430, MEMORY[0x1E6968130]);
  v5 = sub_1D15A4B68();
  MEMORY[0x1D388A330](v5);

  MEMORY[0x1D388A330](41, 0xE100000000000000);
  return 0;
}

void sub_1D157DC00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t (*a6)(void))
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      a5(0);
      v10 = *(a6(0) - 8);
      v11 = *(v10 + 72);
      v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v13 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v13);
      if (!v11)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v14 - v12 == 0x8000000000000000 && v11 == -1)
      {
        goto LABEL_16;
      }

      v13[2] = v7;
      v13[3] = 2 * ((v14 - v12) / v11);
      if (v6 != a3)
      {
LABEL_10:
        a6(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

BOOL _s19HealthVisualization23SignificantChangeEngineV10ParametersV10ThresholdsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  v4 = *(a2 + 40);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    return (v4 & 1) == 0;
  }

  return (*(a2 + 40) & 1) != 0;
}

BOOL _s19HealthVisualization23SignificantChangeEngineV10ParametersV9MeanShiftV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  v15 = *(a1 + 89);
  v17 = *(a1 + 96);
  v16 = *(a1 + 104);
  v18 = *(a1 + 112);
  v19 = *(a1 + 120);
  v20 = *(a1 + 128);
  v21 = *(a2 + 8);
  v22 = *(a2 + 16);
  v23 = *(a2 + 24);
  v24 = *(a2 + 32);
  v25 = *(a2 + 40);
  v26 = *(a2 + 48);
  v27 = *(a2 + 56);
  v28 = *(a2 + 64);
  v29 = *(a2 + 72);
  v30 = *(a2 + 80);
  v31 = *(a2 + 88);
  v32 = *(a2 + 89);
  v34 = *(a2 + 96);
  v33 = *(a2 + 104);
  v35 = *(a2 + 112);
  v36 = *(a2 + 120);
  v37 = *(a2 + 128);
  if (v4)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v38 = v21;
    }

    else
    {
      v38 = 1;
    }

    if (v38)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == v22)
    {
      v39 = v23;
    }

    else
    {
      v39 = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (v7 == v24)
    {
      v40 = v25;
    }

    else
    {
      v40 = 1;
    }

    if (v40)
    {
      return 0;
    }
  }

  if (v10)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    if (v9 == v26)
    {
      v41 = v27;
    }

    else
    {
      v41 = 1;
    }

    if (v41)
    {
      return 0;
    }
  }

  if (v12)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (v11 == v28)
    {
      v42 = v29;
    }

    else
    {
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  if (v14)
  {
    if (v31)
    {
      goto LABEL_45;
    }

    return 0;
  }

  if (v13 == v30)
  {
    v43 = v31;
  }

  else
  {
    v43 = 1;
  }

  if (v43)
  {
    return 0;
  }

LABEL_45:
  v45 = sub_1D1477B68(v15, v32);
  result = 0;
  if ((v45 & 1) != 0 && v17 == v34 && v16 == v33)
  {
    if (v19)
    {
      if (v36)
      {
        return v20 == v37;
      }
    }

    else
    {
      if (v18 == v35)
      {
        v46 = v36;
      }

      else
      {
        v46 = 1;
      }

      if ((v46 & 1) == 0)
      {
        return v20 == v37;
      }
    }

    return 0;
  }

  return result;
}

uint64_t _s19HealthVisualization23SignificantChangeEngineV10ParametersV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  if (*a1 == *a2)
  {
    v59 = v7;
    v60 = v6;
    v61 = v5;
    v62 = v4;
    v63 = v2;
    v64 = v3;
    if (*(a1 + 8) == *(a2 + 8))
    {
      v10 = *(a1 + 152);
      v11 = *(a1 + 192);
      v12 = *(a1 + 200);
      v13 = *(a1 + 208);
      v14 = *(a2 + 152);
      v42 = *(a1 + 160);
      v43 = *(a1 + 176);
      v40 = *(a2 + 160);
      v41 = *(a2 + 176);
      v15 = *(a2 + 192);
      v16 = *(a2 + 200);
      v17 = *(a2 + 208);
      v18 = *(a1 + 128);
      v57[6] = *(a1 + 112);
      v57[7] = v18;
      v58 = *(a1 + 144);
      v19 = *(a1 + 64);
      v57[2] = *(a1 + 48);
      v57[3] = v19;
      v20 = *(a1 + 96);
      v57[4] = *(a1 + 80);
      v57[5] = v20;
      v21 = *(a1 + 32);
      v57[0] = *(a1 + 16);
      v57[1] = v21;
      if (sub_1D1580AE4(v57) == 1)
      {
        v23 = *(a2 + 128);
        v54 = *(a2 + 112);
        v55 = v23;
        v56 = *(a2 + 144);
        v24 = *(a2 + 64);
        v50 = *(a2 + 48);
        v51 = v24;
        v25 = *(a2 + 96);
        v52 = *(a2 + 80);
        v53 = v25;
        v26 = *(a2 + 32);
        v48 = *(a2 + 16);
        v49 = v26;
        if (sub_1D1580AE4(&v48) != 1)
        {
          return 0;
        }
      }

      else
      {
        v27 = *(a1 + 128);
        v46[6] = *(a1 + 112);
        v46[7] = v27;
        v47 = *(a1 + 144);
        v28 = *(a1 + 64);
        v46[2] = *(a1 + 48);
        v46[3] = v28;
        v29 = *(a1 + 96);
        v46[4] = *(a1 + 80);
        v46[5] = v29;
        v30 = *(a1 + 32);
        v46[0] = *(a1 + 16);
        v46[1] = v30;
        v31 = *(a2 + 128);
        v54 = *(a2 + 112);
        v55 = v31;
        v56 = *(a2 + 144);
        v32 = *(a2 + 64);
        v50 = *(a2 + 48);
        v51 = v32;
        v33 = *(a2 + 96);
        v52 = *(a2 + 80);
        v53 = v33;
        v34 = *(a2 + 32);
        v48 = *(a2 + 16);
        v49 = v34;
        if (sub_1D1580AE4(&v48) == 1)
        {
          return 0;
        }

        v35 = *(a2 + 128);
        v44[6] = *(a2 + 112);
        v44[7] = v35;
        v45 = *(a2 + 144);
        v36 = *(a2 + 64);
        v44[2] = *(a2 + 48);
        v44[3] = v36;
        v37 = *(a2 + 96);
        v44[4] = *(a2 + 80);
        v44[5] = v37;
        v38 = *(a2 + 32);
        v44[0] = *(a2 + 16);
        v44[1] = v38;
        if (!_s19HealthVisualization23SignificantChangeEngineV10ParametersV9MeanShiftV2eeoiySbAG_AGtFZ_0(v46, v44))
        {
          return 0;
        }
      }

      if (v13)
      {
        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v17 & 1) != 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v42, v40), vceqq_s64(v43, v41)))) & 1) == 0 || v11 != v15 || v10 != v14 || v12 != v16)
      {
        return 0;
      }

      return 1;
    }
  }

  return v8;
}

BOOL _s19HealthVisualization23SignificantChangeEngineV11ChangepointV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D15A2658() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SignificantChangeEngine.Changepoint(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]) || *(a1 + v4[6]) != *(a2 + v4[6]) || *(a1 + v4[7]) != *(a2 + v4[7]) || *(a1 + v4[8]) != *(a2 + v4[8]) || *(a1 + v4[9]) != *(a2 + v4[9]))
  {
    return 0;
  }

  v5 = v4[10];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  v8 = 0;
  if (v6 == v7)
  {
    v9 = v4[11];
    v10 = (a1 + v9);
    v11 = (a2 + v9);
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v10, *v11), vceqq_f64(v10[1], v11[1])))) & 1) != 0 && v10[2].f64[0] == v11[2].f64[0])
    {
      v12 = v4[12];
      v13 = (a1 + v12);
      v14 = (a2 + v12);
      if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v13, *v14), vceqq_f64(v13[1], v14[1])))))
      {
        return v13[2].f64[0] == v14[2].f64[0];
      }

      return 0;
    }
  }

  return v8;
}

BOOL _s19HealthVisualization23SignificantChangeEngineV6OutputV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignificantChangeEngine.State(0);
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15801C4(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1583920(0);
  v54 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SignificantChange(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15800F0(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v57 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  sub_1D15838E0(0);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v51 - v24;
  v27 = *(v26 + 48);
  v60 = a1;
  sub_1D15800D8(a1, &v51 - v24);
  v58 = a2;
  sub_1D15800D8(a2, &v25[v27]);
  v28 = *(v11 + 48);
  if (v28(v25, 1, v10) == 1)
  {
    if (v28(&v25[v27], 1, v10) == 1)
    {
      sub_1D158034C(v25, sub_1D15800F0);
      goto LABEL_8;
    }

LABEL_6:
    v29 = sub_1D15838E0;
    v30 = v25;
LABEL_21:
    sub_1D158034C(v30, v29);
    return 0;
  }

  sub_1D15800D8(v25, v18);
  if (v28(&v25[v27], 1, v10) == 1)
  {
    sub_1D158034C(v18, type metadata accessor for SignificantChange);
    goto LABEL_6;
  }

  sub_1D1580248(&v25[v27], v13, type metadata accessor for SignificantChange);
  v31 = _s19HealthVisualization17SignificantChangeV2eeoiySbAC_ACtFZ_0(v18, v13);
  sub_1D158034C(v13, type metadata accessor for SignificantChange);
  sub_1D158034C(v18, type metadata accessor for SignificantChange);
  sub_1D158034C(v25, sub_1D15800F0);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v32 = type metadata accessor for SignificantChangeEngine.Output(0);
  v33 = *(v32 + 20);
  v34 = *(v20 + 48);
  sub_1D15800D8(v60 + v33, v22);
  v35 = v58;
  sub_1D15800D8(v58 + v33, &v22[v34]);
  if (v28(v22, 1, v10) != 1)
  {
    v36 = v57;
    sub_1D15800D8(v22, v57);
    if (v28(&v22[v34], 1, v10) != 1)
    {
      sub_1D1580248(&v22[v34], v13, type metadata accessor for SignificantChange);
      v37 = _s19HealthVisualization17SignificantChangeV2eeoiySbAC_ACtFZ_0(v36, v13);
      sub_1D158034C(v13, type metadata accessor for SignificantChange);
      sub_1D158034C(v36, type metadata accessor for SignificantChange);
      sub_1D158034C(v22, sub_1D15800F0);
      if ((v37 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    sub_1D158034C(v36, type metadata accessor for SignificantChange);
    goto LABEL_13;
  }

  if (v28(&v22[v34], 1, v10) != 1)
  {
LABEL_13:
    v29 = sub_1D15838E0;
    v30 = v22;
    goto LABEL_21;
  }

  sub_1D158034C(v22, sub_1D15800F0);
LABEL_15:
  v38 = *(v32 + 24);
  v39 = *(v54 + 48);
  v40 = v59;
  sub_1D1580144(v60 + v38, v59);
  sub_1D1580144(v35 + v38, v40 + v39);
  v41 = *(v55 + 48);
  v42 = v40;
  v43 = v56;
  if (v41(v42, 1, v56) == 1)
  {
    if (v41(v59 + v39, 1, v43) == 1)
    {
      sub_1D158034C(v59, sub_1D15801C4);
      return 1;
    }

    goto LABEL_20;
  }

  v44 = v59;
  v45 = v53;
  sub_1D1580144(v59, v53);
  if (v41(v44 + v39, 1, v43) == 1)
  {
    sub_1D158034C(v45, type metadata accessor for SignificantChangeEngine.State);
LABEL_20:
    v29 = sub_1D1583920;
    v30 = v59;
    goto LABEL_21;
  }

  v47 = v59;
  v48 = v59 + v39;
  v49 = v52;
  sub_1D1580248(v48, v52, type metadata accessor for SignificantChangeEngine.State);
  v50 = _s19HealthVisualization23SignificantChangeEngineV5StateV2eeoiySbAE_AEtFZ_0(v45, v49);
  sub_1D158034C(v49, type metadata accessor for SignificantChangeEngine.State);
  sub_1D158034C(v45, type metadata accessor for SignificantChangeEngine.State);
  sub_1D158034C(v47, sub_1D15801C4);
  return v50;
}

BOOL _s19HealthVisualization23SignificantChangeEngineV5StateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1580868(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1583840(0);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15807FC(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1583860(0);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D15A2238() & 1) == 0)
  {
    return 0;
  }

  v39 = v6;
  v40 = type metadata accessor for SignificantChangeEngine.State(0);
  v23 = *(v40 + 20);
  v24 = *(v20 + 48);
  sub_1D15807E4(a1 + v23, v22);
  v41 = a2;
  sub_1D15807E4(a2 + v23, &v22[v24]);
  v25 = *(v13 + 48);
  if (v25(v22, 1, v12) != 1)
  {
    sub_1D15807E4(v22, v18);
    if (v25(&v22[v24], 1, v12) != 1)
    {
      sub_1D1580248(&v22[v24], v15, type metadata accessor for SignificantChangeEngine.State.MeanShift);
      v28 = _s19HealthVisualization23SignificantChangeEngineV5StateV9MeanShiftV2eeoiySbAG_AGtFZ_0(v18, v15);
      sub_1D158034C(v15, type metadata accessor for SignificantChangeEngine.State.MeanShift);
      sub_1D158034C(v18, type metadata accessor for SignificantChangeEngine.State.MeanShift);
      sub_1D158034C(v22, sub_1D15807FC);
      if (!v28)
      {
        return 0;
      }

      goto LABEL_9;
    }

    sub_1D158034C(v18, type metadata accessor for SignificantChangeEngine.State.MeanShift);
LABEL_7:
    v26 = sub_1D1583860;
    v27 = v22;
LABEL_15:
    sub_1D158034C(v27, v26);
    return 0;
  }

  if (v25(&v22[v24], 1, v12) != 1)
  {
    goto LABEL_7;
  }

  sub_1D158034C(v22, sub_1D15807FC);
LABEL_9:
  v29 = *(v40 + 24);
  v30 = *(v10 + 48);
  v31 = v43;
  sub_1D1580850(a1 + v29, v43);
  sub_1D1580850(v41 + v29, v31 + v30);
  v32 = v45;
  v33 = *(v44 + 48);
  if (v33(v31, 1, v45) == 1)
  {
    if (v33(v31 + v30, 1, v32) == 1)
    {
      sub_1D158034C(v31, sub_1D1580868);
      return 1;
    }

    goto LABEL_14;
  }

  v34 = v42;
  sub_1D1580850(v31, v42);
  if (v33(v31 + v30, 1, v32) == 1)
  {
    sub_1D158034C(v34, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
LABEL_14:
    v26 = sub_1D1583840;
    v27 = v31;
    goto LABEL_15;
  }

  v36 = v39;
  sub_1D1580248(v31 + v30, v39, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
  v37 = _s19HealthVisualization23SignificantChangeEngineV5StateV14FrequencyShiftV2eeoiySbAG_AGtFZ_0(v34, v36);
  sub_1D158034C(v36, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
  sub_1D158034C(v34, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
  sub_1D158034C(v31, sub_1D1580868);
  return v37;
}

BOOL _s19HealthVisualization23SignificantChangeEngineV5StateV9MeanShiftV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D15A26A8();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F104C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14BDAD0();
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SignificantChangeEngine.Changepoint(0);
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D148EF2C(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v63 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1583900(0);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SignificantChange(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15800F0(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15838E0(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v28 + 56);
  v66 = a1;
  sub_1D15800D8(a1, v27);
  v30 = a2;
  sub_1D15800D8(a2, &v27[v29]);
  v31 = *(v19 + 48);
  if (v31(v27, 1, v18) == 1)
  {
    if (v31(&v27[v29], 1, v18) == 1)
    {
      sub_1D158034C(v27, sub_1D15800F0);
      goto LABEL_8;
    }

LABEL_6:
    v32 = sub_1D15838E0;
    v33 = v27;
LABEL_21:
    sub_1D158034C(v33, v32);
    return 0;
  }

  sub_1D15800D8(v27, v24);
  if (v31(&v27[v29], 1, v18) == 1)
  {
    sub_1D158034C(v24, type metadata accessor for SignificantChange);
    goto LABEL_6;
  }

  sub_1D1580248(&v27[v29], v21, type metadata accessor for SignificantChange);
  v34 = _s19HealthVisualization17SignificantChangeV2eeoiySbAC_ACtFZ_0(v24, v21);
  sub_1D158034C(v21, type metadata accessor for SignificantChange);
  sub_1D158034C(v24, type metadata accessor for SignificantChange);
  sub_1D158034C(v27, sub_1D15800F0);
  if ((v34 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v35 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
  v36 = *(v35 + 20);
  v37 = *(v15 + 48);
  v38 = v66;
  sub_1D15808BC(v66 + v36, v17);
  sub_1D15808BC(v30 + v36, &v17[v37]);
  v39 = v65;
  v40 = *(v64 + 48);
  if (v40(v17, 1, v65) != 1)
  {
    v41 = v63;
    sub_1D15808BC(v17, v63);
    if (v40(&v17[v37], 1, v39) != 1)
    {
      v42 = v58;
      sub_1D1580248(&v17[v37], v58, type metadata accessor for SignificantChangeEngine.Changepoint);
      v43 = _s19HealthVisualization23SignificantChangeEngineV11ChangepointV2eeoiySbAE_AEtFZ_0(v41, v42);
      sub_1D158034C(v42, type metadata accessor for SignificantChangeEngine.Changepoint);
      sub_1D158034C(v41, type metadata accessor for SignificantChangeEngine.Changepoint);
      sub_1D158034C(v17, sub_1D148EF2C);
      if (!v43)
      {
        return 0;
      }

      goto LABEL_15;
    }

    sub_1D158034C(v41, type metadata accessor for SignificantChangeEngine.Changepoint);
    goto LABEL_13;
  }

  if (v40(&v17[v37], 1, v39) != 1)
  {
LABEL_13:
    v32 = sub_1D1583900;
    v33 = v17;
    goto LABEL_21;
  }

  sub_1D158034C(v17, sub_1D148EF2C);
LABEL_15:
  v44 = *(v35 + 24);
  v45 = v60;
  v46 = *(v59 + 48);
  sub_1D1455A40(v38 + v44, v60);
  sub_1D1455A40(v30 + v44, v45 + v46);
  v48 = v61;
  v47 = v62;
  v49 = *(v61 + 48);
  if (v49(v45, 1, v62) == 1)
  {
    if (v49(v45 + v46, 1, v47) == 1)
    {
      sub_1D158034C(v45, sub_1D14F104C);
      return 1;
    }

    goto LABEL_20;
  }

  v50 = v57;
  sub_1D1455A40(v45, v57);
  if (v49(v45 + v46, 1, v47) == 1)
  {
    (*(v48 + 8))(v50, v47);
LABEL_20:
    v32 = sub_1D14BDAD0;
    v33 = v45;
    goto LABEL_21;
  }

  v52 = v56;
  (*(v48 + 32))(v56, v45 + v46, v47);
  sub_1D1580304(&qword_1EC630538, MEMORY[0x1E6969530]);
  v53 = sub_1D15A3EE8();
  v54 = *(v48 + 8);
  v54(v52, v47);
  v54(v50, v47);
  sub_1D158034C(v45, sub_1D14F104C);
  return (v53 & 1) != 0;
}

BOOL _s19HealthVisualization23SignificantChangeEngineV5StateV14FrequencyShiftV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignificantChange(0);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15800F0(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15838E0(0);
  v49 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D15A26A8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F104C(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14BDAD0();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 + 56);
  v52 = a1;
  sub_1D1455A40(a1, v20);
  v23 = a2;
  sub_1D1455A40(a2, &v20[v22]);
  v24 = *(v12 + 48);
  if (v24(v20, 1, v11) != 1)
  {
    sub_1D1455A40(v20, v17);
    if (v24(&v20[v22], 1, v11) != 1)
    {
      (*(v12 + 32))(v14, &v20[v22], v11);
      sub_1D1580304(&qword_1EC630538, MEMORY[0x1E6969530]);
      v27 = sub_1D15A3EE8();
      v28 = *(v12 + 8);
      v28(v14, v11);
      v28(v17, v11);
      sub_1D158034C(v20, sub_1D14F104C);
      if ((v27 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v12 + 8))(v17, v11);
LABEL_6:
    v25 = sub_1D14BDAD0;
    v26 = v20;
LABEL_30:
    sub_1D158034C(v26, v25);
    return 0;
  }

  if (v24(&v20[v22], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_1D158034C(v20, sub_1D14F104C);
LABEL_8:
  v29 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
  v30 = *(v29 + 20);
  v31 = v52;
  v32 = *(v52 + v30);
  v33 = *(v23 + v30);
  if (v32)
  {
    v34 = 0x6967676F4C746F6ELL;
  }

  else
  {
    v34 = 0x676E6967676F6CLL;
  }

  if (v32)
  {
    v35 = 0xEA0000000000676ELL;
  }

  else
  {
    v35 = 0xE700000000000000;
  }

  if (v33)
  {
    v36 = 0x6967676F4C746F6ELL;
  }

  else
  {
    v36 = 0x676E6967676F6CLL;
  }

  if (v33)
  {
    v37 = 0xEA0000000000676ELL;
  }

  else
  {
    v37 = 0xE700000000000000;
  }

  if (v34 == v36 && v35 == v37)
  {
  }

  else
  {
    v38 = sub_1D15A4BA8();

    if ((v38 & 1) == 0)
    {
      return 0;
    }
  }

  v39 = *(v29 + 24);
  v40 = *(v49 + 48);
  sub_1D15800D8(v31 + v39, v10);
  sub_1D15800D8(v23 + v39, &v10[v40]);
  v41 = v51;
  v42 = *(v50 + 48);
  if (v42(v10, 1, v51) == 1)
  {
    if (v42(&v10[v40], 1, v41) == 1)
    {
      sub_1D158034C(v10, sub_1D15800F0);
      return 1;
    }

    goto LABEL_29;
  }

  v43 = v48;
  sub_1D15800D8(v10, v48);
  if (v42(&v10[v40], 1, v41) == 1)
  {
    sub_1D158034C(v43, type metadata accessor for SignificantChange);
LABEL_29:
    v25 = sub_1D15838E0;
    v26 = v10;
    goto LABEL_30;
  }

  v45 = v47;
  sub_1D1580248(&v10[v40], v47, type metadata accessor for SignificantChange);
  v46 = _s19HealthVisualization17SignificantChangeV2eeoiySbAC_ACtFZ_0(v43, v45);
  sub_1D158034C(v45, type metadata accessor for SignificantChange);
  sub_1D158034C(v43, type metadata accessor for SignificantChange);
  sub_1D158034C(v10, sub_1D15800F0);
  return (v46 & 1) != 0;
}

double sub_1D157FEAC(char a1)
{
  if (a1 == 4)
  {
    return 2419200.0;
  }

  if (a1 == 5)
  {
    return 15724800.0;
  }

  v15[9] = v1;
  v15[10] = v2;
  if (qword_1EE056C98 != -1)
  {
    swift_once();
  }

  v4 = sub_1D15A3268();
  __swift_project_value_buffer(v4, qword_1EE056CA0);
  v5 = sub_1D15A3248();
  v6 = sub_1D15A4318();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136446466;
    v15[0] = v8;
    sub_1D1580090();
    v9 = sub_1D15A3F68();
    v11 = sub_1D1479780(v9, v10, v15);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v12 = sub_1D15A3F68();
    v14 = sub_1D1479780(v12, v13, v15);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_1D1446000, v5, v6, "[%{public}s]: Unsupported date range submitted: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D388BF00](v8, -1, -1);
    MEMORY[0x1D388BF00](v7, -1, -1);
  }

  return 0.0;
}

unint64_t sub_1D1580090()
{
  result = qword_1EC6312D8;
  if (!qword_1EC6312D8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC6312D8);
  }

  return result;
}

uint64_t sub_1D158015C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1580248(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D15802B0()
{
  result = qword_1EE0585F0[0];
  if (!qword_1EE0585F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0585F0);
  }

  return result;
}

uint64_t sub_1D1580304(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D158034C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D15803AC()
{
  result = qword_1EC6312E0;
  if (!qword_1EC6312E0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC6312E0);
  }

  return result;
}

unint64_t sub_1D15803F4()
{
  result = qword_1EC6312F0;
  if (!qword_1EC6312F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6312F0);
  }

  return result;
}

unint64_t sub_1D1580448()
{
  result = qword_1EC631308;
  if (!qword_1EC631308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631308);
  }

  return result;
}

unint64_t sub_1D158049C()
{
  result = qword_1EC631310;
  if (!qword_1EC631310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631310);
  }

  return result;
}

unint64_t sub_1D15804F0()
{
  result = qword_1EC631318;
  if (!qword_1EC631318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631318);
  }

  return result;
}

unint64_t sub_1D1580544()
{
  result = qword_1EC631328;
  if (!qword_1EC631328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631328);
  }

  return result;
}

unint64_t sub_1D1580598()
{
  result = qword_1EC631330;
  if (!qword_1EC631330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631330);
  }

  return result;
}

unint64_t sub_1D15805EC()
{
  result = qword_1EC631340;
  if (!qword_1EC631340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631340);
  }

  return result;
}

unint64_t sub_1D1580640()
{
  result = qword_1EC631358;
  if (!qword_1EC631358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631358);
  }

  return result;
}

unint64_t sub_1D1580694()
{
  result = qword_1EC631360;
  if (!qword_1EC631360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631360);
  }

  return result;
}

unint64_t sub_1D15806E8()
{
  result = qword_1EC631368;
  if (!qword_1EC631368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631368);
  }

  return result;
}

unint64_t sub_1D158073C()
{
  result = qword_1EC631378;
  if (!qword_1EC631378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631378);
  }

  return result;
}

unint64_t sub_1D1580790()
{
  result = qword_1EC631380;
  if (!qword_1EC631380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631380);
  }

  return result;
}

unint64_t sub_1D158090C()
{
  result = qword_1EE058768[0];
  if (!qword_1EE058768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE058768);
  }

  return result;
}

unint64_t sub_1D1580960()
{
  result = qword_1EE058848;
  if (!qword_1EE058848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058848);
  }

  return result;
}

unint64_t sub_1D15809B4()
{
  result = qword_1EE058830;
  if (!qword_1EE058830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058830);
  }

  return result;
}

unint64_t sub_1D1580A08()
{
  result = qword_1EE058820;
  if (!qword_1EE058820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058820);
  }

  return result;
}

unint64_t sub_1D1580A5C()
{
  result = qword_1EE058860;
  if (!qword_1EE058860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058860);
  }

  return result;
}

uint64_t sub_1D1580AE4(uint64_t a1)
{
  v1 = *(a1 + 89);
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D1580B18()
{
  result = qword_1EE058888[0];
  if (!qword_1EE058888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE058888);
  }

  return result;
}

unint64_t sub_1D1580B6C()
{
  result = qword_1EE058968;
  if (!qword_1EE058968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058968);
  }

  return result;
}

unint64_t sub_1D1580BC0()
{
  result = qword_1EE058870;
  if (!qword_1EE058870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058870);
  }

  return result;
}

void sub_1D1580C14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D1580C7C()
{
  result = qword_1EE058868;
  if (!qword_1EE058868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058868);
  }

  return result;
}

unint64_t sub_1D1580CD4()
{
  result = qword_1EC631388;
  if (!qword_1EC631388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631388);
  }

  return result;
}

unint64_t sub_1D1580D2C()
{
  result = qword_1EC631390;
  if (!qword_1EC631390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631390);
  }

  return result;
}

void sub_1D1580DE0()
{
  sub_1D15800F0(319);
  if (v0 <= 0x3F)
  {
    sub_1D15801C4(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
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

uint64_t sub_1D1580EA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 209))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 105);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 105);
  }

  v5 = v4 - 5;
  if (v3 < 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1D1580EFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
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
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 209) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 209) = 0;
    }

    if (a2)
    {
      *(result + 105) = a2 + 4;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D1580F9C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1580FBC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1D1581048(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 136))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 89);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D158108C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 89) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1D1581100(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1581120(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

uint64_t __swift_get_extra_inhabitant_index_38Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a4(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v13 = v11;
    v14 = *(v12 + 48);
    v15 = a1;
LABEL_5:

    return v14(v15, a2, v13);
  }

  v16 = a5(0);
  v17 = *(v16 - 8);
  if (*(v17 + 84) == a2)
  {
    v13 = v16;
    v14 = *(v17 + 48);
    v15 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v19 = a6(0);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + *(a3 + 24);

  return v20(v21, a2, v19);
}

uint64_t __swift_store_extra_inhabitant_index_39Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v13 = a5(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v15 = v13;
    v16 = *(v14 + 56);
    v17 = a1;
LABEL_5:

    return v16(v17, a2, a2, v15);
  }

  v18 = a6(0);
  v19 = *(v18 - 8);
  if (*(v19 + 84) == a3)
  {
    v15 = v18;
    v16 = *(v19 + 56);
    v17 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v21 = a7(0);
  v22 = *(*(v21 - 8) + 56);
  v23 = a1 + *(a4 + 24);

  return v22(v23, a2, a2, v21);
}

uint64_t sub_1D1581504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1D15815E4()
{
  sub_1D14F104C(319);
  if (v0 <= 0x3F)
  {
    sub_1D15800F0(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D1581680(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D15816A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_1D158170C()
{
  result = sub_1D15A26A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SignificantChangeEngine.Changepoint.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SignificantChangeEngine.Changepoint.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D1581984()
{
  result = qword_1EC631398;
  if (!qword_1EC631398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631398);
  }

  return result;
}

unint64_t sub_1D15819DC()
{
  result = qword_1EC6313A0;
  if (!qword_1EC6313A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6313A0);
  }

  return result;
}

unint64_t sub_1D1581A34()
{
  result = qword_1EC6313A8;
  if (!qword_1EC6313A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6313A8);
  }

  return result;
}

unint64_t sub_1D1581A8C()
{
  result = qword_1EC6313B0;
  if (!qword_1EC6313B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6313B0);
  }

  return result;
}

unint64_t sub_1D1581AE4()
{
  result = qword_1EC6313B8;
  if (!qword_1EC6313B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6313B8);
  }

  return result;
}

unint64_t sub_1D1581B3C()
{
  result = qword_1EC6313C0;
  if (!qword_1EC6313C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6313C0);
  }

  return result;
}

unint64_t sub_1D1581B94()
{
  result = qword_1EC6313C8;
  if (!qword_1EC6313C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6313C8);
  }

  return result;
}

unint64_t sub_1D1581BEC()
{
  result = qword_1EC6313D0;
  if (!qword_1EC6313D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6313D0);
  }

  return result;
}

unint64_t sub_1D1581C44()
{
  result = qword_1EC6313D8;
  if (!qword_1EC6313D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6313D8);
  }

  return result;
}

unint64_t sub_1D1581C9C()
{
  result = qword_1EC6313E0;
  if (!qword_1EC6313E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6313E0);
  }

  return result;
}

unint64_t sub_1D1581CF4()
{
  result = qword_1EE058958;
  if (!qword_1EE058958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058958);
  }

  return result;
}

unint64_t sub_1D1581D4C()
{
  result = qword_1EE058960;
  if (!qword_1EE058960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058960);
  }

  return result;
}

unint64_t sub_1D1581DA4()
{
  result = qword_1EE058878;
  if (!qword_1EE058878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058878);
  }

  return result;
}

unint64_t sub_1D1581DFC()
{
  result = qword_1EE058880;
  if (!qword_1EE058880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058880);
  }

  return result;
}

unint64_t sub_1D1581E54()
{
  result = qword_1EE058850;
  if (!qword_1EE058850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058850);
  }

  return result;
}

unint64_t sub_1D1581EAC()
{
  result = qword_1EE058858;
  if (!qword_1EE058858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058858);
  }

  return result;
}

unint64_t sub_1D1581F04()
{
  result = qword_1EE058838;
  if (!qword_1EE058838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058838);
  }

  return result;
}

unint64_t sub_1D1581F5C()
{
  result = qword_1EE058840;
  if (!qword_1EE058840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058840);
  }

  return result;
}

unint64_t sub_1D1581FB4()
{
  result = qword_1EE058758;
  if (!qword_1EE058758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058758);
  }

  return result;
}

unint64_t sub_1D158200C()
{
  result = qword_1EE058760;
  if (!qword_1EE058760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058760);
  }

  return result;
}

unint64_t sub_1D1582064()
{
  result = qword_1EC6313E8;
  if (!qword_1EC6313E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6313E8);
  }

  return result;
}

unint64_t sub_1D15820BC()
{
  result = qword_1EC6313F0;
  if (!qword_1EC6313F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6313F0);
  }

  return result;
}

unint64_t sub_1D1582114()
{
  result = qword_1EC6313F8;
  if (!qword_1EC6313F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6313F8);
  }

  return result;
}

unint64_t sub_1D158216C()
{
  result = qword_1EC631400;
  if (!qword_1EC631400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631400);
  }

  return result;
}

unint64_t sub_1D15821C4()
{
  result = qword_1EC631408;
  if (!qword_1EC631408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631408);
  }

  return result;
}

unint64_t sub_1D158221C()
{
  result = qword_1EC631410;
  if (!qword_1EC631410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631410);
  }

  return result;
}

unint64_t sub_1D1582274()
{
  result = qword_1EC631418;
  if (!qword_1EC631418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631418);
  }

  return result;
}

unint64_t sub_1D15822CC()
{
  result = qword_1EC631420;
  if (!qword_1EC631420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631420);
  }

  return result;
}

unint64_t sub_1D1582324()
{
  result = qword_1EE0585E0;
  if (!qword_1EE0585E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0585E0);
  }

  return result;
}

unint64_t sub_1D158237C()
{
  result = qword_1EE0585E8;
  if (!qword_1EE0585E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0585E8);
  }

  return result;
}

uint64_t sub_1D15823D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x666968536E61656DLL && a2 == 0xEF65676E61684374;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xEF65676E61684379 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

uint64_t sub_1D15824F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x506D756D6978616DLL && a2 == 0xED000065756C6156;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D15BE0D0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D15C24C0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

uint64_t sub_1D1582620(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F687365726874 && a2 == 0xEA00000000007364;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D15C24E0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D15BE0F0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D15BE110 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001D15C2500 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D15C2530 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

uint64_t sub_1D1582878(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F68736572685470 && a2 == 0xEA0000000000646CLL;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D15BE0F0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D15BE110 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D15C2550 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D15C2570 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D15C2590 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D15C25B0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

uint64_t sub_1D1582AC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001D15C25D0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7544776F646E6977 && a2 == 0xEE006E6F69746172 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666968536E61656DLL && a2 == 0xE900000000000074 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xEE00746669685379)
  {

    return 3;
  }

  else
  {
    v5 = sub_1D15A4BA8();

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

uint64_t sub_1D1582C50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6843657669746361 && a2 == 0xEC00000065676E61;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D15C25F0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D15C2610 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

uint64_t sub_1D1582D78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697469736E617274 && a2 == 0xEE00657461446E6FLL;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6843657669746361 && a2 == 0xEC00000065676E61)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

uint64_t sub_1D1582E9C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001D15C2630 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x666968536E61656DLL && a2 == 0xE900000000000074 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xEE00746669685379)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D15A4BA8();

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

uint64_t sub_1D1582FD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7173491 && a2 == 0xE300000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5364657261757173 && a2 == 0xEA00000000006D75 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1851876717 && a2 == 0xE400000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65636E6169726176 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

uint64_t sub_1D1583184(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C615670 && a2 == 0xE600000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7473655474 && a2 == 0xE500000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x666968536E61656DLL && a2 == 0xE900000000000074 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D15C2650 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6953746365666665 && a2 == 0xEA0000000000657ALL || (sub_1D15A4BA8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 12908 && a2 == 0xE200000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 7563372 && a2 == 0xE300000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 7563378 && a2 == 0xE300000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D15A4BA8();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_1D1583468()
{
  result = qword_1EE058828;
  if (!qword_1EE058828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058828);
  }

  return result;
}

unint64_t sub_1D15834BC()
{
  result = qword_1EC631428;
  if (!qword_1EC631428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631428);
  }

  return result;
}

void sub_1D1583598(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1D15A22A8();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D15836B8(uint64_t a1, uint64_t a2)
{
  sub_1D1580AB0(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D1583770(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D15837D4()
{
  if (!qword_1EE0567D8)
  {
    sub_1D148EF60();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0567D8);
    }
  }
}

void sub_1D1583880(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1D1583940()
{
  result = qword_1EC631458;
  if (!qword_1EC631458)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC631458);
  }

  return result;
}

void CountComparisonQueryConfiguration.firstDurationCondition.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t CountComparisonQueryConfiguration.firstDurationCondition.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void CountComparisonQueryConfiguration.secondDurationCondition.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t CountComparisonQueryConfiguration.secondDurationCondition.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t CountComparisonQueryConfiguration.init(firstDurationCondition:secondDurationCondition:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  return result;
}

unint64_t sub_1D1583AAC()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1D1583AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000001D15C26C0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D15C26E0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D15A4BA8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D1583BC8(uint64_t a1)
{
  v2 = sub_1D15846E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1583C04(uint64_t a1)
{
  v2 = sub_1D15846E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CountComparisonQueryConfiguration.encode(to:)(void *a1)
{
  sub_1D1584838(0, &qword_1EC631460, sub_1D15846E8, &type metadata for CountComparisonQueryConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v12[0] = v1[2];
  v15 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D15846E8();
  sub_1D15A4CE8();
  v13 = v8;
  v14 = v9;
  v16 = 0;
  sub_1D158473C();
  v10 = v12[1];
  sub_1D15A4AE8();
  if (!v10)
  {
    v13 = v12[0];
    v14 = v15;
    v16 = 1;
    sub_1D15A4AE8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t CountComparisonQueryConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D1584838(0, &qword_1EC631478, sub_1D15846E8, &type metadata for CountComparisonQueryConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v20 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D15846E8();
  sub_1D15A4CD8();
  if (!v2)
  {
    v9 = v6;
    v10 = v17;
    v21 = 0;
    sub_1D1584790();
    sub_1D15A4A28();
    v11 = v18;
    v20 = v19;
    v21 = 1;
    sub_1D15A4A28();
    (*(v9 + 8))(v8, v5);
    v13 = v18;
    v14 = v19;
    v15 = v20;
    *v10 = v11;
    *(v10 + 8) = v15;
    *(v10 + 16) = v13;
    *(v10 + 24) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D158409C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001D15C2700 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D15A4BA8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D1584130(uint64_t a1)
{
  v2 = sub_1D15847E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D158416C(uint64_t a1)
{
  v2 = sub_1D15847E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CountComparisonQueryConfiguration.DurationCondition.encode(to:)(void *a1)
{
  sub_1D1584838(0, &qword_1EC631488, sub_1D15847E4, &type metadata for CountComparisonQueryConfiguration.DurationCondition.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D15847E4();
  sub_1D15A4CE8();
  sub_1D15A4B18();
  return (*(v4 + 8))(v6, v3);
}

uint64_t CountComparisonQueryConfiguration.DurationCondition.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  sub_1D1584838(0, &qword_1EC631498, sub_1D15847E4, &type metadata for CountComparisonQueryConfiguration.DurationCondition.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D15847E4();
  sub_1D15A4CD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v15;
  v10 = *(sub_1D15A4A88() + 16);

  if (v10)
  {
    sub_1D15A4A58();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *v9 = v13;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D158450C(void *a1)
{
  sub_1D1584838(0, &qword_1EC631488, sub_1D15847E4, &type metadata for CountComparisonQueryConfiguration.DurationCondition.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D15847E4();
  sub_1D15A4CE8();
  sub_1D15A4B18();
  return (*(v4 + 8))(v6, v3);
}

BOOL _s19HealthVisualization33CountComparisonQueryConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    return (v3 & 1) == 0;
  }

  return (*(a2 + 24) & 1) != 0;
}

unint64_t sub_1D15846E8()
{
  result = qword_1EC631468;
  if (!qword_1EC631468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631468);
  }

  return result;
}

unint64_t sub_1D158473C()
{
  result = qword_1EC631470;
  if (!qword_1EC631470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631470);
  }

  return result;
}

unint64_t sub_1D1584790()
{
  result = qword_1EC631480;
  if (!qword_1EC631480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631480);
  }

  return result;
}

unint64_t sub_1D15847E4()
{
  result = qword_1EC631490;
  if (!qword_1EC631490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631490);
  }

  return result;
}

void sub_1D1584838(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for DiagramConfiguration.PointLabelMinMaxSet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DiagramConfiguration.PointLabelMinMaxSet(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1D158492C()
{
  result = qword_1EC6314A0;
  if (!qword_1EC6314A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6314A0);
  }

  return result;
}

unint64_t sub_1D1584984()
{
  result = qword_1EC6314A8;
  if (!qword_1EC6314A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6314A8);
  }

  return result;
}

unint64_t sub_1D15849DC()
{
  result = qword_1EC6314B0;
  if (!qword_1EC6314B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6314B0);
  }

  return result;
}

unint64_t sub_1D1584A34()
{
  result = qword_1EC6314B8;
  if (!qword_1EC6314B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6314B8);
  }

  return result;
}

unint64_t sub_1D1584A8C()
{
  result = qword_1EC6314C0;
  if (!qword_1EC6314C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6314C0);
  }

  return result;
}

unint64_t sub_1D1584AE4()
{
  result = qword_1EC6314C8;
  if (!qword_1EC6314C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6314C8);
  }

  return result;
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation.init(snippetSupplementaryLabelConfiguration:sampleCount:dateInterval:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  *a5 = 2;
  v10 = *(type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0) + 24);
  v11 = sub_1D15A22A8();
  (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
  *a5 = v9;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  return sub_1D15852FC(a4, a5 + v10, sub_1D1491C64);
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.init(displayType:quantity:healthStore:unitMode:unitPreferenceController:forceDayGranularity:hasIndeterminateBaseline:supplementaryFormatInformation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *a4;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v13;
  *(a9 + 24) = a6;
  *(a9 + 25) = a7;
  v14 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter(0);
  sub_1D1584E98(a8, a9 + *(v14 + 36), type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation);
  type metadata accessor for MostRecentSampleSnidgetStringBuilder();
  v15 = swift_allocObject();
  v15[2] = a3;
  v16 = objc_opt_self();
  v17 = a3;
  v15[4] = [v16 sharedInstanceForHealthStore_];

  v15[3] = a5;
  result = sub_1D1584F00(a8, type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation);
  *(a9 + *(v14 + 40)) = v15;
  return result;
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.init(displayType:quantity:healthStore:unitPreferenceController:supplementaryFormatInformation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 16) = 0;
  *a6 = a1;
  *(a6 + 8) = a2;
  v10 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter(0);
  sub_1D1584E98(a5, a6 + *(v10 + 28), type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.SupplementaryFormatInformation);
  type metadata accessor for SampleCountSnidgetStringBuilder();
  v11 = swift_allocObject();
  v11[2] = a3;
  v12 = objc_opt_self();
  v13 = a3;
  v11[4] = [v12 sharedInstanceForHealthStore_];

  v11[3] = a4;
  result = sub_1D1584F00(a5, type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.SupplementaryFormatInformation);
  *(a6 + *(v10 + 32)) = v11;
  return result;
}

uint64_t sub_1D1584E98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1584F00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1584F78@<X0>(char *a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t a8@<X8>)
{
  v13 = *a1;
  v14 = *a2;
  *a8 = 2562;
  v15 = *(a7(0) + 32);
  v16 = sub_1D15A22A8();
  (*(*(v16 - 8) + 56))(a8 + v15, 1, 1, v16);
  *a8 = v13;
  *(a8 + 1) = v14;
  *(a8 + 2) = a3;
  *(a8 + 8) = a4;
  *(a8 + 16) = a5 & 1;
  return sub_1D15852FC(a6, a8 + v15, sub_1D1491C64);
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.init(displayType:quantity:healthStore:unitMode:unitPreferenceController:supplementaryFormatInformation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a4;
  *(a7 + 24) = 0;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v11;
  v12 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter(0);
  sub_1D1584E98(a6, a7 + *(v12 + 32), type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.SupplementaryFormatInformation);
  type metadata accessor for StatisticsSnidgetStringBuilder();
  v13 = swift_allocObject();
  v13[2] = a3;
  v14 = objc_opt_self();
  v15 = a3;
  v13[4] = [v14 sharedInstanceForHealthStore_];

  v13[3] = a5;
  result = sub_1D1584F00(a6, type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.SupplementaryFormatInformation);
  *(a7 + *(v12 + 36)) = v13;
  return result;
}

void QuantityCodableCurrentValueSnidgetViewModelExtractor.DefaultSnidgetFormatter.init(displayType:quantity:unitMode:healthStore:unitPreferenceController:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  *(a6 + 32) = 0;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v9;
  type metadata accessor for SnidgetStringBuilder();
  v10 = swift_allocObject();
  v10[2] = a4;
  v11 = objc_opt_self();
  v12 = a4;
  v10[4] = [v11 sharedInstanceForHealthStore_];

  v10[3] = a5;
  *(a6 + 24) = v10;
}

uint64_t sub_1D15852FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.primaryString.getter(uint64_t a1@<X8>)
{
  type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter(0);
  v3 = *v1;
  v4 = *(v1 + 8);
  v7 = *(v1 + 16);
  v5 = v7;
  sub_1D14A0AB0(v3, v4, &v7, a1);
  v6 = v7;
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.displayableValue.getter()
{
  v1 = v0;
  v2 = *(v0 + *(type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter(0) + 36));
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  if (v5)
  {
    v6 = v1[2];
  }

  else
  {
    v6 = [*(v2 + 24) unitForChartingDisplayType_];
    if (!v6)
    {
      v6 = [v4 _unit];
    }
  }

  v7 = v5;
  v8 = sub_1D14A1764(v3, v4, v6);
  if (v9)
  {

    return 0;
  }

  else
  {
    v11 = *&v8;
    v12 = [v3 presentation];
    v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v14 = [v12 adjustedValueForDaemonValue_];

    [v14 doubleValue];
    v16 = v15;

    return v16;
  }
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.supplementaryString.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D15A2458();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1491C64();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D15A22A8();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D149D54C();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.SupplementaryFormatInformation(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (v1 + *(type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter(0) + 32));
  v20 = *v19;
  if (v20 != 2)
  {
    v46[1] = v5;
    v47 = a1;
    v24 = v19[1];
    v25 = *(v19 + 1);
    v26 = v19[16];
    sub_1D1584E98(v19, v18, type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.SupplementaryFormatInformation);
    v27 = *(v16 + 32);
    *v15 = v25;
    v15[8] = v26;
    v28 = *(v13 + 48);
    v29 = v18;
    v30 = &v18[v27];
    v31 = v27;
    sub_1D1584E98(v30, &v15[v28], sub_1D1491C64);
    if (v20)
    {
      sub_1D1584E98(&v15[v28], v8, sub_1D1491C64);
      v32 = v48;
      v33 = v49;
      v34 = v15;
      if ((*(v48 + 48))(v8, 1, v49) == 1)
      {
        sub_1D1584F00(v15, sub_1D149D54C);
        v35 = sub_1D1491C64;
        v36 = v8;
LABEL_22:
        sub_1D1584F00(v36, v35);
        v44 = 1;
        v38 = v47;
        v40 = v29;
LABEL_32:
        v45 = sub_1D15A23F8();
        (*(*(v45 - 8) + 56))(v38, v44, 1, v45);
        return sub_1D1584F00(&v40[v31], sub_1D1491C64);
      }

      (*(v32 + 32))(v11, v8, v33);
      v37 = [objc_opt_self() hk_mediumMonthDayDateIntervalFormatter];
      v38 = v47;
      v39 = v32;
      v40 = v29;
      if (v37)
      {
        v41 = v37;
        v42 = sub_1D15A2228();
        v43 = [v41 stringFromDateInterval_];

        if (v43)
        {
          sub_1D15A3F38();

          (*(v48 + 8))(v11, v49);
LABEL_31:

          sub_1D15A2448();
          sub_1D15A2408();
          v50 = sub_1D15A3068();
          sub_1D149D7C8();
          sub_1D15A2418();
          v50 = [objc_opt_self() secondaryLabelColor];
          sub_1D149D81C();
          sub_1D15A2418();

          sub_1D1584F00(v34, sub_1D149D54C);
          v44 = 0;
          goto LABEL_32;
        }

        (*(v48 + 8))(v11, v49);
      }

      else
      {
        (*(v39 + 8))(v11, v33);
      }

      sub_1D1584F00(v15, sub_1D149D54C);
      v44 = 1;
      goto LABEL_32;
    }

    if (v24 <= 4)
    {
      if (v24)
      {
        goto LABEL_27;
      }
    }

    else if (v24 > 7)
    {
      if (v24 != 9)
      {
        goto LABEL_21;
      }
    }

    else if (v24 != 6)
    {
LABEL_27:
      v38 = v47;
LABEL_28:
      if (qword_1EE059700 != -1)
      {
        swift_once();
      }

      sub_1D15A2438();

      v40 = v29;
      v34 = v15;
      goto LABEL_31;
    }

    if ((v26 & 1) == 0)
    {
      v38 = v47;
      if (v25 <= 1)
      {
        sub_1D1584F00(v15, sub_1D149D54C);
        v44 = 1;
        v40 = v29;
        goto LABEL_32;
      }

      goto LABEL_28;
    }

LABEL_21:
    v35 = sub_1D149D54C;
    v36 = v15;
    goto LABEL_22;
  }

  v21 = sub_1D15A23F8();
  v22 = *(*(v21 - 8) + 56);

  return v22(a1, 1, 1, v21);
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.hasIndeterminateBaseline.getter()
{
  type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter(0);
  v1 = *v0;
  v2 = *(v0 + 8);
  v6 = *(v0 + 16);
  v3 = v6;
  v4 = sub_1D14A101C(v1, v2, &v6);

  return v4 & 1;
}

void sub_1D1585E70(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v7 = *(v1 + 16);
  v5 = v7;
  sub_1D14A0AB0(v3, v4, &v7, a1);
  v6 = v7;
}

uint64_t sub_1D1585EF4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v6 = *(v0 + 16);
  v3 = v6;
  v4 = sub_1D14A101C(v1, v2, &v6);

  return v4 & 1;
}

void QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.primaryString.getter(void *a1@<X8>)
{
  type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter(0);
  v4 = *v1;
  v3 = *(v1 + 8);
  v6 = [objc_opt_self() countUnit];
  sub_1D14A1FE8(v4, v3, &v6, a1);
  v5 = v6;
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.displayableValue.getter()
{
  type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter(0);
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = objc_opt_self();
  v4 = [v3 countUnit];
  v5 = [v3 countUnit];
  sub_1D14A1764(v2, v1, v5);
  if (v6)
  {

    return 0;
  }

  else
  {
    v8 = sub_1D15A29A8();
    [v8 doubleValue];
    v10 = v9;

    return v10;
  }
}

id QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.preferredUnit.getter()
{
  v0 = [objc_opt_self() countUnit];

  return v0;
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.supplementaryString.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D15A2458();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1491C64();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D15A22A8();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D149D54C();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.SupplementaryFormatInformation(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (v1 + *(type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter(0) + 28));
  v20 = *v19;
  if (v20 != 2)
  {
    v46[1] = v5;
    v47 = a1;
    v24 = v19[1];
    v25 = *(v19 + 1);
    v26 = v19[16];
    sub_1D1584E98(v19, v18, type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.SupplementaryFormatInformation);
    v27 = *(v16 + 32);
    *v15 = v25;
    v15[8] = v26;
    v28 = *(v13 + 48);
    v29 = v18;
    v30 = &v18[v27];
    v31 = v27;
    sub_1D1584E98(v30, &v15[v28], sub_1D1491C64);
    if (v20)
    {
      sub_1D1584E98(&v15[v28], v8, sub_1D1491C64);
      v32 = v48;
      v33 = v49;
      v34 = v15;
      if ((*(v48 + 48))(v8, 1, v49) == 1)
      {
        sub_1D1584F00(v15, sub_1D149D54C);
        v35 = sub_1D1491C64;
        v36 = v8;
LABEL_22:
        sub_1D1584F00(v36, v35);
        v44 = 1;
        v38 = v47;
        v40 = v29;
LABEL_32:
        v45 = sub_1D15A23F8();
        (*(*(v45 - 8) + 56))(v38, v44, 1, v45);
        return sub_1D1584F00(&v40[v31], sub_1D1491C64);
      }

      (*(v32 + 32))(v11, v8, v33);
      v37 = [objc_opt_self() hk_mediumMonthDayDateIntervalFormatter];
      v38 = v47;
      v39 = v32;
      v40 = v29;
      if (v37)
      {
        v41 = v37;
        v42 = sub_1D15A2228();
        v43 = [v41 stringFromDateInterval_];

        if (v43)
        {
          sub_1D15A3F38();

          (*(v48 + 8))(v11, v49);
LABEL_31:

          sub_1D15A2448();
          sub_1D15A2408();
          v50 = sub_1D15A3068();
          sub_1D149D7C8();
          sub_1D15A2418();
          v50 = [objc_opt_self() secondaryLabelColor];
          sub_1D149D81C();
          sub_1D15A2418();

          sub_1D1584F00(v34, sub_1D149D54C);
          v44 = 0;
          goto LABEL_32;
        }

        (*(v48 + 8))(v11, v49);
      }

      else
      {
        (*(v39 + 8))(v11, v33);
      }

      sub_1D1584F00(v15, sub_1D149D54C);
      v44 = 1;
      goto LABEL_32;
    }

    if (v24 <= 4)
    {
      if (v24)
      {
        goto LABEL_27;
      }
    }

    else if (v24 > 7)
    {
      if (v24 != 9)
      {
        goto LABEL_21;
      }
    }

    else if (v24 != 6)
    {
LABEL_27:
      v38 = v47;
LABEL_28:
      if (qword_1EE059700 != -1)
      {
        swift_once();
      }

      sub_1D15A2438();

      v40 = v29;
      v34 = v15;
      goto LABEL_31;
    }

    if ((v26 & 1) == 0)
    {
      v38 = v47;
      if (v25 <= 1)
      {
        sub_1D1584F00(v15, sub_1D149D54C);
        v44 = 1;
        v40 = v29;
        goto LABEL_32;
      }

      goto LABEL_28;
    }

LABEL_21:
    v35 = sub_1D149D54C;
    v36 = v15;
    goto LABEL_22;
  }

  v21 = sub_1D15A23F8();
  v22 = *(*(v21 - 8) + 56);

  return v22(a1, 1, 1, v21);
}

void sub_1D1586B40(void *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v6 = [objc_opt_self() countUnit];
  sub_1D14A1FE8(v4, v3, &v6, a1);
  v5 = v6;
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation.sampleCount.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

id QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.unitMode.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

void QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.unitMode.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
}