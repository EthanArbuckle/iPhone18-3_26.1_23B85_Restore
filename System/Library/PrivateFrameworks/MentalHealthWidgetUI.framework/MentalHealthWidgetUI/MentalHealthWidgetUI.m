uint64_t sub_258B5C754(uint64_t a1, uint64_t a2)
{
  sub_258B6030C(0, &qword_2811137F8, sub_258B6013C, sub_258B60224, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258B5C7FC(uint64_t a1)
{
  sub_258B6030C(0, &qword_2811137F8, sub_258B6013C, sub_258B60224, MEMORY[0x277CE0338]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258B5C89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258B60AC0(0, qword_281113988, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_258B60AC0(0, &qword_281113780, MEMORY[0x277CE3BA0], MEMORY[0x277D83D88]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_258B5C9EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258B60AC0(0, qword_281113988, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_258B60AC0(0, &qword_281113780, MEMORY[0x277CE3BA0], MEMORY[0x277D83D88]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_258B5CB4C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x259C94990]();
  *a1 = result;
  return result;
}

uint64_t sub_258B5CB78(uint64_t *a1)
{
  v1 = *a1;

  return sub_258B64FC4();
}

uint64_t sub_258B5CBA4()
{
  sub_258B61C68();
  sub_258B61B58();
  sub_258B61A88();
  sub_258B61900();
  sub_258B62478(&qword_281113778, sub_258B61900);
  sub_258B60C78();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_258B5CCF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_258B64E84();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_258B5CD60(uint64_t a1, uint64_t a2)
{
  v4 = sub_258B64E84();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_258B5CE04()
{
  _s8SentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2811139C8 = result;
  return result;
}

size_t sub_258B5CE5C(size_t a1, int64_t a2, char a3)
{
  result = sub_258B5CE7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_258B5CE7C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_258B5E47C(0, &qword_27F97AC50, sub_258B5D52C, MEMORY[0x277D84560]);
  sub_258B5D52C();
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_258B5D52C();
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_258B5D078(uint64_t a1)
{
  v52 = sub_258B64D74();
  v2 = *(v52 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_258B64DD4();
  v5 = *(v50 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_258B64DB4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v48 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_258B64E84();
  v11 = *(v47 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v47);
  v46 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v45 = v36 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = v36 - v17;
  sub_258B5D52C();
  v44 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 16);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v53 = MEMORY[0x277D84F90];
    sub_258B5CE5C(0, v24, 0);
    v25 = v53;
    v27 = *(v11 + 16);
    v26 = v11 + 16;
    v28 = v2;
    v29 = a1 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v40 = *(v26 + 56);
    v41 = v27;
    v38 = (v5 + 8);
    v39 = (v28 + 8);
    v36[1] = v20 + 32;
    v37 = (v26 - 8);
    v42 = v20;
    v43 = v26;
    do
    {
      v30 = v47;
      v41(v18, v29, v47);
      sub_258B64E64();
      sub_258B64E64();
      v31 = v49;
      sub_258B64DC4();
      v32 = v51;
      sub_258B64D64();
      sub_258B64D54();
      (*v39)(v32, v52);
      (*v38)(v31, v50);
      sub_258B65144();
      (*v37)(v18, v30);
      v53 = v25;
      v34 = *(v25 + 16);
      v33 = *(v25 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_258B5CE5C(v33 > 1, v34 + 1, 1);
        v25 = v53;
      }

      *(v25 + 16) = v34 + 1;
      (*(v42 + 32))(v25 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v34, v23, v44);
      v29 += v40;
      --v24;
    }

    while (v24);
  }

  return v25;
}

void sub_258B5D52C()
{
  if (!qword_281113788)
  {
    v0 = sub_258B65154();
    if (!v1)
    {
      atomic_store(v0, &qword_281113788);
    }
  }
}

void *sub_258B5D584(uint64_t a1, uint64_t a2)
{
  v155 = a2;
  v147 = a1;
  v110 = sub_258B64E24();
  v109 = *(v110 - 8);
  v2 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v4 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_258B64F94();
  v112 = *(v113 - 8);
  v5 = *(v112 + 64);
  v6 = MEMORY[0x28223BE20](v113);
  v111 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v108 = &v107 - v8;
  v127 = sub_258B64F04();
  v152 = *(v127 - 8);
  v9 = v152[8];
  MEMORY[0x28223BE20](v127);
  v125 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_258B64EC4();
  v149 = *(v145 - 8);
  v11 = *(v149 + 64);
  MEMORY[0x28223BE20](v145);
  v144 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_258B64ED4();
  v146 = *(v143 - 8);
  v13 = *(v146 + 64);
  MEMORY[0x28223BE20](v143);
  v142 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_258B64EB4();
  v15 = *(v141 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v141);
  v139 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B5E47C(0, &qword_281113970, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v124 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v138 = &v107 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v107 - v24;
  v26 = sub_258B64E84();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v122 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v151 = &v107 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v150 = &v107 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v107 - v35;
  v37 = sub_258B64E94();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = &v107 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_258B64F14();
  v114 = *(v115 - 8);
  v42 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v44 = &v107 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v38 + 104))(v41, *MEMORY[0x277CC9830], v37);
  v154 = v44;
  sub_258B64EA4();
  v45 = v147;
  (*(v38 + 8))(v41, v37);
  v46 = *(v27 + 16);
  v47 = v36;
  v48 = v155;
  v155 = v26;
  v121 = v27 + 16;
  v120 = v46;
  v46(v36, v48, v26);
  v137 = *(v15 + 104);
  v136 = *MEMORY[0x277CC9878];
  v135 = *MEMORY[0x277CC9900];
  v134 = (v146 + 104);
  v133 = *MEMORY[0x277CC98E8];
  v132 = (v149 + 104);
  v131 = (v149 + 8);
  v130 = (v146 + 8);
  v140 = v15 + 104;
  v129 = (v15 + 8);
  v128 = (v27 + 48);
  v119 = (v27 + 32);
  v118 = *MEMORY[0x277CC9968];
  v117 = (v152 + 13);
  v49 = v45;
  v116 = (v152 + 1);
  v123 = v27;
  v146 = v27 + 8;
  v152 = MEMORY[0x277D84F90];
  v153 = v25;
  v50 = 7;
  v148 = v47;
  v126 = v4;
  while (1)
  {
    v149 = v50;
    v54 = v139;
    v55 = v141;
    v137(v139, v136, v141);
    v56 = v142;
    v57 = v143;
    (*v134)(v142, v135, v143);
    v59 = v144;
    v58 = v145;
    (*v132)(v144, v133, v145);
    v60 = v153;
    sub_258B64EF4();
    (*v131)(v59, v58);
    (*v130)(v56, v57);
    v61 = v155;
    (*v129)(v54, v55);
    v62 = v138;
    sub_258B5E4E0(v60, v138);
    v63 = *v128;
    if ((*v128)(v62, 1, v61) == 1)
    {
      break;
    }

    v64 = *v119;
    v65 = v150;
    v66 = v62;
    v67 = v155;
    (*v119)(v150, v66, v155);
    v120(v151, v65, v67);
    v68 = v152;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = sub_258B63F30(0, v68[2] + 1, 1, v68);
    }

    v69 = v124;
    v71 = v68[2];
    v70 = v68[3];
    if (v71 >= v70 >> 1)
    {
      v68 = sub_258B63F30(v70 > 1, v71 + 1, 1, v68);
    }

    v68[2] = v71 + 1;
    v72 = (*(v123 + 80) + 32) & ~*(v123 + 80);
    v152 = v68;
    v73 = v155;
    (v64)(v68 + v72 + *(v123 + 72) * v71, v151, v155);
    v74 = v125;
    v75 = v127;
    (*v117)(v125, v118, v127);
    v76 = v148;
    sub_258B64EE4();
    (*v116)(v74, v75);
    if (v63(v69, 1, v73) == 1)
    {
      sub_258B64E64();
      v77 = *v146;
      v78 = v155;
      (*v146)(v150, v155);
      sub_258B5E574(v153);
      v77(v76, v78);
      if (v63(v69, 1, v78) != 1)
      {
        sub_258B5E574(v69);
      }

      v51 = v148;
    }

    else
    {
      v77 = *v146;
      v79 = v155;
      (*v146)(v150, v155);
      sub_258B5E574(v153);
      v77(v76, v79);
      (v64)(v122, v69, v79);
      v51 = v76;
    }

    v49 = v147;
    v52 = v149;
    v53 = v51;
    v64();
    v50 = v52 - 1;
    v4 = v126;
    if (!v50)
    {
      v77(v53, v155);
      goto LABEL_24;
    }
  }

  sub_258B5E574(v62);
  v80 = sub_258B64DF4();
  v81 = v4;
  if (v82 & 1) != 0 || (v83 = v80, v84 = sub_258B64E04(), (v85))
  {
    v86 = v111;
    sub_258B64F74();
    v87 = v109;
    v88 = v110;
    (*(v109 + 16))(v81, v49, v110);
    v89 = sub_258B64F84();
    v90 = sub_258B65264();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v156 = v92;
      *v91 = 136315394;
      *(v91 + 4) = sub_258B64340(0xD00000000000001CLL, 0x8000000258B65720, &v156);
      *(v91 + 12) = 2080;
      sub_258B5E600();
      v93 = sub_258B65304();
      v95 = v94;
      (*(v87 + 8))(v81, v88);
      v96 = sub_258B64340(v93, v95, &v156);

      *(v91 + 14) = v96;
      _os_log_impl(&dword_258B5B000, v89, v90, "[%s] DateComponent doesn't contain hour and/or minute %s", v91, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C95000](v92, -1, -1);
      MEMORY[0x259C95000](v91, -1, -1);
    }

    else
    {

      (*(v87 + 8))(v81, v88);
    }

    (*(v112 + 8))(v86, v113);
    v97 = v153;
  }

  else
  {
    v98 = v84;
    v99 = v108;
    sub_258B64F74();
    v100 = sub_258B64F84();
    v101 = sub_258B65264();
    v102 = os_log_type_enabled(v100, v101);
    v103 = v153;
    if (v102)
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v156 = v105;
      *v104 = 136315650;
      *(v104 + 4) = sub_258B64340(0xD00000000000001CLL, 0x8000000258B65720, &v156);
      *(v104 + 12) = 2048;
      *(v104 + 14) = v83;
      *(v104 + 22) = 2048;
      *(v104 + 24) = v98;
      _os_log_impl(&dword_258B5B000, v100, v101, "[%s] Next Date nil for scheduleTime: %ld:%ld", v104, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v105);
      MEMORY[0x259C95000](v105, -1, -1);
      MEMORY[0x259C95000](v104, -1, -1);
    }

    (*(v112 + 8))(v99, v113);
    v97 = v103;
  }

  sub_258B5E574(v97);
  (*v146)(v148, v155);
LABEL_24:
  (*(v114 + 8))(v154, v115);
  return v152;
}

void sub_258B5E47C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258B5E4E0(uint64_t a1, uint64_t a2)
{
  sub_258B5E47C(0, &qword_281113970, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258B5E574(uint64_t a1)
{
  sub_258B5E47C(0, &qword_281113970, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258B5E600()
{
  result = qword_27F97AC58;
  if (!qword_27F97AC58)
  {
    sub_258B64E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F97AC58);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t MentalHealthLauncherComplicationView.init(overriddenWidgetFamily:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_258B60AC0(0, &qword_281113848, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v4 = a2 + *(type metadata accessor for MentalHealthLauncherComplicationView() + 20);

  return sub_258B600A8(a1, v4);
}

uint64_t MentalHealthLauncherComplicationView.body.getter()
{
  sub_258B609C8(0, &qword_281113808, MEMORY[0x277CE0330]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - v2;
  sub_258B6030C(0, &qword_2811137F8, sub_258B6013C, sub_258B60224, MEMORY[0x277CE0338]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v8 = sub_258B65164();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B5E9F0(v12);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == *MEMORY[0x277CE3B78] || v13 == *MEMORY[0x277CE3B90])
  {
    sub_258B5ED04(v7);
    sub_258B5C754(v7, v3);
    swift_storeEnumTagMultiPayload();
    sub_258B606B4();
    sub_258B65044();
    return sub_258B5C7FC(v7);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_258B606B4();
    sub_258B65044();
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_258B5E9F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B64FF4();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CE3BA0];
  sub_258B60AC0(0, &qword_281113848, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = (&v23 - v10);
  v12 = MEMORY[0x277D83D88];
  sub_258B60AC0(0, &qword_281113780, v7, MEMORY[0x277D83D88]);
  v14 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v16 = &v23 - v15;
  v17 = type metadata accessor for MentalHealthLauncherComplicationView();
  sub_258B60CDC(v1 + *(v17 + 20), v16, &qword_281113780, v12);
  v18 = sub_258B65164();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v16, 1, v18) != 1)
  {
    return (*(v19 + 32))(a1, v16, v18);
  }

  sub_258B60D58(v16);
  sub_258B60CDC(v1, v11, &qword_281113848, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v19 + 32))(a1, v11, v18);
  }

  v21 = *v11;
  sub_258B65274();
  v22 = sub_258B65054();
  sub_258B64F64();

  sub_258B64FE4();
  swift_getAtKeyPath();

  return (*(v24 + 8))(v6, v3);
}

uint64_t sub_258B5ED04@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_258B65124();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_258B60224();
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B60A74();
  sub_258B65294();
  sub_258B65104();
  v18[1] = MEMORY[0x277D84F90];
  sub_258B6066C(&qword_281113798, MEMORY[0x277D12700]);
  sub_258B60AC0(0, &qword_281113748, MEMORY[0x277D12700], MEMORY[0x277D83940]);
  sub_258B60B24();
  sub_258B652B4();
  if (qword_281113750 != -1)
  {
    swift_once();
  }

  v9 = qword_281113738;

  if (v9 != -1)
  {
    swift_once();
  }

  sub_258B64E34();
  sub_258B65114();
  if (qword_2811137A8 != -1)
  {
    swift_once();
  }

  v10 = qword_2811137B0;
  KeyPath = swift_getKeyPath();
  v12 = &v8[*(v5 + 36)];
  *v12 = KeyPath;
  v12[1] = v10;

  v13 = sub_258B5F034();
  v15 = v14;
  v16 = sub_258B5F450();
  sub_258B5F7F8(v13, v15, v16, a1);

  return sub_258B60BAC(v8);
}

uint64_t sub_258B5F034()
{
  v1 = sub_258B64FF4();
  v24 = *(v1 - 8);
  v25 = v1;
  v2 = *(v24 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277CE3BA0];
  sub_258B60AC0(0, &qword_281113848, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  v7 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = (&v24 - v8);
  v10 = MEMORY[0x277D83D88];
  sub_258B60AC0(0, &qword_281113780, v5, MEMORY[0x277D83D88]);
  v12 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v24 - v13;
  v15 = sub_258B65164();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20]();
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MentalHealthLauncherComplicationView();
  sub_258B60CDC(v0 + *(v20 + 20), v14, &qword_281113780, v10);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_258B60D58(v14);
    sub_258B60CDC(v0, v9, &qword_281113848, MEMORY[0x277CDF458]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v16 + 32))(v19, v9, v15);
    }

    else
    {
      v21 = *v9;
      sub_258B65274();
      v22 = sub_258B65054();
      sub_258B64F64();

      sub_258B64FE4();
      swift_getAtKeyPath();

      (*(v24 + 8))(v4, v25);
    }
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
  }

  if ((*(v16 + 88))(v19, v15) == *MEMORY[0x277CE3B78])
  {
    if (qword_281113738 != -1)
    {
      swift_once();
    }

    return sub_258B64E34();
  }

  else
  {
    (*(v16 + 8))(v19, v15);
    return 0;
  }
}

BOOL sub_258B5F450()
{
  v1 = sub_258B64FF4();
  v26 = *(v1 - 8);
  v27 = v1;
  v2 = *(v26 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277CE3BA0];
  sub_258B60AC0(0, &qword_281113848, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  v7 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = (&v26 - v8);
  v10 = MEMORY[0x277D83D88];
  sub_258B60AC0(0, &qword_281113780, v5, MEMORY[0x277D83D88]);
  v12 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v26 - v13;
  v15 = sub_258B65164();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20]();
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MentalHealthLauncherComplicationView();
  sub_258B60CDC(v0 + *(v20 + 20), v14, &qword_281113780, v10);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_258B60D58(v14);
    sub_258B60CDC(v0, v9, &qword_281113848, MEMORY[0x277CDF458]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v16 + 32))(v19, v9, v15);
    }

    else
    {
      v21 = *v9;
      sub_258B65274();
      v22 = sub_258B65054();
      sub_258B64F64();

      sub_258B64FE4();
      swift_getAtKeyPath();

      (*(v26 + 8))(v4, v27);
    }
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
  }

  v23 = (*(v16 + 88))(v19, v15);
  v24 = *MEMORY[0x277CE3B78];
  if (v23 != *MEMORY[0x277CE3B78])
  {
    (*(v16 + 8))(v19, v15);
  }

  return v23 == v24;
}

uint64_t sub_258B5F7F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_258B6030C(0, &qword_281113810, sub_258B6013C, sub_258B60224, MEMORY[0x277CE0330]);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v12 = v33 - v11;
  sub_258B6013C();
  v34 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = (MEMORY[0x28223BE20])();
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v33[1] = v33;
    MEMORY[0x28223BE20](v16);
    v33[2] = a4;
    v33[-4] = a1;
    v33[-3] = a2;
    LOBYTE(v33[-2]) = a3 & 1;
    sub_258B60224();
    v20 = v19;
    sub_258B6030C(0, &qword_281113828, sub_258B60390, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    v22 = v21;
    v23 = sub_258B60410();
    v24 = sub_258B60548();
    sub_258B65094();
    v25 = v34;
    (*(v14 + 16))(v12, v18, v34);
    swift_storeEnumTagMultiPayload();
    v35 = v20;
    v36 = v22;
    v37 = v23;
    v38 = v24;
    swift_getOpaqueTypeConformance2();
    sub_258B65044();
    return (*(v14 + 8))(v18, v25);
  }

  else
  {
    sub_258B60C08(v4, v12);
    swift_storeEnumTagMultiPayload();
    sub_258B60224();
    v28 = v27;
    sub_258B6030C(255, &qword_281113828, sub_258B60390, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    v30 = v29;
    v31 = sub_258B60410();
    v32 = sub_258B60548();
    v35 = v28;
    v36 = v30;
    v37 = v31;
    v38 = v32;
    swift_getOpaqueTypeConformance2();
    return sub_258B65044();
  }
}

uint64_t sub_258B5FBB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v35 = a4;
  v32 = sub_258B64F34();
  v6 = *(v32 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v31[0] = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B60390();
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  MEMORY[0x28223BE20]();
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B65254();
  v31[1] = sub_258B65244();
  sub_258B65234();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37 = a1;
  v38 = a2;
  sub_258B60C78();

  v13 = sub_258B65074();
  v15 = v14;
  v17 = v16;
  if (qword_2811137A8 != -1)
  {
    swift_once();
  }

  v18 = sub_258B65064();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_258B60CCC(v13, v15, v17 & 1);

  v37 = v18;
  v38 = v20;
  v25 = v22 & 1;
  v39 = v22 & 1;
  v40 = v24;
  v26 = v31[0];
  v27 = v32;
  (*(v6 + 104))(v31[0], *MEMORY[0x277D280E8], v32);
  v28 = MEMORY[0x277CE0BC8];
  sub_258B65084();
  (*(v6 + 8))(v26, v27);
  sub_258B60CCC(v18, v20, v25);

  v37 = MEMORY[0x277CE0BD8];
  v38 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v34;
  sub_258B650E4();
  (*(v33 + 8))(v12, v29);
}

uint64_t sub_258B5FF0C()
{
  result = sub_258B650F4();
  qword_2811137B0 = result;
  return result;
}

uint64_t sub_258B5FF2C()
{
  v0 = sub_258B64F34();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D280E8], v0);
  v5 = sub_258B65204();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  qword_281113758 = v5;
  unk_281113760 = v7;
  return result;
}

uint64_t type metadata accessor for MentalHealthLauncherComplicationView()
{
  result = qword_2811139B8;
  if (!qword_2811139B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258B600A8(uint64_t a1, uint64_t a2)
{
  sub_258B60AC0(0, &qword_281113780, MEMORY[0x277CE3BA0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_258B6013C()
{
  if (!qword_2811137C0)
  {
    sub_258B60224();
    sub_258B6030C(255, &qword_281113828, sub_258B60390, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    sub_258B60410();
    sub_258B60548();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2811137C0);
    }
  }
}

void sub_258B60224()
{
  if (!qword_281113838)
  {
    sub_258B65134();
    sub_258B60AC0(255, &qword_2811137D8, sub_258B602BC, MEMORY[0x277CE0860]);
    v0 = sub_258B64FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_281113838);
    }
  }
}

void sub_258B602BC()
{
  if (!qword_2811137A0)
  {
    v0 = sub_258B652A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2811137A0);
    }
  }
}

void sub_258B6030C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_258B60390()
{
  if (!qword_2811137C8)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2811137C8);
    }
  }
}

unint64_t sub_258B60410()
{
  result = qword_281113840;
  if (!qword_281113840)
  {
    sub_258B60224();
    sub_258B6066C(&qword_281113790, MEMORY[0x277D12710]);
    sub_258B604C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281113840);
  }

  return result;
}

unint64_t sub_258B604C0()
{
  result = qword_2811137E0;
  if (!qword_2811137E0)
  {
    sub_258B60AC0(255, &qword_2811137D8, sub_258B602BC, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811137E0);
  }

  return result;
}

unint64_t sub_258B60548()
{
  result = qword_281113830;
  if (!qword_281113830)
  {
    sub_258B6030C(255, &qword_281113828, sub_258B60390, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    swift_getOpaqueTypeConformance2();
    sub_258B6066C(&qword_2811137D0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281113830);
  }

  return result;
}

uint64_t sub_258B6066C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_258B606B4()
{
  result = qword_281113800;
  if (!qword_281113800)
  {
    sub_258B6030C(255, &qword_2811137F8, sub_258B6013C, sub_258B60224, MEMORY[0x277CE0338]);
    sub_258B60224();
    sub_258B6030C(255, &qword_281113828, sub_258B60390, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    sub_258B60410();
    sub_258B60548();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281113800);
  }

  return result;
}

void sub_258B60848()
{
  sub_258B60AC0(319, qword_281113988, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_258B60AC0(319, &qword_281113780, MEMORY[0x277CE3BA0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_258B6092C()
{
  result = qword_2811137F0;
  if (!qword_2811137F0)
  {
    sub_258B609C8(255, &qword_2811137E8, MEMORY[0x277CE0338]);
    sub_258B606B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811137F0);
  }

  return result;
}

void sub_258B609C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_258B6030C(255, &qword_2811137F8, sub_258B6013C, sub_258B60224, MEMORY[0x277CE0338]);
    v7 = a3(a1, v6, MEMORY[0x277CE1428]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_258B60A74()
{
  result = qword_281113698[0];
  if (!qword_281113698[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_281113698);
  }

  return result;
}

void sub_258B60AC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_258B60B24()
{
  result = qword_281113740;
  if (!qword_281113740)
  {
    sub_258B60AC0(255, &qword_281113748, MEMORY[0x277D12700], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281113740);
  }

  return result;
}

uint64_t sub_258B60BAC(uint64_t a1)
{
  sub_258B60224();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258B60C08(uint64_t a1, uint64_t a2)
{
  sub_258B60224();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_258B60C78()
{
  result = qword_281113768;
  if (!qword_281113768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281113768);
  }

  return result;
}

uint64_t sub_258B60CCC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_258B60CDC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_258B60AC0(0, a3, MEMORY[0x277CE3BA0], a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_258B60D58(uint64_t a1)
{
  sub_258B60AC0(0, &qword_281113780, MEMORY[0x277CE3BA0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258B60DE4(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_258B64F94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v37 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  v12 = objc_opt_self();
  v13 = [v12 sharedBehavior];
  if (!v13)
  {
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13;
  v15 = [v13 features];

  if (!v15)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = [v15 chamomile];

  if (!v16)
  {
    sub_258B64F74();
    v23 = sub_258B64F84();
    v24 = sub_258B65284();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_258B5B000, v23, v24, "[MentalHealthLauncherComplication] not available because chamomile feature disabled", v25, 2u);
      MEMORY[0x259C95000](v25, -1, -1);
    }

    (*(v2 + 8))(v11, v1);
    goto LABEL_16;
  }

  v17 = [v12 sharedBehavior];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 tinkerModeEnabled];

    if (v19)
    {
      sub_258B64F74();
      v20 = sub_258B64F84();
      v21 = sub_258B65284();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_258B5B000, v20, v21, "[MentalHealthLauncherComplication] not available in tinker mode", v22, 2u);
        MEMORY[0x259C95000](v22, -1, -1);
      }

      (*(v2 + 8))(v9, v1);
    }

    else
    {
      sub_258B64F74();
      v26 = sub_258B64F84();
      v27 = sub_258B65284();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_258B5B000, v26, v27, "[MentalHealthLauncherComplication] is available", v28, 2u);
        MEMORY[0x259C95000](v28, -1, -1);
      }

      (*(v2 + 8))(v6, v1);
    }

LABEL_16:
    sub_258B61B58();
    sub_258B61A88();
    v30 = v29;
    sub_258B61900();
    v32 = v31;
    v33 = sub_258B62478(&qword_281113778, sub_258B61900);
    v34 = sub_258B60C78();
    v35 = MEMORY[0x277D837D0];
    v38 = v32;
    v39 = MEMORY[0x277D837D0];
    v40 = v33;
    v41 = v34;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v38 = v30;
    v39 = v35;
    v40 = OpaqueTypeConformance2;
    v41 = v34;
    swift_getOpaqueTypeConformance2();
    sub_258B65014();

    return;
  }

LABEL_19:
  __break(1u);
}

MentalHealthWidgetUI::MentalHealthLauncherComplication __swiftcall MentalHealthLauncherComplication.init()()
{
  *v0 = 0xD000000000000020;
  v0[1] = 0x8000000258B65850;
  return result;
}

id MentalHealthLauncherComplication.body.getter@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  sub_258B61900();
  v3 = v2;
  v45 = *(v2 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B61A88();
  v50 = v7;
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B61B58();
  v48 = *(v11 - 8);
  v49 = v11;
  v12 = *(v48 + 64);
  MEMORY[0x28223BE20](v11);
  v44 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B61C68();
  v41 = *(v14 - 8);
  v42 = v14;
  v15 = *(v41 + 64);
  MEMORY[0x28223BE20](v14);
  v47 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  v18 = v1[1];
  v19 = objc_allocWithZone(MEMORY[0x277D280B8]);

  v55 = [v19 init];
  sub_258B619D4();
  v20 = type metadata accessor for MentalHealthLauncherComplicationView();
  v21 = sub_258B62478(&qword_281113948, type metadata accessor for MentalHealthLauncherComplicationView);
  v51 = v20;
  v52 = v21;
  swift_getOpaqueTypeConformance2();
  sub_258B6225C();
  sub_258B651A4();
  if (qword_281113738 != -1)
  {
    swift_once();
  }

  v51 = sub_258B64E34();
  v52 = v22;
  v23 = sub_258B62478(&qword_281113778, sub_258B61900);
  v24 = sub_258B60C78();
  v25 = MEMORY[0x277D837D0];
  sub_258B65024();

  (*(v45 + 8))(v6, v3);
  v55 = sub_258B64E34();
  v56 = v26;
  v51 = v3;
  v52 = v25;
  v53 = v23;
  v54 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v44;
  v29 = v50;
  sub_258B65004();

  (*(v46 + 8))(v10, v29);
  sub_258B64918(0, &qword_281113690, MEMORY[0x277CE3BA0], MEMORY[0x277D84560]);
  v30 = sub_258B65164();
  v31 = *(v30 - 8);
  v32 = *(v31 + 72);
  v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_258B65840;
  (*(v31 + 104))(v34 + v33, *MEMORY[0x277CE3B90], v30);
  v35 = v47;
  sub_258B60DE4(v47);

  v36 = v49;
  (*(v48 + 8))(v28, v49);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v38 = result;
    [result tinkerModeEnabled];

    v51 = v29;
    v52 = MEMORY[0x277D837D0];
    v53 = OpaqueTypeConformance2;
    v54 = v24;
    v39 = swift_getOpaqueTypeConformance2();
    v51 = v36;
    v52 = v39;
    swift_getOpaqueTypeConformance2();
    v40 = v42;
    sub_258B65034();
    return (*(v41 + 8))(v35, v40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_258B61900()
{
  if (!qword_281113770)
  {
    sub_258B619D4();
    type metadata accessor for MentalHealthLauncherComplicationView();
    sub_258B62478(&qword_281113948, type metadata accessor for MentalHealthLauncherComplicationView);
    swift_getOpaqueTypeConformance2();
    v0 = sub_258B651B4();
    if (!v1)
    {
      atomic_store(v0, &qword_281113770);
    }
  }
}

void sub_258B619D4()
{
  if (!qword_2811137B8)
  {
    type metadata accessor for MentalHealthLauncherComplicationView();
    sub_258B62478(&qword_281113948, type metadata accessor for MentalHealthLauncherComplicationView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2811137B8);
    }
  }
}

void sub_258B61A88()
{
  if (!qword_281113818)
  {
    sub_258B61900();
    sub_258B62478(&qword_281113778, sub_258B61900);
    sub_258B60C78();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281113818);
    }
  }
}

void sub_258B61B58()
{
  if (!qword_281113820)
  {
    sub_258B61A88();
    sub_258B61900();
    sub_258B62478(&qword_281113778, sub_258B61900);
    sub_258B60C78();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281113820);
    }
  }
}

void sub_258B61C68()
{
  if (!qword_281113980)
  {
    sub_258B61B58();
    sub_258B61A88();
    sub_258B61900();
    sub_258B62478(&qword_281113778, sub_258B61900);
    sub_258B60C78();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281113980);
    }
  }
}

uint64_t sub_258B61DB0()
{
  v0 = MEMORY[0x277D83D88];
  sub_258B64918(0, &qword_281113958, MEMORY[0x277D280F0], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v25 - v3;
  sub_258B64918(0, &qword_281113950, MEMORY[0x277D28108], v0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - v7;
  sub_258B64918(0, &qword_281113978, MEMORY[0x277CC9260], v0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for MentalHealthLauncherComplicationView();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258B65254();
  sub_258B65244();
  sub_258B65234();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = *(v13 + 20);
  v18 = sub_258B65164();
  (*(*(v18 - 8) + 56))(v16 + v17, 1, 1, v18);
  *v16 = swift_getKeyPath();
  sub_258B64918(0, &qword_281113848, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v19 = *MEMORY[0x277D28100];
  v20 = sub_258B64F54();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v8, v19, v20);
  (*(v21 + 56))(v8, 0, 1, v20);
  v22 = sub_258B64F44();
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  sub_258B64E44();
  sub_258B64BEC(v4, &qword_281113958, MEMORY[0x277D280F0]);
  sub_258B64BEC(v8, &qword_281113950, MEMORY[0x277D28108]);
  v23 = sub_258B64E54();
  (*(*(v23 - 8) + 56))(v12, 0, 1, v23);
  sub_258B62478(&qword_281113948, type metadata accessor for MentalHealthLauncherComplicationView);
  sub_258B650A4();
  sub_258B64BEC(v12, &qword_281113978, MEMORY[0x277CC9260]);
  sub_258B64C5C(v16, type metadata accessor for MentalHealthLauncherComplicationView);
}

unint64_t sub_258B6225C()
{
  result = qword_281113850[0];
  if (!qword_281113850[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281113850);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_258B622FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_258B62344(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258B6239C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258B623E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258B62478(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MentalHealthLauncherComplicationTimelineEntry()
{
  result = qword_2811138B0;
  if (!qword_2811138B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258B62510(uint64_t a1, void (*a2)(char *))
{
  v3 = type metadata accessor for MentalHealthLauncherComplicationTimelineEntry();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B64E74();
  a2(v6);
  return sub_258B64C5C(v6, type metadata accessor for MentalHealthLauncherComplicationTimelineEntry);
}

uint64_t sub_258B625B4(uint64_t a1, void (*a2)(char *))
{
  v20 = a2;
  v2 = sub_258B651D4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_258B64AF4();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MentalHealthLauncherComplicationTimelineEntry();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B64E74();
  sub_258B64918(0, &unk_27F97AC80, type metadata accessor for MentalHealthLauncherComplicationTimelineEntry, MEMORY[0x277D84560]);
  v15 = *(v11 + 72);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_258B65840;
  sub_258B64B88(v14, v17 + v16);
  sub_258B651C4();
  sub_258B62478(qword_2811138C0, type metadata accessor for MentalHealthLauncherComplicationTimelineEntry);
  sub_258B651E4();
  v20(v9);
  (*(v6 + 8))(v9, v5);
  return sub_258B64C5C(v14, type metadata accessor for MentalHealthLauncherComplicationTimelineEntry);
}

uint64_t sub_258B62854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CE3CF8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258B62908;

  return MEMORY[0x282136270](a1, a2, a3);
}

uint64_t sub_258B62908()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_258B629FC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258B64D50;

  return sub_258B62A9C(a1, v4);
}

uint64_t sub_258B62A9C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_258B64E84();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = MEMORY[0x277D83D88];
  sub_258B64918(0, &qword_281113960, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  sub_258B64918(0, &qword_281113968, MEMORY[0x277CC99E8], v6);
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v11 = sub_258B64E24();
  v2[9] = v11;
  v12 = *(v11 - 8);
  v2[10] = v12;
  v13 = *(v12 + 64) + 15;
  v2[11] = swift_task_alloc();
  v14 = sub_258B64D94();
  v2[12] = v14;
  v15 = *(v14 - 8);
  v2[13] = v15;
  v16 = *(v15 + 64) + 15;
  v2[14] = swift_task_alloc();
  v17 = *(*(sub_258B64DB4() - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  sub_258B64AA4(0, &qword_281113788, MEMORY[0x277D84F78] + 8, MEMORY[0x277CE3B48]);
  v2[16] = v18;
  v19 = *(v18 - 8);
  v2[17] = v19;
  v20 = *(v19 + 64) + 15;
  v2[18] = swift_task_alloc();
  v21 = sub_258B64F94();
  v2[19] = v21;
  v22 = *(v21 - 8);
  v2[20] = v22;
  v23 = *(v22 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258B62E08, 0, 0);
}

uint64_t sub_258B62E08()
{
  v138 = v0;
  v1 = v0[26];
  sub_258B64F74();
  v2 = sub_258B64F84();
  v3 = sub_258B65284();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[26];
  v6 = v0[19];
  v7 = v0[20];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v137[0] = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_258B64340(0xD000000000000030, 0x8000000258B65910, v137);
    _os_log_impl(&dword_258B5B000, v2, v3, "[%{public}s] Retrieving widget relevance entries", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x259C95000](v9, -1, -1);
    MEMORY[0x259C95000](v8, -1, -1);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v136 = MEMORY[0x277D84F90];
  if (![v0[3] hasAnyStateOfMindReminderEnabled])
  {
    v72 = v0[21];
    sub_258B64F74();
    v73 = sub_258B64F84();
    v74 = sub_258B65284();
    v75 = os_log_type_enabled(v73, v74);
    v77 = v0[20];
    v76 = v0[21];
    v78 = v0[19];
    if (v75)
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v137[0] = v80;
      *v79 = 136446466;
      *(v79 + 4) = sub_258B64340(0xD000000000000030, 0x8000000258B65910, v137);
      *(v79 + 12) = 2048;
      *(v79 + 14) = 0;
      _os_log_impl(&dword_258B5B000, v73, v74, "[%{public}s] No enabled reminders so no Smart Stack relevance entries are provided (Count: %ld)", v79, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x259C95000](v80, -1, -1);
      MEMORY[0x259C95000](v79, -1, -1);
    }

    v10(v76, v78);
    v81 = v0[2];
    goto LABEL_30;
  }

  if ([v0[3] endOfDayNotificationsEnabled])
  {
    v11 = v0[25];
    sub_258B64F74();
    v12 = sub_258B64F84();
    v13 = sub_258B65284();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[25];
    v16 = v0[19];
    v17 = v0[20];
    if (v14)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v137[0] = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_258B64340(0xD000000000000030, 0x8000000258B65910, v137);
      _os_log_impl(&dword_258B5B000, v12, v13, "[%{public}s] Bedtime relevance added", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x259C95000](v19, -1, -1);
      MEMORY[0x259C95000](v18, -1, -1);
    }

    v10(v15, v16);
    v20 = v0[18];
    v22 = v0[14];
    v21 = v0[15];
    v23 = v0[12];
    v24 = v0[13];
    sub_258B64D84();
    sub_258B64DA4();
    (*(v24 + 8))(v22, v23);
    sub_258B65144();
    v25 = sub_258B6412C(0, 1, 1, MEMORY[0x277D84F90]);
    v27 = v25[2];
    v26 = v25[3];
    if (v27 >= v26 >> 1)
    {
      v25 = sub_258B6412C(v26 > 1, v27 + 1, 1, v25);
    }

    v29 = v0[17];
    v28 = v0[18];
    v30 = v0[16];
    v25[2] = v27 + 1;
    (*(v29 + 32))(v25 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v27, v28, v30);
    v136 = v25;
  }

  if ([v0[3] middayNotificationsEnabled])
  {
    v31 = v0[24];
    sub_258B64F74();
    v32 = sub_258B64F84();
    v33 = sub_258B65284();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[24];
    v36 = v0[19];
    v37 = v0[20];
    if (v34)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v137[0] = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_258B64340(0xD000000000000030, 0x8000000258B65910, v137);
      _os_log_impl(&dword_258B5B000, v32, v33, "[%{public}s] Midday relevance added", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x259C95000](v39, -1, -1);
      MEMORY[0x259C95000](v38, -1, -1);
    }

    v10(v35, v36);
    v41 = v0[10];
    v40 = v0[11];
    v43 = v0[8];
    v42 = v0[9];
    v44 = v0[6];
    v45 = v0[7];
    v46 = v0[4];
    v47 = v0[5];
    v48 = sub_258B64F14();
    (*(*(v48 - 8) + 56))(v43, 1, 1, v48);
    v49 = sub_258B64F24();
    (*(*(v49 - 8) + 56))(v45, 1, 1, v49);
    LOBYTE(v130) = 1;
    v129 = 0;
    LOBYTE(v128) = 1;
    v127 = 0;
    LOBYTE(v126) = 1;
    v125 = 0;
    LOBYTE(v124) = 1;
    v123 = 0;
    LOBYTE(v122) = 1;
    v121 = 0;
    LOBYTE(v120) = 1;
    v119 = 0;
    LOBYTE(v118) = 1;
    v117 = 0;
    LOBYTE(v116) = 1;
    v115 = 0;
    LOBYTE(v114) = 0;
    v113 = 0;
    LOBYTE(v112) = 0;
    v111 = 12;
    LOBYTE(v110) = 1;
    v109 = 0;
    sub_258B64E14();
    sub_258B64E74();
    v50 = sub_258B5D584(v40, v44);
    (*(v47 + 8))(v44, v46);
    v51 = sub_258B5D078(v50);

    sub_258B639FC(v51);
    (*(v41 + 8))(v40, v42);
  }

  v52 = [v0[3] customReminderSchedule];
  sub_258B6497C();
  v53 = sub_258B65224();

  if (v53 >> 62)
  {
    v54 = sub_258B652F4();
  }

  else
  {
    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v54)
  {
    v82 = v0[22];
    sub_258B64F74();

    v83 = sub_258B64F84();
    v84 = sub_258B65284();
    v85 = os_log_type_enabled(v83, v84);
    v86 = v0[22];
    v87 = v0[19];
    v88 = v0[20];
    if (v85)
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v137[0] = v90;
      *v89 = 136446466;
      *(v89 + 4) = sub_258B64340(0xD000000000000030, 0x8000000258B65910, v137);
      *(v89 + 12) = 2048;
      *(v89 + 14) = v136[2];

      _os_log_impl(&dword_258B5B000, v83, v84, "[%{public}s] Widget relevance provided (no custom scheduled reminders) (Count: %ld)", v89, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v90);
      MEMORY[0x259C95000](v90, -1, -1);
      MEMORY[0x259C95000](v89, -1, -1);

      v10(v86, v87);
    }

    else
    {

      v10(v86, v87);
    }

    v96 = v0[2];
LABEL_30:
    sub_258B65174();
    goto LABEL_31;
  }

  v55 = v0[23];
  v56 = v0[3];
  sub_258B63B50(v56);
  sub_258B639FC(v57);
  sub_258B64F74();
  swift_bridgeObjectRetain_n();
  v58 = v56;
  v59 = sub_258B64F84();
  v60 = sub_258B65284();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = v0[3];
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v137[0] = v63;
    *v62 = 136446722;
    *(v62 + 4) = sub_258B64340(0xD000000000000030, 0x8000000258B65910, v137);
    *(v62 + 12) = 2048;
    v64 = [v61 customReminderSchedule];
    v65 = sub_258B65224();

    v134 = v10;
    if (v65 >> 62)
    {
      v66 = sub_258B652F4();
    }

    else
    {
      v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v132 = v0[23];
    v67 = v0[19];
    v68 = v0[20];
    v69 = v0;
    v70 = v0[3];

    *(v62 + 14) = v66;
    *(v62 + 22) = 2048;
    v71 = v136[2];

    *(v62 + 24) = v71;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_258B5B000, v59, v60, "[%{public}s] Widget relevance provided (including %ld custom scheduled reminders) (Count: %ld)", v62, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x259C95000](v63, -1, -1);
    MEMORY[0x259C95000](v62, -1, -1);

    v134(v132, v67);
  }

  else
  {
    v91 = v0[23];
    v69 = v0;
    v92 = v0[20];
    v93 = v69[19];
    v94 = v69[3];
    swift_bridgeObjectRelease_n();

    v10(v91, v93);
  }

  v95 = v69[2];
  sub_258B65174();
  v0 = v69;
LABEL_31:
  v98 = v0[25];
  v97 = v0[26];
  v100 = v0[23];
  v99 = v0[24];
  v102 = v0[21];
  v101 = v0[22];
  v103 = v0[18];
  v105 = v0[14];
  v104 = v0[15];
  v106 = v0[11];
  v131 = v0[8];
  v133 = v0[7];
  v135 = v0[6];

  v107 = v0[1];

  return v107();
}

uint64_t sub_258B63990@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B64E84();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_258B639FC(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v17 = v4 + v2;
  }

  else
  {
    v17 = v4;
  }

  v3 = sub_258B6412C(isUniquelyReferenced_nonNull_native, v17, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  sub_258B64AA4(0, &qword_281113788, MEMORY[0x277D84F78] + 8, MEMORY[0x277CE3B48]);
  v11 = *(v10 - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v14 = v3[2];
  v15 = __OFADD__(v14, v2);
  v16 = v14 + v2;
  if (!v15)
  {
    v3[2] = v16;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_258B63B50(void *a1)
{
  v40 = sub_258B64E84();
  v2 = *(v40 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v40);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_258B64E24();
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v39);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 customReminderSchedule];
  sub_258B6497C();
  v11 = sub_258B65224();

  v12 = v11;
  if (v11 >> 62)
  {
    goto LABEL_28;
  }

  v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
LABEL_29:

    return;
  }

LABEL_3:
  if (v13 >= 1)
  {
    v14 = 0;
    v37 = (v2 + 1);
    v38 = v12 & 0xC000000000000001;
    v2 = MEMORY[0x277D84F90];
    v35 = v12;
    v36 = (v6 + 8);
    while (1)
    {
      if (v38)
      {
        v15 = MEMORY[0x259C94CB0](v14);
      }

      else
      {
        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = [v15 dateComponents];
      sub_258B64DE4();

      sub_258B64E74();
      v18 = sub_258B5D584(v9, v5);
      (*v37)(v5, v40);
      (*v36)(v9, v39);
      v6 = sub_258B5D078(v18);

      v19 = *(v6 + 16);
      v20 = v2[2];
      v21 = v20 + v19;
      if (__OFADD__(v20, v19))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        v33 = v12;
        v34 = sub_258B652F4();
        v12 = v33;
        v13 = v34;
        if (!v34)
        {
          goto LABEL_29;
        }

        goto LABEL_3;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && (v23 = v2[3] >> 1, v23 >= v21))
      {
        if (*(v6 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v20 <= v21)
        {
          v24 = v20 + v19;
        }

        else
        {
          v24 = v20;
        }

        v2 = sub_258B6412C(isUniquelyReferenced_nonNull_native, v24, 1, v2);
        v23 = v2[3] >> 1;
        if (*(v6 + 16))
        {
LABEL_19:
          v25 = v23 - v2[2];
          sub_258B64AA4(0, &qword_281113788, MEMORY[0x277D84F78] + 8, MEMORY[0x277CE3B48]);
          v27 = *(v26 - 8);
          if (v25 < v19)
          {
            goto LABEL_26;
          }

          v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
          v29 = *(v27 + 72);
          swift_arrayInitWithCopy();

          if (v19)
          {
            v30 = v2[2];
            v31 = __OFADD__(v30, v19);
            v32 = v30 + v19;
            if (v31)
            {
              goto LABEL_27;
            }

            v2[2] = v32;
          }

          goto LABEL_6;
        }
      }

      if (v19)
      {
        goto LABEL_25;
      }

LABEL_6:
      ++v14;

      v12 = v35;
      if (v13 == v14)
      {
        goto LABEL_29;
      }
    }
  }

  __break(1u);
}

size_t sub_258B63F30(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_258B64918(0, &qword_27F97AC68, MEMORY[0x277CC9578], MEMORY[0x277D84560]);
  v10 = *(sub_258B64E84() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_258B64E84() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_258B6412C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  v10 = MEMORY[0x277D84F78];
  if (!v9)
  {
    v14 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_258B649C8();
  sub_258B64AA4(0, &qword_281113788, v10 + 8, MEMORY[0x277CE3B48]);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v13 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_29;
  }

  v14[2] = v8;
  v14[3] = 2 * ((result - v13) / v12);
LABEL_19:
  sub_258B64AA4(0, &qword_281113788, v10 + 8, MEMORY[0x277CE3B48]);
  v17 = *(v16 - 8);
  if (v5)
  {
    if (v14 < a4 || (v18 = (*(v17 + 80) + 32) & ~*(v17 + 80), v14 + v18 >= a4 + v18 + *(v17 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t sub_258B64340(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_258B6440C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_258B64A48(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_258B6440C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_258B64518(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_258B652E4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_258B64518(uint64_t a1, unint64_t a2)
{
  v4 = sub_258B64564(a1, a2);
  sub_258B64694(&unk_2869DFD98);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_258B64564(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_258B64780(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_258B652E4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_258B65214();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_258B64780(v10, 0);
        result = sub_258B652C4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_258B64694(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_258B6480C(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_258B64780(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_258B64AA4(0, &qword_27F97AC70, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_258B6480C(char *result, int64_t a2, char a3, char *a4)
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
    sub_258B64AA4(0, &qword_27F97AC70, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_258B64918(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_258B6497C()
{
  result = qword_27F97AC60;
  if (!qword_27F97AC60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F97AC60);
  }

  return result;
}

void sub_258B649C8()
{
  if (!qword_27F97AC50)
  {
    sub_258B64AA4(255, &qword_281113788, MEMORY[0x277D84F78] + 8, MEMORY[0x277CE3B48]);
    v0 = sub_258B65314();
    if (!v1)
    {
      atomic_store(v0, &qword_27F97AC50);
    }
  }
}

uint64_t sub_258B64A48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_258B64AA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_258B64AF4()
{
  if (!qword_27F97AC78)
  {
    type metadata accessor for MentalHealthLauncherComplicationTimelineEntry();
    sub_258B62478(qword_2811138C0, type metadata accessor for MentalHealthLauncherComplicationTimelineEntry);
    v0 = sub_258B651F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F97AC78);
    }
  }
}

uint64_t sub_258B64B88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MentalHealthLauncherComplicationTimelineEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258B64BEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_258B64918(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_258B64C5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258B64CE4()
{
  result = sub_258B64E84();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}