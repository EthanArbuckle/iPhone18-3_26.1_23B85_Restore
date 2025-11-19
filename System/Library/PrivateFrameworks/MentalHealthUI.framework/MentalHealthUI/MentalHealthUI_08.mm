uint64_t sub_258A80044(id *a1, id *a2, id *a3, void **a4)
{
  v57 = sub_258B00084();
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v57);
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v50 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    v58 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v59 = &a4[v16];
    if (a3 - a2 >= 8 && a2 > v58)
    {
      v51 = (v8 + 8);
LABEL_27:
      v50 = a1;
      v31 = a1 - 1;
      v32 = a3 - 1;
      v33 = v59;
      v52 = a1 - 1;
      do
      {
        v34 = a4;
        v35 = v32;
        v36 = v32 + 1;
        v37 = *--v33;
        v38 = *v31;
        v39 = v37;
        v54 = v39;
        v40 = v38;
        v53 = v40;
        v41 = [v39 startDate];
        v42 = v55;
        sub_258B00034();

        v43 = [v40 startDate];
        v44 = v56;
        sub_258B00034();

        LOBYTE(v43) = sub_258B00024();
        v45 = *v51;
        v46 = v44;
        v47 = v57;
        (*v51)(v46, v57);
        v45(v42, v47);

        if (v43)
        {
          a4 = v34;
          a3 = v35;
          v48 = v52;
          if (v36 != v50)
          {
            *v35 = *v52;
          }

          if (v59 <= v34 || (a1 = v48, v48 <= v58))
          {
            a1 = v48;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v34;
        if (v36 != v59)
        {
          *v35 = *v33;
        }

        v32 = v35 - 1;
        v59 = v33;
        v31 = v52;
      }

      while (v33 > v34);
      v59 = v33;
      a1 = v50;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v59 = &a4[v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v54 = a3;
      v17 = (v8 + 8);
      while (1)
      {
        v58 = a1;
        v18 = *a4;
        v19 = *a2;
        v20 = v18;
        v21 = [v19 startDate];
        v22 = v55;
        sub_258B00034();

        v23 = [v20 startDate];
        v24 = v56;
        sub_258B00034();

        LOBYTE(v23) = sub_258B00024();
        v25 = *v17;
        v26 = v24;
        v27 = v57;
        (*v17)(v26, v57);
        v25(v22, v27);

        if ((v23 & 1) == 0)
        {
          break;
        }

        v28 = a2;
        v29 = v58;
        v30 = v58 == a2++;
        if (!v30)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v29 + 1;
        if (a4 >= v59 || a2 >= v54)
        {
          goto LABEL_39;
        }
      }

      v28 = a4;
      v29 = v58;
      v30 = v58 == a4++;
      if (v30)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v29 = *v28;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v59 - a4 + (v59 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v59 - a4));
  }

  return 1;
}

uint64_t sub_258A804E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_258B029C4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  sub_258A8239C();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 56);
  sub_258A811C4(a1, v16, sub_258A82400);
  sub_258A811C4(a2, &v16[v17], sub_258A82400);
  v18 = v5[6];
  LODWORD(a1) = v18(v16, 1, v4);
  v19 = v18(&v16[v17], 1, v4);
  v20 = v19;
  if (a1 == 1)
  {
    if (v19 == 1)
    {
      return 0;
    }
  }

  else
  {
    v18 = v5[4];
    v18(v11, v16, v4);
    if (v20 != 1)
    {
LABEL_11:
      v18(v9, &v16[v17], v4);
      sub_258A827E8(&unk_27F9706C0, MEMORY[0x277CCB6A8]);
      sub_258B030E4();
      v27 = v5[1];
      v27(v9, v4);
      v27(v11, v4);
      return v29;
    }

    sub_258A810D8();
    v23 = *(v22 + 36);
    sub_258A827E8(&unk_27F9706C0, MEMORY[0x277CCB6A8]);
    sub_258B030E4();
    v24 = v5[1];
    ++v5;
    v24(v11, v4);
    result = v29 + 1;
    if (!__OFADD__(v29, 1))
    {
      return result;
    }

    __break(1u);
  }

  (v5[4])(v11, &v16[v17], v4);
  sub_258A810D8();
  v9 = *(v25 + 36);
  sub_258A827E8(&unk_27F9706C0, MEMORY[0x277CCB6A8]);
  sub_258B030E4();
  v26 = v5[1];
  ++v5;
  v26(v11, v4);
  result = v29 - 1;
  if (__OFSUB__(v29, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t _s14MentalHealthUI19StateOfMindTimelineO5ModelC05buildgH03day11healthStoreAE10Foundation4DateV_So08HKHealthL0CtFZ_0(uint64_t a1, void *a2)
{
  v65 = a2;
  v66 = _s9ViewModelOMa();
  v3 = *(*(v66 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v66);
  v67 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v64 = &v55 - v6;
  sub_258A82704(0, &qword_27F970200, MEMORY[0x277D85048], MEMORY[0x277CBCED0]);
  v61 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v55 - v10;
  v12 = sub_258B00084();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v62 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v55 - v17;
  v56 = &v55 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - v19;
  v21 = sub_258B00224();
  v22 = *(v21 - 8);
  v68 = v21;
  v69 = v22;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v59 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v57 = &v55 - v26;
  v27 = [objc_opt_self() hk_gregorianCalendarWithLocalTimeZone];
  sub_258B001A4();

  v28 = v13;
  v29 = *(v13 + 16);
  v30 = a1;
  v31 = v12;
  v29(v20, v30, v12);
  v29(v18, v20, v12);
  v32 = *(v28 + 80);
  v63 = v28;
  v33 = (v32 + 16) & ~v32;
  v60 = swift_allocObject();
  v34 = *(v28 + 32);
  v35 = v31;
  v58 = v31;
  v34(v60 + v33, v20, v31);
  v36 = type metadata accessor for StateOfMindTimeline.Model();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  v39 = swift_allocObject();
  *(v39 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_observerQuery) = 0;
  *(v39 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeChangeObserver) = 0;
  v40 = OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model__availableWidth;
  v70 = 0;
  sub_258B00524();
  (*(v8 + 32))(v39 + v40, v11, v61);
  v41 = v65;
  *(v39 + 16) = v65;
  sub_2589D3788();
  v43 = v64;
  v44 = &v64[*(v42 + 48)];
  v45 = v56;
  v29(v62, v56, v35);
  v46 = *(v69 + 16);
  v47 = v57;
  v46(v59, v57, v68);
  v48 = v41;
  sub_258B02964();
  *v44 = sub_258A7B8D4(v45);
  v44[1] = v49;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_258A811C4(v43, v67, _s9ViewModelOMa);
  sub_258B00524();
  sub_258A812F8(v43, _s9ViewModelOMa);
  swift_endAccess();
  v50 = v68;
  v46((v39 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_gregorianCalendar), v47, v68);
  *(v39 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_timeRange) = 0;
  v51 = (v39 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_endDate);
  v52 = v60;
  *v51 = sub_258A82A68;
  v51[1] = v52;
  v53 = (v39 + OBJC_IVAR____TtCO14MentalHealthUI19StateOfMindTimeline5Model_now);
  *v53 = sub_258A7A660;
  v53[1] = 0;

  sub_258A7BF9C();
  sub_258A7C150();

  (*(v63 + 8))(v45, v58);
  (*(v69 + 8))(v47, v50);
  return v39;
}

unint64_t sub_258A80E38()
{
  result = qword_27F970250;
  if (!qword_27F970250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970250);
  }

  return result;
}

uint64_t type metadata accessor for StateOfMindTimeline.Model()
{
  result = qword_27F970258;
  if (!qword_27F970258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A80EF0()
{
  v0 = sub_258B00224();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_258A81294(319, &qword_27F970248, _s9ViewModelOMa, MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_258A82704(319, &qword_27F970200, MEMORY[0x277D85048], MEMORY[0x277CBCED0]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_258A810D8()
{
  if (!qword_27F970268)
  {
    sub_258B029C4();
    sub_258A827E8(&qword_27F971480, MEMORY[0x277CCB6A8]);
    v0 = sub_258B02A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970268);
    }
  }
}

uint64_t objectdestroy_16Tm()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_258A811C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A8122C()
{
  sub_258A810D8();
  v2 = *(v1 - 8);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return sub_258A7DA14(v3, v4, v5, v6);
}

void sub_258A81294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A812F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A81358(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_258A810D8();
    v10 = v9;
    v11 = sub_258A82514(a3);
    v12 = a5(a1, v10, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

unint64_t sub_258A813DC()
{
  result = qword_27F970290;
  if (!qword_27F970290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970290);
  }

  return result;
}

uint64_t sub_258A81468(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v117 = a3;
  v116 = a2;
  v4 = sub_258B029C4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v110 = &v104[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v119 = &v104[-v9];
  sub_258A8239C();
  v134 = v10;
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v123 = &v104[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v15 = &v104[-v14];
  sub_258A824A8();
  v115 = v16;
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v114 = &v104[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v113 = &v104[-v20];
  v21 = type metadata accessor for StateOfMindTimeline.DaySummary();
  v112 = *(v21 - 8);
  v22 = *(v112 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v132 = &v104[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258A81358(0, &qword_27F9702B0, &qword_27F9702B8, MEMORY[0x277D83678], MEMORY[0x277D843F0]);
  v124 = v24;
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v131 = &v104[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v142 = &v104[-v28];
  sub_258A82400();
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v111 = &v104[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x28223BE20](v31);
  v118 = &v104[-v34];
  v35 = MEMORY[0x28223BE20](v33);
  v120 = &v104[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v133 = &v104[-v38];
  v39 = MEMORY[0x28223BE20](v37);
  v105 = &v104[-v40];
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v104[-v42];
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v104[-v45];
  MEMORY[0x28223BE20](v44);
  v48 = &v104[-v47];
  v49 = v5[2];
  v122 = v5 + 2;
  v121 = v49;
  v49(&v104[-v47], a1, v4);
  v141 = v5;
  v50 = v5[7];
  (v50)(v48, 0, 1, v4);
  v140 = v5 + 7;
  v51 = v50;
  (v50)(v46, 1, 1, v4);
  v52 = sub_258A804E0(v48, v46);
  sub_258A812F8(v46, sub_258A82400);
  v53 = v48;
  v54 = v52;
  sub_258A812F8(v53, sub_258A82400);
  result = MEMORY[0x277D84F90];
  if (v52)
  {
    v144 = MEMORY[0x277D84F90];
    sub_258AA92EC(0, v52 & ~(v52 >> 63), 0);
    v135 = v144;
    v56 = v142;
    v57 = v121;
    v121(v142, a1, v4);
    v109 = v4;
    v58 = v4;
    v139 = v51;
    v59 = v140;
    result = (v51)(v56, 0, 1, v58);
    v107 = *(v124 + 36);
    *&v56[v107] = 0;
    if ((v54 & 0x8000000000000000) == 0)
    {
      v60 = v56;
      v61 = v57;
      v62 = v59;
      v106 = v54;
      v63 = 0;
      v64 = 0;
      v65 = (v141 + 48);
      v138 = (v141 + 32);
      v136 = (v141 + 48);
      v137 = v141 + 8;
      v66 = v123;
      v125 = v15;
      v126 = v43;
      v108 = a1;
      while (!__OFADD__(v63, 1))
      {
        v129 = v63;
        v130 = v64;
        v128 = v63 + 1;
        v67 = v60;
        v51 = v109;
        v61(v43, a1, v109);
        (v139)(v43, 0, 1, v51);
        v68 = *(v134 + 48);
        sub_258A811C4(v67, v15, sub_258A82400);
        sub_258A811C4(v43, &v15[v68], sub_258A82400);
        v69 = *v65;
        v70 = (*v65)(v15, 1, v51);
        v141 = v69;
        if (v70 == 1)
        {
          sub_258A812F8(v43, sub_258A82400);
          sub_258A812F8(v15, sub_258A8239C);
          v71 = v120;
        }

        else
        {
          v62 = v105;
          sub_258A811C4(v15, v105, sub_258A82400);
          v72 = (v69)(&v15[v68], 1, v51);
          v71 = v120;
          if (v72 == 1)
          {
            goto LABEL_28;
          }

          v73 = &v15[v68];
          v74 = v119;
          (*v138)(v119, v73, v51);
          sub_258A827E8(&qword_27F971480, MEMORY[0x277CCB6A8]);
          v75 = v62;
          v76 = sub_258B02A54();
          v43 = v137;
          v77 = *v137;
          (*v137)(v74, v51);
          sub_258A812F8(v126, sub_258A82400);
          v77(v75, v51);
          result = sub_258A812F8(v125, sub_258A82400);
          if (v76)
          {
            goto LABEL_29;
          }
        }

        v78 = v133;
        (v139)(v133, 1, 1, v51);
        v79 = *(v134 + 48);
        v62 = sub_258A82400;
        sub_258A811C4(v142, v66, sub_258A82400);
        sub_258A811C4(v78, v66 + v79, sub_258A82400);
        v15 = v141;
        if ((v141)(v66, 1, v51) == 1)
        {
          goto LABEL_25;
        }

        sub_258A811C4(v66, v71, sub_258A82400);
        if ((v15)(v66 + v79, 1, v51) == 1)
        {
          sub_258A812F8(v133, sub_258A82400);
          v80 = *v137;
          (*v137)(v71, v51);
          sub_258A812F8(v66, sub_258A82400);
        }

        else
        {
          v81 = v119;
          (*v138)(v119, (v66 + v79), v51);
          sub_258A827E8(&qword_27F971480, MEMORY[0x277CCB6A8]);
          v62 = sub_258B02A54();
          v80 = *v137;
          (*v137)(v81, v51);
          sub_258A812F8(v133, sub_258A82400);
          v80(v71, v51);
          v15 = v141;
          sub_258A812F8(v66, sub_258A82400);
          if ((v62 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        v127 = v80;
        v82 = v118;
        sub_258A811C4(v142, v118, sub_258A82400);
        result = (v15)(v82, 1, v51);
        if (result == 1)
        {
          goto LABEL_31;
        }

        v83 = v51;
        v84 = v115;
        v85 = *(v115 + 48);
        v86 = *v138;
        v51 = v113;
        (*v138)(&v113[v85], v82, v83);
        v87 = v114;
        v88 = v130;
        *v114 = v130;
        v89 = *(v84 + 48);
        v86(v87 + v89, &v51[v85], v83);
        v116(v88, v87 + v89);
        sub_258A812F8(v87, sub_258A824A8);
        v90 = v135;
        v144 = v135;
        v92 = *(v135 + 16);
        v91 = *(v135 + 24);
        v93 = v83;
        if (v92 >= v91 >> 1)
        {
          sub_258AA92EC(v91 > 1, v92 + 1, 1);
          v90 = v144;
        }

        *(v90 + 16) = v92 + 1;
        v94 = (*(v112 + 80) + 32) & ~*(v112 + 80);
        v135 = v90;
        sub_258A825B0(v132, v90 + v94 + *(v112 + 72) * v92, type metadata accessor for StateOfMindTimeline.DaySummary);
        v95 = v131;
        sub_258A82618(v142, v131);
        v96 = v95;
        v97 = v111;
        sub_258A811C4(v96, v111, sub_258A82400);
        result = (v141)(v97, 1, v83);
        if (result == 1)
        {
          goto LABEL_32;
        }

        v98 = v110;
        v86(v110, v97, v83);
        sub_258A810D8();
        v100 = *(v99 + 36);
        sub_258A827E8(&qword_27F9702C0, MEMORY[0x277CCB6A8]);
        a1 = v108;
        v101 = sub_258B02AA4();
        v66 = v123;
        v43 = v126;
        if (v101)
        {
          v127(v98, v93);
          v102 = 1;
          v15 = v125;
          v103 = v142;
        }

        else
        {
          v143 = 1;
          sub_258A827E8(&unk_27F9706C0, MEMORY[0x277CCB6A8]);
          v103 = v142;
          sub_258B030D4();
          v127(v98, v93);
          v102 = 0;
          v15 = v125;
        }

        (v139)(v103, v102, 1, v93);
        v62 = *&v131[*(v124 + 36)];
        sub_258A82338(v131, &qword_27F9702B0, &qword_27F9702B8, MEMORY[0x277D83678], MEMORY[0x277D843F0]);
        v64 = v62 + 1;
        v65 = v136;
        if (__OFADD__(v62, 1))
        {
          goto LABEL_27;
        }

        v60 = v103;
        *&v103[v107] = v64;
        v63 = v129 + 1;
        v61 = v121;
        v62 = v140;
        if (v128 == v106)
        {
          sub_258A82338(v103, &qword_27F9702B0, &qword_27F9702B8, MEMORY[0x277D83678], MEMORY[0x277D843F0]);
          return v135;
        }
      }

      __break(1u);
LABEL_25:
      sub_258A812F8(v133, sub_258A82400);
      sub_258A812F8(v66, sub_258A8239C);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      sub_258A812F8(v43, sub_258A82400);
      (*v137)(v62, v51);
      result = sub_258A812F8(v15, sub_258A82400);
LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  return result;
}

uint64_t sub_258A82338(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_258A81358(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_258A8239C()
{
  if (!qword_27F970298)
  {
    sub_258A82400();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F970298);
    }
  }
}

void sub_258A82400()
{
  if (!qword_27F9702A0)
  {
    sub_258B029C4();
    sub_258A827E8(&unk_27F9706C0, MEMORY[0x277CCB6A8]);
    sub_258A813DC();
    v0 = sub_258B02A94();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9702A0);
    }
  }
}

void sub_258A824A8()
{
  if (!qword_27F9702A8)
  {
    sub_258B029C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F9702A8);
    }
  }
}

uint64_t sub_258A82514(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_258A810D8();
    sub_258A827E8(&unk_27F9706C0, MEMORY[0x277CCB6A8]);
    sub_258A813DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258A825B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A82618(uint64_t a1, uint64_t a2)
{
  sub_258A81358(0, &qword_27F9702B0, &qword_27F9702B8, MEMORY[0x277D83678], MEMORY[0x277D843F0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_258A826B4(id *a1)
{
  v2 = *(v1 + 16);
  v3 = [*a1 dayIndex];
  return v3 == sub_258B02984();
}

void sub_258A82704(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258A82754(uint64_t a1, uint64_t a2)
{
  sub_258A81294(0, &qword_27F96D908, _s5EntryVMa, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A827E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258A82830()
{
  if (!qword_27F971560)
  {
    sub_258B029C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F971560);
    }
  }
}

void sub_258A828E0()
{
  if (!qword_27F9702D8)
  {
    sub_258A82948(255, &qword_27F9702E0);
    v0 = sub_258B03424();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9702D8);
    }
  }
}

uint64_t sub_258A82948(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_258A829A4()
{
  result = qword_27F9702E8;
  if (!qword_27F9702E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9702E8);
  }

  return result;
}

uint64_t sub_258A829F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_258A81294(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_258A82A68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00084();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

double StateOfMindVisualization.ValenceImage.init(valence:imageScale:)@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = *a1;
  StateOfMindVisualization.ValenceImageProvider.init(valence:imageScale:)(&v6, &v7, a3);
  result = *&v7;
  v5 = v8;
  *a2 = v7;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_258A82B60(uint64_t a1, double a2)
{
  v4 = sub_258B006A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277CDF3C0])
  {
    swift_getKeyPath();

    v9 = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    v10 = sub_258A848BC;
  }

  else
  {
    swift_getKeyPath();

    GenericRGB = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
    v12 = *(v5 + 8);
    v9 = GenericRGB;
    v12(v8, v4);
    v10 = sub_258A84534;
  }

  v13 = v10;
  v14 = sub_258A84538(fmax(fmin(a2, 1.0), -1.0));

  (v13)(v14, v9, 0.6);

  v15 = sub_258B01F74();

  return v15;
}

CGColorRef sub_258A82D78()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (*v0)
    {
      if (v1 == 1)
      {
        v2 = 0.666666667;
        v3 = 0.709803922;
      }

      else
      {
        v2 = 0.68627451;
        v3 = 0.752941176;
      }

      v7 = 0x3FEC1C1C1C1C1C1CLL;
    }

    else
    {
      v2 = 0.623529412;
      v3 = 0.588235294;
      v7 = 0x3FE7777777777777;
    }

    goto LABEL_16;
  }

  if (*v0 <= 4u)
  {
    if (v1 == 3)
    {
      v2 = 0.741176471;
      v3 = 0.82745098;
      v4 = 0.839215686;
      v5 = 1.0;
      return CGColorCreateGenericRGB(v2, v3, v4, v5);
    }

    v2 = 0.682352941;
    v3 = 0.788235294;
    v7 = 0x3FE0101010101010;
LABEL_16:
    v4 = *&v7;
    v5 = 1.0;
    return CGColorCreateGenericRGB(v2, v3, v4, v5);
  }

  if (v1 == 5)
  {
    return CGColorCreateGenericRGB(0.956862745, 0.819607843, 0.619607843, 1.0);
  }

  else
  {
    return CGColorCreateGenericRGB(0.996078431, 0.737254902, 0.392156863, 1.0);
  }
}

CGColorRef sub_258A82E80()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (*v0)
    {
      if (v1 == 1)
      {
        return CGColorCreateGenericRGB(0.874509804, 0.898039216, 1.0, 1.0);
      }

      else
      {
        return CGColorCreateGenericRGB(0.807843137, 0.847058824, 0.905882353, 1.0);
      }
    }

    else
    {
      return CGColorCreateGenericRGB(0.815686275, 0.776470588, 0.941176471, 1.0);
    }
  }

  else if (*v0 > 4u)
  {
    if (v1 == 5)
    {
      return CGColorCreateGenericRGB(0.964705882, 0.831372549, 0.635294118, 1.0);
    }

    else
    {
      return CGColorCreateGenericRGB(1.0, 0.917647059, 0.882352941, 1.0);
    }
  }

  else if (v1 == 3)
  {
    return CGColorCreateGenericRGB(0.858823529, 0.882352941, 0.88627451, 1.0);
  }

  else
  {
    return CGColorCreateGenericRGB(0.807843137, 0.901960784, 0.643137255, 1.0);
  }
}

uint64_t sub_258A82FA8()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (*v0)
    {
      if (v1 == 1)
      {
        v2 = 0.666666667;
        v3 = 0.709803922;
      }

      else
      {
        v2 = 0.68627451;
        v3 = 0.752941176;
      }

      v4 = 0.878431373;
    }

    else
    {
      v2 = 0.623529412;
      v3 = 0.588235294;
      v4 = 0.733333333;
    }
  }

  else if (*v0 > 4u)
  {
    if (v1 == 5)
    {
      v2 = 0.956862745;
      v3 = 0.819607843;
      v4 = 0.619607843;
    }

    else
    {
      v2 = 0.996078431;
      v3 = 0.737254902;
      v4 = 0.392156863;
    }
  }

  else if (v1 == 3)
  {
    v2 = 0.741176471;
    v3 = 0.82745098;
    v4 = 0.839215686;
  }

  else
  {
    v2 = 0.682352941;
    v3 = 0.788235294;
    v4 = 0.501960784;
  }

  GenericRGB = CGColorCreateGenericRGB(v2, v3, v4, 1.0);
  if (CGColorGetNumberOfComponents(GenericRGB) != 4)
  {
    return GenericRGB;
  }

  result = sub_258B02E04();
  if (!result)
  {
    return GenericRGB;
  }

  v7 = *(result + 16);
  if (v7)
  {
    if (v7 != 1)
    {
      if (v7 >= 3)
      {
        v8 = *(result + 32) * 0.5;
        v9 = *(result + 40) * 0.5;
        v10 = *(result + 48);

        v11 = CGColorCreateGenericRGB(v8, v9, v10 * 0.5, 1.0);

        return v11;
      }

      goto LABEL_24;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

CGColorRef sub_258A83158()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (*v0)
    {
      if (v1 == 1)
      {
        return CGColorCreateGenericRGB(0.235294118, 0.298039216, 0.760784314, 1.0);
      }

      else
      {
        return CGColorCreateGenericRGB(0.133333333, 0.392156863, 0.749019608, 1.0);
      }
    }

    else
    {
      return CGColorCreateGenericRGB(0.207843137, 0.121568627, 0.462745098, 1.0);
    }
  }

  else if (*v0 > 4u)
  {
    if (v1 == 5)
    {
      return CGColorCreateGenericRGB(1.0, 0.603921569, 0.0117647059, 1.0);
    }

    else
    {
      return CGColorCreateGenericRGB(0.984313725, 0.454901961, 0.262745098, 1.0);
    }
  }

  else if (v1 == 3)
  {
    return CGColorCreateGenericRGB(0.42745098, 0.682352941, 0.756862745, 1.0);
  }

  else
  {
    return CGColorCreateGenericRGB(0.431372549, 0.694117647, 0.0, 1.0);
  }
}

CGColorRef sub_258A83278()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (*v0)
    {
      if (v1 == 1)
      {
        return CGColorCreateGenericRGB(0.556862745, 0.674509804, 0.996078431, 1.0);
      }

      else
      {
        return CGColorCreateGenericRGB(0.635294118, 0.811764706, 1.0, 1.0);
      }
    }

    else
    {
      return CGColorCreateGenericRGB(0.611764706, 0.423529412, 0.764705882, 1.0);
    }
  }

  else if (*v0 > 4u)
  {
    if (v1 == 5)
    {
      return CGColorCreateGenericRGB(0.996078431, 0.823529412, 0.392156863, 1.0);
    }

    else
    {
      return CGColorCreateGenericRGB(0.988235294, 0.745098039, 0.474509804, 1.0);
    }
  }

  else if (v1 == 3)
  {
    return CGColorCreateGenericRGB(0.796078431, 0.878431373, 0.909803922, 1.0);
  }

  else
  {
    return CGColorCreateGenericRGB(0.71372549, 0.858823529, 0.274509804, 1.0);
  }
}

char *sub_258A8338C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = sub_258A83E88(a1, a2, a3);
  v31 = MEMORY[0x277D84F90];
  result = sub_258AA91CC(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  result = v31;
  v10 = a4 + 0x4000000000000000;
  if (!v8)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = (2 * a4);
    v19 = v10 >> 63;
LABEL_25:
    v20 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v21 = v7 <= a2;
      if (a3 > 0)
      {
        v21 = v7 >= a2;
      }

      if (v21)
      {
        if ((v7 != a2) | v11 & 1 || !v13 && v12 == 0x8000000000000000)
        {
          return result;
        }

        v11 = 1;
        v22 = v7;
      }

      else
      {
        v23 = __OFADD__(v7, a3);
        v22 = v23 ? v20 : v7 + a3;
        v12 = v23 ? 0x8000000000000000 : 0;
        v13 = !v23;
      }

      if (v19)
      {
        break;
      }

      v33 = result;
      v25 = *(result + 2);
      v24 = *(result + 3);
      if (v25 >= v24 >> 1)
      {
        v30 = v12;
        v28 = v13;
        v26 = v20;
        sub_258AA91CC((v24 > 1), v25 + 1, 1);
        v20 = v26;
        v13 = v28;
        v12 = v30;
        result = v33;
      }

      *(result + 2) = v25 + 1;
      *&result[8 * v25 + 32] = v7 / v14;
      v7 = v22;
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = (2 * a4);
    do
    {
      v15 = v7 <= a2;
      if (a3 > 0)
      {
        v15 = v7 >= a2;
      }

      if (v15)
      {
        if (v11 & 1 | (v7 != a2))
        {
          goto LABEL_48;
        }

        if (!v13 && v12 == 0x8000000000000000)
        {
          goto LABEL_49;
        }

        v11 = 1;
        v16 = a2;
      }

      else
      {
        v13 = !__OFADD__(v7, a3);
        if (__OFADD__(v7, a3))
        {
          v12 = 0x8000000000000000;
        }

        else
        {
          v12 = 0;
        }

        if (__OFADD__(v7, a3))
        {
          v16 = ((v7 + a3) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v16 = v7 + a3;
        }
      }

      v32 = result;
      v18 = *(result + 2);
      v17 = *(result + 3);
      if (v18 >= v17 >> 1)
      {
        v29 = v12;
        v27 = v13;
        sub_258AA91CC((v17 > 1), v18 + 1, 1);
        v13 = v27;
        v12 = v29;
        result = v32;
      }

      *(result + 2) = v18 + 1;
      *&result[8 * v18 + 32] = v7 / v14;
      v7 = v16;
      --v8;
    }

    while (v8);
    LOBYTE(v19) = 0;
    v7 = v16;
    goto LABEL_25;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_258A83694()
{
  if (*v0)
  {
    v31 = MEMORY[0x277D84F90];
    v1 = &unk_2869D4B68;
    v2 = 7;
    do
    {
      v26 = v2;
      v3 = *(v1 - 1);
      v4 = *v1;
      v30 = MEMORY[0x277D84F90];
      sub_258B003E4();
      sub_258AA91EC(0, 3, 0);
      v5 = v30;
      v27 = v3;
      sub_258B003E4();
      v6 = sub_258B03414();
      MEMORY[0x259C931B0](v6);

      v7 = v3;
      v9 = *(v30 + 16);
      v8 = *(v30 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_258AA91EC((v8 > 1), v9 + 1, 1);
        v5 = v30;
      }

      *(v5 + 16) = v9 + 1;
      v10 = v5 + 16 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = v4;
      sub_258B003E4();
      v11 = sub_258B03414();
      MEMORY[0x259C931B0](v11);

      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_258AA91EC((v12 > 1), v13 + 1, 1);
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v27;
      *(v14 + 40) = v4;
      sub_258B003E4();
      v15 = sub_258B03414();
      MEMORY[0x259C931B0](v15);

      v17 = *(v5 + 16);
      v16 = *(v5 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_258AA91EC((v16 > 1), v17 + 1, 1);
      }

      *(v5 + 16) = v17 + 1;
      v18 = v5 + 16 * v17;
      *(v18 + 32) = v27;
      *(v18 + 40) = v4;

      sub_2589FC8C8(v5);
      v1 += 2;
      --v2;
    }

    while (v26 != 1);
    return v31;
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
    v19 = 7;
    sub_258AA91EC(0, 7, 0);
    v20 = &unk_2869D4B68;
    v24 = v32;
    do
    {
      v28 = *(v20 - 1);
      v29 = *v20;
      swift_bridgeObjectRetain_n();
      MEMORY[0x259C931B0](50, 0xE100000000000000);

      v22 = *(v32 + 16);
      v21 = *(v32 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_258AA91EC((v21 > 1), v22 + 1, 1);
      }

      *(v32 + 16) = v22 + 1;
      v23 = v32 + 16 * v22;
      *(v23 + 32) = v28;
      *(v23 + 40) = v29;
      v20 += 2;
      --v19;
    }

    while (v19);
  }

  return v24;
}

uint64_t StateOfMindVisualization.ValenceImageProvider.ImageGranularity.hashValue.getter()
{
  v1 = *v0;
  sub_258B03514();
  MEMORY[0x259C93B20](v1);
  return sub_258B03554();
}

uint64_t StateOfMindVisualization.ValenceImageProvider.init(valence:imageScale:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v4 = *a1;
  v5 = sub_258A83F18(21, a3);
  v6 = sub_258B03084();
  v8 = v7;
  result = sub_258A83694();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v5 >= *(result + 16))
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v10 = result + 16 * v5;
  v12 = *(v10 + 32);
  v11 = *(v10 + 40);
  sub_258B003E4();

  v13 = 0xE300000000000000;
  v14 = 0xE400000000000000;
  v15 = 808465247;
  if (v4 != 7)
  {
    v15 = 3160415;
    v14 = 0xE300000000000000;
  }

  v16 = 0xE400000000000000;
  v17 = 808465247;
  if ((v4 - 4) < 2)
  {
    v17 = 3160415;
    v16 = 0xE300000000000000;
  }

  if (v4 <= 6)
  {
    v15 = v17;
    v14 = v16;
  }

  v18 = 0xE400000000000000;
  v19 = 808465247;
  if (v4 == 2)
  {
    v19 = 3160415;
    v18 = 0xE300000000000000;
  }

  v20 = 808465247;
  if (v4)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v20 = 3160415;
  }

  if (v4 > 1)
  {
    v13 = v18;
  }

  else
  {
    v19 = v20;
  }

  if (v4 <= 3)
  {
    v21 = v19;
  }

  else
  {
    v21 = v15;
  }

  if (v4 <= 3)
  {
    v22 = v13;
  }

  else
  {
    v22 = v14;
  }

  if (v8)
  {
    v6 = 4;
  }

  MEMORY[0x259C931B0](v21, v22);

  *a2 = v12;
  a2[1] = v11;
  a2[2] = v6;
  return result;
}

void StateOfMindVisualization.ValenceImageProvider.uiImage.getter()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for MentalHealthUIRepresentative();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_258B02AD4();
  v6 = [objc_opt_self() imageNamed:v5 inBundle:v4];

  if (!v6)
  {
    __break(1u);
  }
}

uint64_t StateOfMindVisualization.ValenceImage.body.getter()
{
  v1 = sub_258B02094();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  type metadata accessor for MentalHealthUIRepresentative();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  sub_258B003E4();
  v11 = [v10 bundleForClass_];
  sub_258B020D4();
  (*(v2 + 104))(v5, *MEMORY[0x277CE0FE0], v1);
  v12 = sub_258B020C4();

  (*(v2 + 8))(v5, v1);
  v22[3] = v12;
  v22[4] = 0x3FF0000000000000;
  v23 = 0;
  v13 = HKUILocalizedStringForValenceClassification();
  v14 = sub_258B02B14();
  v16 = v15;

  v22[1] = v14;
  v22[2] = v16;
  sub_2589BFF58();
  v17 = sub_258B01B44();
  v19 = v18;
  LOBYTE(v1) = v20;
  sub_258A84020();
  sub_2589C0238();
  sub_258B01D24();
  sub_2589BFFAC(v17, v19, v1 & 1);
}

uint64_t sub_258A83E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v9 = a1 <= a2;
    if (a3 > 0)
    {
      v9 = a1 >= a2;
    }

    if (v9)
    {
      if ((a1 != a2) | v5 & 1 || !(v7 & 1 | (v6 != 0x8000000000000000)))
      {
        return result;
      }

      v5 = 1;
    }

    else
    {
      v8 = __OFADD__(a1, a3);
      a1 += a3;
      if (v8)
      {
        a1 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        v6 = 0x8000000000000000;
      }

      else
      {
        v6 = 0;
      }

      v7 = !v8;
    }

    v8 = __OFADD__(result++, 1);
  }

  while (!v8);
  __break(1u);
  return result;
}

uint64_t sub_258A83F18(uint64_t result, double a2)
{
  v2 = 1.0;
  v3 = (a2 + 1.0) * 0.5;
  if (v3 >= 1.0)
  {
    if (result <= 1)
    {
      return 0;
    }
  }

  else
  {
    if (v3 < 0.0)
    {
      v2 = 0.0;
    }

    else
    {
      v2 = v3;
    }

    if (result < 2)
    {
      return 0;
    }
  }

  if (result + 0x4000000000000000 >= 0)
  {
    v5 = sub_258A8338C(1, 2 * result - 1, 2, result);
    v6 = *(v5 + 2);
    if (v6)
    {
      v7 = 0;
      v4 = -1;
      v8 = INFINITY;
      do
      {
        v9 = vabdd_f64(*&v5[8 * v7 + 32], v2);
        if (v9 < v8)
        {
          v4 = v7;
        }

        v10 = v7 + 1;
        if (v9 < v8)
        {
          v11 = *&v5[8 * v7 + 32];
          v8 = v9;
        }

        ++v7;
      }

      while (v6 != v10);
    }

    else
    {
      v4 = -1;
    }

    return v4;
  }

  __break(1u);
  return result;
}

void sub_258A84020()
{
  if (!qword_27F96C858)
  {
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C858);
    }
  }
}

unint64_t sub_258A8407C()
{
  result = qword_27F9702F0;
  if (!qword_27F9702F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9702F0);
  }

  return result;
}

void sub_258A84118()
{
  if (!qword_27F970300)
  {
    v0 = sub_258B02CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970300);
    }
  }
}

unint64_t sub_258A8416C()
{
  result = qword_27F970308;
  if (!qword_27F970308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970308);
  }

  return result;
}

unint64_t sub_258A841C4()
{
  result = qword_27F970310;
  if (!qword_27F970310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970310);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Symbol(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Symbol(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_258A843D4()
{
  result = qword_27F970318;
  if (!qword_27F970318)
  {
    sub_258A84484();
    sub_2589C0238();
    sub_258A844EC(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970318);
  }

  return result;
}

void sub_258A84484()
{
  if (!qword_27F970320)
  {
    sub_258A84020();
    sub_258B017D4();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970320);
    }
  }
}

uint64_t sub_258A844EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258A84538(double a1)
{
  v1 = (a1 + 1.0) * 0.5;
  if (v1 >= 0.0 && v1 < 0.166666667)
  {
    v11 = 0;
    v3 = 0.0;
    v8 = 1u;
  }

  else
  {
    v3 = 0.166666667;
    if (v1 >= 0.166666667 && v1 < 0.333333333)
    {
      v8 = 2u;
      v11 = 1u;
    }

    else
    {
      v3 = 0.5;
      if (v1 >= 0.333333333 && v1 < 0.5)
      {
        v8 = 3u;
        v11 = 2u;
        v3 = 0.333333333;
      }

      else if (v1 >= 0.5 && v1 < 0.666666667)
      {
        v8 = 4u;
        v11 = 3u;
      }

      else
      {
        v3 = 0.666666667;
        if (v1 >= 0.666666667 && v1 < 0.833333333)
        {
          v8 = 5u;
          v11 = 4u;
        }

        else
        {
          v3 = 0.833333333;
          v8 = 6u;
          if (v1 < 0.833333333 || v1 >= 1.0)
          {
            swift_getAtKeyPath();
            return v36;
          }

          v11 = 5u;
        }
      }
    }
  }

  v12 = (v1 - v3) * 6.0;
  v35 = byte_2869D4BF0[v11];
  swift_getAtKeyPath();
  v34 = byte_2869D4BF0[v8];
  swift_getAtKeyPath();
  v13 = qword_258B32360[byte_2869D4BF0[v11]];
  v14 = byte_2869D4BF0[v8];
  v15 = v12 >= 0.0;
  if (v12 > 1.0)
  {
    v15 = 0;
  }

  if (byte_2869D4BF0[v8] <= 2u)
  {
    if (!byte_2869D4BF0[v8])
    {
      if (v15)
      {
        goto LABEL_49;
      }

      goto LABEL_61;
    }

    goto LABEL_42;
  }

  if (byte_2869D4BF0[v8] > 4u)
  {
    if (v14 != 5)
    {
      if (!v15)
      {
        goto LABEL_61;
      }

      goto LABEL_49;
    }

LABEL_42:
    if (!v15)
    {
      goto LABEL_61;
    }

    goto LABEL_49;
  }

  if (v14 == 3)
  {
    if (v15)
    {
      goto LABEL_49;
    }

LABEL_61:
    v30 = 0.0;
    v31 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
    goto LABEL_62;
  }

  if (!v15)
  {
    goto LABEL_61;
  }

LABEL_49:
  if (CGColorGetNumberOfComponents(v36) != 4)
  {
    goto LABEL_61;
  }

  if (CGColorGetNumberOfComponents(v33) != 4)
  {
    goto LABEL_61;
  }

  v16 = sub_258B02E04();
  if (!v16)
  {
    goto LABEL_61;
  }

  v17 = v16;
  result = sub_258B02E04();
  if (!result)
  {

    goto LABEL_61;
  }

  v19 = *(v17 + 16);
  if (!v19)
  {
    __break(1u);
    goto LABEL_65;
  }

  v20 = result;
  v21 = *(result + 16);
  if (!v21)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v19 == 1)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v21 == 1)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v19 < 3)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v22 = *(v17 + 32);
  v23 = *(v17 + 40);
  v25 = *(result + 32);
  v24 = *(result + 40);
  v32 = *(v17 + 48);

  if (*(v20 + 16) >= 3uLL)
  {
    v26 = (1.0 - v12) * v22 + v12 * v25;
    v27 = *(v20 + 48);

    v28 = (1.0 - v12) * v32 + v12 * v27;
    v29 = 1.0;
    v30 = v26;
    v31 = (1.0 - v12) * v23 + v12 * v24;
LABEL_62:
    GenericRGB = CGColorCreateGenericRGB(v30, v31, v28, v29);

    return GenericRGB;
  }

LABEL_69:
  __break(1u);
  return result;
}

CGColorRef sub_258A848C0(CGColor *a1, CGColor *a2, double a3)
{
  if (CGColorGetNumberOfComponents(a1) == 4 && CGColorGetNumberOfComponents(a2) == 4 && a3 >= 0.0 && a3 <= 1.0)
  {
    v5 = sub_258B02E04();
    if (v5)
    {
      v6 = v5;
      result = sub_258B02E04();
      if (result)
      {
        v8 = *(v6 + 16);
        if (v8)
        {
          v9 = result;
          v10 = *(result + 2);
          if (v10)
          {
            v11 = (1.0 - *(result + 4)) * a3;
            if (1.0 - (1.0 - *(v6 + 32) + v11) < 0.0)
            {
              v12 = 0.0;
            }

            else
            {
              v12 = 1.0 - (1.0 - *(v6 + 32) + v11);
            }

            if (v8 != 1)
            {
              if (v10 != 1)
              {
                v13 = (1.0 - *(result + 5)) * a3;
                if (1.0 - (1.0 - *(v6 + 40) + v13) < 0.0)
                {
                  v14 = 0.0;
                }

                else
                {
                  v14 = 1.0 - (1.0 - *(v6 + 40) + v13);
                }

                if (v8 >= 3)
                {
                  v15 = *(v6 + 48);

                  if (*(v9 + 2) >= 3uLL)
                  {
                    v17 = *(v9 + 6);

                    v16 = 1.0 - v15;
                    if (1.0 - (v16 + (1.0 - v17) * a3) < 0.0)
                    {
                      v18 = 0.0;
                    }

                    else
                    {
                      v18 = 1.0 - (v16 + (1.0 - v17) * a3);
                    }

                    v19 = 1.0;
                    v20 = v12;
                    v21 = v14;
                    goto LABEL_25;
                  }

LABEL_33:
                  __break(1u);
                  return result;
                }

LABEL_32:
                __break(1u);
                goto LABEL_33;
              }

LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_30;
      }
    }
  }

  v20 = 0.0;
  v21 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
LABEL_25:

  return CGColorCreateGenericRGB(v20, v21, v18, v19);
}

CGColorRef sub_258A84A6C(CGColor *a1, CGColor *a2, double a3)
{
  if (CGColorGetNumberOfComponents(a1) != 4)
  {
    goto LABEL_15;
  }

  if (CGColorGetNumberOfComponents(a2) != 4)
  {
    goto LABEL_15;
  }

  if (a3 < 0.0)
  {
    goto LABEL_15;
  }

  if (a3 > 1.0)
  {
    goto LABEL_15;
  }

  v5 = sub_258B02E04();
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  result = sub_258B02E04();
  if (!result)
  {

LABEL_15:
    v20 = 0.0;
    v21 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    goto LABEL_16;
  }

  v8 = *(v6 + 16);
  if (!v8)
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = result;
  v10 = *(result + 2);
  if (!v10)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v8 == 1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v10 == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v8 < 3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = *(v6 + 32);
  v12 = *(v6 + 40);
  v14 = *(result + 4);
  v13 = *(result + 5);
  v15 = *(v6 + 48);

  if (*(v9 + 2) < 3uLL)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v16 = (1.0 - a3) * v12 + v13 * a3;
  v17 = *(v9 + 6);

  v18 = (1.0 - a3) * v15 + v17 * a3;
  v19 = 1.0;
  v20 = (1.0 - a3) * v11 + v14 * a3;
  v21 = v16;
LABEL_16:

  return CGColorCreateGenericRGB(v20, v21, v18, v19);
}

uint64_t _s12EntryDayViewVMa()
{
  result = qword_27F970330;
  if (!qword_27F970330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A84C58()
{
  sub_258A86CC4(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_258A86CC4(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_258A86CC4(319, &qword_27F970328, type metadata accessor for StateOfMindTimeline.DaySummary, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2589FCE08();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_258A84DB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_258B00F84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277CDF3E0];
  v10 = MEMORY[0x277CDF458];
  sub_258A86CC4(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v19 - v13);
  sub_258A86A44(v2, &v19 - v13, &qword_27F96C908, v9, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_258B006A4();
    return (*(*(v15 - 8) + 32))(a1, v14, v15);
  }

  else
  {
    v17 = *v14;
    sub_258B02E94();
    v18 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

__n128 sub_258A84FE4@<Q0>(uint64_t a1@<X8>)
{
  v3 = _s6StylesV5DailyVMa(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A865F4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v16 = sub_258B01194();
  *(v16 + 1) = 0;
  v16[16] = 0;
  sub_258A86820();
  sub_258A85244(v1, &v16[*(v17 + 44)]);
  v18 = v1 + *(_s12EntryDayViewVMa() + 20);
  sub_258AC1060(v12);
  sub_258A86B24(&v12[*(v9 + 64)], v7, _s6StylesV5DailyVMa);
  sub_258A868B8(v12, type metadata accessor for StateOfMindTimeline.Styles);
  LODWORD(v18) = v7[*(v4 + 32)];
  sub_258A868B8(v7, _s6StylesV5DailyVMa);
  sub_258B024F4();
  sub_258B00C94();
  sub_258A86C5C(v16, a1, sub_258A865F4);
  sub_258A86918();
  v20 = a1 + *(v19 + 36);
  v21 = v24[5];
  *(v20 + 64) = v24[4];
  *(v20 + 80) = v21;
  *(v20 + 96) = v24[6];
  v22 = v24[1];
  *v20 = v24[0];
  *(v20 + 16) = v22;
  result = v24[3];
  *(v20 + 32) = v24[2];
  *(v20 + 48) = result;
  return result;
}

uint64_t sub_258A85244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v151 = a2;
  v150 = _s17EntryDayEmptyViewVMa();
  v3 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v126 = (&v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A86978(0, &qword_27F970378, _s16EntryDayDataViewVMa, _s17EntryDayEmptyViewVMa, MEMORY[0x277CE0330]);
  v146 = v5;
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v149 = &v120 - v7;
  v147 = _s16EntryDayDataViewVMa();
  v8 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v121 = (&v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x277D83D88];
  sub_258A86CC4(0, &qword_27F96D908, _s5EntryVMa, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v124 = &v120 - v13;
  v123 = _s5EntryVMa();
  v122 = *(v123 - 8);
  v14 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  v120 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A86CC4(0, &qword_27F970328, type metadata accessor for StateOfMindTimeline.DaySummary, v10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v144 = &v120 - v18;
  v143 = type metadata accessor for StateOfMindTimeline.DaySummary();
  v142 = *(v143 - 8);
  v19 = *(v142 + 64);
  MEMORY[0x28223BE20](v143);
  v125 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A86978(0, &qword_27F970358, _s16EntryDayDataViewVMa, _s17EntryDayEmptyViewVMa, MEMORY[0x277CE0338]);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v148 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v152 = &v120 - v25;
  v141 = sub_258B02554();
  v140 = *(v141 - 8);
  v26 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v139 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_258B006A4();
  v137 = *(v138 - 8);
  v28 = *(v137 + 64);
  v29 = MEMORY[0x28223BE20](v138);
  v135 = &v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v133 = &v120 - v31;
  v32 = sub_258B019F4();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v120 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v40 = &v120 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589C5144();
  v132 = v41;
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v131 = &v120 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A86978(0, &qword_27F96CA18, sub_2589C5144, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v145 = &v120 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v153 = &v120 - v48;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v157 = sub_258AFFD94();
  v158 = v49;
  sub_2589BFF58();
  v50 = sub_258B01B44();
  v52 = v51;
  v54 = v53;
  v136 = v55;
  v130 = _s12EntryDayViewVMa();
  v56 = *(v130 + 20);
  sub_258AC1060(v40);
  v129 = type metadata accessor for StateOfMindTimeline.Styles;
  sub_258A868B8(v40, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B01A34();
  (*(v33 + 104))(v36, *MEMORY[0x277CE0A10], v32);
  sub_258B01A14();
  v127 = a1;

  (*(v33 + 8))(v36, v32);
  v57 = sub_258B01AE4();
  v128 = v58;
  v60 = v59;
  sub_2589BFFAC(v50, v52, v54 & 1);

  v136 = v56;
  v61 = v127;
  sub_258AC1060(v40);
  v134 = v40;
  sub_258A868B8(v40, v129);
  v62 = [objc_opt_self() secondaryLabelColor];
  v157 = sub_258B01F94();
  v63 = v128;
  v64 = sub_258B01AB4();
  v66 = v65;
  v68 = v67;
  v129 = v69;
  sub_2589BFFAC(v57, v63, v60 & 1);

  v70 = v133;
  v71 = v61;
  sub_258A84DB8(v133);
  v72 = v137;
  v73 = v135;
  v74 = v138;
  (*(v137 + 104))(v135, *MEMORY[0x277CDF3D0], v138);
  v75 = sub_258B00694();
  v76 = *(v72 + 8);
  v76(v73, v74);
  v76(v70, v74);
  v77 = v140;
  v78 = MEMORY[0x277CE13B0];
  if ((v75 & 1) == 0)
  {
    v78 = MEMORY[0x277CE13B8];
  }

  v79 = v139;
  v80 = v141;
  (*(v140 + 104))(v139, *v78, v141);
  v81 = v131;
  (*(v77 + 32))(&v131[*(v132 + 36)], v79, v80);
  *v81 = v64;
  *(v81 + 8) = v66;
  *(v81 + 16) = v68 & 1;
  *(v81 + 24) = v129;
  v82 = v130;
  v83 = v71;
  v84 = *(v71 + *(v130 + 28));
  sub_258B003E4();
  v85 = v84;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v85 = sub_258A74828(0, *(v84 + 16) + 1, 1, v84);
  }

  v87 = *(v85 + 2);
  v86 = *(v85 + 3);
  if (v87 >= v86 >> 1)
  {
    v85 = sub_258A74828((v86 > 1), v87 + 1, 1, v85);
  }

  *(v85 + 2) = v87 + 1;
  v88 = &v85[16 * v87];
  *(v88 + 4) = 0x6E6F6974706143;
  *(v88 + 5) = 0xE700000000000000;
  v157 = &unk_2869D4670;
  v89 = sub_258B003E4();
  sub_2589FC8C8(v89);
  sub_2589FCE08();
  sub_258A869FC(&qword_280DF8940, sub_2589FCE08);
  sub_258B02A34();

  sub_2589C6AE0();
  sub_258B01DD4();

  sub_258A868B8(v81, sub_2589C5144);
  v90 = v134;
  sub_258AC1060(v134);
  sub_258A868B8(v90, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00854();
  v141 = v157;
  v140 = v159;
  v139 = v161;
  v138 = v162;
  v156 = 1;
  v155 = v158;
  v154 = v160;
  v91 = v144;
  sub_258A86A44(v83 + *(v82 + 24), v144, &qword_27F970328, type metadata accessor for StateOfMindTimeline.DaySummary, MEMORY[0x277D83D88]);
  v92 = v143;
  if ((*(v142 + 48))(v91, 1, v143) == 1)
  {
    v93 = &qword_27F970328;
    v94 = type metadata accessor for StateOfMindTimeline.DaySummary;
  }

  else
  {
    v95 = v125;
    sub_258A86C5C(v91, v125, type metadata accessor for StateOfMindTimeline.DaySummary);
    v91 = v124;
    sub_258A86A44(v95 + *(v92 + 28), v124, &qword_27F96D908, _s5EntryVMa, MEMORY[0x277D83D88]);
    if ((*(v122 + 48))(v91, 1, v123) != 1)
    {
      v102 = v120;
      sub_258A86C5C(v91, v120, _s5EntryVMa);
      v103 = v147;
      v104 = v121;
      sub_258A86B24(v95, v121 + *(v147 + 24), type metadata accessor for StateOfMindTimeline.DaySummary);
      sub_258A86B24(v102, v104 + v103[7], _s5EntryVMa);
      *v104 = swift_getKeyPath();
      v105 = MEMORY[0x277CDF458];
      sub_258A86CC4(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      v106 = v103[5];
      *(v104 + v106) = swift_getKeyPath();
      sub_258A86CC4(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, v105);
      swift_storeEnumTagMultiPayload();
      *(v104 + v103[8]) = v84;
      sub_258A86B24(v104, v149, _s16EntryDayDataViewVMa);
      swift_storeEnumTagMultiPayload();
      sub_258A869FC(&qword_27F970380, _s16EntryDayDataViewVMa);
      sub_258A869FC(&qword_27F970388, _s17EntryDayEmptyViewVMa);
      sub_258B003E4();
      v99 = v152;
      sub_258B012A4();
      sub_258A868B8(v104, _s16EntryDayDataViewVMa);
      sub_258A868B8(v102, _s5EntryVMa);
      v100 = type metadata accessor for StateOfMindTimeline.DaySummary;
      v101 = v95;
      goto LABEL_15;
    }

    sub_258A868B8(v95, type metadata accessor for StateOfMindTimeline.DaySummary);
    v93 = &qword_27F96D908;
    v94 = _s5EntryVMa;
  }

  sub_258A86AB4(v91, v93, v94);
  KeyPath = swift_getKeyPath();
  v97 = v126;
  *v126 = KeyPath;
  sub_258A86CC4(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v98 = v149;
  *(v97 + *(v150 + 20)) = v84;
  sub_258A86B24(v97, v98, _s17EntryDayEmptyViewVMa);
  swift_storeEnumTagMultiPayload();
  sub_258A869FC(&qword_27F970380, _s16EntryDayDataViewVMa);
  sub_258A869FC(&qword_27F970388, _s17EntryDayEmptyViewVMa);
  sub_258B003E4();
  v99 = v152;
  sub_258B012A4();
  v100 = _s17EntryDayEmptyViewVMa;
  v101 = v97;
LABEL_15:
  sub_258A868B8(v101, v100);
  v107 = v99;
  v108 = MEMORY[0x277CDE470];
  v109 = MEMORY[0x277CDFAB8];
  v110 = v145;
  sub_258A86B8C(v153, v145, &qword_27F96CA18, sub_2589C5144, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  v111 = v156;
  LODWORD(v149) = v155;
  LODWORD(v150) = v154;
  v112 = MEMORY[0x277CE0338];
  v113 = v107;
  v114 = v148;
  sub_258A86B8C(v113, v148, &qword_27F970358, _s16EntryDayDataViewVMa, _s17EntryDayEmptyViewVMa, MEMORY[0x277CE0338]);
  v115 = v151;
  sub_258A86B8C(v110, v151, &qword_27F96CA18, sub_2589C5144, v108, v109);
  sub_258A86688();
  v117 = v115 + *(v116 + 48);
  *v117 = 0;
  *(v117 + 8) = v111;
  *(v117 + 16) = v141;
  *(v117 + 24) = v149;
  *(v117 + 32) = v140;
  *(v117 + 40) = v150;
  v118 = v138;
  *(v117 + 48) = v139;
  *(v117 + 56) = v118;
  sub_258A86B8C(v114, v115 + *(v116 + 64), &qword_27F970358, _s16EntryDayDataViewVMa, _s17EntryDayEmptyViewVMa, v112);
  sub_258A86C00(v152, &qword_27F970358, _s16EntryDayDataViewVMa, _s17EntryDayEmptyViewVMa, v112);
  sub_258A86C00(v153, &qword_27F96CA18, sub_2589C5144, v108, v109);
  sub_258A86C00(v114, &qword_27F970358, _s16EntryDayDataViewVMa, _s17EntryDayEmptyViewVMa, v112);
  return sub_258A86C00(v110, &qword_27F96CA18, sub_2589C5144, v108, v109);
}

void sub_258A865F4()
{
  if (!qword_27F970340)
  {
    sub_258A86CC4(255, &qword_27F970348, sub_258A86688, MEMORY[0x277CE14B8]);
    sub_258A86798();
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970340);
    }
  }
}

void sub_258A86688()
{
  if (!qword_27F970350)
  {
    sub_258A86978(255, &qword_27F96CA18, sub_2589C5144, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    sub_2589BD110();
    sub_258A86978(255, &qword_27F970358, _s16EntryDayDataViewVMa, _s17EntryDayEmptyViewVMa, MEMORY[0x277CE0338]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F970350);
    }
  }
}

unint64_t sub_258A86798()
{
  result = qword_27F970360;
  if (!qword_27F970360)
  {
    sub_258A86CC4(255, &qword_27F970348, sub_258A86688, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970360);
  }

  return result;
}

void sub_258A86820()
{
  if (!qword_27F970368)
  {
    sub_258A86CC4(255, &qword_27F970348, sub_258A86688, MEMORY[0x277CE14B8]);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970368);
    }
  }
}

uint64_t sub_258A868B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A86918()
{
  if (!qword_27F970370)
  {
    sub_258A865F4();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970370);
    }
  }
}

void sub_258A86978(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_258A869FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258A86A44(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_258A86CC4(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_258A86AB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_258A86CC4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_258A86B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A86B8C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_258A86978(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_258A86C00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_258A86978(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_258A86C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_258A86CC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_258A86D28()
{
  result = qword_27F970390;
  if (!qword_27F970390)
  {
    sub_258A86918();
    sub_258A869FC(&qword_27F970398, sub_258A865F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970390);
  }

  return result;
}

uint64_t sub_258A86E04()
{
  sub_258A8773C();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v8[0] = sub_258AFFD94();
  v8[1] = v6;
  sub_2589BFF58();
  sub_258B021A4();
  v8[0] = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5748);
  sub_2589FCE08();
  sub_258A87794(&qword_280DF8940, sub_2589FCE08);
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258A87794(&qword_27F96E060, sub_258A8773C);
  sub_258B01DD4();

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_258A87080()
{
  v0 = sub_258B00384();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258AFFE44();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = HKMHMindfulnessSettingsURL();
  if (v10)
  {
    v11 = v10;
    sub_258AFFE24();

    v12 = [objc_opt_self() defaultWorkspace];
    if (v12)
    {
      v13 = v12;
      v14 = sub_258AFFE14();
      sub_258AD6068(MEMORY[0x277D84F90]);
      v15 = sub_258B029E4();

      [v13 openSensitiveURL:v14 withOptions:v15];
    }

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    sub_258B00364();
    v17 = sub_258B00374();
    v18 = sub_258B02EA4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_2589F1F78(0xD000000000000018, 0x8000000258B32450, &v22);
      _os_log_impl(&dword_2589A1000, v17, v18, "[%{public}s] Failed to open Mindfulness settings in Bridge from State of Mind Settings.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x259C945C0](v20, -1, -1);
      MEMORY[0x259C945C0](v19, -1, -1);
    }

    return (*(v1 + 8))(v4, v0);
  }
}

uint64_t sub_258A87360@<X0>(uint64_t a1@<X8>)
{
  sub_2589BFF58();
  sub_258B003E4();
  v2 = sub_258B01B44();
  v4 = v3;
  v6 = v5 & 1;
  sub_2589FC8C8(&unk_2869D5788);
  sub_2589FCE08();
  sub_258A87794(&qword_280DF8940, sub_2589FCE08);
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258B01DD4();
  sub_2589BFFAC(v2, v4, v6);

  sub_258A876C8(0, &qword_27F96F8A0, sub_258A155A0, sub_258A87670);
  v8 = (a1 + *(v7 + 36));
  sub_258A87670();
  v10 = v8 + *(v9 + 28);
  sub_258B00CD4();
  result = swift_getKeyPath();
  *v8 = result;
  return result;
}

uint64_t sub_258A8753C()
{
  sub_258A876C8(0, &qword_27F96F8A0, sub_258A155A0, sub_258A87670);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = *v0;
  v4 = v0[1];
  sub_258A87360(&v7 - v5);
  sub_258A876C8(0, &qword_27F96EA10, sub_258A8773C, MEMORY[0x277CDE470]);
  sub_258A294BC();
  sub_258A5B748();
  return sub_258B02434();
}

void sub_258A87670()
{
  if (!qword_27F96F8A8)
  {
    sub_258B00CE4();
    v0 = sub_258B017C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F8A8);
    }
  }
}

void sub_258A876C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A8773C()
{
  if (!qword_27F96E018)
  {
    v0 = sub_258B021B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96E018);
    }
  }
}

uint64_t sub_258A87794(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258A87800(uint64_t a1)
{
  v2 = sub_258B00CE4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_258B00DF4();
}

unint64_t sub_258A878C8()
{
  result = qword_27F9703A0;
  if (!qword_27F9703A0)
  {
    sub_258A87954();
    sub_258A294BC();
    sub_258A5B748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9703A0);
  }

  return result;
}

void sub_258A87954()
{
  if (!qword_27F9703A8)
  {
    sub_258A876C8(255, &qword_27F96EA10, sub_258A8773C, MEMORY[0x277CDE470]);
    sub_258A876C8(255, &qword_27F96F8A0, sub_258A155A0, sub_258A87670);
    v0 = sub_258B02444();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9703A8);
    }
  }
}

uint64_t getEnumTagSinglePayload for PromptedAssessmentsSettingsConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PromptedAssessmentsSettingsConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for ValenceSelectionPhase_iOS()
{
  result = qword_27F9703B0;
  if (!qword_27F9703B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A87B40()
{
  sub_2589E3D24();
  if (v0 <= 0x3F)
  {
    sub_258A2D96C();
    if (v1 <= 0x3F)
    {
      sub_2589C0D10();
      if (v2 <= 0x3F)
      {
        sub_258A8953C(319, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 sub_258A87C50@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_258B008E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  v39 = *(a2 + 8);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  *&v47 = v11;
  *(&v47 + 1) = v12;
  LOBYTE(v48) = v13;
  sub_258A2D96C();
  sub_258B02334();
  v14 = *(&v42 + 1);
  v37 = v42;
  v38 = v43;
  v35 = *(v7 + 16);
  v35(v10, a1, v6);
  v36 = *(a2 + 34);
  v40 = *(a2 + 33);
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  v41 = v15;
  v17 = type metadata accessor for ValenceSelectionPhaseContent();
  v18 = v17[8];
  *(a3 + v18) = swift_getKeyPath();
  v19 = MEMORY[0x277CDF458];
  sub_258A8953C(0, &qword_27F96D7B8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v20 = v17[9];
  *(a3 + v20) = swift_getKeyPath();
  sub_258A8953C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], v19);
  swift_storeEnumTagMultiPayload();
  v21 = v17[10];
  *(a3 + v21) = swift_getKeyPath();
  sub_258A8953C(0, &qword_27F96D7C0, MEMORY[0x277CC99E8], v19);
  swift_storeEnumTagMultiPayload();
  v22 = a3 + v17[13];
  type metadata accessor for CGSize(0);
  v42 = 0uLL;
  sub_258B02114();
  v23 = v48;
  *v22 = v47;
  *(v22 + 2) = v23;
  type metadata accessor for StateOfMindEntryModel(0);
  sub_258A88DE0(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel);

  *a3 = sub_258B00A24();
  a3[1] = v24;
  v25 = a3 + v17[15];
  *v25 = v37;
  *(v25 + 1) = v14;
  v25[16] = v38;
  v35(a3 + v17[5], v10, v6);
  v26 = v36;
  *(a3 + v17[6]) = v36;
  v27 = a3 + v17[11];
  LOBYTE(v42) = v26;

  sub_258B02114();
  v28 = *(&v47 + 1);
  *v27 = v47;
  *(v27 + 1) = v28;
  *(a3 + v17[14]) = v40;
  v29 = (a3 + v17[7]);
  *v29 = v41;
  v29[1] = v16;
  v30 = a3 + v17[12];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;

  sub_258B02114();

  (*(v7 + 8))(v10, v6);
  v31 = v46;
  result = v45;
  v33 = v43;
  v34 = v42;
  *(v30 + 2) = v44;
  *(v30 + 3) = result;
  *(v30 + 8) = v31;
  *v30 = v34;
  *(v30 + 1) = v33;
  return result;
}

uint64_t sub_258A88068()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  if (v3 == 2)
  {
    if (qword_27F96C240 == -1)
    {
      return sub_258AFFD94();
    }

LABEL_8:
    swift_once();
    return sub_258AFFD94();
  }

  if (v3 == 1)
  {
    if (qword_27F96C240 == -1)
    {
      return sub_258AFFD94();
    }

    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_258A881D4@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v2 = type metadata accessor for ValenceSelectionPhaseSpecs();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v80 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v79 = &v77 - v6;
  sub_258A88C2C(0);
  v81 = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v82 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A88E28(0);
  v90 = v10;
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v83 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v77 - v14;
  sub_258A89674(0, &qword_27F9703F8, MEMORY[0x277CE0330]);
  v88 = v15;
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v89 = &v77 - v17;
  v77 = type metadata accessor for ValenceSelectionPhase_iOS();
  v18 = *(v77 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v77);
  sub_258A88C7C();
  v86 = v20;
  v85 = *(v20 - 8);
  v21 = *(v85 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v78 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v77 - v24;
  sub_258A88C54(0);
  v87 = v26;
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v77 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v77 - v34;
  v36 = *(*(v1 + 8) + OBJC_IVAR____TtC14MentalHealthUI21StateOfMindEntryModel_useLiveVisualization);
  sub_258A88EB4(v1, &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  if (v36 == 1)
  {
    v38 = swift_allocObject();
    sub_258A88F18(&v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v37);
    *&v99 = sub_258A896E4;
    *(&v99 + 1) = v38;
    if (*(v1 + 34))
    {
      v39 = 0;
      v40 = 0xE000000000000000;
    }

    else
    {
      v39 = sub_258A88068();
      v40 = v44;
    }

    *&v92 = v39;
    *(&v92 + 1) = v40;
    sub_258A88D4C();
    sub_258A88DE0(&qword_27F9703E8, sub_258A88D4C);
    sub_2589BFF58();
    sub_258B01CB4();

    sub_258B024F4();
    sub_258B00C94();
    (*(v85 + 32))(v33, v25, v86);
    v45 = &v33[*(v87 + 36)];
    v46 = v104;
    *(v45 + 4) = v103;
    *(v45 + 5) = v46;
    *(v45 + 6) = v105;
    v47 = v100;
    *v45 = v99;
    *(v45 + 1) = v47;
    v48 = v102;
    *(v45 + 2) = v101;
    *(v45 + 3) = v48;
    sub_258A88FDC(v33, v35, sub_258A88C54);
    v49 = sub_258A88C54;
    sub_258A89474(v35, v89, sub_258A88C54);
    swift_storeEnumTagMultiPayload();
    sub_258A89044();
    sub_258A8917C(&qword_27F970408, sub_258A88E28, sub_258A89140);
    sub_258B012A4();
    v50 = v35;
  }

  else
  {
    v41 = swift_allocObject();
    sub_258A88F18(&v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v37);
    *&v99 = sub_258A88F7C;
    *(&v99 + 1) = v41;
    if (*(v1 + 34))
    {
      v42 = 0;
      v43 = 0xE000000000000000;
    }

    else
    {
      v42 = sub_258A88068();
      v43 = v51;
    }

    *&v92 = v42;
    *(&v92 + 1) = v43;
    sub_258A88D4C();
    sub_258A88DE0(&qword_27F9703E8, sub_258A88D4C);
    sub_2589BFF58();
    v52 = v78;
    sub_258B01CB4();

    v53 = *(v77 + 36);
    v54 = v79;
    sub_258AC1B90(v79);
    sub_258A88F80(v54);
    sub_258B024F4();
    sub_258B00C94();
    (*(v85 + 32))(v30, v52, v86);
    v55 = &v30[*(v87 + 36)];
    v56 = v97;
    *(v55 + 4) = v96;
    *(v55 + 5) = v56;
    *(v55 + 6) = v98;
    v57 = v93;
    *v55 = v92;
    *(v55 + 1) = v57;
    v58 = v95;
    *(v55 + 2) = v94;
    *(v55 + 3) = v58;
    LOBYTE(v54) = sub_258B01864();
    v59 = v80;
    sub_258AC1B90(v80);
    sub_258A88F80(v59);
    sub_258B00654();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v68 = v82;
    sub_258A88FDC(v30, v82, sub_258A88C54);
    v69 = v68 + *(v81 + 36);
    *v69 = v54;
    *(v69 + 8) = v61;
    *(v69 + 16) = v63;
    *(v69 + 24) = v65;
    *(v69 + 32) = v67;
    *(v69 + 40) = 0;
    sub_258B024F4();
    sub_258B00C94();
    v70 = v83;
    sub_258A88FDC(v68, v83, sub_258A88C2C);
    v71 = (v70 + *(v90 + 36));
    v72 = v104;
    v71[4] = v103;
    v71[5] = v72;
    v71[6] = v105;
    v73 = v100;
    *v71 = v99;
    v71[1] = v73;
    v74 = v102;
    v71[2] = v101;
    v71[3] = v74;
    v75 = v84;
    sub_258A88FDC(v70, v84, sub_258A88E28);
    v49 = sub_258A88E28;
    sub_258A89474(v75, v89, sub_258A88E28);
    swift_storeEnumTagMultiPayload();
    sub_258A89044();
    sub_258A8917C(&qword_27F970408, sub_258A88E28, sub_258A89140);
    sub_258B012A4();
    v50 = v75;
  }

  return sub_258A894DC(v50, v49);
}

void sub_258A88C7C()
{
  if (!qword_27F9703D0)
  {
    sub_258A88D4C();
    sub_258A88DE0(&qword_27F9703E8, sub_258A88D4C);
    sub_2589BFF58();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F9703D0);
    }
  }
}

void sub_258A88D4C()
{
  if (!qword_27F9703D8)
  {
    type metadata accessor for ValenceSelectionPhaseContent();
    sub_258A88DE0(&qword_27F9703E0, type metadata accessor for ValenceSelectionPhaseContent);
    v0 = sub_258B009C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9703D8);
    }
  }
}

uint64_t sub_258A88DE0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258A88E50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258A88EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValenceSelectionPhase_iOS();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A88F18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValenceSelectionPhase_iOS();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A88F80(uint64_t a1)
{
  v2 = type metadata accessor for ValenceSelectionPhaseSpecs();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A88FDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_258A89044()
{
  result = qword_27F970400;
  if (!qword_27F970400)
  {
    sub_258A88C54(255);
    sub_258A88D4C();
    sub_258A88DE0(&qword_27F9703E8, sub_258A88D4C);
    sub_2589BFF58();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970400);
  }

  return result;
}

uint64_t sub_258A8917C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_19()
{
  v1 = (type metadata accessor for ValenceSelectionPhase_iOS() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = v3[1];

  v5 = v3[2];

  v6 = v3[3];

  v7 = v3[6];

  v8 = v3 + v1[11];
  sub_258A8953C(0, &qword_27F96D7B8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_258B01504();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v8, 1, v9))
    {
      (*(v10 + 8))(v8, v9);
    }

    v11 = *(type metadata accessor for ValenceSelectionPhaseSpecs() + 20);
    v12 = sub_258B00AA4();
    (*(*(v12 - 8) + 8))(&v8[v11], v12);
  }

  else
  {
    v13 = *v8;
  }

  return swift_deallocObject();
}

double sub_258A893F4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ValenceSelectionPhase_iOS() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  *&result = sub_258A87C50(a1, v6, a2).n128_u64[0];
  return result;
}

uint64_t sub_258A89474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A894DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A8953C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_258A895A0()
{
  result = qword_27F970418;
  if (!qword_27F970418)
  {
    sub_258A89674(255, &qword_27F970420, MEMORY[0x277CE0338]);
    sub_258A89044();
    sub_258A8917C(&qword_27F970408, sub_258A88E28, sub_258A89140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970418);
  }

  return result;
}

void sub_258A89674(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_258A88C54(255);
    v7 = v6;
    sub_258A88E28(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_258A896FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for ShowAllLabelsPicker()
{
  result = qword_27F970428;
  if (!qword_27F970428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A897C0()
{
  type metadata accessor for ValenceClassification(319);
  if (v0 <= 0x3F)
  {
    sub_258A896FC(319, &qword_27F96F2E8, sub_258A1E3AC, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_258A896FC(319, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_258A896FC(319, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_258A896FC(319, &qword_27F970438, sub_258A1E3AC, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_258A89968(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_258B02454();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShowAllLabelsPicker();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A8B80C(0);
  v38 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for ShowAllLabelsPicker;
  sub_258A8CF30(a1, v9, type metadata accessor for ShowAllLabelsPicker);
  sub_258B02D24();
  v13 = sub_258B02D14();
  v14 = *(v7 + 80);
  v15 = (v14 + 32) & ~v14;
  v39 = v8;
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v13;
  *(v16 + 24) = v17;
  sub_258A8C5E0(v9, v16 + v15);
  v36 = a1;
  sub_258A8CF30(a1, v9, type metadata accessor for ShowAllLabelsPicker);
  v18 = sub_258B02D14();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  sub_258A8C5E0(v9, v19 + v15);
  sub_258A8C9DC();
  sub_258B02344();
  v46 = a1;
  type metadata accessor for Label(0);
  sub_258A8B8FC();
  sub_258A8BD58(&qword_27F9704C8, type metadata accessor for Label);
  sub_258A8BEA4();
  v20 = v37;
  sub_258B01A64();
  KeyPath = swift_getKeyPath();
  v22 = (v20 + *(v38 + 36));
  sub_258A8C168(0);
  v24 = *(v23 + 28);
  v26 = v42;
  v25 = v43;
  v27 = v40;
  (*(v42 + 104))(v40, *MEMORY[0x277CDF0D0], v43);
  sub_258B02354();
  (*(v26 + 8))(v27, v25);
  sub_258A8C1D0(0);
  (*(*(v28 - 8) + 56))(v22 + v24, 0, 1, v28);
  *v22 = KeyPath;
  v29 = v36;
  v45 = v36;
  sub_258A8C204(0);
  sub_258A8C384();
  sub_258A8BD58(&qword_27F970548, sub_258A8C204);
  v30 = v44;
  sub_258B01EE4();
  sub_258A8CE14(v20, sub_258A8B80C);
  sub_258A8CF30(v29, v9, v41);
  v31 = swift_allocObject();
  sub_258A8C5E0(v9, v31 + ((v14 + 16) & ~v14));
  v47 = 0;
  sub_258B02114();
  LOBYTE(v22) = v48;
  v32 = v49;
  sub_258A8B6D8();
  v34 = v30 + *(v33 + 36);
  *v34 = sub_258A8CA80;
  *(v34 + 8) = v31;
  *(v34 + 16) = v22;
  *(v34 + 24) = v32;
}

uint64_t sub_258A89E8C()
{
  sub_258A8B99C(0, &qword_27F970468, sub_258A8BA10, sub_258A8BCC4);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - v2;
  v8 = sub_258B02F84();
  sub_258B003E4();
  sub_258AEF9FC(&v8);

  v5 = v8;
  MEMORY[0x28223BE20](v4);
  *(&v7 - 2) = v5;
  sub_258A8B148(v3);
  sub_258A8BDA0();
  sub_258A8BF30();
  sub_258A8C0F0();
  sub_258B02404();
}

uint64_t sub_258A8A00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  sub_258A8C238();
  v23[0] = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A8C308(0, &qword_27F970528, sub_2589ED384, sub_2589ED78C);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = v23 - v11;
  v13 = sub_258B01384();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_258A8C308(0, &qword_27F96CB88, sub_2589ECFF0, sub_2589C6218);
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v20 = v23 - v19;
  sub_258B01324();
  v23[8] = a1;
  sub_2589ECFF0(0);
  sub_2589C6218();
  sub_258B00784();
  sub_258B01334();
  v23[4] = a1;
  sub_2589ED384(0);
  sub_2589ED78C();
  sub_258B00784();
  v21 = *(v23[0] + 48);
  (*(v17 + 16))(v6, v20, v16);
  (*(v9 + 16))(&v6[v21], v12, v8);
  sub_258B011B4();
  (*(v9 + 8))(v12, v8);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_258A8A348(uint64_t a1)
{
  v2 = type metadata accessor for ShowAllLabelsPicker();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_258B026D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A8CF30(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShowAllLabelsPicker);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_258A8C5E0(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_258B026A4();
  v13[1] = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D57C8);
  sub_258A8CF98(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258A8BD58(&qword_27F96CBA0, MEMORY[0x277D126A0]);
  sub_258B01DD4();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_258A8A5F0(uint64_t a1)
{
  v2 = sub_258B00F84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A896FC(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v20 - v9);
  v11 = sub_258B008A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ShowAllLabelsPicker();
  sub_2589EE78C(a1 + *(v16 + 24), v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v17 = *v10;
    sub_258B02E94();
    v18 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_258B00894();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_258A8A888(uint64_t a1)
{
  v2 = type metadata accessor for ShowAllLabelsPicker();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_258B026B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A8CF30(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShowAllLabelsPicker);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_258A8C5E0(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_258B026A4();
  v13[1] = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5808);
  sub_258A8CF98(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  swift_arrayDestroy();
  sub_258A8BD58(&qword_27F96D6D8, MEMORY[0x277D12688]);
  sub_258B01DD4();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_258A8AB30(uint64_t a1)
{
  v2 = sub_258B008A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ShowAllLabelsPicker();
  v8 = (a1 + *(v7 + 32));
  v10 = *v8;
  v9 = v8[1];
  v14 = v10;
  *&v15 = v9;
  sub_258A896FC(0, &qword_27F970438, sub_258A1E3AC, MEMORY[0x277CE10B8]);
  sub_258B02124();
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  sub_258A896FC(0, &qword_27F96F2E8, sub_258A1E3AC, MEMORY[0x277CE11F8]);
  sub_258B02314();
  v11 = a1 + *(v7 + 24);
  sub_258AC1744(v6);
  sub_258B00894();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_258A8ACC0(uint64_t a1)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  sub_258A896FC(0, &qword_27F96F2E8, sub_258A1E3AC, MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](&v6);
  v2 = (a1 + *(type metadata accessor for ShowAllLabelsPicker() + 32));
  v4 = *v2;
  v3 = v2[1];
  v7 = v4;
  *&v8 = v3;
  sub_258A896FC(0, &qword_27F970438, sub_258A1E3AC, MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

uint64_t sub_258A8AD98()
{
  swift_getKeyPath();
  sub_258A1E3AC(0);
  sub_258A155A0();
  sub_258A8BD58(&qword_27F9704C0, sub_258A1E3AC);
  sub_258A8BD58(&qword_27F9704C8, type metadata accessor for Label);
  sub_258A5B2D4();
  sub_258B003E4();
  return sub_258B023B4();
}

uint64_t sub_258A8AEC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = HKUILocalizedStringForStateOfMindLabel();
  sub_258B02B14();

  sub_2589BFF58();
  v3 = sub_258B01B44();
  v5 = v4;
  v7 = v6;
  sub_258B01914();
  v8 = sub_258B01AE4();
  v10 = v9;
  v12 = v11;

  sub_2589BFFAC(v3, v5, v7 & 1);

  v13 = MEMORY[0x277D837D0];
  sub_258A8CF98(0, &qword_280DF88F0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B326A0;
  strcpy((inited + 32), "ShowAllLabels");
  *(inited + 46) = -4864;
  *(inited + 48) = 0x6C6562614CLL;
  *(inited + 56) = 0xE500000000000000;
  v15 = NSStringFromHKStateOfMindLabel();
  v16 = sub_258B02B14();
  v18 = v17;

  *(inited + 64) = v16;
  *(inited + 72) = v18;
  v19 = sub_258B003E4();
  sub_2589FC8C8(v19);
  sub_258A8CF98(0, &qword_280DF8948, v13, MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  swift_setDeallocating();
  v20 = *(inited + 16);
  swift_arrayDestroy();
  sub_258B01DD4();
  sub_2589BFFAC(v8, v10, v12 & 1);
}

double sub_258A8B148@<D0>(uint64_t a1@<X8>)
{
  v29 = a1;
  sub_258A8BAC8(0);
  v28 = v1;
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v30 = sub_258AFFD94();
  v31 = v5;
  sub_2589BFF58();
  v6 = sub_258B01B44();
  v8 = v7;
  v10 = v9;
  sub_258B01914();
  v11 = sub_258B01AE4();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_2589BFFAC(v6, v8, v10 & 1);

  v30 = v11;
  v31 = v13;
  v15 &= 1u;
  v32 = v15;
  v33 = v17;
  sub_258B01CF4();
  sub_2589BFFAC(v11, v13, v15);

  *&v4[*(v28 + 36)] = sub_258B014A4();
  sub_258A8BB7C();
  v18 = v29;
  sub_258B01E44();
  sub_258A8CE14(v4, sub_258A8BAC8);
  sub_258A8BA10(0);
  v20 = (v18 + *(v19 + 36));
  sub_258A8BC5C(0);
  v22 = *(v21 + 28);
  v23 = sub_258B01AC4();
  (*(*(v23 - 8) + 56))(v20 + v22, 1, 1, v23);
  *v20 = swift_getKeyPath();
  sub_258A8B99C(0, &qword_27F970468, sub_258A8BA10, sub_258A8BCC4);
  v25 = v18 + *(v24 + 36);
  *v25 = 0;
  *(v25 + 8) = 0;
  result = 8.0;
  *(v25 + 16) = xmmword_258B326B0;
  *(v25 + 32) = 0;
  return result;
}

uint64_t sub_258A8B420@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ShowAllLabelsPicker() + 32));
  v7 = *v3;
  v8 = v3[1];
  sub_258A896FC(0, &qword_27F970438, sub_258A1E3AC, MEMORY[0x277CE10B8]);
  sub_258B02124();
  v4 = sub_258AE9BC8(v6);

  *a2 = v4;
  return result;
}

uint64_t sub_258A8B4CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(*a1 + 16);
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = sub_258AE55F4(*(*a1 + 16), 0);
  v8 = sub_258AE9A2C(v13, v7 + 4, v6, v5);
  sub_258B003E4();
  sub_258A8CFE8();
  if (v8 != v6)
  {
    __break(1u);
LABEL_4:
    v7 = MEMORY[0x277D84F90];
  }

  v13[0] = v7;
  sub_258AEF9FC(v13);
  v9 = (a4 + *(type metadata accessor for ShowAllLabelsPicker() + 32));
  v11 = *v9;
  v10 = v9[1];
  v13[0] = v11;
  v13[1] = v10;
  sub_258A896FC(0, &qword_27F970438, sub_258A1E3AC, MEMORY[0x277CE10B8]);
  return sub_258B02134();
}

void sub_258A8B618(uint64_t a1@<X8>)
{
  sub_258A8B6D8();
  sub_258A8C464();
  sub_258B00B24();
  KeyPath = swift_getKeyPath();
  sub_258A8B99C(0, &qword_27F970558, sub_258A8C564, sub_2589D3448);
  v4 = (a1 + *(v3 + 36));
  *v4 = KeyPath;
  v4[1] = 0;
}

void sub_258A8B6D8()
{
  if (!qword_27F970440)
  {
    sub_258A8B738();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970440);
    }
  }
}

void sub_258A8B738()
{
  if (!qword_27F970448)
  {
    sub_258A8B80C(255);
    sub_258A8C204(255);
    sub_258A8C384();
    sub_258A8BD58(&qword_27F970548, sub_258A8C204);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F970448);
    }
  }
}

void sub_258A8B840()
{
  if (!qword_27F970458)
  {
    type metadata accessor for Label(255);
    sub_258A8B8FC();
    sub_258A8BD58(&qword_27F9704C8, type metadata accessor for Label);
    sub_258A8BEA4();
    v0 = sub_258B01A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970458);
    }
  }
}

void sub_258A8B8FC()
{
  if (!qword_27F970460)
  {
    sub_258A8B99C(255, &qword_27F970468, sub_258A8BA10, sub_258A8BCC4);
    sub_258A8BDA0();
    v0 = sub_258B02444();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970460);
    }
  }
}

void sub_258A8B99C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A8BA44()
{
  if (!qword_27F970478)
  {
    sub_258A8BAC8(255);
    sub_258A8BB7C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F970478);
    }
  }
}

void sub_258A8BAFC()
{
  if (!qword_27F970488)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F970488);
    }
  }
}

unint64_t sub_258A8BB7C()
{
  result = qword_27F970490;
  if (!qword_27F970490)
  {
    sub_258A8BAC8(255);
    swift_getOpaqueTypeConformance2();
    sub_258A8BD58(&qword_27F96F3E8, sub_258A4A19C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970490);
  }

  return result;
}

void sub_258A8BCC4()
{
  if (!qword_27F9704A8)
  {
    sub_258B013E4();
    sub_258A8BD58(&qword_27F9704B0, MEMORY[0x277CDE0E0]);
    v0 = sub_258B01454();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9704A8);
    }
  }
}

uint64_t sub_258A8BD58(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258A8BDA0()
{
  if (!qword_27F9704B8)
  {
    sub_258A1E3AC(255);
    type metadata accessor for Label(255);
    sub_258A155A0();
    sub_258A8BD58(&qword_27F9704C0, sub_258A1E3AC);
    sub_258A8BD58(&qword_27F9704C8, type metadata accessor for Label);
    v0 = sub_258B023D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9704B8);
    }
  }
}

unint64_t sub_258A8BEA4()
{
  result = qword_27F9704D0;
  if (!qword_27F9704D0)
  {
    sub_258A8B8FC();
    sub_258A8BF30();
    sub_258A8C0F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9704D0);
  }

  return result;
}

unint64_t sub_258A8BF30()
{
  result = qword_27F9704D8;
  if (!qword_27F9704D8)
  {
    sub_258A8B99C(255, &qword_27F970468, sub_258A8BA10, sub_258A8BCC4);
    sub_258A8C010();
    sub_258A8BD58(&qword_27F9704F0, sub_258A8BCC4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9704D8);
  }

  return result;
}

unint64_t sub_258A8C010()
{
  result = qword_27F9704E0;
  if (!qword_27F9704E0)
  {
    sub_258A8BA10(255);
    sub_258A8BAC8(255);
    sub_258A8BB7C();
    swift_getOpaqueTypeConformance2();
    sub_258A8BD58(&qword_27F9704E8, sub_258A8BC5C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9704E0);
  }

  return result;
}

unint64_t sub_258A8C0F0()
{
  result = qword_27F9704F8;
  if (!qword_27F9704F8)
  {
    sub_258A8BDA0();
    sub_258A5B2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9704F8);
  }

  return result;
}

void sub_258A8C238()
{
  if (!qword_27F970520)
  {
    sub_258A8C308(255, &qword_27F96CB88, sub_2589ECFF0, sub_2589C6218);
    sub_258A8C308(255, &qword_27F970528, sub_2589ED384, sub_2589ED78C);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F970520);
    }
  }
}

void sub_258A8C308(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_258B00794();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258A8C384()
{
  result = qword_27F970530;
  if (!qword_27F970530)
  {
    sub_258A8B80C(255);
    sub_258A8BD58(&qword_27F970538, sub_258A8B840);
    sub_258A8BD58(&qword_27F970540, sub_258A8C168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970530);
  }

  return result;
}

unint64_t sub_258A8C464()
{
  result = qword_27F970550;
  if (!qword_27F970550)
  {
    sub_258A8B6D8();
    sub_258A8B80C(255);
    sub_258A8C204(255);
    sub_258A8C384();
    sub_258A8BD58(&qword_27F970548, sub_258A8C204);
    swift_getOpaqueTypeConformance2();
    sub_258A48FA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970550);
  }

  return result;
}

void sub_258A8C564()
{
  if (!qword_27F970560)
  {
    sub_258B00A14();
    sub_258A8B6D8();
    sub_258A8C464();
    v0 = sub_258B00B34();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970560);
    }
  }
}

uint64_t sub_258A8C5E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowAllLabelsPicker();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A8C644@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ShowAllLabelsPicker() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_258A8B420(v6, a1);
}

uint64_t objectdestroyTm_20()
{
  v1 = type metadata accessor for ShowAllLabelsPicker();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = *(v0 + v2 + 8);

  v7 = *(v0 + v2 + 16);

  v8 = *(v0 + v2 + 24);

  v9 = v1[6];
  sub_258A896FC(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_258B008A4();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  v12 = (v5 + v1[7]);
  sub_258A896FC(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_258B01504();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v12, 1, v13))
    {
      (*(v14 + 8))(v12, v13);
    }

    v15 = *(type metadata accessor for AssociationSelectionPhaseSpecs() + 20);
    v16 = sub_258B00AA4();
    (*(*(v16 - 8) + 8))(&v12[v15], v16);
  }

  else
  {
    v17 = *v12;
  }

  v18 = (v5 + v1[8]);
  v19 = *v18;

  v20 = v18[1];

  return swift_deallocObject();
}

uint64_t sub_258A8C968(uint64_t *a1)
{
  v3 = *(type metadata accessor for ShowAllLabelsPicker() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_258A8B4CC(a1, v4, v5, v6);
}

void sub_258A8C9DC()
{
  if (!qword_27F970568)
  {
    type metadata accessor for Label(255);
    sub_258A8BD58(&qword_27F9704C8, type metadata accessor for Label);
    v0 = sub_258B02D84();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970568);
    }
  }
}

uint64_t objectdestroy_13Tm()
{
  v1 = type metadata accessor for ShowAllLabelsPicker();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *(v3 + 1);

  v5 = *(v3 + 2);

  v6 = *(v3 + 3);

  v7 = v1[6];
  sub_258A896FC(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_258B008A4();
    (*(*(v8 - 8) + 8))(&v3[v7], v8);
  }

  else
  {
    v9 = *&v3[v7];
  }

  v10 = &v3[v1[7]];
  sub_258A896FC(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_258B01504();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v10, 1, v11))
    {
      (*(v12 + 8))(v10, v11);
    }

    v13 = *(type metadata accessor for AssociationSelectionPhaseSpecs() + 20);
    v14 = sub_258B00AA4();
    (*(*(v14 - 8) + 8))(&v10[v13], v14);
  }

  else
  {
    v15 = *v10;
  }

  v16 = &v3[v1[8]];
  v17 = *v16;

  v18 = *(v16 + 1);

  return swift_deallocObject();
}

uint64_t sub_258A8CD80(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ShowAllLabelsPicker() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_258A8CE14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A8CE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, char *), uint64_t (*a7)(char *))
{
  v10 = a5(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v15 - v12;
  a6(a1, &v15 - v12);
  return a7(v13);
}

uint64_t sub_258A8CF30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258A8CF98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_258A8CFF0()
{
  result = qword_27F970570;
  if (!qword_27F970570)
  {
    sub_258A8B99C(255, &qword_27F970558, sub_258A8C564, sub_2589D3448);
    sub_258A8BD58(&qword_27F970578, sub_258A8C564);
    sub_258A8BD58(&qword_27F96CF60, sub_2589D3448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970570);
  }

  return result;
}

uint64_t sub_258A8D12C()
{
  type metadata accessor for MentalHealthUIRepresentative();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_258B020D4();
  sub_258B01D64();
}

unint64_t sub_258A8D1E0()
{
  result = qword_27F970580;
  if (!qword_27F970580)
  {
    sub_258A8D260();
    sub_2589DC6E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970580);
  }

  return result;
}

void sub_258A8D260()
{
  if (!qword_27F970588)
  {
    sub_258B017D4();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970588);
    }
  }
}

uint64_t type metadata accessor for AssessmentFeatureStatus()
{
  result = qword_280DF8D10;
  if (!qword_280DF8D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258A8D334()
{
  v1 = v0;
  sub_2589F5990();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  sub_2589F592C(v1, &v22 - v7);
  v9 = sub_258B002E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v8, 1, v9) == 1)
  {
    v12 = v8;
  }

  else
  {
    v13 = *MEMORY[0x277CCBE68];
    v14 = sub_258B002F4();
    v15 = *(v10 + 8);
    v15(v8, v9);
    v16 = [v14 areAllRequirementsSatisfied];

    if ((v16 & 1) == 0)
    {
      goto LABEL_7;
    }

    sub_2589F592C(v1, v6);
    if (v11(v6, 1, v9) != 1)
    {
      v19 = *MEMORY[0x277CCBEA0];
      v20 = sub_258B002F4();
      v15(v6, v9);
      v21 = *MEMORY[0x277CCBF38];
      v17 = sub_258B03094();

      return v17 & 1;
    }

    v12 = v6;
  }

  sub_258A8D51C(v12);
LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_258A8D51C(uint64_t a1)
{
  sub_2589F5990();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t HKMHDaySummary.representativeStateOfMind.getter()
{
  v1 = v0;
  v2 = sub_258B00084();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = [v1 dailyStateOfMind];
  if (v10)
  {

    return [v1 dailyStateOfMind];
  }

  v12 = [v1 momentaryStatesOfMind];
  v13 = sub_258A76744();
  v14 = sub_258B02C74();

  if (!(v14 >> 62))
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_24:

    return 0;
  }

  result = sub_258B032B4();
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_6:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x259C937C0](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_29;
    }

    v15 = *(v14 + 32);
  }

  v12 = v15;

  v16 = [v1 momentaryStatesOfMind];
  v13 = sub_258B02C74();

  if (!(v13 >> 62))
  {
    v17 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_11;
    }

LABEL_27:

    return 0;
  }

  v17 = sub_258B032B4();
  if (!v17)
  {
    goto LABEL_27;
  }

LABEL_11:
  v18 = __OFSUB__(v17, 1);
  result = v17 - 1;
  if (v18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
LABEL_30:
    v19 = MEMORY[0x259C937C0](result, v13);
    goto LABEL_16;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (result >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v19 = *(v13 + 8 * result + 32);
LABEL_16:
  v20 = v19;

  v21 = [v12 startDate];
  sub_258B00034();

  v22 = [v20 startDate];
  sub_258B00034();

  sub_258A8D9A4();
  v23 = sub_258B02A54();
  v24 = *(v3 + 8);
  v24(v7, v2);
  v24(v9, v2);
  if (v23)
  {
    v25 = v12;
  }

  else
  {
    v25 = v20;
  }

  if (v23)
  {
    v26 = v20;
  }

  else
  {
    v26 = v12;
  }

  return v26;
}

void (*sub_258A8D89C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C937C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_258A8D91C;
  }

  __break(1u);
  return result;
}

void (*sub_258A8D924(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C937C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_258A8D9FC;
  }

  __break(1u);
  return result;
}

unint64_t sub_258A8D9A4()
{
  result = qword_27F96F0D8;
  if (!qword_27F96F0D8)
  {
    sub_258B00084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F0D8);
  }

  return result;
}

uint64_t _s9LogButtonVMa()
{
  result = qword_27F970590;
  if (!qword_27F970590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A8DA74()
{
  sub_258A8E1A4(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2589C0D10();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_258A8DB4C(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v32[-v8];
  v10 = (v1 + *(_s9LogButtonVMa() + 24));
  v11 = *v10;
  v12 = v10[1];
  v33 = v1;
  sub_258A3A940();
  sub_258A3AD0C();

  sub_258B02174();
  sub_258AC1060(v9);
  sub_258A8DF80(v9);
  sub_258A8DFDC();
  v14 = (a1 + *(v13 + 36));
  v15 = *(sub_258B00C34() + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_258B010C4();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  __asm { FMOV            V0.2D, #26.0 }

  *v14 = _Q0;
  sub_258AC1060(v7);
  sub_258A8DF80(v7);
  v23 = sub_258B01FC4();
  KeyPath = swift_getKeyPath();
  sub_258A8E10C();
  v26 = &v14[*(v25 + 36)];
  *v26 = KeyPath;
  v26[1] = v23;
  v27 = sub_258B024F4();
  v29 = v28;
  sub_2589D3340();
  v31 = &v14[*(v30 + 36)];
  *v31 = v27;
  v31[1] = v29;
}

uint64_t sub_258A8DD2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(_s9LogButtonVMa() + 20));
  v9 = v8[1];
  v45 = *v8;
  v46 = v9;
  sub_2589BFF58();
  sub_258B003E4();
  v10 = sub_258B01B44();
  v12 = v11;
  v14 = v13;
  sub_258AC1060(v7);
  sub_258A8DF80(v7);
  sub_258B01974();
  v15 = sub_258B01A94();
  v17 = v16;
  v19 = v18;
  v42[1] = v20;
  sub_2589BFFAC(v10, v12, v14 & 1);

  sub_258AC1060(v7);
  sub_258A8DF80(v7);
  v45 = sub_258B02014();
  v21 = sub_258B01AB4();
  v43 = v22;
  v44 = v21;
  LOBYTE(v10) = v23;
  v25 = v24;
  sub_2589BFFAC(v15, v17, v19 & 1);

  v26 = sub_258B018D4();
  sub_258AC1060(v7);
  sub_258A8DF80(v7);
  sub_258B00654();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v10 & 1;
  v48 = v10 & 1;
  v47 = 0;
  LOBYTE(v10) = sub_258B01864();
  sub_258AC1060(v7);
  sub_258A8DF80(v7);
  result = sub_258B00654();
  v37 = v43;
  *a2 = v44;
  *(a2 + 8) = v37;
  *(a2 + 16) = v35;
  *(a2 + 24) = v25;
  *(a2 + 32) = v26;
  *(a2 + 40) = v28;
  *(a2 + 48) = v30;
  *(a2 + 56) = v32;
  *(a2 + 64) = v34;
  *(a2 + 72) = 0;
  *(a2 + 80) = v10;
  *(a2 + 88) = v38;
  *(a2 + 96) = v39;
  *(a2 + 104) = v40;
  *(a2 + 112) = v41;
  *(a2 + 120) = 0;
  return result;
}

uint64_t sub_258A8DF80(uint64_t a1)
{
  v2 = type metadata accessor for StateOfMindTimeline.Styles(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A8DFDC()
{
  if (!qword_27F9705A0)
  {
    sub_258A8E044(255);
    sub_2589D3340();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9705A0);
    }
  }
}

void sub_258A8E08C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_258A8E10C()
{
  if (!qword_27F96CF40)
  {
    sub_258B00C34();
    sub_258A8E1A4(255, &qword_27F96CF48, sub_2589D5EAC, MEMORY[0x277CE0860]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CF40);
    }
  }
}

void sub_258A8E1A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_258A8E208()
{
  result = qword_27F9705B0;
  if (!qword_27F9705B0)
  {
    sub_258A8DFDC();
    sub_258A8E2E8(&qword_27F9705B8, sub_258A8E044);
    sub_258A8E2E8(&qword_27F96CFA0, sub_2589D3340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9705B0);
  }

  return result;
}

uint64_t sub_258A8E2E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s16EntryLimitedViewVMa()
{
  result = qword_27F9705C0;
  if (!qword_27F9705C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A8E3A4()
{
  sub_258A8ECB0(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for StateOfMindTimeline.DaySummary();
    if (v1 <= 0x3F)
    {
      sub_2589C0D10();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id sub_258A8E48C@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v2 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v75 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v76 = &v70 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v70 - v8;
  v10 = _s13EntryBaseViewVMa();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A8EB48();
  v16 = v15;
  v17 = *(*(v15 - 1) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A8EC7C(0);
  v74 = v20;
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v78 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = _s16EntryLimitedViewVMa();
  v24 = v1 + *(v23 + 20);
  sub_258A8ED14(v24, v14 + *(v11 + 28), type metadata accessor for StateOfMindTimeline.DaySummary);
  *v14 = swift_getKeyPath();
  sub_258A8ECB0(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *(v14 + *(v11 + 32)) = 0;
  v25 = (v1 + *(v23 + 24));
  v27 = *v25;
  v26 = v25[1];
  sub_258AC1060(v9);
  sub_258A8ED7C(v9, type metadata accessor for StateOfMindTimeline.Styles);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v29 = result;
    v30 = [result isiPad];

    if (v30)
    {
      v31 = 490.0;
    }

    else
    {
      v31 = 462.0;
    }

    v32 = *(v24 + *(type metadata accessor for StateOfMindTimeline.DaySummary() + 36));
    *v19 = v31;
    v19[1] = v31;
    *(v19 + 16) = 0;
    *(v19 + 3) = v27;
    *(v19 + 4) = v26;
    sub_258A8ED14(v14, v19 + v16[15], _s13EntryBaseViewVMa);
    v33 = (v19 + v16[16]);
    *v33 = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v34 = _s14ShowMoreButtonVMa();
    v35 = (v33 + *(v34 + 20));
    *v35 = v27;
    v35[1] = v26;
    *(v33 + *(v34 + 24)) = v32;
    v36 = v19 + v16[17];
    v85 = 0;
    swift_retain_n();
    sub_258B003E4();
    sub_258B02114();
    v37 = v80;
    *v36 = aBlock;
    *(v36 + 1) = v37;
    sub_258A8ED7C(v14, _s13EntryBaseViewVMa);
    v38 = v76;
    sub_258AC1060(v76);
    sub_258A8ED7C(v38, type metadata accessor for StateOfMindTimeline.Styles);
    v39 = (v78 + *(v74 + 36));
    v74 = sub_258B00C34();
    v40 = *(v74 + 20);
    v72 = *MEMORY[0x277CE0118];
    v41 = v72;
    v42 = sub_258B010C4();
    v43 = *(v42 - 8);
    v71 = *(v43 + 104);
    v73 = v43 + 104;
    v71(&v39[v40], v41, v42);
    __asm { FMOV            V0.2D, #26.0 }

    v70 = _Q0;
    *v39 = _Q0;
    v49 = v75;
    sub_258AC1060(v75);
    sub_258A8ED7C(v49, type metadata accessor for StateOfMindTimeline.Styles);
    v50 = objc_opt_self();
    v51 = [v50 secondarySystemGroupedBackgroundColor];
    v52 = [v50 tertiarySystemGroupedBackgroundColor];
    v53 = swift_allocObject();
    v53[2] = 0;
    v53[3] = v52;
    v53[4] = 0;
    v53[5] = v51;
    v54 = objc_allocWithZone(MEMORY[0x277D75348]);
    v83 = sub_2589C69C4;
    v84 = v53;
    aBlock = MEMORY[0x277D85DD0];
    v80 = 1107296256;
    v81 = sub_258A52B54;
    v82 = &block_descriptor_11;
    v55 = _Block_copy(&aBlock);
    [v54 initWithDynamicProvider_];
    _Block_release(v55);

    v56 = sub_258B01F94();
    KeyPath = swift_getKeyPath();
    sub_258A8E10C();
    v59 = &v39[*(v58 + 36)];
    *v59 = KeyPath;
    v59[1] = v56;
    v60 = sub_258B024F4();
    v62 = v61;
    sub_2589D3340();
    v64 = &v39[*(v63 + 36)];
    *v64 = v60;
    v64[1] = v62;
    v65 = v78;
    sub_258A8EE68(v19, v78, sub_258A8EB48);
    sub_258AC1060(v38);
    sub_258A8ED7C(v38, type metadata accessor for StateOfMindTimeline.Styles);
    sub_258A8EDF4(0, &qword_27F9705E0, sub_258A8EC7C, sub_2589C54E4);
    v67 = v77;
    v68 = (v77 + *(v66 + 36));
    v71(&v68[*(v74 + 20)], v72, v42);
    *v68 = v70;
    sub_2589C54E4();
    *&v68[*(v69 + 36)] = 256;
    return sub_258A8EE68(v65, v67, sub_258A8EC7C);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_258A8EB48()
{
  if (!qword_27F9705D0)
  {
    _s13EntryBaseViewVMa();
    _s14ShowMoreButtonVMa();
    sub_258A8EC34(&qword_27F96F670, _s13EntryBaseViewVMa);
    sub_258A8EC34(&qword_27F96CA60, _s14ShowMoreButtonVMa);
    v0 = type metadata accessor for UnlimitedHeightVStackWithFooter();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9705D0);
    }
  }
}

uint64_t sub_258A8EC34(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258A8ECB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A8ED14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A8ED7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_258A8EDF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_258A8EE68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_258A8EED0()
{
  result = qword_27F9705E8;
  if (!qword_27F9705E8)
  {
    sub_258A8EDF4(255, &qword_27F9705E0, sub_258A8EC7C, sub_2589C54E4);
    sub_258A8EFB0();
    sub_258A8EC34(&qword_27F96CBF0, sub_2589C54E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9705E8);
  }

  return result;
}

unint64_t sub_258A8EFB0()
{
  result = qword_27F9705F0;
  if (!qword_27F9705F0)
  {
    sub_258A8EC7C(255);
    sub_258A8EC34(&qword_27F9705F8, sub_258A8EB48);
    sub_258A8EC34(&qword_27F96CFA0, sub_2589D3340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9705F0);
  }

  return result;
}

uint64_t sub_258A8F090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_258A10490();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A97144(a3, v12, sub_258A10490);
  v13 = sub_258B02D44();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_258A9677C(v12, sub_258A10490);
  }

  else
  {
    sub_258B02D34();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_258B02CE4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_258B02B54() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_258A9677C(a3, sub_258A10490);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_258A9677C(a3, sub_258A10490);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_258A8F398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_258A10490();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A97144(a3, v12, sub_258A10490);
  v13 = sub_258B02D44();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_258A9677C(v12, sub_258A10490);
  }

  else
  {
    sub_258B02D34();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_258B02CE4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v27[0] = a3;
      v21 = sub_258B02B54() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_258A9748C(0, &qword_27F970618, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_258A9677C(v27[0], sub_258A10490);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_258A9677C(a3, sub_258A10490);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_258A9748C(0, &qword_27F970618, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_258A8F6FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();
}

uint64_t sub_258A8F7D8(uint64_t a1)
{
  sub_2589F5990();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-v7];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = sub_258B002E4();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v8, a1, v10);
    (*(v11 + 56))(v8, 0, 1, v10);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258A97144(v8, v6, sub_2589F5990);

    sub_258B00574();
    sub_258A9677C(v8, sub_2589F5990);
    swift_getKeyPath();
    swift_getKeyPath();
    v12[7] = 2;
    return sub_258B00574();
  }

  return result;
}

id sub_258A8F9D8()
{
  v0 = sub_258B002E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589F5990();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  if ((*(v1 + 48))(v8, 1, v0))
  {
    sub_258A9677C(v8, sub_2589F5990);
    return 0;
  }

  else
  {
    (*(v1 + 16))(v4, v8, v0);
    sub_258A9677C(v8, sub_2589F5990);
    v10 = *MEMORY[0x277CCBE70];
    v11 = sub_258B002F4();
    (*(v1 + 8))(v4, v0);
    v12 = [v11 areAllRequirementsSatisfied];

    return v12;
  }
}

id sub_258A8FBE0()
{
  sub_2589F5990();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AssessmentFeatureStatus();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  sub_258A97144(v7, v3, sub_2589F5990);
  v8 = sub_258B002E4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    sub_258A9677C(v7, type metadata accessor for AssessmentFeatureStatus);
    sub_258A9677C(v3, sub_2589F5990);
    return 0;
  }

  else
  {
    v11 = *MEMORY[0x277CCBE68];
    v12 = sub_258B002F4();
    (*(v9 + 8))(v3, v8);
    v13 = [v12 areAllRequirementsSatisfied];

    sub_258A9677C(v7, type metadata accessor for AssessmentFeatureStatus);
    return v13;
  }
}

uint64_t sub_258A8FE00(char a1)
{
  v2 = v1;
  v4 = *v1;
  sub_258A10490();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  v14[15] = a1;

  sub_258B00574();
  v9 = sub_258B02D44();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_258B02D24();

  v10 = sub_258B02D14();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = v2;
  *(v11 + 40) = a1;
  *(v11 + 48) = v4;
  sub_258A8F090(0, 0, v8, &unk_258B32D70, v11);
}

uint64_t sub_258A8FF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 136) = a5;
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  v7 = sub_258B00384();
  *(v6 + 40) = v7;
  v8 = *(v7 - 8);
  *(v6 + 48) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 56) = swift_task_alloc();
  sub_258A9748C(0, &qword_27F970620, MEMORY[0x277D839B0], MEMORY[0x277D113A8]);
  *(v6 + 64) = v10;
  v11 = *(v10 - 8);
  *(v6 + 72) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  sub_258B02D24();
  *(v6 + 88) = sub_258B02D14();
  v14 = sub_258B02CE4();
  *(v6 + 96) = v14;
  *(v6 + 104) = v13;

  return MEMORY[0x2822009F8](sub_258A90114, v14, v13);
}

uint64_t sub_258A90114()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);
  v3 = v2[6];
  __swift_project_boxed_opaque_existential_1Tm(v2 + 2, v2[5]);
  *(v0 + 112) = sub_258B00304();
  ObjectType = swift_getObjectType();
  sub_258B02EF4();
  v5 = *(MEMORY[0x277D113C8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_258A901FC;
  v7 = *(v0 + 80);
  v8 = *(v0 + 136);

  return MEMORY[0x28216A558](v8, v7, ObjectType);
}

uint64_t sub_258A901FC()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 128) = v0;

  (*(v6 + 8))(v5, v7);
  swift_unknownObjectRelease();
  v9 = *(v2 + 104);
  v10 = *(v2 + 96);
  if (v0)
  {
    v11 = sub_258A9042C;
  }

  else
  {
    v11 = sub_258A903B8;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_258A903B8()
{
  v1 = v0[11];

  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_258A9042C()
{
  v37 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 56);
  v4 = *(v0 + 24);

  sub_258B00364();

  v5 = v1;
  v6 = sub_258B00374();
  v7 = sub_258B02E84();

  if (os_log_type_enabled(v6, v7))
  {
    v32 = *(v0 + 128);
    v33 = *(v0 + 48);
    v8 = *(v0 + 32);
    v34 = *(v0 + 40);
    v35 = *(v0 + 56);
    v9 = *(v0 + 24);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36 = v11;
    *v10 = 136446722;
    v12 = sub_258B035A4();
    v14 = sub_2589F1F78(v12, v13, &v36);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    v15 = v9[6];
    __swift_project_boxed_opaque_existential_1Tm(v9 + 2, v9[5]);
    v16 = sub_258B00324();
    v17 = sub_258B02B14();
    v19 = v18;

    v20 = sub_2589F1F78(v17, v19, &v36);

    *(v10 + 14) = v20;
    *(v10 + 22) = 2082;
    *(v0 + 16) = v32;
    v21 = v32;
    sub_2589F3AFC();
    v22 = sub_258B02B44();
    v24 = sub_2589F1F78(v22, v23, &v36);

    *(v10 + 24) = v24;
    _os_log_impl(&dword_2589A1000, v6, v7, "[%{public}s:%{public}s] Error setting feature setting: %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v11, -1, -1);
    MEMORY[0x259C945C0](v10, -1, -1);

    (*(v33 + 8))(v35, v34);
  }

  else
  {
    v26 = *(v0 + 48);
    v25 = *(v0 + 56);
    v27 = *(v0 + 40);

    (*(v26 + 8))(v25, v27);
  }

  v28 = *(v0 + 80);
  v29 = *(v0 + 56);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t AssessmentFeatureModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel__featureStatus;
  sub_258A95D18(0, &qword_280DF8970, sub_2589F5990, MEMORY[0x277CBCED0]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel__locallyUpdatedEnabledSetting;
  sub_258A95D7C(0, &qword_280DF8960, &qword_280DF8938, MEMORY[0x277D839B0]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel_subscriptions);

  return v0;
}

uint64_t AssessmentFeatureModel.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel__featureStatus;
  sub_258A95D18(0, &qword_280DF8970, sub_2589F5990, MEMORY[0x277CBCED0]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel__locallyUpdatedEnabledSetting;
  sub_258A95D7C(0, &qword_280DF8960, &qword_280DF8938, MEMORY[0x277D839B0]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel_subscriptions);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258A90914()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  return v1;
}

uint64_t sub_258A9098C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AssessmentFeatureModel(0);
  result = sub_258B004E4();
  *a1 = result;
  return result;
}

uint64_t sub_258A909E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  return v1;
}

uint64_t sub_258A90A6C(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v17[1] = a1;
  sub_258A96F20(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A96F54();
  v18 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[6];
  __swift_project_boxed_opaque_existential_1Tm(v2 + 2, v2[5]);
  v20 = sub_258B00334();
  sub_2589F4488(0, &qword_280DF8F98, 0x277D85C78);
  v13 = sub_258B02F54();
  v21 = v13;
  v14 = sub_258B02F44();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  sub_258A97024();
  sub_258A970FC(&qword_280DF8980, 255, sub_258A97024);
  sub_258A9708C();
  sub_258B005B4();
  sub_258A9677C(v6, sub_258A96F20);

  swift_allocObject();
  swift_weakInit();
  sub_258A970FC(&qword_280DF8990, 255, sub_258A96F54);
  v15 = v18;
  sub_258B005D4();

  (*(v8 + 8))(v11, v15);
  swift_beginAccess();
  sub_258B004C4();
  swift_endAccess();
}

uint64_t sub_258A90D6C(uint64_t a1)
{
  sub_2589F5990();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = sub_258B002E4();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v8, a1, v10);
    (*(v11 + 56))(v8, 0, 1, v10);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258A97144(v8, v6, sub_2589F5990);
    swift_retain_n();
    sub_258B00574();
    sub_258A9677C(v8, sub_2589F5990);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v13) = 2;
    sub_258B00574();
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = 0;
    v14 = 1;

    sub_258B00574();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v13) = 2;
    return sub_258B00574();
  }

  return result;
}

uint64_t sub_258A90FF4()
{
  sub_2589F5990();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PeriodicAssessmentPromptsFeatureStatus();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  if (v12 != 1)
  {
    return v11;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v8 = sub_258B002E4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_2589F59F0(v3, v7);
  v9 = sub_2589F5AF0();
  sub_258A9677C(v7, type metadata accessor for PeriodicAssessmentPromptsFeatureStatus);
  return v9;
}

uint64_t sub_258A911C4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_258A10490();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = a1;
  v15 = 0;

  sub_258B00574();
  v9 = sub_258B02D44();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_258B02D24();

  v10 = sub_258B02D14();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v2;
  v11[5] = a1;
  v11[6] = v4;
  sub_258A8F090(0, 0, v8, &unk_258B32D80, v11);
}

uint64_t sub_258A91360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_258B00384();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  sub_258A9748C(0, &qword_280DF8910, MEMORY[0x277D83B88], MEMORY[0x277D113A8]);
  v6[9] = v10;
  v11 = *(v10 - 8);
  v6[10] = v11;
  v12 = *(v11 + 64) + 15;
  v6[11] = swift_task_alloc();
  sub_258B02D24();
  v6[12] = sub_258B02D14();
  v14 = sub_258B02CE4();
  v6[13] = v14;
  v6[14] = v13;

  return MEMORY[0x2822009F8](sub_258A914D8, v14, v13);
}

uint64_t sub_258A914D8()
{
  v1 = v0[11];
  v2 = v0[3];
  v3 = v2[6];
  __swift_project_boxed_opaque_existential_1Tm(v2 + 2, v2[5]);
  v0[15] = sub_258B00304();
  ObjectType = swift_getObjectType();
  v5 = *MEMORY[0x277D27FF8];
  sub_258B02B14();
  sub_258B02EE4();
  v6 = *(MEMORY[0x277D113D0] + 4);
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_258A915D8;
  v8 = v0[11];
  v9 = v0[4];

  return MEMORY[0x28216A560](v9, v8, ObjectType);
}

uint64_t sub_258A915D8()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 136) = v0;

  (*(v6 + 8))(v5, v7);
  swift_unknownObjectRelease();
  v9 = *(v2 + 112);
  v10 = *(v2 + 104);
  if (v0)
  {
    v11 = sub_258A91808;
  }

  else
  {
    v11 = sub_258A91794;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_258A91794()
{
  v1 = v0[12];

  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_258A91808()
{
  v37 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  v4 = *(v0 + 24);

  sub_258B00364();

  v5 = v1;
  v6 = sub_258B00374();
  v7 = sub_258B02E84();

  if (os_log_type_enabled(v6, v7))
  {
    v32 = *(v0 + 136);
    v33 = *(v0 + 56);
    v8 = *(v0 + 40);
    v34 = *(v0 + 48);
    v35 = *(v0 + 64);
    v9 = *(v0 + 24);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36 = v11;
    *v10 = 136446722;
    v12 = sub_258B035A4();
    v14 = sub_2589F1F78(v12, v13, &v36);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    v15 = v9[6];
    __swift_project_boxed_opaque_existential_1Tm(v9 + 2, v9[5]);
    v16 = sub_258B00324();
    v17 = sub_258B02B14();
    v19 = v18;

    v20 = sub_2589F1F78(v17, v19, &v36);

    *(v10 + 14) = v20;
    *(v10 + 22) = 2082;
    *(v0 + 16) = v32;
    v21 = v32;
    sub_2589F3AFC();
    v22 = sub_258B02B44();
    v24 = sub_2589F1F78(v22, v23, &v36);

    *(v10 + 24) = v24;
    _os_log_impl(&dword_2589A1000, v6, v7, "[%{public}s:%{public}s] Error setting feature setting: %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v11, -1, -1);
    MEMORY[0x259C945C0](v10, -1, -1);

    (*(v33 + 8))(v35, v34);
  }

  else
  {
    v26 = *(v0 + 56);
    v25 = *(v0 + 64);
    v27 = *(v0 + 48);

    (*(v26 + 8))(v25, v27);
  }

  v28 = *(v0 + 88);
  v29 = *(v0 + 64);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_258A91ACC(uint64_t *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  v11 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = a2(v13, v7, v8, v9);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v15;
}

uint64_t sub_258A91BF0(uint64_t *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t sub_258A91CE4()
{
  v1 = OBJC_IVAR____TtC14MentalHealthUI37PeriodicAssessmentPromptsFeatureModel__locallyUpdatedCadenceInDays;
  sub_258A95D7C(0, &qword_280DF8958, &qword_280DF8928, MEMORY[0x277D83B88]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14MentalHealthUI37PeriodicAssessmentPromptsFeatureModel__locallyUpdatedIsPeriodicPromptSettingOn;
  sub_258A95D7C(0, &qword_280DF8960, &qword_280DF8938, MEMORY[0x277D839B0]);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t PeriodicAssessmentPromptsFeatureModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel__featureStatus;
  sub_258A95D18(0, &qword_280DF8970, sub_2589F5990, MEMORY[0x277CBCED0]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel__locallyUpdatedEnabledSetting;
  sub_258A95D7C(0, &qword_280DF8960, &qword_280DF8938, MEMORY[0x277D839B0]);
  v5 = v4;
  v6 = *(*(v4 - 8) + 8);
  v6(v0 + v3, v4);
  v7 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel_subscriptions);

  v8 = OBJC_IVAR____TtC14MentalHealthUI37PeriodicAssessmentPromptsFeatureModel__locallyUpdatedCadenceInDays;
  sub_258A95D7C(0, &qword_280DF8958, &qword_280DF8928, MEMORY[0x277D83B88]);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v6(v0 + OBJC_IVAR____TtC14MentalHealthUI37PeriodicAssessmentPromptsFeatureModel__locallyUpdatedIsPeriodicPromptSettingOn, v5);
  return v0;
}

uint64_t PeriodicAssessmentPromptsFeatureModel.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel__featureStatus;
  sub_258A95D18(0, &qword_280DF8970, sub_2589F5990, MEMORY[0x277CBCED0]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel__locallyUpdatedEnabledSetting;
  sub_258A95D7C(0, &qword_280DF8960, &qword_280DF8938, MEMORY[0x277D839B0]);
  v5 = v4;
  v6 = *(*(v4 - 8) + 8);
  v6(v0 + v3, v4);
  v7 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel_subscriptions);

  v8 = OBJC_IVAR____TtC14MentalHealthUI37PeriodicAssessmentPromptsFeatureModel__locallyUpdatedCadenceInDays;
  sub_258A95D7C(0, &qword_280DF8958, &qword_280DF8928, MEMORY[0x277D83B88]);
  v10 = v9;
  v11 = *(*(v9 - 8) + 8);

  v11(v0 + v8, v10);
  v6(v0 + OBJC_IVAR____TtC14MentalHealthUI37PeriodicAssessmentPromptsFeatureModel__locallyUpdatedIsPeriodicPromptSettingOn, v5);

  v12 = *(*v0 + 48);
  v13 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *AssessmentsSettingsModel.__allocating_init(healthStore:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0C0] healthStore:a1 currentCountryCode:0];
  v3 = type metadata accessor for PeriodicAssessmentPromptsFeatureModel(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v7 = sub_258A94DC0(v2, v6);
  v8 = *MEMORY[0x277CCC108];
  v9 = objc_allocWithZone(MEMORY[0x277CCD460]);
  v10 = a1;
  v11 = [v9 initWithFeatureIdentifier:v8 healthStore:v10 currentCountryCode:0];
  v12 = type metadata accessor for AssessmentFeatureModel(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v11;
  v17 = sub_258A95368(v16, v15);

  swift_allocObject();
  v18 = sub_258A963D4(v7, v17);

  return v18;
}

void *AssessmentsSettingsModel.__allocating_init(periodicAssessmentPromptsFeatureModel:loggingPatternEscalationsFeatureModel:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_258A963D4(a1, a2);

  return v4;
}

void *AssessmentsSettingsModel.init(periodicAssessmentPromptsFeatureModel:loggingPatternEscalationsFeatureModel:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_258A963D4(a1, a2);

  return v2;
}

uint64_t sub_258A92304()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for AssessmentsSettingsModel();
    sub_258A970FC(&qword_27F96EDD0, v1, type metadata accessor for AssessmentsSettingsModel);
    sub_258B004E4();

    sub_258B00504();
  }

  return result;
}

Swift::Void __swiftcall AssessmentsSettingsModel.onboardToRecommendedPregnancySettings()()
{
  v1 = v0;
  sub_258A10490();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  sub_258A911C4(30);
  sub_258A8FE00(1);
  v7 = sub_258B02D44();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_258B02D24();

  v8 = sub_258B02D14();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v1;
  sub_258A8F090(0, 0, v5, &unk_258B329C8, v9);
}

uint64_t sub_258A924E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_258B00084();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_258B02D24();
  v4[6] = sub_258B02D14();
  v9 = sub_258B02CE4();
  v4[7] = v9;
  v4[8] = v8;

  return MEMORY[0x2822009F8](sub_258A925D8, v9, v8);
}

uint64_t sub_258A925D8()
{
  v1 = v0[5];
  sub_258B00044();
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_258A92678;
  v3 = v0[5];
  v4 = v0[2];

  return AssessmentsSettingsModel.resetPeriodicPromptsTimer(acknowledgmentDate:)(v3);
}

uint64_t sub_258A92678()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 64);
  v7 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_258A927FC, v7, v6);
}

uint64_t sub_258A927FC()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t AssessmentsSettingsModel.resetPeriodicPromptsTimer(acknowledgmentDate:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *v1;
  v3 = sub_258B00384();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  sub_258A95D18(0, &qword_27F970600, MEMORY[0x277CC9578], MEMORY[0x277D113A8]);
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  sub_258B02D24();
  v2[17] = sub_258B02D14();
  v10 = sub_258B02CE4();
  v2[18] = v10;
  v2[19] = v9;

  return MEMORY[0x2822009F8](sub_258A92A0C, v10, v9);
}

uint64_t sub_258A92A0C()
{
  v1 = v0[16];
  sub_258A96718(*(v0[9] + 16) + 16, (v0 + 2));
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
  v0[20] = sub_258B00304();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  ObjectType = swift_getObjectType();
  v4 = *MEMORY[0x277D27FF0];
  sub_258B02B14();
  sub_258B00084();
  sub_258B02EE4();
  v5 = *(MEMORY[0x277D113C0] + 4);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_258A92B44;
  v7 = v0[16];
  v8 = v0[8];

  return MEMORY[0x28216A550](v8, v7, ObjectType);
}

uint64_t sub_258A92B44()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 176) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 152);
  v9 = *(v2 + 144);
  if (v0)
  {
    v10 = sub_258A92D5C;
  }

  else
  {
    v10 = sub_258A92CDC;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_258A92CDC()
{
  v1 = v0[20];
  v2 = v0[17];

  swift_unknownObjectRelease();
  v3 = v0[16];
  v4 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_258A92D5C()
{
  v30 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 104);

  swift_unknownObjectRelease();
  sub_258B00364();
  v5 = v1;
  v6 = sub_258B00374();
  v7 = sub_258B02E84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 176);
    v9 = *(v0 + 96);
    v28 = *(v0 + 104);
    v11 = *(v0 + 80);
    v10 = *(v0 + 88);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136446466;
    v14 = sub_258B035A4();
    v16 = sub_2589F1F78(v14, v15, &v29);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    *(v0 + 56) = v8;
    v17 = v8;
    sub_2589F3AFC();
    v18 = sub_258B02B44();
    v20 = sub_2589F1F78(v18, v19, &v29);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_2589A1000, v6, v7, "[%{public}s] Error setting acknowledgment date: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v13, -1, -1);
    MEMORY[0x259C945C0](v12, -1, -1);

    (*(v9 + 8))(v28, v10);
  }

  else
  {
    v22 = *(v0 + 96);
    v21 = *(v0 + 104);
    v23 = *(v0 + 88);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 128);
  v25 = *(v0 + 104);

  v26 = *(v0 + 8);

  return v26();
}

Swift::Bool __swiftcall AssessmentsSettingsModel.isSetToRecommendedPregnancySettings()()
{
  sub_2589F5990();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PeriodicAssessmentPromptsFeatureStatus();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v10 = sub_258B002E4();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_2589F59F0(v4, v8);
  LOBYTE(v4) = PeriodicAssessmentPromptsFeatureStatus.isSetToRecommendedPregnancySettings()();
  sub_258A9677C(v8, type metadata accessor for PeriodicAssessmentPromptsFeatureStatus);
  return v4 & 1;
}

unint64_t AssessmentsSettingsModel.areSettingsVisible.getter()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (sub_258A8F9D8())
  {
    return 1;
  }

  v4 = *(v1 + 24);
  return sub_258A8F9D8() & 1;
}

uint64_t AssessmentsSettingsModel.isPeriodicPromptsSettingOn.getter()
{
  v1 = type metadata accessor for AssessmentFeatureStatus();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v6 = v9;
  if (v9 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    v6 = sub_258A8D334();
    sub_258A9677C(v4, type metadata accessor for AssessmentFeatureStatus);
  }

  return v6 & 1;
}

uint64_t sub_258A9328C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = AssessmentsSettingsModel.isPeriodicPromptsSettingOn.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_258A932BC(_BYTE *a1, uint64_t *a2)
{
  sub_258A10490();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  v8 = *a2;
  v9 = *(*a2 + 16);
  sub_258A8FE00(a1);
  v10 = sub_258B02D44();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_258B02D24();

  v11 = sub_258B02D14();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = a1;
  *(v12 + 40) = v8;
  sub_258A8F090(0, 0, v7, &unk_258B32D48, v12);
}

uint64_t AssessmentsSettingsModel.isPeriodicPromptsSettingOn.setter(char a1)
{
  v2 = v1;
  sub_258A10490();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  sub_258A8FE00(a1);
  v9 = sub_258B02D44();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_258B02D24();

  v10 = sub_258B02D14();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = a1;
  *(v11 + 40) = v2;
  sub_258A8F090(0, 0, v7, &unk_258B32A70, v11);
}

uint64_t sub_258A93524(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 80) = a4;
  v6 = sub_258B00084();
  *(v5 + 24) = v6;
  v7 = *(v6 - 8);
  *(v5 + 32) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 40) = swift_task_alloc();
  sub_258B02D24();
  *(v5 + 48) = sub_258B02D14();
  v10 = sub_258B02CE4();
  *(v5 + 56) = v10;
  *(v5 + 64) = v9;

  return MEMORY[0x2822009F8](sub_258A9361C, v10, v9);
}

uint64_t sub_258A9361C()
{
  if (*(v0 + 80) == 1)
  {
    v1 = *(v0 + 40);
    sub_258B00044();
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_258A93708;
    v3 = *(v0 + 40);
    v4 = *(v0 + 16);

    return AssessmentsSettingsModel.resetPeriodicPromptsTimer(acknowledgmentDate:)(v3);
  }

  else
  {
    v6 = *(v0 + 48);

    v7 = *(v0 + 40);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_258A93708()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 64);
  v7 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_258A9388C, v7, v6);
}

uint64_t sub_258A9388C()
{
  v1 = v0[6];

  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

void (*AssessmentsSettingsModel.isPeriodicPromptsSettingOn.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  sub_258A10490();
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v4);
  }

  *(a1 + 8) = v5;
  *(a1 + 16) = AssessmentsSettingsModel.isPeriodicPromptsSettingOn.getter() & 1;
  return sub_258A9397C;
}

void sub_258A9397C(uint64_t *a1, char a2)
{
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(*a1 + 16);
  sub_258A8FE00(v5);
  v7 = sub_258B02D44();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_258B02D24();

  v8 = sub_258B02D14();
  v11 = a1;
  v9 = *a1;
  v10 = v11[1];
  if (a2)
  {
    v12 = &unk_258B32A78;
  }

  else
  {
    v12 = &unk_258B32A80;
  }

  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v8;
  *(v13 + 24) = v14;
  *(v13 + 32) = v5;
  *(v13 + 40) = v9;
  sub_258A8F090(0, 0, v10, v12, v13);

  free(v10);
}

uint64_t sub_258A93AD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = sub_258A90FF4();
  *a2 = result;
  return result;
}

uint64_t sub_258A93B08(uint64_t *a1, uint64_t *a2)
{
  sub_258A10490();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *a2;
  v10 = *(*a2 + 16);
  sub_258A911C4(v8);
  v11 = sub_258B02D44();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  sub_258B02D24();

  v12 = sub_258B02D14();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v9;
  sub_258A8F090(0, 0, v7, &unk_258B32D40, v13);
}

uint64_t AssessmentsSettingsModel.periodicAssessmentAlertCadence.setter(uint64_t a1)
{
  v2 = v1;
  sub_258A10490();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  sub_258A911C4(a1);
  v9 = sub_258B02D44();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_258B02D24();

  v10 = sub_258B02D14();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v2;
  sub_258A8F090(0, 0, v7, &unk_258B32A90, v11);
}

uint64_t sub_258A93D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_258B00084();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_258B02D24();
  v4[6] = sub_258B02D14();
  v9 = sub_258B02CE4();
  v4[7] = v9;
  v4[8] = v8;

  return MEMORY[0x2822009F8](sub_258A93E58, v9, v8);
}

uint64_t sub_258A93E58()
{
  v1 = v0[5];
  sub_258B00044();
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_258A93EF8;
  v3 = v0[5];
  v4 = v0[2];

  return AssessmentsSettingsModel.resetPeriodicPromptsTimer(acknowledgmentDate:)(v3);
}

uint64_t sub_258A93EF8()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 64);
  v7 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_258A97628, v7, v6);
}

void (*AssessmentsSettingsModel.periodicAssessmentAlertCadence.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  sub_258A10490();
  v4 = *(*(v3 - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v4);
  }

  v6 = *(v1 + 16);
  a1[2] = v5;
  a1[3] = v6;
  *a1 = sub_258A90FF4();
  return sub_258A94104;
}

void sub_258A94104(uint64_t *a1, char a2)
{
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[1];
  sub_258A911C4(*a1);
  v7 = sub_258B02D44();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_258B02D24();

  v8 = sub_258B02D14();
  v11 = a1 + 1;
  v9 = a1[1];
  v10 = v11[1];
  if (a2)
  {
    v12 = &unk_258B32A98;
  }

  else
  {
    v12 = &unk_258B32AA0;
  }

  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v8;
  v13[3] = v14;
  v13[4] = v9;
  sub_258A8F090(0, 0, v10, v12, v13);

  free(v10);
}

uint64_t AssessmentsSettingsModel.isLoggingPatternEscalationsSettingOn.getter()
{
  v1 = type metadata accessor for AssessmentFeatureStatus();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v6 = v9;
  if (v9 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_258B00564();

    v6 = sub_258A8D334();
    sub_258A9677C(v4, type metadata accessor for AssessmentFeatureStatus);
  }

  return v6 & 1;
}

uint64_t sub_258A9438C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = AssessmentsSettingsModel.isLoggingPatternEscalationsSettingOn.getter();
  *a2 = result & 1;
  return result;
}

uint64_t (*AssessmentsSettingsModel.isLoggingPatternEscalationsSettingOn.modify(uint64_t a1))(char *a1)
{
  *a1 = v1;
  *(a1 + 8) = AssessmentsSettingsModel.isLoggingPatternEscalationsSettingOn.getter() & 1;
  return sub_258A94458;
}

uint64_t AssessmentsSettingsModel.DisabledMessaging.hashValue.getter()
{
  v1 = *v0;
  sub_258B03514();
  MEMORY[0x259C93B20](v1);
  return sub_258B03554();
}

id AssessmentsSettingsModel.disabledMessaging.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (sub_258A8FBE0() & 1) != 0 || (v5 = *(v1 + 16), result = sub_258A8FBE0(), (result))
  {
    result = sub_258A8FBE0();
    if (result)
    {
      v7 = *(v2 + 16);
      result = sub_258A8FBE0();
      if (result)
      {
        v8 = 3;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  *a1 = v8;
  return result;
}

void *AssessmentsSettingsModel.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t AssessmentsSettingsModel.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_258A94628(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();
}

uint64_t sub_258A946A4(uint64_t a1, uint64_t *a2)
{
  sub_2589F5990();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_258A97144(a1, &v13 - v9, sub_2589F5990);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258A97144(v10, v8, sub_2589F5990);

  sub_258B00574();
  return sub_258A9677C(v10, sub_2589F5990);
}

uint64_t sub_258A947D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_258A94858(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_258B00574();
}

uint64_t sub_258A948DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  *a2 = v5;
  return result;
}

uint64_t sub_258A94958(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_258B00574();
}

uint64_t sub_258A949C8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258A94AC0;

  return v7(a1);
}

uint64_t sub_258A94AC0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_258A94BB8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_258A94CAC;

  return v6(v2 + 32);
}

uint64_t sub_258A94CAC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_258A94DC0(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  sub_258A95D7C(0, &qword_280DF8960, &qword_280DF8938, MEMORY[0x277D839B0]);
  v21 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = MEMORY[0x277D83B88];
  sub_258A95D7C(0, &qword_280DF8958, &qword_280DF8928, MEMORY[0x277D83B88]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v20 - v13;
  v15 = OBJC_IVAR____TtC14MentalHealthUI37PeriodicAssessmentPromptsFeatureModel__locallyUpdatedCadenceInDays;
  v24 = 0;
  v25 = 1;
  v16 = MEMORY[0x277D83D88];
  sub_258A9748C(0, &qword_280DF8928, v8, MEMORY[0x277D83D88]);
  sub_258B00524();
  (*(v11 + 32))(a2 + v15, v14, v10);
  v17 = OBJC_IVAR____TtC14MentalHealthUI37PeriodicAssessmentPromptsFeatureModel__locallyUpdatedIsPeriodicPromptSettingOn;
  v23 = 2;
  sub_258A9748C(0, &qword_280DF8938, MEMORY[0x277D839B0], v16);
  sub_258B00524();
  (*(v4 + 32))(a2 + v17, v7, v21);
  v18 = a2 + OBJC_IVAR____TtC14MentalHealthUI37PeriodicAssessmentPromptsFeatureModel_pregnancyModeSettings;
  *v18 = 30;
  *(v18 + 8) = 1;
  return sub_258A95368(v22, a2);
}

uint64_t sub_258A95014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  sub_258A95D7C(0, &qword_280DF8960, &qword_280DF8938, MEMORY[0x277D839B0]);
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v32 = &v31 - v9;
  sub_258A95D7C(0, &qword_280DF8958, &qword_280DF8928, MEMORY[0x277D83B88]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = &v31 - v15;
  v17 = *(a3 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  (*(v17 + 32))(&v31 - v22, a1, a3);
  v24 = OBJC_IVAR____TtC14MentalHealthUI37PeriodicAssessmentPromptsFeatureModel__locallyUpdatedCadenceInDays;
  v37 = 0;
  v38 = 1;
  v25 = MEMORY[0x277D83D88];
  sub_258A9748C(0, &qword_280DF8928, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
  sub_258B00524();
  (*(v12 + 32))(a2 + v24, v16, v11);
  v26 = OBJC_IVAR____TtC14MentalHealthUI37PeriodicAssessmentPromptsFeatureModel__locallyUpdatedIsPeriodicPromptSettingOn;
  v36 = 2;
  sub_258A9748C(0, &qword_280DF8938, MEMORY[0x277D839B0], v25);
  v27 = v32;
  sub_258B00524();
  (*(v33 + 32))(a2 + v26, v27, v34);
  v28 = a2 + OBJC_IVAR____TtC14MentalHealthUI37PeriodicAssessmentPromptsFeatureModel_pregnancyModeSettings;
  *v28 = 30;
  *(v28 + 8) = 1;
  (*(v17 + 16))(v21, v23, a3);
  v29 = sub_258A95810(v21, a2, a3, v35);
  (*(v17 + 8))(v23, a3);
  return v29;
}

uint64_t sub_258A95368(uint64_t a1, uint64_t a2)
{
  sub_258A95D7C(0, &qword_280DF8960, &qword_280DF8938, MEMORY[0x277D839B0]);
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v34 = v32 - v6;
  sub_258A95D18(0, &qword_280DF8970, sub_2589F5990, MEMORY[0x277CBCED0]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = v32 - v11;
  sub_2589F5990();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v32 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v32 - v21;
  v40 = sub_2589F4488(0, &qword_280DF88F8, 0x277CCD460);
  v41 = MEMORY[0x277D113B8];
  v32[0] = v40;
  v37 = a1;
  v39[0] = a1;
  v23 = OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel__featureStatus;
  v24 = sub_258B002E4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v32[1] = v25 + 56;
  v33 = v26;
  v26(v22, 1, 1, v24);
  sub_258A97144(v22, v20, sub_2589F5990);
  sub_258B00524();
  sub_258A9677C(v22, sub_2589F5990);
  (*(v9 + 32))(a2 + v23, v12, v8);
  v27 = OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel__locallyUpdatedEnabledSetting;
  v38 = 2;
  sub_258A9748C(0, &qword_280DF8938, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
  v28 = v34;
  sub_258B00524();
  (*(v35 + 32))(a2 + v27, v28, v36);
  if (MEMORY[0x277D84F90] >> 62 && sub_258B032B4())
  {
    v29 = sub_258A96144(MEMORY[0x277D84F90]);
  }

  else
  {
    v29 = MEMORY[0x277D84FA0];
  }

  *(a2 + OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel_subscriptions) = v29;
  sub_258A96718(v39, a2 + 16);
  sub_258B00344();
  v33(v17, 0, 1, v24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258A97144(v17, v22, sub_2589F5990);

  sub_258B00574();
  v30 = sub_258A9677C(v17, sub_2589F5990);
  (*(*a2 + 240))(v30);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return a2;
}

uint64_t sub_258A95810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a1;
  sub_258A95D7C(0, &qword_280DF8960, &qword_280DF8938, MEMORY[0x277D839B0]);
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  sub_258A95D18(0, &qword_280DF8970, sub_2589F5990, MEMORY[0x277CBCED0]);
  v38 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  sub_2589F5990();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v37 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v37 - v24;
  v47[3] = a3;
  v47[4] = a4;
  v45 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
  v27 = *(*(a3 - 8) + 32);
  v39 = boxed_opaque_existential_1;
  v28 = v44;
  v44 = a3;
  v27(boxed_opaque_existential_1, v28, a3);
  v29 = OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel__featureStatus;
  v30 = sub_258B002E4();
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v40 = v31 + 56;
  v41 = v32;
  v32(v25, 1, 1, v30);
  sub_258A97144(v25, v23, sub_2589F5990);
  sub_258B00524();
  sub_258A9677C(v25, sub_2589F5990);
  (*(v12 + 32))(a2 + v29, v15, v38);
  v33 = OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel__locallyUpdatedEnabledSetting;
  v46 = 2;
  sub_258A9748C(0, &qword_280DF8938, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
  sub_258B00524();
  (*(v42 + 32))(a2 + v33, v10, v43);
  if (MEMORY[0x277D84F90] >> 62 && sub_258B032B4())
  {
    v34 = sub_258A96144(MEMORY[0x277D84F90]);
  }

  else
  {
    v34 = MEMORY[0x277D84FA0];
  }

  *(a2 + OBJC_IVAR____TtC14MentalHealthUI22AssessmentFeatureModel_subscriptions) = v34;
  sub_258A96718(v47, a2 + 16);
  sub_258B00314();
  v41(v20, 0, 1, v30);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258A97144(v20, v25, sub_2589F5990);

  sub_258B00574();
  v35 = sub_258A9677C(v20, sub_2589F5990);
  (*(*a2 + 240))(v35);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_258A95D18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A95D7C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_258A9748C(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_258B00584();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_258A95E28(uint64_t a1)
{
  v2 = sub_258B00204();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_258A97590();
    v10 = sub_258B03184();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_258A970FC(&qword_27F970648, 255, MEMORY[0x277CC99D0]);
      v18 = sub_258B02A14();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_258A970FC(&unk_27F970650, 255, MEMORY[0x277CC99D0]);
          v25 = sub_258B02AA4();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_258A96144(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_258B032B4();
    if (result)
    {
LABEL_3:
      sub_258A974F8();
      result = sub_258B03184();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_258B032B4();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    result = MEMORY[0x259C937C0](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    v10 = *(v3 + 40);
    sub_258B004D4();
    sub_258A970FC(&qword_27F970630, 255, MEMORY[0x277CBCDA8]);
    result = sub_258B02A14();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_258A970FC(&qword_27F970638, 255, MEMORY[0x277CBCDA8]);
      do
      {
        v23 = *(*(v3 + 48) + 8 * v12);
        result = sub_258B02AA4();
        if (result)
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void *sub_258A963D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (MEMORY[0x277D84F90] >> 62 && sub_258B032B4())
  {
    v6 = sub_258A96144(MEMORY[0x277D84F90]);
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  v3[4] = v6;
  v3[2] = a1;
  v3[3] = a2;
  type metadata accessor for PeriodicAssessmentPromptsFeatureModel(0);
  sub_258A970FC(&qword_280DF8BD0, 255, type metadata accessor for PeriodicAssessmentPromptsFeatureModel);

  sub_258B004E4();
  swift_allocObject();
  swift_weakInit();
  sub_258B00514();

  sub_258B005D4();

  swift_beginAccess();
  sub_258B004C4();
  swift_endAccess();

  type metadata accessor for AssessmentFeatureModel(0);
  sub_258A970FC(&qword_280DF8EC0, 255, type metadata accessor for AssessmentFeatureModel);
  sub_258B004E4();
  swift_allocObject();
  swift_weakInit();

  sub_258B005D4();

  swift_beginAccess();
  sub_258B004C4();
  swift_endAccess();

  return v3;
}

uint64_t sub_258A96664(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258A9762C;

  return sub_258A924E4(a1, v4, v5, v6);
}

uint64_t sub_258A96718(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_258A9677C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A967DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_258A9762C;

  return sub_258A93524(a1, v4, v5, v6, v7);
}

uint64_t sub_258A968A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_258A9762C;

  return sub_258A93D64(a1, v4, v5, v6);
}

unint64_t sub_258A96958()
{
  result = qword_27F970608;
  if (!qword_27F970608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970608);
  }

  return result;
}

void sub_258A969B4()
{
  sub_258A95D18(319, &qword_280DF8970, sub_2589F5990, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_258A95D7C(319, &qword_280DF8960, &qword_280DF8938, MEMORY[0x277D839B0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_258A96B10()
{
  sub_258A95D7C(319, &qword_280DF8958, &qword_280DF8928, MEMORY[0x277D83B88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_258A95D7C(319, &qword_280DF8960, &qword_280DF8938, MEMORY[0x277D839B0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t getEnumTagSinglePayload for AssessmentsSettingsModel.DisabledMessaging(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssessmentsSettingsModel.DisabledMessaging(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_258A96DB0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258A9762C;

  return sub_258A94BB8(a1, v5);
}

uint64_t sub_258A96E68(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2589EEE18;

  return sub_258A94BB8(a1, v5);
}

void sub_258A96F54()
{
  if (!qword_280DF8988)
  {
    sub_258A97024();
    sub_2589F4488(255, &qword_280DF8F98, 0x277D85C78);
    sub_258A970FC(&qword_280DF8980, 255, sub_258A97024);
    sub_258A9708C();
    v0 = sub_258B004A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280DF8988);
    }
  }
}

void sub_258A97024()
{
  if (!qword_280DF8978)
  {
    sub_258B002E4();
    v0 = sub_258B004B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280DF8978);
    }
  }
}

unint64_t sub_258A9708C()
{
  result = qword_280DF8900;
  if (!qword_280DF8900)
  {
    sub_2589F4488(255, &qword_280DF8F98, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DF8900);
  }

  return result;
}

uint64_t sub_258A970FC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258A97144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_258A971F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258A9762C;

  return sub_258A949C8(a1, v5);
}

uint64_t sub_258A972AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2589EEE18;

  return sub_258A8FF9C(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm_21()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_258A973C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_258A9762C;

  return sub_258A91360(a1, v4, v5, v6, v7, v8);
}

void sub_258A9748C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_258A974F8()
{
  if (!qword_27F970628)
  {
    sub_258B004D4();
    sub_258A970FC(&qword_27F970630, 255, MEMORY[0x277CBCDA8]);
    v0 = sub_258B03194();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970628);
    }
  }
}

void sub_258A97590()
{
  if (!qword_27F970640)
  {
    sub_258B00204();
    sub_258A970FC(&qword_27F970648, 255, MEMORY[0x277CC99D0]);
    v0 = sub_258B03194();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970640);
    }
  }
}

uint64_t sub_258A97634@<X0>(uint64_t a1@<X8>)
{
  v21[3] = a1;
  v1 = sub_258B02FC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A6D388();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v21[2] = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v10);
  v21[1] = v21 - v11;
  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];
  v14 = *MEMORY[0x277D76C60];
  sub_258B02FD4();

  sub_258A97AB0(&qword_27F96FD38, MEMORY[0x277CC9DB0]);
  sub_258B005A4();
  v15 = *(v2 + 8);
  v15(v5, v1);
  v16 = [v12 defaultCenter];
  v17 = *MEMORY[0x277D76C48];
  sub_258B02FD4();

  sub_258B005A4();
  v15(v5, v1);
  v18 = [v12 defaultCenter];
  v19 = *MEMORY[0x277D76C50];
  sub_258B02FD4();

  sub_258B005A4();
  v15(v5, v1);
  sub_258A97AB0(&qword_27F96FD40, sub_258A6D388);
  return sub_258B00494();
}

CGFloat sub_258A979B4()
{
  v0 = sub_258AFFBE4();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  v2 = *MEMORY[0x277D76BB8];
  sub_258B02B14();
  sub_258B03154();
  if (!*(v1 + 16) || (v3 = sub_258AD57B4(&v6), (v4 & 1) == 0))
  {

    sub_258A97AF8(&v6);
LABEL_8:
    v7 = 0u;
    v8 = 0u;
    goto LABEL_9;
  }

  sub_2589F44D0(*(v1 + 56) + 32 * v3, &v7);
  sub_258A97AF8(&v6);

  if (!*(&v8 + 1))
  {
LABEL_9:
    sub_258A3F0C0(&v7);
    return 0.0;
  }

  type metadata accessor for CGRect(0);
  if (swift_dynamicCast())
  {
    return CGRectGetHeight(v6);
  }

  return 0.0;
}

uint64_t sub_258A97AB0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258A97B50(unint64_t a1, unint64_t *a2)
{
  v35 = sub_258B029C4();
  v30 = *(v35 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v35);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_25:
    v7 = sub_258B032B4();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      v33 = a1 & 0xFFFFFFFFFFFFFF8;
      v34 = a1 & 0xC000000000000001;
      v29[2] = v30 + 16;
      v31 = (v30 + 8);
      v32 = a1;
      do
      {
        if (v34)
        {
          v11 = MEMORY[0x259C937C0](v8, a1);
        }

        else
        {
          if (v8 >= *(v33 + 16))
          {
            goto LABEL_22;
          }

          v11 = *(a1 + 8 * v8 + 32);
        }

        v12 = v11;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v36 = v8 + 1;
        [v11 dayIndex];
        sub_258B02924();
        v13 = v12;
        v14 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = v6;
        v6 = isUniquelyReferenced_nonNull_native;
        v37 = *a2;
        a1 = v37;
        v17 = a2;
        *a2 = 0x8000000000000000;
        v18 = v16;
        v20 = sub_258AD5860(v16);
        v21 = *(a1 + 16);
        v22 = (v19 & 1) == 0;
        v23 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          goto LABEL_23;
        }

        a2 = v19;
        if (*(a1 + 24) >= v23)
        {
          if ((v6 & 1) == 0)
          {
            sub_258A99C50();
          }

          v6 = v18;
          a1 = v37;
          if (a2)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_258A9952C(v23, v6);
          v6 = v18;
          v24 = sub_258AD5860(v18);
          if ((a2 & 1) != (v25 & 1))
          {
            sub_258B03484();
            __break(1u);
            return;
          }

          v20 = v24;
          a1 = v37;
          if (a2)
          {
LABEL_4:
            v9 = *(a1 + 56);
            v10 = *(v9 + 8 * v20);
            *(v9 + 8 * v20) = v13;

            goto LABEL_5;
          }
        }

        *(a1 + 8 * (v20 >> 6) + 64) |= 1 << v20;
        (*(v30 + 16))(*(a1 + 48) + *(v30 + 72) * v20, v6, v35);
        *(*(a1 + 56) + 8 * v20) = v13;
        v26 = *(a1 + 16);
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_24;
        }

        *(a1 + 16) = v28;
LABEL_5:
        (*v31)(v6, v35);
        a2 = v17;
        *v17 = a1;

        ++v8;
        a1 = v32;
      }

      while (v36 != v7);
    }
  }
}

uint64_t sub_258A97E54(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return MEMORY[0x2822009F8](sub_258A97E9C, 0, 0);
}

uint64_t sub_258A97E9C()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277D859E0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  sub_258A9A0DC(0, &qword_27F970698, MEMORY[0x277D834F8]);
  *v4 = v0;
  v4[1] = sub_258A97FBC;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000010, 0x8000000258B38530, sub_258A989D4, v2, v5);
}

uint64_t sub_258A97FBC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_258A980D4, 0, 0);
}

void sub_258A980F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  sub_258A989E0();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v21 = sub_258B02984();
  sub_258A98A64();
  v11 = *(v10 + 36);
  sub_258B029C4();
  sub_258A9A888(&unk_27F9706C0, MEMORY[0x277CCB6A8]);
  sub_258B030E4();
  v12 = aBlock[0];
  (*(v8 + 16))(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v14 + ((v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v15 = objc_allocWithZone(MEMORY[0x277D28078]);
  v16 = v20;
  v17 = sub_258B00194();
  aBlock[4] = sub_258A98AF8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_258A98BAC;
  aBlock[3] = &block_descriptor_12;
  v18 = _Block_copy(aBlock);
  v19 = [v15 initWithDayIndexRange:v21 gregorianCalendar:v12 ascending:v17 limit:1 resultsHandler:{0, v18}];
  _Block_release(v18);

  [*(v16 + 16) executeQuery_];
}

uint64_t sub_258A9837C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_258B00384();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || a3)
  {
    sub_258B00364();
    v12 = a3;
    v13 = sub_258B00374();
    v14 = sub_258B02EA4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v26 = a4;
      v16 = v15;
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 136446466;
      v18 = sub_258B035A4();
      v20 = sub_2589F1F78(v18, v19, &v28);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      v27 = a3;
      v21 = a3;
      sub_258A9A084();
      v22 = sub_258B02B34();
      v24 = sub_2589F1F78(v22, v23, &v28);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_2589A1000, v13, v14, "[%{public}s] error fetching day summaries: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v17, -1, -1);
      MEMORY[0x259C945C0](v16, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    v28 = sub_258AD62DC(MEMORY[0x277D84F90]);
    sub_258A989E0();
  }

  else
  {
    v28 = MEMORY[0x277D84F98];
    sub_258A97B50(a2, &v28);
    v27 = v28;
    sub_258A989E0();
  }

  return sub_258B02CF4();
}

uint64_t sub_258A98604()
{
  v1 = OBJC_IVAR____TtC14MentalHealthUI29StateOfMindCalendarDataSource_gregorianCalendar;
  v2 = sub_258B00224();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI29StateOfMindCalendarDataSource_modelsDidChangePublisher);

  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StateOfMindCalendarDataSource()
{
  result = qword_27F970670;
  if (!qword_27F970670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258A9870C()
{
  result = sub_258B00224();
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

unint64_t sub_258A987BC()
{
  result = qword_27F970688;
  if (!qword_27F970688)
  {
    sub_2589F4488(255, &qword_27F970690, 0x277D28070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970688);
  }

  return result;
}

uint64_t sub_258A98824(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258A988BC;

  return sub_258A97E54(a1);
}

uint64_t sub_258A988BC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

void sub_258A989E0()
{
  if (!qword_27F9706A8)
  {
    sub_258A9A0DC(255, &qword_27F970698, MEMORY[0x277D834F8]);
    v0 = sub_258B02D04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9706A8);
    }
  }
}

void sub_258A98A64()
{
  if (!qword_27F9706B0)
  {
    sub_258B029C4();
    sub_258A9A888(&qword_27F971480, MEMORY[0x277CCB6A8]);
    v0 = sub_258B02DF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9706B0);
    }
  }
}

uint64_t sub_258A98AF8(uint64_t a1, unint64_t a2, void *a3)
{
  sub_258A989E0();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_258A9837C(a1, a2, a3, v3 + v9);
}

uint64_t sub_258A98BAC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_2589F4488(0, &qword_27F970690, 0x277D28070);
    v5 = sub_258B02C74();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_258A98C7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_258A9A1A0();
  v33 = a2;
  result = sub_258B032D4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      v23 = *(v8 + 40);
      sub_258B03514();
      sub_258B02B74();

      result = sub_258B03554();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_258A98F7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_258A9A270();
  v33 = a2;
  result = sub_258B032D4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      v23 = *(v8 + 40);
      sub_258B03514();
      sub_258B02B74();

      result = sub_258B03554();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_258A99268(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_258A9A3A0(0, &qword_27F970700);
  v36 = a2;
  result = sub_258B032D4();
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
        sub_258A2D784(v25, v37);
      }

      else
      {
        sub_2589F44D0(v25, v37);
        sub_258B003E4();
      }

      v26 = *(v8 + 40);
      sub_258B03514();
      sub_258B02B74();
      result = sub_258B03554();
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
      result = sub_258A2D784(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_258A9952C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_258B029C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_258A9A0DC(0, &qword_27F971420, MEMORY[0x277D84460]);
  v43 = a2;
  result = sub_258B032D4();
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
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_258A9A888(&qword_27F9706A0, MEMORY[0x277CCB6A8]);
      result = sub_258B02A14();
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
      v11 = v41;
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