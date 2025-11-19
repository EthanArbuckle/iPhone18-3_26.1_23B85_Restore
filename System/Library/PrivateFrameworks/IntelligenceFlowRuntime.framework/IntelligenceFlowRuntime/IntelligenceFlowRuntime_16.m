uint64_t sub_22BCDC0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22BDB43E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BDB77D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22BBE6DE0(&qword_27D8E4328, &unk_22BDCC070);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v32 - v18;
  v20 = *(a1 + *(type metadata accessor for FeedbackLearning.FlowTask(0) + 32));
  v36 = a2;
  sub_22BD79B10();
  v21 = type metadata accessor for FeedbackLearning.FlowActionEvent(0);
  if (sub_22BB3AA28(v19, 1, v21) == 1)
  {
    v34 = v12;
    v35 = v11;
    sub_22BB58728(v19, &qword_27D8E4328, &unk_22BDCC070);
    sub_22BDB6404();
    (*(v7 + 16))(v10, a2, v6);
    v22 = sub_22BDB77C4();
    v23 = sub_22BDBB114();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v37 = v32;
      *v24 = 136315138;
      sub_22BCE16D4(&qword_28142DD38, MEMORY[0x277CC95F0]);
      v25 = sub_22BDBB684();
      v33 = a3;
      v27 = v26;
      (*(v7 + 8))(v10, v6);
      v28 = sub_22BB32EE0(v25, v27, &v37);
      a3 = v33;

      *(v24 + 4) = v28;
      _os_log_impl(&dword_22BB2C000, v22, v23, "The referenced created action event cannot be found, actionEventId=%s", v24, 0xCu);
      v29 = v32;
      sub_22BB32FA4(v32);
      MEMORY[0x2318A6080](v29, -1, -1);
      MEMORY[0x2318A6080](v24, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    (*(v34 + 8))(v15, v35);
    v30 = 1;
  }

  else
  {
    sub_22BCE17CC();
    v30 = 0;
  }

  return sub_22BB336D0(a3, v30, 1, v21);
}

uint64_t sub_22BCDC478@<X0>(uint64_t a1@<X8>)
{
  v2 = _s19EvaluatorVoteSourceOMa(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BBCE8FC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = _s24StatementExecutionResultOMa(0);
    sub_22BB336D0(a1, 1, 1, v6);
    return sub_22BB344AC(v5, _s19EvaluatorVoteSourceOMa);
  }

  else
  {
    sub_22BCE17CC();
    v8 = _s24StatementExecutionResultOMa(0);
    return sub_22BB336D0(a1, 0, 1, v8);
  }
}

uint64_t sub_22BCDC5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v39 = a1;
  v4 = sub_22BBE6DE0(&qword_27D8E4348, &qword_22BDC2FA8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - v6;
  v8 = sub_22BBE6DE0(&qword_27D8E4328, &unk_22BDCC070);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v37 - v10);
  v42 = sub_22BDB43E4();
  v40 = *(v42 - 8);
  v12 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s28StatementResolutionReferenceOMa(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22BBE6DE0(&qword_27D8E4318, &unk_22BDC2E90);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v37 - v21;
  v23 = _s20TaskStatementOutcomeOMa(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BCDCA1C(v22);
  if (sub_22BB3AA28(v22, 1, v23) == 1)
  {
    sub_22BB58728(v22, &qword_27D8E4318, &unk_22BDC2E90);
    v27 = type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
    return sub_22BB336D0(a3, 1, 1, v27);
  }

  else
  {
    v38 = a3;
    sub_22BCE17CC();
    sub_22BD01060(v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = v40;
      (*(v40 + 32))(v14, v18, v42);
      v30 = v39;
      sub_22BCDC0A4(v39, v14, v11);
      v31 = type metadata accessor for FeedbackLearning.FlowTask(0);
      v32 = sub_22BD39454(*(v30 + *(v31 + 24)));
      MEMORY[0x28223BE20](v32);
      v33 = v41;
      *(&v37 - 2) = v26;
      *(&v37 - 1) = v33;
      LOBYTE(v30) = sub_22BCD811C(sub_22BCE093C);
      sub_22BB58728(v7, &qword_27D8E4348, &qword_22BDC2FA8);
      sub_22BCDD064(v11, v30 & 1, v38);
      sub_22BB58728(v11, &qword_27D8E4328, &unk_22BDCC070);
      (*(v29 + 8))(v14, v42);
    }

    else
    {
      v34 = sub_22BDB4C34();
      v35 = v38;
      (*(*(v34 - 8) + 32))(v38, v18, v34);
      v36 = type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
      swift_storeEnumTagMultiPayload();
      sub_22BB336D0(v35, 0, 1, v36);
    }

    return sub_22BB344AC(v26, _s20TaskStatementOutcomeOMa);
  }
}

uint64_t sub_22BCDCA1C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22BBE6DE0(&qword_27D8E3DB8, &qword_22BDC1150);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = _s24StatementExecutionResultOMa(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BBCE8FC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BCE1778();
      v17 = _s23StatementCreatedOutcomeVMa(0);
      if (sub_22BB3AA28(v8, 1, v17) == 1)
      {
        sub_22BB58728(v8, &qword_27D8E3DB8, &qword_22BDC1150);
        goto LABEL_6;
      }

      sub_22BBCE8FC();
      v21 = _s20TaskStatementOutcomeOMa(0);
      swift_storeEnumTagMultiPayload();
      sub_22BB344AC(v8, _s23StatementCreatedOutcomeVMa);
      goto LABEL_8;
    case 3u:
      sub_22BCE1778();
      v13 = _s23StatementCreatedOutcomeVMa(0);
      if (sub_22BB3AA28(v6, 1, v13) == 1)
      {
        sub_22BB58728(v6, &qword_27D8E3DB8, &qword_22BDC1150);
        v14 = _s20TaskStatementOutcomeOMa(0);
        v15 = a1;
        v16 = 1;
      }

      else
      {
        sub_22BBCE8FC();
        v23 = _s20TaskStatementOutcomeOMa(0);
        swift_storeEnumTagMultiPayload();
        sub_22BB344AC(v6, _s23StatementCreatedOutcomeVMa);
        v15 = a1;
        v16 = 0;
        v14 = v23;
      }

      sub_22BB336D0(v15, v16, 1, v14);
      v24 = *(sub_22BBE6DE0(&qword_27D8E3DB0, &qword_22BDC1148) + 48);
      v25 = sub_22BDB8294();
      return (*(*(v25 - 8) + 8))(&v12[v24], v25);
    case 4u:
      return sub_22BCE1778();
    case 5u:
LABEL_6:
      v18 = _s20TaskStatementOutcomeOMa(0);
      v19 = a1;
      v20 = 1;
      return sub_22BB336D0(v19, v20, 1, v18);
    default:
      sub_22BCE17CC();
      v21 = _s20TaskStatementOutcomeOMa(0);
      swift_storeEnumTagMultiPayload();
LABEL_8:
      v19 = a1;
      v20 = 0;
      v18 = v21;
      return sub_22BB336D0(v19, v20, 1, v18);
  }
}

uint64_t sub_22BCDCE08@<X0>(uint64_t a1@<X0>, void *a2@<X2>, _BYTE *a3@<X8>)
{
  v6 = _s20TaskStatementOutcomeOMa(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDB4C34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10);
  v15 = sub_22BB69FEC(a2, a2[3]);
  v16 = _s19TranscriptRetrieverVMa();
  sub_22BB69088(v15 + *(v16 + 20), v24);
  v17 = sub_22BB69FEC(v24, v24[3]);
  v18 = *(v17 + *(_s14ActionExecutedVMa(0) + 28));
  sub_22BBCE8FC();
  if (swift_getEnumCaseMultiPayload())
  {

    sub_22BB344AC(v9, _s20TaskStatementOutcomeOMa);
    sub_22BBBCB1C();
    v20 = v19;

    (*(v11 + 8))(v14, v10);
    v21 = v20 ^ 1;
  }

  else
  {
    (*(v11 + 8))(v14, v10);
    sub_22BB344AC(v9, _s20TaskStatementOutcomeOMa);
    v21 = 0;
  }

  result = sub_22BB32FA4(v24);
  *a3 = v21 & 1;
  return result;
}

uint64_t sub_22BCDD064@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v57 = a1;
  v52 = a2;
  v58 = a3;
  v3 = sub_22BDB77D4();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BDB8E14();
  v56 = *(v6 - 8);
  v7 = *(v56 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BBE6DE0(&qword_27D8E2FC0, &qword_22BDBFB90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v49 - v12;
  v14 = sub_22BDBA014();
  v50 = *(v14 - 8);
  v15 = *(v50 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22BBE6DE0(&qword_27D8E4328, &unk_22BDCC070);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v49 - v20;
  v22 = type metadata accessor for FeedbackLearning.FlowActionEvent(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v51 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v49 - v26;
  sub_22BCE098C();
  if (sub_22BB3AA28(v21, 1, v22) == 1)
  {
    sub_22BB58728(v21, &qword_27D8E4328, &unk_22BDCC070);
    v28 = type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
    v29 = v58;
LABEL_9:
    v46 = 1;
    return sub_22BB336D0(v29, v46, 1, v28);
  }

  sub_22BCE17CC();
  v30 = &v27[*(v22 + 20)];
  sub_22BD1D4C0();
  sub_22BCB51B4();
  (*(v56 + 8))(v9, v6);
  if (sub_22BB3AA28(v13, 1, v14) == 1)
  {
    sub_22BB58728(v13, &qword_27D8E2FC0, &qword_22BDBFB90);
    v31 = v53;
    sub_22BDB6404();
    v32 = v51;
    sub_22BBCE8FC();
    v33 = sub_22BDB77C4();
    v34 = sub_22BDBB114();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v59 = v57;
      *v35 = 136315138;
      v36 = v32 + *(v22 + 20);
      sub_22BD1D4C0();
      v37 = sub_22BDBAC14();
      v39 = v38;
      sub_22BB344AC(v32, type metadata accessor for FeedbackLearning.FlowActionEvent);
      v40 = sub_22BB32EE0(v37, v39, &v59);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_22BB2C000, v33, v34, "The referenced action tool definition cannot be extracted, tool=%s", v35, 0xCu);
      v41 = v57;
      sub_22BB32FA4(v57);
      MEMORY[0x2318A6080](v41, -1, -1);
      MEMORY[0x2318A6080](v35, -1, -1);
    }

    else
    {

      sub_22BB344AC(v32, type metadata accessor for FeedbackLearning.FlowActionEvent);
    }

    (*(v54 + 8))(v31, v55);
    sub_22BB344AC(v27, type metadata accessor for FeedbackLearning.FlowActionEvent);
    v47 = v58;
    v28 = type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
    v29 = v47;
    goto LABEL_9;
  }

  v42 = *(v50 + 32);
  v42(v17, v13, v14);
  v43 = v58;
  sub_22BCE17CC();
  v44 = type metadata accessor for FeedbackLearning.TaskAction(0);
  v42((v43 + *(v44 + 20)), v17, v14);
  *(v43 + *(v44 + 24)) = v52 & 1;
  v45 = type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
  swift_storeEnumTagMultiPayload();
  v29 = v43;
  v46 = 0;
  v28 = v45;
  return sub_22BB336D0(v29, v46, 1, v28);
}

void sub_22BCDD668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v212 = a3;
  v187 = a2;
  v176 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
  v177 = *(v176 - 8);
  v4 = *(v177 + 64);
  v5 = MEMORY[0x28223BE20](v176);
  v185 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v216 = &v155 - v7;
  v162 = _s23ParameterCandidateValueVMa(0);
  v161 = *(v162 - 8);
  v8 = *(v161 + 64);
  MEMORY[0x28223BE20](v162);
  v196 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDB7B44();
  v11 = *(v10 - 8);
  v214 = v10;
  v215 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v213 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v160 = &v155 - v15;
  v165 = sub_22BDBA594();
  v164 = *(v165 - 8);
  v16 = *(v164 + 64);
  v17 = MEMORY[0x28223BE20](v165);
  v166 = &v155 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v168 = &v155 - v19;
  v20 = sub_22BDB80F4();
  v201 = *(v20 - 8);
  v21 = *(v201 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v210 = &v155 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v209 = &v155 - v28;
  v29 = sub_22BDB4C34();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v163 = &v155 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v191 = &v155 - v35;
  MEMORY[0x28223BE20](v34);
  v208 = &v155 - v36;
  v211 = sub_22BDB89F4();
  v37 = *(v211 - 1);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v211);
  v40 = &v155 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_22BDB9B14();
  v41 = *(v173 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v173);
  v190 = &v155 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_22BDB9954();
  v44 = *(v189 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v189);
  v188 = &v155 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for FeedbackLearning.FlowExpression(0);
  v158 = *(v47 - 8);
  v48 = *(v158 + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v159 = &v155 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_22BDB9B54();
  v50 = *(v194 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v194);
  v193 = &v155 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_22BBBB918(v212);
  v156 = type metadata accessor for FeedbackLearning.FlowTask(0);
  v53 = *(v156 + 28);
  v157 = a1;
  v54 = *(a1 + v53);
  v55 = *(v54 + 16);
  v198 = v30;
  v199 = v29;
  v186 = v55;
  if (v55)
  {
    v207 = v23;
    v197 = v20;
    v56 = 0;
    v184 = v54 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
    v183 = v50 + 16;
    v182 = (v41 + 88);
    v181 = *MEMORY[0x277D1E6F8];
    v180 = (v50 + 8);
    v172 = (v41 + 8);
    v171 = (v41 + 96);
    v170 = (v44 + 32);
    v206 = (v37 + 16);
    v205 = (v201 + 88);
    LODWORD(v204) = *MEMORY[0x277D1DAE0];
    LODWORD(v203) = *MEMORY[0x277D1DAB8];
    v167 = v37;
    v202 = (v37 + 8);
    v201 += 8;
    v200 = (v30 + 32);
    v57 = MEMORY[0x277D84F90];
    v169 = (v44 + 8);
    v58 = v211;
    v59 = v173;
    v60 = v194;
    v179 = v50;
    v178 = v54;
    while (v56 < *(v54 + 16))
    {
      v61 = *(v50 + 72);
      v195 = v56;
      v62 = v193;
      (*(v50 + 16))(v193, v184 + v61 * v56, v60);
      v63 = v190;
      sub_22BDB9B24();
      v64 = (*v182)(v63, v59);
      if (v64 == v181)
      {
        (*v171)(v63, v59);
        (*v170)(v188, v63, v189);
        v65 = sub_22BDB9914();
        v66 = *(v65 + 16);
        if (v66)
        {
          v192 = v57;
          v67 = (*(v167 + 80) + 32) & ~*(v167 + 80);
          v174 = v65;
          v68 = v65 + v67;
          v69 = *(v167 + 72);
          v211 = *(v167 + 16);
          v212 = v69;
          v70 = MEMORY[0x277D84F90];
          v71 = v197;
          do
          {
            (v211)(v40, v68, v58);
            v72 = v58;
            v73 = v207;
            sub_22BDB89D4();
            v74 = (*v205)(v73, v71);
            if (v74 == v204 || v74 == v203)
            {
              (*v201)(v73, v71);
              v76 = v210;
              sub_22BDB8174();
              (*v202)(v40, v72);
              sub_22BB336D0(v76, 0, 1, v29);
            }

            else
            {
              (*v202)(v40, v72);
              sub_22BB336D0(v210, 1, 1, v29);
              (*v201)(v73, v71);
            }

            v58 = v72;
            v77 = v209;
            sub_22BCE1778();
            if (sub_22BB3AA28(v77, 1, v29) == 1)
            {
              sub_22BB58728(v77, &qword_27D8E27C0, &qword_22BDBCDF0);
            }

            else
            {
              v78 = *v200;
              (*v200)(v208, v77, v29);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v81 = *(v70 + 16);
                sub_22BBB22CC();
                v70 = v82;
              }

              v79 = *(v70 + 16);
              if (v79 >= *(v70 + 24) >> 1)
              {
                sub_22BBB22CC();
                v70 = v83;
              }

              *(v70 + 16) = v79 + 1;
              v80 = v70 + ((*(v198 + 80) + 32) & ~*(v198 + 80)) + *(v198 + 72) * v79;
              v29 = v199;
              v78(v80, v208, v199);
              v71 = v197;
            }

            v68 += v212;
            --v66;
          }

          while (v66);

          v57 = v192;
          v30 = v198;
        }

        else
        {

          v70 = MEMORY[0x277D84F90];
        }

        (*v169)(v188, v189);
        (*v180)(v193, v194);
        v59 = v173;
      }

      else
      {
        (*v180)(v62, v60);
        (*v172)(v63, v59);
        v70 = MEMORY[0x277D84F90];
      }

      v84 = *(v70 + 16);
      v85 = *(v57 + 16);
      if (__OFADD__(v85, v84))
      {
        goto LABEL_92;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v85 + v84 > *(v57 + 24) >> 1)
      {
        sub_22BBB22CC();
        v57 = v86;
      }

      if (*(v70 + 16))
      {
        if ((*(v57 + 24) >> 1) - *(v57 + 16) < v84)
        {
          goto LABEL_94;
        }

        v87 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v88 = *(v30 + 72);
        swift_arrayInitWithCopy();

        v60 = v194;
        v50 = v179;
        v54 = v178;
        v89 = v195;
        if (v84)
        {
          v90 = *(v57 + 16);
          v91 = __OFADD__(v90, v84);
          v92 = v90 + v84;
          if (v91)
          {
            goto LABEL_98;
          }

          *(v57 + 16) = v92;
        }
      }

      else
      {

        v60 = v194;
        v50 = v179;
        v54 = v178;
        v89 = v195;
        if (v84)
        {
          goto LABEL_93;
        }
      }

      v56 = v89 + 1;
      if (v56 == v186)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
  }

  else
  {
    v57 = MEMORY[0x277D84F90];
LABEL_38:
    v93 = *(v157 + *(v156 + 24));
    v94 = *(v93 + 16);
    if (!v94)
    {
LABEL_50:

      return;
    }

    v95 = 0;
    v96 = *(type metadata accessor for FeedbackLearning.FlowExpressionValue(0) + 24);
    v97 = (v93 + ((*(v158 + 80) + 32) & ~*(v158 + 80)));
    v207 = (v30 + 8);
    v208 = (v30 + 16);
    v192 = v57;
    v211 = v97;
    v212 = v96;
    while (v95 < *(v93 + 16))
    {
      v98 = v97 + *(v158 + 72) * v95;
      sub_22BBCE8FC();
      ++v95;
      v99 = FeedbackLearning.FlowExpressionValue.FlowExpressionType.referredStatements.getter();
      v100 = 0;
      v101 = *(v99 + 16);
LABEL_42:
      if (v100 != v101)
      {
        if (v100 >= *(v99 + 16))
        {
          goto LABEL_101;
        }

        v102 = (*(v198 + 80) + 32) & ~*(v198 + 80);
        v210 = *(v198 + 72);
        v206 = *(v198 + 16);
        v206(v191, v99 + v102 + v210 * v100++, v199);
        v103 = (v192 + v102);
        v104 = *(v192 + 16) + 1;
        v205 = v103;
        do
        {
          if (!--v104)
          {
            (*v207)(v191, v199);
            goto LABEL_42;
          }

          v105 = &v103[v210];
          sub_22BCE16D4(&qword_28142DD10, MEMORY[0x277D1C338]);
          v103 = v105;
        }

        while ((sub_22BDBABD4() & 1) == 0);
        v106 = v199;
        v204 = *v207;
        v204(v191, v199);
        sub_22BB344AC(v159, type metadata accessor for FeedbackLearning.FlowExpression);

        v203 = *(v192 + 16);
        if (!v203)
        {
LABEL_78:

          sub_22BD1D364();
          v137 = v136;
          v138 = 0;
          v207 = *(v187 + 16);
          v139 = v136 + 56;
          v212 = v215 + 16;
          v208 = MEMORY[0x277D84F90];
          v140 = v213;
LABEL_79:
          while (v138 != v207)
          {
            v141 = (*(v177 + 80) + 32) & ~*(v177 + 80);
            v142 = *(v177 + 72);
            v211 = (v138 + 1);
            v209 = v142;
            v210 = v141;
            sub_22BBCE8FC();
            if (*(v137 + 16))
            {
              v143 = *(v176 + 28);
              v144 = *(v137 + 40);
              sub_22BCE16D4(&qword_27D8E3070, MEMORY[0x277D1D608]);
              v145 = sub_22BDBABA4();
              v146 = ~(-1 << *(v137 + 32));
              while (1)
              {
                v147 = v145 & v146;
                if (((*(v139 + (((v145 & v146) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v145 & v146)) & 1) == 0)
                {
                  break;
                }

                v148 = v214;
                v149 = v215;
                (*(v215 + 16))(v140, *(v137 + 48) + *(v215 + 72) * v147, v214);
                sub_22BCE16D4(&qword_27D8E3078, MEMORY[0x277D1D608]);
                v150 = sub_22BDBABD4();
                (*(v149 + 8))(v140, v148);
                v145 = v147 + 1;
                if (v150)
                {
                  sub_22BB344AC(v216, type metadata accessor for FeedbackLearning.CandidateEvaluation);
                  v138 = v211;
                  goto LABEL_79;
                }
              }
            }

            sub_22BCE17CC();
            v151 = v208;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v217 = v151;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v153 = *(v151 + 2);
              sub_22BD283B0();
              v151 = v217;
            }

            v154 = *(v151 + 2);
            if (v154 >= *(v151 + 3) >> 1)
            {
              sub_22BD283B0();
              v151 = v217;
            }

            *(v151 + 2) = v154 + 1;
            v208 = v151;
            sub_22BCE17CC();
            v138 = v211;
          }

          return;
        }

        v107 = 0;
        v108 = v164;
        v201 = v164 + 32;
        v202 = (v164 + 16);
        v109 = v214;
        v211 = (v215 + 32);
        v212 = v215 + 16;
        v200 = (v164 + 8);
        v209 = MEMORY[0x277D84F90];
        v110 = v165;
        v111 = v163;
        v112 = v175;
        while (v107 < *(v192 + 16))
        {
          v206(v111, &v205[v107 * v210], v106);
          if (*(v112 + 16) && (sub_22BBDAE68(), (v114 & 1) != 0))
          {
            v115 = v166;
            (*(v108 + 16))(v166, *(v112 + 56) + *(v108 + 72) * v113, v110);
            (*(v108 + 32))(v168, v115, v110);
            sub_22BCB3AC0();
            if (v116)
            {
              v117 = v116;
              v118 = *(v116 + 16);
              v119 = MEMORY[0x277D84F90];
              if (v118)
              {
                v217 = MEMORY[0x277D84F90];
                sub_22BD27D08();
                v119 = v217;
                v120 = *(v161 + 80);
                v198 = v117;
                v121 = v117 + ((v120 + 32) & ~v120);
                v122 = *(v161 + 72);
                v123 = v162;
                v124 = v160;
                do
                {
                  v125 = v196;
                  sub_22BBCE8FC();
                  (*v212)(v124, v125 + *(v123 + 20), v109);
                  sub_22BB344AC(v125, _s23ParameterCandidateValueVMa);
                  v217 = v119;
                  v126 = *(v119 + 2);
                  if (v126 >= *(v119 + 3) >> 1)
                  {
                    sub_22BD27D08();
                    v123 = v162;
                    v119 = v217;
                  }

                  *(v119 + 2) = v126 + 1;
                  (*(v215 + 32))(&v119[((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v126], v124, v109);
                  v121 += v122;
                  --v118;
                }

                while (v118);

                v110 = v165;
                v108 = v164;
                v106 = v199;
                v111 = v163;
              }

              else
              {
              }
            }

            else
            {
              v119 = MEMORY[0x277D84F90];
            }

            (*v200)(v168, v110);
          }

          else
          {
            v119 = MEMORY[0x277D84F90];
          }

          v127 = v209;
          v204(v111, v106);
          v128 = *(v119 + 2);
          v129 = *(v127 + 2);
          if (__OFADD__(v129, v128))
          {
            goto LABEL_96;
          }

          if (!swift_isUniquelyReferenced_nonNull_native() || v129 + v128 > *(v127 + 3) >> 1)
          {
            sub_22BD8FAC4();
            v127 = v130;
          }

          v106 = v199;
          v131 = *(v119 + 2);
          v209 = v127;
          if (v131)
          {
            if ((*(v127 + 3) >> 1) - *(v127 + 2) < v128)
            {
              goto LABEL_99;
            }

            v132 = (*(v215 + 80) + 32) & ~*(v215 + 80);
            v133 = *(v215 + 72);
            swift_arrayInitWithCopy();

            v112 = v175;
            if (v128)
            {
              v134 = *(v209 + 2);
              v91 = __OFADD__(v134, v128);
              v135 = v134 + v128;
              if (v91)
              {
                goto LABEL_100;
              }

              *(v209 + 2) = v135;
            }
          }

          else
          {

            v112 = v175;
            if (v128)
            {
              goto LABEL_97;
            }
          }

          if (++v107 == v203)
          {
            goto LABEL_78;
          }
        }

        goto LABEL_95;
      }

      sub_22BB344AC(v159, type metadata accessor for FeedbackLearning.FlowExpression);

      v97 = v211;
      if (v95 == v94)
      {
        goto LABEL_50;
      }
    }
  }

  __break(1u);
}

uint64_t sub_22BCDED68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for FeedbackLearning.FlowExpressionValue(0) + 24);
  sub_22BBCE8FC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = sub_22BDB4C34();
      (*(*(v14 - 8) + 8))(v11, v14);
    }

    v15 = 0;
  }

  else
  {
    sub_22BB344AC(v11, type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType);
    v15 = 1;
  }

  v16 = sub_22BB69FEC(a5, a5[3]);
  v17 = sub_22BCE0A58(a2, a4, v16, v15);
  return sub_22BBD5D38(v17);
}

uint64_t sub_22BCDEED4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = _s33CandidateParameterResolutionStateVMa(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BDB4C34();
  v27 = *(*(v11 - 8) + 16);
  v27(v10, a1, v11);
  v12 = sub_22BB69FEC(a2, a2[3]);
  v13 = _s19TranscriptRetrieverVMa();
  sub_22BB69088(v12 + *(v13 + 20), &v10[*(v7 + 28)]);
  v14 = sub_22BB69FEC(a2, a2[3]);
  sub_22BB69088(v14 + *(v13 + 28), &v10[*(v7 + 32)]);
  v15 = _s16CandidateSummaryVMa(0);
  v16 = v15[7];
  v17 = v15[5];
  sub_22BCB26FC();
  sub_22BB344AC(v10, _s33CandidateParameterResolutionStateVMa);
  LOBYTE(v12) = v28;
  v27(a3, a1, v11);
  v18 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
  v19 = v18[5];
  sub_22BBCE8FC();
  v20 = v15[6];
  v21 = v18[6];
  sub_22BBCE8FC();
  v22 = v18[7];
  v23 = sub_22BDB7B44();
  result = (*(*(v23 - 8) + 16))(&a3[v22], a1 + v16, v23);
  v25 = *(a1 + v15[8]);
  v26 = *(a1 + v15[9]);
  a3[v18[8]] = v12;
  a3[v18[9]] = v25;
  *&a3[v18[10]] = v26;
  return result;
}

uint64_t sub_22BCDF124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22BDB7B44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDBA964();
  v11 = sub_22BDB4C34();
  (*(*(v11 - 8) + 16))(a3, a2, v11);
  v12 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
  v13 = v12[5];
  type metadata accessor for FeedbackLearning.CandidateParameter(0);
  swift_storeEnumTagMultiPayload();
  v14 = v12[6];
  v15 = sub_22BDBA994();
  (*(*(v15 - 8) + 16))(a3 + v14, a1, v15);
  type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  swift_storeEnumTagMultiPayload();
  (*(v7 + 32))(a3 + v12[7], v10, v6);
  v16 = *(a2 + v12[9]);
  v17 = *(a2 + v12[10]);
  *(a3 + v12[8]) = *(a2 + v12[8]);
  *(a3 + v12[9]) = v16;
  *(a3 + v12[10]) = v17;
  return sub_22BB336D0(a3, 0, 1, v12);
}

uint64_t sub_22BCDF310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a2 + 16) && (v11 = sub_22BD84634(a3), (v12 & 1) != 0) && (v13 = *(*(a2 + 56) + 8 * v11), v14 = *(_s27StatementParameterCandidateVMa(0) + 20), , sub_22BC1E6E0(), v16 = v15, , (v16 & 1) != 0))
  {
    v17 = _s16CandidateSummaryVMa(0);
    v18 = a6;
    v19 = 1;
  }

  else
  {
    v20 = sub_22BDB4C34();
    (*(*(v20 - 8) + 16))(a6, a5, v20);
    v21 = _s16CandidateSummaryVMa(0);
    v22 = v21[5];
    sub_22BBCE8FC();
    v23 = v21[6];
    sub_22BBCE8FC();
    v24 = *(_s27StatementParameterCandidateVMa(0) + 20);
    v25 = v21[7];
    v26 = sub_22BDB7B44();
    (*(*(v26 - 8) + 16))(a6 + v25, a1 + v24, v26);
    *(a6 + v21[8]) = -126;
    *(a6 + v21[9]) = a4 & 1;
    v18 = a6;
    v19 = 0;
    v17 = v21;
  }

  return sub_22BB336D0(v18, v19, 1, v17);
}

uint64_t sub_22BCDF4D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = a1;
  v3 = sub_22BDB9D54();
  v24 = *(v3 - 8);
  v25 = v3;
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BDB9954();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BDB9B14();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB9B24();
  if ((*(v13 + 88))(v16, v12) == *MEMORY[0x277D1E6F8])
  {
    (*(v13 + 96))(v16, v12);
    (*(v8 + 32))(v11, v16, v7);
    v17 = sub_22BDB9914();
    MEMORY[0x28223BE20](v17);
    *(&v24 - 2) = v26;
    v18 = sub_22BD7280C(sub_22BCE09E0, (&v24 - 4), v17);

    if (v18)
    {
      sub_22BDB9B44();
      sub_22BDB9D44();
      (*(v24 + 8))(v6, v25);
      (*(v8 + 8))(v11, v7);
      v19 = sub_22BDB4354();
      v20 = a2;
      v21 = 0;
    }

    else
    {
      (*(v8 + 8))(v11, v7);
      v19 = sub_22BDB4354();
      v20 = a2;
      v21 = 1;
    }

    return sub_22BB336D0(v20, v21, 1, v19);
  }

  else
  {
    v22 = sub_22BDB4354();
    sub_22BB336D0(a2, 1, 1, v22);
    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_22BCDF834()
{
  v0 = sub_22BDB4C34();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB8174();
  v5 = sub_22BDB4C04();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

void sub_22BCDF920(uint64_t a1)
{
  v7 = sub_22BBE6DE0(&qword_27D8E4388, &qword_22BDC3010);
  v8 = sub_22BB2F0C8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BB30C74();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  sub_22BB2F39C();
  v15 = sub_22BB2F120();
  v16 = _s23ParameterCandidateValueVMa(v15);
  v17 = sub_22BB30444(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BB305A8();
  sub_22BB380F8(v20);
  sub_22BB37030(MEMORY[0x277D84F90]);
  while (1)
  {
    while (1)
    {
      if (!v3)
      {
        goto LABEL_5;
      }

      v21 = *(v3 + 16);
      if (v5 == v21)
      {
        break;
      }

      if (v5 >= v21)
      {
        goto LABEL_36;
      }

      sub_22BB6BB04();
      sub_22BBCE8FC();
      sub_22BB3A260(v13, 0);
      sub_22BB6B6B8();
      if (sub_22BB3AA28(v1, 1, v16) == 1)
      {
        goto LABEL_31;
      }

      sub_22BCE17CC();
      v25 = v42;
      if (!v42)
      {
        sub_22BB58874();
        if (v26)
        {
          goto LABEL_39;
        }

        sub_22BBE6DE0(&qword_27D8E4390, &qword_22BDC3018);
        v43 = sub_22BB37520();
        v27 = j__malloc_size(v43);
        if (!v41)
        {
          goto LABEL_40;
        }

        if (v27 - v1 == 0x8000000000000000 && v41 == -1)
        {
          goto LABEL_41;
        }

        v29 = sub_22BB36DDC(v27 - v1);
        if (v34)
        {
          if (v32 < v29 || v33 >= v29 + v30 + v31)
          {
            sub_22BB34334();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v32 != v29)
          {
            sub_22BB34334();
            swift_arrayInitWithTakeBackToFront();
          }

          *(v44 + 16) = 0;
        }

        sub_22BB529B4();
        v25 = v1;
      }

      v36 = __OFSUB__(v25, 1);
      v37 = v25 - 1;
      if (v36)
      {
        goto LABEL_37;
      }

      v42 = v37;
      ++v5;
      sub_22BB3AD74();
      sub_22BB94E44();
    }

    v22 = sub_22BB3A260(v13, 1);
    sub_22BB58728(v22, &qword_27D8E4388, &qword_22BDC3010);
LABEL_5:
    v23 = *(a1 + 16);
    if (v4 == v23)
    {
      break;
    }

    if (v4 >= v23)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v1 = v4 + 1;
    v24 = *(v2 + 8 * v4);

    v5 = 0;
    v3 = v24;
    v4 = v1;
  }

  sub_22BB692AC();
LABEL_31:

  sub_22BB58728(v1, &qword_27D8E4388, &qword_22BDC3010);
  v38 = *(v44 + 24);
  if (v38 < 2)
  {
    return;
  }

  v39 = v38 >> 1;
  v36 = __OFSUB__(v39, v42);
  v40 = v39 - v42;
  if (!v36)
  {
    *(v44 + 16) = v40;
    return;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

void sub_22BCDFC54(uint64_t a1)
{
  v7 = sub_22BBE6DE0(&qword_27D8E3EA8, &qword_22BDC1378);
  v8 = sub_22BB2F0C8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BB30C74();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  sub_22BB2F39C();
  sub_22BB2F120();
  v15 = _s15CandidateResultVMa();
  v16 = sub_22BB30444(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB305A8();
  sub_22BB380F8(v19);
  sub_22BB37030(MEMORY[0x277D84F90]);
  while (1)
  {
    while (1)
    {
      if (!v3)
      {
        goto LABEL_5;
      }

      v20 = *(v3 + 16);
      if (v5 == v20)
      {
        break;
      }

      if (v5 >= v20)
      {
        goto LABEL_36;
      }

      sub_22BB6BB04();
      sub_22BBCE8FC();
      sub_22BB3A260(v13, 0);
      sub_22BB6B6B8();
      if (sub_22BB3AA28(v1, 1, v15) == 1)
      {
        goto LABEL_31;
      }

      sub_22BCE17CC();
      v24 = v41;
      if (!v41)
      {
        sub_22BB58874();
        if (v25)
        {
          goto LABEL_39;
        }

        sub_22BBE6DE0(&qword_27D8E3EB8, &unk_22BDC3000);
        v42 = sub_22BB37520();
        v26 = j__malloc_size(v42);
        if (!v40)
        {
          goto LABEL_40;
        }

        if (v26 - v1 == 0x8000000000000000 && v40 == -1)
        {
          goto LABEL_41;
        }

        v28 = sub_22BB36DDC(v26 - v1);
        if (v33)
        {
          if (v31 < v28 || v32 >= v28 + v29 + v30)
          {
            sub_22BB34334();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v31 != v28)
          {
            sub_22BB34334();
            swift_arrayInitWithTakeBackToFront();
          }

          *(v43 + 16) = 0;
        }

        sub_22BB529B4();
        v24 = v1;
      }

      v35 = __OFSUB__(v24, 1);
      v36 = v24 - 1;
      if (v35)
      {
        goto LABEL_37;
      }

      v41 = v36;
      ++v5;
      sub_22BB3AD74();
      sub_22BB94E44();
    }

    v21 = sub_22BB3A260(v13, 1);
    sub_22BB58728(v21, &qword_27D8E3EA8, &qword_22BDC1378);
LABEL_5:
    v22 = *(a1 + 16);
    if (v4 == v22)
    {
      break;
    }

    if (v4 >= v22)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v1 = v4 + 1;
    v23 = *(v2 + 8 * v4);

    v5 = 0;
    v3 = v23;
    v4 = v1;
  }

  sub_22BB692AC();
LABEL_31:

  sub_22BB58728(v1, &qword_27D8E3EA8, &qword_22BDC1378);
  v37 = *(v43 + 24);
  if (v37 < 2)
  {
    return;
  }

  v38 = v37 >> 1;
  v35 = __OFSUB__(v38, v41);
  v39 = v38 - v41;
  if (!v35)
  {
    *(v43 + 16) = v39;
    return;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t sub_22BCDFF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_22BCD9E54(a1, v2[4], a2);
}

unint64_t sub_22BCDFFD0()
{
  result = sub_22BDB9C14();
  if (v1 <= 0x3F)
  {
    result = sub_22BCE0054();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22BCE0054()
{
  result = qword_281429480[0];
  if (!qword_281429480[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_281429480);
  }

  return result;
}

unint64_t sub_22BCE00B0()
{
  result = qword_27D8E4350;
  if (!qword_27D8E4350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4350);
  }

  return result;
}

uint64_t sub_22BCE0120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_22BCE0180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  v7 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v68 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BBE6DE0(&qword_27D8E2FC0, &qword_22BDBFB90);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v65 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v67 = &v54 - v13;
  v64 = sub_22BDBA014();
  v14 = *(v64 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v64);
  v61 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_22BDB9774();
  v55 = *(v56 - 8);
  v17 = *(v55 + 64);
  MEMORY[0x28223BE20](v56);
  v54 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
  v66 = *(v71 - 8);
  v19 = *(v66 + 64);
  MEMORY[0x28223BE20](v71);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = _s19TranscriptRetrieverVMa();
  v81 = &off_283F7A608;
  sub_22BB8B8A0(v79);
  sub_22BBCE8FC();
  v22 = *(type metadata accessor for FeedbackLearning.FlowTask(0) + 24);
  v57 = a1;
  v23 = *(a1 + v22);
  v58 = a4;
  v75 = a4;
  v76 = a2;
  v77 = v79;
  v24 = MEMORY[0x277D84F90];
  v25 = sub_22BCD8038(MEMORY[0x277D84F90], sub_22BCE0A00, v74, v23);
  v26 = sub_22BCAD5F0(v25);

  v73 = v79;
  v27 = sub_22BD65758(sub_22BCE0A20, v72, v26);

  v28 = 0;
  v70 = *(v27 + 16);
  v62 = (v14 + 32);
  v60 = (v14 + 8);
  v29 = v24;
  v63 = v27;
  while (1)
  {
    if (v70 == v28)
    {
      v78 = v29;
      sub_22BD66C60(v27);
      v48 = v78;
      v49 = sub_22BB69FEC(v79, v80);
      v50 = v55;
      v51 = v54;
      v52 = v56;
      (*(v55 + 16))(v54, v49, v56);
      v53 = sub_22BDB9744();
      (*(v50 + 8))(v51, v52);
      sub_22BCDD668(v57, v48, v53);

      sub_22BB32FA4(v79);
      return;
    }

    if (v28 >= *(v27 + 16))
    {
      break;
    }

    v30 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v31 = *(v66 + 72);
    sub_22BBCE8FC();
    v32 = *(v71 + 24);
    v33 = v68;
    sub_22BBCE8FC();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22BB344AC(v33, type metadata accessor for FeedbackLearning.CandidateDefinition);
      v34 = 1;
      v35 = v65;
      v36 = v64;
    }

    else
    {
      v35 = v65;
      v36 = v64;
      (*v62)(v65, v33, v64);
      v34 = 0;
    }

    sub_22BB336D0(v35, v34, 1, v36);
    v37 = v67;
    sub_22BCE1778();
    if (sub_22BB3AA28(v37, 1, v36) == 1)
    {
      sub_22BB58728(v37, &qword_27D8E2FC0, &qword_22BDBFB90);
    }

    else
    {
      v38 = v61;
      (*v62)(v61, v37, v36);
      if ((v21[*(v71 + 32)] & 0xFE) == 2)
      {
        sub_22BCB56AC();
        v59 = &v54;
        MEMORY[0x28223BE20](v39);
        *(&v54 - 2) = v21;
        sub_22BCA8D74();
        v41 = v40;

        (*v60)(v38, v36);
        goto LABEL_13;
      }

      (*v60)(v38, v36);
    }

    v41 = MEMORY[0x277D84F90];
LABEL_13:
    sub_22BB344AC(v21, type metadata accessor for FeedbackLearning.CandidateEvaluation);
    v42 = *(v41 + 16);
    v43 = *(v29 + 16);
    if (__OFADD__(v43, v42))
    {
      goto LABEL_26;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v43 + v42 > *(v29 + 24) >> 1)
    {
      sub_22BD90F20();
      v29 = v44;
    }

    if (*(v41 + 16))
    {
      if ((*(v29 + 24) >> 1) - *(v29 + 16) < v42)
      {
        goto LABEL_28;
      }

      swift_arrayInitWithCopy();

      v27 = v63;
      if (v42)
      {
        v45 = *(v29 + 16);
        v46 = __OFADD__(v45, v42);
        v47 = v45 + v42;
        if (v46)
        {
          goto LABEL_29;
        }

        *(v29 + 16) = v47;
      }
    }

    else
    {

      v27 = v63;
      if (v42)
      {
        goto LABEL_27;
      }
    }

    ++v28;
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

uint64_t sub_22BCE098C()
{
  sub_22BB35F54();
  v3 = sub_22BBE6DE0(v1, v2);
  sub_22BB30ED8(v3);
  v5 = *(v4 + 16);
  v6 = sub_22BB31F54();
  v7(v6);
  return v0;
}

uint64_t sub_22BCE0A58(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v100) = a4;
  v120 = sub_22BDB7B44();
  v5 = *(v120 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v120);
  v119 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v115 = &v95 - v9;
  v110 = sub_22BDB4C34();
  v99 = *(v110 - 8);
  v10 = *(v99 + 64);
  MEMORY[0x28223BE20](v110);
  v106 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for FeedbackLearning.CandidateParameter(0);
  v105 = *(v95 - 8);
  v12 = *(v105 + 64);
  v13 = MEMORY[0x28223BE20](v95);
  *&v111 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v117 = &v95 - v15;
  v101 = sub_22BDB77D4();
  v98 = *(v101 - 8);
  v16 = *(v98 + 64);
  MEMORY[0x28223BE20](v101);
  v102 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_22BBE6DE0(&qword_27D8E3FD8, &qword_22BDC17E0);
  v18 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v109 = &v95 - v19;
  v20 = _s16CandidateSummaryVMa(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = _s19TranscriptRetrieverVMa();
  v124 = v97;
  v125 = &off_283F7A608;
  sub_22BB8B8A0(&v123);
  sub_22BBCE8FC();
  v107 = a1;
  v121 = a1;

  sub_22BDA2ADC();
  v108 = 0;
  v26 = sub_22BCAD5F0(v25);

  v27 = *(v26 + 16);
  v116 = v21;
  v114 = v27;
  v103 = v20;
  if (v27)
  {
    v28 = 0;
    v118 = *(v20 + 20);
    v29 = *(v20 + 28);
    v112 = (v26 + ((*(v21 + 80) + 32) & ~*(v21 + 80)));
    v113 = v29;
    v30 = (v5 + 16);
    v31 = (v5 + 8);
    v32 = MEMORY[0x277D84F98];
    while (v28 < *(v26 + 16))
    {
      v33 = *(v116 + 72);
      sub_22BBCE8FC();
      (*v30)(v119, v113 + v24, v120);
      swift_isUniquelyReferenced_nonNull_native();
      v122 = v32;
      v34 = sub_22BD84634(v24 + v118);
      if (__OFADD__(*(v32 + 16), (v35 & 1) == 0))
      {
        goto LABEL_45;
      }

      v36 = v34;
      v37 = v35;
      sub_22BBE6DE0(&qword_27D8E4360, &qword_22BDC2FC0);
      v38 = sub_22BDBB4A4();
      v32 = v122;
      if (v38)
      {
        v39 = sub_22BD84634(v24 + v118);
        if ((v37 & 1) != (v40 & 1))
        {
          goto LABEL_49;
        }

        v36 = v39;
      }

      if ((v37 & 1) == 0)
      {
        sub_22BBCE8FC();
        sub_22BD7DC2C();
      }

      v28 = (v28 + 1);
      v41 = *(v32 + 56) + 8 * v36;
      v42 = v115;
      sub_22BD2BAC0();
      (*v31)(v42, v120);
      sub_22BB344AC(v24, _s16CandidateSummaryVMa);
      v43 = v117;
      if (v114 == v28)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v32 = MEMORY[0x277D84F98];
    v43 = v117;
LABEL_13:
    v44 = sub_22BB69FEC(&v123, v124);
    v45 = *sub_22BB69FEC((v44 + *(v97 + 28)), *(v44 + *(v97 + 28) + 24));

    v46 = sub_22BD85C50(v107, v45);

    v96 = v26;
    if (!v46)
    {
      sub_22BBE6DE0(&qword_27D8E3E78, &unk_22BDC1340);
      sub_22BCE16D4(&qword_27D8E3F98, type metadata accessor for FeedbackLearning.CandidateParameter);
      v46 = sub_22BDBAB14();
    }

    v47 = v110;
    v48 = v46 + 64;
    v49 = 1 << *(v46 + 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = v50 & *(v46 + 64);
    v52 = (v49 + 63) >> 6;
    LODWORD(v115) = v100 & 1;
    v113 = (v99 + 8);
    v114 = (v99 + 16);
    v112 = (v98 + 8);
    v119 = v46;

    v53 = 0;
    v54 = MEMORY[0x277D84F90];
    *&v55 = 136315394;
    v111 = v55;
    v118 = v52;
    while (v51)
    {
      v120 = v54;
      v56 = v106;
LABEL_25:
      v58 = __clz(__rbit64(v51)) | (v53 << 6);
      v59 = v119;
      v60 = *(v119 + 6) + *(v105 + 72) * v58;
      v61 = v109;
      v62 = sub_22BBCE8FC();
      v63 = *(*(v59 + 7) + 8 * v58);
      *(v61 + *(v104 + 48)) = v63;
      if (v63)
      {
        MEMORY[0x28223BE20](v62);
        *(&v95 - 4) = v32;
        *(&v95 - 3) = v61;
        *(&v95 - 16) = v115;
        *(&v95 - 1) = v107;

        v64 = v108;
        sub_22BCA8F78();
        v66 = v65;
        v108 = v64;
      }

      else
      {
        v67 = v102;
        sub_22BDB6404();
        sub_22BBCE8FC();
        v68 = v47;
        (*v114)(v56, v107, v47);
        v69 = v56;
        v70 = sub_22BDB77C4();
        v71 = sub_22BDBB114();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          LODWORD(v99) = v71;
          v73 = v43;
          v74 = v72;
          v100 = swift_slowAlloc();
          v122 = v100;
          *v74 = v111;
          v75 = FeedbackLearning.CandidateParameter.description.getter();
          v77 = v76;
          sub_22BB344AC(v73, type metadata accessor for FeedbackLearning.CandidateParameter);
          v78 = sub_22BB32EE0(v75, v77, &v122);

          *(v74 + 4) = v78;
          *(v74 + 12) = 2080;
          sub_22BCE16D4(&qword_27D8E2F68, MEMORY[0x277D1C338]);
          v79 = v110;
          v80 = sub_22BDBB684();
          v82 = v81;
          (*v113)(v69, v79);
          v83 = sub_22BB32EE0(v80, v82, &v122);

          *(v74 + 14) = v83;
          _os_log_impl(&dword_22BB2C000, v70, v99, "Cannot retrieve candidate ids for parameter %s in %s, candidate id is nil", v74, 0x16u);
          v84 = v100;
          swift_arrayDestroy();
          MEMORY[0x2318A6080](v84, -1, -1);
          MEMORY[0x2318A6080](v74, -1, -1);

          (*v112)(v102, v101);
        }

        else
        {

          (*v113)(v69, v68);
          sub_22BB344AC(v43, type metadata accessor for FeedbackLearning.CandidateParameter);
          (*v112)(v67, v101);
        }

        v66 = MEMORY[0x277D84F90];
        v61 = v109;
      }

      sub_22BB58728(v61, &qword_27D8E3FD8, &qword_22BDC17E0);
      v85 = *(v66 + 16);
      v54 = v120;
      v86 = *(v120 + 16);
      if (__OFADD__(v86, v85))
      {
        goto LABEL_46;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v86 + v85 > *(v54 + 24) >> 1)
      {
        sub_22BBD5D64();
        v54 = v87;
      }

      v47 = v110;
      v43 = v117;
      v51 &= v51 - 1;
      if (*(v66 + 16))
      {
        v88 = *(v54 + 16);
        if ((*(v54 + 24) >> 1) - v88 < v85)
        {
          goto LABEL_47;
        }

        v89 = v54 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v88;
        swift_arrayInitWithCopy();

        v52 = v118;
        if (v85)
        {
          v90 = *(v54 + 16);
          v91 = __OFADD__(v90, v85);
          v92 = v90 + v85;
          if (v91)
          {
            goto LABEL_48;
          }

          *(v54 + 16) = v92;
        }
      }

      else
      {

        v52 = v118;
        if (v85)
        {
          __break(1u);
LABEL_42:

          v122 = v96;
          sub_22BBD5D38(v54);
          v93 = v122;
          sub_22BB32FA4(&v123);
          return v93;
        }
      }
    }

    v56 = v106;
    while (1)
    {
      v57 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v57 >= v52)
      {
        goto LABEL_42;
      }

      v51 = *(v48 + 8 * v57);
      ++v53;
      if (v51)
      {
        v120 = v54;
        v53 = v57;
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BCE16D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BCE1778()
{
  sub_22BB35F54();
  v3 = sub_22BBE6DE0(v1, v2);
  sub_22BB30ED8(v3);
  v5 = *(v4 + 32);
  v6 = sub_22BB31F54();
  v7(v6);
  return v0;
}

uint64_t sub_22BCE17CC()
{
  sub_22BB35F54();
  v2 = v1(0);
  sub_22BB30ED8(v2);
  v4 = *(v3 + 32);
  v5 = sub_22BB31F54();
  v6(v5);
  return v0;
}

_BYTE *storeEnumTagSinglePayload for TaskEvaluatorError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22BCE18D0()
{
  result = qword_27D8E4398;
  if (!qword_27D8E4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4398);
  }

  return result;
}

uint64_t sub_22BCE1924(char a1)
{
  v2 = 0xEA00000000006465;
  v3 = 0x6E6F646E6162612ELL;
  switch(a1)
  {
    case 1:
      v2 = 0x800000022BDD30F0;
      v3 = 0xD000000000000015;
      break;
    case 2:
      break;
    case 3:
      v2 = 0xE900000000000064;
      v3 = 0x657463656A65722ELL;
      break;
    default:
      v3 = 0xD000000000000012;
      v2 = 0x800000022BDD3110;
      break;
  }

  MEMORY[0x2318A4C40](v3, v2);
}

void sub_22BCE19F0()
{
  sub_22BB30F94();
  v34 = v4;
  v5 = sub_22BDBA994();
  v6 = sub_22BB30444(v5);
  v33 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  sub_22BD00A30();
  v10 = sub_22BDBA594();
  v11 = sub_22BB30444(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  sub_22BB345CC();
  v16 = sub_22BDBA014();
  v17 = sub_22BB30444(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BB30574();
  sub_22BB72E10();
  v22 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  v23 = sub_22BB2F330(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BB30574();
  sub_22BB36FD8();
  sub_22BB32380();
  sub_22BCF8A8C(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_22BB3AE34();
    v30(v2, v3, v16);
    v31 = v34;
    sub_22BDBA004();
    (*(v19 + 8))(v2, v16);
LABEL_6:
    v32 = sub_22BDB7B44();
    sub_22BB336D0(v31, 0, 1, v32);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(v33 + 32))(v0, v3, v5);
    v31 = v34;
    sub_22BDBA964();
    (*(v33 + 8))(v0, v5);
    goto LABEL_6;
  }

  (*(v13 + 32))(v1, v3, v10);
  sub_22BCB4048();
  v27 = *(v13 + 8);
  v28 = sub_22BB52D78();
  v29(v28);
LABEL_7:
  sub_22BB314EC();
}

uint64_t sub_22BCE1CAC(uint64_t a1)
{
  v2 = sub_22BCE21B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE1CE8(uint64_t a1)
{
  v2 = sub_22BCE21B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE1D24(uint64_t a1)
{
  v2 = sub_22BCE215C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE1D60(uint64_t a1)
{
  v2 = sub_22BCE215C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE1D9C(uint64_t a1)
{
  v2 = sub_22BCE2258();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE1DD8(uint64_t a1)
{
  v2 = sub_22BCE2258();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE1E14(uint64_t a1)
{
  v2 = sub_22BCE2204();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE1E50(uint64_t a1)
{
  v2 = sub_22BCE2204();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.ConfirmationPromptResult.encode(to:)()
{
  sub_22BB31014();
  v2 = v1;
  v3 = sub_22BBE6DE0(&qword_27D8E43A0, &qword_22BDC30E0);
  sub_22BB30444(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB30BA8();
  sub_22BD00CD8(v7);
  v8 = sub_22BBE6DE0(&qword_27D8E43A8, &qword_22BDC30E8);
  sub_22BB30444(v8);
  v10 = *(v9 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  sub_22BB38B54(v12, v33);
  v13 = sub_22BBE6DE0(&qword_27D8E43B0, &qword_22BDC30F0);
  sub_22BB30444(v13);
  v15 = *(v14 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB3721C();
  v17 = sub_22BBE6DE0(&qword_27D8E43B8, &qword_22BDC30F8);
  sub_22BB30444(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v22);
  sub_22BB34298();
  v23 = *v0;
  v25 = *(v2 + 24);
  v24 = *(v2 + 32);
  v26 = sub_22BD00A24();
  sub_22BB699E4(v26, v27);
  sub_22BCE215C();
  sub_22BD00CC0();
  sub_22BDBB8A4();
  if (v23)
  {
    if (v23 == 1)
    {
      sub_22BB393D0();
      sub_22BCE2204();
    }

    else
    {
      sub_22BB3CF44();
      sub_22BCE21B0();
    }

    sub_22BB31D34();
    sub_22BDBB5F4();
  }

  else
  {
    sub_22BCE2258();
    sub_22BB31D34();
    sub_22BDBB5F4();
  }

  v28 = sub_22BB9607C();
  v29(v28);
  v30 = *(v19 + 8);
  v31 = sub_22BB58D2C();
  v32(v31);
  sub_22BB376A8();
}

unint64_t sub_22BCE215C()
{
  result = qword_27D8E43C0;
  if (!qword_27D8E43C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E43C0);
  }

  return result;
}

unint64_t sub_22BCE21B0()
{
  result = qword_27D8E43C8;
  if (!qword_27D8E43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E43C8);
  }

  return result;
}

unint64_t sub_22BCE2204()
{
  result = qword_27D8E43D0;
  if (!qword_27D8E43D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E43D0);
  }

  return result;
}

unint64_t sub_22BCE2258()
{
  result = qword_27D8E43D8;
  if (!qword_27D8E43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E43D8);
  }

  return result;
}

void FeedbackLearning.ConfirmationPromptResult.init(from:)()
{
  sub_22BB31014();
  v4 = v3;
  v56 = v5;
  v60 = sub_22BBE6DE0(&qword_27D8E43E0, &qword_22BDC3100);
  sub_22BB30444(v60);
  v57 = v6;
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB30BA8();
  sub_22BD00E60(v10);
  v11 = sub_22BBE6DE0(&qword_27D8E43E8, &qword_22BDC3108);
  v12 = sub_22BB30444(v11);
  v54 = v13;
  v55 = v12;
  v15 = *(v14 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB354DC();
  v17 = sub_22BBE6DE0(&qword_27D8E43F0, &qword_22BDC3110);
  sub_22BB30444(v17);
  v19 = *(v18 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v20);
  sub_22BB36808();
  v21 = sub_22BBE6DE0(&qword_27D8E43F8, &unk_22BDC3118);
  sub_22BB30444(v21);
  v58 = v22;
  v24 = *(v23 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v25);
  sub_22BB32750();
  v26 = v4[4];
  sub_22BB699E4(v4, v4[3]);
  sub_22BCE215C();
  sub_22BB69544();
  sub_22BDBB894();
  if (!v0)
  {
    v61 = v4;
    v27 = sub_22BDBB5E4();
    sub_22BD00A84(v27);
    if (!v28)
    {
      sub_22BB334EC();
      sub_22BB527F0();
      if (v33 == v34)
      {
        __break(1u);
        return;
      }

      v35 = *(v32 + v30);
      sub_22BB97F40(v29, v30, v31, v32);
      sub_22BD00B8C();
      swift_unknownObjectRelease();
      if (!v26)
      {
        if (v35)
        {
          if (v35 == 1)
          {
            sub_22BB393D0();
            sub_22BCE2204();
            sub_22BB393F8();
            sub_22BDBB554();
            v36 = v56;
            swift_unknownObjectRelease();
            (*(v54 + 8))(v1, v55);
            v47 = *(v58 + 8);
            v48 = sub_22BB3972C();
            v49(v48);
          }

          else
          {
            sub_22BB3CF44();
            sub_22BCE21B0();
            sub_22BB393F8();
            sub_22BDBB554();
            v36 = v56;
            swift_unknownObjectRelease();
            (*(v57 + 8))(v59, v60);
            (*(v58 + 8))(v2, v21);
          }
        }

        else
        {
          sub_22BCE2258();
          sub_22BB393F8();
          sub_22BDBB554();
          swift_unknownObjectRelease();
          v50 = sub_22BB9607C();
          v51(v50, v17);
          v52 = sub_22BB977C4();
          v53(v52, v21);
          v36 = v56;
        }

        *v36 = v35;
        sub_22BB32FA4(v61);
        goto LABEL_11;
      }
    }

    sub_22BDBB3A4();
    sub_22BB31A08();
    v38 = v37;
    v39 = *(sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530) + 48);
    *v38 = &type metadata for FeedbackLearning.ConfirmationPromptResult;
    sub_22BDBB564();
    sub_22BB36D74();
    v40 = *MEMORY[0x277D84160];
    sub_22BB330A0();
    v42 = *(v41 + 104);
    v43 = sub_22BD00A78();
    v44(v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    v45 = sub_22BB397A4();
    v46(v45, v21);
    v4 = v61;
  }

  sub_22BB32FA4(v4);
LABEL_11:
  sub_22BB376A8();
}

uint64_t FeedbackLearning.ConfirmationPromptResult.description.getter()
{
  v1 = 0x657463656A65722ELL;
  if (*v0 != 1)
  {
    v1 = 0x6E6F646E6162612ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D7269666E6F632ELL;
  }
}

uint64_t sub_22BCE28A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000022BDD3230 == a2;
  if (v3 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000022BDD3250 == a2;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656E6F646E616261 && a2 == 0xE900000000000064;
      if (v7 || (sub_22BDBB6D4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x64657463656A6572 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_22BDBB6D4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_22BCE2A10(char a1)
{
  result = 0x656E6F646E616261;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      return result;
    case 3:
      result = 0x64657463656A6572;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_22BCE2AA4(uint64_t a1)
{
  v2 = sub_22BCF8198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE2AE0(uint64_t a1)
{
  v2 = sub_22BCF8198();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE2B1C(uint64_t a1)
{
  v2 = sub_22BCF8240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE2B58(uint64_t a1)
{
  v2 = sub_22BCF8240();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE2B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCE28A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCE2BC4(uint64_t a1)
{
  v2 = sub_22BCF80F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE2C00(uint64_t a1)
{
  v2 = sub_22BCF80F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE2C3C(uint64_t a1)
{
  v2 = sub_22BCF81EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE2C78(uint64_t a1)
{
  v2 = sub_22BCF81EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE2CB4(uint64_t a1)
{
  v2 = sub_22BCF8144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE2CF0(uint64_t a1)
{
  v2 = sub_22BCF8144();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.DisambiguationPromptResult.encode(to:)()
{
  sub_22BB31014();
  v2 = v1;
  v3 = sub_22BBE6DE0(&qword_27D8E4400, &qword_22BDC3128);
  sub_22BB30444(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB30BA8();
  sub_22BD00CD8(v7);
  v8 = sub_22BBE6DE0(&qword_27D8E4408, &qword_22BDC3130);
  sub_22BB30444(v8);
  v10 = *(v9 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  sub_22BB38B54(v12, v36);
  v13 = sub_22BBE6DE0(&qword_27D8E4410, &qword_22BDC3138);
  sub_22BB30444(v13);
  v15 = *(v14 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB6BB20(v17, v37);
  v18 = sub_22BBE6DE0(&qword_27D8E4418, &qword_22BDC3140);
  sub_22BB30444(v18);
  v20 = *(v19 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v21);
  sub_22BB32750();
  v22 = sub_22BBE6DE0(&qword_27D8E4420, &qword_22BDC3148);
  sub_22BB30444(v22);
  v24 = v23;
  v26 = *(v25 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v27);
  sub_22BB52928();
  v28 = *v0;
  v30 = v2[3];
  v29 = v2[4];
  sub_22BB9575C(v2);
  sub_22BCF80F0();
  sub_22BD00C6C();
  sub_22BDBB8A4();
  switch(v28)
  {
    case 1:
      sub_22BD008D4();
      sub_22BCF81EC();
      sub_22BB32C74();
      sub_22BDBB5F4();
      goto LABEL_6;
    case 2:
      sub_22BB97CCC();
      sub_22BCF8198();
      sub_22BB32C74();
      sub_22BDBB5F4();
      goto LABEL_6;
    case 3:
      sub_22BBC05F0();
      sub_22BCF8144();
      sub_22BB32C74();
      sub_22BDBB5F4();
LABEL_6:
      v31 = sub_22BB37D64();
      break;
    default:
      sub_22BCF8240();
      sub_22BB3B0C0();
      sub_22BDBB5F4();
      v31 = sub_22BB3AB0C();
      break;
  }

  v32(v31);
  v33 = *(v24 + 8);
  v34 = sub_22BB89D18();
  v35(v34);
  sub_22BB376A8();
}

void FeedbackLearning.DisambiguationPromptResult.init(from:)()
{
  sub_22BB31014();
  sub_22BD00B6C(v3);
  v65 = sub_22BBE6DE0(&qword_27D8E4450, &qword_22BDC3150);
  sub_22BB30444(v65);
  v64 = v4;
  v6 = *(v5 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB30BA8();
  sub_22BD00E60(v8);
  v9 = sub_22BBE6DE0(&qword_27D8E4458, &qword_22BDC3158);
  sub_22BB30444(v9);
  v11 = *(v10 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  sub_22BB38B54(v13, v61);
  v14 = sub_22BBE6DE0(&qword_27D8E4460, &qword_22BDC3160);
  sub_22BB30444(v14);
  v16 = *(v15 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v17);
  sub_22BB34298();
  v18 = sub_22BBE6DE0(&qword_27D8E4468, &qword_22BDC3168);
  sub_22BB30444(v18);
  v20 = *(v19 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v21);
  sub_22BB32750();
  v22 = sub_22BBE6DE0(&qword_27D8E4470, &qword_22BDC3170);
  sub_22BB30444(v22);
  v24 = *(v23 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v25);
  sub_22BB3721C();
  v26 = v2[3];
  v27 = v2[4];
  v28 = sub_22BB94E38();
  sub_22BB699E4(v28, v29);
  sub_22BCF80F0();
  sub_22BB69544();
  sub_22BDBB894();
  if (!v1)
  {
    v30 = sub_22BB97E90();
    sub_22BCF80B8(v30, 0);
    if (v32 != v31 >> 1)
    {
      sub_22BB334EC();
      sub_22BB527F0();
      if (v37 == v38)
      {
        __break(1u);
        return;
      }

      sub_22BD00F30(v33, v34, v35, v36);
      sub_22BD00F70();
      if (v0 == v27 >> 1)
      {
        sub_22BD00DC4();
        switch(v39)
        {
          case 1:
            sub_22BD008D4();
            sub_22BCF81EC();
            sub_22BB3FDE4();
            swift_unknownObjectRelease();
            goto LABEL_14;
          case 2:
            sub_22BB97CCC();
            sub_22BCF8198();
            sub_22BB3FDE4();
            swift_unknownObjectRelease();
LABEL_14:
            v40 = sub_22BB9607C();
            goto LABEL_15;
          case 3:
            sub_22BBC05F0();
            sub_22BCF8144();
            sub_22BBBD27C();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v55 = *(v64 + 8);
            v56 = sub_22BB8E548();
            v57(v56);
            goto LABEL_16;
          default:
            sub_22BCF8240();
            sub_22BB3FDE4();
            swift_unknownObjectRelease();
            v40 = sub_22BB9607C();
            v42 = v63;
LABEL_15:
            v41(v40, v42);
LABEL_16:
            v58 = *(v27 + 8);
            v59 = sub_22BB3A19C();
            v60(v59);
            MEMORY[0] = v62;
            sub_22BB32FA4(v66);
            break;
        }

        goto LABEL_10;
      }
    }

    v43 = sub_22BD00F10();
    sub_22BB31A08();
    v45 = v44;
    v46 = *(sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530) + 48);
    *v45 = &type metadata for FeedbackLearning.DisambiguationPromptResult;
    sub_22BDBB564();
    sub_22BB36D74();
    v47 = *MEMORY[0x277D84160];
    sub_22BB30474(v43);
    v49 = *(v48 + 104);
    v50 = sub_22BB527FC();
    v51(v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    v52 = *(v27 + 8);
    v53 = sub_22BB8E548();
    v54(v53);
    v2 = v66;
  }

  sub_22BB32FA4(v2);
LABEL_10:
  sub_22BB3A204();
  sub_22BB376A8();
}

void FeedbackLearning.DisambiguationPromptResult.description.getter()
{
  switch(*v0)
  {
    case 1:
      sub_22BD00D38(18);
      break;
    case 2:
    case 3:
      return;
    default:
      sub_22BB3480C();
      break;
  }
}

uint64_t static FeedbackLearning.CandidateOutcome.== infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 >> 6))
  {
    if (v3 <= 0x3F)
    {
      return v2 == v3;
    }

    return sub_22BBE7CE0();
  }

  if (v2 >> 6 == 1)
  {
    if ((v3 & 0xC0) == 0x40)
    {
      return ((v3 ^ v2) & 0x3F) == 0;
    }

    return sub_22BBE7CE0();
  }

  switch(*a1)
  {
    case 0x81:
      if (v3 != 129)
      {
        return sub_22BBE7CE0();
      }

      break;
    case 0x82:
      if (v3 != 130)
      {
        return sub_22BBE7CE0();
      }

      break;
    case 0x83:
      if (v3 != 131)
      {
        return sub_22BBE7CE0();
      }

      break;
    default:
      if (v3 != 128)
      {
        return sub_22BBE7CE0();
      }

      break;
  }

  return 1;
}

uint64_t sub_22BCE36FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616D7269666E6F63 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6769626D61736964 && a2 == 0xEE006E6F69746175;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6465727265666E69 && a2 == 0xEF73736563637553;
      if (v7 || (sub_22BDBB6D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6465727265666E69 && a2 == 0xEF6572756C696146;
        if (v8 || (sub_22BDBB6D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x800000022BDD3270 == a2;
          if (v9 || (sub_22BDBB6D4() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_22BDBB6D4();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22BCE3910(char a1)
{
  result = 0x616D7269666E6F63;
  switch(a1)
  {
    case 1:
      result = 0x6769626D61736964;
      break;
    case 2:
    case 3:
      result = 0x6465727265666E69;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BCE39EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCE36FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCE3A14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BCE3908();
  *a1 = result;
  return result;
}

uint64_t sub_22BCE3A3C(uint64_t a1)
{
  v2 = sub_22BCF8294();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE3A78(uint64_t a1)
{
  v2 = sub_22BCF8294();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE3AB4(uint64_t a1)
{
  v2 = sub_22BCF84E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE3AF0(uint64_t a1)
{
  v2 = sub_22BCF84E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE3B2C(uint64_t a1)
{
  v2 = sub_22BCF8438();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE3B68(uint64_t a1)
{
  v2 = sub_22BCF8438();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE3BA4(uint64_t a1)
{
  v2 = sub_22BCF8390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE3BE0(uint64_t a1)
{
  v2 = sub_22BCF8390();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE3C1C(uint64_t a1)
{
  v2 = sub_22BCF833C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE3C58(uint64_t a1)
{
  v2 = sub_22BCF833C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE3C94(uint64_t a1)
{
  v2 = sub_22BCF83E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE3CD0(uint64_t a1)
{
  v2 = sub_22BCF83E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE3D0C(uint64_t a1)
{
  v2 = sub_22BCF82E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE3D48(uint64_t a1)
{
  v2 = sub_22BCF82E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.CandidateOutcome.encode(to:)()
{
  sub_22BB31014();
  v2 = v1;
  v3 = sub_22BBE6DE0(&qword_27D8E4478, &qword_22BDC3178);
  sub_22BB30444(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB340E0(v7, v45);
  v8 = sub_22BBE6DE0(&qword_27D8E4480, &qword_22BDC3180);
  sub_22BB30444(v8);
  v10 = *(v9 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  sub_22BB30BA8();
  v12 = sub_22BBE6DE0(&qword_27D8E4488, &qword_22BDC3188);
  sub_22BB30444(v12);
  v14 = *(v13 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  sub_22BB30BA8();
  v16 = sub_22BBE6DE0(&qword_27D8E4490, &qword_22BDC3190);
  sub_22BB30444(v16);
  v18 = *(v17 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v19);
  sub_22BB30BA8();
  v20 = sub_22BBE6DE0(&qword_27D8E4498, &qword_22BDC3198);
  sub_22BB30444(v20);
  v22 = *(v21 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v23);
  sub_22BB36808();
  v24 = sub_22BBE6DE0(&qword_27D8E44A0, &qword_22BDC31A0);
  sub_22BB30444(v24);
  v26 = *(v25 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v27);
  sub_22BB32750();
  v28 = sub_22BBE6DE0(&qword_27D8E44A8, &qword_22BDC31A8);
  v46 = sub_22BB30444(v28);
  v30 = *(v29 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v31);
  sub_22BB354DC();
  v32 = *v0;
  v33 = v2[4];
  sub_22BB699E4(v2, v2[3]);
  sub_22BCF8294();
  sub_22BDBB8A4();
  if (!(v32 >> 6))
  {
    sub_22BCF84E0();
    sub_22BB71F34();
    sub_22BDBB5F4();
    sub_22BCF8534();
    sub_22BDBB664();
    sub_22BD00DA4();
    v39 = sub_22BB348D0();
    v40(v39);
    v36 = sub_22BB3DFD0();
    v37 = v46;
    goto LABEL_5;
  }

  if (v32 >> 6 == 1)
  {
    sub_22BCF8438();
    sub_22BB3E1EC();
    sub_22BDBB5F4();
    sub_22BCF848C();
    sub_22BDBB664();
    sub_22BB38B78();
    v34 = sub_22BB94E38();
    v35(v34);
    v36 = sub_22BB692D0();
LABEL_5:
    v38(v36, v37);
    goto LABEL_12;
  }

  switch(v32)
  {
    case 0x81u:
      sub_22BCF8390();
      sub_22BB72F1C();
      sub_22BDBB5F4();
      break;
    case 0x82u:
      sub_22BCF833C();
      sub_22BB72F1C();
      sub_22BDBB5F4();
      break;
    case 0x83u:
      sub_22BBC0278();
      sub_22BCF82E8();
      sub_22BB72F1C();
      sub_22BDBB5F4();
      break;
    default:
      sub_22BCF83E4();
      sub_22BB72F1C();
      sub_22BDBB5F4();
      break;
  }

  v41 = sub_22BB9607C();
  v42(v41);
  v43 = sub_22BB3DFD0();
  v44(v43, v24);
LABEL_12:
  sub_22BD00C3C();
  sub_22BB376A8();
}

void FeedbackLearning.CandidateOutcome.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12)
{
  sub_22BB31014();
  sub_22BD00D8C();
  v108 = v13;
  v110 = sub_22BBE6DE0(&qword_27D8E44F8, &qword_22BDC31B0);
  sub_22BB30444(v110);
  v109 = v14;
  v16 = *(v15 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v17);
  sub_22BB39504(v18);
  v106 = sub_22BBE6DE0(&qword_27D8E4500, &qword_22BDC31B8);
  sub_22BB30444(v106);
  v20 = *(v19 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v21);
  sub_22BB340E0(v22, v102);
  v23 = sub_22BBE6DE0(&qword_27D8E4508, &qword_22BDC31C0);
  sub_22BB30444(v23);
  v25 = *(v24 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v26);
  sub_22BB2F240(v27, v103);
  v28 = sub_22BBE6DE0(&qword_27D8E4510, &qword_22BDC31C8);
  sub_22BB30444(v28);
  v30 = *(v29 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v31);
  sub_22BB6BB20(v32, v104);
  v105 = sub_22BBE6DE0(&qword_27D8E4518, &qword_22BDC31D0);
  sub_22BB30444(v105);
  v34 = *(v33 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v35);
  sub_22BB32750();
  v36 = sub_22BBE6DE0(&qword_27D8E4520, &qword_22BDC31D8);
  sub_22BB30444(v36);
  v38 = *(v37 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v39);
  sub_22BB52928();
  v40 = sub_22BBE6DE0(&qword_27D8E4528, &qword_22BDC31E0);
  sub_22BB30444(v40);
  v42 = v41;
  v44 = *(v43 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v45);
  sub_22BB3721C();
  v46 = v12[3];
  v47 = v12[4];
  v111 = v12;
  v48 = sub_22BB2F324();
  sub_22BB699E4(v48, v49);
  sub_22BCF8294();
  sub_22BDBB894();
  if (!v112)
  {
    v50 = sub_22BDBB5E4();
    sub_22BCF80B8(v50, 0);
    v52 = v51;
    if (v54 != v53 >> 1)
    {
      sub_22BB334EC();
      sub_22BB527F0();
      if (v59 == v60)
      {
        __break(1u);
        return;
      }

      v61 = *(v58 + v56);
      sub_22BCFD8E0(v56 + 1, v55, v52, v58, v56, v57);
      v63 = v62;
      v65 = v64;
      swift_unknownObjectRelease();
      if (v63 == v65 >> 1)
      {
        switch(v61)
        {
          case 1:
            sub_22BCF8438();
            sub_22BB52E84();
            sub_22BDBB554();
            sub_22BCF8588();
            sub_22BB71F34();
            sub_22BDBB5D4();
            swift_unknownObjectRelease();
            v97 = sub_22BB34F2C();
            v98(v97, v105);
            v99 = *(v42 + 8);
            v100 = sub_22BD0073C();
            v101(v100);
            a10 = a12 | 0x40;
            break;
          case 2:
            sub_22BCF83E4();
            sub_22BB52E84();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v81 = sub_22BB3B088();
            v82(v81);
            v83 = sub_22BB39348();
            v84(v83);
            a10 = 0x80;
            break;
          case 3:
            sub_22BCF8390();
            sub_22BB52E84();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v85 = sub_22BB3B088();
            v86(v85);
            v87 = sub_22BB39348();
            v88(v87);
            a10 = -127;
            break;
          case 4:
            sub_22BCF833C();
            sub_22BB52E84();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v77 = sub_22BB34F2C();
            v78(v77, v106);
            v79 = sub_22BB39348();
            v80(v79);
            a10 = -126;
            break;
          case 5:
            sub_22BBC0278();
            sub_22BCF82E8();
            sub_22BB52E84();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            (*(v109 + 8))(v107, v110);
            v89 = sub_22BB39348();
            v90(v89);
            a10 = -125;
            break;
          default:
            sub_22BCF84E0();
            sub_22BB52E84();
            sub_22BDBB554();
            sub_22BCF85DC();
            sub_22BB71F34();
            sub_22BDBB5D4();
            swift_unknownObjectRelease();
            v91 = sub_22BB34F2C();
            v92(v91, v36);
            v93 = *(v42 + 8);
            v94 = sub_22BD0073C();
            v95(v94);
            break;
        }

        *v108 = a10;
        sub_22BB32FA4(v111);
        goto LABEL_10;
      }
    }

    v66 = sub_22BDBB3A4();
    sub_22BB31A08();
    v68 = v67;
    v69 = *(sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530) + 48);
    *v68 = &type metadata for FeedbackLearning.CandidateOutcome;
    sub_22BDBB564();
    sub_22BB36D74();
    v70 = *MEMORY[0x277D84160];
    sub_22BB30474(v66);
    v72 = *(v71 + 104);
    v73 = sub_22BB527FC();
    v74(v73);
    swift_willThrow();
    swift_unknownObjectRelease();
    v75 = sub_22BB3B6B8();
    v76(v75);
  }

  sub_22BB32FA4(v111);
LABEL_10:
  sub_22BB3A204();
  sub_22BB376A8();
}

unint64_t FeedbackLearning.CandidateOutcome.description.getter()
{
  v1 = *v0;
  if (!(v1 >> 6))
  {
    sub_22BD00FD0();

    strcpy(v7, ".confirmation(");
    HIBYTE(v7[1]) = -18;
    v2 = 0xE900000000000064;
    v3 = 0x657463656A65722ELL;
    if (v1 != 1)
    {
      v3 = 0x6E6F646E6162612ELL;
      v2 = 0xEA00000000006465;
    }

    if (v1)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0x6D7269666E6F632ELL;
    }

    if (v1)
    {
      v5 = v2;
    }

    else
    {
      v5 = 0xEA00000000006465;
    }

    MEMORY[0x2318A4C40](v4, v5);

    sub_22BB36A44();
    return v7[0];
  }

  if (v1 >> 6 == 1)
  {
    sub_22BD00FD0();
    MEMORY[0x2318A4C40](0x69626D617369642ELL, 0xEF6E6F6974617567);
    sub_22BCE1924(v1 & 0x3F);
    return v7[0];
  }

  result = 0x6E776F6E6B6E752ELL;
  switch(*v0)
  {
    case 0x81:
      result = 0xD000000000000010;
      break;
    case 0x82:
      result = 0xD000000000000011;
      break;
    case 0x83:
      return result;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_22BCE4E20(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_22BD9AB14(a1);
}

void sub_22BCE4E2C(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_22BD9ABE8(a1);
}

void sub_22BCE4E38(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_22BD9ABF8(a1);
}

void sub_22BCE4E74(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_22BD9AB24(a1);
}

uint64_t sub_22BCE4EB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x766C6F7365726E75 && a2 == 0xEA00000000006465;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x800000022BDD3290 == a2;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000022BDD32B0 == a2;
      if (v7 || (sub_22BDBB6D4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6465747563657865 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_22BDBB6D4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_22BCE5028(char a1)
{
  result = 0x766C6F7365726E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6465747563657865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BCE50C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = FeedbackLearning.CandidateDonationOptionSet.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22BCE5104@<X0>(uint64_t *a1@<X8>)
{
  result = FeedbackLearning.CandidateDonationOptionSet.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_22BCE5138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCE4EB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCE5160(uint64_t a1)
{
  v2 = sub_22BCF8630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE519C(uint64_t a1)
{
  v2 = sub_22BCF8630();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE51D8(uint64_t a1)
{
  v2 = sub_22BCF8684();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE5214(uint64_t a1)
{
  v2 = sub_22BCF8684();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE5250(uint64_t a1)
{
  v2 = sub_22BCF872C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE528C(uint64_t a1)
{
  v2 = sub_22BCF872C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE52C8(uint64_t a1)
{
  v2 = sub_22BCF86D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE5304(uint64_t a1)
{
  v2 = sub_22BCF86D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE5340(uint64_t a1)
{
  v2 = sub_22BCF8780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE537C(uint64_t a1)
{
  v2 = sub_22BCF8780();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.CandidateParameterResolution.encode(to:)()
{
  sub_22BB31014();
  v2 = v1;
  v3 = sub_22BBE6DE0(&qword_27D8E4540, &qword_22BDC31E8);
  sub_22BB30444(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB30BA8();
  sub_22BD00CD8(v7);
  v8 = sub_22BBE6DE0(&qword_27D8E4548, &qword_22BDC31F0);
  sub_22BB30444(v8);
  v10 = *(v9 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  sub_22BB38B54(v12, v36);
  v13 = sub_22BBE6DE0(&qword_27D8E4550, &qword_22BDC31F8);
  sub_22BB30444(v13);
  v15 = *(v14 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB6BB20(v17, v37);
  v18 = sub_22BBE6DE0(&qword_27D8E4558, &qword_22BDC3200);
  sub_22BB30444(v18);
  v20 = *(v19 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v21);
  sub_22BB32750();
  v22 = sub_22BBE6DE0(&qword_27D8E4560, &qword_22BDC3208);
  sub_22BB30444(v22);
  v24 = v23;
  v26 = *(v25 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v27);
  sub_22BB52928();
  v28 = *v0;
  v30 = v2[3];
  v29 = v2[4];
  sub_22BB9575C(v2);
  sub_22BCF8630();
  sub_22BD00C6C();
  sub_22BDBB8A4();
  switch(v28)
  {
    case 1:
      sub_22BD008D4();
      sub_22BCF872C();
      sub_22BB32C74();
      sub_22BDBB5F4();
      goto LABEL_6;
    case 2:
      sub_22BB97CCC();
      sub_22BCF86D8();
      sub_22BB32C74();
      sub_22BDBB5F4();
      goto LABEL_6;
    case 3:
      sub_22BBC05F0();
      sub_22BCF8684();
      sub_22BB32C74();
      sub_22BDBB5F4();
LABEL_6:
      v31 = sub_22BB37D64();
      break;
    default:
      sub_22BCF8780();
      sub_22BB3B0C0();
      sub_22BDBB5F4();
      v31 = sub_22BB3AB0C();
      break;
  }

  v32(v31);
  v33 = *(v24 + 8);
  v34 = sub_22BB89D18();
  v35(v34);
  sub_22BB376A8();
}

uint64_t _s23IntelligenceFlowRuntime16FeedbackLearningO24ConfirmationPromptResultO9hashValueSivg_0()
{
  v1 = *v0;
  sub_22BD00D74();
  MEMORY[0x2318A57F0](v1);
  return sub_22BDBB834();
}

void FeedbackLearning.CandidateParameterResolution.init(from:)()
{
  sub_22BB31014();
  sub_22BD00B6C(v3);
  v65 = sub_22BBE6DE0(&qword_27D8E4590, &qword_22BDC3210);
  sub_22BB30444(v65);
  v64 = v4;
  v6 = *(v5 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB30BA8();
  sub_22BD00E60(v8);
  v9 = sub_22BBE6DE0(&qword_27D8E4598, &qword_22BDC3218);
  sub_22BB30444(v9);
  v11 = *(v10 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  sub_22BB38B54(v13, v61);
  v14 = sub_22BBE6DE0(&qword_27D8E45A0, &qword_22BDC3220);
  sub_22BB30444(v14);
  v16 = *(v15 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v17);
  sub_22BB34298();
  v18 = sub_22BBE6DE0(&qword_27D8E45A8, &qword_22BDC3228);
  sub_22BB30444(v18);
  v20 = *(v19 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v21);
  sub_22BB32750();
  v22 = sub_22BBE6DE0(&qword_27D8E45B0, &qword_22BDC3230);
  sub_22BB30444(v22);
  v24 = *(v23 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v25);
  sub_22BB3721C();
  v26 = v2[3];
  v27 = v2[4];
  v28 = sub_22BB94E38();
  sub_22BB699E4(v28, v29);
  sub_22BCF8630();
  sub_22BB69544();
  sub_22BDBB894();
  if (!v1)
  {
    v30 = sub_22BB97E90();
    sub_22BCF80B8(v30, 0);
    if (v32 != v31 >> 1)
    {
      sub_22BB334EC();
      sub_22BB527F0();
      if (v37 == v38)
      {
        __break(1u);
        return;
      }

      sub_22BD00F30(v33, v34, v35, v36);
      sub_22BD00F70();
      if (v0 == v27 >> 1)
      {
        sub_22BD00DC4();
        switch(v39)
        {
          case 1:
            sub_22BD008D4();
            sub_22BCF872C();
            sub_22BB3FDE4();
            swift_unknownObjectRelease();
            goto LABEL_14;
          case 2:
            sub_22BB97CCC();
            sub_22BCF86D8();
            sub_22BB3FDE4();
            swift_unknownObjectRelease();
LABEL_14:
            v40 = sub_22BB9607C();
            goto LABEL_15;
          case 3:
            sub_22BBC05F0();
            sub_22BCF8684();
            sub_22BBBD27C();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v55 = *(v64 + 8);
            v56 = sub_22BB8E548();
            v57(v56);
            goto LABEL_16;
          default:
            sub_22BCF8780();
            sub_22BB3FDE4();
            swift_unknownObjectRelease();
            v40 = sub_22BB9607C();
            v42 = v63;
LABEL_15:
            v41(v40, v42);
LABEL_16:
            v58 = *(v27 + 8);
            v59 = sub_22BB3A19C();
            v60(v59);
            MEMORY[0] = v62;
            sub_22BB32FA4(v66);
            break;
        }

        goto LABEL_10;
      }
    }

    v43 = sub_22BD00F10();
    sub_22BB31A08();
    v45 = v44;
    v46 = *(sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530) + 48);
    *v45 = &type metadata for FeedbackLearning.CandidateParameterResolution;
    sub_22BDBB564();
    sub_22BB36D74();
    v47 = *MEMORY[0x277D84160];
    sub_22BB30474(v43);
    v49 = *(v48 + 104);
    v50 = sub_22BB527FC();
    v51(v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    v52 = *(v27 + 8);
    v53 = sub_22BB8E548();
    v54(v53);
    v2 = v66;
  }

  sub_22BB32FA4(v2);
LABEL_10:
  sub_22BB3A204();
  sub_22BB376A8();
}

void FeedbackLearning.CandidateParameterResolution.description.getter()
{
  switch(*v0)
  {
    case 1:
      sub_22BD00D38(17);
      break;
    case 2:
      sub_22BB3480C();
      break;
    default:
      return;
  }
}

uint64_t sub_22BCE5D34(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22BDBB6D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BCE5DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCE5D34(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BCE5DEC(uint64_t a1)
{
  v2 = sub_22BCF87D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE5E28(uint64_t a1)
{
  v2 = sub_22BCF87D4();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.CandidateSearchQuery.encode(to:)()
{
  sub_22BD00EDC();
  v0 = sub_22BBE6DE0(&qword_27D8E45B8, &qword_22BDC3238);
  sub_22BB30444(v0);
  v2 = v1;
  v4 = *(v3 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  sub_22BB32750();
  sub_22BB3B3AC();
  sub_22BCF87D4();
  sub_22BD00758();
  sub_22BDB9D04();
  sub_22BD007CC();
  sub_22BCF8848(v6, v7);
  sub_22BD00A78();
  sub_22BDBB664();
  v8 = *(v2 + 8);
  v9 = sub_22BB52D78();
  v10(v9);
  sub_22BD00EC8();
}

void FeedbackLearning.CandidateSearchQuery.init(from:)()
{
  sub_22BB31014();
  sub_22BB310A8(v2);
  v3 = sub_22BDB9D04();
  v4 = sub_22BB30444(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB305A8();
  v7 = sub_22BBE6DE0(&qword_27D8E45C8, &unk_22BDC3240);
  sub_22BB30444(v7);
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BB3848C();
  v12 = type metadata accessor for FeedbackLearning.CandidateSearchQuery(v11);
  v13 = sub_22BB2F0C8(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  sub_22BB36FD8();
  v16 = v0[3];
  v17 = v0[4];
  v18 = sub_22BB500C0();
  sub_22BB699E4(v18, v19);
  sub_22BCF87D4();
  sub_22BD00CA8();
  sub_22BDBB894();
  if (!v1)
  {
    sub_22BD007CC();
    sub_22BCF8848(v20, v21);
    sub_22BB31C28();
    v22 = sub_22BB977C4();
    v23(v22, v7);
    v24 = sub_22BB3569C();
    v25(v24);
    v26 = sub_22BB3A86C();
    sub_22BCF8A34(v26, v27);
  }

  sub_22BB32FA4(v0);
  sub_22BD00C9C();
  sub_22BB376A8();
}

void static FeedbackLearning.CandidateParameter.== infix(_:_:)()
{
  sub_22BB30F94();
  v3 = v2;
  v5 = v4;
  v6 = sub_22BDB4C34();
  v7 = sub_22BB30444(v6);
  v43 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v11 = sub_22BB3DFC0();
  v12 = type metadata accessor for FeedbackLearning.CandidateParameter(v11);
  v13 = sub_22BB2F330(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BB30C74();
  v18 = (v16 - v17);
  MEMORY[0x28223BE20](v19);
  v20 = sub_22BBE6DE0(&qword_27D8E45D0, &qword_22BDCFC80);
  sub_22BB2F0C8(v20);
  v22 = *(v21 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v23);
  sub_22BB395E0();
  v25 = (v0 + *(v24 + 56));
  sub_22BCF8A8C(v5, v0);
  sub_22BCF8A8C(v3, v25);
  sub_22BB500C0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BB32C5C();
      v31 = sub_22BB3A84C();
      sub_22BCF8A8C(v31, v32);
      v34 = *v18;
      v33 = v18[1];
      sub_22BB3ADA8();
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        goto LABEL_16;
      }

      if (v34 == *v25 && v33 == v25[1])
      {
        v41 = v25[1];
      }

      else
      {
        sub_22BB37494();
        sub_22BDBB6D4();
      }

      goto LABEL_19;
    case 2u:
      sub_22BB3ADA8();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    case 3u:
      sub_22BB3ADA8();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_16;
      }

LABEL_19:
      sub_22BB372C0();
      sub_22BCF8AE4(v0, v42);
      break;
    default:
      sub_22BB32C5C();
      v26 = sub_22BB33728();
      sub_22BCF8A8C(v26, v27);
      sub_22BB3ADA8();
      if (swift_getEnumCaseMultiPayload())
      {
        v28 = *(v43 + 8);
        v29 = sub_22BB95B5C();
        v30(v29);
LABEL_16:
        sub_22BB58728(v0, &qword_27D8E45D0, &qword_22BDCFC80);
      }

      else
      {
        sub_22BB379C8();
        v36(v1, v25, v6);
        sub_22BB39478();
        sub_22BDB4C04();
        v37 = *(v43 + 8);
        v38 = sub_22BB37494();
        v37(v38);
        v39 = sub_22BB95B5C();
        v37(v39);
        sub_22BB372C0();
        sub_22BCF8AE4(v0, v40);
      }

      break;
  }

  sub_22BB314EC();
}

uint64_t sub_22BCE64B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819242356 && a2 == 0xE400000000000000;
  if (v3 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x616D65686373 && a2 == 0xE600000000000000;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
      if (v7 || (sub_22BDBB6D4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6574656D61726170 && a2 == 0xE900000000000072)
      {

        return 3;
      }

      else
      {
        v9 = sub_22BDBB6D4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_22BCE660C(char a1)
{
  result = 1819242356;
  switch(a1)
  {
    case 1:
      result = 0x616D65686373;
      break;
    case 2:
      result = 0x65756C6176;
      break;
    case 3:
      result = 0x6574656D61726170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BCE668C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCE64B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCE66B4(uint64_t a1)
{
  v2 = sub_22BCF8890();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE66F0(uint64_t a1)
{
  v2 = sub_22BCF8890();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE672C(uint64_t a1)
{
  v2 = sub_22BCF88E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE6768(uint64_t a1)
{
  v2 = sub_22BCF88E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE67A4(uint64_t a1)
{
  v2 = sub_22BCF898C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE67E0(uint64_t a1)
{
  v2 = sub_22BCF898C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE681C(uint64_t a1)
{
  v2 = sub_22BCF89E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE6858(uint64_t a1)
{
  v2 = sub_22BCF89E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE6894(uint64_t a1)
{
  v2 = sub_22BCF8938();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE68D0(uint64_t a1)
{
  v2 = sub_22BCF8938();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.CandidateParameter.encode(to:)()
{
  sub_22BB31014();
  sub_22BB92328();
  v59 = sub_22BBE6DE0(&qword_27D8E45D8, &qword_22BDC3250);
  sub_22BB30444(v59);
  v3 = *(v2 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  sub_22BB6BB20(v5, v55);
  v58 = sub_22BBE6DE0(&qword_27D8E45E0, &qword_22BDC3258);
  sub_22BB30444(v58);
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB30BA8();
  sub_22BB2F120();
  v57 = sub_22BDB4C34();
  v9 = sub_22BB30444(v57);
  v56 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB305A8();
  v13 = sub_22BBE6DE0(&qword_27D8E45E8, &qword_22BDC3260);
  sub_22BB30444(v13);
  v15 = *(v14 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB32750();
  v17 = sub_22BBE6DE0(&qword_27D8E45F0, &qword_22BDC3268);
  sub_22BB30444(v17);
  v19 = *(v18 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v20);
  v21 = sub_22BB30CE4();
  v22 = type metadata accessor for FeedbackLearning.CandidateParameter(v21);
  v23 = sub_22BB2F330(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BB30574();
  sub_22BD00790();
  v26 = sub_22BBE6DE0(&qword_27D8E45F8, &qword_22BDC3270);
  sub_22BB30444(v26);
  v28 = *(v27 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  sub_22BB36808();
  v31 = *(v0 + 24);
  v30 = *(v0 + 32);
  v32 = sub_22BB345A8();
  sub_22BB699E4(v32, v33);
  sub_22BCF8890();
  sub_22BD00918();
  sub_22BDBB8A4();
  sub_22BB32C5C();
  sub_22BCF8A8C(v60, v1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v49 = *v1;
      v50 = v1[1];
      sub_22BBC05F0();
      sub_22BCF88E4();
      sub_22BB52E84();
      sub_22BDBB5F4();
      sub_22BB500C0();
      sub_22BDBB624();

      v51 = sub_22BB3B088();
      v52(v51, v59);
      sub_22BB3158C();
      v53 = sub_22BD0073C();
      v54(v53);
      break;
    case 2u:
      sub_22BCF89E0();
      sub_22BB72F1C();
      sub_22BDBB5F4();
      v44 = sub_22BB34F2C();
      v46 = v17;
      goto LABEL_5;
    case 3u:
      sub_22BD008D4();
      sub_22BCF898C();
      sub_22BB72F1C();
      sub_22BDBB5F4();
      v44 = sub_22BB3AB0C();
LABEL_5:
      v45(v44, v46);
      sub_22BB3158C();
      v47 = sub_22BB94E38();
      v48(v47);
      break;
    default:
      sub_22BB379C8();
      v34();
      sub_22BB97CCC();
      sub_22BCF8938();
      sub_22BD00908();
      sub_22BDBB5F4();
      sub_22BB35B60();
      sub_22BCF8848(v35, v36);
      sub_22BDBB664();
      v37 = sub_22BB3FCC8();
      v38(v37);
      v39 = *(v56 + 8);
      v40 = sub_22BD00A24();
      v41(v40);
      sub_22BB3158C();
      v42 = sub_22BB3A86C();
      v43(v42);
      break;
  }

  sub_22BB3A204();
  sub_22BB376A8();
}

void FeedbackLearning.CandidateParameter.hash(into:)()
{
  sub_22BB3B094();
  sub_22BB30F68();
  v1 = sub_22BDB4C34();
  v2 = sub_22BB30444(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v7 = sub_22BB3DFC0();
  v8 = type metadata accessor for FeedbackLearning.CandidateParameter(v7);
  v9 = sub_22BB2F330(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v14 = (v13 - v12);
  sub_22BB32C5C();
  v15 = sub_22BB3AAD8();
  sub_22BCF8A8C(v15, v16);
  sub_22BD00AA4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v24 = *v14;
      v25 = v14[1];
      MEMORY[0x2318A57F0](3);
      sub_22BB2F324();
      sub_22BDBAC54();

      break;
    case 2u:
      v23 = 0;
      goto LABEL_5;
    case 3u:
      v23 = 1;
LABEL_5:
      MEMORY[0x2318A57F0](v23);
      break;
    default:
      sub_22BB379C8();
      v17(v0, v14, v1);
      MEMORY[0x2318A57F0](2);
      sub_22BB35B60();
      sub_22BCF8848(v18, v19);
      sub_22BB69A84();
      sub_22BDBABB4();
      v20 = *(v4 + 8);
      v21 = sub_22BB3182C();
      v22(v21);
      break;
  }

  sub_22BB36A24();
}

uint64_t FeedbackLearning.CandidateParameter.hashValue.getter()
{
  sub_22BD00D74();
  FeedbackLearning.CandidateParameter.hash(into:)();
  return sub_22BDBB834();
}

void FeedbackLearning.CandidateParameter.init(from:)()
{
  sub_22BB31014();
  sub_22BD00D8C();
  v99 = v3;
  v101 = sub_22BBE6DE0(&qword_27D8E4630, &qword_22BDC3278);
  sub_22BB30444(v101);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB37048(v7, v92);
  v8 = sub_22BBE6DE0(&qword_27D8E4638, &qword_22BDC3280);
  v98 = sub_22BB30444(v8);
  v10 = *(v9 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  sub_22BB39504(v12);
  v97 = sub_22BBE6DE0(&qword_27D8E4640, &qword_22BDC3288);
  sub_22BB30444(v97);
  v14 = *(v13 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  sub_22BB340E0(v16, v93);
  v17 = sub_22BBE6DE0(&qword_27D8E4648, &qword_22BDC3290);
  sub_22BB30444(v17);
  v19 = *(v18 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v20);
  sub_22BB6BB20(v21, v94);
  v22 = sub_22BBE6DE0(&qword_27D8E4650, &qword_22BDC3298);
  sub_22BB30444(v22);
  v100 = v23;
  v25 = *(v24 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v26);
  sub_22BB36808();
  v27 = type metadata accessor for FeedbackLearning.CandidateParameter(0);
  v28 = sub_22BB2F330(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BB30C74();
  v33 = (v31 - v32);
  MEMORY[0x28223BE20](v34);
  sub_22BB89DA4();
  MEMORY[0x28223BE20](v35);
  sub_22BD00B4C();
  v36 = v0[3];
  v37 = v0[4];
  v102 = v0;
  v38 = sub_22BB393C4();
  sub_22BB699E4(v38, v39);
  sub_22BCF8890();
  sub_22BD00918();
  sub_22BDBB894();
  if (!v103)
  {
    v95 = v33;
    v96 = v2;
    v104 = v27;
    v40 = sub_22BDBB5E4();
    sub_22BCF80B8(v40, 0);
    v42 = v41;
    v44 = v22;
    if (v45 != v43 >> 1)
    {
      sub_22BB334EC();
      sub_22BB527F0();
      if (v50 == v51)
      {
        __break(1u);
        return;
      }

      v52 = *(v49 + v47);
      sub_22BCFD8E0(v47 + 1, v46, v42, v49, v47, v48);
      v54 = v53;
      v56 = v55;
      swift_unknownObjectRelease();
      if (v54 == v56 >> 1)
      {
        switch(v52)
        {
          case 1:
            sub_22BD008D4();
            sub_22BCF898C();
            sub_22BB71F34();
            sub_22BD00FF0();
            swift_unknownObjectRelease();
            v75 = sub_22BB37D64();
            v76(v75, v97);
            v77 = sub_22BB3B5D8();
            v78(v77, v44);
            v61 = v96;
            sub_22BB3A19C();
            goto LABEL_14;
          case 2:
            sub_22BB97CCC();
            sub_22BCF8938();
            sub_22BB71F34();
            sub_22BD00FF0();
            sub_22BDB4C34();
            sub_22BB35B60();
            sub_22BCF8848(v73, v74);
            sub_22BD00E48();
            sub_22BDBB5D4();
            swift_unknownObjectRelease();
            v79 = sub_22BB3AB0C();
            v80(v79, v98);
            sub_22BB38B78();
            v81 = sub_22BD00DEC();
            v82(v81);
            swift_storeEnumTagMultiPayload();
            sub_22BB31158();
            v83 = v1;
            goto LABEL_15;
          case 3:
            sub_22BBC05F0();
            sub_22BCF88E4();
            sub_22BB71F34();
            sub_22BD00FF0();
            sub_22BD00E48();
            v84 = sub_22BDBB594();
            v86 = v85;
            swift_unknownObjectRelease();
            v87 = sub_22BB348D0();
            v88(v87);
            v89 = *(v100 + 8);
            v90 = sub_22BD00DEC();
            v91(v90);
            *v95 = v84;
            v95[1] = v86;
            swift_storeEnumTagMultiPayload();
            sub_22BB31158();
            v83 = v95;
LABEL_15:
            v61 = v96;
            sub_22BCF8A34(v83, v96);
            break;
          default:
            sub_22BCF89E0();
            sub_22BB71F34();
            sub_22BD00FF0();
            swift_unknownObjectRelease();
            v57 = sub_22BB37D64();
            v58(v57);
            v59 = sub_22BB3B5D8();
            v60(v59, v44);
            v61 = v96;
            sub_22BB3A19C();
LABEL_14:
            swift_storeEnumTagMultiPayload();
            break;
        }

        sub_22BB31158();
        sub_22BCF8A34(v61, v99);
        sub_22BB32FA4(v102);
        goto LABEL_10;
      }
    }

    v62 = sub_22BDBB3A4();
    sub_22BB31A08();
    v64 = v63;
    v65 = *(sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530) + 48);
    *v64 = v104;
    sub_22BDBB564();
    sub_22BB36D74();
    v66 = *MEMORY[0x277D84160];
    sub_22BB30474(v62);
    v68 = *(v67 + 104);
    v69 = sub_22BB527FC();
    v70(v69);
    swift_willThrow();
    swift_unknownObjectRelease();
    v71 = sub_22BB3B6B8();
    v72(v71);
  }

  sub_22BB32FA4(v102);
LABEL_10:
  sub_22BB975A0();
  sub_22BB376A8();
}

uint64_t sub_22BCE77D4()
{
  sub_22BDBB814();
  FeedbackLearning.CandidateParameter.hash(into:)();
  return sub_22BDBB834();
}

uint64_t FeedbackLearning.CandidateParameter.description.getter()
{
  v1 = sub_22BDB4C34();
  v2 = sub_22BB30444(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v7 = sub_22BB3DFC0();
  v8 = type metadata accessor for FeedbackLearning.CandidateParameter(v7);
  v9 = sub_22BB2F330(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v14 = (v13 - v12);
  sub_22BB32C5C();
  v15 = sub_22BB53C48();
  sub_22BCF8A8C(v15, v16);
  sub_22BB3B69C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      MEMORY[0x2318A4C40](*v14, v14[1]);

      sub_22BB36A44();
      break;
    case 2u:
    case 3u:
      return sub_22BB95B5C();
    default:
      (*(v4 + 32))(v0, v14, v1);
      sub_22BD00C54();
      sub_22BDB4C24();
      v17 = sub_22BDBB684();
      MEMORY[0x2318A4C40](v17);

      v18 = *(v4 + 8);
      v19 = sub_22BB3182C();
      v20(v19);
      break;
  }

  return sub_22BB95B5C();
}

void static FeedbackLearning.CandidateDefinition.== infix(_:_:)()
{
  sub_22BB30F94();
  v66 = v4;
  v67 = v5;
  v6 = sub_22BDBA994();
  v7 = sub_22BB30444(v6);
  v63 = v8;
  v64 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB305A8();
  v60 = v11;
  sub_22BB2F120();
  v12 = sub_22BDBA594();
  v13 = sub_22BB30444(v12);
  v61 = v14;
  v62 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BB3662C();
  v17 = sub_22BDBA014();
  v18 = sub_22BB30444(v17);
  v65 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  v22 = sub_22BB3848C();
  v23 = type metadata accessor for FeedbackLearning.CandidateDefinition(v22);
  v24 = sub_22BB2F330(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BB30C74();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  sub_22BB34360();
  MEMORY[0x28223BE20](v31);
  v32 = sub_22BBE6DE0(&qword_27D8E4660, &qword_22BDC32A0);
  sub_22BB2F0C8(v32);
  v34 = *(v33 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v35);
  sub_22BB395E0();
  v37 = *(v36 + 56);
  sub_22BCF8A8C(v66, v0);
  sub_22BCF8A8C(v67, v0 + v37);
  sub_22BB3A84C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22BB32380();
      sub_22BCF8A8C(v0, v2);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v61 + 32))(v1, v0 + v37, v62);
        sub_22BB58D2C();
        sub_22BDBA574();
        v39 = *(v61 + 8);
        v40 = sub_22BB39478();
        v39(v40);
        (v39)(v2, v62);
LABEL_14:
        sub_22BB3CEC4();
        sub_22BCF8AE4(v0, v59);
        goto LABEL_15;
      }

      v52 = sub_22BB3B088();
    }

    else
    {
      sub_22BB32380();
      v46 = sub_22BB31F54();
      sub_22BCF8A8C(v46, v47);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_22BB3AE34();
        v48(v60, v0 + v37, v64);
        sub_22BB393C4();
        sub_22BDBA954();
        v49 = *(v63 + 8);
        v50 = sub_22BB52D78();
        v49(v50);
        v51 = sub_22BB53C48();
        v49(v51);
        goto LABEL_14;
      }

      v53 = v64;
      v54 = *(v63 + 8);
      v52 = v29;
    }

    v54(v52, v53);
  }

  else
  {
    sub_22BB32380();
    v41 = sub_22BB500C0();
    sub_22BCF8A8C(v41, v42);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22BB3AE34();
      v55(v3, v0 + v37, v17);
      sub_22BDB9FD4();
      v56 = *(v65 + 8);
      v57 = sub_22BD00A24();
      v56(v57);
      v58 = sub_22BD00AA4();
      v56(v58);
      goto LABEL_14;
    }

    v43 = *(v65 + 8);
    v44 = sub_22BD00AA4();
    v45(v44);
  }

  sub_22BB58728(v0, &qword_27D8E4660, &qword_22BDC32A0);
LABEL_15:
  sub_22BB314EC();
}

uint64_t sub_22BCE7E1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819242356 && a2 == 0xE400000000000000;
  if (v3 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x616D65686373 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22BDBB6D4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22BCE7F24(char a1)
{
  if (!a1)
  {
    return 1819242356;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 0x616D65686373;
}

uint64_t sub_22BCE7F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCE7E1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCE7F9C(uint64_t a1)
{
  v2 = sub_22BCF8B3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE7FD8(uint64_t a1)
{
  v2 = sub_22BCF8B3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE8014(uint64_t a1)
{
  v2 = sub_22BCF8B90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE8050(uint64_t a1)
{
  v2 = sub_22BCF8B90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE808C(uint64_t a1)
{
  v2 = sub_22BCF8C38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE80C8(uint64_t a1)
{
  v2 = sub_22BCF8C38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCE8104(uint64_t a1)
{
  v2 = sub_22BCF8BE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE8140(uint64_t a1)
{
  v2 = sub_22BCF8BE4();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.CandidateDefinition.encode(to:)()
{
  sub_22BB31014();
  sub_22BB92328();
  v4 = sub_22BBE6DE0(&qword_27D8E4668, &qword_22BDC32A8);
  v77 = sub_22BB30444(v4);
  v6 = *(v5 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB340E0(v8, v66);
  v9 = sub_22BDBA994();
  v10 = sub_22BB30444(v9);
  v75 = v11;
  v76 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB305A8();
  v74 = v14;
  v15 = sub_22BBE6DE0(&qword_27D8E4670, &qword_22BDC32B0);
  v73 = sub_22BB30444(v15);
  v17 = *(v16 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  sub_22BB30BA8();
  sub_22BB2F120();
  v19 = sub_22BDBA594();
  v20 = sub_22BB30444(v19);
  v71 = v21;
  v72 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BB305A8();
  v70 = v24;
  v69 = sub_22BBE6DE0(&qword_27D8E4678, &qword_22BDC32B8);
  sub_22BB30444(v69);
  v67 = v25;
  v27 = *(v26 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v28);
  sub_22BB36808();
  v29 = sub_22BDBA014();
  v30 = sub_22BB30444(v29);
  v68 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BB30574();
  v34 = sub_22BB319F8();
  v35 = type metadata accessor for FeedbackLearning.CandidateDefinition(v34);
  v36 = sub_22BB2F330(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22BB30574();
  sub_22BB33230();
  v39 = sub_22BBE6DE0(&qword_27D8E4680, &qword_22BDC32C0);
  sub_22BB30444(v39);
  v41 = *(v40 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v42);
  sub_22BB354DC();
  v44 = *(v1 + 24);
  v43 = *(v1 + 32);
  v45 = sub_22BB3A19C();
  sub_22BB699E4(v45, v46);
  sub_22BCF8B3C();
  sub_22BDBB8A4();
  sub_22BB32380();
  sub_22BCF8A8C(v78, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v49 = v71;
      v48 = v72;
      sub_22BB379C8();
      v50 = v70;
      v51 = sub_22BB94E38();
      v52(v51);
      sub_22BB393D0();
      sub_22BCF8BE4();
      sub_22BB72F1C();
      sub_22BDBB5F4();
      sub_22BB759C8();
      sub_22BCF8848(v53, v54);
      v55 = v73;
      sub_22BB980C8();
    }

    else
    {
      v49 = v75;
      v48 = v76;
      sub_22BB379C8();
      v50 = v74;
      v58 = sub_22BB94E38();
      v59(v58);
      sub_22BB3CF44();
      sub_22BCF8B90();
      sub_22BB72F1C();
      sub_22BDBB5F4();
      sub_22BD007B4();
      sub_22BCF8848(v60, v61);
      v55 = v77;
      sub_22BB980C8();
      sub_22BD00DA4();
    }

    v62 = sub_22BB34F2C();
    v63(v62, v55);
    (*(v49 + 8))(v50, v48);
  }

  else
  {
    (*(v68 + 32))(v2, v0, v29);
    sub_22BCF8C38();
    sub_22BB72F1C();
    sub_22BDBB5F4();
    sub_22BB38124();
    sub_22BCF8848(v56, v57);
    sub_22BDBB664();
    (*(v67 + 8))(v3, v69);
    (*(v68 + 8))(v2, v29);
  }

  v64 = sub_22BB3DFD0();
  v65(v64, v0);
  sub_22BD00C3C();
  sub_22BB376A8();
}

void FeedbackLearning.CandidateDefinition.init(from:)()
{
  sub_22BB31014();
  v109 = v0;
  v5 = v4;
  v104 = v6;
  v107 = sub_22BBE6DE0(&qword_27D8E46B8, &qword_22BDC32C8);
  sub_22BB30444(v107);
  v103 = v7;
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB38B54(v11, v93);
  v12 = sub_22BBE6DE0(&qword_27D8E46C0, &qword_22BDC32D0);
  v13 = sub_22BB30444(v12);
  v101 = v14;
  v102 = v13;
  v16 = *(v15 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v17);
  sub_22BB37048(v18, v93);
  v19 = sub_22BBE6DE0(&qword_27D8E46C8, &qword_22BDC32D8);
  v20 = sub_22BB30444(v19);
  v99 = v21;
  v100 = v20;
  v23 = *(v22 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v24);
  sub_22BB39504(v25);
  v26 = sub_22BBE6DE0(&qword_27D8E46D0, &qword_22BDC32E0);
  v27 = sub_22BB30444(v26);
  v105 = v28;
  v106 = v27;
  v30 = *(v29 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v31);
  sub_22BB395E0();
  v32 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  v33 = sub_22BB2F330(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BB30C74();
  sub_22BB347FC();
  MEMORY[0x28223BE20](v36);
  sub_22BB34360();
  MEMORY[0x28223BE20](v37);
  sub_22BB89DA4();
  MEMORY[0x28223BE20](v38);
  v40 = &v93 - v39;
  v42 = v5[3];
  v41 = v5[4];
  v108 = v5;
  v43 = sub_22BB8AB74();
  sub_22BB699E4(v43, v44);
  sub_22BCF8B3C();
  sub_22BB69544();
  sub_22BD00C48();
  sub_22BDBB894();
  if (!v0)
  {
    v95 = v3;
    v96 = v1;
    v97 = v2;
    v98 = v40;
    v46 = v106;
    v45 = v107;
    v109 = v32;
    v47 = sub_22BDBB5E4();
    sub_22BD00A84(v47);
    if (!v48)
    {
      sub_22BB2F4F4();
      if (v53 == v54)
      {
        __break(1u);
        return;
      }

      v55 = *(v52 + v50);
      sub_22BB97F40(v49, v50, v51, v52);
      sub_22BBBFF50();
      if (!v41)
      {
        if (v55)
        {
          if (v55 == 1)
          {
            sub_22BB393D0();
            sub_22BCF8BE4();
            sub_22BB2F230();
            sub_22BDBB554();
            v56 = v98;
            sub_22BDBA594();
            sub_22BB759C8();
            sub_22BCF8848(v57, v58);
            v59 = v95;
            sub_22BDBB5D4();
            v94 = 0;
            swift_unknownObjectRelease();
            v77 = *(v101 + 8);
            v78 = sub_22BB53C48();
            v79(v78);
            v80 = sub_22BB3A988();
          }

          else
          {
            sub_22BB3CF44();
            sub_22BCF8B90();
            sub_22BB2F230();
            sub_22BDBB554();
            v56 = v98;
            sub_22BDBA994();
            sub_22BD007B4();
            sub_22BCF8848(v75, v76);
            v59 = v97;
            sub_22BDBB5D4();
            v94 = 0;
            swift_unknownObjectRelease();
            v89 = sub_22BB9607C();
            v90(v89, v45);
            v80 = sub_22BB38B68();
          }

          v81(v80);
          swift_storeEnumTagMultiPayload();
          v88 = v59;
          v87 = v108;
        }

        else
        {
          sub_22BCF8C38();
          sub_22BB2F230();
          sub_22BDBB554();
          sub_22BDBA014();
          sub_22BB38124();
          sub_22BCF8848(v71, v72);
          v73 = v96;
          sub_22BDBB5D4();
          v74 = v105;
          v94 = 0;
          swift_unknownObjectRelease();
          v82 = sub_22BB3B6B8();
          v83(v82);
          v84 = *(v74 + 8);
          v85 = sub_22BB32E04();
          v86(v85);
          swift_storeEnumTagMultiPayload();
          v87 = v108;
          v56 = v98;
          v88 = v73;
        }

        sub_22BCF8A34(v88, v56);
        v91 = sub_22BB3ADA8();
        sub_22BCF8A34(v91, v92);
        sub_22BB32FA4(v87);
        goto LABEL_11;
      }
    }

    v60 = sub_22BDBB3A4();
    sub_22BB31A08();
    v62 = v61;
    v63 = *(sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530) + 48);
    *v62 = v109;
    sub_22BDBB564();
    sub_22BB36D74();
    v64 = *MEMORY[0x277D84160];
    sub_22BB30474(v60);
    v66 = *(v65 + 104);
    v67 = sub_22BB527FC();
    v68(v67);
    swift_willThrow();
    swift_unknownObjectRelease();
    v69 = sub_22BB3B5D8();
    v70(v69, v46);
  }

  sub_22BB32FA4(v108);
LABEL_11:
  sub_22BD00C9C();
  sub_22BB376A8();
}

void FeedbackLearning.CandidateDefinition.description.getter()
{
  sub_22BB30F94();
  v3 = sub_22BDBA594();
  v4 = sub_22BB30444(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  sub_22BB3DFC0();
  v9 = sub_22BDBA014();
  v10 = sub_22BB30444(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB3662C();
  v15 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  v16 = sub_22BB2F330(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  sub_22BB345CC();
  sub_22BB32380();
  v19 = sub_22BB393C4();
  sub_22BCF8A8C(v19, v20);
  sub_22BB32E04();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v6 + 32))(v0, v2, v3);
      sub_22BD00C54();
      v22 = sub_22BDBA584();
      MEMORY[0x2318A4C40](v22);

      sub_22BB36A44();
      v23 = *(v6 + 8);
      v24 = sub_22BB3182C();
      v25(v24);
    }

    else
    {
      sub_22BCF8AE4(v2, type metadata accessor for FeedbackLearning.CandidateDefinition);
    }
  }

  else
  {
    (*(v12 + 32))(v1, v2, v9);
    v26 = sub_22BDB9FE4();
    MEMORY[0x2318A4C40](v26);

    sub_22BB36A44();
    v27 = *(v12 + 8);
    v28 = sub_22BB3AAD8();
    v29(v28);
  }

  sub_22BB393C4();
  sub_22BB314EC();
}

BOOL static FeedbackLearning.CandidateEvaluation.== infix(_:_:)()
{
  sub_22BB35F54();
  if ((sub_22BDB4C04() & 1) == 0)
  {
    return 0;
  }

  v2 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
  sub_22BB36D64(v2);
  static FeedbackLearning.CandidateParameter.== infix(_:_:)();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_22BB94E2C(v2[6]);
  static FeedbackLearning.CandidateDefinition.== infix(_:_:)();
  if (v4 & 1) != 0 && (sub_22BB94E2C(v2[7]), (sub_22BDB7B04()) && *(v1 + v2[8]) == *(v0 + v2[8]) && (v5 = v2[9], v8 = *(v1 + v5), v7 = *(v0 + v5), (static FeedbackLearning.CandidateOutcome.== infix(_:_:)(&v8, &v7)))
  {
    return *(v1 + v2[10]) == *(v0 + v2[10]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BCE91D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656D61726170 && a2 == 0xE900000000000072;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x800000022BDD32D0 == a2;
      if (v7 || (sub_22BDBB6D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x800000022BDD32F0 == a2;
        if (v8 || (sub_22BDBB6D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6974756C6F736572 && a2 == 0xEA00000000006E6FLL;
          if (v9 || (sub_22BDBB6D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000;
            if (v10 || (sub_22BDBB6D4() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6E6F6974616E6F64 && a2 == 0xEF736E6F6974704FLL)
            {

              return 6;
            }

            else
            {
              v12 = sub_22BDBB6D4();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22BCE943C(char a1)
{
  result = 0x6E656D6574617473;
  switch(a1)
  {
    case 1:
      result = 0x6574656D61726170;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6974756C6F736572;
      break;
    case 5:
      result = 0x656D6F6374756FLL;
      break;
    case 6:
      result = 0x6E6F6974616E6F64;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BCE952C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCE91D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCE9554@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BCE9434();
  *a1 = result;
  return result;
}

uint64_t sub_22BCE957C(uint64_t a1)
{
  v2 = sub_22BCF8CAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCE95B8(uint64_t a1)
{
  v2 = sub_22BCF8CAC();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.CandidateEvaluation.encode(to:)()
{
  sub_22BD00EDC();
  v3 = sub_22BBE6DE0(&qword_27D8E46E8, &qword_22BDC32E8);
  sub_22BB30444(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB3721C();
  sub_22BB3B3AC();
  sub_22BCF8CAC();
  sub_22BD0071C();
  sub_22BDB4C34();
  sub_22BB35B60();
  sub_22BCF8848(v7, v8);
  sub_22BB3AD98();
  sub_22BDBB664();
  if (!v1)
  {
    v9 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
    sub_22BD0096C(v9);
    v11 = sub_22BD00CFC(v10);
    type metadata accessor for FeedbackLearning.CandidateParameter(v11);
    sub_22BB58AD4();
    sub_22BCF8848(v12, v13);
    sub_22BD00A18();
    sub_22BB3AD98();
    sub_22BDBB664();
    v14 = v2[6];
    v15 = sub_22BD00CFC(2);
    type metadata accessor for FeedbackLearning.CandidateDefinition(v15);
    sub_22BD008BC();
    sub_22BCF8848(v16, v17);
    sub_22BD00A18();
    sub_22BB3AD98();
    sub_22BDBB664();
    v18 = v2[7];
    sub_22BD00CFC(3);
    sub_22BDB7B44();
    sub_22BB36E04();
    sub_22BCF8848(v19, v20);
    sub_22BD00A18();
    sub_22BB3AD98();
    sub_22BDBB664();
    v23 = *(v0 + v2[8]);
    sub_22BB3E098();
    sub_22BCF8D00();
    sub_22BB337A0();
    sub_22BDBB664();
    v24 = *(v0 + v2[9]);
    sub_22BBC0278();
    sub_22BCF8D54();
    sub_22BB337A0();
    sub_22BDBB664();
    v25 = *(v0 + v2[10]);
    sub_22BD00EA8();
    sub_22BCF8DA8();
    sub_22BB337A0();
    sub_22BDBB664();
  }

  v21 = sub_22BB35198();
  v22(v21);
  sub_22BD00EC8();
}

void FeedbackLearning.CandidateEvaluation.init(from:)()
{
  sub_22BB31014();
  v5 = v4;
  v53 = v6;
  v61 = sub_22BDB7B44();
  v7 = sub_22BB30444(v61);
  v59 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB305A8();
  v54 = v11;
  v12 = sub_22BB2F120();
  v56 = type metadata accessor for FeedbackLearning.CandidateDefinition(v12);
  v13 = sub_22BB2F330(v56);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BB305A8();
  v55 = v16;
  v17 = sub_22BB2F120();
  v18 = type metadata accessor for FeedbackLearning.CandidateParameter(v17);
  v19 = sub_22BB2F330(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BB30574();
  sub_22BB36FD8();
  v22 = sub_22BDB4C34();
  v23 = sub_22BB30444(v22);
  v60 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BB30574();
  sub_22BB72E10();
  v27 = sub_22BBE6DE0(&qword_27D8E4728, &qword_22BDC32F0);
  v28 = sub_22BB30444(v27);
  v57 = v29;
  v58 = v28;
  v31 = *(v30 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v32);
  sub_22BB34298();
  v62 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
  v33 = sub_22BB2F330(v62);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BB305A8();
  v37 = v36;
  v38 = v5[3];
  v39 = v5[4];
  v40 = sub_22BB2F324();
  sub_22BB699E4(v40, v41);
  sub_22BCF8CAC();
  sub_22BD00CC0();
  sub_22BDBB894();
  if (v0)
  {
    sub_22BB32FA4(v5);
  }

  else
  {
    sub_22BB35B60();
    sub_22BCF8848(v42, v43);
    sub_22BD00A0C();
    sub_22BDBB5D4();
    (*(v60 + 32))(v37, v2, v22);
    sub_22BB58AD4();
    sub_22BCF8848(v44, v45);
    sub_22BD00A0C();
    sub_22BDBB5D4();
    v46 = v62[5];
    sub_22BB31158();
    sub_22BCF8A34(v3, v37 + v47);
    sub_22BD008BC();
    sub_22BCF8848(v48, v49);
    sub_22BD00A0C();
    sub_22BDBB5D4();
    sub_22BCF8A34(v55, v37 + v62[6]);
    LOBYTE(v63) = 3;
    sub_22BB36E04();
    sub_22BCF8848(v50, v51);
    sub_22BD00A0C();
    sub_22BDBB5D4();
    (*(v59 + 32))(v37 + v62[7], v54, v61);
    sub_22BB3E098();
    sub_22BCF8DFC();
    sub_22BB38554();
    *(v37 + v62[8]) = 3;
    sub_22BBC0278();
    sub_22BCF8E50();
    sub_22BB38554();
    *(v37 + v62[9]) = 3;
    sub_22BD00EA8();
    sub_22BCF8EA4();
    sub_22BB38554();
    (*(v57 + 8))(v1, v58);
    *(v37 + v62[10]) = v63;
    sub_22BD00844();
    sub_22BCF8A8C(v37, v53);
    sub_22BB32FA4(v5);
    sub_22BD0082C();
    sub_22BCF8AE4(v37, v52);
  }

  sub_22BB975A0();
  sub_22BB376A8();
}

void static FeedbackLearning.TaskFailureReason.== infix(_:_:)()
{
  sub_22BB30F94();
  v41 = v5;
  v42 = v6;
  v7 = sub_22BDB8294();
  v8 = sub_22BB30444(v7);
  v39 = v9;
  v40 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  sub_22BB319F8();
  v12 = sub_22BDB4C84();
  v13 = sub_22BB30444(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BB3662C();
  v18 = type metadata accessor for FeedbackLearning.TaskFailureReason(0);
  v19 = sub_22BB2F330(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BB30C74();
  sub_22BB34360();
  MEMORY[0x28223BE20](v22);
  sub_22BD00B4C();
  v23 = sub_22BBE6DE0(&qword_27D8E4760, &qword_22BDC32F8);
  sub_22BB2F0C8(v23);
  v25 = *(v24 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v26);
  sub_22BD00A30();
  v28 = *(v27 + 56);
  sub_22BCF8A8C(v41, v0);
  sub_22BCF8A8C(v42, v0 + v28);
  sub_22BB3A19C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BB53D70();
    sub_22BCF8A8C(v0, v3);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BB3AE34();
      v29(v1, v0 + v28, v40);
      sub_22BDB8284();
      v30 = *(v39 + 8);
      v31 = sub_22BB3AC54();
      v30(v31);
      (v30)(v3, v40);
LABEL_9:
      sub_22BB362D0();
      sub_22BCF8AE4(v0, v38);
      goto LABEL_10;
    }

    v34 = sub_22BB3B088();
    v35(v34);
  }

  else
  {
    sub_22BB53D70();
    v32 = sub_22BB8AB74();
    sub_22BCF8A8C(v32, v33);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v15 + 32))(v2, v0 + v28, v12);
      sub_22BB89D18();
      sub_22BDB4C74();
      v36 = *(v15 + 8);
      v37 = sub_22BB39478();
      v36(v37);
      (v36)(v4, v12);
      goto LABEL_9;
    }

    (*(v15 + 8))(v4, v12);
  }

  sub_22BB58728(v0, &qword_27D8E4760, &qword_22BDC32F8);
LABEL_10:
  sub_22BB314EC();
}

uint64_t sub_22BCEA240(uint64_t a1)
{
  v2 = sub_22BCF8F18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEA27C(uint64_t a1)
{
  v2 = sub_22BCF8F18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEA2B8(uint64_t a1)
{
  v2 = sub_22BCF8F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEA2F4(uint64_t a1)
{
  v2 = sub_22BCF8F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEA330(uint64_t a1)
{
  v2 = sub_22BCF8FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEA36C(uint64_t a1)
{
  v2 = sub_22BCF8FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.TaskFailureReason.encode(to:)()
{
  sub_22BB31014();
  v61 = v0;
  v3 = v2;
  v4 = sub_22BBE6DE0(&qword_27D8E4768, &qword_22BDC3300);
  sub_22BB30444(v4);
  v6 = *(v5 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB39504(v8);
  v9 = sub_22BDB8294();
  v10 = sub_22BB30444(v9);
  v59 = v11;
  v60 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB305A8();
  v58 = v14;
  v15 = sub_22BBE6DE0(&qword_27D8E4770, &qword_22BDC3308);
  sub_22BB30444(v15);
  v17 = *(v16 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  sub_22BB354DC();
  v19 = sub_22BDB4C84();
  v20 = sub_22BB30444(v19);
  v56 = v21;
  v57 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  v26 = v25 - v24;
  v27 = type metadata accessor for FeedbackLearning.TaskFailureReason(0);
  v28 = sub_22BB2F330(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BB30574();
  sub_22BD00790();
  v31 = sub_22BBE6DE0(&qword_27D8E4778, &qword_22BDC3310);
  sub_22BB30444(v31);
  v33 = *(v32 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v34);
  sub_22BB32750();
  v35 = *(v3 + 24);
  v36 = *(v3 + 32);
  v37 = sub_22BB53C48();
  sub_22BB699E4(v37, v38);
  sub_22BCF8F18();
  sub_22BDBB8A4();
  sub_22BB53D70();
  sub_22BCF8A8C(v61, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BB379C8();
    v39(v58, v1, v60);
    sub_22BB75960();
    sub_22BCF8F6C();
    sub_22BB393F8();
    sub_22BDBB5F4();
    sub_22BD00814();
    sub_22BCF8848(v40, v41);
    sub_22BDBB664();
    sub_22BB38B78();
    v42 = sub_22BB3ADA8();
    v43(v42);
    v44 = *(v59 + 8);
    v45 = sub_22BD0073C();
    v46(v45);
  }

  else
  {
    v47 = *(v56 + 32);
    v48 = sub_22BD00E6C();
    v49(v48);
    sub_22BCF8FC0();
    sub_22BBBEB1C();
    sub_22BB393F8();
    sub_22BDBB5F4();
    sub_22BB69AD8();
    sub_22BCF8848(v50, v51);
    sub_22BDBB664();
    v52 = sub_22BB692D0();
    v53(v52);
    (*(v56 + 8))(v26, v57);
  }

  v54 = sub_22BB348D0();
  v55(v54);
  sub_22BD00C3C();
  sub_22BB376A8();
}

void FeedbackLearning.TaskFailureReason.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_22BB31014();
  sub_22BD00B7C(v13);
  v68 = sub_22BBE6DE0(&qword_27D8E47A8, &qword_22BDC3318);
  sub_22BB30444(v68);
  v15 = *(v14 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB2F240(v17, v66);
  v18 = sub_22BBE6DE0(&qword_27D8E47B0, &qword_22BDC3320);
  sub_22BB30444(v18);
  v20 = *(v19 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v21);
  sub_22BB37048(v22, v67);
  v23 = sub_22BBE6DE0(&qword_27D8E47B8, &qword_22BDC3328);
  sub_22BB30444(v23);
  v25 = *(v24 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v26);
  sub_22BB354DC();
  v27 = type metadata accessor for FeedbackLearning.TaskFailureReason(0);
  v28 = sub_22BB2F330(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BB30C74();
  sub_22BB89894();
  MEMORY[0x28223BE20](v31);
  sub_22BB7037C();
  MEMORY[0x28223BE20](v32);
  sub_22BB3E4C0();
  v33 = v12[3];
  v34 = v12[4];
  sub_22BB9575C(v12);
  sub_22BCF8F18();
  sub_22BB95B68();
  sub_22BDBB894();
  if (!v11)
  {
    v35 = sub_22BB7553C();
    sub_22BD01008(v35);
    if (v36)
    {
      goto LABEL_9;
    }

    sub_22BB2F4F4();
    if (v41 == v42)
    {
      __break(1u);
      return;
    }

    sub_22BB3DE3C(v37, v38, v39, v40);
    sub_22BD00A3C();
    if (v33)
    {
LABEL_9:
      sub_22BDBB3A4();
      sub_22BB31A08();
      v45 = sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
      sub_22BB97E38(v45);
      sub_22BD00E30();
      sub_22BB36D74();
      v46 = *MEMORY[0x277D84160];
      sub_22BB330A0();
      v48 = *(v47 + 104);
      v49 = sub_22BD00C90();
      v50(v49);
      swift_willThrow();
      swift_unknownObjectRelease();
      v51 = sub_22BB397A4();
      v52(v51, v10);
    }

    else
    {
      if (a10)
      {
        sub_22BB75960();
        sub_22BCF8F6C();
        sub_22BB8DB14();
        sub_22BB2F230();
        sub_22BDBB554();
        sub_22BD00B08();
        if (!v12)
        {
          sub_22BDB8294();
          sub_22BD00814();
          sub_22BCF8848(v43, v44);
          sub_22BB8AC44();
          sub_22BD00B5C();
          swift_unknownObjectRelease();
          v58 = sub_22BB3FCC8();
          v59(v58);
          v60 = sub_22BB38B68();
          v61(v60);
          sub_22BD00B30();
LABEL_16:
          swift_storeEnumTagMultiPayload();
          sub_22BCF8A34(v10, 0);
          sub_22BD00D58();
          v53 = v69;
          goto LABEL_12;
        }
      }

      else
      {
        sub_22BCF8FC0();
        sub_22BB77E64();
        sub_22BB2F230();
        sub_22BDBB554();
        sub_22BD00B08();
        if (!v12)
        {
          sub_22BDB4C84();
          sub_22BB69AD8();
          sub_22BCF8848(v56, v57);
          sub_22BB34EF8();
          swift_unknownObjectRelease();
          v62 = sub_22BB3FCC8();
          v63(v62);
          v64 = sub_22BB3A280();
          v65(v64);
          sub_22BD00B30();
          goto LABEL_16;
        }
      }

      v54 = sub_22BB3A280();
      v55(v54);
      swift_unknownObjectRelease();
    }

    v12 = v69;
  }

  v53 = v12;
LABEL_12:
  sub_22BB32FA4(v53);
  sub_22BD00E18();
  sub_22BB376A8();
}

void static FeedbackLearning.TaskStatus.== infix(_:_:)()
{
  sub_22BB3B094();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for FeedbackLearning.TaskFailureReason(0);
  v7 = sub_22BB2F0C8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  sub_22BD00A30();
  v10 = type metadata accessor for FeedbackLearning.TaskStatus(0);
  v11 = sub_22BB2F0C8(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v16 = v15 - v14;
  v17 = sub_22BBE6DE0(&qword_27D8E47D0, &unk_22BDC3330);
  sub_22BB2F0C8(v17);
  v19 = *(v18 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v20);
  sub_22BB395E0();
  v22 = *(v21 + 56);
  sub_22BCF8A8C(v5, v0);
  sub_22BCF8A8C(v3, v0 + v22);
  v23 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
  switch(sub_22BB3AA28(v0, 4, v23))
  {
    case 1u:
      if (sub_22BD0097C() == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 2u:
      if (sub_22BD0097C() != 2)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 3u:
      if (sub_22BD0097C() != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 4u:
      if (sub_22BD0097C() != 4)
      {
        goto LABEL_7;
      }

LABEL_5:
      sub_22BD008E0();
      break;
    default:
      sub_22BB3A464();
      sub_22BCF8A8C(v0, v16);
      if (sub_22BD0097C())
      {
        sub_22BB362D0();
        sub_22BCF8AE4(v16, v24);
LABEL_7:
        sub_22BB58728(v0, &qword_27D8E47D0, &unk_22BDC3330);
      }

      else
      {
        sub_22BB6F948();
        sub_22BCF8A34(v0 + v22, v1);
        sub_22BB37494();
        static FeedbackLearning.TaskFailureReason.== infix(_:_:)();
        sub_22BCF8AE4(v1, type metadata accessor for FeedbackLearning.TaskFailureReason);
        sub_22BCF8AE4(v16, type metadata accessor for FeedbackLearning.TaskFailureReason);
        sub_22BD008E0();
      }

      break;
  }

  sub_22BB36A24();
}

uint64_t sub_22BCEAF44(uint64_t a1)
{
  v2 = sub_22BCF9088();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEAF80(uint64_t a1)
{
  v2 = sub_22BCF9088();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEAFBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BCEAF28();
  *a1 = result;
  return result;
}

uint64_t sub_22BCEAFE4(uint64_t a1)
{
  v2 = sub_22BCF9034();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEB020(uint64_t a1)
{
  v2 = sub_22BCF9034();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEB05C(uint64_t a1)
{
  v2 = sub_22BCF90DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEB098(uint64_t a1)
{
  v2 = sub_22BCF90DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEB0D8(uint64_t a1)
{
  v2 = sub_22BCF9130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEB114(uint64_t a1)
{
  v2 = sub_22BCF9130();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEB150(uint64_t a1)
{
  v2 = sub_22BCF9184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEB18C(uint64_t a1)
{
  v2 = sub_22BCF9184();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEB1C8(uint64_t a1)
{
  v2 = sub_22BCF91D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEB204(uint64_t a1)
{
  v2 = sub_22BCF91D8();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.TaskStatus.encode(to:)()
{
  sub_22BB31014();
  sub_22BD00E54();
  v3 = sub_22BBE6DE0(&qword_27D8E47D8, &qword_22BDC3340);
  sub_22BB30444(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB2F240(v7, v58);
  v62 = sub_22BBE6DE0(&qword_27D8E47E0, &qword_22BDC3348);
  sub_22BB30444(v62);
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB30BA8();
  sub_22BD00C78(v11);
  v63 = sub_22BBE6DE0(&qword_27D8E47E8, &qword_22BDC3350);
  sub_22BB30444(v63);
  v13 = *(v12 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  sub_22BB6BB20(v15, v59);
  v60 = type metadata accessor for FeedbackLearning.TaskFailureReason(0);
  v16 = sub_22BB2F330(v60);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB305A8();
  v61 = v19;
  v20 = sub_22BBE6DE0(&qword_27D8E47F0, &qword_22BDC3358);
  sub_22BB30444(v20);
  v22 = *(v21 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v23);
  sub_22BB34298();
  v24 = sub_22BBE6DE0(&qword_27D8E47F8, &qword_22BDC3360);
  sub_22BB30444(v24);
  v26 = *(v25 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v27);
  sub_22BB3721C();
  v28 = type metadata accessor for FeedbackLearning.TaskStatus(0);
  v29 = sub_22BB2F0C8(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BB30574();
  sub_22BB33230();
  v32 = sub_22BBE6DE0(&qword_27D8E4800, &qword_22BDC3368);
  sub_22BB30444(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v37);
  sub_22BB36808();
  v39 = *(v1 + 24);
  v38 = *(v1 + 32);
  v40 = sub_22BB3A19C();
  sub_22BB699E4(v40, v41);
  sub_22BCF9034();
  sub_22BD00918();
  sub_22BDBB8A4();
  sub_22BB3A464();
  sub_22BD01048();
  sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
  v42 = sub_22BD00E84();
  switch(sub_22BB3AA28(v42, 4, v43))
  {
    case 1u:
      sub_22BCF91D8();
      sub_22BB52E84();
      sub_22BDBB5F4();
      v52 = sub_22BB9607C();
      goto LABEL_7;
    case 2u:
      sub_22BD00E78();
      sub_22BCF9184();
      sub_22BB52E84();
      sub_22BDBB5F4();
      v52 = sub_22BB3B088();
      goto LABEL_7;
    case 3u:
      sub_22BD00DF8();
      sub_22BCF90DC();
      sub_22BB52E84();
      sub_22BDBB5F4();
      v52 = sub_22BB37D64();
      v53 = v62;
      goto LABEL_7;
    case 4u:
      sub_22BB3E098();
      sub_22BCF9088();
      sub_22BB52E84();
      sub_22BDBB5F4();
      v52 = sub_22BB37D64();
LABEL_7:
      v54(v52, v53);
      v55 = *(v34 + 8);
      v56 = sub_22BD0073C();
      v57(v56);
      break;
    default:
      sub_22BCF8A34(v0, v61);
      sub_22BB8D22C();
      sub_22BCF9130();
      sub_22BB52E84();
      sub_22BDBB5F4();
      sub_22BB8B680();
      sub_22BCF8848(v44, v45);
      sub_22BBC2544();
      v46 = sub_22BB3AB0C();
      v47(v46, v2);
      sub_22BB362D0();
      sub_22BCF8AE4(v61, v48);
      v49 = *(v34 + 8);
      v50 = sub_22BD0073C();
      v51(v50);
      break;
  }

  sub_22BB3A204();
  sub_22BB376A8();
}

void FeedbackLearning.TaskStatus.init(from:)()
{
  sub_22BB31014();
  sub_22BD00D8C();
  v92 = v1;
  v95 = sub_22BBE6DE0(&qword_27D8E4840, &qword_22BDC3370);
  sub_22BB30444(v95);
  v93 = v2;
  v4 = *(v3 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  sub_22BB38B54(v6, v87);
  v7 = sub_22BBE6DE0(&qword_27D8E4848, &qword_22BDC3378);
  sub_22BB30444(v7);
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  sub_22BB6BB20(v11, v88);
  v12 = sub_22BBE6DE0(&qword_27D8E4850, &qword_22BDC3380);
  sub_22BB30444(v12);
  v14 = *(v13 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  sub_22BB340E0(v16, v89);
  v91 = sub_22BBE6DE0(&qword_27D8E4858, &qword_22BDC3388);
  sub_22BB30444(v91);
  v18 = *(v17 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v19);
  sub_22BB30BA8();
  sub_22BD00C78(v20);
  v21 = sub_22BBE6DE0(&qword_27D8E4860, &qword_22BDC3390);
  sub_22BB30444(v21);
  v23 = *(v22 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v24);
  sub_22BB52928();
  v25 = sub_22BBE6DE0(&qword_27D8E4868, &qword_22BDC3398);
  sub_22BB30444(v25);
  v94 = v26;
  v28 = *(v27 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  sub_22BB36808();
  v30 = type metadata accessor for FeedbackLearning.TaskStatus(0);
  v31 = sub_22BB2F330(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BB30C74();
  sub_22BB3E4D0();
  MEMORY[0x28223BE20](v34);
  sub_22BB3E4C0();
  v36 = v0[3];
  v35 = v0[4];
  v96 = v0;
  v37 = sub_22BB3A19C();
  sub_22BB699E4(v37, v38);
  sub_22BCF9034();
  sub_22BD00918();
  sub_22BDBB894();
  if (!v97)
  {
    v39 = sub_22BD00BC4();
    sub_22BD00A84(v39);
    if (!v40)
    {
      sub_22BB334EC();
      sub_22BB527F0();
      if (v45 == v46)
      {
        __break(1u);
        return;
      }

      v47 = *(v44 + v42);
      sub_22BB97F40(v41, v42, v43, v44);
      sub_22BD00F50();
      if (!(v25 >> 1))
      {
        switch(v47)
        {
          case 1:
            sub_22BD00E78();
            sub_22BCF9184();
            sub_22BB3E1EC();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v75 = sub_22BB34F2C();
            v76(v75, v91);
            v77 = sub_22BB5426C();
            v78(v77);
            sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
            v52 = sub_22BB3AAFC();
            v54 = 2;
            goto LABEL_15;
          case 2:
            sub_22BB8D22C();
            sub_22BCF9130();
            sub_22BB3E1EC();
            sub_22BDBB554();
            type metadata accessor for FeedbackLearning.TaskFailureReason(0);
            sub_22BB8B680();
            sub_22BCF8848(v69, v70);
            sub_22BD00998();
            swift_unknownObjectRelease();
            v79 = sub_22BB8DCCC();
            v80(v79);
            v81 = *(v94 + 8);
            v82 = sub_22BB3AAD8();
            v83(v82);
            sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
            v84 = sub_22BD0095C();
            sub_22BB336D0(v84, v85, 4, v86);
            sub_22BB92854();
            v47 = v90;
            sub_22BCF8A34(0, v90);
            goto LABEL_16;
          case 3:
            sub_22BD00DF8();
            sub_22BCF90DC();
            sub_22BB3E1EC();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v71 = sub_22BB34F2C();
            v72(v71);
            v73 = sub_22BB5426C();
            v74(v73);
            sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
            v52 = sub_22BB3AAFC();
            v54 = 3;
            goto LABEL_15;
          case 4:
            sub_22BB3E098();
            sub_22BCF9088();
            sub_22BB3E1EC();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v64 = *(v93 + 8);
            v65 = sub_22BC54A0C();
            v66(v65);
            v67 = sub_22BB5426C();
            v68(v67);
            sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
            v52 = sub_22BB3AAFC();
            v54 = 4;
            goto LABEL_15;
          default:
            sub_22BCF91D8();
            sub_22BB3E1EC();
            sub_22BDBB554();
            swift_unknownObjectRelease();
            v48 = sub_22BB37D64();
            v49(v48);
            v50 = sub_22BB5426C();
            v51(v50);
            sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
            v52 = sub_22BB3AAFC();
            v54 = 1;
LABEL_15:
            sub_22BB336D0(v52, v54, 4, v53);
LABEL_16:
            sub_22BB92854();
            sub_22BCF8A34(v47, v92);
            v63 = v96;
            break;
        }

        goto LABEL_10;
      }
    }

    sub_22BDBB3A4();
    sub_22BB31A08();
    v55 = sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
    sub_22BD00EF0(v55);
    sub_22BB36D74();
    v56 = *MEMORY[0x277D84160];
    sub_22BB330A0();
    v58 = *(v57 + 104);
    v59 = sub_22BD00A78();
    v60(v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    v61 = sub_22BB3B6B8();
    v62(v61);
  }

  v63 = v96;
LABEL_10:
  sub_22BB32FA4(v63);
  sub_22BB975A0();
  sub_22BB376A8();
}

uint64_t static FeedbackLearning.TaskPromptStatus.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    if (v3 == 3)
    {
      return 1;
    }

    return sub_22BBE7CE0();
  }

  if (v3 == 3)
  {
    return sub_22BBE7CE0();
  }

  return v2 == v3;
}

uint64_t sub_22BCEBF64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D7269666E6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22BDBB6D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BCEC02C(char a1)
{
  if (a1)
  {
    return 0x6D7269666E6F63;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_22BCEC064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCEBF64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCEC08C(uint64_t a1)
{
  v2 = sub_22BCF922C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEC0C8(uint64_t a1)
{
  v2 = sub_22BCF922C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEC104(uint64_t a1)
{
  v2 = sub_22BCF9280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEC140(uint64_t a1)
{
  v2 = sub_22BCF9280();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEC17C(uint64_t a1)
{
  v2 = sub_22BCF92D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEC1B8(uint64_t a1)
{
  v2 = sub_22BCF92D4();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.TaskPromptStatus.encode(to:)()
{
  sub_22BB31014();
  v3 = v2;
  v4 = sub_22BBE6DE0(&qword_27D8E4878, &qword_22BDC33A0);
  sub_22BB30444(v4);
  v6 = *(v5 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB30BA8();
  sub_22BD00CD8(v8);
  v9 = sub_22BBE6DE0(&qword_27D8E4880, &qword_22BDC33A8);
  v10 = sub_22BB30444(v9);
  v29 = v11;
  v30 = v10;
  v13 = *(v12 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  sub_22BB36808();
  v15 = sub_22BBE6DE0(&qword_27D8E4888, &qword_22BDC33B0);
  sub_22BB30444(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v20);
  sub_22BB34298();
  v21 = *v0;
  v22 = v3[4];
  sub_22BB699E4(v3, v3[3]);
  sub_22BCF922C();
  sub_22BD00CC0();
  sub_22BDBB8A4();
  if (v21 == 3)
  {
    sub_22BCF92D4();
    sub_22BB31D34();
    sub_22BDBB5F4();
    (*(v29 + 8))(v1, v30);
    v23 = *(v17 + 8);
  }

  else
  {
    sub_22BB75960();
    sub_22BCF9280();
    sub_22BB31D34();
    sub_22BDBB5F4();
    sub_22BCF8534();
    sub_22BDBB664();
    sub_22BB3158C();
    v26 = sub_22BB3A86C();
    v27(v26);
    v28 = *(v17 + 8);
  }

  v24 = sub_22BB58D2C();
  v25(v24);
  sub_22BB3A204();
  sub_22BB376A8();
}

void FeedbackLearning.TaskPromptStatus.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_22BB31014();
  sub_22BD00B6C(v14);
  v64 = sub_22BBE6DE0(&qword_27D8E48A8, &qword_22BDC33B8);
  sub_22BB30444(v64);
  v62 = v15;
  v17 = *(v16 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  sub_22BB32750();
  v19 = sub_22BBE6DE0(&qword_27D8E48B0, &qword_22BDC33C0);
  sub_22BB30444(v19);
  v21 = *(v20 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v22);
  sub_22BB34298();
  v23 = sub_22BBE6DE0(&qword_27D8E48B8, &qword_22BDC33C8);
  sub_22BB30444(v23);
  v63 = v24;
  v26 = *(v25 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v27);
  sub_22BB354DC();
  v28 = v13[4];
  sub_22BB699E4(v13, v13[3]);
  sub_22BCF922C();
  sub_22BB95B68();
  sub_22BD00C48();
  sub_22BDBB894();
  if (!v12)
  {
    v29 = sub_22BDBB5E4();
    sub_22BCF80B8(v29, 0);
    if (v31 != v30 >> 1)
    {
      sub_22BB2F4F4();
      if (v36 == v37)
      {
        __break(1u);
        return;
      }

      v65 = *(v35 + v33);
      sub_22BB97F40(v32, v33, v34, v35);
      sub_22BBBFF50();
      if (!v28)
      {
        if (v65)
        {
          sub_22BB75960();
          sub_22BCF9280();
          sub_22BBBD27C();
          sub_22BD00E48();
          sub_22BDBB554();
          v38 = v61;
          sub_22BCF85DC();
          sub_22BB393F8();
          sub_22BDBB5D4();
          swift_unknownObjectRelease();
          v54 = *(v62 + 8);
          v55 = sub_22BC5448C();
          v56(v55);
          v57 = *(v63 + 8);
          v58 = sub_22BB3972C();
          v59(v58);
        }

        else
        {
          sub_22BCF92D4();
          sub_22BBBD27C();
          sub_22BD00E48();
          sub_22BDBB554();
          v38 = v61;
          swift_unknownObjectRelease();
          v50 = sub_22BB37D64();
          v51(v50, v19);
          v52 = sub_22BB3B6B8();
          v53(v52);
          a12 = 3;
        }

        *v38 = a12;
        v49 = v13;
        goto LABEL_10;
      }
    }

    sub_22BDBB3A4();
    sub_22BB31A08();
    v40 = v39;
    v41 = *(sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530) + 48);
    *v40 = &type metadata for FeedbackLearning.TaskPromptStatus;
    sub_22BDBB564();
    sub_22BD00E30();
    sub_22BB36D74();
    v42 = *MEMORY[0x277D84160];
    sub_22BB330A0();
    v44 = *(v43 + 104);
    v45 = sub_22BD00C90();
    v46(v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    v47 = sub_22BB3AB0C();
    v48(v47, v23);
  }

  v49 = v13;
LABEL_10:
  sub_22BB32FA4(v49);
  sub_22BD00C9C();
  sub_22BB376A8();
}

uint64_t static FeedbackLearning.TaskOutcome.== infix(_:_:)()
{
  sub_22BB35F54();
  static FeedbackLearning.TaskStatus.== infix(_:_:)();
  if (v2)
  {
    v3 = *(type metadata accessor for FeedbackLearning.TaskOutcome(0) + 20);
    v4 = *(v1 + v3);
    v5 = *(v0 + v3);
    if (v4 == 3)
    {
      if (v5 == 3)
      {
        return 1;
      }
    }

    else if (v4 == v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_22BCEC988(uint64_t a1)
{
  v2 = sub_22BCF9348();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEC9C4(uint64_t a1)
{
  v2 = sub_22BCF9348();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.TaskOutcome.encode(to:)()
{
  sub_22BD00EDC();
  sub_22BBBEB7C();
  v2 = sub_22BBE6DE0(&qword_27D8E48C0, &qword_22BDC33D0);
  sub_22BB30444(v2);
  v4 = *(v3 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  sub_22BB3721C();
  sub_22BB3B3AC();
  sub_22BCF9348();
  sub_22BD0071C();
  v6 = sub_22BD00E24();
  type metadata accessor for FeedbackLearning.TaskStatus(v6);
  sub_22BB6FEC4();
  sub_22BCF8848(v7, v8);
  sub_22BB36BDC();
  sub_22BB3AD98();
  sub_22BDBB664();
  if (!v1)
  {
    v11 = *(v0 + *(type metadata accessor for FeedbackLearning.TaskOutcome(0) + 20));
    sub_22BD008D4();
    sub_22BCF939C();
    sub_22BB37A08();
    sub_22BDBB664();
  }

  v9 = sub_22BB35198();
  v10(v9);
  sub_22BD00D08();
  sub_22BD00EC8();
}

void FeedbackLearning.TaskOutcome.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_22BB31014();
  v16 = sub_22BD00EB4(v15);
  v17 = type metadata accessor for FeedbackLearning.TaskStatus(v16);
  v18 = sub_22BB2F330(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB305A8();
  v44 = v21;
  v22 = sub_22BBE6DE0(&qword_27D8E48E0, &qword_22BDC33D8);
  sub_22BB30444(v22);
  v43 = v23;
  v25 = *(v24 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v26);
  v27 = sub_22BB30CE4();
  v28 = type metadata accessor for FeedbackLearning.TaskOutcome(v27);
  v29 = sub_22BB2F330(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BB3662C();
  v33 = v12[3];
  v32 = v12[4];
  v34 = sub_22BB3A84C();
  sub_22BB699E4(v34, v35);
  sub_22BCF9348();
  sub_22BD00C6C();
  sub_22BDBB894();
  if (v14)
  {
    sub_22BB32FA4(v12);
  }

  else
  {
    sub_22BB6FEC4();
    sub_22BCF8848(v36, v37);
    sub_22BB36BDC();
    sub_22BD00B9C();
    sub_22BB92854();
    sub_22BCF8A34(v44, v13);
    sub_22BD008D4();
    sub_22BCF93F0();
    sub_22BB3B0C0();
    sub_22BDBB5D4();
    v38 = *(v43 + 8);
    v39 = sub_22BB89D18();
    v40(v39);
    *(v13 + *(v28 + 20)) = a12;
    v41 = sub_22BB6BE0C();
    sub_22BCF8A8C(v41, v42);
    sub_22BB32FA4(v12);
    sub_22BCF8AE4(v13, type metadata accessor for FeedbackLearning.TaskOutcome);
  }

  sub_22BB376A8();
}

uint64_t static FeedbackLearning.TaskAction.== infix(_:_:)()
{
  sub_22BB35F54();
  if (sub_22BDB43B4() & 1) != 0 && (v2 = type metadata accessor for FeedbackLearning.FlowActionEvent(0), sub_22BB36D64(v2), static FeedbackLearning.ActionValue.== infix(_:_:)(), (v3) && (v4 = type metadata accessor for FeedbackLearning.TaskAction(0), sub_22BB36D64(v4), (sub_22BDB9FD4()))
  {
    v5 = *(v1 + *(v4 + 24)) ^ *(v0 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_22BCECE60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xEB00000000746E65;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696665446C6F6F74 && a2 == 0xEE006E6F6974696ELL;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6465747563657865 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22BDBB6D4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22BCECF7C(char a1)
{
  if (!a1)
  {
    return 0x76456E6F69746361;
  }

  if (a1 == 1)
  {
    return 0x696665446C6F6F74;
  }

  return 0x6465747563657865;
}

uint64_t sub_22BCECFF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCECE60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCED018(uint64_t a1)
{
  v2 = sub_22BCF9464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCED054(uint64_t a1)
{
  v2 = sub_22BCF9464();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.TaskAction.encode(to:)()
{
  sub_22BD00EDC();
  sub_22BBBEB7C();
  v3 = sub_22BBE6DE0(&qword_27D8E48F8, &qword_22BDC33E0);
  sub_22BB30444(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB3721C();
  sub_22BB3B3AC();
  sub_22BCF9464();
  sub_22BD0071C();
  v7 = sub_22BD00E24();
  type metadata accessor for FeedbackLearning.FlowActionEvent(v7);
  sub_22BB8AD1C();
  sub_22BCF8848(v8, v9);
  sub_22BB36BDC();
  sub_22BB3AD98();
  sub_22BDBB664();
  if (!v1)
  {
    v10 = type metadata accessor for FeedbackLearning.TaskAction(0);
    sub_22BD0096C(v10);
    sub_22BDBA014();
    sub_22BB38124();
    sub_22BCF8848(v11, v12);
    sub_22BB3AD98();
    sub_22BDBB664();
    v13 = *(v0 + *(v2 + 24));
    sub_22BB8D22C();
    sub_22BB37A08();
    sub_22BDBB634();
  }

  v14 = sub_22BB35198();
  v15(v14);
  sub_22BD00D08();
  sub_22BD00EC8();
}

void FeedbackLearning.TaskAction.init(from:)()
{
  sub_22BB31014();
  v5 = v4;
  v6 = sub_22BDBA014();
  v7 = sub_22BB30444(v6);
  v38 = v8;
  v39 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB3662C();
  v11 = type metadata accessor for FeedbackLearning.FlowActionEvent(0);
  v12 = sub_22BB2F330(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB305A8();
  sub_22BD00CD8(v15);
  v41 = sub_22BBE6DE0(&qword_27D8E4910, &qword_22BDC33E8);
  sub_22BB30444(v41);
  v37 = v16;
  v18 = *(v17 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v19);
  v20 = sub_22BB3848C();
  v21 = type metadata accessor for FeedbackLearning.TaskAction(v20);
  v22 = sub_22BB2F330(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BB30574();
  sub_22BB33230();
  v25 = v5[3];
  v26 = v5[4];
  v27 = sub_22BD00AA4();
  sub_22BB699E4(v27, v28);
  sub_22BCF9464();
  sub_22BB69544();
  sub_22BDBB894();
  if (v1)
  {
    sub_22BB32FA4(v5);
  }

  else
  {
    sub_22BB8AD1C();
    sub_22BCF8848(v29, v30);
    sub_22BB36BDC();
    sub_22BDBB5D4();
    sub_22BCF8A34(v40, v0);
    sub_22BB393D0();
    sub_22BB38124();
    sub_22BCF8848(v31, v32);
    sub_22BBBEB1C();
    sub_22BD00C90();
    sub_22BDBB5D4();
    (*(v38 + 32))(v0 + *(v21 + 20), v2, v39);
    sub_22BB8D22C();
    v33 = sub_22BDBB5A4();
    (*(v37 + 8))(v3, v41);
    *(v0 + *(v21 + 24)) = v33 & 1;
    v34 = sub_22BB68F28();
    sub_22BCF8A8C(v34, v35);
    sub_22BB32FA4(v5);
    sub_22BB30848();
    sub_22BCF8AE4(v0, v36);
  }

  sub_22BB376A8();
}

void FeedbackLearning.TaskAction.description.getter()
{
  sub_22BB3B094();
  v1 = v0;
  v2 = sub_22BDB4C34();
  v3 = sub_22BB30444(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB3662C();
  sub_22BB37D18();
  sub_22BDBB334();
  MEMORY[0x2318A4C40](0xD000000000000012, 0x800000022BDD31D0);
  v8 = type metadata accessor for FeedbackLearning.TaskAction(0);
  v9 = v0 + *(v8 + 20);
  v10 = sub_22BDB9FE4();
  MEMORY[0x2318A4C40](v10);

  MEMORY[0x2318A4C40](0x6D6574617473202CLL, 0xEE003D6449746E65);
  v11 = v1 + *(type metadata accessor for FeedbackLearning.FlowActionEvent(0) + 20);
  sub_22BD1D6A4();
  sub_22BB35B60();
  sub_22BCF8848(v12, v13);
  v14 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v14);

  v15 = *(v5 + 8);
  v16 = sub_22BB3AAD8();
  v17(v16);
  MEMORY[0x2318A4C40](0x49746E657665202CLL, 0xEA00000000003D64);
  sub_22BDB43E4();
  sub_22BB377E0();
  sub_22BCF8848(v18, v19);
  v20 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v20);

  MEMORY[0x2318A4C40](0x747563657865202CLL, 0xEB000000003D6465);
  if (*(v1 + *(v8 + 24)))
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (*(v1 + *(v8 + 24)))
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x2318A4C40](v21, v22);

  sub_22BB36A44();
  sub_22BB36A24();
}

void static FeedbackLearning.TaskFinalResolutionValue.== infix(_:_:)()
{
  sub_22BB30F94();
  v51 = v3;
  v5 = v4;
  v49 = type metadata accessor for FeedbackLearning.TaskAction(0);
  v6 = sub_22BB2F330(v49);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB305A8();
  v50 = v9;
  sub_22BB2F120();
  v10 = sub_22BDB4C34();
  v11 = sub_22BB30444(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  sub_22BB345CC();
  v16 = type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
  v17 = sub_22BB2F330(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BB30C74();
  sub_22BB3E4D0();
  MEMORY[0x28223BE20](v20);
  sub_22BD00B4C();
  v21 = sub_22BBE6DE0(&qword_27D8E4920, &qword_22BDC33F0);
  sub_22BB2F0C8(v21);
  v23 = *(v22 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v24);
  sub_22BB395E0();
  v26 = *(v25 + 56);
  sub_22BCF8A8C(v5, v0);
  sub_22BCF8A8C(v51, v0 + v26);
  sub_22BB3A84C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22BB30D5C();
    v36 = sub_22BC54A0C();
    sub_22BCF8A8C(v36, v37);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_22BB379C8();
      v42(v2, v0 + v26, v10);
      sub_22BDB4C04();
      v43 = *(v13 + 8);
      v43(v2, v10);
      v44 = sub_22BB89D18();
      (v43)(v44);
      sub_22BB327E8();
      sub_22BCF8AE4(v0, v45);
      goto LABEL_14;
    }

    v38 = *(v13 + 8);
    v39 = sub_22BB89D18();
    v40(v39);
    goto LABEL_10;
  }

  sub_22BB30D5C();
  v27 = sub_22BB500C0();
  sub_22BCF8A8C(v27, v28);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22BB30848();
    sub_22BCF8AE4(v1, v41);
LABEL_10:
    sub_22BB58728(v0, &qword_27D8E4920, &qword_22BDC33F0);
    goto LABEL_14;
  }

  sub_22BB3AF78();
  sub_22BCF8A34(v0 + v26, v50);
  sub_22BB3B69C();
  if (sub_22BDB43B4() & 1) != 0 && (v29 = *(type metadata accessor for FeedbackLearning.FlowActionEvent(0) + 20), static FeedbackLearning.ActionValue.== infix(_:_:)(), (v30) && (v31 = *(v49 + 20), (sub_22BDB9FD4()))
  {
    v32 = *(v49 + 24);
    v33 = *(v1 + v32);
    v34 = *(v50 + v32);
    sub_22BB30848();
    sub_22BCF8AE4(v50, v35);
  }

  else
  {
    sub_22BB30848();
    sub_22BCF8AE4(v50, v46);
  }

  sub_22BB30848();
  sub_22BCF8AE4(v1, v47);
  sub_22BB327E8();
  sub_22BCF8AE4(v0, v48);
LABEL_14:
  sub_22BB314EC();
}

uint64_t sub_22BCEDBF0(uint64_t a1)
{
  v2 = sub_22BCF952C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEDC2C(uint64_t a1)
{
  v2 = sub_22BCF952C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEDC68(uint64_t a1)
{
  v2 = sub_22BCF94D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEDCA4(uint64_t a1)
{
  v2 = sub_22BCF94D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEDCE0(uint64_t a1)
{
  v2 = sub_22BCF9580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEDD1C(uint64_t a1)
{
  v2 = sub_22BCF9580();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.TaskFinalResolutionValue.encode(to:)()
{
  sub_22BB31014();
  sub_22BB92328();
  v3 = sub_22BBE6DE0(&qword_27D8E4928, &qword_22BDC33F8);
  sub_22BB30444(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB38B54(v7, v48);
  v50 = type metadata accessor for FeedbackLearning.TaskAction(0);
  v8 = sub_22BB2F330(v50);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BB305A8();
  v51 = v11;
  v12 = sub_22BBE6DE0(&qword_27D8E4930, &qword_22BDC3400);
  sub_22BB30444(v12);
  v14 = *(v13 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  sub_22BB395E0();
  v49 = sub_22BDB4C34();
  v16 = sub_22BB30444(v49);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB3662C();
  v19 = type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
  v20 = sub_22BB2F330(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  sub_22BD00790();
  v53 = sub_22BBE6DE0(&qword_27D8E4938, &qword_22BDC3408);
  sub_22BB30444(v53);
  v24 = v23;
  v26 = *(v25 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v27);
  sub_22BB34298();
  v29 = *(v0 + 24);
  v28 = *(v0 + 32);
  v30 = sub_22BB8AB74();
  sub_22BB699E4(v30, v31);
  sub_22BCF94D8();
  sub_22BD00CC0();
  sub_22BD00C48();
  sub_22BDBB8A4();
  sub_22BB30D5C();
  sub_22BCF8A8C(v52, v2);
  sub_22BD00A24();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BCF8A34(v2, v51);
    sub_22BB75960();
    sub_22BCF952C();
    sub_22BB72F1C();
    sub_22BDBB5F4();
    sub_22BB69738();
    sub_22BCF8848(v32, v33);
    sub_22BD00ADC();
    sub_22BD00DA4();
    v34 = sub_22BB692D0();
    v35(v34);
    sub_22BB30848();
    sub_22BCF8AE4(v51, v36);
    v37 = *(v24 + 8);
    v38 = sub_22BC5448C();
    v39(v38);
  }

  else
  {
    v40 = sub_22BD00A5C();
    v41(v40);
    sub_22BCF9580();
    sub_22BD00908();
    sub_22BDBB5F4();
    sub_22BB35B60();
    sub_22BCF8848(v42, v43);
    sub_22BBC3B18();
    v44 = sub_22BB37D64();
    v45(v44, v19);
    v46 = sub_22BB3DFD0();
    v47(v46, v29);
    (*(v24 + 8))(v1, v28);
  }

  sub_22BD00C3C();
  sub_22BB376A8();
}

void FeedbackLearning.TaskFinalResolutionValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_22BB31014();
  sub_22BD00B7C(v13);
  v68 = sub_22BBE6DE0(&qword_27D8E4960, &qword_22BDC3410);
  sub_22BB30444(v68);
  v15 = *(v14 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB2F240(v17, v66);
  v18 = sub_22BBE6DE0(&qword_27D8E4968, &qword_22BDC3418);
  sub_22BB30444(v18);
  v20 = *(v19 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v21);
  sub_22BB37048(v22, v67);
  v23 = sub_22BBE6DE0(&qword_27D8E4970, &unk_22BDC3420);
  sub_22BB30444(v23);
  v25 = *(v24 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v26);
  sub_22BB354DC();
  v27 = type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
  v28 = sub_22BB2F330(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BB30C74();
  sub_22BB89894();
  MEMORY[0x28223BE20](v31);
  sub_22BB7037C();
  MEMORY[0x28223BE20](v32);
  sub_22BB3E4C0();
  v33 = v12[3];
  v34 = v12[4];
  sub_22BB9575C(v12);
  sub_22BCF94D8();
  sub_22BB95B68();
  sub_22BDBB894();
  if (!v11)
  {
    v35 = sub_22BB7553C();
    sub_22BD01008(v35);
    if (v36)
    {
      goto LABEL_9;
    }

    sub_22BB2F4F4();
    if (v41 == v42)
    {
      __break(1u);
      return;
    }

    sub_22BB3DE3C(v37, v38, v39, v40);
    sub_22BD00A3C();
    if (v33)
    {
LABEL_9:
      sub_22BDBB3A4();
      sub_22BB31A08();
      v45 = sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
      sub_22BB97E38(v45);
      sub_22BD00E30();
      sub_22BB36D74();
      v46 = *MEMORY[0x277D84160];
      sub_22BB330A0();
      v48 = *(v47 + 104);
      v49 = sub_22BD00C90();
      v50(v49);
      swift_willThrow();
      swift_unknownObjectRelease();
      v51 = sub_22BB397A4();
      v52(v51, v10);
    }

    else
    {
      if (a10)
      {
        sub_22BB75960();
        sub_22BCF952C();
        sub_22BB8DB14();
        sub_22BB2F230();
        sub_22BDBB554();
        sub_22BD00B08();
        if (!v12)
        {
          type metadata accessor for FeedbackLearning.TaskAction(0);
          sub_22BB69738();
          sub_22BCF8848(v43, v44);
          sub_22BB8AC44();
          sub_22BD00B5C();
          swift_unknownObjectRelease();
          v58 = sub_22BB3FCC8();
          v59(v58);
          v60 = sub_22BB38B68();
          v61(v60);
          sub_22BD00B30();
LABEL_16:
          swift_storeEnumTagMultiPayload();
          sub_22BCF8A34(v10, 0);
          sub_22BD00D58();
          v53 = v69;
          goto LABEL_12;
        }
      }

      else
      {
        sub_22BCF9580();
        sub_22BB77E64();
        sub_22BB2F230();
        sub_22BDBB554();
        sub_22BD00B08();
        if (!v12)
        {
          sub_22BDB4C34();
          sub_22BB35B60();
          sub_22BCF8848(v56, v57);
          sub_22BB34EF8();
          swift_unknownObjectRelease();
          v62 = sub_22BB3FCC8();
          v63(v62);
          v64 = sub_22BB3A280();
          v65(v64);
          sub_22BD00B30();
          goto LABEL_16;
        }
      }

      v54 = sub_22BB3A280();
      v55(v54);
      swift_unknownObjectRelease();
    }

    v12 = v69;
  }

  v53 = v12;
LABEL_12:
  sub_22BB32FA4(v53);
  sub_22BD00E18();
  sub_22BB376A8();
}

void FeedbackLearning.TaskFinalResolutionValue.description.getter()
{
  sub_22BB3B094();
  v2 = type metadata accessor for FeedbackLearning.TaskAction(0);
  v3 = sub_22BB2F0C8(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  sub_22BB3DFC0();
  v6 = sub_22BDB4C34();
  v7 = sub_22BB30444(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v12 = sub_22BB319F8();
  v13 = type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(v12);
  v14 = sub_22BB2F330(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BB3662C();
  sub_22BB30D5C();
  v17 = sub_22BB345A8();
  sub_22BCF8A8C(v17, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BB3AF78();
    v19 = sub_22BB39478();
    sub_22BCF8A34(v19, v20);
    sub_22BB37D18();
    sub_22BDBB334();

    FeedbackLearning.TaskAction.description.getter();
    MEMORY[0x2318A4C40]();

    sub_22BB36A44();
    sub_22BB30848();
    sub_22BCF8AE4(v0, v21);
  }

  else
  {
    sub_22BB379C8();
    v22 = sub_22BB3B69C();
    v23(v22);
    sub_22BB37D18();
    sub_22BDBB334();

    sub_22BDB4C24();
    v24 = sub_22BDBB684();
    MEMORY[0x2318A4C40](v24);

    sub_22BB36A44();
    (*(v9 + 8))(v1, v6);
  }

  sub_22BB345A8();
  sub_22BB36A24();
}

void static FeedbackLearning.TaskFinalResolutionState.== infix(_:_:)()
{
  sub_22BB30F94();
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
  v9 = sub_22BB2F330(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB305A8();
  v50 = v12;
  v13 = sub_22BBE6DE0(&qword_27D8E3D98, &qword_22BDC1130);
  sub_22BB2F0C8(v13);
  v15 = *(v14 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB3721C();
  v17 = sub_22BBE6DE0(&qword_27D8E4980, &qword_22BDC3430);
  sub_22BB2F330(v17);
  v19 = *(v18 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v20);
  v21 = sub_22BB3DFC0();
  v22 = type metadata accessor for FeedbackLearning.TaskFinalResolutionState(v21);
  v23 = sub_22BB2F0C8(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BB30574();
  sub_22BB36FD8();
  v26 = sub_22BBE6DE0(&qword_27D8E4988, &unk_22BDC3438);
  sub_22BB2F0C8(v26);
  v28 = *(v27 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  sub_22BB395E0();
  v31 = *(v30 + 56);
  sub_22BCF8A8C(v7, v0);
  sub_22BCF8A8C(v5, v0 + v31);
  sub_22BBE6DE0(&qword_27D8E3D90, &unk_22BDC2EE0);
  sub_22BBBE7B4();
  sub_22BB31814(v32, v33, v34);
  if (v43)
  {
    sub_22BBBE7B4();
    sub_22BB31814(v35, v36, v37);
    if (v43)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_22BB37D4C();
    v38 = sub_22BB3A84C();
    sub_22BCF8A8C(v38, v39);
    sub_22BBBE7B4();
    sub_22BB31814(v40, v41, v42);
    if (!v43)
    {
      v44 = *(v17 + 48);
      sub_22BC8D26C();
      sub_22BC8D26C();
      sub_22BB31814(v1, 1, v8);
      if (v45)
      {
        sub_22BB31814(v1 + v44, 1, v8);
        if (v43)
        {
          sub_22BB58728(v1, &qword_27D8E3D98, &qword_22BDC1130);
LABEL_19:
          sub_22BB89DFC();
          goto LABEL_20;
        }
      }

      else
      {
        sub_22BCF95D4(v1, v2);
        sub_22BB31814(v1 + v44, 1, v8);
        if (!v46)
        {
          sub_22BD0079C();
          sub_22BCF8A34(v1 + v44, v50);
          static FeedbackLearning.TaskFinalResolutionValue.== infix(_:_:)();
          sub_22BCF8AE4(v50, type metadata accessor for FeedbackLearning.TaskFinalResolutionValue);
          v48 = sub_22BD00AA4();
          sub_22BCF8AE4(v48, v49);
          sub_22BB58728(v1, &qword_27D8E3D98, &qword_22BDC1130);
          goto LABEL_19;
        }

        sub_22BB327E8();
        sub_22BCF8AE4(v2, v47);
      }

      sub_22BB58728(v1, &qword_27D8E4980, &qword_22BDC3430);
      goto LABEL_19;
    }

    sub_22BB58728(v3, &qword_27D8E3D98, &qword_22BDC1130);
  }

  sub_22BB58728(v0, &qword_27D8E4988, &unk_22BDC3438);
LABEL_20:
  sub_22BB314EC();
}

uint64_t sub_22BCEEBC0(uint64_t a1)
{
  v2 = sub_22BCF9644();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEEBFC(uint64_t a1)
{
  v2 = sub_22BCF9644();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEEC38(uint64_t a1)
{
  v2 = sub_22BCF96EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEEC74(uint64_t a1)
{
  v2 = sub_22BCF96EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCEECB0(uint64_t a1)
{
  v2 = sub_22BCF9698();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCEECEC(uint64_t a1)
{
  v2 = sub_22BCF9698();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.TaskFinalResolutionState.encode(to:)()
{
  sub_22BB31014();
  sub_22BD00E54();
  v3 = sub_22BBE6DE0(&qword_27D8E4990, &qword_22BDC3448);
  sub_22BB30444(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB38B54(v7, v42);
  v8 = sub_22BBE6DE0(&qword_27D8E4998, &qword_22BDC3450);
  sub_22BB30444(v8);
  v10 = *(v9 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v11);
  sub_22BB354DC();
  v12 = sub_22BBE6DE0(&qword_27D8E3D98, &qword_22BDC1130);
  sub_22BB2F0C8(v12);
  v14 = *(v13 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BB30CE4();
  v17 = type metadata accessor for FeedbackLearning.TaskFinalResolutionState(v16);
  v18 = sub_22BB2F0C8(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  sub_22BB33230();
  v21 = sub_22BBE6DE0(&qword_27D8E49A0, &qword_22BDC3458);
  sub_22BB30444(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v26);
  sub_22BD00790();
  v28 = *(v1 + 24);
  v27 = *(v1 + 32);
  v29 = sub_22BB393C4();
  sub_22BB699E4(v29, v30);
  sub_22BCF9644();
  sub_22BD00CA8();
  sub_22BDBB8A4();
  sub_22BB37D4C();
  sub_22BD01048();
  v31 = sub_22BBE6DE0(&qword_27D8E3D90, &unk_22BDC2EE0);
  if (sub_22BB3AA28(v0, 1, v31) == 1)
  {
    sub_22BCF9698();
    sub_22BB71F34();
    sub_22BDBB5F4();
    v32 = sub_22BB37D64();
    v33(v32);
    v34 = *(v23 + 8);
  }

  else
  {
    sub_22BC54A0C();
    sub_22BC8D26C();
    sub_22BCF96EC();
    sub_22BBBEB1C();
    sub_22BB71F34();
    sub_22BDBB5F4();
    type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
    sub_22BB97710();
    sub_22BCF8848(v37, v38);
    sub_22BD00AB0();
    v39 = sub_22BB692D0();
    v40(v39);
    sub_22BB58728(v2, &qword_27D8E3D98, &qword_22BDC1130);
    v41 = *(v23 + 8);
  }

  v35 = sub_22BB757A0();
  v36(v35);
  sub_22BB3A204();
  sub_22BB376A8();
}

void FeedbackLearning.TaskFinalResolutionState.init(from:)()
{
  sub_22BB31014();
  v3 = v2;
  v65 = v4;
  v5 = sub_22BBE6DE0(&qword_27D8E49C8, &qword_22BDC3460);
  sub_22BB30444(v5);
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB37048(v9, v62);
  v64 = sub_22BBE6DE0(&qword_27D8E49D0, &qword_22BDC3468);
  sub_22BB30444(v64);
  v66 = v10;
  v12 = *(v11 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  sub_22BB30BA8();
  v14 = sub_22BBE6DE0(&qword_27D8E49D8, &qword_22BDC3470);
  sub_22BB30444(v14);
  v67 = v15;
  v17 = *(v16 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  sub_22BB354DC();
  v19 = type metadata accessor for FeedbackLearning.TaskFinalResolutionState(0);
  v20 = sub_22BB2F330(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BB30C74();
  sub_22BB347FC();
  MEMORY[0x28223BE20](v23);
  sub_22BB8AD68();
  v25 = v3[3];
  v24 = v3[4];
  v26 = sub_22BD00E6C();
  sub_22BB699E4(v26, v27);
  sub_22BCF9644();
  sub_22BB95B68();
  sub_22BDBB894();
  if (!v0)
  {
    v28 = sub_22BD00C14();
    sub_22BD01028(v28);
    v29 = v14;
    if (!v30)
    {
      sub_22BB2F4F4();
      if (v35 == v36)
      {
        __break(1u);
        return;
      }

      sub_22BD00BEC(v31, v32, v33, v34);
      sub_22BD00B8C();
      swift_unknownObjectRelease();
      if (!(v14 >> 1))
      {
        if (v14)
        {
          sub_22BB75960();
          sub_22BCF9698();
          sub_22BBC0580();
          v37 = v65;
          swift_unknownObjectRelease();
          v38 = sub_22BB9607C();
          v39(v38);
          v40 = sub_22BB34604();
          v41(v40, v19);
          v42 = sub_22BBE6DE0(&qword_27D8E3D90, &unk_22BDC2EE0);
          sub_22BD00938(v42);
        }

        else
        {
          sub_22BCF96EC();
          sub_22BBC0580();
          v37 = v65;
          type metadata accessor for FeedbackLearning.TaskFinalResolutionValue(0);
          sub_22BB97710();
          sub_22BCF8848(v50, v51);
          sub_22BD009CC();
          swift_unknownObjectRelease();
          v52 = *(v66 + 8);
          v53 = sub_22BB757A0();
          v54(v53);
          v55 = *(v67 + 8);
          v56 = sub_22BB3A84C();
          v57(v56);
          sub_22BBE6DE0(&qword_27D8E3D90, &unk_22BDC2EE0);
          v58 = sub_22BD0095C();
          sub_22BB336D0(v58, v59, 1, v60);
          sub_22BCF8A34(v1, v63);
        }

        v61 = sub_22BB68F28();
        sub_22BCF8A34(v61, v37);
        sub_22BB32FA4(0);
        goto LABEL_11;
      }

      v29 = v19;
    }

    sub_22BDBB3A4();
    sub_22BB31A08();
    v44 = v43;
    v45 = sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530);
    sub_22BBBEDFC(v45);
    sub_22BB36D74();
    v46 = *MEMORY[0x277D84160];
    sub_22BB330A0();
    (*(v47 + 104))(v44);
    swift_willThrow();
    swift_unknownObjectRelease();
    v48 = sub_22BB34604();
    v49(v48, v29);
    v3 = 0;
  }

  sub_22BB32FA4(v3);
LABEL_11:
  sub_22BB376A8();
}

uint64_t FeedbackLearning.TaskFinalResolutionState.description.getter()
{
  v0 = sub_22BBE6DE0(&qword_27D8E3D98, &qword_22BDC1130);
  v1 = sub_22BB2F330(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BB30C74();
  sub_22BB3E4D0();
  MEMORY[0x28223BE20](v4);
  sub_22BB8AD68();
  v5 = type metadata accessor for FeedbackLearning.TaskFinalResolutionState(0);
  v6 = sub_22BB2F0C8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  sub_22BD00A30();
  sub_22BB37D4C();
  v9 = sub_22BB95B5C();
  sub_22BCF8A8C(v9, v10);
  sub_22BBE6DE0(&qword_27D8E3D90, &unk_22BDC2EE0);
  v11 = sub_22BB69A84();
  sub_22BB31814(v11, 1, v12);
  if (!v13)
  {
    sub_22BB2F324();
    sub_22BC8D26C();
    sub_22BDBB334();

    v14 = sub_22BB500C0();
    sub_22BCF95D4(v14, v15);
    sub_22BB3AC54();
    v16 = sub_22BDBAC14();
    MEMORY[0x2318A4C40](v16);

    sub_22BB36A44();
    v17 = sub_22BB33728();
    sub_22BB58728(v17, v18, &qword_22BDC1130);
  }

  return sub_22BB37494();
}

void static FeedbackLearning.TaskEvaluation.== infix(_:_:)()
{
  sub_22BB35F54();
  if (sub_22BDB43B4())
  {
    v2 = type metadata accessor for FeedbackLearning.TaskEvaluation(0);
    sub_22BB36D64(v2);
    if (sub_22BDB4C04())
    {
      sub_22BB94E2C(v2[6]);
      if (sub_22BDB7A54() & 1) != 0 && (sub_22BCF0534(*(v1 + v2[7]), *(v0 + v2[7])))
      {
        sub_22BB94E2C(v2[8]);
        static FeedbackLearning.TaskFinalResolutionState.== infix(_:_:)();
        if (v3)
        {
          sub_22BB94E2C(v2[9]);
          if (static FeedbackLearning.TaskOutcome.== infix(_:_:)())
          {
            v4 = v2[10];
            v5 = (v1 + v4);
            v6 = *(v1 + v4 + 16);
            v7 = *(v1 + v4 + 24);
            v8 = v0 + v4;
            v9 = *(v8 + 16);
            v10 = *(v8 + 24);
            v11 = *(v8 + 8);
            v12 = *v8;
            v13 = v5[8];
            v14 = *v5;

            sub_22BD11304(v14, v13, v6, v7, v12, v11);
          }
        }
      }
    }
  }
}

void sub_22BCEF80C()
{
  sub_22BB30F94();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for FeedbackLearning.TypedCandidateInteraction(0);
  v6 = sub_22BB36C00(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BD00748();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  sub_22BB7079C();
  if (v14 && v0 && v4 != v2)
  {
    sub_22BB75950(v13);
    v16 = v4 + v15;
    v17 = v2 + v15;
    v19 = *(v18 + 72);
    while (1)
    {
      v20 = sub_22BB3AC54();
      sub_22BCF8A8C(v20, v21);
      v22 = sub_22BB95B5C();
      sub_22BCF8A8C(v22, v23);
      sub_22BB37494();
      static FeedbackLearning.CandidateDefinition.== infix(_:_:)();
      if ((v24 & 1) == 0)
      {
        break;
      }

      v25 = *(v5 + 20);
      v26 = sub_22BDB7B74();
      sub_22BCF8AE4(v11, type metadata accessor for FeedbackLearning.TypedCandidateInteraction);
      v27 = sub_22BD00E3C();
      sub_22BCF8AE4(v27, v28);
      if (v26)
      {
        v17 += v19;
        v16 += v19;
        if (--v0)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    sub_22BCF8AE4(v11, type metadata accessor for FeedbackLearning.TypedCandidateInteraction);
    v29 = sub_22BB3182C();
    sub_22BCF8AE4(v29, v30);
  }

LABEL_12:
  sub_22BB314EC();
}

void sub_22BCEFA08()
{
  sub_22BB30F94();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for CandidateEntity(0);
  v7 = sub_22BB36C00(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BD00748();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  sub_22BB7079C();
  if (v28 && v1 && v5 != v3)
  {
    sub_22BB75950(v14);
    v16 = v5 + v15;
    v17 = v3 + v15;
    v19 = *(v18 + 72);
    while (1)
    {
      v20 = sub_22BB3AC54();
      sub_22BCF8A8C(v20, v21);
      v22 = sub_22BB95B5C();
      sub_22BCF8A8C(v22, v23);
      sub_22BB37494();
      if ((sub_22BDBA574() & 1) == 0)
      {
        break;
      }

      v24 = *(v6 + 20);
      v25 = *(v0 + v24);
      v26 = *(v0 + v24 + 8);
      v27 = (v12 + v24);
      v28 = v25 == *v27 && v26 == v27[1];
      if (v28)
      {
        sub_22BCF8AE4(v12, type metadata accessor for CandidateEntity);
        sub_22BCF8AE4(v0, type metadata accessor for CandidateEntity);
      }

      else
      {
        v29 = sub_22BDBB6D4();
        sub_22BCF8AE4(v12, type metadata accessor for CandidateEntity);
        v30 = sub_22BD00E3C();
        sub_22BCF8AE4(v30, v31);
        if ((v29 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v17 += v19;
      v16 += v19;
      if (!--v1)
      {
        goto LABEL_17;
      }
    }

    sub_22BCF8AE4(v12, type metadata accessor for CandidateEntity);
    v32 = sub_22BB3182C();
    sub_22BCF8AE4(v32, v33);
  }

LABEL_17:
  sub_22BB314EC();
}

void sub_22BCEFC84()
{
  sub_22BB30F94();
  v3 = v2;
  v5 = v4;
  v6 = _s24StatementExecutionResultOMa(0);
  v7 = sub_22BB2F0C8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB305A8();
  v69 = v10;
  v11 = sub_22BBE6DE0(&qword_27D8E4E68, &qword_22BDC7260);
  sub_22BB2F330(v11);
  v13 = *(v12 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  sub_22BB395E0();
  v15 = _s19EvaluatorVoteSourceOMa(0);
  v16 = sub_22BB30444(v15);
  v70 = v17;
  v71 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB30C74();
  v21 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  sub_22BB7037C();
  MEMORY[0x28223BE20](v22);
  v26 = &v60 - v25;
  v27 = *(v5 + 16);
  if (v27 == *(v3 + 16) && v27 && v5 != v3)
  {
    v67 = v24;
    v68 = v23;
    v28 = 0;
    v62 = v3 + 32;
    v63 = v5 + 32;
    v29 = v70;
    v61 = v27;
    while (v28 != v27)
    {
      v30 = (v63 + 32 * v28);
      v31 = (v62 + 32 * v28);
      if (*v30 != *v31 || v30[8] != v31[8])
      {
        goto LABEL_34;
      }

      v33 = *(v30 + 2);
      v74 = *(v31 + 2);
      v75 = v33;
      v34 = *(v33 + 16);
      if (v34 != *(v74 + 16))
      {
        goto LABEL_34;
      }

      v35 = *(v30 + 3);
      v66 = *(v31 + 3);
      v64 = v28;
      v65 = v35;
      if (v34)
      {
        v73 = *(v29 + 80);
        v36 = v75;

        v37 = v74;

        if (v36 != v37)
        {
          v38 = 0;
          v39 = (v73 + 32) & ~v73;
          v73 = v75 + v39;
          v72 = v74 + v39;
          while (v38 < *(v75 + 16))
          {
            v40 = *(v29 + 72) * v38;
            sub_22BB34348();
            sub_22BCF8A8C(v73 + v40, v26);
            if (v38 >= *(v74 + 16))
            {
              goto LABEL_36;
            }

            sub_22BCF8A8C(v72 + v40, v1);
            v41 = *(v11 + 48);
            v42 = sub_22BB94E38();
            sub_22BCF8A8C(v42, v43);
            sub_22BCF8A8C(v1, v41 + v0);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              sub_22BB8B720();
              sub_22BCF8AE4(v1, v44);
              sub_22BCF8AE4(v26, _s19EvaluatorVoteSourceOMa);
              sub_22BB34348();
              v45 = v67;
              sub_22BCF8A8C(v0, v67);
              if (swift_getEnumCaseMultiPayload() != 1)
              {
                goto LABEL_32;
              }

              if (*v45 != *(v41 + v0))
              {
LABEL_30:
                sub_22BB368AC();
                sub_22BCF8AE4(v0, v57);
                goto LABEL_33;
              }
            }

            else
            {
              sub_22BB34348();
              v46 = v68;
              sub_22BCF8A8C(v0, v68);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                sub_22BB73F68();
                sub_22BCF8AE4(v1, v58);
                sub_22BCF8AE4(v26, v41);
                sub_22BD007E4();
                sub_22BCF8AE4(v46, v59);
LABEL_32:
                sub_22BB58728(v0, &qword_27D8E4E68, &qword_22BDC7260);
LABEL_33:

                goto LABEL_34;
              }

              sub_22BD007FC();
              v47 = v41 + v0;
              v48 = v69;
              sub_22BCF8A34(v47, v69);
              sub_22BD04890();
              v50 = v49;
              sub_22BCF8AE4(v48, _s24StatementExecutionResultOMa);
              sub_22BB73F68();
              sub_22BCF8AE4(v1, v51);
              sub_22BCF8AE4(v26, v48);
              v52 = sub_22BB32E04();
              sub_22BCF8AE4(v52, v53);
              v29 = v70;
              if ((v50 & 1) == 0)
              {
                goto LABEL_30;
              }
            }

            ++v38;
            sub_22BB368AC();
            sub_22BCF8AE4(v0, v54);
            if (v34 == v38)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
          break;
        }
      }

      else
      {
      }

LABEL_26:
      v55 = sub_22BB3AC54();
      v56 = sub_22BCEFC84(v55);

      if (v56)
      {
        v28 = v64 + 1;
        v27 = v61;
        if (v64 + 1 != v61)
        {
          continue;
        }
      }

      goto LABEL_34;
    }

    __break(1u);
  }

  else
  {
LABEL_34:
    sub_22BB314EC();
  }
}

void sub_22BCF018C()
{
  sub_22BB30F94();
  v2 = v1;
  v4 = v3;
  v5 = _s24StatementExecutionResultOMa(0);
  v6 = sub_22BB2F0C8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB305A8();
  sub_22BD00E60(v9);
  v10 = sub_22BBE6DE0(&qword_27D8E4E68, &qword_22BDC7260);
  sub_22BB2F330(v10);
  v12 = *(v11 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  sub_22BD00A30();
  v14 = _s19EvaluatorVoteSourceOMa(0);
  v15 = sub_22BB36C00(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BD00748();
  v19 = MEMORY[0x28223BE20](v18);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v49 - v21;
  MEMORY[0x28223BE20](v20);
  v27 = &v49 - v26;
  v28 = *(v4 + 16);
  if (v28 != *(v2 + 16) || !v28 || v4 == v2)
  {
    goto LABEL_16;
  }

  v50 = v25;
  v51 = v24;
  sub_22BB75950(v23);
  v30 = v4 + v29;
  v31 = v2 + v29;
  v54 = *(v32 + 72);
  v49 = v27;
  while (1)
  {
    sub_22BCF8A8C(v30, v27);
    sub_22BCF8A8C(v31, v22);
    v33 = *(v10 + 48);
    sub_22BCF8A8C(v27, v0);
    sub_22BCF8A8C(v22, v0 + v33);
    sub_22BB53C48();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_22BB34348();
    v34 = v51;
    sub_22BCF8A8C(v0, v51);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_14;
    }

    v35 = *v34;
    v36 = *(v0 + v33);
    sub_22BB368AC();
    sub_22BCF8AE4(v0, v37);
    if (v35 != v36)
    {
      goto LABEL_15;
    }

LABEL_11:
    sub_22BB8B720();
    sub_22BCF8AE4(v22, v47);
    sub_22BCF8AE4(v27, v35);
    v31 += v54;
    v30 += v54;
    if (!--v28)
    {
      goto LABEL_16;
    }
  }

  sub_22BB34348();
  v35 = v50;
  sub_22BCF8A8C(v0, v50);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22BD007FC();
    v38 = v22;
    v39 = v14;
    v40 = v10;
    v41 = v52;
    sub_22BCF8A34(v0 + v33, v52);
    sub_22BD04890();
    v53 = v42;
    v43 = v41;
    v10 = v40;
    v14 = v39;
    v22 = v38;
    v27 = v49;
    sub_22BCF8AE4(v43, _s24StatementExecutionResultOMa);
    v44 = sub_22BD00E3C();
    sub_22BCF8AE4(v44, v45);
    sub_22BB368AC();
    sub_22BCF8AE4(v0, v46);
    if ((v53 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  sub_22BD007E4();
  sub_22BCF8AE4(v35, v48);
LABEL_14:
  sub_22BB58728(v0, &qword_27D8E4E68, &qword_22BDC7260);
LABEL_15:
  sub_22BCF8AE4(v22, _s19EvaluatorVoteSourceOMa);
  sub_22BCF8AE4(v27, _s19EvaluatorVoteSourceOMa);
LABEL_16:
  sub_22BB314EC();
}

uint64_t sub_22BCF0534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v30 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  while (1)
  {
    result = sub_22BCF8A8C(v14, v11);
    if (!v12)
    {
      break;
    }

    sub_22BCF8A8C(v15, v8);
    if ((sub_22BDB4C04() & 1) == 0)
    {
      goto LABEL_35;
    }

    v18 = v4[5];
    static FeedbackLearning.CandidateParameter.== infix(_:_:)();
    if ((v19 & 1) == 0)
    {
      goto LABEL_35;
    }

    v20 = v4[6];
    static FeedbackLearning.CandidateDefinition.== infix(_:_:)();
    if ((v21 & 1) == 0)
    {
      goto LABEL_35;
    }

    v22 = v4[7];
    if ((sub_22BDB7B04() & 1) == 0 || v11[v4[8]] != v8[v4[8]])
    {
      goto LABEL_35;
    }

    v23 = v4[9];
    v24 = v11[v23];
    v25 = v8[v23];
    if (v24 >> 6)
    {
      if (v24 >> 6 != 1)
      {
        switch(v24)
        {
          case 0x81u:
            if (v25 != 129)
            {
              goto LABEL_35;
            }

            goto LABEL_21;
          case 0x82u:
            if (v25 != 130)
            {
              goto LABEL_35;
            }

            goto LABEL_21;
          case 0x83u:
            if (v25 != 131)
            {
              goto LABEL_35;
            }

            goto LABEL_21;
          default:
            if (v25 != 128)
            {
              goto LABEL_35;
            }

            goto LABEL_21;
        }
      }

      if ((v25 & 0xC0) != 0x40 || ((v25 ^ v24) & 0x3F) != 0)
      {
LABEL_35:
        sub_22BCF8AE4(v8, type metadata accessor for FeedbackLearning.CandidateEvaluation);
        sub_22BCF8AE4(v11, type metadata accessor for FeedbackLearning.CandidateEvaluation);
        return 0;
      }
    }

    else if (v25 > 0x3F || v24 != v25)
    {
      goto LABEL_35;
    }

LABEL_21:
    v27 = *&v11[v4[10]];
    sub_22BCF8AE4(v11, type metadata accessor for FeedbackLearning.CandidateEvaluation);
    v28 = *&v8[v4[10]];
    sub_22BCF8AE4(v8, type metadata accessor for FeedbackLearning.CandidateEvaluation);
    result = v27 == v28;
    v29 = v27 != v28 || v12-- == 1;
    v15 += v16;
    v14 += v16;
    if (v29)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_22BCF0818()
{
  sub_22BB30F94();
  v2 = v1;
  v4 = v3;
  v5 = sub_22BDB9B54();
  v6 = sub_22BB30444(v5);
  v143 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30C74();
  v142 = (v10 - v11);
  sub_22BB30B70();
  MEMORY[0x28223BE20](v12);
  v14 = &v115 - v13;
  v15 = sub_22BDB4C34();
  v16 = sub_22BB30444(v15);
  v137 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB30C74();
  v128 = v20 - v21;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v22);
  v135 = &v115 - v23;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v24);
  v26 = &v115 - v25;
  v27 = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
  v28 = sub_22BB2F330(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BB30C74();
  v132 = v31 - v32;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v33);
  v129 = (&v115 - v34);
  v133 = sub_22BBE6DE0(&qword_27D8E4E50, &qword_22BDC7250);
  sub_22BB2F330(v133);
  v36 = *(v35 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v37);
  sub_22BB32750();
  v38 = type metadata accessor for FeedbackLearning.FlowExpression(0);
  v39 = sub_22BB36C00(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22BD00748();
  v44 = v42 - v43;
  v46 = MEMORY[0x28223BE20](v45);
  v49 = &v115 - v48;
  v50 = *(v4 + 16);
  if (v50 != *(v2 + 16) || !v50 || v4 == v2)
  {
LABEL_42:
    sub_22BB314EC();
    return;
  }

  v122 = v46;
  v120 = v0;
  v118 = v27;
  v51 = 0;
  sub_22BB75950(v47);
  v53 = v4 + v52;
  v119 = v2 + v52;
  v115 = (v137 + 32);
  v130 = (v137 + 8);
  v131 = v15;
  v126 = v26;
  v127 = v137 + 16;
  v140 = (v143 + 8);
  v141 = v143 + 16;
  v55 = *(v54 + 72);
  v134 = v44;
  v136 = v49;
  v125 = v56;
  v117 = v4 + v52;
  v116 = v55;
  while (1)
  {
    v57 = v55 * v51;
    sub_22BB74014();
    sub_22BCF8A8C(v53 + v57, v49);
    if (v51 == v125)
    {
      goto LABEL_47;
    }

    v121 = v51;
    sub_22BB74014();
    sub_22BCF8A8C(v119 + v57, v44);
    if ((sub_22BDB4C04() & 1) == 0)
    {
      goto LABEL_41;
    }

    v58 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
    v59 = *(v58 + 20);
    if ((sub_22BDB4C04() & 1) == 0)
    {
      goto LABEL_41;
    }

    v60 = *(v58 + 24);
    v61 = *(v133 + 48);
    v62 = v136;
    v63 = v120;
    sub_22BCF8A8C(&v136[v60], v120);
    v64 = v134;
    sub_22BCF8A8C(v134 + v60, v63 + v61);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v66 = v132;
      if (EnumCaseMultiPayload != 1)
      {
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_40;
        }

        goto LABEL_24;
      }

      v67 = sub_22BD00774();
      sub_22BCF8A8C(v67, v66);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v110 = *v130;
        v111 = sub_22BB3972C();
        v112(v111);
        goto LABEL_40;
      }

      v68 = *v115;
      v69 = sub_22BD00A78();
      v70(v69);
      LODWORD(v139) = sub_22BDB4C04();
      v71 = *v130;
      v72 = sub_22BB3AAD8();
      v71(v72);
      v73 = sub_22BB3972C();
      v71(v73);
      if ((v139 & 1) == 0)
      {
        sub_22BB35FC4();
        v114 = v63;
LABEL_37:
        sub_22BCF8AE4(v114, v113);
LABEL_41:
        sub_22BCF8AE4(v134, type metadata accessor for FeedbackLearning.FlowExpression);
        sub_22BCF8AE4(v136, type metadata accessor for FeedbackLearning.FlowExpression);
        goto LABEL_42;
      }
    }

    else
    {
      v74 = sub_22BD00774();
      v75 = v129;
      sub_22BCF8A8C(v74, v129);
      v76 = *v75;
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_40:
        sub_22BB58728(v63, &qword_27D8E4E50, &qword_22BDC7250);
        goto LABEL_41;
      }

      v77 = *(v63 + v61);
      v138 = *(v76 + 16);
      v139 = v77;
      if (v138 != *(v77 + 16))
      {
LABEL_36:

        sub_22BB35FC4();
        v114 = v120;
        goto LABEL_37;
      }

      if (v138 && v76 != v139)
      {
        v78 = 0;
        v79 = *(v137 + 80);
        sub_22BB2F390();
        v124 = v76 + v80;
        v123 = v139 + v80;
        while (v78 < *(v76 + 16))
        {
          v81 = *(v137 + 72) * v78;
          v82 = *(v137 + 16);
          v83 = v126;
          v84 = v131;
          v82(v126, v124 + v81, v131);
          if (v78 >= *(v139 + 16))
          {
            goto LABEL_46;
          }

          v85 = v135;
          v82(v135, v123 + v81, v84);
          sub_22BB35B60();
          sub_22BCF8848(&qword_28142DD10, v86);
          sub_22BD00A24();
          v87 = sub_22BDBABD4();
          v88 = *v130;
          (*v130)(v85, v84);
          v88(v83, v84);
          if ((v87 & 1) == 0)
          {
            goto LABEL_36;
          }

          if (v138 == ++v78)
          {
            goto LABEL_22;
          }
        }

        goto LABEL_45;
      }

LABEL_22:

      v63 = v120;
      v64 = v134;
      v62 = v136;
    }

LABEL_24:
    sub_22BB35FC4();
    sub_22BCF8AE4(v63, v89);
    v90 = *(v122 + 20);
    v91 = *(v62 + v90);
    v92 = *(v64 + v90);
    v93 = *(v91 + 16);
    if (v93 != *(v92 + 16))
    {
      goto LABEL_41;
    }

    if (v93 && v91 != v92)
    {
      break;
    }

LABEL_32:
    v104 = *(v122 + 24);
    v105 = v136;
    v106 = *&v136[v104];
    v44 = v134;
    v107 = *(v134 + v104);
    sub_22BCF1134();
    v109 = v108;
    sub_22BCF8AE4(v44, type metadata accessor for FeedbackLearning.FlowExpression);
    sub_22BCF8AE4(v105, type metadata accessor for FeedbackLearning.FlowExpression);
    if (v109)
    {
      v51 = v121 + 1;
      v49 = v136;
      v53 = v117;
      v55 = v116;
      if (v121 + 1 != v125)
      {
        continue;
      }
    }

    goto LABEL_42;
  }

  v94 = 0;
  v95 = *(v143 + 80);
  sub_22BB2F390();
  v138 = v92 + v96;
  v139 = v91 + v96;
  while (v94 < *(v91 + 16))
  {
    v97 = *(v143 + 72) * v94;
    v98 = *(v143 + 16);
    v98(v14, v139 + v97, v5);
    if (v94 >= *(v92 + 16))
    {
      goto LABEL_44;
    }

    v99 = v14;
    v100 = v142;
    v98(v142, v138 + v97, v5);
    sub_22BCF8848(&qword_27D8E4E58, MEMORY[0x277D1E890]);
    v101 = sub_22BDBABD4();
    v102 = *v140;
    v103 = v100;
    v14 = v99;
    (*v140)(v103, v5);
    v102(v99, v5);
    if ((v101 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (v93 == ++v94)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

void sub_22BCF1134()
{
  sub_22BB30F94();
  v4 = v3;
  sub_22BB30F68();
  v76 = sub_22BDB81A4();
  v5 = sub_22BB30444(v76);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB305A8();
  v71 = v10;
  sub_22BB2F120();
  v74 = sub_22BDB9564();
  v11 = sub_22BB30444(v74);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB305A8();
  v70 = v16;
  v17 = sub_22BB2F120();
  v79 = type metadata accessor for FeedbackLearning.ActionValue(v17);
  v18 = sub_22BB2F330(v79);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30C74();
  sub_22BB347FC();
  MEMORY[0x28223BE20](v21);
  v75 = &v64 - v22;
  v78 = sub_22BBE6DE0(&qword_27D8E4E60, &qword_22BDC7258);
  sub_22BB2F330(v78);
  v24 = *(v23 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v25);
  v26 = sub_22BB30CE4();
  v77 = type metadata accessor for FeedbackLearning.FlowActionEvent(v26);
  v27 = sub_22BB36C00(v77);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BD00748();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v36 = &v64 - v35;
  v37 = *(v0 + 16);
  if (v37 == *(v4 + 16) && v37 && v0 != v4)
  {
    sub_22BB75950(v34);
    v39 = v0 + v38;
    v40 = v4 + v38;
    v65 = (v13 + 32);
    v66 = v1;
    v64 = (v7 + 32);
    v67 = (v7 + 8);
    v68 = (v13 + 8);
    v42 = *(v41 + 72);
    v72 = v36;
    v73 = v32;
    while (1)
    {
      v43 = sub_22BB345A8();
      sub_22BCF8A8C(v43, v44);
      v45 = sub_22BD00E3C();
      sub_22BCF8A8C(v45, v46);
      if ((sub_22BDB43B4() & 1) == 0)
      {
        break;
      }

      v47 = *(v77 + 20);
      v48 = v36;
      v49 = *(v78 + 48);
      sub_22BCF8A8C(&v48[v47], v2);
      sub_22BCF8A8C(v32 + v47, v2 + v49);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v50 = sub_22BB3CF28();
        v51 = v66;
        sub_22BCF8A8C(v50, v66);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          (*v67)(v51, v76);
          goto LABEL_16;
        }

        v52 = v2 + v49;
        v53 = v71;
        v54 = v76;
        (*v64)(v71, v52, v76);
        sub_22BD0073C();
        v69 = sub_22BDB8184();
        v55 = *v67;
        (*v67)(v53, v54);
        v56 = sub_22BB8E548();
        (v55)(v56);
      }

      else
      {
        v57 = sub_22BB3CF28();
        v58 = v75;
        sub_22BCF8A8C(v57, v75);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*v68)(v58, v74);
LABEL_16:
          sub_22BB58728(v2, &qword_27D8E4E60, &qword_22BDC7258);
          v32 = v73;
          break;
        }

        (*v65)(v70, v2 + v49, v74);
        sub_22BC5448C();
        v69 = sub_22BDB9534();
        v59 = *v68;
        v60 = sub_22BB33728();
        (v59)(v60);
        v61 = sub_22BB58D2C();
        (v59)(v61);
      }

      sub_22BCF8AE4(v2, type metadata accessor for FeedbackLearning.ActionValue);
      v36 = v72;
      v32 = v73;
      if ((v69 & 1) == 0)
      {
        break;
      }

      sub_22BCF8AE4(v73, type metadata accessor for FeedbackLearning.FlowActionEvent);
      sub_22BCF8AE4(v36, type metadata accessor for FeedbackLearning.FlowActionEvent);
      v40 += v42;
      v39 += v42;
      if (!--v37)
      {
        goto LABEL_18;
      }
    }

    sub_22BCF8AE4(v32, type metadata accessor for FeedbackLearning.FlowActionEvent);
    v62 = sub_22BB95B5C();
    sub_22BCF8AE4(v62, v63);
  }

LABEL_18:
  sub_22BB314EC();
}

void sub_22BCF1674()
{
  sub_22BB30F94();
  v33 = v2;
  v32 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8(0);
  v10 = sub_22BB30444(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB30C74();
  sub_22BB89DA4();
  MEMORY[0x28223BE20](v15);
  sub_22BB3E4C0();
  v16 = *(v7 + 16);
  if (v16 == *(v5 + 16) && v16 && v7 != v5)
  {
    v17 = *(v12 + 80);
    sub_22BB2F390();
    v19 = v7 + v18;
    v20 = v5 + v18;
    v22 = *(v12 + 16);
    v21 = v12 + 16;
    v23 = (v21 - 8);
    v30 = *(v21 + 56);
    v31 = v22;
    while (1)
    {
      v24 = sub_22BB32E04();
      v31(v24);
      if (!v16)
      {
        break;
      }

      v25 = v21;
      (v31)(v0, v20, v9);
      sub_22BCF8848(v32, v33);
      v26 = sub_22BDBABD4();
      v27 = *v23;
      v28 = sub_22BB95B5C();
      v27(v28);
      (v27)(v1, v9);
      if (v26)
      {
        v20 += v30;
        v19 += v30;
        v29 = v16-- == 1;
        v21 = v25;
        if (!v29)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    sub_22BB314EC();
  }
}

uint64_t static FeedbackLearning.TypedCandidateInteraction.== infix(_:_:)()
{
  sub_22BB35F54();
  static FeedbackLearning.CandidateDefinition.== infix(_:_:)();
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  v1 = type metadata accessor for FeedbackLearning.TypedCandidateInteraction(0);
  sub_22BB36D64(v1);

  return sub_22BDB7B74();
}

uint64_t sub_22BCF1884(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D6574617473 && a2 == 0xEB00000000644974;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574656D61726170 && a2 == 0xE900000000000072;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x800000022BDD32F0 == a2;
      if (v7 || (sub_22BDBB6D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6974756C6F736572 && a2 == 0xEA00000000006E6FLL;
        if (v8 || (sub_22BDBB6D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656D6F6374756FLL && a2 == 0xE700000000000000;
          if (v9 || (sub_22BDBB6D4() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6E6F6974616E6F64 && a2 == 0xEF736E6F6974704FLL)
          {

            return 5;
          }

          else
          {
            v11 = sub_22BDBB6D4();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22BCF1A90(char a1)
{
  result = 0x6E656D6574617473;
  switch(a1)
  {
    case 1:
      result = 0x6574656D61726170;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x6974756C6F736572;
      break;
    case 4:
      result = 0x656D6F6374756FLL;
      break;
    case 5:
      result = 0x6E6F6974616E6F64;
      break;
    default:
      return result;
  }

  return result;
}

void sub_22BCF1B64()
{
  sub_22BD00EDC();
  sub_22BBBEB7C();
  v3 = sub_22BBE6DE0(&qword_27D8E50E8, &qword_22BDC7788);
  sub_22BB30444(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB3721C();
  sub_22BB3B3AC();
  sub_22BCFEB78();
  sub_22BD0071C();
  sub_22BDB4C34();
  sub_22BB35B60();
  sub_22BCF8848(v7, v8);
  sub_22BB3AD98();
  sub_22BDBB664();
  if (!v1)
  {
    v9 = _s18TaskDefinitionThinO23CandidateEvaluationThinVMa(0);
    sub_22BD0096C(v9);
    v11 = sub_22BD00CFC(v10);
    type metadata accessor for FeedbackLearning.CandidateParameter(v11);
    sub_22BB58AD4();
    sub_22BCF8848(v12, v13);
    sub_22BB3AD98();
    sub_22BDBB664();
    v14 = v2[6];
    sub_22BD00CFC(2);
    sub_22BDB7B44();
    sub_22BB36E04();
    sub_22BCF8848(v15, v16);
    sub_22BB3AD98();
    sub_22BDBB664();
    v19 = *(v0 + v2[7]);
    sub_22BBC05F0();
    sub_22BCF8D00();
    sub_22BB337A0();
    sub_22BDBB664();
    v20 = *(v0 + v2[8]);
    sub_22BB3E098();
    sub_22BCF8D54();
    sub_22BB337A0();
    sub_22BDBB664();
    v21 = *(v0 + v2[9]);
    sub_22BBC0278();
    sub_22BCF8DA8();
    sub_22BB337A0();
    sub_22BDBB664();
  }

  v17 = sub_22BB35198();
  v18(v17);
  sub_22BD00D08();
  sub_22BD00EC8();
}

void sub_22BCF1DCC()
{
  sub_22BB31014();
  v5 = v4;
  v47 = v6;
  v53 = sub_22BDB7B44();
  v7 = sub_22BB30444(v53);
  v49 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB305A8();
  v48 = v11;
  v12 = sub_22BB2F120();
  v13 = type metadata accessor for FeedbackLearning.CandidateParameter(v12);
  v14 = sub_22BB2F330(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  sub_22BB33230();
  v17 = sub_22BDB4C34();
  v18 = sub_22BB30444(v17);
  v54 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  sub_22BB345CC();
  v22 = sub_22BBE6DE0(&qword_27D8E50D8, &qword_22BDC7780);
  v23 = sub_22BB30444(v22);
  v50 = v24;
  v51 = v23;
  v26 = *(v25 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v27);
  v28 = sub_22BB30CE4();
  v52 = _s18TaskDefinitionThinO23CandidateEvaluationThinVMa(v28);
  v29 = sub_22BB2F330(v52);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BB305A8();
  v33 = v32;
  v34 = v5[3];
  v35 = v5[4];
  v36 = sub_22BB345A8();
  sub_22BB699E4(v36, v37);
  sub_22BCFEB78();
  sub_22BD00C6C();
  sub_22BDBB894();
  if (v1)
  {
    sub_22BB32FA4(v5);
  }

  else
  {
    sub_22BB35B60();
    sub_22BCF8848(v38, v39);
    sub_22BD00A0C();
    sub_22BDBB5D4();
    (*(v54 + 32))(v33, v2, v17);
    sub_22BB58AD4();
    sub_22BCF8848(v40, v41);
    sub_22BD00A0C();
    sub_22BDBB5D4();
    v42 = v52[5];
    sub_22BB31158();
    sub_22BCF8A34(v0, v33 + v43);
    LOBYTE(v55) = 2;
    sub_22BB36E04();
    sub_22BCF8848(v44, v45);
    sub_22BD00A0C();
    sub_22BDBB5D4();
    (*(v49 + 32))(v33 + v52[6], v48, v53);
    sub_22BBC05F0();
    sub_22BCF8DFC();
    sub_22BBCC100();
    *(v33 + v52[7]) = 2;
    sub_22BB3E098();
    sub_22BCF8E50();
    sub_22BBCC100();
    *(v33 + v52[8]) = 2;
    sub_22BBC0278();
    sub_22BCF8EA4();
    sub_22BBCC100();
    (*(v50 + 8))(v3, v51);
    *(v33 + v52[9]) = v55;
    v46 = sub_22BB6BE0C();
    sub_22BCF8A8C(v46, v47);
    sub_22BB32FA4(v5);
    sub_22BCF8AE4(v33, _s18TaskDefinitionThinO23CandidateEvaluationThinVMa);
  }

  sub_22BD00C9C();
  sub_22BB376A8();
}

uint64_t sub_22BCF230C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465747563657865 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22BDBB6D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BCF23DC(char a1)
{
  if (a1)
  {
    return 0x6465747563657865;
  }

  else
  {
    return 0x76456E6F69746361;
  }
}

void sub_22BCF2420()
{
  sub_22BD00EDC();
  v3 = sub_22BBE6DE0(&qword_27D8E4EE0, &qword_22BDC7660);
  sub_22BB30444(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB354DC();
  sub_22BB3B3AC();
  sub_22BCFE590();
  sub_22BD00758();
  sub_22BD00E24();
  sub_22BDB43E4();
  sub_22BB377E0();
  sub_22BCF8848(v9, v10);
  sub_22BB36BDC();
  sub_22BB527FC();
  sub_22BDBB664();
  if (!v1)
  {
    v11 = *(v0 + *(_s18TaskDefinitionThinO14TaskActionThinVMa(0) + 20));
    sub_22BB393D0();
    sub_22BDBB634();
  }

  (*(v5 + 8))(v2, v3);
  sub_22BD00D08();
  sub_22BD00EC8();
}

void sub_22BCF2578()
{
  sub_22BB31014();
  v4 = v3;
  v5 = sub_22BDB43E4();
  v6 = sub_22BB30444(v5);
  v29 = v7;
  v30 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  sub_22BD00790();
  v31 = sub_22BBE6DE0(&qword_27D8E4ED0, &qword_22BDC7658);
  sub_22BB30444(v31);
  v11 = *(v10 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v12);
  sub_22BB36808();
  v13 = _s18TaskDefinitionThinO14TaskActionThinVMa(0);
  v14 = sub_22BB2F330(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BB3662C();
  v18 = v4[3];
  v17 = v4[4];
  v19 = sub_22BC54A0C();
  sub_22BB699E4(v19, v20);
  sub_22BCFE590();
  sub_22BD00918();
  sub_22BD00C48();
  sub_22BDBB894();
  if (v0)
  {
    sub_22BB32FA4(v4);
  }

  else
  {
    sub_22BB377E0();
    sub_22BCF8848(v21, v22);
    sub_22BB36BDC();
    sub_22BDBB5D4();
    (*(v29 + 32))(v1, v2, v30);
    sub_22BB393D0();
    v23 = sub_22BDBB5A4();
    v24 = sub_22BB97698();
    v25(v24);
    *(v1 + *(v13 + 20)) = v23 & 1;
    v26 = sub_22BB68F28();
    sub_22BCF8A8C(v26, v27);
    sub_22BB32FA4(v4);
    sub_22BB695B8();
    sub_22BCF8AE4(v1, v28);
  }

  sub_22BB975A0();
  sub_22BB376A8();
}

uint64_t sub_22BCF281C()
{
  sub_22BB35F54();
  v3 = v1 == 0x65756C6176 && v2 == 0xE500000000000000;
  if (v3 || (sub_22BB32E28() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x6E6F69746361 && v0 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    sub_22BB32E28();
    sub_22BBC05FC();
    sub_22BD00D98();
    if (v3)
    {
      return v6 + 1;
    }

    else
    {
      return v6;
    }
  }
}

void sub_22BCF28B4()
{
  sub_22BB31014();
  sub_22BB92328();
  v3 = sub_22BBE6DE0(&qword_27D8E4F20, &qword_22BDC7680);
  sub_22BB30444(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB38B54(v7, v48);
  v50 = _s18TaskDefinitionThinO14TaskActionThinVMa(0);
  v8 = sub_22BB2F330(v50);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BB305A8();
  v51 = v11;
  v12 = sub_22BBE6DE0(&qword_27D8E4F28, &qword_22BDC7688);
  sub_22BB30444(v12);
  v14 = *(v13 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  sub_22BB395E0();
  v49 = sub_22BDB4C34();
  v16 = sub_22BB30444(v49);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB3662C();
  v19 = _s18TaskDefinitionThinO28TaskFinalResolutionValueThinOMa(0);
  v20 = sub_22BB2F330(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  sub_22BD00790();
  v53 = sub_22BBE6DE0(&qword_27D8E4F30, &qword_22BDC7690);
  sub_22BB30444(v53);
  v24 = v23;
  v26 = *(v25 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v27);
  sub_22BB34298();
  v29 = *(v0 + 24);
  v28 = *(v0 + 32);
  v30 = sub_22BB8AB74();
  sub_22BB699E4(v30, v31);
  sub_22BCFE5E4();
  sub_22BD00CC0();
  sub_22BD00C48();
  sub_22BDBB8A4();
  sub_22BCF8A8C(v52, v2);
  sub_22BD00A24();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BCF8A34(v2, v51);
    sub_22BB75960();
    sub_22BCFE638();
    sub_22BB72F1C();
    sub_22BDBB5F4();
    sub_22BBBE724();
    sub_22BCF8848(v32, v33);
    sub_22BD00ADC();
    sub_22BD00DA4();
    v34 = sub_22BB692D0();
    v35(v34);
    sub_22BB695B8();
    sub_22BCF8AE4(v51, v36);
    v37 = *(v24 + 8);
    v38 = sub_22BC5448C();
    v39(v38);
  }

  else
  {
    v40 = sub_22BD00A5C();
    v41(v40);
    sub_22BCFE68C();
    sub_22BD00908();
    sub_22BDBB5F4();
    sub_22BB35B60();
    sub_22BCF8848(v42, v43);
    sub_22BBC3B18();
    v44 = sub_22BB37D64();
    v45(v44, v19);
    v46 = sub_22BB3DFD0();
    v47(v46, v29);
    (*(v24 + 8))(v1, v28);
  }

  sub_22BD00C3C();
  sub_22BB376A8();
}