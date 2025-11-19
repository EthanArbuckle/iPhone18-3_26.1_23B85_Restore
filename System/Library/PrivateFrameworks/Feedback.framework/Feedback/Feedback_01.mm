uint64_t sub_1B8B3FB10()
{
  v1 = *(type metadata accessor for Previewer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1B8B3E580(v0 + v2, *v3, v3[1]);
}

uint64_t objectdestroy_11Tm()
{
  v1 = type metadata accessor for Previewer();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v31 = *(*(v1 - 8) + 64);
  v4 = v0 + v3;
  v5 = sub_1B8C23568();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = type metadata accessor for BatchInteraction(0);

  v7 = *(v0 + v3 + v6[6]);

  v8 = v0 + v3 + v6[7];
  type metadata accessor for BatchInteraction.ContentPolarity(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v11 = *(*(v10 - 8) + 48);
  v12 = v11(v8, 1, v10);
  if (EnumCaseMultiPayload != 1)
  {
    if (v12)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  if (!v12)
  {
    v14 = swift_getEnumCaseMultiPayload();
    if (v14 > 2)
    {
      switch(v14)
      {
        case 3:

          v28 = *(v8 + 16);

          break;
        case 4:
          v29 = sub_1B8C23328();
          (*(*(v29 - 8) + 8))(v8, v29);
          break;
        case 5:
          sub_1B8B3B06C(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72));
          break;
      }
    }

    else if (v14 < 2)
    {
      v17 = *(v8 + 8);
    }

    else if (v14 == 2)
    {
    }
  }

  v8 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
  if (!v11(v8, 1, v10))
  {
LABEL_6:
    v13 = swift_getEnumCaseMultiPayload();
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:

          v16 = *(v8 + 16);

          break;
        case 4:
          v18 = sub_1B8C23328();
          (*(*(v18 - 8) + 8))(v8, v18);
          break;
        case 5:
          sub_1B8B3B06C(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72));
          break;
      }
    }

    else if (v13 < 2)
    {
      v15 = *(v8 + 8);
    }

    else if (v13 == 2)
    {
    }
  }

LABEL_26:
  v19 = v4 + *(v1 + 20);
  if (v11(v19, 1, v10))
  {
    goto LABEL_39;
  }

  v20 = swift_getEnumCaseMultiPayload();
  if (v20 <= 2)
  {
    if (v20 >= 2)
    {
      if (v20 == 2)
      {
      }

      goto LABEL_39;
    }

    v21 = *(v19 + 8);
LABEL_37:

    goto LABEL_39;
  }

  switch(v20)
  {
    case 3:

      v22 = *(v19 + 16);
      goto LABEL_37;
    case 4:
      v23 = sub_1B8C23328();
      (*(*(v23 - 8) + 8))(v19, v23);
      break;
    case 5:
      sub_1B8B3B06C(*v19, *(v19 + 8), *(v19 + 16), *(v19 + 24), *(v19 + 32), *(v19 + 40), *(v19 + 48), *(v19 + 56), *(v19 + 64), *(v19 + 72));
      break;
  }

LABEL_39:
  v24 = (v31 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v4 + *(v1 + 28));
  v26 = *v25;

  v27 = v25[1];

  return MEMORY[0x1EEE6BDD0](v0, v24 + 8, v2 | 7);
}

uint64_t sub_1B8B4001C()
{
  v1 = *(type metadata accessor for Previewer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_1B8B3E750(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_1B8B400C8()
{
  result = qword_1EBAA61B0;
  if (!qword_1EBAA61B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA61A0, &qword_1B8C28168);
    sub_1B8B3A58C();
    sub_1B8B34CFC(&qword_1EBAA61B8, &qword_1EBAA61A8, &unk_1B8C2CE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA61B0);
  }

  return result;
}

BOOL sub_1B8B40188(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1B8B44E48(v7, v9);
}

uint64_t sub_1B8B401E4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 160) = a3;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  v4 = sub_1B8C237E8();
  *(v3 + 56) = v4;
  v5 = *(v4 - 8);
  *(v3 + 64) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v7 = type metadata accessor for BatchInteraction.ContentPreview(0);
  *(v3 + 88) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  v9 = sub_1B8C23938();
  *(v3 + 112) = v9;
  v10 = *(v9 - 8);
  *(v3 + 120) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6280, &unk_1B8C285B0) - 8) + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8B4039C, 0, 0);
}

uint64_t sub_1B8B4039C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 48);
  sub_1B8B41108(*(v0 + 160), v2);
  sub_1B8B34450(v2, v1, &qword_1EBAA6280, &unk_1B8C285B0);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    v6 = *(v0 + 152);
    v7 = *(v0 + 48);
    sub_1B8B3433C(*(v0 + 144), &qword_1EBAA6280, &unk_1B8C285B0);
    type metadata accessor for BatchInteraction.ContentPreview.Err(0);
    sub_1B8B46314(&qword_1EBAA6288, type metadata accessor for BatchInteraction.ContentPreview.Err);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v8 = v6;
LABEL_3:
    sub_1B8B3433C(v8, &qword_1EBAA6280, &unk_1B8C285B0);
LABEL_4:
    v10 = *(v0 + 144);
    v9 = *(v0 + 152);
    v12 = *(v0 + 128);
    v11 = *(v0 + 136);
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v16 = *(v0 + 72);
    v15 = *(v0 + 80);

    v17 = *(v0 + 8);
    goto LABEL_16;
  }

  v18 = *(v0 + 136);
  v20 = *(v0 + 120);
  v19 = *(v0 + 128);
  v21 = *(v0 + 112);
  (*(v20 + 32))(v18, *(v0 + 144), v21);
  v22 = *(v20 + 16);
  v22(v19, v18, v21);
  v23 = (*(v20 + 88))(v19, v21);
  if (v23 != *MEMORY[0x1E699C5D0])
  {
    if (v23 == *MEMORY[0x1E699C5F0])
    {
      v32 = *(v0 + 128);
      (*(*(v0 + 120) + 96))(v32, *(v0 + 112));
      v33 = *v32;
      v34 = v32[1];
      v35 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      v36 = sub_1B8C234A8();
      v37 = [v35 initWithData_];

      v38 = *(v0 + 152);
      v39 = *(v0 + 136);
      v41 = *(v0 + 112);
      v40 = *(v0 + 120);
      if (!v37)
      {
        v89 = *(v0 + 48);
        type metadata accessor for BatchInteraction.ContentPreview.Err(0);
        sub_1B8B46314(&qword_1EBAA6288, type metadata accessor for BatchInteraction.ContentPreview.Err);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1B8B4645C(v33, v34);

        (*(v40 + 8))(v39, v41);
        v8 = v38;
        goto LABEL_3;
      }

      v42 = *(v0 + 104);
      v43 = *(v0 + 48);
      v144 = *(v0 + 88);
      v148 = *(v0 + 40);
      sub_1B8B4645C(v33, v34);

      (*(v40 + 8))(v39, v41);
      sub_1B8B3433C(v38, &qword_1EBAA6280, &unk_1B8C285B0);
      *v42 = v37;
      swift_storeEnumTagMultiPayload();
      v44 = v42;
      v45 = v148;
      goto LABEL_14;
    }

    if (v23 == *MEMORY[0x1E699C608])
    {
      v46 = *(v0 + 128);
      (*(*(v0 + 120) + 96))(v46, *(v0 + 112));
      v47 = *v46;
      v48 = v46[1];
      v50 = v46[2];
      v49 = v46[3];
      v51 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      v52 = sub_1B8C234A8();
      v53 = [v51 initWithData_];

      v54 = *(v0 + 152);
      v55 = *(v0 + 136);
      v56 = *(v0 + 120);
      v149 = *(v0 + 112);
      if (!v53)
      {
        v98 = *(v0 + 48);

        type metadata accessor for BatchInteraction.ContentPreview.Err(0);
        sub_1B8B46314(&qword_1EBAA6288, type metadata accessor for BatchInteraction.ContentPreview.Err);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1B8B4645C(v47, v48);

        (*(v56 + 8))(v55, v149);
        v8 = v54;
        goto LABEL_3;
      }

      v140 = v50;
      v57 = *(v0 + 96);
      v58 = *(v0 + 152);
      v59 = *(v0 + 48);
      v142 = *(v0 + 88);
      v145 = *(v0 + 40);
      sub_1B8B4645C(v47, v48);

      (*(v56 + 8))(v55, v149);
      sub_1B8B3433C(v58, &qword_1EBAA6280, &unk_1B8C285B0);
      *v57 = v53;
      v57[1] = v140;
      v57[2] = v49;
      swift_storeEnumTagMultiPayload();
      v44 = v57;
      v45 = v145;
LABEL_14:
      sub_1B8B46248(v44, v45);
      goto LABEL_15;
    }

    if (v23 != *MEMORY[0x1E699C588])
    {
      v90 = *(v0 + 152);
      v91 = *(v0 + 128);
      v92 = *(v0 + 136);
      v93 = *(v0 + 112);
      v94 = *(v0 + 120);
      if (v23 != *MEMORY[0x1E699C5C0])
      {
        v152 = *(v0 + 48);
        type metadata accessor for BatchInteraction.ContentPreview.Err(0);
        sub_1B8B46314(&qword_1EBAA6288, type metadata accessor for BatchInteraction.ContentPreview.Err);
        swift_allocError();
        v22(v108, v92, v93);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v109 = *(v94 + 8);
        v109(v92, v93);
        sub_1B8B3433C(v90, &qword_1EBAA6280, &unk_1B8C285B0);
        v109(v91, v93);
        goto LABEL_4;
      }

      v95 = *(v0 + 88);
      v96 = *(v0 + 40);

      (*(v94 + 8))(v92, v93);
      sub_1B8B3433C(v90, &qword_1EBAA6280, &unk_1B8C285B0);
      (*(v94 + 96))(v91, v93);
      v97 = v91[1];
      *v96 = *v91;
      v96[1] = v97;
      goto LABEL_7;
    }

    v69 = *(v0 + 128);
    v71 = *(v0 + 72);
    v70 = *(v0 + 80);
    v72 = *(v0 + 56);
    v73 = *(v0 + 64);
    (*(*(v0 + 120) + 96))(v69, *(v0 + 112));
    (*(v73 + 32))(v70, v69, v72);
    v74 = *(v73 + 16);
    v74(v71, v70, v72);
    v75 = (*(v73 + 88))(v71, v72);
    if (v75 == *MEMORY[0x1E699C3B8])
    {
      v76 = *(v0 + 152);
      v150 = *(v0 + 136);
      v77 = *(v0 + 112);
      v78 = *(v0 + 120);
      v79 = *(v0 + 72);
      v80 = *(v0 + 80);
      v81 = *(v0 + 56);
      v82 = *(v0 + 64);
      v83 = *(v0 + 48);
      (*(v82 + 96))(v79, v81);
      if (*v79)
      {
        v84 = 1702195828;
      }

      else
      {
        v84 = 0x65736C6166;
      }

      if (*v79)
      {
        v85 = 0xE400000000000000;
      }

      else
      {
        v85 = 0xE500000000000000;
      }

      MEMORY[0x1B8CC9EB0](v84, v85);

      v86 = 0;
      v87 = 0xE000000000000000;
      (*(v82 + 8))(v80, v81);
      v88 = v76;
      (*(v78 + 8))(v150, v77);
      goto LABEL_38;
    }

    if (v75 == *MEMORY[0x1E699C3D8])
    {
      v99 = *(v0 + 152);
      v151 = *(v0 + 136);
      v101 = *(v0 + 112);
      v100 = *(v0 + 120);
      v102 = *(v0 + 72);
      v103 = *(v0 + 80);
      v104 = *(v0 + 56);
      v105 = *(v0 + 64);
      v106 = *(v0 + 48);
      (*(v105 + 96))(v102, v104);
      *(v0 + 32) = *v102;
      v86 = sub_1B8C259E8();
      v87 = v107;
    }

    else
    {
      if (v75 == *MEMORY[0x1E699C3C8])
      {
        v88 = *(v0 + 152);
        v110 = *(v0 + 136);
        v112 = *(v0 + 112);
        v111 = *(v0 + 120);
        v113 = *(v0 + 72);
        v114 = *(v0 + 80);
        v115 = *(v0 + 56);
        v116 = *(v0 + 64);
        v117 = *(v0 + 48);
        (*(v116 + 96))(v113, v115);
        v118 = *v113;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0xE000000000000000;
        sub_1B8C253B8();

        v86 = *(v0 + 16);
        v87 = *(v0 + 24);
        (*(v116 + 8))(v114, v115);
        (*(v111 + 8))(v110, v112);
        goto LABEL_38;
      }

      if (v75 != *MEMORY[0x1E699C3D0])
      {
        if (v75 == *MEMORY[0x1E699C3C0])
        {
          v122 = *(v0 + 152);
          v123 = *(v0 + 120);
          v146 = *(v0 + 112);
          v153 = *(v0 + 136);
          v124 = *(v0 + 72);
          v125 = *(v0 + 80);
          v127 = *(v0 + 56);
          v126 = *(v0 + 64);
          v128 = *(v0 + 48);
          (*(v126 + 96))(v124, v127);
          v86 = MEMORY[0x1B8CC9FA0](*v124, v127);
          v87 = v129;

          (*(v126 + 8))(v125, v127);
          (*(v123 + 8))(v153, v146);
          v88 = v122;
        }

        else
        {
          v131 = *(v0 + 64);
          v130 = *(v0 + 72);
          v132 = (*(v0 + 120) + 8);
          v147 = *(v0 + 112);
          v154 = *(v0 + 152);
          v133 = *(v0 + 80);
          v134 = *(v0 + 48);
          v135 = *(v0 + 56);
          v141 = v134;
          v143 = *(v0 + 136);
          if (v75 != *MEMORY[0x1E699C3B0])
          {
            type metadata accessor for BatchInteraction.ContentPreview.Err(0);
            sub_1B8B46314(&qword_1EBAA6288, type metadata accessor for BatchInteraction.ContentPreview.Err);
            swift_allocError();
            v74(v138, v133, v135);
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            v139 = *(v131 + 8);
            v139(v133, v135);
            (*v132)(v143, v147);
            sub_1B8B3433C(v154, &qword_1EBAA6280, &unk_1B8C285B0);
            v139(v130, v135);
            goto LABEL_4;
          }

          (*(v131 + 96))(v130, v135);
          v136 = *v130;
          v86 = sub_1B8C250A8();
          v87 = v137;

          (*(v131 + 8))(v133, v135);
          (*v132)(v143, v147);
          v88 = v154;
        }

        goto LABEL_38;
      }

      v99 = *(v0 + 152);
      v151 = *(v0 + 136);
      v101 = *(v0 + 112);
      v100 = *(v0 + 120);
      v121 = *(v0 + 72);
      v103 = *(v0 + 80);
      v104 = *(v0 + 56);
      v105 = *(v0 + 64);
      v106 = *(v0 + 48);
      (*(v105 + 96))(v121, v104);
      v86 = *v121;
      v87 = v121[1];
    }

    v88 = v99;
    (*(v105 + 8))(v103, v104);
    (*(v100 + 8))(v151, v101);
LABEL_38:
    sub_1B8B3433C(v88, &qword_1EBAA6280, &unk_1B8C285B0);
    v119 = *(v0 + 88);
    v120 = *(v0 + 40);
    *v120 = v86;
    v120[1] = v87;
    goto LABEL_7;
  }

  v24 = *(v0 + 152);
  v26 = *(v0 + 128);
  v25 = *(v0 + 136);
  v27 = *(v0 + 112);
  v28 = *(v0 + 120);
  v29 = *(v0 + 88);
  v30 = *(v0 + 40);

  (*(v28 + 8))(v25, v27);
  sub_1B8B3433C(v24, &qword_1EBAA6280, &unk_1B8C285B0);
  (*(v28 + 96))(v26, v27);
  v31 = v26[1];
  *v30 = *v26;
  v30[1] = v31;
LABEL_7:
  swift_storeEnumTagMultiPayload();
LABEL_15:
  v61 = *(v0 + 144);
  v60 = *(v0 + 152);
  v63 = *(v0 + 128);
  v62 = *(v0 + 136);
  v65 = *(v0 + 96);
  v64 = *(v0 + 104);
  v67 = *(v0 + 72);
  v66 = *(v0 + 80);

  v17 = *(v0 + 8);
LABEL_16:

  return v17();
}

uint64_t sub_1B8B41108@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v2 = a1;
  v3 = sub_1B8C238B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6280, &unk_1B8C285B0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  v22 = (v4 + 48);
  if (v2)
  {
    sub_1B8C23918();
    if ((*v22)(v12, 1, v3))
    {
      sub_1B8B3433C(v12, &qword_1EBAA6290, &qword_1B8C2F800);
      v23 = sub_1B8C23938();
      v24 = *(v23 - 8);
      (*(v24 + 56))(v19, 1, 1, v23);
      sub_1B8C238D8();
      result = (*(v24 + 48))(v19, 1, v23);
      if (result == 1)
      {
        return result;
      }

      v26 = v19;
      return sub_1B8B3433C(v26, &qword_1EBAA6280, &unk_1B8C285B0);
    }

    (*(v4 + 16))(v7, v12, v3);
    sub_1B8B3433C(v12, &qword_1EBAA6290, &qword_1B8C2F800);
    sub_1B8C23878();
    (*(v4 + 8))(v7, v3);
    v29 = sub_1B8C23938();
    v30 = *(v29 - 8);
    v31 = *(v30 + 56);
    v31(v19, 0, 1, v29);
    v32 = v38;
    (*(v30 + 32))(v38, v19, v29);
    return (v31)(v32, 0, 1, v29);
  }

  else
  {
    sub_1B8C238F8();
    if ((*v22)(v14, 1, v3))
    {
      sub_1B8B3433C(v14, &qword_1EBAA6290, &qword_1B8C2F800);
      v27 = sub_1B8C23938();
      v28 = *(v27 - 8);
      (*(v28 + 56))(v21, 1, 1, v27);
      sub_1B8C237F8();
      result = (*(v28 + 48))(v21, 1, v27);
      if (result == 1)
      {
        return result;
      }

      v26 = v21;
      return sub_1B8B3433C(v26, &qword_1EBAA6280, &unk_1B8C285B0);
    }

    (*(v4 + 16))(v7, v14, v3);
    sub_1B8B3433C(v14, &qword_1EBAA6290, &qword_1B8C2F800);
    sub_1B8C23878();
    (*(v4 + 8))(v7, v3);
    v33 = sub_1B8C23938();
    v34 = *(v33 - 8);
    v35 = *(v34 + 56);
    v35(v21, 0, 1, v33);
    v36 = v38;
    (*(v34 + 32))(v38, v21, v33);
    return (v35)(v36, 0, 1, v33);
  }
}

uint64_t sub_1B8B41648@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B8C23568();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void *sub_1B8B416B4()
{
  swift_getKeyPath();
  sub_1B8B46314(&qword_1EBAA6258, type metadata accessor for NullableBatchInteraction);
  sub_1B8C23588();

  v1 = *(v0 + OBJC_IVAR____TtC8Feedback24NullableBatchInteraction__donation);
  v2 = v1;
  return v1;
}

id sub_1B8B41764@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B46314(&qword_1EBAA6258, type metadata accessor for NullableBatchInteraction);
  sub_1B8C23588();

  v4 = *(v3 + OBJC_IVAR____TtC8Feedback24NullableBatchInteraction__donation);
  *a2 = v4;

  return v4;
}

void sub_1B8B41824(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8Feedback24NullableBatchInteraction__donation;
  v5 = *(v1 + OBJC_IVAR____TtC8Feedback24NullableBatchInteraction__donation);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B46314(&qword_1EBAA6258, type metadata accessor for NullableBatchInteraction);
    sub_1B8C23578();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1B8C23688();
  v6 = v5;
  v7 = a1;
  v8 = sub_1B8C255E8();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1B8B419AC(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v6 = sub_1B8C237B8();
  v2[23] = v6;
  v7 = *(v6 - 8);
  v2[24] = v7;
  v8 = *(v7 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  sub_1B8C23688();
  v9 = OBJC_IVAR____TtC8Feedback24NullableBatchInteraction_id;
  v2[27] = OBJC_IVAR____TtC8Feedback24NullableBatchInteraction_id;
  v10 = *(MEMORY[0x1E699C1B0] + 4);
  v11 = swift_task_alloc();
  v2[28] = v11;
  *v11 = v2;
  v11[1] = sub_1B8B41B3C;

  return MEMORY[0x1EEE03E80](v1 + v9);
}

uint64_t sub_1B8B41B3C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;

  if (v1)
  {
    v8 = v4[25];
    v7 = v4[26];
    v11 = v4 + 21;
    v9 = v4[21];
    v10 = v11[1];

    v12 = *(v6 + 8);

    return v12();
  }

  else
  {
    v4[29] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B8B41CA4, 0, 0);
  }
}

uint64_t sub_1B8B41CA4()
{
  v1 = v0[29];
  v2 = v0[18];
  v3 = v1;
  sub_1B8B41824(v1);
  if (!v1)
  {
    sub_1B8B463B0();
    swift_allocError();
    *v16 = 0;
    v16[1] = 0;
    swift_willThrow();
LABEL_20:
    v30 = v0[25];
    v29 = v0[26];
    v32 = v0[21];
    v31 = v0[22];

    v33 = v0[1];

    return v33();
  }

  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[24];
  v7 = v3;
  sub_1B8C237C8();

  v8 = (*(v6 + 88))(v4, v5);
  v9 = v0[26];
  v10 = v0[23];
  v11 = v0[24];
  if (v8 == *MEMORY[0x1E699C380])
  {
    (*(v11 + 96))(v0[26], v10);
    v12 = *v9;
    v13 = v9[1];
    if (v12 == 0x6164696C61766E69 && v13 == 0xEA00000000006574)
    {

LABEL_19:
      sub_1B8B463B0();
      swift_allocError();
      *v28 = xmmword_1B8C28170;
      swift_willThrow();

      goto LABEL_20;
    }

    v15 = sub_1B8C25A08();

    if (v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
    (*(v11 + 8))(v0[26], v10);
  }

  v17 = sub_1B8C0976C(v7);
  if (v18 || (v17 = sub_1B8C23948(), v18))
  {
    v19 = v17;
    v20 = v18;
    v21 = type metadata accessor for AppInfoController();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    v24 = swift_allocObject();
    v24[3] = 0;
    v24[4] = 0;
    v24[2] = 0;
    sub_1B8C235B8();
    v24[5] = v19;
    v24[6] = v20;
  }

  else
  {
    v24 = 0;
  }

  v0[30] = v24;
  sub_1B8B8061C(v7, (v0 + 12));
  v25 = v0[15];
  sub_1B8B3433C((v0 + 12), &qword_1EBAA6270, &qword_1B8C285A0);
  if (v25)
  {
    v26 = swift_task_alloc();
    v0[31] = v26;
    *v26 = v0;
    v26[1] = sub_1B8B4201C;

    return sub_1B8B7FFCC((v0 + 2), v7);
  }

  else
  {
    v34 = v7;
    v35 = swift_task_alloc();
    v0[33] = v35;
    *v35 = v0;
    v35[1] = sub_1B8B422C0;
    v36 = v0[22];

    return sub_1B8B401E4(v36, v34, 0);
  }
}

uint64_t sub_1B8B4201C()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v6 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {

    v4 = sub_1B8B42724;
  }

  else
  {
    v4 = sub_1B8B42138;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8B42138()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);

  v6 = sub_1B8C23568();
  (*(*(v6 - 8) + 16))(v4, v5 + v1, v6);
  v7 = type metadata accessor for BatchInteraction(0);
  v8 = (v4 + v7[7]);
  *v8 = *(v0 + 16);
  v9 = *(v0 + 32);
  v10 = *(v0 + 48);
  v11 = *(v0 + 64);
  *(v8 + 57) = *(v0 + 73);
  v8[2] = v10;
  v8[3] = v11;
  v8[1] = v9;
  swift_storeEnumTagMultiPayload();
  v13 = *(v0 + 232);
  v12 = *(v0 + 240);
  v15 = *(v0 + 200);
  v14 = *(v0 + 208);
  v16 = *(v0 + 176);
  v21 = *(v0 + 168);
  v17 = *(v0 + 136);
  (*(v3 + 56))(v8, 0, 1, *(v0 + 152));
  type metadata accessor for BatchInteraction.ContentPolarity(0);
  swift_storeEnumTagMultiPayload();
  v18 = v7[6];
  *(v17 + v7[5]) = v13;
  *(v17 + v18) = v12;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1B8B422C0()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  v2[34] = v0;

  v5 = v2[29];
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8B429E4, 0, 0);
  }

  else
  {
    v6 = v5;
    v7 = swift_task_alloc();
    v2[35] = v7;
    *v7 = v4;
    v7[1] = sub_1B8B42464;
    v8 = v2[21];

    return sub_1B8B401E4(v8, v6, 1);
  }
}

uint64_t sub_1B8B42464()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_1B8B42A7C;
  }

  else
  {
    v3 = sub_1B8B42578;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8B42578()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v6 = *(v0 + 136);
  v7 = *(v0 + 144);

  v8 = sub_1B8C23568();
  (*(*(v8 - 8) + 16))(v6, v7 + v1, v8);
  v9 = type metadata accessor for BatchInteraction(0);
  v10 = v6 + v9[7];
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
  sub_1B8B46248(v3, v10);
  v12 = *(v5 + 56);
  v12(v10, 0, 1, v4);
  sub_1B8B46248(v2, v10 + v11);
  v13 = *(v0 + 232);
  v14 = *(v0 + 240);
  v15 = *(v0 + 200);
  v20 = *(v0 + 176);
  v21 = *(v0 + 168);
  v16 = *(v0 + 136);
  v12(v10 + v11, 0, 1, *(v0 + 152));
  type metadata accessor for BatchInteraction.ContentPolarity(0);
  swift_storeEnumTagMultiPayload();
  v17 = v9[6];
  *(v16 + v9[5]) = v13;
  *(v16 + v17) = v14;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1B8B42724()
{
  v33 = v0;
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = v0[29];
  v3 = sub_1B8C23C38();
  __swift_project_value_buffer(v3, qword_1EBAB3A30);
  v4 = v2;
  v5 = v1;
  v6 = sub_1B8C23C18();
  v7 = sub_1B8C25478();

  if (os_log_type_enabled(v6, v7))
  {
    v30 = v0[32];
    v8 = v0[29];
    v9 = v0[24];
    v10 = v0[25];
    v11 = v0[23];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v12 = 136446466;
    sub_1B8C237C8();
    sub_1B8B46314(&qword_1EBAA6278, MEMORY[0x1E699C390]);
    v14 = sub_1B8C259E8();
    v16 = v15;
    (*(v9 + 8))(v10, v11);
    v17 = sub_1B8B5DD48(v14, v16, &v32);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2114;
    v18 = v30;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v13 = v19;
    _os_log_impl(&dword_1B8B22000, v6, v7, "FBKSInteraction.Content is for %{public}s but failed with error: %{public}@", v12, 0x16u);
    sub_1B8B3433C(v13, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x1B8CCB0E0](v31, -1, -1);
    MEMORY[0x1B8CCB0E0](v12, -1, -1);
  }

  v20 = v0[32];
  v21 = v0[29];
  v22 = v0[30];
  swift_willThrow();

  v23 = v0[32];
  v25 = v0[25];
  v24 = v0[26];
  v27 = v0[21];
  v26 = v0[22];

  v28 = v0[1];

  return v28();
}

uint64_t sub_1B8B429E4()
{
  v1 = *(v0 + 240);

  v2 = *(v0 + 272);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B8B42A7C()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[22];

  sub_1B8B461E8(v3, type metadata accessor for BatchInteraction.ContentPreview);
  v4 = v0[36];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[21];
  v7 = v0[22];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B8B42B38(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v4 = type metadata accessor for AnalyticsEvent();
  v2[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[7] = v6;
  *v6 = v2;
  v6[1] = sub_1B8B42C04;

  return sub_1B8B419AC(a1);
}

uint64_t sub_1B8B42C04()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1B8B430CC;
  }

  else
  {
    v3 = sub_1B8B42D18;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8B42D18()
{
  v15 = v0;
  v1 = v0[3];
  v2 = *(v1 + *(type metadata accessor for BatchInteraction(0) + 24));
  v0[9] = v2;
  if (v2)
  {
    v3 = qword_1EBAA5978;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_1B8C23C38();
    __swift_project_value_buffer(v4, qword_1EBAB3A30);
    v5 = sub_1B8C23C18();
    v6 = sub_1B8C25468();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1B8B5DD48(0x292864616F6CLL, 0xE600000000000000, &v14);
      _os_log_impl(&dword_1B8B22000, v5, v6, "%s - interaction has appInfoController", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1B8CCB0E0](v8, -1, -1);
      MEMORY[0x1B8CCB0E0](v7, -1, -1);
    }

    v9 = *(MEMORY[0x1E69E88D0] + 4);
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_1B8B42F64;

    return MEMORY[0x1EEE6DDE0]();
  }

  else
  {
    v11 = v0[6];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1B8B42F64()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B8B43060, 0, 0);
}

uint64_t sub_1B8B43060()
{
  v1 = v0[9];

  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B8B430CC()
{
  v31 = v0;
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_1B8C23C38();
  v0[11] = __swift_project_value_buffer(v2, qword_1EBAB3A30);
  v3 = v1;
  v4 = sub_1B8C23C18();
  v5 = sub_1B8C25478();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1B8B22000, v4, v5, "Error loading data on interaction: %{public}@", v7, 0xCu);
    sub_1B8B3433C(v8, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
    MEMORY[0x1B8CCB0E0](v7, -1, -1);
  }

  v11 = v0[4];

  swift_getKeyPath();
  v0[2] = v11;
  sub_1B8B46314(&qword_1EBAA6258, type metadata accessor for NullableBatchInteraction);
  sub_1B8C23588();

  v12 = *(v11 + OBJC_IVAR____TtC8Feedback24NullableBatchInteraction__donation);
  v0[12] = v12;
  if (v12)
  {
    v13 = v0[4];
    v12;

    v14 = sub_1B8C23C18();
    v15 = sub_1B8C25478();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = v0[4];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      *v17 = 136315138;
      sub_1B8C23568();
      sub_1B8B46314(&qword_1EBAA6260, MEMORY[0x1E69695A8]);
      v19 = sub_1B8C259E8();
      v21 = sub_1B8B5DD48(v19, v20, &v30);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1B8B22000, v14, v15, "Will invalidate: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1B8CCB0E0](v18, -1, -1);
      MEMORY[0x1B8CCB0E0](v17, -1, -1);
    }

    v22 = *(MEMORY[0x1E699C1A0] + 4);
    v29 = (*MEMORY[0x1E699C1A0] + MEMORY[0x1E699C1A0]);
    v23 = swift_task_alloc();
    v0[13] = v23;
    *v23 = v0;
    v23[1] = sub_1B8B434D0;

    return v29();
  }

  else
  {
    v25 = v0[8];
    v26 = v0[6];
    swift_willThrow();

    v27 = v0[1];
    v28 = v0[8];

    return v27();
  }
}

uint64_t sub_1B8B434D0()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1B8B436BC;
  }

  else
  {
    v3 = sub_1B8B435E4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8B435E4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 96);
  sub_1B8C237C8();

  swift_storeEnumTagMultiPayload();
  sub_1B8C03B68();

  sub_1B8B461E8(v1, type metadata accessor for AnalyticsEvent);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  swift_willThrow();

  v6 = *(v0 + 8);
  v7 = *(v0 + 64);

  return v6();
}

uint64_t sub_1B8B436BC()
{
  v20 = v0;
  v1 = v0[11];
  v2 = v0[4];

  v3 = sub_1B8C23C18();
  v4 = sub_1B8C25478();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  v7 = v0[12];
  if (v5)
  {
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    sub_1B8C23568();
    sub_1B8B46314(&qword_1EBAA6260, MEMORY[0x1E69695A8]);
    v11 = sub_1B8C259E8();
    v13 = sub_1B8B5DD48(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1B8B22000, v3, v4, "Failed to invalidate interaction: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CCB0E0](v10, -1, -1);
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[8];
  v15 = v0[6];
  swift_willThrow();

  v16 = v0[1];
  v17 = v0[8];

  return v16();
}

uint64_t sub_1B8B438A4()
{
  v1 = OBJC_IVAR____TtC8Feedback24NullableBatchInteraction_id;
  v2 = sub_1B8C23568();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC8Feedback24NullableBatchInteraction___observationRegistrar;
  v4 = sub_1B8C235C8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B8B439B8()
{
  result = sub_1B8C23568();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1B8C235C8();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1B8B43AF4()
{
  sub_1B8C23568();
  if (v0 <= 0x3F)
  {
    sub_1B8C23688();
    if (v1 <= 0x3F)
    {
      sub_1B8B43C54(319, &qword_1EBAA61F0, type metadata accessor for AppInfoController);
      if (v2 <= 0x3F)
      {
        type metadata accessor for BatchInteraction.ContentPolarity(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B8B43BC4()
{
  sub_1B8B43C54(319, &qword_1EBAA6020, type metadata accessor for BatchInteraction.ContentPreview);
  if (v0 <= 0x3F)
  {
    sub_1B8B43CC8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B8B43C54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B8C25608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B8B43CC8()
{
  if (!qword_1EBAA6208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6008, &qword_1B8C2A5B0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBAA6208);
    }
  }
}

void sub_1B8B43D3C()
{
  sub_1B8B46130(319, &qword_1EBAA6220, 0x1E69DCAB8);
  if (v0 <= 0x3F)
  {
    sub_1B8B43DE8();
    if (v1 <= 0x3F)
    {
      sub_1B8C23328();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1B8B43DE8()
{
  if (!qword_1EBAA6228)
  {
    sub_1B8B46130(255, &qword_1EBAA6220, 0x1E69DCAB8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBAA6228);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8Feedback30ImagePlaygroundDonationDecoderV6ResultV6PersonVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8Feedback22GenmojiDonationDecoderV6ResultV6PersonOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B8B43ED4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 72);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B8B43F1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B8B43F8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8Feedback24NullableBatchInteraction_id;
  v5 = sub_1B8C23568();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1B8B44008(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1B8C23548();
}

uint64_t sub_1B8B44024(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1B8C25A08() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1B8B440B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatchUpDonationDecoder.Result.Mail(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v24 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_28:
    v22 = 0;
    return v22 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1B8B462AC(v14, v11, type metadata accessor for CatchUpDonationDecoder.Result.Mail);
      sub_1B8B462AC(v15, v8, type metadata accessor for CatchUpDonationDecoder.Result.Mail);
      v17 = *v11 == *v8 && v11[1] == v8[1];
      if (!v17 && (sub_1B8C25A08() & 1) == 0)
      {
        break;
      }

      v18 = v11[2] == v8[2] && v11[3] == v8[3];
      if (!v18 && (sub_1B8C25A08() & 1) == 0 || (v11[4] != v8[4] || v11[5] != v8[5]) && (sub_1B8C25A08() & 1) == 0)
      {
        break;
      }

      if ((v11[6] != v8[6] || v11[7] != v8[7]) && (sub_1B8C25A08() & 1) == 0)
      {
        break;
      }

      v19 = v4[8];
      if ((sub_1B8C23508() & 1) == 0)
      {
        break;
      }

      v20 = v4[9];
      if ((sub_1B8C23548() & 1) == 0)
      {
        break;
      }

      v21 = v4[10];
      v22 = sub_1B8C23318();
      sub_1B8B461E8(v8, type metadata accessor for CatchUpDonationDecoder.Result.Mail);
      sub_1B8B461E8(v11, type metadata accessor for CatchUpDonationDecoder.Result.Mail);
      if (v22)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v22 & 1;
    }

    sub_1B8B461E8(v8, type metadata accessor for CatchUpDonationDecoder.Result.Mail);
    sub_1B8B461E8(v11, type metadata accessor for CatchUpDonationDecoder.Result.Mail);
    goto LABEL_28;
  }

  v22 = 1;
  return v22 & 1;
}

uint64_t sub_1B8B4435C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatchUpDonationDecoder.Result.Message(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v24 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_23:
    v22 = 0;
    return v22 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1B8B462AC(v14, v11, type metadata accessor for CatchUpDonationDecoder.Result.Message);
      sub_1B8B462AC(v15, v8, type metadata accessor for CatchUpDonationDecoder.Result.Message);
      v17 = *v11 == *v8 && v11[1] == v8[1];
      if (!v17 && (sub_1B8C25A08() & 1) == 0)
      {
        break;
      }

      v18 = v11[2] == v8[2] && v11[3] == v8[3];
      if (!v18 && (sub_1B8C25A08() & 1) == 0)
      {
        break;
      }

      v19 = v4[6];
      if ((sub_1B8C23508() & 1) == 0)
      {
        break;
      }

      v20 = v4[7];
      if ((sub_1B8C23318() & 1) == 0 || *(v11 + v4[8]) != *(v8 + v4[8]))
      {
        break;
      }

      v21 = v4[9];
      v22 = sub_1B8C23548();
      sub_1B8B461E8(v8, type metadata accessor for CatchUpDonationDecoder.Result.Message);
      sub_1B8B461E8(v11, type metadata accessor for CatchUpDonationDecoder.Result.Message);
      if (v22)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v22 & 1;
    }

    sub_1B8B461E8(v8, type metadata accessor for CatchUpDonationDecoder.Result.Message);
    sub_1B8B461E8(v11, type metadata accessor for CatchUpDonationDecoder.Result.Message);
    goto LABEL_23;
  }

  v22 = 1;
  return v22 & 1;
}

uint64_t sub_1B8B445D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v5 = *v3;
      v6 = *i;
      if (*(v3 - 2) != *(i - 2) || *(v3 - 1) != *(i - 1))
      {
        v8 = *(v3 - 1);
        v9 = *(i - 1);
        if ((sub_1B8C25A08() & 1) == 0)
        {
          break;
        }
      }

      v10 = sub_1B8B446D0(v5, v6);

      if ((v10 & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1B8B446D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 56);
  for (i = (a2 + 56); ; i += 32)
  {
    v10 = *(v3 - 3);
    v9 = *(v3 - 2);
    v12 = *(i - 3);
    v11 = *(i - 2);
    v13 = *i;
    if (!*v3)
    {
      if (*i)
      {
        return 0;
      }

      if (v10 != v12 || v9 != v11)
      {
LABEL_5:
        v5 = *(v3 - 3);
        v6 = *(v3 - 2);
        v7 = *(i - 3);
        v8 = *(i - 2);
        if ((sub_1B8C25A08() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

      goto LABEL_6;
    }

    if (*v3 == 1)
    {
      if (v13 != 1)
      {
        return 0;
      }

      if (v10 != v12 || v9 != v11)
      {
        goto LABEL_5;
      }

      goto LABEL_6;
    }

    if (v13 != 2)
    {
      return 0;
    }

    v15 = *(v3 - 1);
    v16 = *(i - 1);
    sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);
    sub_1B8B46850(v12, v11, v16, 2u);
    sub_1B8B46850(v10, v9, v15, 2u);
    if ((sub_1B8C255E8() & 1) == 0)
    {
      v22 = v12;
      v23 = v11;
      v24 = v16;
LABEL_34:
      sub_1B8B468BC(v22, v23, v24, 2u);
      v17 = v10;
      v18 = v9;
      v25 = v15;
      goto LABEL_35;
    }

    if (!v15)
    {
      break;
    }

    if (!v16)
    {
      v22 = v12;
      v23 = v11;
      v24 = 0;
      goto LABEL_34;
    }

    if (v9 == v11 && v15 == v16)
    {
      sub_1B8B468BC(v12, v9, v15, 2u);
      v17 = v10;
      v18 = v9;
      v19 = v15;
LABEL_28:
      sub_1B8B468BC(v17, v18, v19, 2u);
      goto LABEL_6;
    }

    v20 = sub_1B8C25A08();
    sub_1B8B468BC(v12, v11, v16, 2u);
    sub_1B8B468BC(v10, v9, v15, 2u);
    if ((v20 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    v3 += 32;
    if (!--v2)
    {
      return 1;
    }
  }

  sub_1B8B468BC(v10, v9, 0, 2u);
  v17 = v12;
  v18 = v11;
  if (!v16)
  {
    v19 = 0;
    goto LABEL_28;
  }

  v25 = v16;
LABEL_35:
  sub_1B8B468BC(v17, v18, v25, 2u);
  return 0;
}

uint64_t sub_1B8B4491C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v4 = v12 - 4;
        v13 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1B8CCA4C0](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v14 = *(v3 + 8 * v12);

          if (!v11)
          {
LABEL_24:
            if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v15 = *(a2 + 8 * v12);

            goto LABEL_26;
          }
        }

        MEMORY[0x1B8CCA4C0](v12 - 4, a2);
LABEL_26:
        LOBYTE(v4) = sub_1B8C23548();

        if (v4)
        {
          ++v12;
          if (v13 != v5)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    v16 = (v3 + 32);
    v17 = (a2 + 32);
    v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v5 - 1;
    while (1)
    {
      if (!v18)
      {
        goto LABEL_40;
      }

      if (!v19)
      {
        break;
      }

      v21 = *v16++;
      a2 = v21;
      v22 = *v17++;
      v3 = v22;

      v4 = sub_1B8C23548();

      v24 = v20-- != 0;
      if (v4)
      {
        --v19;
        --v18;
        if (v24)
        {
          continue;
        }
      }

      return v4 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1B8C258B8();
  }

  result = sub_1B8C258B8();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t sub_1B8B44B6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchInteraction(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v27 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_17:
    v25 = 0;
    return v25 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1B8B462AC(v14, v11, type metadata accessor for BatchInteraction);
      sub_1B8B462AC(v15, v8, type metadata accessor for BatchInteraction);
      if ((sub_1B8C23548() & 1) == 0)
      {
        break;
      }

      sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);
      v17 = v4[5];
      v18 = *&v11[v17];
      v19 = *&v8[v17];
      if ((sub_1B8C255E8() & 1) == 0)
      {
        break;
      }

      v20 = v4[6];
      v21 = *&v11[v20];
      v22 = *&v8[v20];
      if (v21)
      {
        if (!v22)
        {
          break;
        }

        v23 = *&v8[v20];

        v24 = sub_1B8C09398(v21, v22);

        if ((v24 & 1) == 0)
        {
          break;
        }
      }

      else if (v22)
      {
        break;
      }

      v25 = sub_1B8B456E8(&v11[v4[7]], &v8[v4[7]]);
      sub_1B8B461E8(v8, type metadata accessor for BatchInteraction);
      sub_1B8B461E8(v11, type metadata accessor for BatchInteraction);
      if (v25)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v25 & 1;
    }

    sub_1B8B461E8(v8, type metadata accessor for BatchInteraction);
    sub_1B8B461E8(v11, type metadata accessor for BatchInteraction);
    goto LABEL_17;
  }

  v25 = 1;
  return v25 & 1;
}

uint64_t sub_1B8B44DE8(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

BOOL sub_1B8B44E48(uint64_t a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (!*(a1 + 72))
  {
    if (!*(a2 + 72))
    {
      v8 = *a2;
      v9 = *(a2 + 8);
      if (v4)
      {
        if ((*(a2 + 8) & 1) == 0 || (sub_1B8B4435C(v3, *a2) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((*(a2 + 8) & 1) != 0 || (sub_1B8B440B4(v3, *a2) & 1) == 0)
      {
        return 0;
      }

      return 1;
    }

    return 0;
  }

  if (*(a1 + 72) != 1)
  {
    v16 = v3;
    v17 = v4;
    v18 = *(a1 + 9);
    v19 = *(a1 + 25);
    *v20 = *(a1 + 41);
    if (*(a2 + 72) == 2)
    {
      v10 = a2[1];
      v12 = *a2;
      v13 = v10;
      *v14 = a2[2];
      *&v14[9] = *(a2 + 41);
      return sub_1B8B47980(&v16, &v12);
    }

    return 0;
  }

  v16 = v3;
  v17 = v4;
  v18 = *(a1 + 9);
  v19 = *(a1 + 25);
  *v20 = *(a1 + 41);
  *&v20[15] = *(a1 + 56);
  if (*(a2 + 72) != 1)
  {
    return 0;
  }

  v5 = a2[3];
  *v14 = a2[2];
  *&v14[16] = v5;
  v15 = *(a2 + 8);
  v6 = a2[1];
  v12 = *a2;
  v13 = v6;
  return sub_1B8C061C8(&v16, &v12);
}

uint64_t sub_1B8B44F78(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v3 = sub_1B8C23328();
  v69 = *(v3 - 8);
  v70 = v3;
  v4 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v8);
  v68 = &v66 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v66 - v14);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v66 - v17);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v66 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v66 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6250, &qword_1B8C28568);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = &v66 - v27;
  v29 = &v66 + *(v26 + 56) - v27;
  v30 = a1;
  v31 = v29;
  sub_1B8B462AC(v30, v28, type metadata accessor for BatchInteraction.ContentPreview);
  sub_1B8B462AC(v71, v31, type metadata accessor for BatchInteraction.ContentPreview);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1B8B462AC(v28, v15, type metadata accessor for BatchInteraction.ContentPreview);
      v45 = *v15;
      v44 = v15[1];
      v46 = v15[2];
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        goto LABEL_37;
      }

      v48 = *v31;
      v47 = *(v31 + 8);
      v49 = *(v31 + 16);
      sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);
      v50 = sub_1B8C255E8();

      if (v50)
      {
        if (v44 != v47 || v46 != v49)
        {
          v52 = sub_1B8C25A08();

          if ((v52 & 1) == 0)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        }

        goto LABEL_49;
      }

LABEL_53:
      sub_1B8B461E8(v28, type metadata accessor for BatchInteraction.ContentPreview);
      goto LABEL_54;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v38 = v68;
      sub_1B8B462AC(v28, v68, type metadata accessor for BatchInteraction.ContentPreview);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        (*(v69 + 8))(v38, v70);
        goto LABEL_37;
      }

      v40 = v69;
      v39 = v70;
      v41 = v67;
      (*(v69 + 32))(v67, v31, v70);
      v42 = sub_1B8C23318();
      v43 = *(v40 + 8);
      v43(v41, v39);
      v43(v38, v39);
      goto LABEL_27;
    }

    sub_1B8B462AC(v28, v10, type metadata accessor for BatchInteraction.ContentPreview);
    v55 = v10[3];
    v74[2] = v10[2];
    v75[0] = v55;
    *(v75 + 9) = *(v10 + 57);
    v56 = v10[1];
    v74[0] = *v10;
    v74[1] = v56;
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      sub_1B8B3F338(v74);
      goto LABEL_37;
    }

    v57 = *(v31 + 48);
    v72[2] = *(v31 + 32);
    v73[0] = v57;
    *(v73 + 9) = *(v31 + 57);
    v58 = *(v31 + 16);
    v72[0] = *v31;
    v72[1] = v58;
    if (BYTE8(v75[1]))
    {
      if (BYTE8(v75[1]) == 1)
      {
        v76 = *&v74[0];
        v77 = BYTE8(v74[0]);
        v78 = *(v10 + 9);
        v79 = *(v10 + 25);
        *v80 = *(v10 + 41);
        *&v80[15] = *(v10 + 56);
        if (BYTE8(v73[1]) == 1)
        {
          v59 = *(v31 + 48);
          *v83 = *(v31 + 32);
          *&v83[16] = v59;
          v84 = *(v31 + 64);
          v60 = *(v31 + 16);
          v81 = *v31;
          v82 = v60;
          v61 = sub_1B8C061C8(&v76, &v81);
          goto LABEL_46;
        }

        goto LABEL_52;
      }

      v76 = *&v74[0];
      v77 = BYTE8(v74[0]);
      v78 = *(v10 + 9);
      v79 = *(v10 + 25);
      *v80 = *(v10 + 41);
      if (BYTE8(v73[1]) == 2)
      {
        v63 = *(v31 + 16);
        v81 = *v31;
        v82 = v63;
        *v83 = *(v31 + 32);
        *&v83[9] = *(v31 + 41);
        v61 = sub_1B8B47980(&v76, &v81);
        goto LABEL_46;
      }
    }

    else if (!BYTE8(v73[1]))
    {
      if (BYTE8(v74[0]))
      {
        if (BYTE8(v72[0]))
        {
          v61 = sub_1B8B4435C(*&v74[0], *&v72[0]);
          goto LABEL_46;
        }
      }

      else if ((BYTE8(v72[0]) & 1) == 0)
      {
        v61 = sub_1B8B440B4(*&v74[0], *&v72[0]);
LABEL_46:
        v64 = v61;
        sub_1B8B3F338(v72);
        sub_1B8B3F338(v74);
        if ((v64 & 1) == 0)
        {
          goto LABEL_53;
        }

        goto LABEL_50;
      }
    }

LABEL_52:
    sub_1B8B3F338(v72);
    sub_1B8B3F338(v74);
    goto LABEL_53;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1B8B462AC(v28, v23, type metadata accessor for BatchInteraction.ContentPreview);
    v34 = *v23;
    v33 = v23[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      goto LABEL_5;
    }

LABEL_16:

LABEL_37:
    sub_1B8B3433C(v28, &qword_1EBAA6250, &qword_1B8C28568);
LABEL_54:
    v42 = 0;
    return v42 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1B8B462AC(v28, v21, type metadata accessor for BatchInteraction.ContentPreview);
    v34 = *v21;
    v33 = v21[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
LABEL_5:
      if (v34 != *v31 || v33 != *(v31 + 8))
      {
        v36 = *(v31 + 8);
        v37 = sub_1B8C25A08();

        if ((v37 & 1) == 0)
        {
          goto LABEL_53;
        }

        goto LABEL_50;
      }

      v62 = *(v31 + 8);

LABEL_49:

LABEL_50:
      sub_1B8B461E8(v28, type metadata accessor for BatchInteraction.ContentPreview);
      v42 = 1;
      return v42 & 1;
    }

    goto LABEL_16;
  }

  sub_1B8B462AC(v28, v18, type metadata accessor for BatchInteraction.ContentPreview);
  v53 = *v18;
  if (swift_getEnumCaseMultiPayload() != 2)
  {

    goto LABEL_37;
  }

  v54 = *v31;
  sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);
  v42 = sub_1B8C255E8();

LABEL_27:
  sub_1B8B461E8(v28, type metadata accessor for BatchInteraction.ContentPreview);
  return v42 & 1;
}

uint64_t sub_1B8B456E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v73 = *(v4 - 8);
  v74 = v4;
  v5 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v70 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6008, &qword_1B8C2A5B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v66 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v69 = &v66 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v72 = &v66 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v71 = &v66 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v68 = &v66 - v17;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6240, &qword_1B8C28550);
  v18 = *(*(v75 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v75);
  v67 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v66 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v66 - v24;
  v26 = type metadata accessor for BatchInteraction.ContentPolarity(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v66 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6248, &qword_1B8C28558);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v37 = &v66 - v36;
  v38 = &v66 + *(v35 + 56) - v36;
  sub_1B8B462AC(a1, &v66 - v36, type metadata accessor for BatchInteraction.ContentPolarity);
  sub_1B8B462AC(a2, v38, type metadata accessor for BatchInteraction.ContentPolarity);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B8B462AC(v37, v30, type metadata accessor for BatchInteraction.ContentPolarity);
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v40 = v71;
      sub_1B8B46178(&v30[v39], v71);
      v41 = v72;
      sub_1B8B46178(&v38[v39], v72);
      v42 = *(v75 + 48);
      sub_1B8B46178(v30, v23);
      sub_1B8B46178(v38, &v23[v42]);
      v43 = v74;
      v44 = *(v73 + 48);
      if (v44(v23, 1, v74) == 1)
      {
        if (v44(&v23[v42], 1, v43) == 1)
        {
          sub_1B8B3433C(v23, &qword_1EBAA6008, &qword_1B8C2A5B0);
LABEL_21:
          v57 = v41;
          v58 = *(v75 + 48);
          v59 = v67;
          sub_1B8B34450(v40, v67, &qword_1EBAA6008, &qword_1B8C2A5B0);
          sub_1B8B34450(v57, v59 + v58, &qword_1EBAA6008, &qword_1B8C2A5B0);
          if (v44(v59, 1, v43) == 1)
          {
            sub_1B8B3433C(v57, &qword_1EBAA6008, &qword_1B8C2A5B0);
            sub_1B8B3433C(v40, &qword_1EBAA6008, &qword_1B8C2A5B0);
            if (v44(v59 + v58, 1, v43) == 1)
            {
              v48 = v59;
              goto LABEL_24;
            }
          }

          else
          {
            v62 = v66;
            sub_1B8B34450(v59, v66, &qword_1EBAA6008, &qword_1B8C2A5B0);
            if (v44(v59 + v58, 1, v43) != 1)
            {
              v64 = v70;
              sub_1B8B46248(v59 + v58, v70);
              v65 = sub_1B8B44F78(v62, v64);
              sub_1B8B461E8(v64, type metadata accessor for BatchInteraction.ContentPreview);
              sub_1B8B3433C(v72, &qword_1EBAA6008, &qword_1B8C2A5B0);
              sub_1B8B3433C(v40, &qword_1EBAA6008, &qword_1B8C2A5B0);
              sub_1B8B461E8(v62, type metadata accessor for BatchInteraction.ContentPreview);
              sub_1B8B3433C(v59, &qword_1EBAA6008, &qword_1B8C2A5B0);
              if (v65)
              {
                goto LABEL_35;
              }

              goto LABEL_31;
            }

            sub_1B8B3433C(v72, &qword_1EBAA6008, &qword_1B8C2A5B0);
            sub_1B8B3433C(v40, &qword_1EBAA6008, &qword_1B8C2A5B0);
            sub_1B8B461E8(v62, type metadata accessor for BatchInteraction.ContentPreview);
          }

          v51 = &qword_1EBAA6240;
          v52 = &qword_1B8C28550;
          v50 = v59;
          goto LABEL_30;
        }
      }

      else
      {
        v49 = v69;
        sub_1B8B34450(v23, v69, &qword_1EBAA6008, &qword_1B8C2A5B0);
        if (v44(&v23[v42], 1, v43) != 1)
        {
          v54 = v70;
          sub_1B8B46248(&v23[v42], v70);
          v55 = sub_1B8B44F78(v49, v54);
          v56 = v54;
          v41 = v72;
          sub_1B8B461E8(v56, type metadata accessor for BatchInteraction.ContentPreview);
          sub_1B8B461E8(v49, type metadata accessor for BatchInteraction.ContentPreview);
          sub_1B8B3433C(v23, &qword_1EBAA6008, &qword_1B8C2A5B0);
          if (v55)
          {
            goto LABEL_21;
          }

          goto LABEL_16;
        }

        sub_1B8B461E8(v49, type metadata accessor for BatchInteraction.ContentPreview);
      }

      sub_1B8B3433C(v23, &qword_1EBAA6240, &qword_1B8C28550);
LABEL_16:
      sub_1B8B3433C(v41, &qword_1EBAA6008, &qword_1B8C2A5B0);
      v50 = v40;
      v51 = &qword_1EBAA6008;
      v52 = &qword_1B8C2A5B0;
      goto LABEL_30;
    }

    sub_1B8B3433C(&v30[v39], &qword_1EBAA6008, &qword_1B8C2A5B0);
  }

  else
  {
    sub_1B8B462AC(v37, v32, type metadata accessor for BatchInteraction.ContentPolarity);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v45 = *(v75 + 48);
      sub_1B8B46178(v32, v25);
      sub_1B8B46178(v38, &v25[v45]);
      v46 = v74;
      v47 = *(v73 + 48);
      if (v47(v25, 1, v74) == 1)
      {
        if (v47(&v25[v45], 1, v46) == 1)
        {
          v48 = v25;
LABEL_24:
          sub_1B8B3433C(v48, &qword_1EBAA6008, &qword_1B8C2A5B0);
LABEL_35:
          sub_1B8B461E8(v37, type metadata accessor for BatchInteraction.ContentPolarity);
          return 1;
        }
      }

      else
      {
        v53 = v68;
        sub_1B8B34450(v25, v68, &qword_1EBAA6008, &qword_1B8C2A5B0);
        if (v47(&v25[v45], 1, v46) != 1)
        {
          v60 = v70;
          sub_1B8B46248(&v25[v45], v70);
          v61 = sub_1B8B44F78(v53, v60);
          sub_1B8B461E8(v60, type metadata accessor for BatchInteraction.ContentPreview);
          sub_1B8B461E8(v53, type metadata accessor for BatchInteraction.ContentPreview);
          sub_1B8B3433C(v25, &qword_1EBAA6008, &qword_1B8C2A5B0);
          if (v61)
          {
            goto LABEL_35;
          }

          goto LABEL_31;
        }

        sub_1B8B461E8(v53, type metadata accessor for BatchInteraction.ContentPreview);
      }

      v51 = &qword_1EBAA6240;
      v52 = &qword_1B8C28550;
      v50 = v25;
LABEL_30:
      sub_1B8B3433C(v50, v51, v52);
LABEL_31:
      sub_1B8B461E8(v37, type metadata accessor for BatchInteraction.ContentPolarity);
      return 0;
    }

    v30 = v32;
  }

  sub_1B8B3433C(v30, &qword_1EBAA6008, &qword_1B8C2A5B0);
  sub_1B8B3433C(v37, &qword_1EBAA6248, &qword_1B8C28558);
  return 0;
}

uint64_t sub_1B8B46048(uint64_t a1, uint64_t a2)
{
  if ((sub_1B8C23548() & 1) == 0)
  {
    return 0;
  }

  sub_1B8B46130(0, &qword_1EBAA6238, 0x1E69E58C0);
  v4 = type metadata accessor for BatchInteraction(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if ((sub_1B8C255E8() & 1) == 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!v10)
  {
    return 0;
  }

  v11 = *(a2 + v8);

  v12 = sub_1B8C09398(v9, v10);

  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v13 = v4[7];

  return sub_1B8B456E8(a1 + v13, a2 + v13);
}

uint64_t sub_1B8B46130(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1B8B46178(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6008, &qword_1B8C2A5B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B461E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B8B46248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchInteraction.ContentPreview(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B462AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8B46314(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1B8B463B0()
{
  result = qword_1EBAA6268;
  if (!qword_1EBAA6268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6268);
  }

  return result;
}

uint64_t sub_1B8B46424(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8B4645C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1B8B464B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC8Feedback24NullableBatchInteraction__donation);
  *(v1 + OBJC_IVAR____TtC8Feedback24NullableBatchInteraction__donation) = v2;
  v4 = v2;
}

uint64_t sub_1B8B46540()
{
  result = sub_1B8C237E8();
  if (v1 <= 0x3F)
  {
    result = sub_1B8C23938();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8Feedback24NullableBatchInteractionC13LoadDataErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B8B465CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B8B46628(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_1B8B46678(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BatchInteraction.ContentPreview.Mode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BatchInteraction.ContentPreview.Mode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B8B467FC()
{
  result = qword_1EBAA62A8;
  if (!qword_1EBAA62A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA62A8);
  }

  return result;
}

id sub_1B8B46850(id result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 == 2)
  {
    v5 = result;

    return v5;
  }

  else if (a4 <= 1u)
  {
  }

  return result;
}

void *sub_1B8B468BC(void *result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 >= 2u)
  {
    if (a4 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B8B46918()
{
  v1 = *v0;
  sub_1B8C25AB8();
  sub_1B8C251B8();

  return sub_1B8C25AF8();
}

uint64_t sub_1B8B469B8()
{
  *v0;
  *v0;
  sub_1B8C251B8();
}

uint64_t sub_1B8B46A44()
{
  v1 = *v0;
  sub_1B8C25AB8();
  sub_1B8C251B8();

  return sub_1B8C25AF8();
}

uint64_t sub_1B8B46AE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B8B48070();
  *a2 = result;
  return result;
}

void sub_1B8B46B10(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6E616D6F77;
  if (v2 != 1)
  {
    v5 = 0x6E79676F72646E61;
    v4 = 0xEB0000000073756FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7233901;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B8B46B6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6E616D6F77;
  if (v2 != 1)
  {
    v4 = 0x6E79676F72646E61;
    v3 = 0xEB0000000073756FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7233901;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6E616D6F77;
  if (*a2 != 1)
  {
    v8 = 0x6E79676F72646E61;
    v7 = 0xEB0000000073756FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7233901;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B8C25A08();
  }

  return v11 & 1;
}

uint64_t sub_1B8B46C70(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 1802658148;
    v6 = 0x6B72614470656564;
    if (a1 != 8)
    {
      v6 = 0x7473656B726164;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6D756964656DLL;
    if (a1 != 5)
    {
      v7 = 0x61446D756964656DLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6C6559696A6F6D65;
    v2 = 0x696146746867696CLL;
    v3 = 1919508838;
    if (a1 != 3)
    {
      v3 = 0x64654D746867696CLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x74736572696166;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B8B46DB0()
{
  v1 = *v0;
  sub_1B8C25AB8();
  sub_1B8B46C70(v1);
  sub_1B8C251B8();

  return sub_1B8C25AF8();
}

uint64_t sub_1B8B46E14()
{
  sub_1B8B46C70(*v0);
  sub_1B8C251B8();
}

uint64_t sub_1B8B46E68()
{
  v1 = *v0;
  sub_1B8C25AB8();
  sub_1B8B46C70(v1);
  sub_1B8C251B8();

  return sub_1B8C25AF8();
}

uint64_t sub_1B8B46EC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B8B480BC();
  *a2 = result;
  return result;
}

uint64_t sub_1B8B46EF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B8B46C70(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B8B46F24(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1B8B46C70(*a1);
  v5 = v4;
  if (v3 == sub_1B8B46C70(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B8C25A08();
  }

  return v8 & 1;
}

uint64_t sub_1B8B46FAC(__int16 a1)
{
  v1 = HIBYTE(a1);
  MEMORY[0x1B8CC9EB0](*&asc_1B8C28B38[8 * a1], 0xA400000000000000);

  if (v1 <= 3)
  {
    v5 = v1 - 2;
    v6 = 0xA400000000000000;
    v7 = 3146751984;
    if (!v1)
    {
      v7 = v1;
      v6 = 0xE000000000000000;
    }

    if (v5 >= 2)
    {
      v3 = v7;
    }

    else
    {
      v3 = 3163529200;
    }

    if (v5 >= 2)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0xA400000000000000;
    }
  }

  else
  {
    v2 = 3197083632;
    if (((1 << v1) & 0xC0) == 0)
    {
      v2 = 3213860848;
    }

    if (((1 << v1) & 0x30) != 0)
    {
      v3 = 3180306416;
    }

    else
    {
      v3 = v2;
    }

    v4 = 0xA400000000000000;
  }

  MEMORY[0x1B8CC9EB0](v3, v4);

  return 0;
}

uint64_t sub_1B8B470B0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return sub_1B8B477E8(v3, *a2);
    }

    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[1];
  if (v3 == *a2 && v5 == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return sub_1B8C25A08();
  }
}

BOOL sub_1B8B47108(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_1B8B47980(v5, v7);
}

uint64_t sub_1B8B47164()
{
  v1 = sub_1B8C237B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1B8C237C8();
  v7 = sub_1B8B4E0BC(v5, v6);
  (*(v2 + 8))(v5, v1);
  return v7 & 1;
}

uint64_t sub_1B8B4724C(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  v4 = swift_task_alloc();
  *(v2 + 104) = v4;
  *v4 = v2;
  v4[1] = sub_1B8B47300;

  return sub_1B8B48108(v2 + 16, a2);
}

uint64_t sub_1B8B47300()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 96);
    *v5 = *(v2 + 16);
    v6 = *(v2 + 32);
    v7 = *(v2 + 48);
    v8 = *(v2 + 64);
    *(v5 + 57) = *(v2 + 73);
    v5[2] = v7;
    v5[3] = v8;
    v5[1] = v6;
  }

  v9 = *(v4 + 8);

  return v9();
}

unint64_t sub_1B8B47428@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1B8C25288();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1B8B5D0A0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1B8B5D0A0((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1B8C25268();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1B8C251D8();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1B8C251D8();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1B8C25288();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1B8B5D0A0(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1B8C25288();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1B8B5D0A0(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1B8B5D0A0((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1B8C251D8();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8B477E8(__int16 a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  v3 = HIBYTE(a1);
  v4 = a1;
  if (!a1)
  {
    v6 = 0xE300000000000000;
    v5 = 7233901;
    v7 = a2;
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_18:
    v9 = 0xE300000000000000;
    if (v5 != 7233901)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (a1 == 1)
  {
    v5 = 0x6E616D6F77;
  }

  else
  {
    v5 = 0x6E79676F72646E61;
  }

  if (v4 == 1)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xEB0000000073756FLL;
  }

  v7 = a2;
  if (!a2)
  {
    goto LABEL_18;
  }

LABEL_9:
  if (v7 == 1)
  {
    v8 = 0x6E616D6F77;
  }

  else
  {
    v8 = 0x6E79676F72646E61;
  }

  if (v7 == 1)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xEB0000000073756FLL;
  }

  if (v5 != v8)
  {
LABEL_21:
    v10 = sub_1B8C25A08();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }

    goto LABEL_22;
  }

LABEL_19:
  if (v6 != v9)
  {
    goto LABEL_21;
  }

LABEL_22:
  v12 = sub_1B8B46C70(v3);
  v14 = v13;
  if (v12 == sub_1B8B46C70(v2) && v14 == v15)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B8C25A08();
  }

  return v11 & 1;
}

BOOL sub_1B8B47980(uint64_t *a1, uint64_t *a2)
{
  sub_1B8B47A9C();
  v4 = *a1;
  v5 = *a2;
  if ((sub_1B8C255E8() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_1B8C25A08() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[4];
  v8 = a2[4];
  if (v7)
  {
    if (!v8 || (a1[3] != a2[3] || v7 != v8) && (sub_1B8C25A08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = *(a1 + 56);
  v10 = *(a2 + 56);
  if (v9 == 255)
  {
    if (v10 == 255)
    {
      return 1;
    }
  }

  else if (v10 != 255)
  {
    v11 = a1[5];
    if (v9)
    {
      return (v10 & 1) != 0 && (v11 == a2[5] && a1[6] == a2[6] || (sub_1B8C25A08() & 1) != 0);
    }

    if (v10 & 1) == 0 && (sub_1B8B477E8(v11, a2[5]))
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1B8B47A9C()
{
  result = qword_1EBAA6238;
  if (!qword_1EBAA6238)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBAA6238);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B8B47B14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1B8B47B5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B8B47BBC(uint64_t a1)
{
  v63 = sub_1B8C23218();
  v2 = *(v63 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1B8B5F49C(MEMORY[0x1E69E7CC0]);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return v66;
  }

  v6 = 0;
  v7 = a1 + 32;
  v61 = (v2 + 8);
  v64 = a1 + 32;
  v65 = v5;
  while (1)
  {
    v8 = (v7 + 32 * v6);
    v9 = *v8;
    v10 = *v8 >> 14;
    v11 = v8[1] >> 14;
    if (v10 != v11)
    {
      break;
    }

LABEL_5:
    if (++v6 == v5)
    {
      return v66;
    }
  }

  v69 = v6;
  v13 = v8[2];
  v12 = v8[3];

  v70 = MEMORY[0x1E69E7CC0];
  v14 = v9;
  while (1)
  {
    while (sub_1B8C25638() != 58 || v19 != 0xE100000000000000)
    {
      v20 = sub_1B8C25A08();

      if (v20)
      {
        goto LABEL_16;
      }

      result = sub_1B8C25618();
      v10 = result >> 14;
      if (result >> 14 == v11)
      {
LABEL_22:
        if (v14 >> 14 == v11)
        {

          v29 = v70;
          if (*(v70 + 2) > 1uLL)
          {
LABEL_31:
            v41 = *(v29 + 4);
            v42 = *(v29 + 5);
            v43 = *(v29 + 6);
            v44 = *(v29 + 7);

            v45 = MEMORY[0x1B8CC9E60](v41, v42, v43, v44);
            v47 = v46;

            if (*(v29 + 2) < 2uLL)
            {
              goto LABEL_36;
            }

            v48 = *(v29 + 8);
            v49 = *(v29 + 9);
            v51 = *(v29 + 10);
            v50 = *(v29 + 11);

            v52 = MEMORY[0x1B8CC9E60](v48, v49, v51, v50);
            v54 = v53;

            v71 = v52;
            v72 = v54;
            v55 = v62;
            sub_1B8C23208();
            sub_1B8B34CA8();
            v56 = sub_1B8C25678();
            v58 = v57;
            (*v61)(v55, v63);

            v59 = v66;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v71 = v59;
            sub_1B8B5EE34(v56, v58, v45, v47, isUniquelyReferenced_nonNull_native);

            v66 = v71;
LABEL_4:
            v7 = v64;
            v5 = v65;
            v6 = v69;
            goto LABEL_5;
          }
        }

        else
        {
          if (v11 < v14 >> 14)
          {
            goto LABEL_35;
          }

          v30 = sub_1B8C25648();
          v32 = v31;
          v34 = v33;
          v36 = v35;

          v29 = v70;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_1B8B5D0A0(0, *(v29 + 2) + 1, 1, v29);
          }

          v38 = *(v29 + 2);
          v37 = *(v29 + 3);
          v39 = v38 + 1;
          if (v38 >= v37 >> 1)
          {
            v29 = sub_1B8B5D0A0((v37 > 1), v38 + 1, 1, v29);
          }

          *(v29 + 2) = v39;
          v40 = &v29[32 * v38];
          *(v40 + 4) = v30;
          *(v40 + 5) = v32;
          *(v40 + 6) = v34;
          *(v40 + 7) = v36;
          if (v39 > 1)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_4;
      }
    }

LABEL_16:
    if (v14 >> 14 != v10)
    {
      break;
    }

LABEL_9:
    result = sub_1B8C25618();
    v14 = result;
    v10 = result >> 14;
    if (result >> 14 == v11)
    {
      goto LABEL_22;
    }
  }

  if (v10 >= v14 >> 14)
  {
    v21 = sub_1B8C25648();
    v67 = v22;
    v68 = v21;
    v24 = v23;
    v26 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v70 = sub_1B8B5D0A0(0, *(v70 + 2) + 1, 1, v70);
    }

    v28 = *(v70 + 2);
    v27 = *(v70 + 3);
    if (v28 >= v27 >> 1)
    {
      v70 = sub_1B8B5D0A0((v27 > 1), v28 + 1, 1, v70);
    }

    v15 = v70;
    *(v70 + 2) = v28 + 1;
    v16 = &v15[32 * v28];
    v17 = v67;
    *(v16 + 4) = v68;
    *(v16 + 5) = v24;
    *(v16 + 6) = v26;
    *(v16 + 7) = v17;
    goto LABEL_9;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1B8B48070()
{
  v0 = sub_1B8C25908();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B8B480BC()
{
  v0 = sub_1B8C25908();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B8B48108(uint64_t a1, uint64_t a2)
{
  v2[52] = a1;
  v2[53] = a2;
  v3 = sub_1B8C238B8();
  v2[54] = v3;
  v4 = *(v3 - 8);
  v2[55] = v4;
  v5 = *(v4 + 64) + 15;
  v2[56] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800) - 8) + 64) + 15;
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v7 = sub_1B8C23938();
  v2[59] = v7;
  v8 = *(v7 - 8);
  v2[60] = v8;
  v9 = *(v8 + 64) + 15;
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8B48274, 0, 0);
}

uint64_t sub_1B8B48274()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 432);
  v3 = *(v0 + 440);
  v4 = *(v0 + 424);
  sub_1B8C23918();
  v5 = *(v3 + 48);
  if (v5(v1, 1, v2))
  {
    sub_1B8B48A20(*(v0 + 464));
LABEL_8:
    sub_1B8B48A88();
    swift_allocError();
    *v27 = 2;
    swift_willThrow();
LABEL_9:
    v29 = *(v0 + 488);
    v28 = *(v0 + 496);
    v31 = *(v0 + 456);
    v30 = *(v0 + 464);
    v32 = *(v0 + 448);

    v33 = *(v0 + 8);
    goto LABEL_10;
  }

  v6 = *(v0 + 496);
  v7 = *(v0 + 472);
  v8 = *(v0 + 480);
  v9 = *(v0 + 464);
  v11 = *(v0 + 440);
  v10 = *(v0 + 448);
  v12 = *(v0 + 432);
  v96 = *(v11 + 16);
  v96(v10, v9, v12);
  sub_1B8B48A20(v9);
  sub_1B8C23878();
  v95 = *(v11 + 8);
  v95(v10, v12);
  v13 = *(v8 + 88);
  v14 = v13(v6, v7);
  v15 = *(v0 + 496);
  v16 = *(v0 + 472);
  v17 = *(v0 + 480);
  if (v14 != *MEMORY[0x1E699C5F0])
  {
    (*(v17 + 8))(*(v0 + 496), v16);
    goto LABEL_8;
  }

  v18 = v13;
  v91 = *(v17 + 96);
  v91(*(v0 + 496), v16);
  v20 = *v15;
  v19 = v15[1];
  v21 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v22 = sub_1B8C234A8();
  v23 = [v21 initWithData_];

  if (!v23)
  {
    type metadata accessor for BatchInteraction.ContentPreview.Err(0);
    sub_1B8B48ADC();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v35 = v20;
LABEL_30:
    sub_1B8B4645C(v35, v19);
    goto LABEL_9;
  }

  v92 = v23;
  v93 = v20;
  v94 = v19;
  v24 = *(v0 + 456);
  v26 = *(v0 + 424);
  v25 = *(v0 + 432);
  sub_1B8C238F8();
  if (v5(v24, 1, v25))
  {
    sub_1B8B48A20(*(v0 + 456));
LABEL_29:
    v19 = v94;
    sub_1B8B48A88();
    swift_allocError();
    *v81 = 1;
    swift_willThrow();

    v35 = v93;
    goto LABEL_30;
  }

  v36 = *(v0 + 488);
  v37 = *(v0 + 472);
  v39 = *(v0 + 448);
  v38 = *(v0 + 456);
  v40 = *(v0 + 432);
  v96(v39, v38, v40);
  sub_1B8B48A20(v38);
  sub_1B8C23878();
  v95(v39, v40);
  v41 = v18(v36, v37);
  v42 = *(v0 + 488);
  if (v41 != *MEMORY[0x1E699C5D0])
  {
    (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));
    goto LABEL_29;
  }

  v91(*(v0 + 488), *(v0 + 472));
  v44 = *v42;
  v43 = v42[1];
  *(v0 + 400) = 10;
  *(v0 + 408) = 0xE100000000000000;
  v45 = swift_task_alloc();
  *(v45 + 16) = v0 + 400;
  v47 = sub_1B8B47428(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B8B48B34, v45, v44, v43, v46);

  if (!v47[2])
  {

    sub_1B8B48A88();
    swift_allocError();
    *v82 = 0;
    swift_willThrow();

    sub_1B8B4645C(v93, v94);
    goto LABEL_9;
  }

  v48 = v47[4];
  v49 = v47[5];
  v50 = v47[6];
  v51 = v47[7];

  v52 = v92;
  v53 = MEMORY[0x1B8CC9E60](v48, v49, v50, v51);
  v55 = v54;

  *(v0 + 80) = v52;
  *(v0 + 88) = v53;
  *(v0 + 96) = v55;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = -1;
  *(v0 + 16) = v52;
  *(v0 + 24) = v53;
  *(v0 + 32) = v55;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = -1;
  sub_1B8B3F288(v0 + 80, v0 + 144);
  sub_1B8B48B8C(v0 + 16);
  v57 = *(v0 + 120);
  v56 = *(v0 + 128);
  v58 = *(v0 + 136);
  v100 = *(v0 + 80);
  v101 = *(v0 + 96);
  v98 = *(v0 + 112);
  v99 = *(v0 + 104);
  v59 = sub_1B8B47BBC(v47);

  v60 = v94;
  if (!*(v59 + 16))
  {
    goto LABEL_33;
  }

  v61 = sub_1B8B5E2DC(0x7265646E6567, 0xE600000000000000);
  if ((v62 & 1) == 0)
  {
    goto LABEL_37;
  }

  v63 = (*(v59 + 56) + 16 * v61);
  v65 = *v63;
  v64 = v63[1];

  v66 = sub_1B8C25908();

  if (v66 > 2)
  {
    goto LABEL_37;
  }

  if (!*(v59 + 16))
  {
LABEL_33:
    sub_1B8B4645C(v93, v60);

    goto LABEL_34;
  }

  v67 = sub_1B8B5E2DC(0x6E6F74206E696B73, 0xE900000000000065);
  if ((v68 & 1) != 0 && (v69 = (*(v59 + 56) + 16 * v67), v70 = v69[1], v97 = *v69, , v71 = sub_1B8B480BC(), v71 != 10))
  {
    v83 = v71;
    sub_1B8B3B1B4(v57, v56, v58);
    v56 = 0;
    v58 = 0;
    v57 = v66 | (v83 << 8);
    if (!*(v59 + 16))
    {
      goto LABEL_33;
    }
  }

  else
  {
LABEL_37:
    if (!*(v59 + 16))
    {
      goto LABEL_33;
    }

    v72 = sub_1B8B5E2DC(0x5555736F746F6870, 0xEA00000000004449);
    if (v73)
    {
      v74 = (*(v59 + 56) + 16 * v72);
      v75 = *v74;
      v76 = v74[1];

      sub_1B8B3B1B4(v57, v56, v58);
      v58 = 1;
      v57 = v75;
      v60 = v94;
      v56 = v76;
    }

    if (!*(v59 + 16))
    {
      goto LABEL_33;
    }
  }

  v77 = sub_1B8B5E2DC(0xD000000000000016, 0x80000001B8C32870);
  if ((v78 & 1) == 0)
  {
    goto LABEL_33;
  }

  v79 = *(v0 + 112);
  v80 = (*(v59 + 56) + 16 * v77);
  v98 = v80[1];
  v99 = *v80;

  sub_1B8B4645C(v93, v60);

LABEL_34:
  *(v0 + 272) = v100;
  *(v0 + 288) = v101;
  *(v0 + 296) = v99;
  *(v0 + 304) = v98;
  *(v0 + 312) = v57;
  v84 = *(v0 + 304);
  v102 = *(v0 + 288);
  *(v0 + 320) = v56;
  *(v0 + 328) = v58;
  *v103 = v84;
  *&v103[9] = *(v0 + 313);
  v85 = *(v0 + 488);
  v86 = *(v0 + 496);
  v88 = *(v0 + 456);
  v87 = *(v0 + 464);
  v89 = *(v0 + 448);
  v90 = *(v0 + 416);
  *(v0 + 208) = v100;
  *(v0 + 224) = v101;
  *(v0 + 232) = v99;
  *(v0 + 240) = v98;
  *(v0 + 248) = v57;
  *(v0 + 256) = v56;
  *(v0 + 264) = v58;
  sub_1B8B3F288(v0 + 272, v0 + 336);
  sub_1B8B48B8C(v0 + 208);
  *(v90 + 32) = *v103;
  *(v90 + 48) = *&v103[16];
  *(v90 + 64) = v104;
  *v90 = v100;
  *(v90 + 16) = v102;
  *(v90 + 72) = 2;

  v33 = *(v0 + 8);
LABEL_10:

  return v33();
}

uint64_t sub_1B8B48A20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B8B48A88()
{
  result = qword_1EBAA62B0;
  if (!qword_1EBAA62B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA62B0);
  }

  return result;
}

unint64_t sub_1B8B48ADC()
{
  result = qword_1EBAA6288;
  if (!qword_1EBAA6288)
  {
    type metadata accessor for BatchInteraction.ContentPreview.Err(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6288);
  }

  return result;
}

uint64_t sub_1B8B48B34(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B8C25A08() & 1;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B8B48BE0(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B8B48C28(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B8B48C8C()
{
  result = qword_1EBAA62B8;
  if (!qword_1EBAA62B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA62B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenmojiDonationDecoder.Result.Person.Generic(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for GenmojiDonationDecoder.Result.Person.Generic(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenmojiDonationDecoder.Result.Person.Generic.SkinTone(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenmojiDonationDecoder.Result.Person.Generic.SkinTone(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B8B48FA4()
{
  result = qword_1EBAA62C0;
  if (!qword_1EBAA62C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA62C0);
  }

  return result;
}

unint64_t sub_1B8B48FFC()
{
  result = qword_1EBAA62C8[0];
  if (!qword_1EBAA62C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBAA62C8);
  }

  return result;
}

void sub_1B8B490A4()
{
  type metadata accessor for BatchInteraction(319);
  if (v0 <= 0x3F)
  {
    sub_1B8B491A0();
    if (v1 <= 0x3F)
    {
      sub_1B8B491F0();
      if (v2 <= 0x3F)
      {
        sub_1B8B49254();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1B8B491A0()
{
  result = qword_1EBAA6350;
  if (!qword_1EBAA6350)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EBAA6350);
  }

  return result;
}

void sub_1B8B491F0()
{
  if (!qword_1EBAA6358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6360, qword_1B8C28BA0);
    v0 = sub_1B8C25318();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBAA6358);
    }
  }
}

void sub_1B8B49254()
{
  if (!qword_1EBAA6368)
  {
    type metadata accessor for FullScreenPreviewController(255);
    v0 = sub_1B8C24E88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBAA6368);
    }
  }
}

uint64_t sub_1B8B492F0(uint64_t a1)
{
  v2 = v1 + *(a1 + 48);
  v5[1] = *v2;
  v6 = *(v2 + 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63B8, &qword_1B8C28C60);
  MEMORY[0x1B8CC9B00](v5, v3);
  return v5[0];
}

uint64_t sub_1B8B49350(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v5 = *v2;
  v6 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63B8, &qword_1B8C28C60);
  sub_1B8C24E68();
  return v4;
}

uint64_t sub_1B8B493B4(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = type metadata accessor for PrebuiltPreviewController();
  return (*(v4 + 24))(a2, *(a2 + *(v5 + 36)), v3, v4) & 1;
}

double sub_1B8B4944C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + *(a1 + 44));
  v15 = *(a1 + 16);
  sub_1B8B8B768(sub_1B8B4D440, v5, v12);
  v6 = v13;
  if (v13)
  {
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v8 = *(v2 + *(a1 + 36));
    v9 = sub_1B8B492F0(a1);
    v10 = *(v7 + 32);
    *(a2 + 24) = swift_getAssociatedTypeWitness();
    *(a2 + 32) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(a2);
    v10(v2, v8, v9, v6, v7);

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    sub_1B8B3433C(v12, &qword_1EBAA6448, &unk_1B8C28D10);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B8B495B8(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v6 = *(a1 + 24);
  *(v5 + 16) = *(a1 + 16);
  *(v5 + 24) = v6;
  (*(v2 + 32))(v5 + v4, &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1B8C245A8();
  sub_1B8C245A8();
  v33 = MEMORY[0x1E6981900];
  v34 = v6;
  WitnessTable = swift_getWitnessTable();
  v32 = v6;
  swift_getWitnessTable();
  v7 = sub_1B8C24E18();
  v8 = type metadata accessor for FullScreenPreviewController.Content(255);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6370, &qword_1B8C28C10);
  v10 = swift_getWitnessTable();
  v11 = sub_1B8B4D128(&qword_1EBAA6378, type metadata accessor for FullScreenPreviewController.Content);
  v12 = sub_1B8B4BDFC();
  v25 = v7;
  v26 = v8;
  v27 = v9;
  v28 = v10;
  v29 = v11;
  v30 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v25 = v7;
  v26 = v8;
  v27 = v9;
  v28 = v10;
  v29 = v11;
  v30 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = OpaqueTypeMetadata2;
  v26 = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeMetadata2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  v25 = OpaqueTypeMetadata2;
  v26 = OpaqueTypeConformance2;
  v17 = swift_getOpaqueTypeConformance2();
  v18 = sub_1B8B4BEB4();
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  swift_getOpaqueTypeMetadata2();
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  swift_getOpaqueTypeConformance2();
  v23 = sub_1B8C23F38();
  v24 = v19;
  v20 = sub_1B8C23F48();
  v21 = swift_getWitnessTable();
  sub_1B8BE21A0(&v23, v20, v21);

  v23 = v25;
  v24 = v26;
  sub_1B8BE21A0(&v23, v20, v21);
}

uint64_t sub_1B8B49990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v125 = a2;
  v119 = a1;
  v122 = a5;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  v7 = *(*(v126 - 8) + 64);
  MEMORY[0x1EEE9AC00](v126);
  v121 = &v88 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63A8, &qword_1B8C28C28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v120 = &v88 - v11;
  v116 = sub_1B8C23E98();
  v115 = *(v116 - 8);
  v117 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v111 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for PrebuiltPreviewController();
  v129 = *(v102 - 8);
  v110 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v124 = &v88 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63B0, &qword_1B8C28C30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v123 = &v88 - v16;
  v128 = a3;
  sub_1B8C245A8();
  sub_1B8C245A8();
  v141 = MEMORY[0x1E6981900];
  v142 = a4;
  v127 = a4;
  WitnessTable = swift_getWitnessTable();
  v140 = a4;
  v91 = swift_getWitnessTable();
  v17 = sub_1B8C24E18();
  v105 = *(v17 - 8);
  v18 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v88 - v19;
  v21 = type metadata accessor for FullScreenPreviewController.Content(255);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6370, &qword_1B8C28C10);
  v23 = swift_getWitnessTable();
  v24 = sub_1B8B4D128(&qword_1EBAA6378, type metadata accessor for FullScreenPreviewController.Content);
  v25 = sub_1B8B4BDFC();
  v133 = v17;
  v134 = v21;
  v97 = v17;
  v92 = v21;
  v135 = v22;
  v136 = v23;
  v98 = v22;
  v95 = v23;
  v137 = v24;
  v138 = v25;
  v94 = v24;
  v93 = v25;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v104 = *(OpaqueTypeMetadata2 - 8);
  v27 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v96 = &v88 - v28;
  v133 = v17;
  v134 = v21;
  v135 = v22;
  v136 = v23;
  v137 = v24;
  v138 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = OpaqueTypeMetadata2;
  v100 = OpaqueTypeMetadata2;
  v133 = OpaqueTypeMetadata2;
  v134 = OpaqueTypeConformance2;
  v31 = OpaqueTypeConformance2;
  v101 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeMetadata2();
  v109 = v32;
  v118 = *(v32 - 8);
  v33 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v99 = &v88 - v34;
  v133 = v30;
  v134 = v31;
  v35 = swift_getOpaqueTypeConformance2();
  v108 = v35;
  v107 = sub_1B8B4BEB4();
  v133 = v32;
  v134 = v126;
  v135 = v35;
  v136 = v107;
  v112 = MEMORY[0x1E6981440];
  v113 = swift_getOpaqueTypeMetadata2();
  v114 = *(v113 - 8);
  v36 = *(v114 + 64);
  v37 = MEMORY[0x1EEE9AC00](v113);
  v103 = &v88 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v106 = &v88 - v39;
  v130 = v128;
  v131 = v127;
  v40 = v125;
  v132 = v125;
  sub_1B8C24468();
  sub_1B8C24E08();
  v41 = v102;
  v42 = sub_1B8B49350(v102);
  v44 = v43;
  v46 = v45;
  swift_getKeyPath();
  v133 = v42;
  v134 = v44;
  v135 = v46;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63B8, &qword_1B8C28C60);
  sub_1B8C24E58();

  v47 = v129;
  v48 = *(v129 + 16);
  v90 = v129 + 16;
  v91 = v48;
  v49 = v124;
  v48(v124, v40, v41);
  v50 = v115;
  v51 = v111;
  v52 = v116;
  (*(v115 + 16))(v111, v119, v116);
  v53 = *(v47 + 80);
  v54 = (v53 + 32) & ~v53;
  v119 = v54 + v110;
  v89 = v54;
  v110 = v53 | 7;
  v55 = v50;
  v56 = (v119 + *(v50 + 80)) & ~*(v50 + 80);
  v57 = swift_allocObject();
  v58 = v127;
  *(v57 + 16) = v128;
  *(v57 + 24) = v58;
  v59 = *(v47 + 32);
  v129 = v47 + 32;
  v117 = v59;
  v59(v57 + v54, v49, v41);
  (*(v55 + 32))(v57 + v56, v51, v52);
  swift_checkMetadataState();
  v60 = v96;
  v61 = v123;
  v62 = v97;
  sub_1B8C24BE8();

  sub_1B8B3433C(v61, &qword_1EBAA63B0, &qword_1B8C28C30);
  (*(v105 + 8))(v20, v62);
  v63 = v125;
  v64 = sub_1B8B49350(v41);
  v66 = v65;
  v68 = v67;
  swift_getKeyPath();
  v133 = v64;
  v134 = v66;
  v135 = v68;
  v69 = v120;
  sub_1B8C24E58();

  v70 = v99;
  v71 = v100;
  sub_1B8C249F8();
  sub_1B8B3433C(v69, &qword_1EBAA63A8, &qword_1B8C28C28);
  (*(v104 + 8))(v60, v71);
  v72 = sub_1B8B492F0(v41);
  swift_getKeyPath();
  v133 = v72;
  sub_1B8B4D128(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController);
  sub_1B8C23588();

  v73 = OBJC_IVAR____TtC8Feedback27FullScreenPreviewController__quickLookPreviewURL;
  swift_beginAccess();
  v74 = v121;
  sub_1B8B34450(v72 + v73, v121, &qword_1EBAA85A0, &qword_1B8C28C20);

  v75 = v124;
  v91(v124, v63, v41);
  v76 = swift_allocObject();
  v77 = v127;
  *(v76 + 16) = v128;
  *(v76 + 24) = v77;
  v117(v76 + v89, v75, v41);
  v78 = v103;
  v79 = v109;
  v80 = v126;
  v81 = v108;
  v82 = v107;
  sub_1B8C24C48();

  sub_1B8B3433C(v74, &qword_1EBAA85A0, &qword_1B8C28C20);
  (*(v118 + 8))(v70, v79);
  v133 = v79;
  v134 = v80;
  v135 = v81;
  v136 = v82;
  v83 = swift_getOpaqueTypeConformance2();
  v84 = v106;
  v85 = v113;
  sub_1B8BE21A0(v78, v113, v83);
  v86 = *(v114 + 8);
  v86(v78, v85);
  sub_1B8BE21A0(v84, v85, v83);
  return (v86)(v84, v85);
}

uint64_t sub_1B8B4A6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a4;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v46 - v12;
  v14 = sub_1B8C245A8();
  v49 = *(v14 - 8);
  v15 = *(v49 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v48 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v47 = &v46 - v18;
  v51 = sub_1B8C245A8();
  v50 = *(v51 - 8);
  v19 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v21 = &v46 - v20;
  v22 = type metadata accessor for PrebuiltPreviewController();
  v23 = *(a1 + *(v22 + 44));
  v64 = *(v22 + 16);
  v65 = a1;
  sub_1B8B8B768(sub_1B8B4D440, v23, &v61);
  v24 = v62;
  v25 = sub_1B8B3433C(&v61, &qword_1EBAA6448, &unk_1B8C28D10);
  if (v24)
  {
    sub_1B8B4944C(v22, &v61);
    if (v62)
    {
      sub_1B8B4D380(&v61, v63);
      v26 = *(&v64 + 1);
      v27 = __swift_project_boxed_opaque_existential_1(v63, *(&v64 + 1));
      v28 = *(*(v26 - 8) + 64);
      MEMORY[0x1EEE9AC00](v27);
      (*(v30 + 16))(&v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
      *&v61 = sub_1B8C24E28();
      v31 = v47;
      sub_1B8BE0100(&v61, MEMORY[0x1E6981910]);

      __swift_destroy_boxed_opaque_existential_0(v63);
    }

    else
    {
      v36 = sub_1B8B3433C(&v61, &qword_1EBAA6440, &qword_1B8C28D08);
      v37 = a1 + *(v22 + 40);
      v38 = *(v37 + 8);
      (*v37)(v36);
      sub_1B8BE21A0(v11, a2, a3);
      v39 = *(v7 + 8);
      v39(v11, a2);
      sub_1B8BE21A0(v13, a2, a3);
      v31 = v47;
      sub_1B8BE01F8(v11, MEMORY[0x1E6981910], a2);
      v39(v11, a2);
      v39(v13, a2);
    }

    v32 = MEMORY[0x1E6981900];
    v53 = MEMORY[0x1E6981900];
    v54 = a3;
    WitnessTable = swift_getWitnessTable();
    v41 = v48;
    sub_1B8BE21A0(v31, v14, WitnessTable);
    sub_1B8BE0100(v41, v14);
    v42 = *(v49 + 8);
    v42(v41, v14);
    v42(v31, v14);
  }

  else
  {
    v32 = MEMORY[0x1E6981900];
    v33 = a1 + *(v22 + 40);
    v34 = *(v33 + 8);
    (*v33)(v25);
    sub_1B8BE21A0(v11, a2, a3);
    v35 = *(v7 + 8);
    v35(v11, a2);
    sub_1B8BE21A0(v13, a2, a3);
    v59 = v32;
    v60 = a3;
    swift_getWitnessTable();
    sub_1B8BE01F8(v11, v14, a2);
    v35(v11, a2);
    v35(v13, a2);
  }

  v57 = v32;
  v58 = a3;
  v55 = swift_getWitnessTable();
  v56 = a3;
  v43 = v51;
  v44 = swift_getWitnessTable();
  sub_1B8BE21A0(v21, v43, v44);
  return (*(v50 + 8))(v21, v43);
}

double sub_1B8B4AD08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6390, &qword_1B8C28C18);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  *v7 = sub_1B8C24468();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63C8, &qword_1B8C28C90);
  sub_1B8B4AE24(a1, &v7[*(v8 + 44)]);
  sub_1B8C23E88();
  sub_1B8C24F48();
  sub_1B8C23E38();
  sub_1B8B4CF5C(v7, a2);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6370, &qword_1B8C28C10) + 36));
  v10 = v12[1];
  *v9 = v12[0];
  v9[1] = v10;
  result = *&v13;
  v9[2] = v13;
  return result;
}

uint64_t sub_1B8B4AE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63D0, &qword_1B8C28C98);
  v3 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v52 - v4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63D8, &qword_1B8C28CA0);
  v5 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v57 = &v52 - v6;
  v54 = type metadata accessor for CatchUpMailOriginalContentFullScreenPreviewController(0);
  v7 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53 = (&v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = type metadata accessor for FullPreviewAttributedText();
  v9 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1B8C23328();
  v58 = *(v60 - 8);
  v11 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63E0, &qword_1B8C28CA8);
  v13 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v52 - v14;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63E8, &qword_1B8C28CB0);
  v15 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v17 = &v52 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63F0, &qword_1B8C28CB8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v52 - v20);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA63F8, &qword_1B8C28CC0);
  v22 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v24 = &v52 - v23;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6400, &qword_1B8C28CC8);
  v25 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v63 = &v52 - v26;
  v27 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = (&v52 - v32);
  v34 = *(type metadata accessor for FullScreenPreviewController.Content(0) + 20);
  v35 = a1;
  sub_1B8B4D2B8(a1 + v34, v33, type metadata accessor for FullScreenPreviewController.Content.PreviewType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v41 = v53;
    v40 = v54;
    v42 = v55;
    if (EnumCaseMultiPayload == 3)
    {
      *v53 = *v33;
      v43 = *(v40 + 20);
      *(v41 + v43) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6408, &qword_1B8C28D00);
      swift_storeEnumTagMultiPayload();
      sub_1B8B4D2B8(v41, v42, type metadata accessor for CatchUpMailOriginalContentFullScreenPreviewController);
      swift_storeEnumTagMultiPayload();
      sub_1B8B4D128(&qword_1EBAA6410, type metadata accessor for CatchUpMailOriginalContentFullScreenPreviewController);
      v44 = v57;
      sub_1B8C24598();
      sub_1B8B34450(v44, v17, &qword_1EBAA63D8, &qword_1B8C28CA0);
      swift_storeEnumTagMultiPayload();
      sub_1B8B4D018();
      sub_1B8B4D170();
      v45 = v63;
      sub_1B8C24598();
      sub_1B8B3433C(v44, &qword_1EBAA63D8, &qword_1B8C28CA0);
      sub_1B8B34450(v45, v69, &qword_1EBAA6400, &qword_1B8C28CC8);
      swift_storeEnumTagMultiPayload();
      sub_1B8B4D22C();
      sub_1B8C24598();
      sub_1B8B3433C(v45, &qword_1EBAA6400, &qword_1B8C28CC8);
      return sub_1B8B4D320(v41, type metadata accessor for CatchUpMailOriginalContentFullScreenPreviewController);
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        v71 = 0;
        v72 = 0xE000000000000000;
        sub_1B8C257E8();
        MEMORY[0x1B8CC9EB0](0xD000000000000035, 0x80000001B8C328C0);
        sub_1B8B4D2B8(v35 + v34, v31, type metadata accessor for FullScreenPreviewController.Content.PreviewType);
        v51 = sub_1B8C25178();
        MEMORY[0x1B8CC9EB0](v51);
      }

      result = sub_1B8C258A8();
      __break(1u);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v46 = v58;
    v47 = v62;
    v48 = v60;
    (*(v58 + 32))(v62, v33, v60);
    v49 = v59;
    (*(v46 + 16))(v59, v47, v48);
    sub_1B8B4D2B8(v49, v21, type metadata accessor for FullPreviewAttributedText);
    swift_storeEnumTagMultiPayload();
    sub_1B8B4D0D4();
    sub_1B8B4D128(&qword_1EBAA6428, type metadata accessor for FullPreviewAttributedText);
    sub_1B8C24598();
    sub_1B8B34450(v24, v17, &qword_1EBAA63F8, &qword_1B8C28CC0);
    swift_storeEnumTagMultiPayload();
    sub_1B8B4D018();
    sub_1B8B4D170();
    v50 = v63;
    sub_1B8C24598();
    sub_1B8B3433C(v24, &qword_1EBAA63F8, &qword_1B8C28CC0);
    sub_1B8B34450(v50, v69, &qword_1EBAA6400, &qword_1B8C28CC8);
    swift_storeEnumTagMultiPayload();
    sub_1B8B4D22C();
    sub_1B8C24598();
    sub_1B8B3433C(v50, &qword_1EBAA6400, &qword_1B8C28CC8);
    sub_1B8B4D320(v49, type metadata accessor for FullPreviewAttributedText);
    return (*(v46 + 8))(v62, v48);
  }

  else
  {
    v37 = v33[1];
    *v21 = *v33;
    v21[1] = v37;
    swift_storeEnumTagMultiPayload();
    sub_1B8B4D0D4();
    sub_1B8B4D128(&qword_1EBAA6428, type metadata accessor for FullPreviewAttributedText);
    sub_1B8C24598();
    sub_1B8B34450(v24, v17, &qword_1EBAA63F8, &qword_1B8C28CC0);
    swift_storeEnumTagMultiPayload();
    sub_1B8B4D018();
    sub_1B8B4D170();
    v38 = v63;
    sub_1B8C24598();
    sub_1B8B3433C(v24, &qword_1EBAA63F8, &qword_1B8C28CC0);
    sub_1B8B34450(v38, v69, &qword_1EBAA6400, &qword_1B8C28CC8);
    swift_storeEnumTagMultiPayload();
    sub_1B8B4D22C();
    sub_1B8C24598();
    return sub_1B8B3433C(v38, &qword_1EBAA6400, &qword_1B8C28CC8);
  }

  return result;
}

uint64_t sub_1B8B4B8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39[1] = a4;
  v39[2] = a5;
  v39[3] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v39 - v12;
  v14 = sub_1B8C23498();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v40 = v39 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = v39 - v22;
  sub_1B8B34450(a1, v13, &qword_1EBAA85A0, &qword_1B8C28C20);
  v24 = *(v15 + 48);
  if (v24(v13, 1, v14) == 1)
  {
    sub_1B8B3433C(v13, &qword_1EBAA85A0, &qword_1B8C28C20);
  }

  else
  {
    (*(v15 + 32))(v23, v13, v14);
    v25 = type metadata accessor for PrebuiltPreviewController();
    sub_1B8B492F0(v25);
    sub_1B8B619D4(v23);

    (*(v15 + 8))(v23, v14);
  }

  sub_1B8B34450(a2, v11, &qword_1EBAA85A0, &qword_1B8C28C20);
  if (v24(v11, 1, v14) == 1)
  {
    return sub_1B8B3433C(v11, &qword_1EBAA85A0, &qword_1B8C28C20);
  }

  v27 = v40;
  (*(v15 + 32))(v40, v11, v14);
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v28 = sub_1B8C23C38();
  __swift_project_value_buffer(v28, qword_1EBAB3A30);
  (*(v15 + 16))(v19, v27, v14);
  v29 = sub_1B8C23C18();
  v30 = sub_1B8C25468();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v41 = v32;
    *v31 = 136315138;
    sub_1B8B4D128(&qword_1EBAA63C0, MEMORY[0x1E6968FB0]);
    v33 = sub_1B8C259E8();
    v35 = v34;
    v36 = *(v15 + 8);
    v36(v19, v14);
    v37 = sub_1B8B5DD48(v33, v35, &v41);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_1B8B22000, v29, v30, "New quicklook preview url: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x1B8CCB0E0](v32, -1, -1);
    MEMORY[0x1B8CCB0E0](v31, -1, -1);

    return (v36)(v40, v14);
  }

  else
  {

    v38 = *(v15 + 8);
    v38(v19, v14);
    return (v38)(v27, v14);
  }
}

uint64_t sub_1B8B4BD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for PrebuiltPreviewController() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1B8B49990(a1, v8, v5, v6, a2);
}

unint64_t sub_1B8B4BDFC()
{
  result = qword_1EBAA6380;
  if (!qword_1EBAA6380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6370, &qword_1B8C28C10);
    sub_1B8B34CFC(&qword_1EBAA6388, &qword_1EBAA6390, &qword_1B8C28C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6380);
  }

  return result;
}

unint64_t sub_1B8B4BEB4()
{
  result = qword_1EBAA6398;
  if (!qword_1EBAA6398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA85A0, &qword_1B8C28C20);
    sub_1B8B4D128(&qword_1EBAA63A0, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6398);
  }

  return result;
}

double sub_1B8B4BF74@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for PrebuiltPreviewController() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1B8C23E98() - 8);
  v11 = v2 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_1B8B4AD08(a1, a2);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for PrebuiltPreviewController();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v30 = *(*(v3 - 1) + 64);
  v6 = v0 + v5;
  v7 = sub_1B8C23568();
  (*(*(v7 - 8) + 8))(v0 + v5, v7);
  v8 = type metadata accessor for BatchInteraction(0);

  v9 = *(v0 + v5 + v8[6]);

  v10 = v0 + v5 + v8[7];
  type metadata accessor for BatchInteraction.ContentPolarity(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = type metadata accessor for BatchInteraction.ContentPreview(0);
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(v10, 1, v12);
  if (EnumCaseMultiPayload != 1)
  {
    if (v14)
    {
      goto LABEL_26;
    }

    goto LABEL_6;
  }

  if (!v14)
  {
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 > 2)
    {
      switch(v16)
      {
        case 3:

          v27 = *(v10 + 16);

          break;
        case 4:
          v28 = sub_1B8C23328();
          (*(*(v28 - 8) + 8))(v10, v28);
          break;
        case 5:
          sub_1B8B3B06C(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72));
          break;
      }
    }

    else if (v16 < 2)
    {
      v19 = *(v10 + 8);
    }

    else if (v16 == 2)
    {
    }
  }

  v10 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5FD8, &qword_1B8C28560) + 48);
  if (!v13(v10, 1, v12))
  {
LABEL_6:
    v15 = swift_getEnumCaseMultiPayload();
    if (v15 > 2)
    {
      switch(v15)
      {
        case 3:

          v18 = *(v10 + 16);

          break;
        case 4:
          v20 = sub_1B8C23328();
          (*(*(v20 - 8) + 8))(v10, v20);
          break;
        case 5:
          sub_1B8B3B06C(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72));
          break;
      }
    }

    else if (v15 < 2)
    {
      v17 = *(v10 + 8);
    }

    else if (v15 == 2)
    {
    }
  }

LABEL_26:
  v21 = *(v6 + v3[10] + 8);

  v22 = *(v6 + v3[11]);

  v23 = (v6 + v3[12]);
  v24 = *v23;

  v25 = v23[1];

  v26 = v23[2];

  return MEMORY[0x1EEE6BDD0](v0, v5 + v30, v4 | 7);
}

uint64_t sub_1B8B4C420(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for PrebuiltPreviewController() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1B8B4B8C8(a1, a2, v8, v5, v6);
}

uint64_t sub_1B8B4C4BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B8C242E8();
  LOBYTE(v28[0]) = 1;
  sub_1B8B4C6F8(&v30);
  v23 = v34;
  v24 = v35;
  v25[0] = *v36;
  *(v25 + 9) = *&v36[9];
  v19 = v30;
  v20 = v31;
  v21 = v32;
  v22 = v33;
  v26[0] = v30;
  v26[1] = v31;
  v26[2] = v32;
  v26[3] = v33;
  v26[4] = v34;
  v26[5] = v35;
  v27[0] = *v36;
  *(v27 + 9) = *&v36[9];
  sub_1B8B34450(&v19, v39, &qword_1EBAA6468, &qword_1B8C28E18);
  sub_1B8B3433C(v26, &qword_1EBAA6468, &qword_1B8C28E18);
  *&v18[71] = v23;
  *&v18[87] = v24;
  *&v18[103] = v25[0];
  *&v18[112] = *(v25 + 9);
  *&v18[7] = v19;
  *&v18[23] = v20;
  *&v18[39] = v21;
  *&v18[55] = v22;
  v3 = v28[0];
  v28[0] = v2;
  v28[1] = 0;
  v29[0] = v3;
  *&v29[1] = *v18;
  v4 = *v18;
  v5 = *&v18[16];
  *&v29[17] = *&v18[16];
  v6 = *&v18[48];
  *&v29[33] = *&v18[32];
  *&v29[113] = *(v25 + 9);
  v8 = *&v18[96];
  v7 = *(v25 + 9);
  *&v29[97] = *&v18[96];
  *&v29[81] = *&v18[80];
  v10 = *&v18[64];
  v9 = *&v18[80];
  *&v29[65] = *&v18[64];
  v11 = *&v18[32];
  *&v29[49] = *&v18[48];
  *v36 = *&v29[80];
  *&v36[16] = *&v29[96];
  v37 = *&v29[112];
  v32 = *&v29[16];
  v33 = *&v29[32];
  v34 = *&v29[48];
  v35 = *&v29[64];
  v30 = v2;
  v31 = *v29;
  v12 = *&v29[96];
  *(a1 + 96) = *&v29[80];
  *(a1 + 112) = v12;
  *(a1 + 128) = v37;
  v13 = v33;
  *(a1 + 32) = v32;
  *(a1 + 48) = v13;
  v14 = v35;
  *(a1 + 64) = v34;
  *(a1 + 80) = v14;
  v15 = v31;
  *a1 = v30;
  *(a1 + 16) = v15;
  v45 = v10;
  v46 = v9;
  v47 = v8;
  v48 = v7;
  v41 = v4;
  v42 = v5;
  v43 = v11;
  LOBYTE(v38) = v29[128];
  v17[152] = 1;
  *(a1 + 144) = v38;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  v39[0] = v2;
  v39[1] = 0;
  v40 = v3;
  v44 = v6;
  sub_1B8B34450(v28, v17, &qword_1EBAA6470, &qword_1B8C28E20);
  return sub_1B8B3433C(v39, &qword_1EBAA6470, &qword_1B8C28E20);
}

uint64_t sub_1B8B4C6F8@<X0>(uint64_t a1@<X8>)
{
  sub_1B8B34CA8();

  v2 = sub_1B8C249E8();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  KeyPath = swift_getKeyPath();
  v10 = sub_1B8C248A8();
  v11 = swift_getKeyPath();
  v6 &= 1u;
  v12 = sub_1B8C24808();
  *&v20 = v2;
  *(&v20 + 1) = v4;
  LOBYTE(v21) = v6;
  *(&v21 + 1) = v8;
  *&v22 = KeyPath;
  BYTE8(v22) = 0;
  *&v23 = v11;
  *(&v23 + 1) = v10;
  v24[0] = v12;
  memset(&v24[8], 0, 32);
  v24[40] = 1;
  v25 = v20;
  v26 = v21;
  *&v30[9] = *&v24[25];
  v29 = *v24;
  *v30 = *&v24[16];
  v27 = v22;
  v28 = v23;
  v19[112] = 1;
  v13 = v21;
  *a1 = v20;
  *(a1 + 16) = v13;
  v14 = v27;
  v15 = v28;
  v16 = *&v30[16];
  *(a1 + 80) = *v30;
  *(a1 + 96) = v16;
  v17 = v29;
  *(a1 + 48) = v15;
  *(a1 + 64) = v17;
  *(a1 + 32) = v14;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  v31[0] = v2;
  v31[1] = v4;
  v32 = v6;
  v33 = v8;
  v34 = KeyPath;
  v35 = 0;
  v36 = v11;
  v37 = v10;
  v38 = v12;
  v40 = 0u;
  v39 = 0u;
  v41 = 1;
  sub_1B8B34450(&v20, v19, &qword_1EBAA6478, &qword_1B8C28E88);
  return sub_1B8B3433C(v31, &qword_1EBAA6478, &qword_1B8C28E88);
}

uint64_t sub_1B8B4C888@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6460, &qword_1B8C28E10) + 40);
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6408, &qword_1B8C28D00);
  swift_storeEnumTagMultiPayload();
  *(a1 + 24) = sub_1B8B4D570;
  *(a1 + 32) = v5;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_1B8B4C94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B8C242E8();
  LOBYTE(v30[0]) = 1;
  sub_1B8B4CB80(a1, &v32);
  v25 = v36;
  v26 = v37;
  v27[0] = *v38;
  *(v27 + 9) = *&v38[9];
  v21 = v32;
  v22 = v33;
  v23 = v34;
  v24 = v35;
  v28[0] = v32;
  v28[1] = v33;
  v28[2] = v34;
  v28[3] = v35;
  v28[4] = v36;
  v28[5] = v37;
  v29[0] = *v38;
  *(v29 + 9) = *&v38[9];
  sub_1B8B34450(&v21, v41, &qword_1EBAA6468, &qword_1B8C28E18);
  sub_1B8B3433C(v28, &qword_1EBAA6468, &qword_1B8C28E18);
  *&v20[71] = v25;
  *&v20[87] = v26;
  *&v20[103] = v27[0];
  *&v20[112] = *(v27 + 9);
  *&v20[7] = v21;
  *&v20[23] = v22;
  *&v20[39] = v23;
  *&v20[55] = v24;
  v5 = v30[0];
  v30[0] = v4;
  v30[1] = 0;
  v31[0] = v5;
  *&v31[1] = *v20;
  v6 = *v20;
  v7 = *&v20[16];
  *&v31[17] = *&v20[16];
  v8 = *&v20[48];
  *&v31[33] = *&v20[32];
  *&v31[113] = *(v27 + 9);
  v10 = *&v20[96];
  v9 = *(v27 + 9);
  *&v31[97] = *&v20[96];
  *&v31[81] = *&v20[80];
  v12 = *&v20[64];
  v11 = *&v20[80];
  *&v31[65] = *&v20[64];
  v13 = *&v20[32];
  *&v31[49] = *&v20[48];
  *v38 = *&v31[80];
  *&v38[16] = *&v31[96];
  v39 = *&v31[112];
  v34 = *&v31[16];
  v35 = *&v31[32];
  v36 = *&v31[48];
  v37 = *&v31[64];
  v32 = v4;
  v33 = *v31;
  v14 = *&v31[96];
  *(a2 + 96) = *&v31[80];
  *(a2 + 112) = v14;
  *(a2 + 128) = v39;
  v15 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v15;
  v16 = v37;
  *(a2 + 64) = v36;
  *(a2 + 80) = v16;
  v17 = v33;
  *a2 = v32;
  *(a2 + 16) = v17;
  v47 = v12;
  v48 = v11;
  v49 = v10;
  v50 = v9;
  v43 = v6;
  v44 = v7;
  v45 = v13;
  LOBYTE(v40) = v31[128];
  v19[152] = 1;
  *(a2 + 144) = v40;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  v41[0] = v4;
  v41[1] = 0;
  v42 = v5;
  v46 = v8;
  sub_1B8B34450(v30, v19, &qword_1EBAA6470, &qword_1B8C28E20);
  return sub_1B8B3433C(v41, &qword_1EBAA6470, &qword_1B8C28E20);
}

uint64_t sub_1B8B4CB80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B8C23328();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1);
  v8 = sub_1B8C249D8();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  KeyPath = swift_getKeyPath();
  v16 = sub_1B8C248A8();
  v17 = swift_getKeyPath();
  v12 &= 1u;
  LOBYTE(v37) = v12;
  v18 = sub_1B8C24808();
  *&v32 = v8;
  *(&v32 + 1) = v10;
  LOBYTE(v33) = v12;
  v19 = v30[0];
  *(&v33 + 1) = v30[0];
  DWORD1(v33) = *(v30 + 3);
  *(&v33 + 1) = v14;
  *&v34 = KeyPath;
  BYTE8(v34) = 0;
  v20 = *v29;
  *(&v34 + 9) = *v29;
  HIDWORD(v34) = *&v29[3];
  *&v35 = v17;
  *(&v35 + 1) = v16;
  LOBYTE(v36[0]) = v18;
  DWORD1(v36[0]) = *&v31[3];
  *(v36 + 1) = *v31;
  *(&v36[1] + 8) = 0u;
  *(v36 + 8) = 0u;
  BYTE8(v36[2]) = 1;
  v39 = v34;
  v38 = v33;
  v37 = v32;
  *(v42 + 9) = *(&v36[1] + 9);
  v42[0] = v36[1];
  v41 = v36[0];
  v40 = v35;
  v21 = v33;
  v22 = v34;
  *a2 = v32;
  *(a2 + 16) = v21;
  v23 = v40;
  v24 = v41;
  v25 = v42[1];
  *(a2 + 80) = v42[0];
  *(a2 + 96) = v25;
  *(a2 + 48) = v23;
  *(a2 + 64) = v24;
  *(a2 + 32) = v22;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  v28[112] = 1;
  v43[0] = v8;
  v43[1] = v10;
  v44 = v12;
  *&v45[3] = *(v30 + 3);
  *v45 = v19;
  v46 = v14;
  v47 = KeyPath;
  v48 = 0;
  *&v49[3] = *&v29[3];
  *v49 = v20;
  v50 = v17;
  v51 = v16;
  v52 = v18;
  *&v53[3] = *&v31[3];
  *v53 = *v31;
  v55 = 0u;
  v54 = 0u;
  v56 = 1;
  sub_1B8B34450(&v32, v28, &qword_1EBAA6478, &qword_1B8C28E88);
  return sub_1B8B3433C(v43, &qword_1EBAA6478, &qword_1B8C28E88);
}

uint64_t sub_1B8B4CE08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1B8B4D2B8(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FullPreviewAttributedText);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1B8B4D578(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6460, &qword_1B8C28E10) + 40);
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6408, &qword_1B8C28D00);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + 24) = sub_1B8B4D5DC;
  *(a2 + 32) = v7;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1B8B4CF5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6390, &qword_1B8C28C18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for FullPreviewAttributedText()
{
  result = qword_1EBAA6450;
  if (!qword_1EBAA6450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B8B4D018()
{
  result = qword_1EBAA6418;
  if (!qword_1EBAA6418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA63F8, &qword_1B8C28CC0);
    sub_1B8B4D0D4();
    sub_1B8B4D128(&qword_1EBAA6428, type metadata accessor for FullPreviewAttributedText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6418);
  }

  return result;
}

unint64_t sub_1B8B4D0D4()
{
  result = qword_1EBAA6420;
  if (!qword_1EBAA6420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6420);
  }

  return result;
}

uint64_t sub_1B8B4D128(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B8B4D170()
{
  result = qword_1EBAA6430;
  if (!qword_1EBAA6430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA63D8, &qword_1B8C28CA0);
    sub_1B8B4D128(&qword_1EBAA6410, type metadata accessor for CatchUpMailOriginalContentFullScreenPreviewController);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6430);
  }

  return result;
}

unint64_t sub_1B8B4D22C()
{
  result = qword_1EBAA6438;
  if (!qword_1EBAA6438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6400, &qword_1B8C28CC8);
    sub_1B8B4D018();
    sub_1B8B4D170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6438);
  }

  return result;
}

uint64_t sub_1B8B4D2B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B8B4D320(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B8B4D380(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1B8B4D440(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_1B8B493B4(a1, v1[4]) & 1;
}

uint64_t sub_1B8B4D4BC()
{
  result = sub_1B8C23328();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B8B4D570@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B8B4C4BC(a1);
}

uint64_t sub_1B8B4D578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullPreviewAttributedText();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B4D5DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FullPreviewAttributedText() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1B8B4C94C(v4, a1);
}

uint64_t sub_1B8B4D64C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v65 = a3;
  v62 = a2;
  v6 = sub_1B8C23738();
  v63 = *(v6 - 8);
  v64 = v6;
  v7 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1B8C236E8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v61 - v16;
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v17 = a1;
  v18 = sub_1B8C23C38();
  __swift_project_value_buffer(v18, qword_1EBAB3A30);
  v19 = sub_1B8C23C18();
  v20 = sub_1B8C25468();
  v21 = os_log_type_enabled(v19, v20);
  v66 = v10;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v69[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1B8B5DD48(0xD000000000000013, 0x80000001B8C32A30, v69);
    _os_log_impl(&dword_1B8B22000, v19, v20, "%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v24 = v23;
    v10 = v66;
    MEMORY[0x1B8CCB0E0](v24, -1, -1);
    MEMORY[0x1B8CCB0E0](v22, -1, -1);
  }

  v25 = *(v4 + OBJC_IVAR____TtC8Feedback15BatchController__lastAction);
  v26 = v25 != 3 && v25 == v17;
  v67 = v11;
  if (v26)
  {
    *(v4 + OBJC_IVAR____TtC8Feedback15BatchController__lastAction) = v17;
    if (v17 != 2)
    {
      goto LABEL_10;
    }

LABEL_15:
    (*(v11 + 104))(v15, *MEMORY[0x1E699C1E8], v10);
    goto LABEL_18;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v61 - 2) = v4;
  *(&v61 - 8) = v17;
  v69[0] = v4;
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23578();

  v11 = v67;
  if (v17 == 2)
  {
    goto LABEL_15;
  }

LABEL_10:
  v28 = sub_1B8C23C18();
  v29 = sub_1B8C25468();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v69[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1B8B5DD48(0xD000000000000013, 0x80000001B8C32A30, v69);
    _os_log_impl(&dword_1B8B22000, v28, v29, "%s - will increment score", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x1B8CCB0E0](v31, -1, -1);
    MEMORY[0x1B8CCB0E0](v30, -1, -1);
  }

  swift_getKeyPath();
  v69[0] = v4;
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  v32 = *(v4 + 24);
  swift_retain_n();
  v33 = sub_1B8C24F68();
  MEMORY[0x1EEE9AC00](v33);
  *(&v61 - 2) = sub_1B8B513A0;
  *(&v61 - 1) = v32;
  sub_1B8C23F08();

  v10 = v66;
  v11 = v67;
  if (v17)
  {
    v34 = MEMORY[0x1E699C1C8];
  }

  else
  {
    v34 = MEMORY[0x1E699C1F0];
  }

  (*(v67 + 104))(v15, *v34, v66);
LABEL_18:
  (*(v11 + 32))(v68, v15, v10);
  v35 = sub_1B8C23C18();
  v36 = sub_1B8C25458();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v69[0] = v38;
    *v37 = 136315394;
    *(v37 + 4) = sub_1B8B5DD48(0xD000000000000013, 0x80000001B8C32A30, v69);
    *(v37 + 12) = 2080;
    v39 = 0x6F4473626D756874;
    v40 = 0xEA00000000006E77;
    if (v17 != 1)
    {
      v39 = 1885956979;
      v40 = 0xE400000000000000;
    }

    if (v17)
    {
      v41 = v39;
    }

    else
    {
      v41 = 0x705573626D756874;
    }

    if (v17)
    {
      v42 = v40;
    }

    else
    {
      v42 = 0xE800000000000000;
    }

    v43 = sub_1B8B5DD48(v41, v42, v69);

    *(v37 + 14) = v43;
    _os_log_impl(&dword_1B8B22000, v35, v36, "%s - will commit action %s on evaluation controller", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v38, -1, -1);
    MEMORY[0x1B8CCB0E0](v37, -1, -1);

    v10 = v66;
    v11 = v67;
  }

  else
  {
  }

  v44 = type metadata accessor for BatchInteraction(0);
  v45 = v63;
  v46 = *(v62 + *(v44 + 20));
  *v9 = v46;
  v47 = v64;
  (*(v45 + 104))(v9, *MEMORY[0x1E699C218], v64);
  v48 = v46;
  sub_1B8BED0A4(v68, v9, v17 == 1, 2, 0);
  (*(v45 + 8))(v9, v47);
  v49 = sub_1B8C23C18();
  if (v17 == 1)
  {
    v50 = sub_1B8C25458();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v69[0] = v52;
      *v51 = 136315394;
      *(v51 + 4) = sub_1B8B5DD48(0xD000000000000013, 0x80000001B8C32A30, v69);
      *(v51 + 12) = 2080;
      *(v51 + 14) = sub_1B8B5DD48(0x6F4473626D756874, 0xEA00000000006E77, v69);
      _os_log_impl(&dword_1B8B22000, v49, v50, "%s - action is %s, will not animate yet", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CCB0E0](v52, -1, -1);
      MEMORY[0x1B8CCB0E0](v51, -1, -1);
    }
  }

  else
  {
    v53 = sub_1B8C25468();
    if (os_log_type_enabled(v49, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v69[0] = v55;
      *v54 = 136315394;
      *(v54 + 4) = sub_1B8B5DD48(0xD000000000000013, 0x80000001B8C32A30, v69);
      *(v54 + 12) = 2080;
      if (v17)
      {
        v56 = 1885956979;
      }

      else
      {
        v56 = 0x705573626D756874;
      }

      if (v17)
      {
        v57 = 0xE400000000000000;
      }

      else
      {
        v57 = 0xE800000000000000;
      }

      v58 = sub_1B8B5DD48(v56, v57, v69);

      *(v54 + 14) = v58;
      v11 = v67;
      _os_log_impl(&dword_1B8B22000, v49, v53, "%s - action %s was not feedback, will animate out", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CCB0E0](v55, -1, -1);
      MEMORY[0x1B8CCB0E0](v54, -1, -1);
    }

    swift_getKeyPath();
    v69[0] = v4;
    sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController);
    sub_1B8C23588();

    swift_beginAccess();
    v59 = *(v4 + 16);

    sub_1B8BC1BDC();
  }

  return (*(v11 + 8))(v68, v10);
}

uint64_t sub_1B8B4E0BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B8C237B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_1B8B51340(&qword_1EBAA64E0, MEMORY[0x1E699C390]), v9 = sub_1B8C250B8(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_1B8B51340(&unk_1EBAA8610, MEMORY[0x1E699C390]);
      v17 = sub_1B8C250E8();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1B8B4E2D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v49 = *a1;
  v50 = v2;
  v51[0] = *(a1 + 32);
  *(v51 + 9) = *(a1 + 41);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a2;
  v5 = *(a2 + 40);
  sub_1B8C25AB8();
  v6 = *(a1 + 8);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v7 = 3;
      goto LABEL_12;
    }

    if (v6 == 3)
    {
      v7 = 4;
      goto LABEL_12;
    }

LABEL_9:
    v8 = *a1;
    v9 = *(a1 + 32);
    v43 = *(a1 + 16);
    *v44 = v9;
    *&v44[9] = *(a1 + 41);
    MEMORY[0x1B8CCA790](1);
    *&v42 = v8;
    *(&v42 + 1) = v6;
    BatchStatusView.Config.hash(into:)();
    goto LABEL_13;
  }

  if (!v6)
  {
    v7 = 0;
    goto LABEL_12;
  }

  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = 2;
LABEL_12:
  MEMORY[0x1B8CCA790](v7);
LABEL_13:
  v10 = sub_1B8C25AF8();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  v40 = v3 + 56;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v39 = ~v11;
  while (1)
  {
    v13 = (*(v3 + 48) + (v12 << 6));
    v15 = v13[1];
    v14 = v13[2];
    v16 = *v13;
    *&v44[9] = *(v13 + 41);
    v43 = v15;
    *v44 = v14;
    v42 = v16;
    memmove(__dst, v13, 0x39uLL);
    v46 = v49;
    v47 = v50;
    v48[0] = v51[0];
    *(v48 + 9) = *(v51 + 9);
    v17 = v43;
    v18 = v44[0];
    v19 = *&v44[8];
    v20 = *&v44[16];
    v21 = v44[24];
    if (*(&v42 + 1) > 1)
    {
      break;
    }

    if (!*(&v42 + 1))
    {
      if (!*(a1 + 8))
      {
        goto LABEL_53;
      }

      goto LABEL_29;
    }

    if (*(&v42 + 1) == 1)
    {
      if (*(a1 + 8) == 1)
      {
        goto LABEL_53;
      }

      goto LABEL_29;
    }

LABEL_24:
    if (*(a1 + 8) < 4uLL)
    {
      goto LABEL_25;
    }

    v24 = *(a1 + 16);
    v23 = *(a1 + 24);
    v25 = *(a1 + 32);
    v36 = *(a1 + 40);
    v38 = *(a1 + 48);
    v37 = *(a1 + 56);
    if (v42 != *a1)
    {
      v35 = v3;
      v34 = *(a1 + 32);
      v26 = *(a1 + 24);
      v33 = *(a1 + 16);
      v27 = sub_1B8C25A08();
      v24 = v33;
      v23 = v26;
      v25 = v34;
      v3 = v35;
      if ((v27 & 1) == 0)
      {
LABEL_25:
        sub_1B8B50FF8(a1, v41);
        v22 = &v42;
LABEL_30:
        sub_1B8B50FF8(v22, v41);
        sub_1B8B3433C(__dst, &qword_1EBAA64D8, &qword_1B8C2DB40);
        goto LABEL_31;
      }
    }

    if (*(&v17 + 1))
    {
      if (!v23)
      {
        goto LABEL_25;
      }

      if (v17 != __PAIR128__(v23, v24))
      {
        v28 = v3;
        v29 = v25;
        v30 = sub_1B8C25A08();
        v25 = v29;
        v3 = v28;
        if ((v30 & 1) == 0)
        {
          goto LABEL_25;
        }
      }
    }

    else if (v23)
    {
      goto LABEL_25;
    }

    if (v18 != v25)
    {
      goto LABEL_25;
    }

    if (v20)
    {
      if (!v38)
      {
        goto LABEL_25;
      }

      if (v19 == v36 && v20 == v38)
      {
        sub_1B8B50FF8(a1, v41);
        sub_1B8B50FF8(&v42, v41);
        sub_1B8B3433C(__dst, &qword_1EBAA64D8, &qword_1B8C2DB40);
      }

      else
      {
        v31 = sub_1B8C25A08();
        sub_1B8B50FF8(a1, v41);
        sub_1B8B50FF8(&v42, v41);
        sub_1B8B3433C(__dst, &qword_1EBAA64D8, &qword_1B8C2DB40);
        if ((v31 & 1) == 0)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      sub_1B8B50FF8(a1, v41);
      sub_1B8B50FF8(&v42, v41);
      sub_1B8B50FF8(a1, v41);
      sub_1B8B50FF8(&v42, v41);
      sub_1B8B3433C(__dst, &qword_1EBAA64D8, &qword_1B8C2DB40);
      sub_1B8B51054(a1);
      sub_1B8B51054(&v42);
      if (v38)
      {
        goto LABEL_31;
      }
    }

    if (((v21 ^ v37) & 1) == 0)
    {
      return 1;
    }

LABEL_31:
    v12 = (v12 + 1) & v39;
    if (((*(v40 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  if (*(&v42 + 1) != 2)
  {
    if (*(&v42 + 1) == 3)
    {
      if (*(a1 + 8) == 3)
      {
        goto LABEL_53;
      }

      goto LABEL_29;
    }

    goto LABEL_24;
  }

  if (*(a1 + 8) != 2)
  {
LABEL_29:
    v22 = a1;
    goto LABEL_30;
  }

LABEL_53:
  sub_1B8B3433C(__dst, &qword_1EBAA64D8, &qword_1B8C2DB40);
  return 1;
}

uint64_t BatchController.donationController.getter()
{
  swift_getKeyPath();
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_1B8B4E7E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1B8B4E8A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return BatchController.donationController.setter(v4);
}

uint64_t type metadata accessor for BatchController()
{
  result = qword_1EBAA64A0;
  if (!qword_1EBAA64A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BatchController.donationController.setter(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 16) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController);
    sub_1B8C23578();
  }
}

uint64_t sub_1B8B4EA40(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
}

void (*BatchController.donationController.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC8Feedback15BatchController___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  *v4 = v1;
  swift_getKeyPath();
  sub_1B8C235A8();

  swift_beginAccess();
  return sub_1B8B4EC04;
}

void sub_1B8B4EC04(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1B8C23598();

  free(v1);
}

uint64_t sub_1B8B4EC88()
{
  swift_getKeyPath();
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  v1 = *(v0 + 24);
}

uint64_t sub_1B8B4ED2C(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController);
    sub_1B8C23578();
  }
}

uint64_t sub_1B8B4EE60()
{
  swift_getKeyPath();
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  v1 = *(v0 + 32);
}

uint64_t sub_1B8B4EF04(uint64_t a1)
{
  if (*(v1 + 32) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController);
    sub_1B8C23578();
  }
}

uint64_t sub_1B8B4F038()
{
  swift_getKeyPath();
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  v1 = *(v0 + 40);
}

uint64_t sub_1B8B4F0DC(uint64_t a1)
{
  if (*(v1 + 40) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController);
    sub_1B8C23578();
  }
}

uint64_t sub_1B8B4F210()
{
  swift_getKeyPath();
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  v1 = *(v0 + 48);
}

uint64_t sub_1B8B4F2B4(uint64_t a1)
{
  if (*(v1 + 48) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController);
    sub_1B8C23578();
  }
}

uint64_t sub_1B8B4F3E8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  v3 = OBJC_IVAR____TtC8Feedback15BatchController__dismissHandler;
  swift_beginAccess();
  return sub_1B8B50868(v5 + v3, a1);
}

uint64_t sub_1B8B4F4B0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AC8, &qword_1B8C27250);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC8Feedback15BatchController__dismissHandler;
  swift_beginAccess();
  sub_1B8B50868(v1 + v7, v6);
  v8 = sub_1B8B501B0(v6, a1);
  sub_1B8B3433C(v6, &qword_1EBAA5AC8, &qword_1B8C27250);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController);
    sub_1B8C23578();
  }

  else
  {
    swift_beginAccess();
    sub_1B8B508D8(a1, v1 + v7);
    swift_endAccess();
  }

  return sub_1B8B3433C(a1, &qword_1EBAA5AC8, &qword_1B8C27250);
}

uint64_t sub_1B8B4F694(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8Feedback15BatchController__dismissHandler;
  swift_beginAccess();
  sub_1B8B508D8(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1B8B4F700()
{
  swift_getKeyPath();
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  return *(v0 + OBJC_IVAR____TtC8Feedback15BatchController__lastAction);
}

uint64_t sub_1B8B4F7A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  *a2 = *(v3 + OBJC_IVAR____TtC8Feedback15BatchController__lastAction);
  return result;
}

uint64_t sub_1B8B4F858(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC8Feedback15BatchController__lastAction);
  if (v2 == 3)
  {
    if (result != 3)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController);
      sub_1B8C23578();
    }
  }

  else if (v2 != result)
  {
    goto LABEL_3;
  }

  *(v1 + OBJC_IVAR____TtC8Feedback15BatchController__lastAction) = result;
  return result;
}

char *BatchController.__allocating_init(scoreController:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = sub_1B8B504A0(a1);

  return v5;
}

char *BatchController.init(scoreController:)(uint64_t a1)
{
  v1 = sub_1B8B504A0(a1);

  return v1;
}

uint64_t sub_1B8B4FA00()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA64C8, &qword_1B8C2BC70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23[-v4];
  v6 = type metadata accessor for AnalyticsEvent();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B8C23D38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 104))(v14, *MEMORY[0x1E697BE38], v10);
  v15 = sub_1B8C23D28();
  result = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    swift_storeEnumTagMultiPayload();
    sub_1B8C03B68();
    sub_1B8B50964(v9);
    v17 = sub_1B8B8A728(&unk_1F37546B8);
    swift_arrayDestroy();
    swift_getKeyPath();
    *&v24[0] = v1;
    sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController);
    sub_1B8C23588();

    v18 = *(v1 + 40);
    swift_getKeyPath();
    *&v24[0] = v18;
    sub_1B8B51340(&qword_1EBAA64D0, type metadata accessor for StateController);

    sub_1B8C23588();

    v19 = v18[2];
    v24[0] = v18[1];
    v24[1] = v19;
    v25[0] = v18[3];
    *(v25 + 9) = *(v18 + 57);
    sub_1B8B50FF8(v24, v23);

    v20 = sub_1B8B4E2D4(v24, v17);

    result = sub_1B8B51054(v24);
    if (v20)
    {
      sub_1B8C25388();
      v21 = sub_1B8C253A8();
      (*(*(v21 - 8) + 56))(v5, 0, 1, v21);
      v22 = swift_allocObject();
      v22[2] = 0;
      v22[3] = 0;
      v22[4] = v1;

      sub_1B8BE33EC(0, 0, v5, &unk_1B8C28FD8, v22);
    }
  }

  return result;
}

uint64_t sub_1B8B4FDE4()
{
  v1 = v0[6];
  swift_getKeyPath();
  v0[5] = v1;
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  swift_beginAccess();
  v0[7] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1B8B4FF14;

  return sub_1B8BC20B4();
}

uint64_t sub_1B8B4FF14()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

char *BatchController.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = *(v0 + 5);

  v5 = *(v0 + 6);

  sub_1B8B3433C(&v0[OBJC_IVAR____TtC8Feedback15BatchController__dismissHandler], &qword_1EBAA5AC8, &qword_1B8C27250);
  v6 = OBJC_IVAR____TtC8Feedback15BatchController___observationRegistrar;
  v7 = sub_1B8C235C8();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  return v0;
}

uint64_t BatchController.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = *(v0 + 5);

  v5 = *(v0 + 6);

  sub_1B8B3433C(&v0[OBJC_IVAR____TtC8Feedback15BatchController__dismissHandler], &qword_1EBAA5AC8, &qword_1B8C27250);
  v6 = OBJC_IVAR____TtC8Feedback15BatchController___observationRegistrar;
  v7 = sub_1B8C235C8();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B8B501B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C23E78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AC8, &qword_1B8C27250);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA64B8, &qword_1B8C28F78);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1B8B50868(a1, &v24 - v16);
  sub_1B8B50868(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1B8B50868(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1B8B51340(&qword_1EBAA64C0, MEMORY[0x1E697BF90]);
      v21 = sub_1B8C250E8();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1B8B3433C(v17, &qword_1EBAA5AC8, &qword_1B8C27250);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1B8B3433C(v17, &qword_1EBAA64B8, &qword_1B8C28F78);
    v20 = 1;
    return v20 & 1;
  }

  sub_1B8B3433C(v17, &qword_1EBAA5AC8, &qword_1B8C27250);
  v20 = 0;
  return v20 & 1;
}

char *sub_1B8B504A0(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8Feedback15BatchController__dismissHandler;
  v5 = sub_1B8C23E78();
  (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);
  v2[OBJC_IVAR____TtC8Feedback15BatchController__lastAction] = 3;
  sub_1B8C235B8();
  if (a1)
  {
    *(v2 + 3) = a1;
  }

  else
  {
    v6 = type metadata accessor for ScoreController();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    sub_1B8C235B8();
    if (qword_1EBAA5930 != -1)
    {
      swift_once();
    }

    v10 = qword_1EBAB39E0;
    swift_getKeyPath();
    sub_1B8B51340(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController);
    sub_1B8C23588();

    *(v9 + 24) = *(v10 + 24);
    *(v2 + 3) = v9;
  }

  v11 = type metadata accessor for DebugController();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;

  sub_1B8C235B8();
  *(v2 + 6) = v14;
  v15 = type metadata accessor for OnboardingController();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v2 + 4) = sub_1B8B7F1B0();
  v18 = type metadata accessor for StateController();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  sub_1B8C235B8();
  *(v21 + 58) = 0u;
  v21[2] = 0u;
  v21[3] = 0u;
  v21[1] = 0u;
  *(v2 + 5) = v21;
  v22 = type metadata accessor for DonationController();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();

  *(v2 + 2) = sub_1B8BC46D8(v25);
  return v2;
}

void sub_1B8B506F8()
{
  sub_1B8B50810();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1B8C235C8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B8B50810()
{
  if (!qword_1EBAA64B0)
  {
    sub_1B8C23E78();
    v0 = sub_1B8C25608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBAA64B0);
    }
  }
}

uint64_t sub_1B8B50868(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AC8, &qword_1B8C27250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B508D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5AC8, &qword_1B8C27250);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B50964(uint64_t a1)
{
  v2 = type metadata accessor for AnalyticsEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B8B509C0(void *a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA84E0, &qword_1B8C2F0A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v36[-1] - v8;
  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v10 = sub_1B8C23C38();
  __swift_project_value_buffer(v10, qword_1EBAB3A30);
  v11 = sub_1B8C23C18();
  v12 = sub_1B8C25468();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1B8B5DD48(0xD00000000000001DLL, 0x80000001B8C32A10, v36);
    _os_log_impl(&dword_1B8B22000, v11, v12, "%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1B8CCB0E0](v14, -1, -1);
    MEMORY[0x1B8CCB0E0](v13, -1, -1);
  }

  swift_getKeyPath();
  v36[0] = v3;
  sub_1B8B51340(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  if (*(v3 + OBJC_IVAR____TtC8Feedback15BatchController__lastAction) == 1)
  {
    v35 = v9;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v35 - 2) = v3;
    *(&v35 - 8) = 3;
    v36[0] = v3;
    sub_1B8C23578();

    if ((a2 & 1) == 0)
    {
      v16 = a1;
      v17 = v35;
      sub_1B8C236B8();
      v18 = sub_1B8C236A8();
      if ((*(*(v18 - 8) + 48))(v17, 1, v18) == 1)
      {
        sub_1B8B30A54(a1);
        sub_1B8B3433C(v17, &unk_1EBAA84E0, &qword_1B8C2F0A0);
      }

      else
      {
        sub_1B8B3433C(v17, &unk_1EBAA84E0, &qword_1B8C2F0A0);
        swift_getKeyPath();
        v36[0] = v3;
        sub_1B8C23588();

        swift_beginAccess();
        v28 = *(v3 + 16);

        sub_1B8BC1BDC();

        sub_1B8B30A54(a1);
      }

LABEL_14:
      v29 = v16;
      v20 = sub_1B8C23C18();
      v30 = sub_1B8C25458();
      sub_1B8B30A54(a1);
      if (os_log_type_enabled(v20, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v37 = v33;
        *v31 = 136315394;
        *(v31 + 4) = sub_1B8B5DD48(0xD00000000000001DLL, 0x80000001B8C32A10, &v37);
        *(v31 + 12) = 2112;
        *(v31 + 14) = v29;
        *v32 = v29;
        v34 = v29;
        _os_log_impl(&dword_1B8B22000, v20, v30, "%s - Successfully saved evaluation: %@", v31, 0x16u);
        sub_1B8B3433C(v32, &qword_1EBAA69A0, &qword_1B8C29670);
        MEMORY[0x1B8CCB0E0](v32, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x1B8CCB0E0](v33, -1, -1);
        v27 = v31;
        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  else if ((a2 & 1) == 0)
  {
    v16 = a1;
    goto LABEL_14;
  }

  v19 = a1;
  v20 = sub_1B8C23C18();
  v21 = sub_1B8C25478();
  sub_1B8B30A54(a1);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v36[0] = v24;
    *v22 = 136315394;
    *(v22 + 4) = sub_1B8B5DD48(0xD00000000000001DLL, 0x80000001B8C32A10, v36);
    *(v22 + 12) = 2112;
    v25 = a1;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 14) = v26;
    *v23 = v26;
    _os_log_impl(&dword_1B8B22000, v20, v21, "%s - Failed to record evaluation: %@", v22, 0x16u);
    sub_1B8B3433C(v23, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v23, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x1B8CCB0E0](v24, -1, -1);
    v27 = v22;
LABEL_16:
    MEMORY[0x1B8CCB0E0](v27, -1, -1);
  }

LABEL_17:
}

uint64_t sub_1B8B510A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B8B5115C;

  return sub_1B8B4FDC4(a1, v4, v5, v6);
}

uint64_t sub_1B8B5115C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B8B51250()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v1 + 32) = *(v0 + 24);
}

uint64_t sub_1B8B5128C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 24);
}

uint64_t sub_1B8B512C8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
}

uint64_t sub_1B8B51304()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 48);
  *(v1 + 48) = *(v0 + 24);
}

uint64_t sub_1B8B51340(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ScoreController.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  sub_1B8C235B8();
  if (qword_1EBAA5930 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBAB39E0;
  swift_getKeyPath();
  sub_1B8B527C0(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController);
  sub_1B8C23588();

  *(v3 + 24) = *(v4 + 24);
  return v3;
}

uint64_t sub_1B8B514E0()
{
  swift_getKeyPath();
  sub_1B8B527C0(&qword_1EBAA5F60, type metadata accessor for ScoreController);
  sub_1B8C23588();

  return *(v0 + 17);
}

void sub_1B8B51580()
{
  swift_getKeyPath();
  sub_1B8B527C0(&qword_1EBAA5F60, type metadata accessor for ScoreController);
  sub_1B8C23588();

  v1 = floor(sqrt(*(v0 + 24) * 0.5));
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v2 = v1;
  if (v1 >= 99)
  {
    v2 = 99;
  }

  v3 = floor(v2 * v2 + v2 * v2);
  if (v3 == INFINITY)
  {
    goto LABEL_13;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v3 < 9.22337204e18)
  {
    v4 = v3;
    swift_getKeyPath();
    sub_1B8C23588();

    v5 = *(v0 + 24) - v4;
    sub_1B8B522B8();
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1B8B51748()
{
  swift_getKeyPath();
  sub_1B8B527C0(&qword_1EBAA5F60, type metadata accessor for ScoreController);
  sub_1B8C23588();

  return *(v0 + 16);
}

uint64_t sub_1B8B517E8(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B527C0(&qword_1EBAA5F60, type metadata accessor for ScoreController);
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8B51900(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B527C0(&qword_1EBAA5F60, type metadata accessor for ScoreController);
    sub_1B8C23578();
  }

  return result;
}

void sub_1B8B51A10()
{
  if (qword_1EBAA5930 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBAB39E0;
  swift_getKeyPath();
  sub_1B8B527C0(&qword_1EBAA5F60, type metadata accessor for ScoreController);
  sub_1B8C23588();

  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  KeyPath = swift_getKeyPath();
  if (v3 == v2)
  {
    sub_1B8B527C0(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController);
    sub_1B8C23588();

    v5 = *(v1 + 24);
    v6 = [objc_opt_self() sharedUserDefaults];
    v7 = sub_1B8C25A38();
    v8 = sub_1B8C250F8();
    [v6 setObject:v7 forKey:v8];

    swift_unknownObjectRelease();
  }

  else
  {
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B527C0(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController);
    sub_1B8C23578();
  }
}

uint64_t sub_1B8B51CAC()
{
  swift_getKeyPath();
  sub_1B8B527C0(&qword_1EBAA5F60, type metadata accessor for ScoreController);
  sub_1B8C23588();

  return *(v0 + 24);
}

void sub_1B8B51D4C(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {

    sub_1B8B51A10();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B527C0(&qword_1EBAA5F60, type metadata accessor for ScoreController);
    sub_1B8C23578();
  }
}

uint64_t ScoreController.init()()
{
  *(v0 + 16) = 0;
  sub_1B8C235B8();
  if (qword_1EBAA5930 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBAB39E0;
  swift_getKeyPath();
  sub_1B8B527C0(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController);
  sub_1B8C23588();

  *(v0 + 24) = *(v1 + 24);
  return v0;
}

void sub_1B8B51F9C()
{
  v1 = type metadata accessor for AnalyticsEvent();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v9 = v0;
  sub_1B8B527C0(&qword_1EBAA5F60, type metadata accessor for ScoreController);
  sub_1B8C23588();

  v5 = floor(sqrt(*(v0 + 24) * 0.5));
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    return;
  }

  if (v5 >= 99)
  {
    v6 = 99;
  }

  else
  {
    v6 = v5;
  }

  swift_getKeyPath();
  v9 = v0;
  sub_1B8C23588();

  v7 = *(v0 + 24);
  *v4 = v6;
  v4[1] = v7;
  swift_storeEnumTagMultiPayload();
  sub_1B8C03B68();
  sub_1B8B50964(v4);
  sub_1B8C24F58();
  sub_1B8C23F08();
}

uint64_t sub_1B8B52198(uint64_t result)
{
  if (*(result + 17) == 1)
  {
    *(result + 17) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B527C0(&qword_1EBAA5F60, type metadata accessor for ScoreController);
    sub_1B8C23578();
  }

  return result;
}

void sub_1B8B522B8()
{
  swift_getKeyPath();
  sub_1B8B527C0(&qword_1EBAA5F60, type metadata accessor for ScoreController);
  sub_1B8C23588();

  v1 = floor(sqrt(*(v0 + 24) * 0.5));
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v2 = v1;
  if (v1 >= 99)
  {
    v2 = 99;
  }

  v3 = (v2 + 1) * (v2 + 1);
  v4 = floor(v3 + v3);
  if (v4 == INFINITY)
  {
    goto LABEL_13;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
  }
}

uint64_t sub_1B8B5241C(uint64_t a1)
{
  swift_getKeyPath();
  sub_1B8B527C0(&qword_1EBAA5F60, type metadata accessor for ScoreController);
  sub_1B8C23588();

  v3 = *(a1 + 24);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1B8B522B8();
    if (v4 >= v5)
    {
      sub_1B8B51F9C();
    }

    swift_getKeyPath();
    sub_1B8C23588();

    swift_getKeyPath();
    sub_1B8C235A8();

    v6 = *(a1 + 24);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (!v7)
    {
      *(a1 + 24) = v8;
      sub_1B8B51A10();
      swift_getKeyPath();
      sub_1B8C23598();
    }
  }

  __break(1u);
  return result;
}

uint64_t ScoreController.deinit()
{
  v1 = OBJC_IVAR____TtC8Feedback15ScoreController___observationRegistrar;
  v2 = sub_1B8C235C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ScoreController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8Feedback15ScoreController___observationRegistrar;
  v2 = sub_1B8C235C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScoreController()
{
  result = qword_1EBAA64F0;
  if (!qword_1EBAA64F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8B526E8()
{
  result = sub_1B8C235C8();
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

uint64_t sub_1B8B527C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CardStack()
{
  result = qword_1EBAA6508;
  if (!qword_1EBAA6508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8B52920()
{
  sub_1B8B52A44(319, &qword_1EBAA5FB8, type metadata accessor for BatchController);
  if (v0 <= 0x3F)
  {
    sub_1B8B52A44(319, &qword_1EBAA6518, type metadata accessor for StateController);
    if (v1 <= 0x3F)
    {
      sub_1B8B52A44(319, &qword_1EBAA6520, type metadata accessor for DonationController);
      if (v2 <= 0x3F)
      {
        sub_1B8B52A44(319, &qword_1EBAA6528, MEMORY[0x1E697DBD0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B8B52A44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B8C23D98();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B8B52AB4()
{
  v1 = sub_1B8C242A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);

  if ((v7 & 1) == 0)
  {
    sub_1B8C25488();
    v8 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_1B8B52BF4@<X0>(uint64_t (*a1)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6530, &qword_1B8C29238);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v56 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6540, &qword_1B8C2C1B0);
  v60 = *(v62 - 8);
  v8 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v56 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6548, &qword_1B8C29248);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v56 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6550, &qword_1B8C29250);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v56 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6558, &qword_1B8C29258);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v61 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v56 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v59 = &v56 - v27;
  v58 = a1;
  v28 = swift_projectBox();
  (*(v4 + 16))(v7, v28, v3);

  sub_1B8C24F08();
  (*(v4 + 8))(v7, v3);
  v29 = v65;
  swift_getKeyPath();
  *&v65 = v29;
  sub_1B8B54BF8(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  v30 = *(v29 + 40);
  swift_getKeyPath();
  *&v65 = v29;
  sub_1B8C23588();

  v31 = *(v29 + 48);

  *&v65 = v30 / v31;
  BYTE8(v65) = 0;
  v64 = 0x3FF0000000000000;
  sub_1B8B54888();
  v32 = v56;
  sub_1B8C23DD8();
  sub_1B8C24F48();
  sub_1B8C24088();
  (*(v60 + 32))(v14, v32, v62);
  v33 = &v14[*(v11 + 44)];
  v34 = v70;
  *(v33 + 4) = v69;
  *(v33 + 5) = v34;
  *(v33 + 6) = v71;
  v35 = v66;
  *v33 = v65;
  *(v33 + 1) = v35;
  v36 = v68;
  *(v33 + 2) = v67;
  *(v33 + 3) = v36;
  LOBYTE(v11) = sub_1B8C24808();
  v37 = v14;
  v38 = v57;
  sub_1B8B3883C(v37, v57, &qword_1EBAA6548, &qword_1B8C29248);
  v39 = v38 + *(v16 + 44);
  *v39 = v11;
  *(v39 + 8) = 0u;
  *(v39 + 24) = 0u;
  *(v39 + 40) = 1;
  LOBYTE(v11) = sub_1B8C24828();
  sub_1B8C23D18();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_1B8B3883C(v38, v26, &qword_1EBAA6550, &qword_1B8C29250);
  v48 = &v26[*(v20 + 44)];
  *v48 = v11;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  v49 = v59;
  sub_1B8B3883C(v26, v59, &qword_1EBAA6558, &qword_1B8C29258);
  v50 = v61;
  sub_1B8B34450(v49, v61, &qword_1EBAA6558, &qword_1B8C29258);
  v51 = v63;
  v52 = v58;
  *v63 = sub_1B8B547A8;
  v51[1] = v52;
  v53 = v51;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6568, &qword_1B8C292B0);
  sub_1B8B34450(v50, v53 + *(v54 + 48), &qword_1EBAA6558, &qword_1B8C29258);

  sub_1B8B3433C(v49, &qword_1EBAA6558, &qword_1B8C29258);
  sub_1B8B3433C(v50, &qword_1EBAA6558, &qword_1B8C29258);
}

uint64_t sub_1B8B53208@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_1B8C24F48();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6570, &qword_1B8C292B8);
  sub_1B8B532EC(a1, a2 + *(v5 + 44));
  sub_1B8C23E88();
  sub_1B8C23E88();
  sub_1B8C24F48();
  sub_1B8C23E38();
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6578, &qword_1B8C292C0) + 36));
  *v6 = v8;
  v6[1] = v9;
  v6[2] = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6580, &qword_1B8C292C8);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1B8B532EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v168 = a1;
  v180 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6588, &unk_1B8C2DB50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v175 = &v161 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6590, &qword_1B8C2EFD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v182 = &v161 - v7;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6598, &qword_1B8C292D0);
  v8 = *(*(v183 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v183);
  v162 = &v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v186 = &v161 - v11;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65A0, &qword_1B8C292D8);
  v12 = *(*(v181 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v181);
  v163 = &v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v187 = &v161 - v15;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65A8, &qword_1B8C292E0);
  v16 = *(*(v184 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v184);
  v164 = &v161 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v169 = &v161 - v19;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65B0, &qword_1B8C292E8);
  v20 = *(*(v185 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v185);
  v167 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v172 = &v161 - v23;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65B8, &qword_1B8C292F0);
  v191 = *(v188 - 8);
  v24 = *(v191 + 64);
  v25 = MEMORY[0x1EEE9AC00](v188);
  v166 = &v161 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v165 = &v161 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v171 = &v161 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v170 = &v161 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6530, &qword_1B8C29238);
  v33 = *(v32 - 8);
  v34 = v33[8];
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v161 - v35;
  v174 = type metadata accessor for BatchInteraction(0);
  v37 = *(v174 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x1EEE9AC00](v174);
  v176 = &v161 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v161 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v161 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65C0, &qword_1B8C292F8);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v46 - 8);
  v179 = &v161 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v178 = &v161 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v177 = &v161 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v190 = &v161 - v54;
  v55 = swift_projectBox();
  v57 = v33 + 2;
  v56 = v33[2];
  v192 = v55;
  v194 = v56;
  (v56)(v36);
  sub_1B8C24F08();
  v59 = v33[1];
  v58 = (v33 + 1);
  v195 = v59;
  v59(v36, v32);
  v60 = v199;
  swift_getKeyPath();
  v199 = v60;
  v193 = sub_1B8B54BF8(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  v61 = *(v60 + 32);
  v62 = *(v61 + 16);
  v189 = v57;
  v173 = v37;
  if (v62)
  {
    sub_1B8B548DC(v61 + ((*(v37 + 80) + 32) & ~*(v37 + 80)), v43);

    sub_1B8B54940(v43, v45);
    v161 = v45;
    v63 = v186;
    sub_1B8B548DC(v45, v186);
    v64 = type metadata accessor for EvaluationCard();
    *(v63 + v64[5]) = 1;
    v65 = v63 + v64[6];
    type metadata accessor for BatchController();
    sub_1B8B54BF8(&qword_1EBAA5AD0, type metadata accessor for BatchController);
    *v65 = sub_1B8C23DA8();
    *(v65 + 8) = v66 & 1;
    v67 = (v63 + v64[7]);
    v68 = sub_1B8C23738();
    v69 = v182;
    (*(*(v68 - 8) + 56))(v182, 1, 1, v68);
    v70 = objc_allocWithZone(type metadata accessor for FBKEvaluationController(0));
    v197 = FBKEvaluationController.init(subject:)(v69);
    sub_1B8C24D58();
    v71 = v200;
    *v67 = v199;
    v67[1] = v71;
    v72 = sub_1B8C24808();
    v73 = v63 + *(v183 + 36);
    *v73 = v72;
    *(v73 + 8) = 0u;
    *(v73 + 24) = 0u;
    *(v73 + 40) = 1;
    v74 = v192;
    v75 = v194;
    v194(v36, v192, v32);
    sub_1B8C24F08();
    v195(v36, v32);
    v76 = v199;
    swift_getKeyPath();
    v199 = v76;
    sub_1B8C23588();

    LODWORD(v64) = *(v76 + 65);

    if (v64)
    {
      v77 = 0.8;
    }

    else
    {
      v77 = 1.0;
    }

    sub_1B8C24F78();
    v79 = v78;
    v81 = v80;
    v82 = v187;
    sub_1B8B3883C(v186, v187, &qword_1EBAA6598, &qword_1B8C292D0);
    v83 = &v82[*(v181 + 36)];
    *v83 = v77;
    v83[1] = v77;
    *(v83 + 2) = v79;
    *(v83 + 3) = v81;
    v75(v36, v74, v32);
    sub_1B8C24F08();
    v195(v36, v32);
    v84 = v199;
    swift_getKeyPath();
    v199 = v84;
    sub_1B8C23588();

    LODWORD(v82) = *(v84 + 65);

    v85 = 0.0;
    v86 = 0.0;
    if (v82 == 1)
    {
      sub_1B8C23E88();
      v86 = -v87;
    }

    v88 = v169;
    sub_1B8B3883C(v187, v169, &qword_1EBAA65A0, &qword_1B8C292D8);
    v89 = v88 + *(v184 + 36);
    *v89 = v86;
    *(v89 + 8) = 0;
    v194(v36, v192, v32);
    sub_1B8C24F08();
    v195(v36, v32);
    v90 = v199;
    swift_getKeyPath();
    v199 = v90;
    sub_1B8C23588();

    v91 = *(v90 + 65);

    if (!v91)
    {
      v85 = 1.0;
    }

    v92 = v172;
    sub_1B8B3883C(v88, v172, &qword_1EBAA65A8, &qword_1B8C292E0);
    *(v92 + *(v185 + 36)) = v85;
    v199 = 0x2D746E6572727563;
    v200 = 0xE800000000000000;
    sub_1B8C23568();
    sub_1B8B54BF8(&qword_1EBAA6260, MEMORY[0x1E69695A8]);
    v93 = v161;
    v94 = sub_1B8C259E8();
    MEMORY[0x1B8CC9EB0](v94);

    v95 = v199;
    v96 = v200;
    sub_1B8B54C40(v93);
    v97 = v92;
    v98 = v171;
    sub_1B8B3883C(v97, v171, &qword_1EBAA65B0, &qword_1B8C292E8);
    v99 = v188;
    v100 = (v98 + *(v188 + 52));
    *v100 = v95;
    v100[1] = v96;
    v101 = v98;
    v102 = v170;
    sub_1B8B3883C(v101, v170, &qword_1EBAA65B8, &qword_1B8C292F0);
    v103 = v102;
    v104 = v190;
    sub_1B8B3883C(v103, v190, &qword_1EBAA65B8, &qword_1B8C292F0);
    v105 = 0;
  }

  else
  {

    v105 = 1;
    v99 = v188;
    v104 = v190;
  }

  v106 = *(v191 + 56);
  v191 += 56;
  v187 = v106;
  (v106)(v104, v105, 1, v99);
  v194(v36, v192, v32);
  sub_1B8C24F08();
  v195(v36, v32);
  v107 = v199;
  swift_getKeyPath();
  v199 = v107;
  sub_1B8C23588();

  v108 = OBJC_IVAR____TtC8Feedback18DonationController__nextDonation;
  swift_beginAccess();
  v109 = v107 + v108;
  v110 = v175;
  sub_1B8B34450(v109, v175, &qword_1EBAA6588, &unk_1B8C2DB50);

  if ((*(v173 + 48))(v110, 1, v174) == 1)
  {
    sub_1B8B3433C(v110, &qword_1EBAA6588, &unk_1B8C2DB50);
    v111 = 1;
    v112 = v177;
  }

  else
  {
    v113 = v110;
    v114 = v176;
    sub_1B8B54940(v113, v176);
    v115 = v162;
    sub_1B8B548DC(v114, v162);
    v116 = type metadata accessor for EvaluationCard();
    *(v115 + v116[5]) = 0;
    v117 = v115 + v116[6];
    type metadata accessor for BatchController();
    sub_1B8B54BF8(&qword_1EBAA5AD0, type metadata accessor for BatchController);
    *v117 = sub_1B8C23DA8();
    *(v117 + 8) = v118 & 1;
    v119 = (v115 + v116[7]);
    v120 = sub_1B8C23738();
    v121 = v192;
    v122 = v182;
    (*(*(v120 - 8) + 56))(v182, 1, 1, v120);
    v123 = objc_allocWithZone(type metadata accessor for FBKEvaluationController(0));
    v196 = FBKEvaluationController.init(subject:)(v122);
    sub_1B8C24D58();
    v124 = v198;
    *v119 = v197;
    v119[1] = v124;
    v125 = sub_1B8C24808();
    v126 = v115 + *(v183 + 36);
    *v126 = v125;
    *(v126 + 8) = 0u;
    *(v126 + 24) = 0u;
    *(v126 + 40) = 1;
    v194(v36, v121, v32);
    sub_1B8C24F08();
    v195(v36, v32);
    v127 = v197;
    swift_getKeyPath();
    v197 = v127;
    sub_1B8C23588();

    LODWORD(v116) = *(v127 + 65);

    if (v116)
    {
      v128 = 1.0;
    }

    else
    {
      v128 = 0.8;
    }

    sub_1B8C24F78();
    v130 = v129;
    v132 = v131;
    v133 = v163;
    sub_1B8B3883C(v115, v163, &qword_1EBAA6598, &qword_1B8C292D0);
    v134 = v133 + *(v181 + 36);
    *v134 = v128;
    *(v134 + 8) = v128;
    *(v134 + 16) = v130;
    *(v134 + 24) = v132;
    v194(v36, v121, v32);
    v135 = v195;
    sub_1B8C24F08();
    v186 = v58;
    v135(v36, v32);
    v136 = v197;
    swift_getKeyPath();
    v197 = v136;
    sub_1B8C23588();

    v137 = *(v136 + 65);

    v138 = 0;
    if ((v137 & 1) == 0)
    {
      sub_1B8C23E88();
      v138 = v139;
    }

    v140 = v164;
    sub_1B8B3883C(v133, v164, &qword_1EBAA65A0, &qword_1B8C292D8);
    v141 = (v140 + *(v184 + 36));
    *v141 = v138;
    v141[1] = 0;
    v194(v36, v192, v32);
    sub_1B8C24F08();
    v135(v36, v32);
    v142 = v197;
    swift_getKeyPath();
    v197 = v142;
    sub_1B8C23588();

    v143 = *(v142 + 65);

    if (v143)
    {
      v144 = 1.0;
    }

    else
    {
      v144 = 0.0;
    }

    v145 = v167;
    sub_1B8B3883C(v140, v167, &qword_1EBAA65A8, &qword_1B8C292E0);
    *(v145 + *(v185 + 36)) = v144;
    v197 = 0x2D7478656ELL;
    v198 = 0xE500000000000000;
    sub_1B8C23568();
    sub_1B8B54BF8(&qword_1EBAA6260, MEMORY[0x1E69695A8]);
    v146 = v176;
    v147 = sub_1B8C259E8();
    MEMORY[0x1B8CC9EB0](v147);

    v148 = v197;
    v149 = v198;
    sub_1B8B54C40(v146);
    v150 = v145;
    v151 = v166;
    sub_1B8B3883C(v150, v166, &qword_1EBAA65B0, &qword_1B8C292E8);
    v99 = v188;
    v152 = (v151 + *(v188 + 52));
    *v152 = v148;
    v152[1] = v149;
    v153 = v151;
    v154 = v165;
    sub_1B8B3883C(v153, v165, &qword_1EBAA65B8, &qword_1B8C292F0);
    v112 = v177;
    sub_1B8B3883C(v154, v177, &qword_1EBAA65B8, &qword_1B8C292F0);
    v111 = 0;
  }

  (v187)(v112, v111, 1, v99);
  v155 = v190;
  v156 = v178;
  sub_1B8B34450(v190, v178, &qword_1EBAA65C0, &qword_1B8C292F8);
  v157 = v179;
  sub_1B8B34450(v112, v179, &qword_1EBAA65C0, &qword_1B8C292F8);
  v158 = v180;
  sub_1B8B34450(v156, v180, &qword_1EBAA65C0, &qword_1B8C292F8);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65C8, &qword_1B8C29378);
  sub_1B8B34450(v157, v158 + *(v159 + 48), &qword_1EBAA65C0, &qword_1B8C292F8);
  sub_1B8B3433C(v112, &qword_1EBAA65C0, &qword_1B8C292F8);
  sub_1B8B3433C(v155, &qword_1EBAA65C0, &qword_1B8C292F8);
  sub_1B8B3433C(v157, &qword_1EBAA65C0, &qword_1B8C292F8);
  return sub_1B8B3433C(v156, &qword_1EBAA65C0, &qword_1B8C292F8);
}

uint64_t sub_1B8B546B8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6530, &qword_1B8C29238);
  v2 = swift_allocBox();
  sub_1B8B52AB4();
  type metadata accessor for DonationController();
  sub_1B8B54BF8(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C24F28();
  *a1 = sub_1B8C24468();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6538, &qword_1B8C29240);
  sub_1B8B52BF4(v2, (a1 + *(v3 + 44)));
}

uint64_t sub_1B8B547B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B54BF8(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  *a2 = *(v3 + 32);
}

uint64_t sub_1B8B5485C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1B8BC3358(v4);
}

unint64_t sub_1B8B54888()
{
  result = qword_1EBAA6560;
  if (!qword_1EBAA6560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6560);
  }

  return result;
}

uint64_t sub_1B8B548DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchInteraction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B54940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchInteraction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B549A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B54BF8(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  *a2 = *(v3 + 65);
  return result;
}

uint64_t sub_1B8B54A74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B54BF8(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  v4 = OBJC_IVAR____TtC8Feedback18DonationController__nextDonation;
  swift_beginAccess();
  return sub_1B8B34450(v3 + v4, a2, &qword_1EBAA6588, &unk_1B8C2DB50);
}

uint64_t sub_1B8B54B4C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6588, &unk_1B8C2DB50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1B8B34450(a1, &v10 - v6, &qword_1EBAA6588, &unk_1B8C2DB50);
  v8 = *a2;
  return sub_1B8BC3D58(v7);
}

uint64_t sub_1B8B54BF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8B54C40(uint64_t a1)
{
  v2 = type metadata accessor for BatchInteraction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B8B54C9C()
{
  result = qword_1EBAA65D0;
  if (!qword_1EBAA65D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA65D8, &unk_1B8C29380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA65D0);
  }

  return result;
}

uint64_t sub_1B8B54D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_1B8B5EE34(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_1B8B5E2DC(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_1B8B94220();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_1B8B5EC84(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

BOOL sub_1B8B54E08(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_1B8C237B8() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_1B8B5FB84(&unk_1EBAA8610, MEMORY[0x1E699C390]);
  }

  while ((sub_1B8C250E8() & 1) == 0);
  return v4 != v5;
}

uint64_t FBKSInteraction.feedbackForm(interaction:action:attachmentDirectory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  v5 = sub_1B8C23A08();
  v4[33] = v5;
  v6 = *(v5 - 8);
  v4[34] = v6;
  v7 = *(v6 + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65E0, &qword_1B8C29420) - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v9 = sub_1B8C237B8();
  v4[40] = v9;
  v10 = *(v9 - 8);
  v4[41] = v10;
  v11 = *(v10 + 64) + 15;
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8B5509C, 0, 0);
}

uint64_t sub_1B8B5509C()
{
  v40 = v0[43];
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[29];
  sub_1B8C23968();
  v4 = objc_allocWithZone(type metadata accessor for FBKFeedbackForm());
  v5 = FBKFeedbackForm.init(identifier:)(0xD000000000000018, 0x80000001B8C32AB0);
  v0[44] = v5;
  v6 = &v5[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon];
  v7 = *&v5[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon + 8];
  *v6 = 0xD00000000000001BLL;
  v6[1] = 0x80000001B8C32AD0;

  v5[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__showInlineUserInfo] = 1;
  v5[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__hideAttachmentButton] = 1;
  v8 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_alwaysDeletesDrafts;
  swift_beginAccess();
  v5[v8] = 1;
  v9 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_allowsAttachmentDragAndDrop;
  swift_beginAccess();
  v5[v9] = 0;
  v5[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__disableAccountSwitching] = 1;
  sub_1B8C237C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65E8, &qword_1B8C2AEF0);
  v10 = *(v2 + 72);
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = 4 * v10;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B8C29390;
  v39 = v11;
  v14 = v13 + v11;
  v15 = *MEMORY[0x1E699C270];
  v16 = *(v2 + 104);
  v0[45] = v16;
  v0[46] = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v16(v14, v15, v1);
  v16(v14 + v10, *MEMORY[0x1E699C2D8], v1);
  v16(v14 + 2 * v10, *MEMORY[0x1E699C2D0], v1);
  v37 = v10;
  v38 = 2 * v10;
  v17 = 3 * v10;
  v16(v14 + v17, *MEMORY[0x1E699C368], v1);
  v18 = v1;
  v16(v14 + v12, *MEMORY[0x1E699C2F8], v1);
  LOBYTE(v1) = sub_1B8B54E08(v40, v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v19 = *(v2 + 8);
  v0[47] = v19;
  v0[48] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v40, v18);
  if (v1)
  {
    goto LABEL_4;
  }

  v20 = v0[43];
  v21 = v0[40];
  v22 = v0[29];
  sub_1B8C237C8();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B8C293A0;
  v16(v23 + v39, *MEMORY[0x1E699C300], v21);
  v16(v23 + v39 + v37, *MEMORY[0x1E699C320], v21);
  v16(v23 + v39 + v38, *MEMORY[0x1E699C388], v21);
  v16(v23 + v39 + v17, *MEMORY[0x1E699C350], v21);
  v24 = sub_1B8B54E08(v20, v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v25 = (v19)(v20, v21);
  if (v24 || (MEMORY[0x1B8CCA870](v25) & 1) == 0)
  {
LABEL_4:
    v26 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod;
    swift_beginAccess();
    v5[v26] = 0;
  }

  v27 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod;
  swift_beginAccess();
  v28 = "ding.reportconcernAuth";
  v5[v27];
  if (v5[v27])
  {
    v29 = 0xD000000000000026;
  }

  else
  {
    v29 = 0xD000000000000028;
  }

  if (v5[v27])
  {
    v28 = "exclamationmark.bubble.fill";
  }

  v30 = &v5[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__onBoardingKitIdentifier];
  v31 = v28 | 0x8000000000000000;
  swift_beginAccess();
  v32 = v30[1];
  *v30 = v29;
  v30[1] = v31;

  v5[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__useInlineChoices] = 1;
  v5[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__showUserSwitcherLast] = 1;
  v33 = swift_task_alloc();
  v0[49] = v33;
  *v33 = v0;
  v33[1] = sub_1B8B555D0;
  v34 = v0[31];
  v35 = v0[32];

  return FBKSInteraction.writeAttachments(baseURL:)(v34);
}

uint64_t sub_1B8B555D0(uint64_t a1)
{
  v2 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B8B556D0, 0, 0);
}

uint64_t sub_1B8B556D0()
{
  v150 = v0;
  v1 = v0[50];
  if (*(v1 + 16))
  {
    v2 = v0[50];
    v3 = sub_1B8B5E458(0);
    if (v4)
    {
      v5 = v0[44];
      v6 = *(*(v0[50] + 56) + 16 * v3);
      swift_beginAccess();

      sub_1B8B58A7C(v7, &qword_1EBAA6658, &qword_1B8C29498, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);
    }

    if (*(v1 + 16))
    {
      v8 = sub_1B8B5E458(1u);
      if (v9)
      {
        v10 = v0[44];
        v11 = *(*(v0[50] + 56) + 16 * v8);
        swift_beginAccess();

        sub_1B8B58A7C(v12, &qword_1EBAA6658, &qword_1B8C29498, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);
      }

      v13 = *(v1 + 16);
      v14 = v0[50];
      if (v13)
      {
        v15 = v0[50];
        v16 = sub_1B8B5E458(2u);
        if (v17)
        {
          v18 = v0[44];
          v19 = *(*(v0[50] + 56) + 16 * v16);

          swift_beginAccess();
          sub_1B8B58A7C(v19, &qword_1EBAA6658, &qword_1B8C29498, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);
          goto LABEL_12;
        }

        v134 = v0[50];
      }
    }

    else
    {
      v20 = v0[50];
    }
  }

LABEL_12:
  v21 = v0[48];
  v142 = v0;
  v22 = v0[47];
  v147 = v0[46];
  v145 = v0[45];
  v23 = v0[44];
  v24 = v142[43];
  v25 = v142[42];
  v26 = v142[40];
  v27 = v142[30];
  v28 = v142[29];
  sub_1B8C237C8();
  v29 = sub_1B8BE36EC();
  v31 = v30;
  v22(v24, v26);
  MEMORY[0x1B8CC9EB0](0x209480E220, 0xA500000000000000);
  v32 = sub_1B8BE3E4C();
  MEMORY[0x1B8CC9EB0](v32);

  v149 = 0uLL;
  sub_1B8C0BEEC(&v149, v29, v31);

  sub_1B8C237C8();
  v145(v25, *MEMORY[0x1E699C378], v26);
  sub_1B8B5FB84(&unk_1EBAA8610, MEMORY[0x1E699C390]);
  LOBYTE(v29) = sub_1B8C250E8();
  v22(v25, v26);
  v22(v24, v26);
  v33 = v142;
  if ((v29 & 1) == 0)
  {
    v34 = v142[47];
    v35 = v142[48];
    v37 = v142[43];
    v36 = v142[44];
    v38 = v142[40];
    v39 = v142[29];
    v149 = xmmword_1B8C293B0;
    sub_1B8C237C8();
    v40 = sub_1B8BE429C();
    v42 = v41;
    v34(v37, v38);
    sub_1B8C0BEEC(&v149, v40, v42);
  }

  v43 = v142[29];
  v44 = sub_1B8C23778();
  if (v45)
  {
    v46 = v142[44];
    v149 = xmmword_1B8C293C0;
    sub_1B8C0BEEC(&v149, v44, v45);

    sub_1B8B5E4C4(v149, *(&v149 + 1));
  }

  v47 = v142[29];
  v48 = sub_1B8C23948();
  if (!v49)
  {
    if (qword_1EBAA5968 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

  v50 = v142[44];
  v149 = xmmword_1B8C293D0;
  sub_1B8C0BEEC(&v149, v48, v49);

  sub_1B8B5E4C4(v149, *(&v149 + 1));
  while (1)
  {
    v65 = v33[44];
    v67 = v33[29];
    v66 = v33[30];
    v149 = xmmword_1B8C293E0;
    v68 = sub_1B8BE49C0();
    sub_1B8C0BEEC(&v149, v68, v69);

    sub_1B8B5E4C4(v149, *(&v149 + 1));
    v70 = sub_1B8C238E8();
    if (!v70)
    {
      break;
    }

    v71 = v70;
    v72 = 0;
    v73 = v70 + 64;
    v74 = -1;
    v75 = -1 << *(v70 + 32);
    v76 = v33[34];
    if (-v75 < 64)
    {
      v74 = ~(-1 << -v75);
    }

    v77 = v74 & *(v70 + 64);
    v135 = (63 - v75) >> 6;
    v136 = v33[34];
    v146 = (v76 + 16);
    v139 = (v76 + 32);
    v78 = (v76 + 8);
    v148 = (v76 + 8);
    v137 = v70 + 64;
    v138 = v70;
    while (v77)
    {
      v141 = v72;
      v79 = v72;
LABEL_38:
      v82 = v33[37];
      v83 = v33[38];
      v84 = v33[33];
      v140 = (v77 - 1) & v77;
      v85 = __clz(__rbit64(v77)) | (v79 << 6);
      (*(v136 + 16))(v82, *(v71 + 48) + *(v136 + 72) * v85, v84);
      v86 = *(*(v71 + 56) + 8 * v85);
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65F0, &qword_1B8C29430);
      v88 = *(v87 + 48);
      (*(v136 + 32))(v83, v82, v84);
      *(v83 + v88) = v86;
      (*(*(v87 - 8) + 56))(v83, 0, 1, v87);

      v78 = v148;
      v73 = v137;
LABEL_39:
      v89 = v33[39];
      sub_1B8B3883C(v33[38], v89, &qword_1EBAA65E0, &qword_1B8C29420);
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65F0, &qword_1B8C29430);
      if ((*(*(v90 - 8) + 48))(v89, 1, v90) == 1)
      {

        goto LABEL_51;
      }

      v91 = v33[33];
      v92 = *(v33[39] + *(v90 + 48));
      (*v139)(v33[36]);
      v93 = *(v92 + 16);
      v71 = v138;
      if (v93)
      {
        v94 = (v92 + 40);
        do
        {
          v102 = *(v94 - 1);
          v101 = *v94;
          v103 = qword_1EBAA5968;

          if (v103 != -1)
          {
            swift_once();
          }

          v104 = v33[35];
          v105 = v33[36];
          v106 = v33[33];
          v107 = sub_1B8C23C38();
          __swift_project_value_buffer(v107, qword_1EBAB3A00);
          (*v146)(v104, v105, v106);

          v108 = sub_1B8C23C18();
          v109 = sub_1B8C25468();

          v110 = os_log_type_enabled(v108, v109);
          v111 = v33[35];
          v112 = v33[33];
          if (v110)
          {
            v144 = v93;
            v113 = swift_slowAlloc();
            v143 = swift_slowAlloc();
            *&v149 = v143;
            *v113 = 136446467;
            sub_1B8B5FB84(&qword_1EBAA65F8, MEMORY[0x1E699C658]);
            v114 = v102;
            v115 = sub_1B8C259E8();
            v117 = v116;
            v118 = v112;
            v96 = *v148;
            (*v148)(v111, v118);
            v119 = v115;
            v102 = v114;
            v120 = sub_1B8B5DD48(v119, v117, &v149);
            v78 = v148;

            *(v113 + 4) = v120;
            *(v113 + 12) = 2081;
            *(v113 + 14) = sub_1B8B5DD48(v114, v101, &v149);
            _os_log_impl(&dword_1B8B22000, v108, v109, "Pre-filling question-answer: %{public}s -> %{private}s", v113, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1B8CCB0E0](v143, -1, -1);
            v121 = v113;
            v93 = v144;
            v33 = v142;
            MEMORY[0x1B8CCB0E0](v121, -1, -1);
          }

          else
          {

            v95 = v112;
            v96 = *v78;
            v97 = (*v78)(v111, v95);
          }

          v98 = v33[44];
          v99 = v33[36];
          *&v149 = MEMORY[0x1B8CC86C0](v97);
          *(&v149 + 1) = v100;
          sub_1B8C0BEEC(&v149, v102, v101);

          sub_1B8B5E4C4(v149, *(&v149 + 1));
          v94 += 2;
          --v93;
        }

        while (v93);

        v73 = v137;
        v71 = v138;
        v96(v33[36], v33[33]);
      }

      else
      {

        (*v78)(v33[36], v33[33]);
      }

      v77 = v140;
      v72 = v141;
    }

    if (v135 <= v72 + 1)
    {
      v80 = v72 + 1;
    }

    else
    {
      v80 = v135;
    }

    v81 = v80 - 1;
    while (1)
    {
      v79 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      if (v79 >= v135)
      {
        v122 = v33[38];
        v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65F0, &qword_1B8C29430);
        (*(*(v123 - 8) + 56))(v122, 1, 1, v123);
        v140 = 0;
        v141 = v81;
        goto LABEL_39;
      }

      v77 = *(v73 + 8 * v79);
      ++v72;
      if (v77)
      {
        v141 = v79;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_56:
    swift_once();
LABEL_19:
    v51 = v33[29];
    v52 = sub_1B8C23C38();
    __swift_project_value_buffer(v52, qword_1EBAB3A00);
    v53 = v51;
    v54 = sub_1B8C23C18();
    v55 = sub_1B8C25478();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = v33[29];
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v149 = v58;
      *v57 = 136315138;
      v59 = v56;
      v60 = [v59 description];
      v61 = sub_1B8C25128();
      v63 = v62;

      v64 = sub_1B8B5DD48(v61, v63, &v149);

      *(v57 + 4) = v64;
      _os_log_impl(&dword_1B8B22000, v54, v55, "No bundle identifier found in interaction [%s]", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x1B8CCB0E0](v58, -1, -1);
      MEMORY[0x1B8CCB0E0](v57, -1, -1);
    }
  }

LABEL_51:
  v125 = v33[42];
  v124 = v33[43];
  v126 = v33[38];
  v127 = v33[39];
  v129 = v33[36];
  v128 = v33[37];
  v130 = v33[35];

  v131 = v33[1];
  v132 = v33[44];

  return v131(v132);
}