uint64_t sub_2587C00B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v148 = a2;
  sub_2587A804C(0, &qword_27F95D2E8, &qword_27F95D2F0, sub_2587A82BC, sub_2587A83D8);
  v147 = v3;
  v146 = *(v3 - 8);
  v4 = *(v146 + 64);
  MEMORY[0x28223BE20](v3);
  v143 = &v122 - v5;
  sub_2587A8454(0, &qword_27F95D318, type metadata accessor for MedicalIDDeleteView);
  v7 = v6;
  v140 = *(v6 - 8);
  v8 = *(v140 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v122 - v9);
  sub_2587A83D8();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v142 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v141 = &v122 - v15;
  sub_2587A82F0();
  v138 = v16;
  v137 = *(v16 - 8);
  v17 = *(v137 + 64);
  MEMORY[0x28223BE20](v16);
  v136 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587A82BC(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v139 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v122 - v23;
  sub_2587A81B0();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v122 - v30;
  sub_2587A7EB4();
  v33 = v32;
  v34 = *(v32 - 8);
  v35 = v34[8];
  v36 = MEMORY[0x28223BE20](v32);
  v38 = &v122 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v144 = &v122 - v39;
  sub_2587C0ECC(&v122 - v39);
  v40 = type metadata accessor for MedicalIDDataContentView();
  v41 = *(v40 + 24);
  v149 = a1;
  v42 = a1 + v41;
  v43 = *v42;
  if (*v42)
  {
    v44 = v40;
    v145 = v38;
    if ([v43 isLockScreen])
    {
      v45 = 1;
LABEL_20:
      (*(v146 + 56))(v31, v45, 1, v147);
      v114 = v34[2];
      v115 = v145;
      v116 = v144;
      v114(v145, v144, v33);
      sub_2587C3CA8(v31, v29, sub_2587A81B0);
      v117 = v148;
      v114(v148, v115, v33);
      sub_2587A8240(0, &qword_27F95D298, sub_2587A7EB4, sub_2587A81B0);
      sub_2587C3CA8(v29, &v117[*(v118 + 48)], sub_2587A81B0);
      sub_2587C50B0(v31, sub_2587A81B0);
      v119 = v34[1];
      v119(v116, v33);
      sub_2587C50B0(v29, sub_2587A81B0);
      return (v119)(v115, v33);
    }

    v132 = v43;
    v135 = v34;
    v46 = *(v44 + 20);
    v131 = *(v149 + v46);
    v47 = [v131 dateSaved];
    sub_2587AFFC8(0);
    v49 = *(*(v48 - 8) + 64);
    MEMORY[0x28223BE20](v48 - 8);
    v130 = v50;
    v51 = &v122 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    v134 = v31;
    if (v47)
    {
      sub_2588BB988();

      v52 = 0;
    }

    else
    {
      v52 = 1;
    }

    v53 = sub_2588BB9B8();
    v54 = *(v53 - 8);
    v55 = *(v54 + 56);
    v129 = v53;
    v128 = v55;
    v127 = v54 + 56;
    (v55)(v51, v52, 1);
    v133 = v46;
    v56 = sub_2587BC664(v51);
    v58 = v57;
    sub_2587C50B0(v51, sub_2587AFFC8);
    if (!v58)
    {
      (*(v137 + 56))(v24, 1, 1, v138);
      goto LABEL_11;
    }

    v122 = v10;
    v123 = v24;
    v124 = v7;
    v125 = v33;
    v126 = v29;
    *&v152 = v56;
    *(&v152 + 1) = v58;
    sub_25878F648();

    v59 = sub_2588BCDF8();
    v61 = v60;
    v63 = v62;
    sub_2588BCBF8();
    v64 = sub_2588BCDD8();
    v66 = v65;
    v68 = v67;

    sub_2587B1CF8(v59, v61, v63 & 1);

    LODWORD(v152) = sub_2588BC8D8();
    v69 = sub_2588BCD98();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    sub_2587B1CF8(v64, v66, v68 & 1);

    v76 = sub_2588BCBE8();
    sub_2588BBE38();
    v157 = v73 & 1;
    v156 = 0;
    *&v152 = v69;
    *(&v152 + 1) = v71;
    LOBYTE(v153) = v73 & 1;
    *(&v153 + 1) = v75;
    LOBYTE(v154) = v76;
    *(&v154 + 1) = v77;
    *v155 = v78;
    *&v155[8] = v79;
    *&v155[16] = v80;
    v155[24] = 0;
    v81 = sub_2588BD9A8();
    v82 = HKUIJoinStringsForAutomationIdentifier();

    if (v82)
    {

      sub_2588BD8A8();

      sub_2587A8384(0, &qword_27F95D308, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
      sub_2587C4C84();
      v83 = v136;
      sub_2588BCFB8();

      v150[2] = v154;
      *v151 = *v155;
      *&v151[9] = *&v155[9];
      v150[1] = v153;
      v150[0] = v152;
      sub_2587B1E08(v150);
      v84 = v83;
      v24 = v123;
      sub_2587C51BC(v84, v123, sub_2587A82F0);
      (*(v137 + 56))(v24, 0, 1, v138);
      v29 = v126;
      v33 = v125;
      v7 = v124;
      v10 = v122;
LABEL_11:
      v85 = *(*(*v149 + 32) + 16);
      v86 = v132;
      v87 = v85;
      LOBYTE(v85) = MedicalIDDataViewModel.isDeletionVisible(with:healthStore:)(v86, v87);

      v34 = v135;
      if (v85)
      {
        v88 = [v131 dateSaved];
        v89 = MEMORY[0x28223BE20](v88);
        v91 = &v122 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
        if (v89)
        {
          v92 = v89;
          sub_2588BB988();

          v93 = 0;
        }

        else
        {
          v93 = 1;
        }

        v128(v91, v93, 1, v129);
        sub_2587BC664(v91);
        v97 = v96;
        sub_2587C50B0(v91, sub_2587AFFC8);
        if (v97)
        {
        }

        *v10 = swift_getKeyPath();
        sub_2587C4E34(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
        swift_storeEnumTagMultiPayload();
        v98 = type metadata accessor for MedicalIDDeleteView();
        v99 = v10 + *(v98 + 20);
        type metadata accessor for MedicalIDDataManager();
        sub_2587C5068(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
        *v99 = sub_2588BBF58();
        v99[8] = v100 & 1;
        v101 = v10 + *(v98 + 24);
        LOBYTE(v150[0]) = 0;
        sub_2588BD2B8();
        v102 = *(&v152 + 1);
        *v101 = v152;
        *(v101 + 1) = v102;
        LOBYTE(v101) = sub_2588BCB98();
        sub_2588BBE38();
        v103 = v10 + *(v7 + 36);
        *v103 = v101;
        *(v103 + 1) = v104;
        *(v103 + 2) = v105;
        *(v103 + 3) = v106;
        *(v103 + 4) = v107;
        v103[40] = 0;
        v95 = v141;
        sub_2587C4BFC(v10, v141);
        v94 = 0;
      }

      else
      {
        v94 = 1;
        v95 = v141;
      }

      (*(v140 + 56))(v95, v94, 1, v7);
      v108 = v24;
      v109 = v24;
      v110 = v139;
      sub_2587C3CA8(v108, v139, sub_2587A82BC);
      v111 = v142;
      sub_2587C3CA8(v95, v142, sub_2587A83D8);
      v112 = v143;
      sub_2587C3CA8(v110, v143, sub_2587A82BC);
      sub_2587A8240(0, &qword_27F95D2F0, sub_2587A82BC, sub_2587A83D8);
      sub_2587C3CA8(v111, v112 + *(v113 + 48), sub_2587A83D8);
      sub_2587C50B0(v95, sub_2587A83D8);
      sub_2587C50B0(v109, sub_2587A82BC);
      sub_2587C50B0(v111, sub_2587A83D8);
      sub_2587C50B0(v110, sub_2587A82BC);
      v31 = v134;
      sub_2587C4B60(v112, v134);
      v45 = 0;
      goto LABEL_20;
    }

    __break(1u);
  }

  v121 = *(v42 + 8);
  sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
  sub_2587BC2A8();
  result = sub_2588BC348();
  __break(1u);
  return result;
}

uint64_t sub_2587C0ECC@<X0>(uint64_t a1@<X8>)
{
  v95 = a1;
  v101 = type metadata accessor for MedicalIDData();
  v2 = *(v101 - 1);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v101);
  v97 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587B63B8();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v96 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v100 = &v81 - v9;
  v10 = _s15SectionGridItemVMa();
  v103 = *(v10 - 1);
  v11 = *(v103 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v104 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v81 - v14;
  v106 = v1;
  result = sub_2587BC44C(sub_2587C4DD4, v105, &unk_2869BCD98, _s15SectionGridItemVMa, sub_2587F0664, sub_2587C4DF4);
  v17 = result;
  v18 = MEMORY[0x277D84F90];
  v102 = *(result + 16);
  if (!v102)
  {
LABEL_51:

    v108 = v18;
    swift_getKeyPath();
    sub_2587A7FB4(0);
    sub_2587C25CC(0);
    sub_2587C5068(&qword_27F95D2D0, sub_2587A7FB4);
    sub_2587A815C();
    sub_2587C5068(&qword_27F95DB88, sub_2587C25CC);
    return sub_2588BD4B8();
  }

  v19 = 0;
  v94 = (v2 + 48);
  v93 = xmmword_2588C0670;
  v99 = v10;
  while (v19 < *(v17 + 16))
  {
    v20 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v21 = *(v103 + 72);
    sub_2587C3CA8(v17 + v20 + v21 * v19, v15, _s15SectionGridItemVMa);
    if (![*&v15[v10[7]] isLockScreen])
    {
      goto LABEL_46;
    }

    v22 = v15[v10[6]];
    if (v22 > 3)
    {
      if (v15[v10[6]] <= 5u)
      {
        if (v22 == 4)
        {
          v32 = *(*&v15[v10[5]] + 56);
          swift_getKeyPath();
          v107 = v32;
          sub_2587C5068(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);

          sub_2588BBB98();

          v33 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
          swift_beginAccess();
          v34 = v32 + v33;
          v35 = v100;
          sub_2587C3CA8(v34, v100, sub_2587B63B8);

          v36 = v96;
          sub_2587C3CA8(v35, v96, sub_2587B63B8);
          if ((*v94)(v36, 1, v101) == 1)
          {
            sub_2587C50B0(v36, sub_2587B63B8);
            sub_2587AFFC8(0);
            v92 = &v81;
            v38 = *(*(v37 - 8) + 64);
            MEMORY[0x28223BE20](v37 - 8);
            v90 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
            v39 = (&v81 - v90);
            v89 = &v81 - v90;
            v40 = sub_2588BB9B8();
            v41 = *(*(v40 - 8) + 56);
            v98 = v40;
            v42 = (v41)(v39, 1, 1);
            v86 = v41;
            v91 = &v81;
            MEMORY[0x28223BE20](v42);
            v88 = &v81 - v90;
            v41();
            sub_2587C4E0C(0);
            v90 = &v81;
            v44 = *(*(v43 - 8) + 64);
            MEMORY[0x28223BE20](v43 - 8);
            v46 = &v81 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
            v87 = v46;
            v82 = sub_2588BB818();
            v47 = *(v82 - 8);
            v81 = *(v47 + 56);
            v83 = v47 + 56;
            v81(v46, 1, 1, v82);
            v48 = v97;
            v49 = v98;
            v50 = v86;
            (v86)(v97 + v101[21], 1, 1, v98);
            v85 = v101[13];
            (v50)(v48 + v85, 1, 1, v49);
            v84 = v101[14];
            (v50)(v48 + v84, 1, 1, v98);
            v51 = (v48 + v101[15]);
            v52 = v48 + v101[18];
            *v52 = v93;
            v86 = v101[19];
            v81(v86 + v48, 1, 1, v82);
            v98 = v101[20];
            *v48 = 0;
            *(v48 + 8) = 0;
            *(v48 + 16) = MEMORY[0x277D84F90];
            *(v48 + 24) = 0u;
            *(v48 + 40) = 0u;
            *(v48 + 56) = 0u;
            *(v48 + 72) = 0u;
            *(v48 + 88) = 0u;
            *(v48 + 104) = 0;
            sub_2587C4EAC(v89, v48 + v85, sub_2587AFFC8);
            sub_2587C4EAC(v88, v48 + v84, sub_2587AFFC8);
            *v51 = 0;
            v51[1] = 0;
            v53 = v101;
            *(v48 + v101[16]) = 0;
            *(v48 + v53[17]) = 0;
            sub_2587C4E98(*v52, *(v52 + 8));
            *v52 = v93;
            sub_2587C4EAC(v87, v86 + v48, sub_2587C4E0C);
            *(v48 + v98) = 0;
          }

          else
          {
            v76 = v36;
            v48 = v97;
            sub_2587C51BC(v76, v97, type metadata accessor for MedicalIDData);
          }

          sub_2587C50B0(v100, sub_2587B63B8);
          v77 = *(*(v48 + 16) + 16);
          sub_2587C50B0(v48, type metadata accessor for MedicalIDData);
          v10 = v99;
          if (v77)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v69 = &v15[*(type metadata accessor for MedicalIDDataViewModel() + 36)];
          v70 = &v69[*(type metadata accessor for MedicalIDBiometricsViewModel() + 20)];
          if (*(v70 + 12) || *(v70 + 13) || *(v70 + 11))
          {
            goto LABEL_46;
          }
        }

        goto LABEL_3;
      }

      if (v22 == 6)
      {
        v54 = [*&v15[*(type metadata accessor for MedicalIDDataViewModel() + 44)] medicalConditions];
        if (!v54)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v54 = [*&v15[*(type metadata accessor for MedicalIDDataViewModel() + 44)] medicalNotes];
        if (!v54)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      if (v15[v10[6]] <= 1u)
      {
        if (v15[v10[6]])
        {
          v55 = &v15[*(type metadata accessor for MedicalIDDataViewModel() + 48)];
          v56 = &v55[*(type metadata accessor for MedicalIDPregnancyViewModel() + 20)];
          v57 = v101[13];
          sub_2587AFFC8(0);
          v98 = &v81;
          v59 = *(*(v58 - 8) + 64);
          MEMORY[0x28223BE20](v58 - 8);
          v91 = ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
          v60 = (&v81 - v91);
          v92 = v56;
          sub_2587C3CA8(&v56[v57], &v81 - v91, sub_2587AFFC8);
          v61 = sub_2588BB9B8();
          v62 = *(v61 - 8);
          v90 = *(v62 + 48);
          v89 = v62 + 48;
          LODWORD(v56) = (v90)(v60, 1, v61);
          v63 = v60;
          v10 = v99;
          v64 = sub_2587C50B0(v63, sub_2587AFFC8);
          if (v56 != 1)
          {
            v65 = v101[14];
            MEMORY[0x28223BE20](v64);
            v66 = (&v81 - v91);
            sub_2587C3CA8(&v92[v67], &v81 - v91, sub_2587AFFC8);
            v68 = (v90)(v66, 1, v61);
            sub_2587C50B0(v66, sub_2587AFFC8);
            if (v68 != 1)
            {
              goto LABEL_46;
            }
          }
        }

        else
        {
          v23 = &v15[*(type metadata accessor for MedicalIDDataViewModel() + 40)];
          v24 = *(v23 + 1);
          if (v24)
          {
            if ((v24 & 0x2000000000000000) != 0 ? HIBYTE(v24) & 0xF : *v23 & 0xFFFFFFFFFFFFLL)
            {
              goto LABEL_46;
            }
          }

          if (*&v23[v101[18] + 8] >> 60 != 15)
          {
            goto LABEL_46;
          }

          v26 = v101[19];
          sub_2587C4E0C(0);
          v28 = *(*(v27 - 8) + 64);
          MEMORY[0x28223BE20](v27 - 8);
          v30 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_2587C3CA8(&v23[v26], v30, sub_2587C4E0C);
          v31 = sub_2588BB818();
          LODWORD(v26) = (*(*(v31 - 8) + 48))(v30, 1, v31);
          sub_2587C50B0(v30, sub_2587C4E0C);
          v10 = v99;
          if (v26 != 1 || *&v23[v101[15] + 8] || *&v23[v101[20]])
          {
            goto LABEL_46;
          }
        }

        goto LABEL_3;
      }

      if (v22 == 2)
      {
        v54 = [*&v15[*(type metadata accessor for MedicalIDDataViewModel() + 44)] medicationInfo];
        if (!v54)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v54 = [*&v15[*(type metadata accessor for MedicalIDDataViewModel() + 44)] allergyInfo];
        if (!v54)
        {
          goto LABEL_3;
        }
      }
    }

    v71 = v54;
    v72 = sub_2588BD8A8();
    v74 = v73;

    v75 = HIBYTE(v74) & 0xF;
    if ((v74 & 0x2000000000000000) == 0)
    {
      v75 = v72 & 0xFFFFFFFFFFFFLL;
    }

    if (v75)
    {
LABEL_46:
      sub_2587C4DF4(v15, v104);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v108 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2587F0664(0, *(v18 + 16) + 1, 1);
        v18 = v108;
      }

      v80 = *(v18 + 16);
      v79 = *(v18 + 24);
      if (v80 >= v79 >> 1)
      {
        sub_2587F0664(v79 > 1, v80 + 1, 1);
        v18 = v108;
      }

      *(v18 + 16) = v80 + 1;
      result = sub_2587C4DF4(v104, v18 + v20 + v80 * v21);
      goto LABEL_4;
    }

LABEL_3:
    result = sub_2587C50B0(v15, _s15SectionGridItemVMa);
LABEL_4:
    if (v102 == ++v19)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2587C1CF0@<X0>(void *a1@<X8>)
{
  result = sub_2588BC058();
  *a1 = v3;
  return result;
}

uint64_t sub_2587C1D1C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for MedicalIDDataContentView() + 52));
  v5 = *v3;
  v6 = v3[1];
  sub_2587BC38C(0, &qword_27F95DB10, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
  return sub_2588BD2D8();
}

uint64_t sub_2587C1DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() systemGroupedBackgroundColor];
  v5 = sub_2588BD148();
  v6 = (a1 + *(type metadata accessor for MedicalIDDataContentView() + 52));
  v22 = *v6;
  v23 = v6[1];
  sub_2587BC38C(0, &qword_27F95DB10, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  LOBYTE(a1) = sub_2588BCB98();
  sub_2588BBE38();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_2588BCB78();
  result = sub_2588BBE38();
  *a2 = v5;
  *(a2 + 8) = xmmword_2588C0680;
  *(a2 + 24) = 0;
  *(a2 + 32) = v21;
  *(a2 + 40) = 256;
  *(a2 + 48) = a1;
  *(a2 + 56) = v8;
  *(a2 + 64) = v10;
  *(a2 + 72) = v12;
  *(a2 + 80) = v14;
  *(a2 + 88) = 0;
  *(a2 + 96) = v15;
  *(a2 + 104) = v17;
  *(a2 + 112) = v18;
  *(a2 + 120) = v19;
  *(a2 + 128) = v20;
  *(a2 + 136) = 0;
  return result;
}

uint64_t sub_2587C1EFC()
{
  sub_2588BD698();
  sub_2587A815C();
  return sub_2588BC238();
}

uint64_t sub_2587C1F68@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MedicalIDDataViewModel();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *a1;
  v11 = *a2;
  v12 = type metadata accessor for MedicalIDDataContentView();
  sub_2587C3CA8(a2 + v12[5], v9, type metadata accessor for MedicalIDDataViewModel);
  v13 = a2 + v12[6];
  v14 = *v13;
  if (*v13)
  {
    v15 = a2 + v12[12];
    v16 = *v15;
    v17 = *(v15 + 1);
    v26[8] = v16;
    v27 = v17;
    sub_2587BC310();

    v18 = v14;
    sub_2588BD2E8();
    v19 = v28;
    v20 = v29;
    v21 = v30;
    v22 = _s15SectionGridItemVMa();
    *(a3 + v22[5]) = v11;
    result = sub_2587C51BC(v9, a3, type metadata accessor for MedicalIDDataViewModel);
    *(a3 + v22[6]) = v10;
    *(a3 + v22[7]) = v18;
    v24 = a3 + v22[8];
    *v24 = v19;
    *(v24 + 8) = v20;
    *(v24 + 16) = v21;
  }

  else
  {
    v25 = *(v13 + 1);
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587BC2A8();

    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

uint64_t sub_2587C2134@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a1;
  v39 = a2;
  v38 = sub_2588BD4A8();
  v33 = *(v38 - 8);
  v2 = v33;
  v3 = *(v33 + 64);
  v4 = MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v8 = sub_2588BC978();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587A80A8();
  v14 = v13;
  v35 = *(v13 - 8);
  v15 = v35;
  v16 = *(v35 + 64);
  v17 = MEMORY[0x28223BE20](v13);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v32 - v20;
  sub_2588BC958();
  _s15SectionGridItemVMa();
  sub_2587C5068(&qword_27F95D2C8, _s15SectionGridItemVMa);
  sub_2588BCF88();
  (*(v9 + 8))(v12, v8);
  v32 = v7;
  sub_2588BD498();
  v22 = *(v15 + 16);
  v34 = v19;
  v22(v19, v21, v14);
  v23 = *(v2 + 16);
  v24 = v37;
  v25 = v7;
  v26 = v38;
  v23(v37, v25, v38);
  v27 = v39;
  v22(v39, v19, v14);
  sub_2587A8240(0, &qword_27F95D2B8, sub_2587A80A8, MEMORY[0x277CDF088]);
  v23(&v27[*(v28 + 48)], v24, v26);
  v29 = *(v33 + 8);
  v29(v32, v26);
  v30 = *(v35 + 8);
  v30(v21, v14);
  v29(v24, v26);
  return (v30)(v34, v14);
}

void sub_2587C24E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2587A8384(255, &qword_27F95D270, MEMORY[0x277CE0F78], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    v7 = v6;
    sub_2587C257C(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2587C2610(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2587C267C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2587A7460(0);
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = *(type metadata accessor for MedicalIDDataContentView() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_2587BE298(a1, v2 + v6, v9, a2);
}

void sub_2587C2760()
{
  if (!qword_27F95DB38)
  {
    sub_2587A7460(255);
    sub_2587C27E4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95DB38);
    }
  }
}

unint64_t sub_2587C27E4()
{
  result = qword_27F95DB40;
  if (!qword_27F95DB40)
  {
    sub_2587A7460(255);
    sub_2587C2894();
    sub_2587C5068(&qword_27F95DB60, type metadata accessor for MedicalIDNavigationBarViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DB40);
  }

  return result;
}

unint64_t sub_2587C2894()
{
  result = qword_27F95DB48;
  if (!qword_27F95DB48)
  {
    sub_2587A74A8(255);
    sub_2587C5068(&qword_27F95DB50, sub_2587A74F0);
    sub_2587C5068(&qword_27F95DB58, sub_2587A792C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DB48);
  }

  return result;
}

uint64_t sub_2587C2974()
{
  v2 = *(type metadata accessor for MedicalIDDataContentView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_2588BC248() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_2587AEAC8;

  return sub_2587BEB2C(v7, v8, v0 + v3, v0 + v6);
}

_BYTE *sub_2587C2AB4(_BYTE *a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for MedicalIDDataContentView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2588BC248() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_2587BF110(a1, a2, v2 + v6);
}

unint64_t sub_2587C2B98()
{
  result = qword_27F95DB68;
  if (!qword_27F95DB68)
  {
    sub_2587BC38C(255, &qword_27F95DB08, &type metadata for MedicalIDDisplaySection, MEMORY[0x277D83D88]);
    sub_2587B9684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DB68);
  }

  return result;
}

void sub_2587C2C34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_2587C2CB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2587C1EFC();
}

uint64_t sub_2587C2CD8(uint64_t a1)
{
  v2 = sub_2588BBF18();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2588BC3A8();
}

uint64_t objectdestroy_13Tm()
{
  v1 = type metadata accessor for MedicalIDDataContentView();
  v106 = *(*(v1 - 1) + 80);
  v104 = *(*(v1 - 1) + 64);
  v2 = sub_2588BC248();
  v108 = *(v2 - 8);
  v109 = v2;
  v103 = *(v108 + 80);
  v107 = *(v108 + 64);
  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  v111 = v0;
  v105 = (v106 + 32) & ~v106;
  v4 = (v0 + v105);
  v5 = *v4;

  v110 = v1;
  v102 = v4;
  v6 = &v4[v1[5]];

  v7 = type metadata accessor for MedicalIDDataViewModel();
  v8 = v6 + v7[5];
  v9 = *(v8 + 1);

  v10 = *(v8 + 2);

  v11 = *(v8 + 4);

  v12 = *(v8 + 6);

  v13 = *(v8 + 8);

  v14 = *(v8 + 10);

  v15 = type metadata accessor for MedicalIDData();
  v16 = v15[13];
  v17 = sub_2588BB9B8();
  v119 = *(v17 - 8);
  v18 = *(v119 + 48);
  if (!v18(&v8[v16], 1, v17))
  {
    (*(v119 + 8))(&v8[v16], v17);
  }

  v19 = v15[14];
  if (!v18(&v8[v19], 1, v17))
  {
    (*(v119 + 8))(&v8[v19], v17);
  }

  v20 = *&v8[v15[15] + 8];

  v21 = &v8[v15[18]];
  v22 = v21[1];
  if (v22 >> 60 != 15)
  {
    sub_2587C2610(*v21, v22);
  }

  v23 = v15[19];
  v24 = sub_2588BB818();
  v112 = *(v24 - 8);
  v115 = *(v112 + 48);
  if (!v115(&v8[v23], 1, v24))
  {
    (*(v112 + 8))(&v8[v23], v24);
  }

  v25 = v15[21];
  if (!v18(&v8[v25], 1, v17))
  {
    (*(v119 + 8))(&v8[v25], v17);
  }

  v26 = v7[6];
  v27 = sub_2588BBB48();
  v113 = *(*(v27 - 8) + 8);
  v114 = v27;
  v113(v6 + v26);

  v28 = v7[8];
  v29 = sub_2588BBAC8();
  v118 = *(*(v29 - 8) + 8);
  v118(v6 + v28, v29);
  v116 = v7;
  v117 = v6;
  v30 = v6 + v7[9];
  v31 = *(v30 + 1);

  v32 = type metadata accessor for MedicalIDBiometricsViewModel();
  v33 = &v30[v32[5]];
  v34 = *(v33 + 1);

  v35 = *(v33 + 2);

  v36 = *(v33 + 4);

  v37 = *(v33 + 6);

  v38 = *(v33 + 8);

  v39 = *(v33 + 10);

  v40 = v15[13];
  if (!v18(&v33[v40], 1, v17))
  {
    (*(v119 + 8))(&v33[v40], v17);
  }

  v41 = v15[14];
  if (!v18(&v33[v41], 1, v17))
  {
    (*(v119 + 8))(&v33[v41], v17);
  }

  v42 = *&v33[v15[15] + 8];

  v43 = &v33[v15[18]];
  v44 = v43[1];
  if (v44 >> 60 != 15)
  {
    sub_2587C2610(*v43, v44);
  }

  v45 = v15[19];
  if (!v115(&v33[v45], 1, v24))
  {
    (*(v112 + 8))(&v33[v45], v24);
  }

  v46 = v15[21];
  if (!v18(&v33[v46], 1, v17))
  {
    (*(v119 + 8))(&v33[v46], v17);
  }

  v118(&v30[v32[6]], v29);
  v47 = &v30[v32[7]];
  v118(v47, v29);

  v48 = &v30[v32[8]];
  v118(v48, v29);
  v49 = type metadata accessor for MedicalIDWeightFormatter();

  v50 = v117 + v116[10];
  v51 = *(v50 + 1);

  v52 = *(v50 + 2);

  v53 = *(v50 + 4);

  v54 = *(v50 + 6);

  v55 = *(v50 + 8);

  v56 = *(v50 + 10);

  v57 = v15[13];
  if (!v18(&v50[v57], 1, v17))
  {
    (*(v119 + 8))(&v50[v57], v17);
  }

  v58 = v15[14];
  if (!v18(&v50[v58], 1, v17))
  {
    (*(v119 + 8))(&v50[v58], v17);
  }

  v59 = *&v50[v15[15] + 8];

  v60 = &v50[v15[18]];
  v61 = v60[1];
  if (v61 >> 60 != 15)
  {
    sub_2587C2610(*v60, v61);
  }

  v62 = v15[19];
  if (!v115(&v50[v62], 1, v24))
  {
    (*(v112 + 8))(&v50[v62], v24);
  }

  v63 = v15[21];
  if (!v18(&v50[v63], 1, v17))
  {
    (*(v119 + 8))(&v50[v63], v17);
  }

  v64 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  (v113)(&v50[v64[5]], v114);
  v118(&v50[v64[6]], v29);

  v65 = *&v50[v64[9] + 8];

  v66 = (v117 + v116[11]);

  v67 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  (v113)(v66 + *(v67 + 20), v114);
  v118(v66 + *(v67 + 24), v29);
  v68 = v117 + v116[12];
  v69 = *(v68 + 1);

  v70 = type metadata accessor for MedicalIDPregnancyViewModel();
  v71 = &v68[v70[5]];
  v72 = *(v71 + 1);

  v73 = *(v71 + 2);

  v74 = *(v71 + 4);

  v75 = *(v71 + 6);

  v76 = *(v71 + 8);

  v77 = *(v71 + 10);

  v78 = v15[13];
  if (!v18(&v71[v78], 1, v17))
  {
    (*(v119 + 8))(&v71[v78], v17);
  }

  v79 = v15[14];
  if (!v18(&v71[v79], 1, v17))
  {
    (*(v119 + 8))(&v71[v79], v17);
  }

  v80 = *&v71[v15[15] + 8];

  v81 = &v71[v15[18]];
  v82 = v81[1];
  if (v82 >> 60 != 15)
  {
    sub_2587C2610(*v81, v82);
  }

  v83 = v15[19];
  if (!v115(&v71[v83], 1, v24))
  {
    (*(v112 + 8))(&v71[v83], v24);
  }

  v84 = v15[21];
  if (!v18(&v71[v84], 1, v17))
  {
    (*(v119 + 8))(&v71[v84], v17);
  }

  (v113)(&v68[v70[6]], v114);
  v118(&v68[v70[7]], v29);
  v85 = *&v68[v70[8]];

  v86 = v70[9];
  if (!v18(&v68[v86], 1, v17))
  {
    (*(v119 + 8))(&v68[v86], v17);
  }

  v87 = v1[7];
  sub_2587C4E34(0, &qword_27F95DB18, MEMORY[0x28220C230], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (v113)(&v102[v87], v114);
  }

  else
  {
    v88 = *&v102[v87];
  }

  v89 = v110[8];
  sub_2587C4E34(0, &qword_27F95DB20, MEMORY[0x28220C1A0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v118(&v102[v89], v29);
  }

  else
  {
    v90 = *&v102[v89];
  }

  v91 = v110[9];
  sub_2587C4E34(0, &qword_27F95DB28, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v92 = sub_2588BBF18();
    (*(*(v92 - 8) + 8))(&v102[v91], v92);
  }

  else
  {
    v93 = *&v102[v91];
  }

  v94 = &v102[v110[10]];
  v95 = *v94;

  v96 = v94[1];

  v97 = *&v102[v110[11] + 8];

  v98 = *&v102[v110[12] + 8];

  v99 = *&v102[v110[13] + 8];

  v100 = *&v102[v110[14] + 8];

  (*(v108 + 8))(v111 + ((v105 + v104 + v103) & ~v103), v109);

  return swift_deallocObject();
}

uint64_t sub_2587C3A70(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MedicalIDDataContentView() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2588BC248() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2587AE310;

  return sub_2587BF248(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_2587C3BC8()
{
  v1 = *(type metadata accessor for MedicalIDDataContentView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2587BDFD0(v2);
}

uint64_t sub_2587C3C28@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MedicalIDDataContentView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_2587BE054(a1, v6, a2);
}

uint64_t sub_2587C3CA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587C3D10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587C3D78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for MedicalIDDataContentView();
  v102 = *(*(v1 - 8) + 80);
  v100 = *(*(v1 - 8) + 64);
  v2 = (v0 + ((v102 + 16) & ~v102));
  v3 = *v2;

  v101 = v1;
  v99 = v2;
  v4 = &v2[*(v1 + 20)];

  v109 = type metadata accessor for MedicalIDDataViewModel();
  v5 = v4 + v109[5];
  v6 = *(v5 + 1);

  v7 = *(v5 + 2);

  v8 = *(v5 + 4);

  v9 = *(v5 + 6);

  v10 = *(v5 + 8);

  v11 = *(v5 + 10);

  v12 = type metadata accessor for MedicalIDData();
  v13 = v12[13];
  v14 = sub_2588BB9B8();
  v110 = *(v14 - 8);
  v15 = *(v110 + 48);
  if (!v15(&v5[v13], 1, v14))
  {
    (*(v110 + 8))(&v5[v13], v14);
  }

  v16 = v12[14];
  if (!v15(&v5[v16], 1, v14))
  {
    (*(v110 + 8))(&v5[v16], v14);
  }

  v17 = *&v5[v12[15] + 8];

  v18 = &v5[v12[18]];
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_2587C2610(*v18, v19);
  }

  v20 = v12[19];
  v21 = sub_2588BB818();
  v103 = *(v21 - 8);
  v107 = *(v103 + 48);
  if (!v107(&v5[v20], 1, v21))
  {
    (*(v103 + 8))(&v5[v20], v21);
  }

  v22 = v12[21];
  if (!v15(&v5[v22], 1, v14))
  {
    (*(v110 + 8))(&v5[v22], v14);
  }

  v23 = v109[6];
  v24 = sub_2588BBB48();
  v105 = *(*(v24 - 8) + 8);
  v106 = v24;
  v105(v4 + v23);

  v25 = v109[8];
  v26 = sub_2588BBAC8();
  v108 = *(*(v26 - 8) + 8);
  v108(v4 + v25, v26);
  v104 = v4;
  v27 = v4 + v109[9];
  v28 = *(v27 + 1);

  v29 = type metadata accessor for MedicalIDBiometricsViewModel();
  v30 = &v27[v29[5]];
  v31 = *(v30 + 1);

  v32 = *(v30 + 2);

  v33 = *(v30 + 4);

  v34 = *(v30 + 6);

  v35 = *(v30 + 8);

  v36 = *(v30 + 10);

  v37 = v12[13];
  if (!v15(&v30[v37], 1, v14))
  {
    (*(v110 + 8))(&v30[v37], v14);
  }

  v38 = v12[14];
  if (!v15(&v30[v38], 1, v14))
  {
    (*(v110 + 8))(&v30[v38], v14);
  }

  v39 = *&v30[v12[15] + 8];

  v40 = &v30[v12[18]];
  v41 = v40[1];
  if (v41 >> 60 != 15)
  {
    sub_2587C2610(*v40, v41);
  }

  v42 = v12[19];
  if (!v107(&v30[v42], 1, v21))
  {
    (*(v103 + 8))(&v30[v42], v21);
  }

  v43 = v12[21];
  if (!v15(&v30[v43], 1, v14))
  {
    (*(v110 + 8))(&v30[v43], v14);
  }

  v108(&v27[v29[6]], v26);
  v44 = &v27[v29[7]];
  v108(v44, v26);

  v45 = &v27[v29[8]];
  v108(v45, v26);
  v46 = type metadata accessor for MedicalIDWeightFormatter();

  v47 = v104 + v109[10];
  v48 = *(v47 + 1);

  v49 = *(v47 + 2);

  v50 = *(v47 + 4);

  v51 = *(v47 + 6);

  v52 = *(v47 + 8);

  v53 = *(v47 + 10);

  v54 = v12[13];
  if (!v15(&v47[v54], 1, v14))
  {
    (*(v110 + 8))(&v47[v54], v14);
  }

  v55 = v12[14];
  if (!v15(&v47[v55], 1, v14))
  {
    (*(v110 + 8))(&v47[v55], v14);
  }

  v56 = *&v47[v12[15] + 8];

  v57 = &v47[v12[18]];
  v58 = v57[1];
  if (v58 >> 60 != 15)
  {
    sub_2587C2610(*v57, v58);
  }

  v59 = v12[19];
  if (!v107(&v47[v59], 1, v21))
  {
    (*(v103 + 8))(&v47[v59], v21);
  }

  v60 = v12[21];
  if (!v15(&v47[v60], 1, v14))
  {
    (*(v110 + 8))(&v47[v60], v14);
  }

  v61 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  (v105)(&v47[v61[5]], v106);
  v108(&v47[v61[6]], v26);

  v62 = *&v47[v61[9] + 8];

  v63 = (v104 + v109[11]);

  v64 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  (v105)(v63 + *(v64 + 20), v106);
  v108(v63 + *(v64 + 24), v26);
  v65 = v104 + v109[12];
  v66 = *(v65 + 1);

  v67 = type metadata accessor for MedicalIDPregnancyViewModel();
  v68 = &v65[v67[5]];
  v69 = *(v68 + 1);

  v70 = *(v68 + 2);

  v71 = *(v68 + 4);

  v72 = *(v68 + 6);

  v73 = *(v68 + 8);

  v74 = *(v68 + 10);

  v75 = v12[13];
  if (!v15(&v68[v75], 1, v14))
  {
    (*(v110 + 8))(&v68[v75], v14);
  }

  v76 = v12[14];
  if (!v15(&v68[v76], 1, v14))
  {
    (*(v110 + 8))(&v68[v76], v14);
  }

  v77 = *&v68[v12[15] + 8];

  v78 = &v68[v12[18]];
  v79 = v78[1];
  if (v79 >> 60 != 15)
  {
    sub_2587C2610(*v78, v79);
  }

  v80 = v12[19];
  if (!v107(&v68[v80], 1, v21))
  {
    (*(v103 + 8))(&v68[v80], v21);
  }

  v81 = v12[21];
  if (!v15(&v68[v81], 1, v14))
  {
    (*(v110 + 8))(&v68[v81], v14);
  }

  (v105)(&v65[v67[6]], v106);
  v108(&v65[v67[7]], v26);
  v82 = *&v65[v67[8]];

  v83 = v67[9];
  if (!v15(&v65[v83], 1, v14))
  {
    (*(v110 + 8))(&v65[v83], v14);
  }

  v84 = v101[7];
  sub_2587C4E34(0, &qword_27F95DB18, MEMORY[0x28220C230], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (v105)(&v99[v84], v106);
  }

  else
  {
    v85 = *&v99[v84];
  }

  v86 = v101[8];
  sub_2587C4E34(0, &qword_27F95DB20, MEMORY[0x28220C1A0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v108(&v99[v86], v26);
  }

  else
  {
    v87 = *&v99[v86];
  }

  v88 = v101[9];
  sub_2587C4E34(0, &qword_27F95DB28, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v89 = sub_2588BBF18();
    (*(*(v89 - 8) + 8))(&v99[v88], v89);
  }

  else
  {
    v90 = *&v99[v88];
  }

  v91 = &v99[v101[10]];
  v92 = *v91;

  v93 = v91[1];

  v94 = *&v99[v101[11] + 8];

  v95 = *&v99[v101[12] + 8];

  v96 = *&v99[v101[13] + 8];

  v97 = *&v99[v101[14] + 8];

  return swift_deallocObject();
}

uint64_t sub_2587C4A34(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for MedicalIDDataContentView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_2587C4AB8(uint64_t a1, uint64_t a2)
{
  sub_2587C2C34(0, &qword_27F95D1F0, sub_2587A78BC, sub_2587A79DC, MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587C4B60(uint64_t a1, uint64_t a2)
{
  sub_2587A804C(0, &qword_27F95D2E8, &qword_27F95D2F0, sub_2587A82BC, sub_2587A83D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587C4BFC(uint64_t a1, uint64_t a2)
{
  sub_2587A8454(0, &qword_27F95D318, type metadata accessor for MedicalIDDeleteView);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2587C4C84()
{
  result = qword_27F95DB78;
  if (!qword_27F95DB78)
  {
    sub_2587A8384(255, &qword_27F95D308, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DB78);
  }

  return result;
}

unint64_t sub_2587C4D28()
{
  result = qword_27F95DB80;
  if (!qword_27F95DB80)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F95DB80);
  }

  return result;
}

unint64_t sub_2587C4D8C()
{
  result = qword_27F9609F0;
  if (!qword_27F9609F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9609F0);
  }

  return result;
}

void sub_2587C4E34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2587C4E98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2587C2610(a1, a2);
  }

  return a1;
}

uint64_t sub_2587C4EAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_2587C4F14()
{
  result = qword_27F95DB98;
  if (!qword_27F95DB98)
  {
    sub_2587A8384(255, &qword_27F95D270, MEMORY[0x277CE0F78], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DB98);
  }

  return result;
}

unint64_t sub_2587C4FB8()
{
  result = qword_27F95DBA0;
  if (!qword_27F95DBA0)
  {
    sub_2587C257C(255);
    sub_2587C5068(&qword_27F95DBA8, MEMORY[0x277CDF088]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DBA0);
  }

  return result;
}

uint64_t sub_2587C5068(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2587C50B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2587C5110(uint64_t a1, uint64_t a2)
{
  sub_2587C4E34(0, &qword_27F95DB28, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587C51BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2587C5224()
{
  if (!qword_27F95DBB8)
  {
    sub_2587C533C();
    sub_2587C2760();
    sub_2587BC38C(255, &qword_27F95DB08, &type metadata for MedicalIDDisplaySection, MEMORY[0x277D83D88]);
    sub_2587A7460(255);
    sub_2587C27E4();
    swift_getOpaqueTypeConformance2();
    sub_2587C2B98();
    swift_getOpaqueTypeConformance2();
    v0 = sub_2588BC2C8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DBB8);
    }
  }
}

void sub_2587C533C()
{
  if (!qword_27F95DBC0)
  {
    sub_2587C2760();
    sub_2587BC38C(255, &qword_27F95DB08, &type metadata for MedicalIDDisplaySection, MEMORY[0x277D83D88]);
    sub_2587A7460(255);
    sub_2587C27E4();
    swift_getOpaqueTypeConformance2();
    sub_2587C2B98();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95DBC0);
    }
  }
}

uint64_t sub_2587C544C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v51 = v2;
  v52 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[5];
    v38 = v5[4];
    v39 = v8;
    v9 = v5[7];
    v40 = v5[6];
    v41 = v9;
    v10 = v5[1];
    v35[0] = *v5;
    v35[1] = v10;
    v11 = v5[3];
    v36 = v5[2];
    v37 = v11;
    v27 = v35[0];
    v28 = v10;
    v29 = v36;
    v30 = v11;
    v31 = v38;
    v32 = v8;
    v33 = v40;
    v34 = v9;
    v12 = v6[5];
    v45 = v6[4];
    v46 = v12;
    v13 = v6[7];
    v47 = v6[6];
    v48 = v13;
    v14 = v6[1];
    v42[0] = *v6;
    v42[1] = v14;
    v15 = v6[3];
    v43 = v6[2];
    v44 = v15;
    v19 = v42[0];
    v20 = v14;
    v21 = v43;
    v22 = v15;
    v23 = v45;
    v24 = v12;
    v25 = v47;
    v26 = v13;
    sub_2587914E8(v35, v18);
    sub_2587914E8(v42, v18);
    v16 = _s11MedicalIDUI0A18IDEmergencyContactV2eeoiySbAC_ACtFZ_0(&v27, &v19);
    v49[4] = v23;
    v49[5] = v24;
    v49[6] = v25;
    v49[7] = v26;
    v49[0] = v19;
    v49[1] = v20;
    v49[2] = v21;
    v49[3] = v22;
    sub_2587C66FC(v49);
    v50[4] = v31;
    v50[5] = v32;
    v50[6] = v33;
    v50[7] = v34;
    v50[0] = v27;
    v50[1] = v28;
    v50[2] = v29;
    v50[3] = v30;
    sub_2587C66FC(v50);
    if ((v16 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 8;
    v5 += 8;
  }

  return 1;
}

uint64_t sub_2587C55B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2588BBDE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587C6750();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587B2FC8();
  v13 = v12;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for BasicAlertModel.Action();
  v17 = *(*(v62 - 1) + 64);
  v18 = MEMORY[0x28223BE20](v62);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v23 = &v51 - v22;
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
    return 0;
  }

  if (!v24 || a1 == a2)
  {
    return 1;
  }

  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v26 = a1 + v25;
  v27 = a2 + v25;
  v52 = (v5 + 32);
  v53 = v13;
  v54 = (v5 + 8);
  v55 = v11;
  v56 = *(v21 + 72);
  v57 = (v5 + 48);
  v60 = v4;
  v61 = v20;
  v59 = &v51 - v22;
  while (1)
  {
    result = sub_2587C67A8(v26, v23, type metadata accessor for BasicAlertModel.Action);
    if (!v24)
    {
      break;
    }

    sub_2587C67A8(v27, v20, type metadata accessor for BasicAlertModel.Action);
    if ((sub_2588BB9D8() & 1) == 0)
    {
      goto LABEL_24;
    }

    v29 = v62[5];
    v30 = *&v23[v29];
    v31 = *&v23[v29 + 8];
    v32 = &v20[v29];
    v33 = v30 == *v32 && v31 == *(v32 + 1);
    if (!v33 && (sub_2588BDF98() & 1) == 0)
    {
      goto LABEL_24;
    }

    v34 = v62[6];
    v35 = *(v13 + 48);
    sub_2587C67A8(&v23[v34], v16, sub_2587C6750);
    v36 = &v61[v34];
    v20 = v61;
    sub_2587C67A8(v36, &v16[v35], sub_2587C6750);
    v37 = *v57;
    if ((*v57)(v16, 1, v4) == 1)
    {
      if (v37(&v16[v35], 1, v4) != 1)
      {
        goto LABEL_23;
      }

      sub_2587C6810(v16, sub_2587C6750);
      v23 = v59;
    }

    else
    {
      v38 = v16;
      v39 = v16;
      v40 = v55;
      sub_2587C67A8(v38, v55, sub_2587C6750);
      if (v37((v39 + v35), 1, v4) == 1)
      {
        (*v54)(v40, v4);
        v16 = v39;
LABEL_23:
        sub_2587C6810(v16, sub_2587B2FC8);
        v23 = v59;
LABEL_24:
        sub_2587C6810(v20, type metadata accessor for BasicAlertModel.Action);
        sub_2587C6810(v23, type metadata accessor for BasicAlertModel.Action);
        return 0;
      }

      v41 = v58;
      (*v52)(v58, v39 + v35, v4);
      sub_2587C6870(&qword_27F95DA20, MEMORY[0x277CDD650]);
      v42 = sub_2588BD7D8();
      v43 = *v54;
      v44 = v41;
      v45 = v60;
      v20 = v61;
      (*v54)(v44, v60);
      v43(v40, v45);
      sub_2587C6810(v39, sub_2587C6750);
      v16 = v39;
      v13 = v53;
      v23 = v59;
      if ((v42 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v46 = v62[7];
    v47 = v20;
    v48 = *&v23[v46] != 0;
    v49 = *(v47 + v46) == 0;
    v50 = v48 ^ v49;
    sub_2587C6810(v47, type metadata accessor for BasicAlertModel.Action);
    sub_2587C6810(v23, type metadata accessor for BasicAlertModel.Action);
    if (v48 != v49)
    {
      v27 += v56;
      v26 += v56;
      v33 = v24-- == 1;
      v4 = v60;
      v20 = v61;
      v23 = v59;
      if (!v33)
      {
        continue;
      }
    }

    return v50;
  }

  __break(1u);
  return result;
}

uint64_t sub_2587C5BA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2587C6870(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BBB98();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_2587C5C64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_2587C5D94(v4);
}

uint64_t sub_2587C5C90()
{
  swift_getKeyPath();
  sub_2587C6870(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BBB98();

  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t type metadata accessor for MedicalIDEditableEmergencyContactsModel()
{
  result = qword_27F95DBD8;
  if (!qword_27F95DBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2587C5D94(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  v5 = sub_2587C544C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 16);
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2587C6870(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel);
    sub_2588BBB88();
  }
}

uint64_t sub_2587C5EDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
}

void (*sub_2587C5F60(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11MedicalIDUI39MedicalIDEditableEmergencyContactsModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2587C6870(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BBB98();

  *v4 = v1;
  swift_getKeyPath();
  sub_2588BBBB8();

  v4[7] = sub_2587C5B50();
  return sub_2587C6098;
}

void sub_2587C6098(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_2588BBBA8();

  free(v1);
}

uint64_t MedicalIDEditableEmergencyContactsModel.baseIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void *MedicalIDEditableEmergencyContactsModel.__allocating_init(emergencyContacts:suggestedEmergencyContacts:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 48);
  v7 = *(v3 + 52);
  v8 = swift_allocObject();
  v9 = sub_2588BD9A8();
  v10 = HKUIJoinStringsForAutomationIdentifier();

  if (v10)
  {
    v11 = sub_2588BD8A8();
    v13 = v12;
  }

  else
  {
    v13 = 0x80000002588C8A90;
    v11 = 0xD000000000000011;
  }

  v8[4] = v11;
  v8[5] = v13;
  sub_2588BBBC8();
  v8[2] = a1;
  v8[3] = a2;
  return v8;
}

void *MedicalIDEditableEmergencyContactsModel.init(emergencyContacts:suggestedEmergencyContacts:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_2588BD9A8();
  v6 = HKUIJoinStringsForAutomationIdentifier();

  if (v6)
  {
    v7 = sub_2588BD8A8();
    v9 = v8;
  }

  else
  {
    v9 = 0x80000002588C8A90;
    v7 = 0xD000000000000011;
  }

  v2[4] = v7;
  v2[5] = v9;
  sub_2588BBBC8();
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t sub_2587C62DC()
{
  swift_getKeyPath();
  sub_2587C6870(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BBB98();

  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v15 = MEMORY[0x277D84F90];

    sub_2588BDE68();
    v4 = 32;
    do
    {
      v11 = *(v1 + v4 + 64);
      v12 = *(v1 + v4 + 80);
      v13 = *(v1 + v4 + 96);
      v14 = *(v1 + v4 + 112);
      v7 = *(v1 + v4);
      v8 = *(v1 + v4 + 16);
      v9 = *(v1 + v4 + 32);
      v10 = *(v1 + v4 + 48);
      v5 = sub_2587D294C();
      sub_2588BDE38();
      v6 = *(v15 + 16);
      sub_2588BDE78();
      sub_2588BDE88();
      sub_2588BDE48();
      v4 += 128;
      --v2;
    }

    while (v2);

    return v15;
  }

  return result;
}

char *MedicalIDEditableEmergencyContactsModel.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 5);

  v4 = OBJC_IVAR____TtC11MedicalIDUI39MedicalIDEditableEmergencyContactsModel___observationRegistrar;
  v5 = sub_2588BBBD8();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  return v0;
}

uint64_t MedicalIDEditableEmergencyContactsModel.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 5);

  v4 = OBJC_IVAR____TtC11MedicalIDUI39MedicalIDEditableEmergencyContactsModel___observationRegistrar;
  v5 = sub_2588BBBD8();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2587C658C()
{
  result = sub_2588BBBD8();
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

void sub_2587C6750()
{
  if (!qword_27F95D9E0)
  {
    sub_2588BBDE8();
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D9E0);
    }
  }
}

uint64_t sub_2587C67A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587C6810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2587C6870(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2587C68B8()
{
  swift_getKeyPath();
  sub_2587C8814();
  sub_2588BBB98();

  return *(v0 + 16);
}

uint64_t sub_2587C6928(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2587C8814();
    sub_2588BBB88();
  }

  return result;
}

uint64_t sub_2587C6A08()
{
  swift_getKeyPath();
  sub_2587C8814();
  sub_2588BBB98();

  return *(v0 + 17);
}

uint64_t sub_2587C6A78(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2587C8814();
    sub_2588BBB88();
  }

  return result;
}

uint64_t sub_2587C6B58()
{
  v1 = OBJC_IVAR____TtC11MedicalIDUI34MedicalIDEditableSettingsViewModel___observationRegistrar;
  v2 = sub_2588BBBD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id MedicalIDSettingsViewModel.healthStore.getter()
{
  v1 = *(v0 + *(type metadata accessor for MedicalIDSettingsViewModel(0) + 20));

  return v1;
}

uint64_t MedicalIDSettingsViewModel.profileFirstName.getter()
{
  v1 = (v0 + *(type metadata accessor for MedicalIDSettingsViewModel(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MedicalIDSettingsViewModel.baseIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for MedicalIDSettingsViewModel(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MedicalIDSettingsViewModel.init(medicalIDData:healthStore:profileFirstName:hasPairedWatch:isEEDAvailable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v14 = sub_2588BD9A8();
  v15 = HKUIJoinStringsForAutomationIdentifier();

  if (v15)
  {
    v16 = sub_2588BD8A8();
    v18 = v17;
  }

  else
  {
    v18 = 0x80000002588C90D0;
    v16 = 0xD000000000000011;
  }

  v19 = type metadata accessor for MedicalIDSettingsViewModel(0);
  v20 = (a7 + v19[11]);
  *v20 = v16;
  v20[1] = v18;
  sub_2587B94F8(a1, a7);
  *(a7 + v19[5]) = a2;
  v21 = (a7 + v19[6]);
  *v21 = a3;
  v21[1] = a4;
  v22 = type metadata accessor for MedicalIDData();
  *(a7 + v19[9]) = (*(a1 + *(v22 + 64)) & 1) == 0;
  v23 = *(a1 + *(v22 + 68));
  result = sub_2587B955C(a1);
  *(a7 + v19[10]) = v23;
  *(a7 + v19[7]) = a5 & 1;
  *(a7 + v19[8]) = a6 & 1;
  return result;
}

uint64_t MedicalIDSettingsViewModel.showWhenLockedDetail.getter()
{
  v1 = *(v0 + *(type metadata accessor for MedicalIDSettingsViewModel(0) + 36));
  v2 = sub_2588BD858();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v4 = qword_27F95DA88;
  v5 = sub_2588BBAC8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v4;
  sub_2588BBAB8();
  return sub_2588BD8B8();
}

uint64_t sub_2587C7048()
{
  v0 = sub_2588BD858();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BBAC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v2;
  sub_2588BBAB8();
  return sub_2588BD8B8();
}

uint64_t MedicalIDSettingsViewModel.showWhenLockedFooter.getter()
{
  v1 = type metadata accessor for MedicalIDSettingsViewModel(0);
  v2 = *(v0 + v1[5]);
  v3 = [v2 profileIdentifier];
  v4 = [v3 type];

  if (v4 == 3 && (v5 = (v0 + v1[6]), v5[1]))
  {
    v6 = *v5;
    v7 = sub_2588BD838();
    v8 = *(*(v7 - 8) + 64);
    MEMORY[0x28223BE20](v7 - 8);
    sub_2588BD828();
    sub_2588BD818();
    sub_2588BD808();
    sub_2588BD818();
    v9 = sub_2588BD858();
    v10 = *(*(v9 - 8) + 64);
    MEMORY[0x28223BE20](v9 - 8);
    sub_2588BD848();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v11 = qword_27F95DA88;
    v12 = sub_2588BBAC8();
    v13 = *(*(v12 - 8) + 64);
    MEMORY[0x28223BE20](v12 - 8);
    v14 = v11;
    sub_2588BBAB8();
    return sub_2588BD8B8();
  }

  else
  {
    v16 = [v2 profileIdentifier];
    v17 = [v16 type];

    if (v17 == 3)
    {
      v18 = v0;
      if (qword_27F95D170 != -1)
      {
        swift_once();
      }

      v19 = sub_2588BBC98();
      __swift_project_value_buffer(v19, qword_27F969938);
      v20 = sub_2588BBC78();
      v21 = sub_2588BDBD8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v31[0] = v23;
        *v22 = 136315394;
        *(v22 + 4) = sub_258790224(0xD00000000000001ALL, 0x80000002588C08F0, v31);
        *(v22 + 12) = 2080;
        *(v22 + 14) = sub_258790224(0xD000000000000014, 0x80000002588C9340, v31);
        _os_log_impl(&dword_25878B000, v20, v21, "%s %s could not fetch first name", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C8DBE0](v23, -1, -1);
        MEMORY[0x259C8DBE0](v22, -1, -1);
      }

      v0 = v18;
    }

    v24 = *(v0 + v1[7]);
    v25 = sub_2588BD858();
    v26 = *(*(v25 - 8) + 64);
    MEMORY[0x28223BE20](v25 - 8);
    sub_2588BD7E8();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v27 = qword_27F95DA88;
    v28 = sub_2588BBAC8();
    v29 = *(*(v28 - 8) + 64);
    MEMORY[0x28223BE20](v28 - 8);
    v30 = v27;
    sub_2588BBAB8();
    return sub_2588BD8B8();
  }
}

Swift::Bool __swiftcall MedicalIDSettingsViewModel.isShowWhenLockedEditable(with:)(MIUIDisplayConfiguration *with)
{
  v3 = *(v1 + *(type metadata accessor for MedicalIDSettingsViewModel(0) + 20));
  v4 = [(MIUIDisplayConfiguration *)with isEditingAvailable];
  if (v4)
  {
    v5 = [v3 profileIdentifier];
    v6 = [v5 type];

    LOBYTE(v4) = v6 != 3 || [(MIUIDisplayConfiguration *)with accessPoint]== 8;
  }

  return v4;
}

uint64_t MedicalIDSettingsViewModel.ShareDuringEmergencyCallViewState.hashValue.getter()
{
  v1 = *v0;
  sub_2588BE038();
  MEMORY[0x259C8D1C0](v1);
  return sub_2588BE078();
}

MedicalIDUI::MedicalIDSettingsViewModel::ShareDuringEmergencyCallViewState __swiftcall MedicalIDSettingsViewModel.shareDuringEmergencyCallViewState(with:hasShareDuringEmergencyCallBeenEnabled:)(MIUIDisplayConfiguration *with, Swift::Bool hasShareDuringEmergencyCallBeenEnabled)
{
  v6 = v2;
  v7 = type metadata accessor for MedicalIDSettingsViewModel(0);
  v8 = *(v3 + *(v7 + 20));
  if ([(MIUIDisplayConfiguration *)with isEditingAvailable])
  {
    v9 = [v8 profileIdentifier];
    v10 = [v9 type];

    if (v10 != 3 || [(MIUIDisplayConfiguration *)with accessPoint]== 8)
    {
      if (*(v3 + *(v7 + 32)) == 1)
      {
        if (qword_27F95D170 != -1)
        {
          swift_once();
        }

        v11 = sub_2588BBC98();
        __swift_project_value_buffer(v11, qword_27F969938);
        v12 = sub_2588BBC78();
        v13 = sub_2588BDBB8();
        if (!os_log_type_enabled(v12, v13))
        {
          goto LABEL_21;
        }

        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v30 = v15;
        *v14 = 136315394;
        *(v14 + 4) = sub_258790224(0xD00000000000001ALL, 0x80000002588C08F0, &v30);
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_258790224(0xD00000000000004FLL, 0x80000002588C9390, &v30);
        v16 = "[%s][%s]: EED is available to edit";
LABEL_20:
        _os_log_impl(&dword_25878B000, v12, v13, v16, v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C8DBE0](v15, -1, -1);
        MEMORY[0x259C8DBE0](v14, -1, -1);
LABEL_21:

        v23 = 0;
        goto LABEL_27;
      }

      if (hasShareDuringEmergencyCallBeenEnabled)
      {
        if (qword_27F95D170 != -1)
        {
          swift_once();
        }

        v24 = sub_2588BBC98();
        __swift_project_value_buffer(v24, qword_27F969938);
        v12 = sub_2588BBC78();
        v13 = sub_2588BDBB8();
        if (!os_log_type_enabled(v12, v13))
        {
          goto LABEL_21;
        }

        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v30 = v15;
        *v14 = 136315394;
        *(v14 + 4) = sub_258790224(0xD00000000000001ALL, 0x80000002588C08F0, &v30);
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_258790224(0xD00000000000004FLL, 0x80000002588C9390, &v30);
        v16 = "[%s][%s]: EED is temporarily available because it is on";
        goto LABEL_20;
      }

      goto LABEL_22;
    }
  }

  if (*(v3 + *(v7 + 32)) != 1)
  {
LABEL_22:
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v25 = sub_2588BBC98();
    __swift_project_value_buffer(v25, qword_27F969938);
    v26 = sub_2588BBC78();
    v27 = sub_2588BDBB8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_258790224(0xD00000000000001ALL, 0x80000002588C08F0, &v30);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_258790224(0xD00000000000004FLL, 0x80000002588C9390, &v30);
      _os_log_impl(&dword_25878B000, v26, v27, "[%s][%s]: EED is unavailable", v28, 0x16u);
      v23 = 2;
      swift_arrayDestroy();
      MEMORY[0x259C8DBE0](v29, -1, -1);
      MEMORY[0x259C8DBE0](v28, -1, -1);
    }

    else
    {

      v23 = 2;
    }

    goto LABEL_27;
  }

  if (qword_27F95D170 != -1)
  {
    swift_once();
  }

  v17 = sub_2588BBC98();
  __swift_project_value_buffer(v17, qword_27F969938);
  v18 = sub_2588BBC78();
  v19 = sub_2588BDBB8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_258790224(0xD00000000000001ALL, 0x80000002588C08F0, &v30);
    _os_log_impl(&dword_25878B000, v18, v19, "[%s]: EED is read only", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x259C8DBE0](v21, -1, -1);
    MEMORY[0x259C8DBE0](v20, -1, -1);
  }

  v23 = 1;
LABEL_27:
  *v6 = v23;
  return result;
}

Swift::Bool __swiftcall MedicalIDSettingsViewModel.showShareDuringEmergencyCall(with:hasShareDuringEmergencyCallBeenEnabled:)(MIUIDisplayConfiguration *with, Swift::Bool hasShareDuringEmergencyCallBeenEnabled)
{
  v4 = [(MIUIDisplayConfiguration *)with isShareDuringEmergencyCallVisible];
  if (v4)
  {
    MedicalIDSettingsViewModel.shareDuringEmergencyCallViewState(with:hasShareDuringEmergencyCallBeenEnabled:)(with, hasShareDuringEmergencyCallBeenEnabled);
    LOBYTE(v4) = v6 < 2u;
  }

  return v4;
}

uint64_t MedicalIDSettingsViewModel.shareDuringEmergencyCallDetail.getter()
{
  v1 = *(v0 + *(type metadata accessor for MedicalIDSettingsViewModel(0) + 40));
  v2 = sub_2588BD858();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v4 = qword_27F95DA88;
  v5 = sub_2588BBAC8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v4;
  sub_2588BBAB8();
  return sub_2588BD8B8();
}

uint64_t MedicalIDSettingsViewModel.shareDuringEmergencyCallFooter.getter()
{
  v1 = type metadata accessor for MedicalIDSettingsViewModel(0);
  v2 = *(v0 + v1[5]);
  v3 = [v2 profileIdentifier];
  v4 = [v3 type];

  if (v4 == 3 && (v5 = (v0 + v1[6]), v5[1]))
  {
    v6 = *v5;
    v7 = sub_2588BD838();
    v8 = *(*(v7 - 8) + 64);
    MEMORY[0x28223BE20](v7 - 8);
    sub_2588BD828();
    sub_2588BD818();
    sub_2588BD808();
    sub_2588BD818();
    v9 = sub_2588BD858();
    v10 = *(*(v9 - 8) + 64);
    MEMORY[0x28223BE20](v9 - 8);
    sub_2588BD848();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v11 = qword_27F95DA88;
    v12 = sub_2588BBAC8();
    v13 = *(*(v12 - 8) + 64);
    MEMORY[0x28223BE20](v12 - 8);
    v14 = v11;
    sub_2588BBAB8();
    return sub_2588BD8B8();
  }

  else
  {
    v16 = [v2 profileIdentifier];
    v17 = [v16 type];

    if (v17 == 3)
    {
      v18 = v0;
      if (qword_27F95D170 != -1)
      {
        swift_once();
      }

      v19 = sub_2588BBC98();
      __swift_project_value_buffer(v19, qword_27F969938);
      v20 = sub_2588BBC78();
      v21 = sub_2588BDBD8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v31[0] = v23;
        *v22 = 136315394;
        *(v22 + 4) = sub_258790224(0xD00000000000001ALL, 0x80000002588C08F0, v31);
        *(v22 + 12) = 2080;
        *(v22 + 14) = sub_258790224(0xD00000000000001ELL, 0x80000002588C94B0, v31);
        _os_log_impl(&dword_25878B000, v20, v21, "%s %s could not fetch first name", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C8DBE0](v23, -1, -1);
        MEMORY[0x259C8DBE0](v22, -1, -1);
      }

      v0 = v18;
    }

    v24 = *(v0 + v1[10]);
    v25 = sub_2588BD858();
    v26 = *(*(v25 - 8) + 64);
    MEMORY[0x28223BE20](v25 - 8);
    if (v24 == 1)
    {
      *(v0 + v1[7]);
    }

    else
    {
      *(v0 + v1[8]);
    }

    sub_2588BD7E8();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v27 = qword_27F95DA88;
    v28 = sub_2588BBAC8();
    v29 = *(*(v28 - 8) + 64);
    MEMORY[0x28223BE20](v28 - 8);
    v30 = v27;
    sub_2588BBAB8();
    return sub_2588BD8B8();
  }
}

char *sub_2587C8448(char *result, int64_t a2, char a3, char *a4)
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
    sub_25878E1F0(0, &qword_27F95DC20, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
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

unint64_t sub_2587C8558()
{
  result = qword_27F95DBE8;
  if (!qword_27F95DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DBE8);
  }

  return result;
}

uint64_t sub_2587C85D4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2587C860C()
{
  result = sub_2588BBBD8();
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

void sub_2587C86D0()
{
  type metadata accessor for MedicalIDData();
  if (v0 <= 0x3F)
  {
    sub_2587C87A8();
    if (v1 <= 0x3F)
    {
      sub_25878E1F0(319, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2587C87A8()
{
  result = qword_27F95D360;
  if (!qword_27F95D360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F95D360);
  }

  return result;
}

unint64_t sub_2587C8814()
{
  result = qword_27F95DC18;
  if (!qword_27F95DC18)
  {
    type metadata accessor for MedicalIDEditableSettingsViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DC18);
  }

  return result;
}

uint64_t sub_2587C887C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t, void *))
{
  v6[0] = a2;
  v6[1] = a3;
  v7 = a4 & 1;
  return a5(a1, v6);
}

void sub_2587C88BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2588BC248();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  KeyPath = swift_getKeyPath();
  (*(v7 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_2587CCD2C();
  (*(*(v12 - 8) + 16))(a3, a2, v12);
  sub_2587CD50C(0, &qword_27F95DD48, sub_2587CCD2C, sub_2587AA6D0);
  v14 = (a3 + *(v13 + 36));
  *v14 = KeyPath;
  v14[1] = sub_2587AA84C;
  v14[2] = v11;
}

double sub_2587C8A84@<D0>(_OWORD *a1@<X8>)
{
  sub_2587AA634();
  sub_2588BC5A8();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_2587C8AD4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_2587CD89C;
    *(v4 + 24) = v3;
  }

  sub_2587B2344(v1);
  sub_2587AA634();
  return sub_2588BC5B8();
}

uint64_t sub_2587C8B98()
{
  v1 = sub_2588BC598();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for MedicalIDEditPersonalInfoModalView() + 56));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_2588BDBE8();
    v9 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_2587C8CF0()
{
  sub_2588BE038();
  MEMORY[0x259C8D1C0](0);
  return sub_2588BE078();
}

uint64_t sub_2587C8D5C()
{
  sub_2588BE038();
  MEMORY[0x259C8D1C0](0);
  return sub_2588BE078();
}

uint64_t sub_2587C8D9C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a3;
  v70 = a2;
  v6 = type metadata accessor for MedicalIDEditPersonalInfoModalView();
  v7 = (a4 + v6[5]);
  sub_2587CC4B0();
  sub_2588BD2B8();
  v8 = v80;
  *v7 = v79;
  v68 = v7;
  v7[2] = v8;
  v9 = MEMORY[0x277D83D88];
  sub_25878E240(0, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v75 = 0uLL;
  sub_2588BD2B8();
  v69 = *(&v79 + 1);
  v71 = v80;
  v10 = a4 + v6[7];
  sub_2587AFFC8(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2588BB9B8();
  v15 = (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v72 = v12;
  MEMORY[0x28223BE20](v15);
  sub_2587CC5B8(v13, v13, sub_2587AFFC8);
  v73 = v10;
  sub_2588BD2B8();
  sub_2587CC688(v13, sub_2587AFFC8);
  v16 = (a4 + v6[9]);
  sub_25878E240(0, &qword_27F95DC40, &type metadata for BasicAlertModel, v9);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0;
  sub_2588BD2B8();
  v17 = v80;
  *v16 = v79;
  v16[1] = v17;
  v18 = v82;
  v16[2] = v81;
  v16[3] = v18;
  v19 = v6[11];
  *(a4 + v19) = swift_getKeyPath();
  v20 = MEMORY[0x277CDF458];
  sub_2587CC500(0, &qword_27F95DB18, MEMORY[0x28220C228], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v21 = v6[12];
  *(a4 + v21) = swift_getKeyPath();
  sub_2587CC500(0, &qword_27F95DB20, MEMORY[0x28220C148], v20);
  swift_storeEnumTagMultiPayload();
  v22 = v6[13];
  *(a4 + v22) = swift_getKeyPath();
  sub_2587CC500(0, &qword_27F95DB30, MEMORY[0x277CDD848], v20);
  swift_storeEnumTagMultiPayload();
  v23 = a4 + v6[14];
  type metadata accessor for MedicalIDDataManager();
  sub_2587CCFE0(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  *v23 = sub_2588BBF58();
  *(v23 + 8) = v24 & 1;
  v25 = (a4 + v6[15]);
  sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
  sub_2587BC2A8();
  *v25 = sub_2588BC358();
  v25[1] = v26;
  v27 = sub_2588BD9A8();
  v28 = HKUIJoinStringsForAutomationIdentifier();

  if (v28)
  {
    v29 = sub_2588BD8A8();
    v31 = v30;
  }

  else
  {
    v31 = 0xEC0000006F666E49;
    v29 = 0x6C616E6F73726550;
  }

  v32 = (a4 + v6[16]);
  *v32 = v29;
  v32[1] = v31;
  v33 = a4 + v6[17];
  sub_2587CC564();
  sub_2588BBE88();
  v34 = *(&v75 + 1);
  v35 = v76;
  *v33 = v75;
  *(v33 + 8) = v34;
  *(v33 + 16) = v35;
  sub_2587CC5B8(a1, a4, type metadata accessor for MedicalIDPersonalInfoViewModel);
  v36 = v70;
  *(a4 + v6[18]) = v70;
  *(a4 + v6[19]) = v74;
  v67 = type metadata accessor for MedicalIDData();
  v37 = (a1 + *(v67 + 72));
  v38 = *v37;
  v39 = v37[1];
  v40 = v68;
  v42 = *v68;
  v41 = v68[1];
  v43 = v68[2];
  *v68 = v38;
  v40[1] = v39;
  v40[2] = 0;
  v70 = v36;

  sub_2587CC620(v38, v39);
  sub_2587C4E98(v42, v41);

  v44 = a1[1];
  if (v44)
  {
    v45 = *a1;
    v46 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v46 = *a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v46)
    {
      v47 = a1[1];
    }

    else
    {
      v45 = 0;
      v44 = 0;
    }
  }

  else
  {
    v45 = 0;
  }

  v49 = (a4 + v6[6]);
  *v49 = v45;
  v49[1] = v44;
  v49[2] = 0;
  MEMORY[0x28223BE20](v48);
  v51 = &v67 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MedicalIDPersonalInfoViewModel.dateOfBirth()(v51);
  v52 = v73;
  sub_2587CC688(v73, sub_2587CC6E8);
  sub_2587CC6E8(0);
  *(v52 + *(v53 + 28)) = 0;
  sub_2587CD2B0(v51, v52, sub_2587AFFC8);
  v54 = v67;
  v55 = *(a1 + *(v67 + 80));
  if (v55 && (v56 = [v55 integerValue], v56 <= 2))
  {
    v57 = 0x30102u >> (8 * v56);
  }

  else
  {
    LOBYTE(v57) = 0;
  }

  v58 = a4 + v6[8];
  *v58 = v57;
  *(v58 + 8) = 0;
  v59 = (a1 + *(v54 + 60));
  v60 = *v59;
  v61 = v59[1];
  v62 = type metadata accessor for MedicalIDSpokenLanguagePickerViewModel();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();

  v65 = MedicalIDSpokenLanguagePickerViewModel.init(primaryLanguageCode:)(v60, v61);

  result = sub_2587CC688(a1, type metadata accessor for MedicalIDPersonalInfoViewModel);
  *(a4 + v6[10]) = v65;
  return result;
}

void sub_2587C9478(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_2587CCD2C();
  v55 = v4;
  v48 = *(v4 - 8);
  v5 = *(v48 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v53 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - v8;
  v10 = type metadata accessor for MedicalIDEditPersonalInfoModalView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  if (qword_27F95D068 != -1)
  {
    swift_once();
  }

  v13 = qword_27F95DC28;
  v14 = unk_27F95DC30;
  v52 = type metadata accessor for MedicalIDEditPersonalInfoModalView;
  sub_2587CC5B8(v2, &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MedicalIDEditPersonalInfoModalView);
  v46 = v2;
  v51 = *(v11 + 80);
  v15 = (v51 + 16) & ~v51;
  v49 = v15;
  v16 = swift_allocObject();
  v50 = type metadata accessor for MedicalIDEditPersonalInfoModalView;
  sub_2587CD2B0(&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for MedicalIDEditPersonalInfoModalView);
  v17 = (v2 + *(v10 + 36));
  v18 = v17[1];
  v64 = *v17;
  v65 = v18;
  v19 = v17[3];
  v66 = v17[2];
  v67 = v19;
  sub_2587CCB28(0, &qword_27F95DC88, &qword_27F95DC40, &type metadata for BasicAlertModel);
  v47 = v12;

  sub_2588BD2E8();
  v67 = v62;
  v68 = v63;
  v65 = v60;
  v66 = v61;
  v64 = v59;
  *a1 = swift_getKeyPath();
  sub_2587CC500(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_2587CD3E4();
  v21 = v20;
  v22 = (a1 + v20[9]);
  *v22 = v13;
  v22[1] = v14;
  v23 = (a1 + v20[10]);
  *v23 = &unk_2588C0C68;
  v23[1] = v16;
  v24 = a1 + v20[11];
  v25 = v65;
  v26 = v67;
  *(v24 + 2) = v66;
  *(v24 + 3) = v26;
  *(v24 + 8) = v68;
  *v24 = v64;
  *(v24 + 1) = v25;
  v27 = (a1 + v20[12]);
  MEMORY[0x28223BE20](v20);
  v45 = a1;
  v28 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v46;
  *(&v44 - 2) = v46;
  sub_2587CCDC0(0);
  sub_2587CCFE0(&qword_27F95DD30, sub_2587CCDC0);
  sub_2588BCCF8();
  v30 = v48 + 32;
  v31 = *(v48 + 32);
  v32 = v53;
  v33 = v9;
  v34 = v55;
  v31(v53, v33, v55);
  v35 = (*(v30 + 48) + 16) & ~*(v30 + 48);
  v36 = swift_allocObject();
  v31((v36 + v35), v32, v34);
  *v27 = sub_2587CD698;
  v27[1] = v36;
  v37 = v45;
  v38 = v45 + v21[13];
  v56 = 0;
  sub_2588BD2B8();
  v39 = v58;
  *v38 = v57;
  *(v38 + 1) = v39;
  sub_2587CC5B8(v29, v28, v52);
  v40 = v49;
  v41 = swift_allocObject();
  sub_2587CD2B0(v28, v41 + v40, v50);
  sub_2587CD778();
  v43 = (v37 + *(v42 + 36));
  *v43 = sub_2587CD718;
  v43[1] = v41;
  v43[2] = 0;
  v43[3] = 0;
}

uint64_t sub_2587C99EC()
{
  v0[2] = sub_2588BDA78();
  v0[3] = sub_2588BDA68();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2587C9A98;

  return sub_2587C9CBC();
}

uint64_t sub_2587C9A98()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_2588BDA28();
  if (v2)
  {
    v8 = sub_2587C9C58;
  }

  else
  {
    v8 = sub_2587C9BF4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2587C9BF4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2587C9C58()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_2587C9CBC()
{
  v1[23] = v0;
  v2 = sub_2588BC038();
  v1[24] = v2;
  v3 = *(v2 - 8);
  v1[25] = v3;
  v4 = *(v3 + 64) + 15;
  v1[26] = swift_task_alloc();
  sub_2587B63B8();
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v7 = type metadata accessor for MedicalIDData();
  v1[28] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v1[29] = swift_task_alloc();
  v9 = type metadata accessor for MedicalIDEditPersonalInfoModalView();
  v1[30] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = sub_2588BDA78();
  v1[33] = sub_2588BDA68();
  v12 = sub_2588BDA28();
  v1[34] = v12;
  v1[35] = v11;

  return MEMORY[0x2822009F8](sub_2587C9E40, v12, v11);
}

uint64_t sub_2587C9E40()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[23];
  v0[36] = sub_2587C8B98();
  sub_2587CC5B8(v3, v2, type metadata accessor for MedicalIDEditPersonalInfoModalView);
  v0[37] = sub_2588BDA68();
  v5 = sub_2588BDA28();
  v0[38] = v5;
  v0[39] = v4;

  return MEMORY[0x2822009F8](sub_2587C9F00, v5, v4);
}

uint64_t sub_2587C9F00()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  v42 = *(v0 + 224);
  v5 = *(v0 + 216);
  swift_getKeyPath();
  *(v0 + 160) = v1;
  sub_2587CCFE0(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  sub_2588BBB98();

  v6 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_2587CC5B8(v1 + v6, v5, sub_2587B63B8);
  LoadState<>.loadedValue.getter(v4);
  sub_2587CC688(v5, sub_2587B63B8);
  v7 = v3 + v2[5];
  v8 = *(v7 + 16);
  *(v0 + 40) = *v7;
  *(v0 + 56) = v8;
  sub_2587CC500(0, &qword_27F95DC70, sub_2587CC4B0, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v9 = *(v0 + 112);
  v41 = *(v0 + 120);
  v10 = v3 + v2[6];
  v11 = *(v10 + 16);
  *(v0 + 64) = *v10;
  *(v0 + 80) = v11;
  sub_2587CCB28(0, &qword_27F95DC78, &qword_27F95D458, MEMORY[0x277D837D0]);
  sub_2588BD2C8();
  v37 = *(v0 + 136);
  v38 = *(v0 + 128);
  sub_2587AFFC8(0);
  v13 = *(*(v12 - 8) + 64) + 15;
  v14 = swift_task_alloc();
  v15 = v2[7];
  sub_2587CC6E8(0);
  sub_2588BD2C8();
  v16 = *(v3 + v2[10]);
  swift_getKeyPath();
  *(v0 + 168) = v16;
  sub_2587CCFE0(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v17 = *(v16 + 24);
  v18 = *(v16 + 32);
  v39 = v17;
  v19 = (v3 + v2[8]);
  v20 = *v19;
  v21 = *(v19 + 1);
  *(v0 + 144) = v20;
  *(v0 + 152) = v21;
  sub_25878E240(0, &qword_27F95DC80, &type metadata for OrganDonationStatus, MEMORY[0x277CE10B8]);
  v40 = v18;

  sub_2588BD2C8();
  v22 = *(v0 + 336);
  v23 = (v4 + *(v42 + 72));
  v24 = *v23;
  v25 = v23[1];
  *v23 = v9;
  v23[1] = v41;
  sub_2587CC620(v9, v41);
  sub_2587C4E98(v24, v25);
  v26 = v4[1];

  *v4 = v38;
  v4[1] = v37;
  if (v22)
  {
    sub_25878E130(0, &qword_27F95D898, 0x277CCABB0);
    v22 = sub_2588BDCC8();
  }

  v27 = *(v0 + 248);
  v29 = *(v0 + 224);
  v28 = *(v0 + 232);
  v30 = *(v29 + 80);

  *(v28 + v30) = v22;
  MedicalIDPersonalInfoViewModel.updateBirthDate(medicalIDData:birthDate:)(v28, v14);
  sub_2587C4E98(v9, v41);
  sub_2587CC688(v14, sub_2587AFFC8);
  v31 = (v28 + *(v29 + 60));
  v32 = v31[1];

  *v31 = v39;
  v31[1] = v40;

  v33 = swift_task_alloc();
  *(v0 + 320) = v33;
  *v33 = v0;
  v33[1] = sub_2587CA390;
  v34 = *(v0 + 288);
  v35 = *(v0 + 232);

  return sub_258880280(v35, v0 + 176);
}

uint64_t sub_2587CA390()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v8 = *v1;

  v4 = *(v2 + 304);
  v5 = *(v2 + 312);
  if (v0)
  {
    v6 = sub_2587CA634;
  }

  else
  {
    v6 = sub_2587CA4A0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2587CA4A0()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[31];
  v4 = v0[29];

  sub_2587CC688(v4, type metadata accessor for MedicalIDData);
  sub_2587CC688(v3, type metadata accessor for MedicalIDEditPersonalInfoModalView);
  v5 = v0[34];
  v6 = v0[35];

  return MEMORY[0x2822009F8](sub_2587CA554, v5, v6);
}

uint64_t sub_2587CA554()
{
  v1 = v0[33];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[24];
  v8 = v0[25];
  v9 = v0[23];

  v10 = v9 + *(v3 + 52);
  sub_25885269C(v6);
  sub_2588BC028();
  (*(v8 + 8))(v6, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2587CA634()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[31];
  v4 = v0[29];

  sub_2587CC688(v4, type metadata accessor for MedicalIDData);
  v0[41] = v0[22];
  sub_2587CC688(v3, type metadata accessor for MedicalIDEditPersonalInfoModalView);
  v5 = v0[34];
  v6 = v0[35];

  return MEMORY[0x2822009F8](sub_2587CA6F0, v5, v6);
}

uint64_t sub_2587CA6F0()
{
  v1 = v0[41];
  v2 = v0[33];
  v3 = v0[31];
  v4 = v0[29];
  v6 = v0[26];
  v5 = v0[27];

  sub_2587CE078();
  swift_allocError();
  *v7 = v1;

  v8 = v0[1];

  return v8();
}

uint64_t sub_2587CA7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  sub_2587CD230(0);
  v56 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v52 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587CD1FC(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v57 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v51 - v11;
  sub_2587CD250(0, &qword_27F95DCF8, sub_2587CD028);
  v55 = v13;
  v58 = *(v13 - 8);
  v14 = *(v58 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  sub_2587CCE98(0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v60 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v51 - v25;
  v62 = a1;
  sub_2587CCEEC();
  sub_2587CD8E4();
  sub_2588BD508();
  v63 = sub_2588BD198();
  v27 = v26;
  *&v26[*(v21 + 44)] = sub_2588BD418();
  v61 = a1;
  sub_2587CD028(0);
  sub_2587CCFE0(&qword_27F95DD88, sub_2587CD028);
  v28 = v19;
  sub_2588BD508();
  v29 = [*(a1 + *(type metadata accessor for MedicalIDEditPersonalInfoModalView() + 72)) profileIdentifier];
  v30 = [v29 type];

  if (v30 == 3)
  {
    v32 = 1;
    v33 = v56;
  }

  else
  {
    MEMORY[0x28223BE20](v31);
    *(&v51 - 2) = a1;
    type metadata accessor for EditOrganDonationCellView();
    sub_2587CCFE0(&qword_27F95DD90, type metadata accessor for EditOrganDonationCellView);
    v34 = v52;
    sub_2588BD508();
    v35 = v56;
    (*(v4 + 32))(v12, v34, v56);
    v32 = 0;
    v33 = v35;
  }

  (*(v4 + 56))(v12, v32, 1, v33);
  v54 = v27;
  v36 = v60;
  sub_2587CC5B8(v27, v60, sub_2587CCE98);
  v37 = v58;
  v38 = v12;
  v39 = *(v58 + 16);
  v40 = v17;
  v41 = v17;
  v53 = v28;
  v42 = v55;
  v39(v41, v28, v55);
  v43 = v57;
  sub_2587CC5B8(v38, v57, sub_2587CD1FC);
  v44 = v36;
  v45 = v43;
  v46 = v59;
  sub_2587CC5B8(v44, v59, sub_2587CCE98);
  sub_2587CCDF4();
  v48 = v47;
  v39((v46 + *(v47 + 48)), v40, v42);
  sub_2587CC5B8(v45, v46 + *(v48 + 64), sub_2587CD1FC);
  sub_2587CC688(v38, sub_2587CD1FC);
  v49 = *(v37 + 8);
  v49(v53, v42);
  sub_2587CC688(v54, sub_2587CCE98);
  sub_2587CC688(v45, sub_2587CD1FC);
  v49(v40, v42);
  return sub_2587CC688(v60, sub_2587CCE98);
}

void sub_2587CAD70(uint64_t a1)
{
  v2 = type metadata accessor for MedicalIDEditPersonalInfoModalView();
  v3 = (a1 + *(v2 + 20));
  v9 = *v3;
  v10 = *(v3 + 2);
  sub_2587CC500(0, &qword_27F95DC70, sub_2587CC4B0, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  sub_2588285C8(v12[0], v12[1], v12[2], v12[3], v12);
  v11 = v13;
  sub_25878E240(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2588BFF50;
  v5 = (a1 + *(v2 + 64));
  v6 = v5[1];
  *(v4 + 32) = *v5;
  *(v4 + 40) = v6;
  *(v4 + 48) = 0x6369506F746F6850;
  *(v4 + 56) = 0xEB0000000072656BLL;

  v7 = sub_2588BD9A8();

  v8 = HKUIJoinStringsForAutomationIdentifier();

  if (v8)
  {
    sub_2588BD8A8();

    sub_2587CD994();
    sub_2588BCFB8();

    sub_2587C4E98(v11, *(&v11 + 1));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2587CAF70@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v76 = a2;
  v3 = type metadata accessor for EditPrimaryLanguageCellView();
  v4 = *(v3 - 8);
  v74 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v75 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v61 - v8;
  v9 = type metadata accessor for MedicalIDEditPersonalInfoModalView();
  v69 = *(v9 - 8);
  v10 = (v9 - 8);
  v68 = *(v69 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v67 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EditDateOfBirthCellView();
  v13 = *(v12 - 8);
  v66 = v12 - 8;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8);
  v73 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v77 = &v61 - v17;
  sub_2587CD0E4();
  v72 = v18;
  v79 = *(v18 - 8);
  v19 = v79[8];
  v20 = MEMORY[0x28223BE20](v18);
  v70 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v78 = &v61 - v22;
  v23 = a1 + v10[8];
  v24 = *(v23 + 16);
  v87 = *v23;
  v88 = v24;
  sub_2587CCB28(0, &qword_27F95DC78, &qword_27F95D458, MEMORY[0x277D837D0]);
  sub_2588BD2E8();
  v63 = v82;
  v64 = v84;
  v25 = v10[18];
  v26 = v10[19];
  v65 = v10;
  v27 = (a1 + v25);
  v28 = v27[1];
  v85 = *v27;
  v86 = v28;
  v29 = a1 + v26;
  LOBYTE(v27) = *(a1 + v26);
  v30 = *(a1 + v26 + 8);
  LOBYTE(v29) = *(v29 + 16);
  LOBYTE(v87) = v27;
  *(&v87 + 1) = v30;
  LOBYTE(v88) = v29;
  sub_2587CCB94();

  sub_2588BBE68();
  v87 = v80;
  LOBYTE(v88) = v81;
  LOBYTE(v80) = 0;
  sub_25878E240(0, &qword_27F95DCA0, &type metadata for MedicalIDEditPersonalInfoModalView.TextFieldFocus, MEMORY[0x277D83D88]);
  sub_2587CD1A8();
  sub_2587CCC1C();
  sub_2588BD088();

  v64 = type metadata accessor for MedicalIDPersonalInfoViewModel;
  v31 = v77;
  sub_2587CC5B8(a1, v77, type metadata accessor for MedicalIDPersonalInfoViewModel);
  v32 = v10[9];
  v33 = v66;
  v34 = *(v66 + 28);
  sub_2587CC6E8(0);
  v35 = v31;
  v62 = a1;
  sub_2588BD2E8();
  v36 = v67;
  sub_2587CC5B8(a1, v67, type metadata accessor for MedicalIDEditPersonalInfoModalView);
  v37 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v38 = swift_allocObject();
  sub_2587CD2B0(v36, v38 + v37, type metadata accessor for MedicalIDEditPersonalInfoModalView);
  *(v35 + *(v33 + 36)) = swift_getKeyPath();
  sub_2587CC500(0, &qword_27F95DB18, MEMORY[0x28220C228], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v39 = (v35 + *(v33 + 32));
  v40 = v35;
  *v39 = sub_2587CE17C;
  v39[1] = v38;
  v41 = v62;
  v42 = v71;
  sub_2587CC5B8(v62, v71, v64);
  sub_2587CC5B8(v41, v36, type metadata accessor for MedicalIDEditPersonalInfoModalView);
  v43 = swift_allocObject();
  sub_2587CD2B0(v36, v43 + v37, type metadata accessor for MedicalIDEditPersonalInfoModalView);
  v44 = *(v41 + v65[12]);
  v45 = v74;
  v46 = v42 + *(v74 + 32);
  LOBYTE(v87) = 0;

  sub_2588BD2B8();
  v47 = v83;
  *v46 = v82;
  *(v46 + 8) = v47;
  v48 = (v42 + *(v45 + 28));
  *v48 = sub_2587CE020;
  v48[1] = v43;
  *(v42 + *(v45 + 36)) = v44;
  v49 = v42;
  v50 = v79[2];
  v51 = v70;
  v52 = v72;
  v50(v70, v78, v72);
  v53 = v73;
  sub_2587CC5B8(v40, v73, type metadata accessor for EditDateOfBirthCellView);
  v54 = v42;
  v55 = v75;
  sub_2587CC5B8(v54, v75, type metadata accessor for EditPrimaryLanguageCellView);
  v56 = v76;
  v50(v76, v51, v52);
  sub_2587CD05C();
  v58 = v57;
  sub_2587CC5B8(v53, &v56[*(v57 + 48)], type metadata accessor for EditDateOfBirthCellView);
  sub_2587CC5B8(v55, &v56[*(v58 + 64)], type metadata accessor for EditPrimaryLanguageCellView);
  sub_2587CC688(v49, type metadata accessor for EditPrimaryLanguageCellView);
  sub_2587CC688(v77, type metadata accessor for EditDateOfBirthCellView);
  v59 = v79[1];
  v59(v78, v52);
  sub_2587CC688(v55, type metadata accessor for EditPrimaryLanguageCellView);
  sub_2587CC688(v53, type metadata accessor for EditDateOfBirthCellView);
  return (v59)(v51, v52);
}

uint64_t sub_2587CB69C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MedicalIDEditPersonalInfoModalView() + 68));
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[16];
  sub_2587CCB94();
  return sub_2588BBE58();
}

uint64_t sub_2587CB70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MedicalIDEditPersonalInfoModalView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587CC5B8(a1, v11, type metadata accessor for MedicalIDPersonalInfoViewModel);
  v12 = a1 + *(v5 + 40);
  v13 = *v12;
  v14 = *(v12 + 8);
  LOBYTE(v39) = v13;
  v40 = v14;
  sub_25878E240(0, &qword_27F95DC80, &type metadata for OrganDonationStatus, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  v15 = v42;
  v16 = v43;
  v37 = v44;
  sub_2587CC5B8(a1, &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MedicalIDEditPersonalInfoModalView);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  sub_2587CD2B0(&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for MedicalIDEditPersonalInfoModalView);
  v19 = a1 + *(v5 + 68);
  v20 = *v19;
  if (*v19)
  {
    v21 = type metadata accessor for EditOrganDonationCellView();
    v22 = a2 + v21[7];
    type metadata accessor for MedicalIDDataManager();
    sub_2587CCFE0(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    v23 = v20;
    *v22 = sub_2588BBF58();
    *(v22 + 8) = v24 & 1;
    sub_2587CC5B8(v11, a2, type metadata accessor for MedicalIDPersonalInfoViewModel);
    v25 = (a2 + v21[6]);
    *v25 = sub_2587CE17C;
    v25[1] = v18;
    v26 = type metadata accessor for EditOrganDonationCellViewModel();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 41) = 0;
    *(v29 + 65) = 3;
    sub_2588BBBC8();
    *(v29 + 24) = v15;
    *(v29 + 32) = v16;
    v30 = v37;
    *(v29 + 40) = v37;
    v39 = v15;
    v40 = v16;
    v41 = v30;
    sub_25878E240(0, &qword_27F95DD98, &type metadata for OrganDonationStatus, MEMORY[0x277CE11F8]);
    v32 = v31;

    MEMORY[0x259C8C5A0](&v38, v32);

    sub_2587CC688(v11, type metadata accessor for MedicalIDPersonalInfoViewModel);

    *(v29 + 64) = v38;
    *(v29 + 72) = sub_2587F4E14;
    *(v29 + 80) = 0;
    *(v29 + 48) = sub_2587F4E40;
    *(v29 + 56) = 0;
    *(v29 + 88) = sub_2587F4E90;
    *(v29 + 96) = 0;
    v34 = (a2 + v21[5]);
    *v34 = v29;
    v34[1] = 0;
  }

  else
  {
    v35 = *(v19 + 8);
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587BC2A8();
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

void sub_2587CBB10(uint64_t a1)
{
  sub_2587AF908();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HealthDemographicData();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for MedicalIDEditPersonalInfoModalView();
  v12 = a1 + *(v11 + 60);
  if (!*v12)
  {
    v57 = *(v12 + 8);
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587BC2A8();
    sub_2588BC348();
    __break(1u);
    return;
  }

  v13 = v11;
  v66 = *v12;
  if ([v66 suggestHealthData])
  {
    v14 = MedicalIDPersonalInfoViewModel.hasPersonalInfoData.getter();

    if (v14)
    {
      return;
    }

    v15 = *(a1 + v13[19]);
    swift_getKeyPath();
    v72 = v15;
    sub_2587CCFE0(&qword_27F95D8D0, type metadata accessor for HealthDemographicDataProvider);
    sub_2588BBB98();

    v16 = OBJC_IVAR____TtC11MedicalIDUI29HealthDemographicDataProvider__data;
    swift_beginAccess();
    sub_2587CC5B8(v15 + v16, v5, sub_2587AF908);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      v17 = sub_2587AF908;
      v18 = v5;
LABEL_17:
      sub_2587CC688(v18, v17);
      return;
    }

    sub_2587CD2B0(v5, v10, type metadata accessor for HealthDemographicData);
    v20 = (a1 + v13[6]);
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    v69 = *v20;
    v70 = v22;
    v71 = v23;
    sub_2587CCB28(0, &qword_27F95DC78, &qword_27F95D458, MEMORY[0x277D837D0]);
    v25 = v24;
    sub_2588BD2C8();
    if (v68)
    {
    }

    else
    {
      v26 = *v10;
      v61 = v25;
      v62 = v26;
      v66 = v22;
      v27 = v10[1];
      v63 = v10[2];
      v60 = v10[3];
      v28 = sub_2588BB868();
      v64 = v21;
      v65 = v58;
      v58[0] = v28;
      v29 = *(v28 - 8);
      v30 = *(v29 + 64);
      MEMORY[0x28223BE20](v28);
      v32 = v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_2587CC500(0, &qword_27F95DD70, MEMORY[0x28220BA80], MEMORY[0x277D83D88]);
      v58[1] = v58;
      v34 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v33 - 8);
      v59 = v23;
      (*(v29 + 56))(v58 - v35, 1, 1, v28);

      sub_2588BB848();
      v36 = sub_2588BB858();
      v38 = v37;
      (*(v29 + 8))(v32, v58[0]);
      v69 = v64;
      v70 = v66;
      v71 = v59;
      v67 = v36;
      v68 = v38;
      sub_2588BD2D8();
    }

    sub_2587AFFC8(0);
    v40 = *(*(v39 - 8) + 64);
    MEMORY[0x28223BE20](v39 - 8);
    v41 = v13[7];
    sub_2587CC6E8(0);
    v66 = v41;
    sub_2588BD2C8();
    v42 = sub_2588BB9B8();
    v43 = *(v42 - 8);
    LODWORD(v41) = (*(v43 + 48))(v58 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v42);
    sub_2587CC688(v58 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2587AFFC8);
    if (v41 != 1 || (v44 = *(v6 + 24), sub_2588BB788(), (v45 & 1) != 0) || (sub_2588BB7D8(), (v46 & 1) != 0) || (v47 = sub_2588BB7B8(), (v48 & 1) != 0))
    {
      v17 = type metadata accessor for HealthDemographicData;
      v18 = v10;
      goto LABEL_17;
    }

    v65 = v58;
    MEMORY[0x28223BE20](v47);
    v49 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
    v50 = *(a1 + *(type metadata accessor for MedicalIDPersonalInfoViewModel() + 28));
    if (v50)
    {
      v64 = v58 - v49;
      v51 = sub_2588BB758();
      v52 = [v50 dateFromComponents_];

      MEMORY[0x28223BE20](v53);
      if (v52)
      {
        sub_2588BB988();

        v54 = 0;
      }

      else
      {
        v54 = 1;
      }

      (*(v43 + 56))(v58 - v49, v54, 1, v42);
      v56 = v64;
      v55 = sub_2587CD2B0(v58 - v49, v64, sub_2587AFFC8);
    }

    else
    {
      v55 = (*(v43 + 56))(v58 - v49, 1, 1, v42);
      v56 = v58 - v49;
    }

    MEMORY[0x28223BE20](v55);
    sub_2587CC5B8(v56, v58 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0), sub_2587AFFC8);
    sub_2588BD2D8();
    sub_2587CC688(v56, sub_2587AFFC8);
    sub_2587CC688(v10, type metadata accessor for HealthDemographicData);
  }

  else
  {
    v19 = v66;
  }
}

uint64_t sub_2587CC314()
{
  v0 = sub_2588BD858();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BBAC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v2;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F95DC28 = result;
  unk_27F95DC30 = v7;
  return result;
}

uint64_t type metadata accessor for MedicalIDEditPersonalInfoModalView()
{
  result = qword_27F95DC60;
  if (!qword_27F95DC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2587CC4B0()
{
  if (!qword_27F95DC38)
  {
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DC38);
    }
  }
}

void sub_2587CC500(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2587CC564()
{
  result = qword_27F95DC48;
  if (!qword_27F95DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DC48);
  }

  return result;
}

uint64_t sub_2587CC5B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587CC620(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2587CC634(a1, a2);
  }

  return a1;
}

uint64_t sub_2587CC634(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2587CC688(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for MedicalIDEditPersonalInfoModalView.TextFieldFocus(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MedicalIDEditPersonalInfoModalView.TextFieldFocus(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_2587CC82C()
{
  type metadata accessor for MedicalIDPersonalInfoViewModel();
  if (v0 <= 0x3F)
  {
    sub_2587CC500(319, &qword_27F95DC70, sub_2587CC4B0, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_2587CCB28(319, &qword_27F95DC78, &qword_27F95D458, MEMORY[0x277D837D0]);
      if (v2 <= 0x3F)
      {
        sub_2587CC6E8(319);
        if (v3 <= 0x3F)
        {
          sub_25878E240(319, &qword_27F95DC80, &type metadata for OrganDonationStatus, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_2587CCB28(319, &qword_27F95DC88, &qword_27F95DC40, &type metadata for BasicAlertModel);
            if (v5 <= 0x3F)
            {
              type metadata accessor for MedicalIDSpokenLanguagePickerViewModel();
              if (v6 <= 0x3F)
              {
                sub_2587CC500(319, &qword_27F95DAB8, MEMORY[0x28220C228], MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  sub_2587CC500(319, &qword_27F95DAC0, MEMORY[0x28220C148], MEMORY[0x277CDF468]);
                  if (v8 <= 0x3F)
                  {
                    sub_2587CC500(319, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
                    if (v9 <= 0x3F)
                    {
                      sub_2587CC500(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
                      if (v10 <= 0x3F)
                      {
                        sub_2587BC234();
                        if (v11 <= 0x3F)
                        {
                          sub_2587CCB94();
                          if (v12 <= 0x3F)
                          {
                            sub_25878E130(319, &qword_27F95D360, 0x277CCD4D8);
                            if (v13 <= 0x3F)
                            {
                              type metadata accessor for HealthDemographicDataProvider();
                              if (v14 <= 0x3F)
                              {
                                swift_cvw_initStructMetadataWithLayoutString();
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2587CCB28(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_25878E240(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_2588BD2F8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2587CCB94()
{
  if (!qword_27F95DC98)
  {
    sub_25878E240(255, &qword_27F95DCA0, &type metadata for MedicalIDEditPersonalInfoModalView.TextFieldFocus, MEMORY[0x277D83D88]);
    sub_2587CCC1C();
    v0 = sub_2588BBE98();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DC98);
    }
  }
}

unint64_t sub_2587CCC1C()
{
  result = qword_27F95DCA8;
  if (!qword_27F95DCA8)
  {
    sub_25878E240(255, &qword_27F95DCA0, &type metadata for MedicalIDEditPersonalInfoModalView.TextFieldFocus, MEMORY[0x277D83D88]);
    sub_2587CC564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DCA8);
  }

  return result;
}

unint64_t sub_2587CCCBC()
{
  result = qword_27F95DCB0;
  if (!qword_27F95DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DCB0);
  }

  return result;
}

void sub_2587CCD2C()
{
  if (!qword_27F95DCB8)
  {
    sub_2587CCDC0(255);
    sub_2587CCFE0(&qword_27F95DD30, sub_2587CCDC0);
    v0 = sub_2588BCD08();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DCB8);
    }
  }
}

void sub_2587CCDF4()
{
  if (!qword_27F95DCC8)
  {
    sub_2587CCE98(255);
    sub_2587CD250(255, &qword_27F95DCF8, sub_2587CD028);
    sub_2587CD1FC(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95DCC8);
    }
  }
}

void sub_2587CCEEC()
{
  if (!qword_27F95DCE0)
  {
    sub_2588BCA98();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DCE0);
    }
  }
}

void sub_2587CCF4C()
{
  if (!qword_27F95DCE8)
  {
    sub_2588BC938();
    sub_2587CCFE0(&qword_27F95DCF0, MEMORY[0x277CDE350]);
    v0 = sub_2588BC8A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DCE8);
    }
  }
}

uint64_t sub_2587CCFE0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2587CD05C()
{
  if (!qword_27F95DD08)
  {
    sub_2587CD0E4();
    type metadata accessor for EditDateOfBirthCellView();
    type metadata accessor for EditPrimaryLanguageCellView();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95DD08);
    }
  }
}

void sub_2587CD0E4()
{
  if (!qword_27F95DD10)
  {
    sub_25878E240(255, &qword_27F95DCA0, &type metadata for MedicalIDEditPersonalInfoModalView.TextFieldFocus, MEMORY[0x277D83D88]);
    sub_2587CD1A8();
    sub_2587CCC1C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95DD10);
    }
  }
}

unint64_t sub_2587CD1A8()
{
  result = qword_27F95DD18;
  if (!qword_27F95DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DD18);
  }

  return result;
}

void sub_2587CD250(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BD518();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2587CD2B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587CD318()
{
  v1 = *(type metadata accessor for MedicalIDEditPersonalInfoModalView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2587AE310;

  return sub_2587C99EC();
}

void sub_2587CD3E4()
{
  if (!qword_27F95DD38)
  {
    sub_2587CD478();
    sub_2587CCFE0(&qword_27F95DD60, sub_2587CD478);
    v0 = type metadata accessor for MedicalIDEditModal();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DD38);
    }
  }
}

void sub_2587CD478()
{
  if (!qword_27F95DD40)
  {
    sub_2587CD50C(255, &qword_27F95DD48, sub_2587CCD2C, sub_2587AA6D0);
    sub_2587CD580();
    v0 = sub_2588BC2C8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DD40);
    }
  }
}

void sub_2587CD50C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_2588BC1E8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2587CD580()
{
  result = qword_27F95DD50;
  if (!qword_27F95DD50)
  {
    sub_2587CD50C(255, &qword_27F95DD48, sub_2587CCD2C, sub_2587AA6D0);
    sub_2587CCFE0(&qword_27F95DD58, sub_2587CCD2C);
    sub_2587CCFE0(&qword_27F95D620, sub_2587AA6D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DD50);
  }

  return result;
}

void sub_2587CD698(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2587CCD2C();
  v6 = v2 + ((*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80));

  sub_2587C88BC(a1, v6, a2);
}

void sub_2587CD718()
{
  v1 = *(type metadata accessor for MedicalIDEditPersonalInfoModalView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_2587CBB10(v2);
}

void sub_2587CD778()
{
  if (!qword_27F95DD68)
  {
    sub_2587CD3E4();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DD68);
    }
  }
}

uint64_t objectdestroy_16Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  (*(v3 + 8))(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_2587CD868(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, *a2, *(a2 + 8), *(a2 + 16));
}

uint64_t sub_2587CD89C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8[0] = a2;
  v8[1] = a3;
  v9 = a4 & 1;
  return v5(a1, v8);
}

unint64_t sub_2587CD8E4()
{
  result = qword_27F95DD78;
  if (!qword_27F95DD78)
  {
    sub_2587CCEEC();
    sub_2587CD994();
    sub_2587CCFE0(&qword_27F95D9D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DD78);
  }

  return result;
}

unint64_t sub_2587CD994()
{
  result = qword_27F95DD80;
  if (!qword_27F95DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DD80);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for MedicalIDEditPersonalInfoModalView();
  v60 = *(*(v1 - 1) + 80);
  v59 = *(*(v1 - 1) + 64);
  v2 = v0 + ((v60 + 16) & ~v60);
  v3 = *(v2 + 8);

  v4 = *(v2 + 16);

  v5 = *(v2 + 32);

  v6 = *(v2 + 48);

  v7 = *(v2 + 64);

  v8 = *(v2 + 80);

  v9 = type metadata accessor for MedicalIDData();
  v10 = v9[13];
  v11 = sub_2588BB9B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v2 + v10, 1, v11))
  {
    (*(v12 + 8))(v2 + v10, v11);
  }

  v14 = v9[14];
  if (!v13(v2 + v14, 1, v11))
  {
    (*(v12 + 8))(v2 + v14, v11);
  }

  v15 = *(v2 + v9[15] + 8);

  v16 = (v2 + v9[18]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_2587C2610(*v16, v17);
  }

  v18 = v9[19];
  v19 = sub_2588BB818();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v2 + v18, 1, v19))
  {
    (*(v20 + 8))(v2 + v18, v19);
  }

  v21 = v9[21];
  if (!v13(v2 + v21, 1, v11))
  {
    (*(v12 + 8))(v2 + v21, v11);
  }

  v22 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v23 = v22[5];
  v24 = sub_2588BBB48();
  v58 = *(*(v24 - 8) + 8);
  v58(v2 + v23, v24);
  v25 = v22[6];
  v26 = sub_2588BBAC8();
  v27 = v2 + v25;
  v28 = *(*(v26 - 8) + 8);
  v28(v27, v26);

  v29 = *(v2 + v22[9] + 8);

  v30 = (v2 + v1[5]);
  v31 = v30[1];
  if (v31 >> 60 != 15)
  {
    sub_2587C2610(*v30, v31);
  }

  v32 = v30[2];

  v33 = v2 + v1[6];
  v34 = *(v33 + 8);

  v35 = *(v33 + 16);

  v36 = v2 + v1[7];
  if (!v13(v36, 1, v11))
  {
    (*(v12 + 8))(v36, v11);
  }

  sub_2587CC6E8(0);
  v38 = *(v36 + *(v37 + 28));

  v39 = *(v2 + v1[8] + 8);

  v40 = (v2 + v1[9]);
  if (v40[1])
  {

    v41 = v40[3];

    v42 = v40[4];

    v43 = v40[6];
  }

  v44 = v40[7];

  v45 = *(v2 + v1[10]);

  v46 = v1[11];
  sub_2587CC500(0, &qword_27F95DB18, MEMORY[0x28220C228], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v58(v2 + v46, v24);
  }

  else
  {
    v47 = *(v2 + v46);
  }

  v48 = v1[12];
  sub_2587CC500(0, &qword_27F95DB20, MEMORY[0x28220C148], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28(v2 + v48, v26);
  }

  else
  {
    v49 = *(v2 + v48);
  }

  v50 = v1[13];
  sub_2587CC500(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v51 = sub_2588BC038();
    (*(*(v51 - 8) + 8))(v2 + v50, v51);
  }

  else
  {
    v52 = *(v2 + v50);
  }

  v53 = *(v2 + v1[14]);

  v54 = *(v2 + v1[16] + 8);

  v55 = *(v2 + v1[17] + 8);

  v56 = *(v2 + v1[19]);

  return swift_deallocObject();
}

unint64_t sub_2587CE078()
{
  result = qword_27F95DDA8;
  if (!qword_27F95DDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DDA8);
  }

  return result;
}

unint64_t sub_2587CE0CC()
{
  result = qword_27F95DDB0;
  if (!qword_27F95DDB0)
  {
    sub_2587CD778();
    sub_2587CCFE0(&qword_27F95DDB8, sub_2587CD3E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DDB0);
  }

  return result;
}

uint64_t sub_2587CE180(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2587CE1C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2587CE240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_2587CEE3C();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1)
  {
    if ([*a1 isLockScreen])
    {
      sub_2587CE474(v18);
      nullsub_1(v18);
      memcpy(v19, v18, sizeof(v19));
    }

    else
    {
      sub_2587CEF2C(v19);
    }

    memcpy(v16, v19, sizeof(v16));
    v12 = *(v8 + 16);
    v12(v11, a2, v7);
    memcpy(v17, v16, sizeof(v17));
    memcpy(a3, v16, 0x138uLL);
    sub_2587CEB00();
    v12(&a3[*(v13 + 48)], v11, v7);
    sub_2587CEF60(v17, v18, sub_2587CEB70);
    (*(v8 + 8))(v11, v7);
    memcpy(v18, v16, sizeof(v18));
    return sub_2587CEFC8(v18, sub_2587CEB70);
  }

  else
  {
    v15 = *(a1 + 8);
    sub_2587CEE98();
    sub_2587CEEE4(&qword_27F95DAE8, sub_2587CEE98);
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

double sub_2587CE474@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BC6E8();
  v40 = 0;
  sub_2587CE714(v1, &v30);
  v48 = v36;
  v49 = v37;
  v50 = v38;
  v44 = v32;
  v45 = v33;
  v46 = v34;
  v47 = v35;
  v42 = v30;
  v43 = v31;
  v51[6] = v36;
  v51[7] = v37;
  v51[8] = v38;
  v51[2] = v32;
  v51[3] = v33;
  v51[4] = v34;
  v51[5] = v35;
  v51[0] = v30;
  v51[1] = v31;
  sub_2587CEF60(&v42, v29, sub_2587CED20);
  sub_2587CEFC8(v51, sub_2587CED20);
  *&v39[87] = v47;
  *&v39[103] = v48;
  *&v39[119] = v49;
  *&v39[135] = v50;
  *&v39[23] = v43;
  *&v39[39] = v44;
  *&v39[55] = v45;
  *&v39[71] = v46;
  *&v39[7] = v42;
  v4 = v40;
  v5 = sub_2588BCBA8();
  v30 = *(v1 + 16);
  *&v31 = *(v1 + 32);
  sub_2587CF07C(0, &qword_27F95DE28, MEMORY[0x277D85048], MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0](v29);
  sub_2588BBE38();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  LOBYTE(v30) = 0;
  v14 = sub_2588BCB78();
  sub_2588BBE38();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  LOBYTE(v29[0]) = 0;
  sub_2588BD5B8();
  sub_2588BC018();
  *&v41[7] = v30;
  *&v41[23] = v31;
  *&v41[39] = v32;
  v23 = *&v39[112];
  *(a1 + 113) = *&v39[96];
  *(a1 + 129) = v23;
  *(a1 + 145) = *&v39[128];
  v24 = *&v39[48];
  *(a1 + 49) = *&v39[32];
  *(a1 + 65) = v24;
  v25 = *&v39[80];
  *(a1 + 81) = *&v39[64];
  *(a1 + 97) = v25;
  v26 = *&v39[16];
  *(a1 + 17) = *v39;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  *(a1 + 160) = *&v39[143];
  *(a1 + 33) = v26;
  *(a1 + 168) = v5;
  *(a1 + 176) = v7;
  *(a1 + 184) = v9;
  *(a1 + 192) = v11;
  *(a1 + 200) = v13;
  *(a1 + 208) = 0;
  *(a1 + 216) = v14;
  *(a1 + 224) = v16;
  *(a1 + 232) = v18;
  *(a1 + 240) = v20;
  *(a1 + 248) = v22;
  *(a1 + 256) = 0;
  v27 = *&v41[16];
  *(a1 + 257) = *v41;
  *(a1 + 273) = v27;
  result = *&v41[32];
  *(a1 + 289) = *&v41[32];
  *(a1 + 304) = *&v41[47];
  return result;
}

uint64_t sub_2587CE714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v44 = *(a1 + 40);
  v4 = v44;
  sub_2587CF028();
  swift_retain_n();
  v5 = MEMORY[0x277CE0F78];
  v6 = sub_2588BD218();
  v40 = *(a1 + 16);
  v41 = *(a1 + 32);
  v44 = *(a1 + 16);
  *&v45 = *(a1 + 32);
  sub_2587CF07C(0, &qword_27F95DE28, MEMORY[0x277D85048], MEMORY[0x277CE11F8]);
  v8 = v7;
  MEMORY[0x259C8C5A0](v42);
  sub_2588BD5C8();
  sub_2588BC018();
  v9 = v32;
  v22 = v33;
  v23 = v31;
  v10 = v34;
  v20 = v36;
  v21 = v35;
  sub_2587CF07C(0, &qword_27F95DE38, v5, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2588BFF50;
  v12 = *(a1 + 48);
  *(v11 + 32) = v4;
  *(v11 + 40) = v12;

  sub_2588BD678();
  sub_2588BD688();
  MEMORY[0x259C8C6F0](v11);
  sub_2588BC0F8();
  v44 = v40;
  *&v45 = v41;
  MEMORY[0x259C8C5A0](v42, v8);
  sub_2588BD5C8();
  sub_2588BC018();
  *&v27 = v39;
  v25 = v37;
  v26 = v38;
  v24[96] = v9;
  v24[88] = v10;
  v13 = v28;
  v14 = v30;
  v43 = v30;
  v42[0] = v37;
  v42[1] = v38;
  v15 = v27;
  v42[3] = v28;
  v42[4] = v29;
  v42[2] = v27;
  *a2 = v6;
  *(a2 + 8) = v23;
  *(a2 + 16) = v9;
  *(a2 + 24) = v22;
  *(a2 + 32) = v10;
  *(a2 + 40) = v21;
  *(a2 + 48) = v20;
  *(a2 + 88) = v15;
  *(a2 + 104) = v13;
  v16 = v29;
  *(a2 + 120) = v29;
  *(a2 + 136) = v14;
  v17 = v25;
  v18 = v26;
  *(a2 + 56) = v25;
  *(a2 + 72) = v18;
  v49 = v14;
  v46 = v15;
  v47 = v13;
  v48 = v16;
  v44 = v17;
  v45 = v18;

  sub_2587CF0CC(v42, v24);
  sub_2587CF140(&v44);
}

uint64_t sub_2587CE9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v5;
  v8[2] = *(v2 + 32);
  v9 = *(v2 + 48);
  *a2 = sub_2588BC6E8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_2587CEA64();
  return sub_2587CE240(v8, a1, (a2 + *(v6 + 44)));
}

void sub_2587CEA64()
{
  if (!qword_27F95DDC0)
  {
    sub_2587CEACC(255);
    v0 = sub_2588BC0B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DDC0);
    }
  }
}

void sub_2587CEB00()
{
  if (!qword_27F95DDD0)
  {
    sub_2587CEB70(255);
    sub_2587CEE3C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95DDD0);
    }
  }
}

void sub_2587CEBA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2587CEC58(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2587CED54()
{
  if (!qword_27F95DE08)
  {
    sub_2587CEDE4(255, &qword_27F95D270);
    sub_2587CEDE4(255, &qword_27F95DE10);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95DE08);
    }
  }
}

void sub_2587CEDE4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2588BC1E8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2587CEE3C()
{
  if (!qword_27F95DE20)
  {
    sub_2587A8EB8();
    v0 = sub_2588BC8B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DE20);
    }
  }
}

unint64_t sub_2587CEE98()
{
  result = qword_27F95D3C0;
  if (!qword_27F95D3C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F95D3C0);
  }

  return result;
}

uint64_t sub_2587CEEE4(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_2587CEF2C(uint64_t a1)
{
  *(a1 + 304) = 0;
  result = 0.0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_2587CEF60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587CEFC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2587CF028()
{
  result = qword_27F95DE30;
  if (!qword_27F95DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DE30);
  }

  return result;
}

void sub_2587CF07C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2587CF0CC(uint64_t a1, uint64_t a2)
{
  sub_2587CEDE4(0, &qword_27F95DE10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587CF140(uint64_t a1)
{
  sub_2587CEDE4(0, &qword_27F95DE10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2587CF1E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2587CEEE4(a4, a5);
    v8 = sub_2588BD408();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t _s12SheetContentVMa()
{
  result = qword_27F95DE58;
  if (!qword_27F95DE58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2587CF2F0()
{
  result = type metadata accessor for MedicalIDDataViewModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MedicalIDModelProvider();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2587CF3A0@<X0>(uint64_t a1@<X8>)
{
  v199 = a1;
  v182 = type metadata accessor for MedicalIDEditMedicalNotesModalView();
  v2 = *(*(v182 - 8) + 64);
  MEMORY[0x28223BE20](v182);
  v172 = &v169 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277CE0330];
  sub_2587D1058(0, &qword_27F95DE68, MEMORY[0x277CE0330]);
  v179 = v5;
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v181 = (&v169 - v7);
  v8 = MEMORY[0x277CE0338];
  sub_2587D1058(0, &qword_27F95DE70, MEMORY[0x277CE0338]);
  v193 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v183 = &v169 - v11;
  sub_2587D1118(0, &qword_27F95DE78, v4);
  v191 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v192 = &v169 - v14;
  sub_2587D1118(0, &qword_27F95DE88, v8);
  v198 = v15;
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v194 = &v169 - v17;
  v18 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v184 = (&v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v185 = &v169 - v22;
  v178 = type metadata accessor for MedicalIDEditEmergencyContactsModalView(0);
  v23 = *(*(v178 - 8) + 64);
  MEMORY[0x28223BE20](v178);
  v171 = (&v169 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x277CE0330];
  sub_2587D11EC(0, &qword_27F95DE90, type metadata accessor for MedicalIDEditBiometricsModalView, type metadata accessor for MedicalIDEditEmergencyContactsModalView, MEMORY[0x277CE0330]);
  v175 = v26;
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v177 = &v169 - v28;
  sub_2587D11A4(0);
  v190 = v29;
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v180 = &v169 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for MedicalIDBiometricsViewModel();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v169 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for MedicalIDEditBiometricsModalView();
  v36 = *(*(v176 - 8) + 64);
  MEMORY[0x28223BE20](v176);
  v170 = &v169 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for MedicalIDPregnancyViewModel();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v41 = &v169 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for MedicalIDEditPregnancyModalView();
  v42 = *(*(v174 - 8) + 64);
  MEMORY[0x28223BE20](v174);
  v169 = &v169 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587D1270(0, &qword_27F95DEA0, MEMORY[0x277CE0330]);
  v195 = v44;
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v197 = &v169 - v46;
  sub_2587D11EC(0, &qword_27F95DEB8, sub_2587D1344, sub_2587D11A4, v25);
  v186 = v47;
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v188 = &v169 - v49;
  sub_2587D11EC(0, &qword_27F95DEC0, type metadata accessor for MedicalIDEditPersonalInfoModalView, type metadata accessor for MedicalIDEditPregnancyModalView, v25);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v53 = &v169 - v52;
  sub_2587D1344(0);
  v187 = v54;
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v173 = &v169 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587D12FC(0);
  v196 = v57;
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v189 = &v169 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60 - 8);
  v63 = (&v169 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = type metadata accessor for MedicalIDEditPersonalInfoModalView();
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v67 = &v169 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v1;
  v69 = *v1;
  if (v69 <= 3)
  {
    if (*v1 <= 1u)
    {
      if (*v1)
      {
        v133 = &v1[*(_s12SheetContentVMa() + 20)];
        v134 = type metadata accessor for MedicalIDDataViewModel();
        sub_2587D1B0C(&v133[*(v134 + 48)], v41, type metadata accessor for MedicalIDPregnancyViewModel);
        v135 = v169;
        sub_2587EB348(v41, v169);
        sub_2587D1B0C(v135, v53, type metadata accessor for MedicalIDEditPregnancyModalView);
        swift_storeEnumTagMultiPayload();
        sub_2587D1868(&qword_27F95DF08, type metadata accessor for MedicalIDEditPersonalInfoModalView);
        sub_2587D1868(&qword_27F95DF10, type metadata accessor for MedicalIDEditPregnancyModalView);
        v136 = v173;
        sub_2588BC778();
        sub_2587D1B0C(v136, v188, sub_2587D1344);
        swift_storeEnumTagMultiPayload();
        sub_2587D16A8();
        sub_2587D1788();
        v137 = v189;
        sub_2588BC778();
        sub_2587D1A08(v136, sub_2587D1344);
        sub_2587D1B0C(v137, v197, sub_2587D12FC);
        swift_storeEnumTagMultiPayload();
        sub_2587D15D4();
        sub_2587D18B0();
        sub_2588BC778();
        sub_2587D1A08(v137, sub_2587D12FC);
        v78 = type metadata accessor for MedicalIDEditPregnancyModalView;
        v79 = v135;
      }

      else
      {
        v70 = _s12SheetContentVMa();
        v71 = &v1[*(v70 + 20)];
        v72 = type metadata accessor for MedicalIDDataViewModel();
        sub_2587D1B0C(&v71[*(v72 + 40)], v63, type metadata accessor for MedicalIDPersonalInfoViewModel);
        v73 = *&v1[*(v70 + 24)];
        v74 = *(v73 + 24);
        v75 = *(*(v73 + 32) + 16);

        sub_2587C8D9C(v63, v75, v74, v67);
        sub_2587D1B0C(v67, v53, type metadata accessor for MedicalIDEditPersonalInfoModalView);
        swift_storeEnumTagMultiPayload();
        sub_2587D1868(&qword_27F95DF08, type metadata accessor for MedicalIDEditPersonalInfoModalView);
        sub_2587D1868(&qword_27F95DF10, type metadata accessor for MedicalIDEditPregnancyModalView);
        v76 = v173;
        sub_2588BC778();
        sub_2587D1B0C(v76, v188, sub_2587D1344);
        swift_storeEnumTagMultiPayload();
        sub_2587D16A8();
        sub_2587D1788();
        v77 = v189;
        sub_2588BC778();
        sub_2587D1A08(v76, sub_2587D1344);
        sub_2587D1B0C(v77, v197, sub_2587D12FC);
        swift_storeEnumTagMultiPayload();
        sub_2587D15D4();
        sub_2587D18B0();
        sub_2588BC778();
        sub_2587D1A08(v77, sub_2587D12FC);
        v78 = type metadata accessor for MedicalIDEditPersonalInfoModalView;
        v79 = v67;
      }

      return sub_2587D1A08(v79, v78);
    }

    if (v69 == 2)
    {
      v103 = &v1[*(_s12SheetContentVMa() + 20)];
      v104 = type metadata accessor for MedicalIDDataViewModel();
      v105 = v185;
      sub_2587D1B0C(&v103[*(v104 + 44)], v185, type metadata accessor for MedicalIDMedicalInfoViewModel);
      v106 = v184;
      sub_2587D1B0C(v105, v184, type metadata accessor for MedicalIDMedicalInfoViewModel);
      v107 = sub_2588BD858();
      v108 = *(*(v107 - 8) + 64);
      MEMORY[0x28223BE20](v107 - 8);
      sub_2588BD7E8();
      if (qword_27F95D000 != -1)
      {
        swift_once();
      }

      v109 = qword_27F95DA88;
      v110 = sub_2588BBAC8();
      v111 = *(*(v110 - 8) + 64);
      MEMORY[0x28223BE20](v110 - 8);
      v112 = v109;
      sub_2588BBAB8();
      v113 = sub_2588BD8B8();
      sub_25887C604(v106, v113, v114, &v207);
      sub_2587D1A08(v105, type metadata accessor for MedicalIDMedicalInfoViewModel);
      v115 = v210;
      v116 = v181;
      v181[2] = v209;
      v116[3] = v115;
      v117 = v212;
      v116[4] = v211;
      v116[5] = v117;
      v118 = v208;
      *v116 = v207;
      v116[1] = v118;
      swift_storeEnumTagMultiPayload();
      sub_2587D138C();
      sub_2587D1868(&qword_27F95DED0, type metadata accessor for MedicalIDEditMedicalNotesModalView);
      v119 = v183;
      sub_2588BC778();
      sub_2587D1554(v119, v192, &qword_27F95DE70, sub_2587D1058);
      swift_storeEnumTagMultiPayload();
      sub_2587D10C0();
      sub_2587D161C(&qword_27F95DED8, sub_2587D10C0, sub_2587D13E0, sub_2587D1434);
      sub_2587D1488();
      v120 = v194;
      sub_2588BC778();
      sub_2587D1990(v119, &qword_27F95DE70, sub_2587D1058);
      goto LABEL_23;
    }

    v146 = &v1[*(_s12SheetContentVMa() + 20)];
    v147 = type metadata accessor for MedicalIDDataViewModel();
    v148 = v185;
    sub_2587D1B0C(&v146[*(v147 + 44)], v185, type metadata accessor for MedicalIDMedicalInfoViewModel);
    v149 = v184;
    sub_2587D1B0C(v148, v184, type metadata accessor for MedicalIDMedicalInfoViewModel);
    v150 = sub_2588BD858();
    v151 = *(*(v150 - 8) + 64);
    MEMORY[0x28223BE20](v150 - 8);
    sub_2588BD7E8();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v152 = qword_27F95DA88;
    v153 = sub_2588BBAC8();
    v154 = *(*(v153 - 8) + 64);
    MEMORY[0x28223BE20](v153 - 8);
    v155 = v152;
    sub_2588BBAB8();
    v156 = sub_2588BD8B8();
    sub_25887BEA8(v149, v156, v157, &v215);
    sub_2587D1A08(v148, type metadata accessor for MedicalIDMedicalInfoViewModel);
    v214 = 0;
    v202 = v217;
    v203 = v218;
    v204 = v219;
    v205 = v220;
    v200 = v215;
    v201 = v216;
    v206 = 0;
LABEL_22:
    sub_2587D13E0();
    sub_2587D1434();
    sub_2588BC778();
    v158 = v212;
    v159 = v192;
    *(v192 + 64) = v211;
    *(v159 + 80) = v158;
    *(v159 + 96) = v213;
    v160 = v208;
    *v159 = v207;
    *(v159 + 16) = v160;
    v161 = v210;
    *(v159 + 32) = v209;
    *(v159 + 48) = v161;
    swift_storeEnumTagMultiPayload();
    sub_2587D10C0();
    sub_2587D161C(&qword_27F95DED8, sub_2587D10C0, sub_2587D13E0, sub_2587D1434);
    sub_2587D1488();
    v120 = v194;
    sub_2588BC778();
LABEL_23:
    sub_2587D1554(v120, v197, &qword_27F95DE88, sub_2587D1118);
    swift_storeEnumTagMultiPayload();
    sub_2587D15D4();
    sub_2587D18B0();
    sub_2588BC778();
    return sub_2587D1990(v120, &qword_27F95DE88, sub_2587D1118);
  }

  if (*v1 <= 5u)
  {
    if (v69 == 4)
    {
      v80 = *&v1[*(_s12SheetContentVMa() + 24)];
      v81 = *(v80 + 16);
      v82 = *(v81 + 32);

      os_unfair_lock_lock((v82 + 24));
      v83 = *(v82 + 16);

      os_unfair_lock_unlock((v82 + 24));
      swift_beginAccess();
      v84 = *(v81 + 40);
      v85 = type metadata accessor for MedicalIDEditableEmergencyContactsModel();
      v86 = *(v85 + 48);
      v87 = *(v85 + 52);
      v88 = swift_allocObject();
      LOBYTE(v207) = 4;

      v88[4] = MedicalIDDisplaySection.baseIdentifier.getter();
      v88[5] = v89;
      sub_2588BBBC8();
      v88[2] = v84;
      v88[3] = v83;

      v90 = *(*(v80 + 32) + 16);
      type metadata accessor for MedicalIDDataManager();
      sub_2587D1868(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
      v91 = v90;
      v92 = sub_2588BBF58();
      v93 = v171;
      *v171 = v92;
      *(v93 + 8) = v94 & 1;
      *(v93 + 16) = v88;
      *(v93 + 24) = v91;
      sub_2587D1A68();
      v200 = 0u;
      v201 = 0u;
      v202 = 0u;
      *&v203 = 0;
      sub_2588BD2B8();
      v95 = v208;
      *(v93 + 32) = v207;
      *(v93 + 48) = v95;
      v96 = v210;
      *(v93 + 64) = v209;
      *(v93 + 80) = v96;
      v97 = v178;
      v98 = *(v178 + 32);
      *(v93 + v98) = swift_getKeyPath();
      sub_2587D1AB8(0, &qword_27F95DB20, MEMORY[0x28220C140]);
      swift_storeEnumTagMultiPayload();
      v99 = *(v97 + 36);
      *(v93 + v99) = swift_getKeyPath();
      sub_2587D1AB8(0, &qword_27F95DB30, MEMORY[0x277CDD848]);
      swift_storeEnumTagMultiPayload();
      sub_2587D1B0C(v93, v177, type metadata accessor for MedicalIDEditEmergencyContactsModalView);
      swift_storeEnumTagMultiPayload();
      sub_2587D1868(&qword_27F95DF20, type metadata accessor for MedicalIDEditBiometricsModalView);
      sub_2587D1868(&qword_27F95DF28, type metadata accessor for MedicalIDEditEmergencyContactsModalView);
      v100 = v180;
      sub_2588BC778();
      sub_2587D1B0C(v100, v188, sub_2587D11A4);
      swift_storeEnumTagMultiPayload();
      sub_2587D16A8();
      sub_2587D1788();
      v101 = v189;
      sub_2588BC778();
      sub_2587D1A08(v100, sub_2587D11A4);
      sub_2587D1B0C(v101, v197, sub_2587D12FC);
      swift_storeEnumTagMultiPayload();
      sub_2587D15D4();
      sub_2587D18B0();
      sub_2588BC778();
      sub_2587D1A08(v101, sub_2587D12FC);
      v102 = type metadata accessor for MedicalIDEditEmergencyContactsModalView;
    }

    else
    {
      v138 = _s12SheetContentVMa();
      v139 = &v68[*(v138 + 20)];
      v140 = type metadata accessor for MedicalIDDataViewModel();
      sub_2587D1B0C(&v139[*(v140 + 36)], v35, type metadata accessor for MedicalIDBiometricsViewModel);
      v141 = *&v68[*(v138 + 24)];
      v142 = *(v141 + 24);
      v143 = *(*(v141 + 32) + 16);

      v93 = v170;
      sub_2588A5694(v35, v143, v142, v170);
      sub_2587D1B0C(v93, v177, type metadata accessor for MedicalIDEditBiometricsModalView);
      swift_storeEnumTagMultiPayload();
      sub_2587D1868(&qword_27F95DF20, type metadata accessor for MedicalIDEditBiometricsModalView);
      sub_2587D1868(&qword_27F95DF28, type metadata accessor for MedicalIDEditEmergencyContactsModalView);
      v144 = v180;
      sub_2588BC778();
      sub_2587D1B0C(v144, v188, sub_2587D11A4);
      swift_storeEnumTagMultiPayload();
      sub_2587D16A8();
      sub_2587D1788();
      v145 = v189;
      sub_2588BC778();
      sub_2587D1A08(v144, sub_2587D11A4);
      sub_2587D1B0C(v145, v197, sub_2587D12FC);
      swift_storeEnumTagMultiPayload();
      sub_2587D15D4();
      sub_2587D18B0();
      sub_2588BC778();
      sub_2587D1A08(v145, sub_2587D12FC);
      v102 = type metadata accessor for MedicalIDEditBiometricsModalView;
    }

    v78 = v102;
    v79 = v93;
    return sub_2587D1A08(v79, v78);
  }

  if (v69 == 6)
  {
    v121 = &v1[*(_s12SheetContentVMa() + 20)];
    v122 = type metadata accessor for MedicalIDDataViewModel();
    v123 = v185;
    sub_2587D1B0C(&v121[*(v122 + 44)], v185, type metadata accessor for MedicalIDMedicalInfoViewModel);
    v124 = v184;
    sub_2587D1B0C(v123, v184, type metadata accessor for MedicalIDMedicalInfoViewModel);
    v125 = sub_2588BD858();
    v126 = *(*(v125 - 8) + 64);
    MEMORY[0x28223BE20](v125 - 8);
    sub_2588BD7E8();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v127 = qword_27F95DA88;
    v128 = sub_2588BBAC8();
    v129 = *(*(v128 - 8) + 64);
    MEMORY[0x28223BE20](v128 - 8);
    v130 = v127;
    sub_2588BBAB8();
    v131 = sub_2588BD8B8();
    sub_25887C284(v124, v131, v132, &v215);
    sub_2587D1A08(v123, type metadata accessor for MedicalIDMedicalInfoViewModel);
    v214 = 1;
    v202 = v217;
    v203 = v218;
    v204 = v219;
    v205 = v220;
    v200 = v215;
    v201 = v216;
    v206 = 1;
    goto LABEL_22;
  }

  v163 = &v1[*(_s12SheetContentVMa() + 20)];
  v164 = type metadata accessor for MedicalIDDataViewModel();
  v165 = v172;
  sub_2587D1B0C(&v163[*(v164 + 44)], &v172[*(v182 + 20)], type metadata accessor for MedicalIDMedicalInfoViewModel);
  type metadata accessor for MedicalIDDataManager();
  sub_2587D1868(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  *v165 = sub_2588BBF58();
  *(v165 + 8) = v166 & 1;
  sub_2587D1B0C(v165, v181, type metadata accessor for MedicalIDEditMedicalNotesModalView);
  swift_storeEnumTagMultiPayload();
  sub_2587D138C();
  sub_2587D1868(&qword_27F95DED0, type metadata accessor for MedicalIDEditMedicalNotesModalView);
  v167 = v183;
  sub_2588BC778();
  sub_2587D1554(v167, v192, &qword_27F95DE70, sub_2587D1058);
  swift_storeEnumTagMultiPayload();
  sub_2587D10C0();
  sub_2587D161C(&qword_27F95DED8, sub_2587D10C0, sub_2587D13E0, sub_2587D1434);
  sub_2587D1488();
  v168 = v194;
  sub_2588BC778();
  sub_2587D1990(v167, &qword_27F95DE70, sub_2587D1058);
  sub_2587D1554(v168, v197, &qword_27F95DE88, sub_2587D1118);
  swift_storeEnumTagMultiPayload();
  sub_2587D15D4();
  sub_2587D18B0();
  sub_2588BC778();
  sub_2587D1990(v168, &qword_27F95DE88, sub_2587D1118);
  v78 = type metadata accessor for MedicalIDEditMedicalNotesModalView;
  v79 = v165;
  return sub_2587D1A08(v79, v78);
}

void sub_2587D1058(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MedicalIDEditMedicalNotesModalView();
    v7 = a3(a1, &type metadata for MedicalIDEditMedicationsModalView, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2587D10C0()
{
  if (!qword_27F95DE80)
  {
    v0 = sub_2588BC788();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DE80);
    }
  }
}

void sub_2587D1118(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2587D10C0();
    v7 = v6;
    sub_2587D1058(255, &qword_27F95DE70, MEMORY[0x277CE0338]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2587D11EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_2587D1270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2587D12FC(255);
    v7 = v6;
    sub_2587D1118(255, &qword_27F95DE88, MEMORY[0x277CE0338]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2587D138C()
{
  result = qword_27F95DEC8;
  if (!qword_27F95DEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DEC8);
  }

  return result;
}

unint64_t sub_2587D13E0()
{
  result = qword_27F95DEE0;
  if (!qword_27F95DEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DEE0);
  }

  return result;
}

unint64_t sub_2587D1434()
{
  result = qword_27F95DEE8;
  if (!qword_27F95DEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DEE8);
  }

  return result;
}

unint64_t sub_2587D1488()
{
  result = qword_27F95DEF0;
  if (!qword_27F95DEF0)
  {
    sub_2587D1058(255, &qword_27F95DE70, MEMORY[0x277CE0338]);
    sub_2587D138C();
    sub_2587D1868(&qword_27F95DED0, type metadata accessor for MedicalIDEditMedicalNotesModalView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DEF0);
  }

  return result;
}

uint64_t sub_2587D1554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void))
{
  v6 = a4(0, a3, MEMORY[0x277CE0338]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2587D161C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2587D16A8()
{
  result = qword_27F95DF00;
  if (!qword_27F95DF00)
  {
    sub_2587D1344(255);
    sub_2587D1868(&qword_27F95DF08, type metadata accessor for MedicalIDEditPersonalInfoModalView);
    sub_2587D1868(&qword_27F95DF10, type metadata accessor for MedicalIDEditPregnancyModalView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DF00);
  }

  return result;
}

unint64_t sub_2587D1788()
{
  result = qword_27F95DF18;
  if (!qword_27F95DF18)
  {
    sub_2587D11A4(255);
    sub_2587D1868(&qword_27F95DF20, type metadata accessor for MedicalIDEditBiometricsModalView);
    sub_2587D1868(&qword_27F95DF28, type metadata accessor for MedicalIDEditEmergencyContactsModalView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DF18);
  }

  return result;
}

uint64_t sub_2587D1868(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2587D18B0()
{
  result = qword_27F95DF30;
  if (!qword_27F95DF30)
  {
    sub_2587D1118(255, &qword_27F95DE88, MEMORY[0x277CE0338]);
    sub_2587D161C(&qword_27F95DED8, sub_2587D10C0, sub_2587D13E0, sub_2587D1434);
    sub_2587D1488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DF30);
  }

  return result;
}

uint64_t sub_2587D1990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, void))
{
  v4 = a3(0, a2, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2587D1A08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2587D1A68()
{
  if (!qword_27F95DC40)
  {
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DC40);
    }
  }
}

void sub_2587D1AB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BBF38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2587D1B0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2587D1BA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2587D1BF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2587D1C44()
{
  result = qword_27F95DF48;
  if (!qword_27F95DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DF48);
  }

  return result;
}

uint64_t sub_2587D1C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D129C0]) initWithMedicalIDData_];
  if (v6)
  {
    v7 = qword_27F95D0A8;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_2588BD868();
    [v8 setCompletionButtonTitle_];

    aBlock[4] = a3;
    aBlock[5] = a4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2587D1E1C;
    aBlock[3] = &block_descriptor_1;
    v10 = _Block_copy(aBlock);

    [v8 setRegistrationCompletionHandler_];
    _Block_release(v10);

    return v8;
  }

  else
  {
    result = sub_2588BDED8();
    __break(1u);
  }

  return result;
}

uint64_t sub_2587D1E1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_2587D1ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2587D1FC0();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2587D1F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2587D1FC0();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2587D1F98()
{
  sub_2587D1FC0();
  sub_2588BCA58();
  __break(1u);
}

unint64_t sub_2587D1FC0()
{
  result = qword_27F95DF50;
  if (!qword_27F95DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DF50);
  }

  return result;
}

id MedicalIDEmergencyContact.asHKEmergencyContact.getter()
{
  v0 = sub_2587D294C();

  return v0;
}

uint64_t MedicalIDEmergencyContact.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MedicalIDEmergencyContact.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MedicalIDEmergencyContact.nameContactIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MedicalIDEmergencyContact.nameContactIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MedicalIDEmergencyContact.phoneNumberLabel.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MedicalIDEmergencyContact.phoneNumberLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MedicalIDEmergencyContact.phoneNumber.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t MedicalIDEmergencyContact.phoneNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t MedicalIDEmergencyContact.phoneNumberContactIdentifier.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t MedicalIDEmergencyContact.phoneNumberContactIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t MedicalIDEmergencyContact.relationship.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t MedicalIDEmergencyContact.relationship.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

void *MedicalIDEmergencyContact.contact.getter()
{
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

uint64_t MedicalIDEmergencyContact.baseIdentifier.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t MedicalIDEmergencyContact.hashValue.getter()
{
  sub_2588BE038();
  MedicalIDEmergencyContact.hash(into:)();
  return sub_2588BE078();
}

uint64_t sub_2587D240C()
{
  sub_2588BE038();
  MedicalIDEmergencyContact.hash(into:)();
  return sub_2588BE078();
}

uint64_t sub_2587D2450()
{
  sub_2588BE038();
  MedicalIDEmergencyContact.hash(into:)();
  return sub_2588BE078();
}

uint64_t _s11MedicalIDUI0A18IDEmergencyContactV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v12 = a1[9];
  v11 = a1[10];
  v13 = a1[11];
  v105 = a1[12];
  v103 = a1[13];
  v14 = a1[14];
  v101 = a1[15];
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v20 = a2[5];
  v19 = a2[6];
  v22 = a2[7];
  v21 = a2[8];
  v24 = a2[9];
  v23 = a2[10];
  v25 = a2[11];
  v104 = a2[13];
  v102 = a2[14];
  v100 = a2[15];
  if (v3)
  {
    if (!v15)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v15)
    {
      v93 = a2[7];
      v96 = a2[8];
      v79 = a2[12];
      v82 = a2[4];
      v26 = a1[14];
      v27 = a1[10];
      v86 = a1[4];
      v88 = a1[5];
      v28 = a1[11];
      v75 = a2[2];
      v76 = a1[2];
      v29 = a2[11];
      v84 = a2[5];
      v30 = a2[10];
      v31 = a1[8];
      v77 = a1[9];
      v78 = a1[6];
      v32 = a2[9];
      v90 = a2[6];
      v33 = a1[7];
      v34 = sub_2588BDF98();
      v9 = v33;
      v19 = v90;
      v22 = v93;
      v12 = v77;
      v7 = v78;
      v21 = v96;
      v24 = v32;
      v10 = v31;
      v23 = v30;
      v20 = v84;
      v6 = v86;
      v25 = v29;
      v16 = v75;
      v4 = v76;
      v13 = v28;
      v8 = v88;
      v11 = v27;
      v14 = v26;
      v18 = v82;
      if ((v34 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v5)
  {
    if (!v17)
    {
      return 0;
    }

    if (v4 != v16 || v5 != v17)
    {
      v94 = v22;
      v97 = v21;
      v80 = v14;
      v83 = v18;
      v35 = v11;
      v85 = v20;
      v87 = v6;
      v36 = v13;
      v37 = v25;
      v38 = v23;
      v39 = v10;
      v40 = v12;
      v89 = v8;
      v91 = v19;
      v41 = v24;
      v42 = v7;
      v43 = v9;
      v44 = sub_2588BDF98();
      v22 = v94;
      v21 = v97;
      v9 = v43;
      v7 = v42;
      v24 = v41;
      v8 = v89;
      v19 = v91;
      v12 = v40;
      v10 = v39;
      v23 = v38;
      v25 = v37;
      v18 = v83;
      v20 = v85;
      v13 = v36;
      v6 = v87;
      v11 = v35;
      v14 = v80;
      if ((v44 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v8)
  {
    if (!v20)
    {
      return 0;
    }

    if (v6 != v18 || v8 != v20)
    {
      v95 = v22;
      v98 = v21;
      v81 = v14;
      v45 = v11;
      v46 = v13;
      v47 = v25;
      v48 = v23;
      v49 = v10;
      v50 = v12;
      v51 = v24;
      v52 = v7;
      v92 = v19;
      v53 = v9;
      v54 = sub_2588BDF98();
      v9 = v53;
      v19 = v92;
      v22 = v95;
      v7 = v52;
      v21 = v98;
      v24 = v51;
      v12 = v50;
      v10 = v49;
      v23 = v48;
      v25 = v47;
      v13 = v46;
      v11 = v45;
      v14 = v81;
      if ((v54 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v9)
  {
    if (!v22)
    {
      return 0;
    }

    if (v7 != v19 || v9 != v22)
    {
      v99 = v21;
      v55 = v14;
      v56 = v11;
      v57 = v13;
      v58 = v25;
      v59 = v23;
      v60 = v10;
      v61 = v12;
      v62 = v24;
      v63 = sub_2588BDF98();
      v21 = v99;
      v24 = v62;
      v12 = v61;
      v10 = v60;
      v23 = v59;
      v25 = v58;
      v13 = v57;
      v11 = v56;
      v14 = v55;
      if ((v63 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (v12)
  {
    if (!v24)
    {
      return 0;
    }

    if (v10 != v21 || v12 != v24)
    {
      v64 = v14;
      v65 = v11;
      v66 = v13;
      v67 = v25;
      v68 = v23;
      v69 = sub_2588BDF98();
      v23 = v68;
      v25 = v67;
      v13 = v66;
      v11 = v65;
      v14 = v64;
      if ((v69 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (v13)
  {
    if (!v25)
    {
      return 0;
    }

    v70 = v14;
    if ((v11 != v23 || v13 != v25) && (sub_2588BDF98() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v70 = v14;
    if (v25)
    {
      return 0;
    }
  }

  sub_25878E130(0, &qword_27F95D878, 0x277D82BB8);
  if ((sub_2588BDCD8() & 1) == 0)
  {
    return 0;
  }

  if (!v103)
  {
    if (!v104)
    {
      goto LABEL_47;
    }

    return 0;
  }

  if (!v104)
  {
    return 0;
  }

  sub_25878E130(0, &unk_280C0DDF0, 0x277CBDA58);
  v71 = v104;
  v72 = v103;
  v73 = sub_2588BDCD8();

  if ((v73 & 1) == 0)
  {
    return 0;
  }

LABEL_47:
  if (v70 == v102 && v101 == v100)
  {
    return 1;
  }

  return sub_2588BDF98();
}

void *sub_2587D294C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[9];
  v19 = v6;
  v20 = v0[10];
  v10 = v0[11];
  v9 = v0[12];
  if (v0[1])
  {
    v11 = *v0;
    v12 = sub_2588BD868();
  }

  else
  {
    v12 = 0;
  }

  [v9 setName_];

  if (v2)
  {
    v13 = sub_2588BD868();
  }

  else
  {
    v13 = 0;
  }

  [v9 setNameContactIdentifier_];

  if (v5)
  {
    v14 = sub_2588BD868();
  }

  else
  {
    v14 = 0;
  }

  [v9 setPhoneNumberLabel_];

  if (v7)
  {
    v15 = sub_2588BD868();
  }

  else
  {
    v15 = 0;
  }

  [v9 setPhoneNumber_];

  if (v8)
  {
    v16 = sub_2588BD868();
  }

  else
  {
    v16 = 0;
  }

  [v9 setPhoneNumberContactIdentifier_];

  if (v10)
  {
    v17 = sub_2588BD868();
  }

  else
  {
    v17 = 0;
  }

  [v9 setRelationship_];

  return v9;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_2587D2B08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2587D2B50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2587D2BD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2587D2C6C()
{
  sub_2587D2BD4(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MedicalIDEditableEmergencyContactsModel();
    if (v1 <= 0x3F)
    {
      sub_2587C87A8();
      if (v2 <= 0x3F)
      {
        sub_2587D2DD4();
        if (v3 <= 0x3F)
        {
          sub_2587D2BD4(319, &qword_27F95DAC0, MEMORY[0x28220C158], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_2587D2BD4(319, &qword_27F95DC58, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2587D2DD4()
{
  if (!qword_27F95DC88)
  {
    sub_2587D72B8(255, &qword_27F95DC40, &type metadata for BasicAlertModel, MEMORY[0x277D83D88]);
    v0 = sub_2588BD2F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DC88);
    }
  }
}

uint64_t sub_2587D2E6C()
{
  v1 = sub_2588BC598();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    sub_2588BDBE8();
    v8 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_2587D2FAC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2588BD568();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - v9;
  v11 = type metadata accessor for MedicalIDEditEmergencyContactsModalView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F95D070 != -1)
  {
    swift_once();
  }

  v15 = unk_27F95DF60;
  v42 = qword_27F95DF58;
  sub_2587D73CC(v2, &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MedicalIDEditEmergencyContactsModalView);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  sub_2587D6BFC(v14, v17 + v16, type metadata accessor for MedicalIDEditEmergencyContactsModalView);
  v18 = *(v2 + 48);
  v52 = *(v2 + 32);
  v53 = v18;
  v19 = *(v2 + 80);
  v54 = *(v2 + 64);
  v55 = v19;
  sub_2587D2DD4();

  sub_2588BD2E8();
  v55 = v50;
  v56 = v51;
  v53 = v48;
  v54 = v49;
  v52 = v47;
  *a1 = swift_getKeyPath();
  sub_2587D2BD4(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_2587D5978();
  v21 = v20;
  v22 = (a1 + v20[9]);
  *v22 = v42;
  v22[1] = v15;
  v23 = (a1 + v20[10]);
  *v23 = &unk_2588C1150;
  v23[1] = v17;
  v24 = a1 + v20[11];
  *(v24 + 8) = v56;
  v25 = v55;
  v26 = v53;
  *(v24 + 2) = v54;
  *(v24 + 3) = v25;
  *v24 = v52;
  *(v24 + 1) = v26;
  v27 = a1 + v20[12];
  v28 = *(v2 + 16);
  v29 = *(v2 + 24);
  (*(v5 + 104))(v10, *MEMORY[0x277CDF0D0], v4);
  type metadata accessor for MedicalIDEditableEmergencyContactsModel();
  sub_2587D5A2C(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel);

  v30 = v29;
  sub_2588BD548();
  v31 = type metadata accessor for MedicalIDEmergencyContactsEditView(0);
  *&v27[v31[5]] = v30;
  v32 = sub_2588BD9A8();
  v33 = HKUIJoinStringsForAutomationIdentifier();

  if (v33)
  {
    v34 = sub_2588BD8A8();
    v36 = v35;
  }

  else
  {
    v36 = 0x80000002588C8A90;
    v34 = 0xD000000000000011;
  }

  v37 = &v27[v31[6]];
  *v37 = v34;
  v37[1] = v36;
  v38 = v31[7];
  (*(v5 + 16))(v43, v10, v4);
  sub_2588BD2B8();
  (*(v5 + 8))(v10, v4);
  v39 = a1 + v21[13];
  v44 = 0;
  result = sub_2588BD2B8();
  v41 = v46;
  *v39 = v45;
  *(v39 + 1) = v41;
  return result;
}

uint64_t sub_2587D3470()
{
  v0[2] = sub_2588BDA78();
  v0[3] = sub_2588BDA68();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2587C9A98;

  return sub_2587D351C();
}

uint64_t sub_2587D351C()
{
  v1[11] = v0;
  v2 = sub_2588BC038();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  sub_2587B63B8();
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v7 = *(*(type metadata accessor for MedicalIDData() - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v8 = type metadata accessor for MedicalIDEditEmergencyContactsModalView(0);
  v1[17] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = sub_2588BDA78();
  v1[20] = sub_2588BDA68();
  v11 = sub_2588BDA28();
  v1[21] = v11;
  v1[22] = v10;

  return MEMORY[0x2822009F8](sub_2587D369C, v11, v10);
}

uint64_t sub_2587D369C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[11];
  v0[23] = sub_2587D2E6C();
  sub_2587D73CC(v3, v2, type metadata accessor for MedicalIDEditEmergencyContactsModalView);
  v0[24] = sub_2588BDA68();
  v5 = sub_2588BDA28();
  v0[25] = v5;
  v0[26] = v4;

  return MEMORY[0x2822009F8](sub_2587D375C, v5, v4);
}

uint64_t sub_2587D375C()
{
  v1 = v0[23];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  swift_getKeyPath();
  v0[8] = v1;
  sub_2587D5A2C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  sub_2588BBB98();

  v5 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_2587D73CC(v1 + v5, v4, sub_2587B63B8);
  LoadState<>.loadedValue.getter(v3);
  sub_2587D5A74(v4, sub_2587B63B8);
  v6 = *(v2 + 16);
  swift_getKeyPath();
  v0[9] = v6;
  sub_2587D5A2C(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BBB98();

  swift_beginAccess();
  v7 = *(v6 + 16);
  v8 = *(v3 + 16);

  *(v3 + 16) = v7;
  v9 = swift_task_alloc();
  v0[27] = v9;
  *v9 = v0;
  v9[1] = sub_2587D3994;
  v10 = v0[23];
  v11 = v0[16];

  return sub_258880280(v11, (v0 + 10));
}

uint64_t sub_2587D3994()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v8 = *v1;

  v4 = *(v2 + 200);
  v5 = *(v2 + 208);
  if (v0)
  {
    v6 = sub_2587D3C34;
  }

  else
  {
    v6 = sub_2587D3AA4;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2587D3AA4()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[18];
  v4 = v0[16];

  sub_2587D5A74(v4, type metadata accessor for MedicalIDData);
  sub_2587D5A74(v3, type metadata accessor for MedicalIDEditEmergencyContactsModalView);
  v5 = v0[21];
  v6 = v0[22];

  return MEMORY[0x2822009F8](sub_2587D3B58, v5, v6);
}

uint64_t sub_2587D3B58()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];

  v10 = v9 + *(v3 + 36);
  sub_25885269C(v6);
  sub_2588BC028();
  (*(v7 + 8))(v6, v8);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2587D3C34()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[18];
  v4 = v0[16];

  sub_2587D5A74(v4, type metadata accessor for MedicalIDData);
  v0[28] = v0[10];
  sub_2587D5A74(v3, type metadata accessor for MedicalIDEditEmergencyContactsModalView);
  v5 = v0[21];
  v6 = v0[22];

  return MEMORY[0x2822009F8](sub_2587D3CF0, v5, v6);
}

uint64_t sub_2587D3CF0()
{
  v1 = v0[28];
  v2 = v0[20];
  v3 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];

  sub_2587CE078();
  swift_allocError();
  *v7 = v1;

  v8 = v0[1];

  return v8();
}

uint64_t sub_2587D3DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  sub_2587D65EC(0, &qword_27F95E090, sub_2587D664C);
  v91 = *(v3 - 8);
  v92 = v3;
  v4 = *(v91 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v89 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v88 = &v77 - v7;
  v8 = type metadata accessor for MedicalIDEmergencyContactsEditView(0);
  v84 = *(v8 - 8);
  v9 = *(v84 + 64);
  MEMORY[0x28223BE20](v8);
  v82 = v10;
  v85 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587D2BD4(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  v12 = *(v11 - 8);
  v80 = v11;
  v81 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v79 = &v77 - v14;
  sub_2587D5D94(0, &qword_27F95E010, sub_2587D6028, sub_2587D6558);
  v83 = v15;
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v87 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v93 = &v77 - v19;
  v20 = sub_2588BC628();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587D5D2C(0);
  v78 = v25;
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v86 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v77 - v29;
  if (qword_27F95D0F8 != -1)
  {
    swift_once();
  }

  v32 = qword_27F969848;
  v31 = unk_27F969850;

  v33 = sub_2587D5400();
  v34 = (a1 + *(v8 + 24));
  v35 = *v34;
  v36 = v34[1];
  v94 = v32;
  v95 = v31;
  v96 = v33;
  v97 = v37;
  v98 = v35;
  v99 = v36;
  sub_2587D68A0();

  sub_2588BD4E8();
  sub_2588BC618();
  sub_2587D5E08(0);
  v39 = *(v38 + 36);
  (*(v21 + 16))(&v30[v39], v24, v20);
  v40 = *(v21 + 56);
  v40(&v30[v39], 0, 1, v20);
  KeyPath = swift_getKeyPath();
  sub_2587D5D60(0);
  v43 = &v30[*(v42 + 36)];
  sub_2587D5F2C(0);
  v45 = *(v44 + 28);
  (*(v21 + 32))(v43 + v45, v24, v20);
  v40(v43 + v45, 0, 1, v20);
  *v43 = KeyPath;
  v46 = &v30[*(v78 + 36)];
  v77 = v30;
  __asm { FMOV            V0.2D, #16.0 }

  *v46 = _Q0;
  *(v46 + 1) = _Q0;
  v46[32] = 0;
  v53 = v79;
  v52 = v80;
  sub_2588BD538();
  swift_getKeyPath();
  sub_2588BD558();

  (*(v81 + 8))(v53, v52);
  v54 = v94;
  v55 = v95;
  v56 = v96;
  v57 = swift_getKeyPath();
  v58 = v93;
  sub_2587D4BC8(v54, v55, v56, v57, sub_2587D4614, 0);
  v59 = v85;
  sub_2587D73CC(a1, v85, type metadata accessor for MedicalIDEmergencyContactsEditView);
  v60 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v61 = swift_allocObject();
  sub_2587D6BFC(v59, v61 + v60, type metadata accessor for MedicalIDEmergencyContactsEditView);
  v62 = swift_allocObject();
  *(v62 + 16) = sub_2587D6C64;
  *(v62 + 24) = v61;
  v63 = (v58 + *(v83 + 36));
  *v63 = sub_2587D6CD4;
  v63[1] = v62;
  MEMORY[0x28223BE20](v62);
  *(&v77 - 2) = a1;
  sub_2587D664C();
  sub_2587D6D38(&qword_27F95E0E8, sub_2587D664C, sub_2587D6D04);
  v64 = v88;
  sub_2588BD508();
  v65 = v30;
  v66 = v86;
  sub_2587D73CC(v65, v86, sub_2587D5D2C);
  v67 = v87;
  sub_258796DAC(v58, v87);
  v69 = v91;
  v68 = v92;
  v70 = *(v91 + 16);
  v71 = v89;
  v70(v89, v64, v92);
  v72 = v90;
  sub_2587D73CC(v66, v90, sub_2587D5D2C);
  sub_2587D5C58();
  v74 = v73;
  sub_258796DAC(v67, v72 + *(v73 + 48));
  v70((v72 + *(v74 + 64)), v71, v68);
  v75 = *(v69 + 8);
  v75(v64, v68);
  sub_258796E40(v93);
  sub_2587D5A74(v77, sub_2587D5D2C);
  v75(v71, v68);
  sub_258796E40(v67);
  return sub_2587D5A74(v66, sub_2587D5D2C);
}

uint64_t sub_2587D4614@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2588BC628();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2588BC848();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587D65EC(0, &qword_27F95E058, type metadata accessor for ContactLabelEditView);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v33 - v17;
  v19 = a1[7];
  v36[6] = a1[6];
  v36[7] = v19;
  v36[8] = a1[8];
  v20 = a1[3];
  v36[2] = a1[2];
  v36[3] = v20;
  v21 = a1[5];
  v36[4] = a1[4];
  v36[5] = v21;
  v22 = a1[1];
  v36[0] = *a1;
  v36[1] = v22;
  v35 = v36;
  type metadata accessor for ContactLabelEditView(0);
  sub_2587D5A2C(&qword_27F95E068, type metadata accessor for ContactLabelEditView);
  sub_2588BD508();
  sub_2588BC838();
  sub_2587D6388();
  sub_2588BD138();
  (*(v9 + 8))(v12, v8);
  (*(v15 + 8))(v18, v14);
  v23 = v34;
  sub_2588BC618();
  sub_2587D6294(0);
  v25 = *(v24 + 36);
  (*(v5 + 16))(a2 + v25, v23, v4);
  v26 = *(v5 + 56);
  v26((a2 + v25), 0, 1, v4);
  KeyPath = swift_getKeyPath();
  sub_2587D5D94(0, &qword_27F95E040, sub_2587D6294, sub_2587D5F2C);
  v29 = (a2 + *(v28 + 36));
  sub_2587D5F2C(0);
  v31 = *(v30 + 28);
  (*(v5 + 32))(v29 + v31, v23, v4);
  result = v26(v29 + v31, 0, 1, v4);
  *v29 = KeyPath;
  return result;
}

uint64_t sub_2587D49DC@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_allocWithZone(MIUIRelationshipPickerDataSource) init];
  v5 = *(type metadata accessor for ContactLabelEditView(0) + 28);
  *(a2 + v5) = swift_getKeyPath();
  sub_2587D2BD4(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v6 = a1[7];
  v25[6] = a1[6];
  v25[7] = v6;
  v25[8] = a1[8];
  v7 = a1[3];
  v25[2] = a1[2];
  v25[3] = v7;
  v8 = a1[5];
  v25[4] = a1[4];
  v25[5] = v8;
  v9 = a1[1];
  v25[0] = *a1;
  v25[1] = v9;
  sub_2587D72B8(0, &qword_27F95E158, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0](v24);
  v30 = v24[4];
  v31 = v24[5];
  v32 = v24[6];
  v33 = v24[7];
  v26 = v24[0];
  v27 = v24[1];
  v28 = v24[2];
  v29 = v24[3];
  v10 = type metadata accessor for ContactLabelEditViewModel(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  *(v13 + 144) = 0;
  sub_2588BBBC8();
  v14 = v31;
  *(v13 + 80) = v30;
  *(v13 + 96) = v14;
  v15 = v33;
  *(v13 + 112) = v32;
  *(v13 + 128) = v15;
  v16 = v27;
  *(v13 + 16) = v26;
  *(v13 + 32) = v16;
  v17 = v29;
  *(v13 + 48) = v28;
  *(v13 + 64) = v17;
  *a2 = v13;
  a2[1] = 0;
  a2[4] = v4;
  v18 = swift_allocObject();
  v19 = a1[7];
  v18[7] = a1[6];
  v18[8] = v19;
  v18[9] = a1[8];
  v20 = a1[3];
  v18[3] = a1[2];
  v18[4] = v20;
  v21 = a1[5];
  v18[5] = a1[4];
  v18[6] = v21;
  v22 = a1[1];
  v18[1] = *a1;
  v18[2] = v22;
  a2[2] = sub_2587D7324;
  a2[3] = v18;
  return sub_2587D732C(a1, v25);
}

uint64_t sub_2587D4BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = a3;
  sub_2587D6F34();
  MEMORY[0x259C8C5A0](v17);
  v12 = *(v17[0] + 16);

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v17[0] = 0;
  v17[1] = v12;
  v17[2] = sub_2587D6FB0;
  v17[3] = v13;
  sub_2587D5D94(0, &qword_27F95E040, sub_2587D6294, sub_2587D5F2C);
  sub_2587D72B8(0, &qword_27F95E110, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83940]);
  sub_258791374();
  sub_2587D6FB4();
  sub_2587D6ECC(&qword_27F95E118);
  sub_2587D6ECC(&qword_27F95E150);
  swift_getKeyPath();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a5;
  v14[6] = a6;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2587D71B0;
  *(v15 + 24) = v14;
  sub_2587D60F0();
  sub_2587D6458();

  return sub_2588BD4B8();
}

uint64_t sub_2587D4E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = a3;
  sub_2587D6F34();
  MEMORY[0x259C8C5A0](v17);
  v12 = *(v17[0] + 16);

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a4;
  v17[0] = 0;
  v17[1] = v12;
  v17[2] = sub_2587D7960;
  v17[3] = v13;
  sub_2587D65EC(0, &qword_27F95E058, type metadata accessor for ContactLabelEditView);
  sub_2587D72B8(0, &qword_27F95E110, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83940]);
  sub_258791374();
  sub_2587D6388();
  sub_2587D6ECC(&qword_27F95E118);
  sub_2587D6ECC(&qword_27F95E150);
  swift_getKeyPath();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a5;
  v14[6] = a6;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2587D7608;
  *(v15 + 24) = v14;
  sub_2587D60F0();
  sub_2587D6458();

  return sub_2588BD4B8();
}

uint64_t sub_2587D5084()
{
  sub_2587D2BD4(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  sub_2588BD528();
  swift_getKeyPath();
  sub_2587D5A2C(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BBB98();

  swift_getKeyPath();
  sub_2588BBBB8();

  swift_beginAccess();
  sub_2587D72B8(0, &qword_27F95E110, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83940]);
  sub_2587D6ECC(&qword_27F95E118);
  sub_2587D6ECC(&qword_27F95E120);
  sub_2588BDB68();
  swift_endAccess();
  swift_getKeyPath();
  sub_2588BBBA8();
}

void sub_2587D5288(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2587D2BD4(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  sub_2588BD528();
  v4 = *(a1 + *(type metadata accessor for MedicalIDEmergencyContactsEditView(0) + 20));
  sub_2588ACF5C(v4, a2);
  sub_2587D5D94(0, &qword_27F95E0A8, type metadata accessor for AddEmergencyContactView, sub_2587D5F94);
  v6 = a2 + *(v5 + 36);
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  LOBYTE(a1) = sub_2588BCB78();
  sub_2588BBE38();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_2587D66AC();
  v16 = a2 + *(v15 + 36);
  *v16 = a1;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  LOBYTE(a1) = sub_2588BCBE8();
  sub_2588BBE38();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_2587D664C();
  v26 = a2 + *(v25 + 36);
  *v26 = a1;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
}

id sub_2587D5400()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v1 = result;
    v2 = sub_2588BD868();
    [v1 applicationIsInstalled_];

    v3 = sub_2588BD858();
    v4 = *(*(v3 - 8) + 64);
    MEMORY[0x28223BE20](v3 - 8);
    sub_2588BD7E8();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v5 = qword_27F95DA88;
    v6 = sub_2588BBAC8();
    v7 = *(*(v6 - 8) + 64);
    MEMORY[0x28223BE20](v6 - 8);
    v8 = v5;
    sub_2588BBAB8();
    return sub_2588BD8B8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2587D55CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2587D5C24(0);
  sub_2587D5A2C(&qword_27F95E0B0, sub_2587D5C24);
  sub_2588BCD48();
  KeyPath = swift_getKeyPath();
  sub_2587D5D94(0, &qword_27F95E0B8, sub_2587D673C, sub_2587D67EC);
  v6 = (a2 + *(v5 + 36));
  sub_2587D67EC(0);
  v8 = *(v7 + 28);
  v9 = *(a1 + 28);
  sub_2587D2BD4(0, &qword_27F95DF90, MEMORY[0x277CDF0E0], MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  sub_2587D6854(0);
  result = (*(*(v10 - 8) + 56))(v6 + v8, 0, 1, v10);
  *v6 = KeyPath;
  return result;
}

uint64_t sub_2587D575C()
{
  v0 = sub_2588BD858();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BBAC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v2;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F95DF58 = result;
  unk_27F95DF60 = v7;
  return result;
}

uint64_t sub_2587D58AC()
{
  v1 = *(type metadata accessor for MedicalIDEditEmergencyContactsModalView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2587AE310;

  return sub_2587D3470();
}

void sub_2587D5978()
{
  if (!qword_27F95DF78)
  {
    type metadata accessor for MedicalIDEmergencyContactsEditView(255);
    sub_2587D5A2C(&qword_27F95DF80, type metadata accessor for MedicalIDEmergencyContactsEditView);
    v0 = type metadata accessor for MedicalIDEditModal();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DF78);
    }
  }
}

uint64_t sub_2587D5A2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2587D5A74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2587D5AFC()
{
  sub_2587D2BD4(319, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    sub_2587C87A8();
    if (v1 <= 0x3F)
    {
      sub_2587D2BD4(319, &qword_27F95DF90, MEMORY[0x277CDF0E0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2587D5C58()
{
  if (!qword_27F95DFB8)
  {
    sub_2587D5D2C(255);
    sub_2587D5D94(255, &qword_27F95E010, sub_2587D6028, sub_2587D6558);
    sub_2587D65EC(255, &qword_27F95E090, sub_2587D664C);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95DFB8);
    }
  }
}

void sub_2587D5D94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_2588BC1E8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2587D5E3C()
{
  if (!qword_27F95DFD8)
  {
    v0 = sub_2588BD518();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DFD8);
    }
  }
}

void sub_2587D5E98()
{
  if (!qword_27F95DFE0)
  {
    sub_2588BC988();
    sub_2587D5A2C(&qword_27F95DFE8, MEMORY[0x277CDE3A0]);
    v0 = sub_2588BC8A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DFE0);
    }
  }
}

void sub_2587D5F94()
{
  if (!qword_27F95E000)
  {
    sub_2588BC858();
    sub_2587D5A2C(&qword_27F95E008, MEMORY[0x277CDE0E0]);
    v0 = sub_2588BC8A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E000);
    }
  }
}

void sub_2587D6028()
{
  if (!qword_27F95E018)
  {
    sub_2587D60F0();
    sub_2587D5D94(255, &qword_27F95E040, sub_2587D6294, sub_2587D5F2C);
    sub_2587D6458();
    sub_258791374();
    v0 = sub_2588BD4D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E018);
    }
  }
}

void sub_2587D60F0()
{
  if (!qword_27F95E020)
  {
    sub_2587D6188();
    sub_2587D61E0();
    sub_2587D64EC(&qword_27F95E030);
    v0 = sub_2588BDEC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E020);
    }
  }
}

void sub_2587D6188()
{
  if (!qword_27F95FB50)
  {
    v0 = sub_2588BDB78();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95FB50);
    }
  }
}

void sub_2587D61E0()
{
  if (!qword_27F95E028)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95E028);
    }
  }
}

unint64_t sub_2587D6240()
{
  result = qword_27F95E038;
  if (!qword_27F95E038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E038);
  }

  return result;
}

void sub_2587D62C8()
{
  if (!qword_27F95E050)
  {
    sub_2587D65EC(255, &qword_27F95E058, type metadata accessor for ContactLabelEditView);
    sub_2588BC848();
    sub_2587D6388();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E050);
    }
  }
}

unint64_t sub_2587D6388()
{
  result = qword_27F95E060;
  if (!qword_27F95E060)
  {
    sub_2587D65EC(255, &qword_27F95E058, type metadata accessor for ContactLabelEditView);
    sub_2587D5A2C(&qword_27F95E068, type metadata accessor for ContactLabelEditView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E060);
  }

  return result;
}

unint64_t sub_2587D6458()
{
  result = qword_27F95E070;
  if (!qword_27F95E070)
  {
    sub_2587D60F0();
    sub_2587D64EC(&qword_27F95E078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E070);
  }

  return result;
}

uint64_t sub_2587D64EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2587D6188();
    sub_2587D6240();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2587D6558()
{
  if (!qword_27F95E080)
  {
    sub_2588BC258();
    sub_2587D5A2C(&qword_27F95E088, MEMORY[0x277CDDAE8]);
    v0 = sub_2588BC8A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E080);
    }
  }
}

void sub_2587D65EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BD518();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2587D664C()
{
  if (!qword_27F95E098)
  {
    sub_2587D66AC();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E098);
    }
  }
}

void sub_2587D66AC()
{
  if (!qword_27F95E0A0)
  {
    sub_2587D5D94(255, &qword_27F95E0A8, type metadata accessor for AddEmergencyContactView, sub_2587D5F94);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E0A0);
    }
  }
}

void sub_2587D673C()
{
  if (!qword_27F95E0C0)
  {
    sub_2587D5C24(255);
    sub_2587D5A2C(&qword_27F95E0B0, sub_2587D5C24);
    v0 = sub_2588BCD58();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E0C0);
    }
  }
}

unint64_t sub_2587D68A0()
{
  result = qword_27F95E0E0;
  if (!qword_27F95E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E0E0);
  }

  return result;
}

void *sub_2587D68F4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v22[1] = a2;
  v22[2] = a3;
  v22[3] = a4;
  *a5 = a1;
  sub_2587D6F34();
  result = MEMORY[0x259C8C5A0](v22);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v22[0] + 16) > a1)
  {
    v7 = (v22[0] + (a1 << 7));
    v8 = v7[2];
    v9 = v7[3];
    v10 = v7[5];
    v25 = v7[4];
    v26 = v10;
    v23 = v8;
    v24 = v9;
    v11 = v7[6];
    v12 = v7[7];
    v13 = v7[9];
    v29 = v7[8];
    v30 = v13;
    v27 = v11;
    v28 = v12;
    sub_2587914E8(&v23, v31);

    v18 = v27;
    v19 = v28;
    v20 = v29;
    v21 = v30;
    v14 = v23;
    v15 = v24;
    v16 = v25;
    v17 = v26;
    swift_getAtKeyPath();
    v31[4] = v18;
    v31[5] = v19;
    v31[6] = v20;
    v31[7] = v21;
    v31[0] = v14;
    v31[1] = v15;
    v31[2] = v16;
    v31[3] = v17;
    return sub_2587C66FC(v31);
  }

  __break(1u);
  return result;
}

uint64_t sub_2587D6A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(_OWORD *))
{
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;
  v10[7] = a1;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a3;
  v11[5] = a4;
  v11[6] = a5;
  v11[7] = a1;
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_2588BD468();
  a6(v14);
  v15[6] = v14[6];
  v15[7] = v14[7];
  v15[8] = v14[8];
  v15[2] = v14[2];
  v15[3] = v14[3];
  v15[4] = v14[4];
  v15[5] = v14[5];
  v15[0] = v14[0];
  v15[1] = v14[1];
  return sub_2587D7238(v15);
}

uint64_t sub_2587D6B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, char *), uint64_t (*a7)(char *))
{
  v10 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v14 - v11;
  a6(a1, &v14 - v11);
  return a7(v12);
}

uint64_t sub_2587D6BFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587D6C64()
{
  v0 = *(*(type metadata accessor for MedicalIDEmergencyContactsEditView(0) - 8) + 80);

  return sub_2587D5084();
}

uint64_t sub_2587D6CD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2587D6D38(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_2587D6DBC()
{
  result = qword_27F95E0F8;
  if (!qword_27F95E0F8)
  {
    sub_2587D5D94(255, &qword_27F95E0A8, type metadata accessor for AddEmergencyContactView, sub_2587D5F94);
    sub_2587D5A2C(&qword_27F95E100, type metadata accessor for AddEmergencyContactView);
    sub_2587D5A2C(&qword_27F95E108, sub_2587D5F94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E0F8);
  }

  return result;
}

uint64_t sub_2587D6ECC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2587D72B8(255, &qword_27F95E110, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2587D6F34()
{
  if (!qword_27F95E128)
  {
    sub_2587D72B8(255, &qword_27F95E110, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277D83940]);
    v0 = sub_2588BD488();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E128);
    }
  }
}

unint64_t sub_2587D6FB4()
{
  result = qword_27F95E130;
  if (!qword_27F95E130)
  {
    sub_2587D5D94(255, &qword_27F95E040, sub_2587D6294, sub_2587D5F2C);
    sub_2587D7094();
    sub_2587D5A2C(&qword_27F95E148, sub_2587D5F2C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E130);
  }

  return result;
}

unint64_t sub_2587D7094()
{
  result = qword_27F95E138;
  if (!qword_27F95E138)
  {
    sub_2587D6294(255);
    sub_2587D65EC(255, &qword_27F95E058, type metadata accessor for ContactLabelEditView);
    sub_2588BC848();
    sub_2587D6388();
    swift_getOpaqueTypeConformance2();
    sub_2587D5A2C(&qword_27F95E140, sub_2587D5E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E138);
  }

  return result;
}

void *sub_2587D71F0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_2587D7714((v1 + 4), v1 + 7, a1);
}

uint64_t sub_2587D7238(uint64_t a1)
{
  sub_2587D72B8(0, &qword_27F95E158, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277CE11F8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2587D72B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2587D732C(uint64_t a1, uint64_t a2)
{
  sub_2587D72B8(0, &qword_27F95E158, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277CE11F8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587D73CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2587D7434()
{
  result = qword_27F95E168;
  if (!qword_27F95E168)
  {
    sub_2587D5D94(255, &qword_27F95E0B8, sub_2587D673C, sub_2587D67EC);
    sub_2587D5A2C(&qword_27F95E170, sub_2587D673C);
    sub_2587D5A2C(&qword_27F95E178, sub_2587D67EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E168);
  }

  return result;
}

uint64_t objectdestroy_42Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocObject();
}

uint64_t objectdestroy_46Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_2587D7644(uint64_t *a1, _OWORD *a2)
{
  v4 = v2[5];
  v3 = v2[6];
  v5 = *a1;
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v7 = a2[7];
  v11[6] = a2[6];
  v11[7] = v7;
  v8 = a2[1];
  v11[0] = *a2;
  v11[1] = v8;
  v9 = a2[3];
  v11[2] = a2[2];
  v11[3] = v9;
  return sub_2587D6A00(v5, v11, v2[2], v2[3], v2[4], v4);
}

uint64_t sub_2587D76B0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 112);
  v9[6] = *(a1 + 96);
  v9[7] = v4;
  v10 = *(a1 + 128);
  v5 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v5;
  v6 = *(a1 + 80);
  v9[4] = *(a1 + 64);
  v9[5] = v6;
  v7 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v7;
  return v2(v9, v9 + 8);
}

void *sub_2587D7714@<X0>(uint64_t a1@<X2>, unint64_t *a2@<X3>, _OWORD *a3@<X8>)
{
  v4 = *a2;
  v18[1] = *a1;
  v19 = *(a1 + 8);
  sub_2587D6F34();
  result = MEMORY[0x259C8C5A0](v18);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(v18[0] + 16))
  {
    v6 = (v18[0] + (v4 << 7));
    v7 = v6[2];
    v8 = v6[3];
    v9 = v6[5];
    v22 = v6[4];
    v23 = v9;
    v20 = v7;
    v21 = v8;
    v10 = v6[6];
    v11 = v6[7];
    v12 = v6[9];
    v26 = v6[8];
    v27 = v12;
    v24 = v10;
    v25 = v11;
    sub_2587914E8(&v20, &v17);

    v13 = v25;
    a3[4] = v24;
    a3[5] = v13;
    v14 = v27;
    a3[6] = v26;
    a3[7] = v14;
    v15 = v21;
    *a3 = v20;
    a3[1] = v15;
    v16 = v23;
    a3[2] = v22;
    a3[3] = v16;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2587D77E0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v5 = a1[5];
  v33 = a1[4];
  v34 = v5;
  v6 = a1[7];
  v35 = a1[6];
  v36 = v6;
  v7 = a1[1];
  v29 = *a1;
  v30 = v7;
  v8 = a1[3];
  v31 = a1[2];
  v32 = v8;
  v9 = *a5;
  v27[1] = *a4;
  v28 = *(a4 + 8);
  sub_2587D6F34();
  MEMORY[0x259C8C5A0](v27);
  v10 = v27[0];
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_2587D7308(v10);
  v10 = result;
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v9 < *(v10 + 16))
  {
    v12 = (v10 + (v9 << 7));
    v13 = v12[2];
    v14 = v12[3];
    v15 = v12[5];
    v26[2] = v12[4];
    v26[3] = v15;
    v26[0] = v13;
    v26[1] = v14;
    v16 = v12[6];
    v17 = v12[7];
    v18 = v12[9];
    v26[6] = v12[8];
    v26[7] = v18;
    v26[4] = v16;
    v26[5] = v17;
    v19 = v29;
    v20 = v30;
    v21 = v32;
    v12[4] = v31;
    v12[5] = v21;
    v12[2] = v19;
    v12[3] = v20;
    v22 = v33;
    v23 = v34;
    v24 = v36;
    v12[8] = v35;
    v12[9] = v24;
    v12[6] = v22;
    v12[7] = v23;
    sub_2587914E8(&v29, &v25);
    sub_2587C66FC(v26);
    v27[0] = v10;
    return sub_2588BD438();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t objectdestroy_52Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_2587D79A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2588BC768();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_2588BC778();
}

uint64_t sub_2587D7A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2588BC768();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_2588BC778();
}

uint64_t sub_2587D7B90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v29 = a1;
  sub_2587A8614();
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587A8540();
  v27 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 32);
  v15 = *(v14 + 16);
  sub_25878E130(0, &qword_27F95D360, 0x277CCD4D8);
  sub_2587DC150(&qword_27F95E2B0, &qword_27F95D360, 0x277CCD4D8);
  v16 = v15;
  v17 = sub_2588BBD08();
  sub_2587DCEB4(v26, v8, _s12SheetContentVMa);
  sub_2587A869C();
  v19 = &v8[*(v18 + 36)];
  *v19 = v17;
  v19[1] = v16;
  v20 = *(v14 + 24);
  sub_25878E130(0, &qword_27F95D378, 0x277CCD7D0);
  sub_2587DC150(&qword_27F95E2B8, &qword_27F95D378, 0x277CCD7D0);
  v21 = v20;
  v22 = sub_2588BBD08();
  v23 = &v8[*(v5 + 36)];
  *v23 = v22;
  v23[1] = v21;
  v24 = *(a2 + 56);
  type metadata accessor for MedicalIDDataManager();
  sub_2587DC924(&qword_27F95D380, sub_2587A8614, sub_2587A880C, sub_2587A8934);
  sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  sub_2588BCE58();
  sub_2587DCF1C(v8, sub_2587A8614);
  sub_2587D9E00(v13, v29);
  return (*(v10 + 8))(v13, v27);
}

uint64_t sub_2587D7EB0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v29 = a1;
  sub_2587DB66C();
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587DB554();
  v27 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 32);
  v15 = *(v14 + 16);
  sub_25878E130(0, &qword_27F95D360, 0x277CCD4D8);
  sub_2587DC150(&qword_27F95E2B0, &qword_27F95D360, 0x277CCD4D8);
  v16 = v15;
  v17 = sub_2588BBD08();
  sub_2587DCC5C(v26, v8, sub_2587DB034);
  sub_2587DB6F4();
  v19 = &v8[*(v18 + 36)];
  *v19 = v17;
  v19[1] = v16;
  v20 = *(v14 + 24);
  sub_25878E130(0, &qword_27F95D378, 0x277CCD7D0);
  sub_2587DC150(&qword_27F95E2B8, &qword_27F95D378, 0x277CCD7D0);
  v21 = v20;
  v22 = sub_2588BBD08();
  v23 = &v8[*(v5 + 36)];
  *v23 = v22;
  v23[1] = v21;
  v24 = *(a2 + 56);
  type metadata accessor for MedicalIDDataManager();
  sub_2587DC924(&qword_27F95E1F8, sub_2587DB66C, sub_2587DB77C, sub_2587A8934);
  sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  sub_2588BCE58();
  sub_2587DCCC4(v8, sub_2587DB66C);
  sub_2587DA248(v13, v29);
  return (*(v10 + 8))(v13, v27);
}

uint64_t sub_2587D81D0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v30 = a1;
  sub_2587DC648();
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587DC80C();
  v28 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 32);
  v15 = *(v14 + 16);
  sub_25878E130(0, &qword_27F95D360, 0x277CCD4D8);
  sub_2587DC150(&qword_27F95E2B0, &qword_27F95D360, 0x277CCD4D8);
  v16 = v15;
  v17 = sub_2588BBD08();
  sub_2587DC758();
  (*(*(v18 - 8) + 16))(v8, v27, v18);
  sub_2587DC6D0();
  v20 = &v8[*(v19 + 36)];
  *v20 = v17;
  v20[1] = v16;
  v21 = *(v14 + 24);
  sub_25878E130(0, &qword_27F95D378, 0x277CCD7D0);
  sub_2587DC150(&qword_27F95E2B8, &qword_27F95D378, 0x277CCD7D0);
  v22 = v21;
  v23 = sub_2588BBD08();
  v24 = &v8[*(v5 + 36)];
  *v24 = v23;
  v24[1] = v22;
  v25 = *(a2 + 56);
  type metadata accessor for MedicalIDDataManager();
  sub_2587DC924(&qword_27F95E330, sub_2587DC648, sub_2587DC9B0, sub_2587A8934);
  sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  sub_2588BCE58();
  sub_2587DCCC4(v8, sub_2587DC648);
  sub_2587DA690(v13, v30);
  return (*(v10 + 8))(v13, v28);
}

uint64_t sub_2587D850C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v29 = a1;
  sub_2587DC1A4();
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587DC2B4();
  v27 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 32);
  v15 = *(v14 + 16);
  sub_25878E130(0, &qword_27F95D360, 0x277CCD4D8);
  sub_2587DC150(&qword_27F95E2B0, &qword_27F95D360, 0x277CCD4D8);
  v16 = v15;
  v17 = sub_2588BBD08();
  sub_2587DCEB4(v26, v8, type metadata accessor for NanoMedicalIDEditView);
  sub_2587DC22C();
  v19 = &v8[*(v18 + 36)];
  *v19 = v17;
  v19[1] = v16;
  v20 = *(v14 + 24);
  sub_25878E130(0, &qword_27F95D378, 0x277CCD7D0);
  sub_2587DC150(&qword_27F95E2B8, &qword_27F95D378, 0x277CCD7D0);
  v21 = v20;
  v22 = sub_2588BBD08();
  v23 = &v8[*(v5 + 36)];
  *v23 = v22;
  v23[1] = v21;
  v24 = *(a2 + 56);
  type metadata accessor for MedicalIDDataManager();
  sub_2587DC924(&qword_27F95E2E0, sub_2587DC1A4, sub_2587DC3CC, sub_2587A8934);
  sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  sub_2588BCE58();
  sub_2587DCF1C(v8, sub_2587DC1A4);
  sub_2587DAAD8(v13, v29);
  return (*(v10 + 8))(v13, v27);
}

void *MedicalIDMainView.init(healthStore:medicalIDData:displayConfiguration:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for MedicalIDMainView();
  v9 = v8[5];
  *(a4 + v9) = swift_getKeyPath();
  v10 = MEMORY[0x277CDF458];
  sub_2587DBED8(0, &qword_27F95DB18, MEMORY[0x28220C240], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v11 = v8[6];
  *(a4 + v11) = swift_getKeyPath();
  sub_2587DBED8(0, &qword_27F95DB20, MEMORY[0x28220C198], v10);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MedicalIDModelProvider();
  swift_allocObject();
  v12 = a3;
  result = sub_2587B31A0(a1, a2, v12);
  *a4 = result;
  *(a4 + v8[8]) = v12;
  v14 = a4 + v8[7];
  *v14 = 1;
  *(v14 + 1) = 0;
  return result;
}

uint64_t type metadata accessor for MedicalIDMainView()
{
  result = qword_27F95E220;
  if (!qword_27F95E220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MedicalIDMainView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = type metadata accessor for MedicalIDMainView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_2587DB034();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587DB484(0);
  v28 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v27 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + 40);
  v15 = v1;
  v25 = v1;
  v16 = *(v1 + v14);
  v26 = v16;
  sub_2587DCEB4(v15, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MedicalIDMainView);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_2587DB900(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v30 = v16;
  v31 = sub_2587DB964;
  v32 = v18;
  sub_2587DB148();
  sub_2587DCE6C(&qword_27F95E1C8, sub_2587DB148);
  sub_2588BCF78();

  v19 = v25;
  sub_2587DCEB4(v25, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MedicalIDMainView);
  v20 = swift_allocObject();
  sub_2587DB900(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v17);
  v21 = &v10[*(v7 + 44)];
  *v21 = sub_2587DBBB8;
  v21[1] = v20;
  v21[2] = 0;
  v21[3] = 0;
  v22 = v26;
  v23 = v27;
  sub_2587D7EB0(v26, *v19, v27);
  sub_2587DCCC4(v10, sub_2587DB034);
  [v22 isHomeIndicatorHidden];
  sub_2587DBC18();
  sub_2588BCFC8();
  return sub_2587DCCC4(v23, sub_2587DB484);
}

uint64_t sub_2587D8CFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v42 = type metadata accessor for MedicalIDDataContentView();
  v3 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2587DB25C();
  v43 = v6;
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587DCDE8(0, &qword_27F95E370, sub_2587DB1F0, sub_2587DB25C, MEMORY[0x277CE0330]);
  v40 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  sub_2587DB1F0();
  v41 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587B63B8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v22 = *a1;
  v23 = *(*a1 + 56);
  swift_getKeyPath();
  v50 = v23;
  sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);

  sub_2588BBB98();

  v24 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_2587DCEB4(v23 + v24, v21, sub_2587B63B8);

  v25 = type metadata accessor for MedicalIDData();
  if ((*(*(v25 - 8) + 48))(v21, 1, v25) == 1)
  {
    sub_2588BBFC8();
    v26 = v41;
    (*(v14 + 16))(v12, v17, v41);
    swift_storeEnumTagMultiPayload();
    sub_2587DCE6C(&qword_27F95E1C0, sub_2587DB1F0);
    v27 = sub_2587DCE6C(&qword_27F95E1B0, type metadata accessor for MedicalIDDataContentView);
    v45 = v42;
    v46 = v27;
    swift_getOpaqueTypeConformance2();
    sub_2588BC778();
    return (*(v14 + 8))(v17, v26);
  }

  else
  {
    v29 = v37 + *(type metadata accessor for MedicalIDMainView() + 28);
    v30 = *v29;
    v31 = *(v29 + 1);
    v48 = v30;
    v49 = v31;
    sub_2587DC074();

    sub_2588BD2E8();
    sub_2587BD098(v22, v45, v46, v47, v5);
    v32 = sub_2587DCE6C(&qword_27F95E1B0, type metadata accessor for MedicalIDDataContentView);
    v33 = v38;
    v34 = v42;
    sub_2588BCF78();
    sub_2587DCF1C(v5, type metadata accessor for MedicalIDDataContentView);
    v35 = v39;
    v36 = v43;
    (*(v39 + 16))(v12, v33, v43);
    swift_storeEnumTagMultiPayload();
    sub_2587DCE6C(&qword_27F95E1C0, sub_2587DB1F0);
    v45 = v34;
    v46 = v32;
    swift_getOpaqueTypeConformance2();
    sub_2588BC778();
    (*(v35 + 8))(v33, v36);
    return sub_2587DCF1C(v21, sub_2587B63B8);
  }
}

uint64_t sub_2587D9318(uint64_t a1)
{
  sub_2587D9388();
  v2 = *(*a1 + 32);
  v3 = *(a1 + *(type metadata accessor for MedicalIDMainView() + 32));

  sub_25889BE64([v3 accessPoint]);
}

void sub_2587D9388()
{
  v26[1] = *MEMORY[0x277D85DE8];
  v2 = [*(v0 + *(type metadata accessor for MedicalIDMainView() + 32)) isLockScreen];
  if (MEMORY[0x277CF1BC8])
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = MKBGetDeviceLockState();
    if (v4 <= 6 && ((1 << v4) & 0x46) != 0)
    {
      v5 = [objc_opt_self() availableDevices];
      sub_25878E130(0, &qword_27F95E360, 0x277CF1BB8);
      v6 = sub_2588BD9B8();

      if (v6 >> 62)
      {
        if (sub_2588BDD68())
        {
          goto LABEL_9;
        }
      }

      else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_9:
        if ((v6 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x259C8CF80](0, v6);
        }

        else
        {
          if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_31;
          }

          v7 = *(v6 + 32);
        }

        v8 = v7;

        sub_25878E130(0, &qword_27F95E368, 0x277CF1BA8);
        v6 = v8;
        v1 = sub_2587DCD24(v6);

        if (v1)
        {
          v26[0] = 0;
          if ([v1 forceBioLockoutIfLockedForUser:501 error:v26])
          {
            v9 = qword_27F95D170;
            v10 = v26[0];
            if (v9 == -1)
            {
LABEL_17:
              v11 = sub_2588BBC98();
              __swift_project_value_buffer(v11, qword_27F969938);
              v12 = sub_2588BBC78();
              v13 = sub_2588BDBF8();
              if (os_log_type_enabled(v12, v13))
              {
                v14 = swift_slowAlloc();
                v15 = swift_slowAlloc();
                v26[0] = v15;
                *v14 = 136315394;
                *(v14 + 4) = sub_258790224(0xD000000000000011, 0x80000002588C13D0, v26);
                *(v14 + 12) = 2080;
                v16 = sub_2588BD8C8();
                v18 = sub_258790224(v16, v17, v26);

                *(v14 + 14) = v18;
                _os_log_impl(&dword_25878B000, v12, v13, "[%s] Successfully forced passcode lock: %s", v14, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x259C8DBE0](v15, -1, -1);
                MEMORY[0x259C8DBE0](v14, -1, -1);
              }

LABEL_27:
              goto LABEL_28;
            }

LABEL_31:
            swift_once();
            goto LABEL_17;
          }

          v19 = v26[0];
          v20 = sub_2588BB878();

          swift_willThrow();
        }

        else
        {
        }

LABEL_23:
        if (qword_27F95D170 != -1)
        {
          swift_once();
        }

        v21 = sub_2588BBC98();
        __swift_project_value_buffer(v21, qword_27F969938);
        v6 = sub_2588BBC78();
        v22 = sub_2588BDBD8();
        if (os_log_type_enabled(v6, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v26[0] = v24;
          *v23 = 136315138;
          *(v23 + 4) = sub_258790224(0xD000000000000011, 0x80000002588C13D0, v26);
          _os_log_impl(&dword_25878B000, v6, v22, "[%s] Failed to force passcode lock with error", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v24);
          MEMORY[0x259C8DBE0](v24, -1, -1);
          MEMORY[0x259C8DBE0](v23, -1, -1);
        }

        goto LABEL_27;
      }

      goto LABEL_23;
    }
  }

LABEL_28:
  v25 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2587D9818@<X0>(void *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a2;
  WitnessTable = a3;
  v46 = a6;
  sub_2588BC138();
  v47 = a5;
  v9 = sub_2588BC208();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v40 - v16;
  v18 = *(a4 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v15);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v40 - v23;
  v45 = sub_2588BC788();
  v42 = *(v45 - 8);
  v25 = *(v42 + 64);
  MEMORY[0x28223BE20](v45);
  v41 = &v40 - v26;
  v27 = [a1 isHostingView];
  if (v27)
  {
    v43();
    v28 = v18[2];
    v28(v24, v22, a4);
    v29 = v18[1];
    v29(v22, a4);
    v28(v22, v24, a4);
    swift_getWitnessTable();
    v30 = v41;
    sub_2587D79A0(v22, a4);
    v29(v22, a4);
    v29(v24, a4);
  }

  else
  {
    MEMORY[0x28223BE20](v27);
    v31 = v47;
    *(&v40 - 6) = a4;
    *(&v40 - 5) = v31;
    v33 = v43;
    v32 = WitnessTable;
    *(&v40 - 4) = a1;
    *(&v40 - 3) = v33;
    *(&v40 - 2) = v32;
    sub_2588BC1F8();
    WitnessTable = swift_getWitnessTable();
    v34 = v10[2];
    v34(v17, v14, v9);
    v35 = v10[1];
    v35(v14, v9);
    v34(v14, v17, v9);
    v30 = v41;
    sub_2587D7A98(v14, a4, v9);
    v35(v14, v9);
    v35(v17, v9);
  }

  v36 = swift_getWitnessTable();
  v48 = v47;
  v49 = v36;
  v37 = v45;
  swift_getWitnessTable();
  v38 = v42;
  (*(v42 + 16))(v46, v30, v37);
  return (*(v38 + 8))(v30, v37);
}

uint64_t sub_2587D9CAC@<X0>(uint64_t a1@<X3>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = v4[8];
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v16 - v10;
  v12(v9);
  v13 = v4[2];
  v13(v11, v8, a1);
  v14 = v4[1];
  v14(v8, a1);
  v13(a2, v11, a1);
  return (v14)(v11, a1);
}

uint64_t sub_2587D9E00(uint64_t a1, void *a2)
{
  sub_2587DCDE8(0, &qword_27F95E2C0, sub_2587A84B8, sub_2587A8540, MEMORY[0x277CE0330]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  sub_2587A84B8();
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587DC150(&qword_27F95DAE8, &qword_27F95D3C0, off_2798A65E8);
    v13 = a2;
    v14 = sub_2588BBD08();
    sub_2587A8540();
    (*(*(v15 - 8) + 16))(v12, a1, v15);
    v16 = &v12[*(v9 + 36)];
    *v16 = v14;
    v16[1] = a2;
    sub_2587DCC5C(v12, v7, sub_2587A84B8);
    swift_storeEnumTagMultiPayload();
    sub_2587A8BBC();
    sub_2587A8614();
    v18 = v17;
    v19 = type metadata accessor for MedicalIDDataManager();
    v20 = sub_2587DC924(&qword_27F95D380, sub_2587A8614, sub_2587A880C, sub_2587A8934);
    v21 = sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    v29 = v18;
    v30 = v19;
    v31 = v20;
    v32 = v21;
    swift_getOpaqueTypeConformance2();
    sub_2588BC778();
    return sub_2587DCCC4(v12, sub_2587A84B8);
  }

  else
  {
    sub_2587A8540();
    (*(*(v23 - 8) + 16))(v7, a1, v23);
    swift_storeEnumTagMultiPayload();
    sub_2587A8BBC();
    sub_2587A8614();
    v25 = v24;
    v26 = type metadata accessor for MedicalIDDataManager();
    v27 = sub_2587DC924(&qword_27F95D380, sub_2587A8614, sub_2587A880C, sub_2587A8934);
    v28 = sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    v32 = v28;
    swift_getOpaqueTypeConformance2();
    return sub_2588BC778();
  }
}

uint64_t sub_2587DA248(uint64_t a1, void *a2)
{
  sub_2587DCDE8(0, &qword_27F95E358, sub_2587DB4CC, sub_2587DB554, MEMORY[0x277CE0330]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  sub_2587DB4CC();
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587DC150(&qword_27F95DAE8, &qword_27F95D3C0, off_2798A65E8);
    v13 = a2;
    v14 = sub_2588BBD08();
    sub_2587DB554();
    (*(*(v15 - 8) + 16))(v12, a1, v15);
    v16 = &v12[*(v9 + 36)];
    *v16 = v14;
    v16[1] = a2;
    sub_2587DCC5C(v12, v7, sub_2587DB4CC);
    swift_storeEnumTagMultiPayload();
    sub_2587DBD64();
    sub_2587DB66C();
    v18 = v17;
    v19 = type metadata accessor for MedicalIDDataManager();
    v20 = sub_2587DC924(&qword_27F95E1F8, sub_2587DB66C, sub_2587DB77C, sub_2587A8934);
    v21 = sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    v29 = v18;
    v30 = v19;
    v31 = v20;
    v32 = v21;
    swift_getOpaqueTypeConformance2();
    sub_2588BC778();
    return sub_2587DCCC4(v12, sub_2587DB4CC);
  }

  else
  {
    sub_2587DB554();
    (*(*(v23 - 8) + 16))(v7, a1, v23);
    swift_storeEnumTagMultiPayload();
    sub_2587DBD64();
    sub_2587DB66C();
    v25 = v24;
    v26 = type metadata accessor for MedicalIDDataManager();
    v27 = sub_2587DC924(&qword_27F95E1F8, sub_2587DB66C, sub_2587DB77C, sub_2587A8934);
    v28 = sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    v32 = v28;
    swift_getOpaqueTypeConformance2();
    return sub_2588BC778();
  }
}

uint64_t sub_2587DA690(uint64_t a1, void *a2)
{
  sub_2587DCDE8(0, &qword_27F95E340, sub_2587DCA90, sub_2587DC80C, MEMORY[0x277CE0330]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  sub_2587DCA90();
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587DC150(&qword_27F95DAE8, &qword_27F95D3C0, off_2798A65E8);
    v13 = a2;
    v14 = sub_2588BBD08();
    sub_2587DC80C();
    (*(*(v15 - 8) + 16))(v12, a1, v15);
    v16 = &v12[*(v9 + 36)];
    *v16 = v14;
    v16[1] = a2;
    sub_2587DCC5C(v12, v7, sub_2587DCA90);
    swift_storeEnumTagMultiPayload();
    sub_2587DCB18();
    sub_2587DC648();
    v18 = v17;
    v19 = type metadata accessor for MedicalIDDataManager();
    v20 = sub_2587DC924(&qword_27F95E330, sub_2587DC648, sub_2587DC9B0, sub_2587A8934);
    v21 = sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    v29 = v18;
    v30 = v19;
    v31 = v20;
    v32 = v21;
    swift_getOpaqueTypeConformance2();
    sub_2588BC778();
    return sub_2587DCCC4(v12, sub_2587DCA90);
  }

  else
  {
    sub_2587DC80C();
    (*(*(v23 - 8) + 16))(v7, a1, v23);
    swift_storeEnumTagMultiPayload();
    sub_2587DCB18();
    sub_2587DC648();
    v25 = v24;
    v26 = type metadata accessor for MedicalIDDataManager();
    v27 = sub_2587DC924(&qword_27F95E330, sub_2587DC648, sub_2587DC9B0, sub_2587A8934);
    v28 = sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    v32 = v28;
    swift_getOpaqueTypeConformance2();
    return sub_2588BC778();
  }
}

uint64_t sub_2587DAAD8(uint64_t a1, void *a2)
{
  sub_2587DCDE8(0, &qword_27F95E2F8, sub_2587DC47C, sub_2587DC2B4, MEMORY[0x277CE0330]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  sub_2587DC47C();
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587DC150(&qword_27F95DAE8, &qword_27F95D3C0, off_2798A65E8);
    v13 = a2;
    v14 = sub_2588BBD08();
    sub_2587DC2B4();
    (*(*(v15 - 8) + 16))(v12, a1, v15);
    v16 = &v12[*(v9 + 36)];
    *v16 = v14;
    v16[1] = a2;
    sub_2587DCC5C(v12, v7, sub_2587DC47C);
    swift_storeEnumTagMultiPayload();
    sub_2587DC504();
    sub_2587DC1A4();
    v18 = v17;
    v19 = type metadata accessor for MedicalIDDataManager();
    v20 = sub_2587DC924(&qword_27F95E2E0, sub_2587DC1A4, sub_2587DC3CC, sub_2587A8934);
    v21 = sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    v29 = v18;
    v30 = v19;
    v31 = v20;
    v32 = v21;
    swift_getOpaqueTypeConformance2();
    sub_2588BC778();
    return sub_2587DCCC4(v12, sub_2587DC47C);
  }

  else
  {
    sub_2587DC2B4();
    (*(*(v23 - 8) + 16))(v7, a1, v23);
    swift_storeEnumTagMultiPayload();
    sub_2587DC504();
    sub_2587DC1A4();
    v25 = v24;
    v26 = type metadata accessor for MedicalIDDataManager();
    v27 = sub_2587DC924(&qword_27F95E2E0, sub_2587DC1A4, sub_2587DC3CC, sub_2587A8934);
    v28 = sub_2587DCE6C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    v32 = v28;
    swift_getOpaqueTypeConformance2();
    return sub_2588BC778();
  }
}

uint64_t sub_2587DAF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

void sub_2587DB034()
{
  if (!qword_27F95E180)
  {
    sub_2587DB094();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E180);
    }
  }
}

void sub_2587DB094()
{
  if (!qword_27F95E188)
  {
    sub_2587DB148();
    sub_2587DCE6C(&qword_27F95E1C8, sub_2587DB148);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E188);
    }
  }
}

void sub_2587DB148()
{
  if (!qword_27F95E190)
  {
    sub_2587DCDE8(255, &qword_27F95E198, sub_2587DB1F0, sub_2587DB25C, MEMORY[0x277CE0338]);
    sub_2587DB310();
    v0 = type metadata accessor for UINavStack();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E190);
    }
  }
}

void sub_2587DB1F0()
{
  if (!qword_27F95E1A0)
  {
    v0 = sub_2588BBFD8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E1A0);
    }
  }
}

void sub_2587DB25C()
{
  if (!qword_27F95E1A8)
  {
    type metadata accessor for MedicalIDDataContentView();
    sub_2587DCE6C(&qword_27F95E1B0, type metadata accessor for MedicalIDDataContentView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E1A8);
    }
  }
}

unint64_t sub_2587DB310()
{
  result = qword_27F95E1B8;
  if (!qword_27F95E1B8)
  {
    sub_2587DCDE8(255, &qword_27F95E198, sub_2587DB1F0, sub_2587DB25C, MEMORY[0x277CE0338]);
    sub_2587DCE6C(&qword_27F95E1C0, sub_2587DB1F0);
    type metadata accessor for MedicalIDDataContentView();
    sub_2587DCE6C(&qword_27F95E1B0, type metadata accessor for MedicalIDDataContentView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E1B8);
  }

  return result;
}

void sub_2587DB4CC()
{
  if (!qword_27F95E1D8)
  {
    sub_2587DB554();
    sub_2587DB8A4(255, &qword_27F95D3B0, &qword_27F95D3B8, &qword_27F95D3C0, off_2798A65E8);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E1D8);
    }
  }
}