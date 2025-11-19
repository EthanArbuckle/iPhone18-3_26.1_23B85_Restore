uint64_t FeedbackLearning.EvaluationTrigger.hashValue.getter()
{
  v1 = *v0;
  sub_22BDBB814();
  MEMORY[0x2318A57F0](v1);
  return sub_22BDBB834();
}

uint64_t FeedbackLearningInteractionRecord.deviceContext.getter()
{
  v0 = sub_22BDB7A84();
  sub_22BB2F330(v0);
  v2 = *(v1 + 16);
  v3 = sub_22BB31F54();

  return v4(v3);
}

uint64_t FeedbackLearningInteractionRecord.candidateInteractions.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeedbackLearningInteractionRecord() + 24));
}

uint64_t static FeedbackLearningInteractionRecord.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB7AD4();
  v5 = sub_22BB30444(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BBE6DE0(&qword_27D8E3E20, &qword_22BDCCAB0);
  v13 = sub_22BB2F0C8(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = sub_22BBE6DE0(&qword_27D8E5EB0, &qword_22BDCCAB8);
  v19 = sub_22BB2F330(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v35 - v22;
  if ((sub_22BDB7A54() & 1) == 0)
  {
    goto LABEL_11;
  }

  v36 = v7;
  v35 = type metadata accessor for FeedbackLearningInteractionRecord();
  v24 = *(v35 + 20);
  v25 = *(v18 + 48);
  sub_22BC7E3C4(a1 + v24, v23, &qword_27D8E3E20, &qword_22BDCCAB0);
  sub_22BC7E3C4(a2 + v24, &v23[v25], &qword_27D8E3E20, &qword_22BDCCAB0);
  sub_22BB2F164(v23);
  if (v26)
  {
    sub_22BB2F164(&v23[v25]);
    if (v26)
    {
      sub_22BB58728(v23, &qword_27D8E3E20, &qword_22BDCCAB0);
LABEL_14:
      v32 = *(v35 + 24);
      v33 = *(a1 + v32);
      v34 = *(a2 + v32);
      sub_22BCEF80C();
      return v27 & 1;
    }

    goto LABEL_10;
  }

  sub_22BC7E3C4(v23, v17, &qword_27D8E3E20, &qword_22BDCCAB0);
  sub_22BB2F164(&v23[v25]);
  if (v26)
  {
    (*(v36 + 8))(v17, v4);
LABEL_10:
    sub_22BB58728(v23, &qword_27D8E5EB0, &qword_22BDCCAB8);
    goto LABEL_11;
  }

  v29 = v36;
  (*(v36 + 32))(v11, &v23[v25], v4);
  sub_22BD1BC1C(&qword_27D8E5EB8, MEMORY[0x277D1D5F8]);
  v30 = sub_22BDBABD4();
  v31 = *(v29 + 8);
  v31(v11, v4);
  v31(v17, v4);
  sub_22BB58728(v23, &qword_27D8E3E20, &qword_22BDCCAB0);
  if (v30)
  {
    goto LABEL_14;
  }

LABEL_11:
  v27 = 0;
  return v27 & 1;
}

unint64_t sub_22BD1B898()
{
  result = qword_27D8E5EC0;
  if (!qword_27D8E5EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5EC0);
  }

  return result;
}

_BYTE *_s22StandardTupleGeneratorVwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s17EvaluationTriggerOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_22BD1BAA0()
{
  sub_22BDB7A84();
  if (v0 <= 0x3F)
  {
    sub_22BD1BB9C(319, &qword_281428AC8, MEMORY[0x277D1D5F8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22BD1BB9C(319, &qword_281428848, type metadata accessor for FeedbackLearning.TypedCandidateInteraction, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22BD1BB9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22BD1BC1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BD1BC64(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3D98, &qword_22BDC1130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BD1BCD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB30F68();
  v5 = v4(v3);
  sub_22BB2F330(v5);
  v7 = *(v6 + 32);
  v8 = sub_22BB31F54();
  v9(v8);
  return a2;
}

uint64_t sub_22BD1BD2C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB30F68();
  v5 = v4(v3);
  sub_22BB2F330(v5);
  v7 = *(v6 + 16);
  v8 = sub_22BB31F54();
  v9(v8);
  return a2;
}

uint64_t sub_22BD1BD84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BD1BDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22BDB77D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6404();
  v9 = sub_22BDB77C4();
  v10 = sub_22BDBB0F4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22BB2C000, v9, v10, "Received a signal for termination, setting a flag to cancel task evaluations", v11, 2u);
    MEMORY[0x2318A6080](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  *(*(a1 + 104) + 16) = 1;
  v12 = *MEMORY[0x277D41D58];
  v13 = sub_22BDB64B4();
  return (*(*(v13 - 8) + 104))(a2, v12, v13);
}

uint64_t sub_22BD1BF90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BD1BFD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22BD1C03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = a4;
  v97 = a2;
  v86 = a1;
  v4 = sub_22BBE6DE0(&qword_27D8E3D18, &unk_22BDC1070);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v98 = &v75 - v6;
  v7 = sub_22BBE6DE0(&qword_27D8E34D0, &qword_22BDBEF30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v96 = &v75 - v9;
  v10 = sub_22BBE6DE0(&qword_27D8E3D20, &unk_22BDC1080);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v93 = &v75 - v12;
  v13 = sub_22BDB6664();
  v90 = *(v13 - 8);
  v91 = v13;
  v14 = *(v90 + 64);
  MEMORY[0x28223BE20](v13);
  v89 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22BBE6DE0(&qword_27D8E3D28, &unk_22BDCCD20);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v92 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v87 = &v75 - v20;
  v21 = sub_22BDB6714();
  v94 = *(v21 - 8);
  v95 = v21;
  v22 = *(v94 + 64);
  MEMORY[0x28223BE20](v21);
  v85 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22BBE6DE0(&qword_27D8E3D30, &unk_22BDC1090);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v84 = &v75 - v26;
  v27 = sub_22BBE6DE0(&qword_27D8E3D38, &unk_22BDCCD30);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v78 = &v75 - v29;
  v80 = sub_22BDB6C84();
  v79 = *(v80 - 8);
  v30 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v32 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22BBE6DE0(&qword_27D8E3D40, &unk_22BDC10A0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v75 - v35;
  v37 = sub_22BDB6A44();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = &v75 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_22BDB6D04();
  v76 = *(v77 - 8);
  v42 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v75 = &v75 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22BBE6DE0(&qword_27D8E3D48, &unk_22BDCCD40);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v47 = &v75 - v46;
  v48 = sub_22BDB6C64();
  v82 = v48;
  v83 = *(v48 - 8);
  v49 = v83;
  v50 = *(v83 + 64);
  MEMORY[0x28223BE20](v48);
  v52 = &v75 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6C54();
  v53 = sub_22BDB6C34();
  (*(*(v53 - 8) + 16))(v47, v86, v53);
  sub_22BB336D0(v47, 0, 1, v53);
  v81 = v52;
  sub_22BDB6C44();
  (*(v49 + 16))(v41, v52, v48);
  (*(v38 + 104))(v41, *MEMORY[0x277D1F868], v37);
  v54 = v75;
  sub_22BDB6CF4();
  v55 = sub_22BDB6CC4();
  v99 = v88;
  sub_22BDB76D4();
  sub_22BB336D0(v36, 0, 1, v55);
  sub_22BDB6CD4();
  sub_22BDB6C74();
  v56 = v78;
  (*(v38 + 16))(v78, v41, v37);
  sub_22BB336D0(v56, 0, 1, v37);
  sub_22BDB6A54();
  v57 = v79;
  v58 = v84;
  v59 = v80;
  (*(v79 + 16))(v84, v32, v80);
  sub_22BB336D0(v58, 0, 1, v59);
  sub_22BDB6C94();
  (*(v57 + 8))(v32, v59);
  (*(v38 + 8))(v41, v37);
  v60 = v76;
  v61 = v87;
  v62 = v77;
  (*(v76 + 16))(v87, v54, v77);
  v63 = *MEMORY[0x277D1F700];
  v64 = sub_22BDB66E4();
  (*(*(v64 - 8) + 104))(v61, v63, v64);
  sub_22BB336D0(v61, 0, 1, v64);
  v66 = v89;
  v65 = v90;
  v67 = v91;
  (*(v90 + 104))(v89, *MEMORY[0x277D1F6D8], v91);
  v68 = v85;
  sub_22BDB6704();
  v69 = v93;
  sub_22BCA485C();
  v70 = sub_22BDB66C4();
  sub_22BB336D0(v69, 0, 1, v70);
  sub_22BDB66D4();
  v71 = v96;
  sub_22BDB7604();
  v72 = sub_22BDB7614();
  sub_22BB336D0(v71, 0, 1, v72);
  sub_22BDB6674();
  sub_22BD1CB84(v61, v92);
  sub_22BDB66F4();
  v73 = v98;
  (*(v65 + 16))(v98, v66, v67);
  sub_22BB336D0(v73, 0, 1, v67);
  sub_22BDB6684();
  (*(v65 + 8))(v66, v67);
  sub_22BB325EC(v61, &qword_27D8E3D28, &unk_22BDCCD20);
  sub_22BDB8814();
  sub_22BDB8804();
  (*(v94 + 8))(v68, v95);
  (*(v60 + 8))(v54, v62);
  return (*(v83 + 8))(v81, v82);
}

uint64_t sub_22BD1CA68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedbackLearning.TaskEvaluation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BD1CACC(uint64_t a1, uint64_t a2)
{
  v4 = _s18TaskDefinitionThinO18TaskEvaluationThinVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BD1CB30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB31F70(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BD1CB84(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3D28, &unk_22BDCCD20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BD1CBF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v40 = a5;
  v39 = a2;
  v7 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - v9;
  v11 = sub_22BDB4C34();
  v33 = *(v11 - 8);
  v12 = *(v33 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v35 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v34 = &v31 - v15;
  v16 = sub_22BDB9B54();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  result = MEMORY[0x28223BE20](v16);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a4 >> 1;
  v38 = (v33 + 32);
  v36 = MEMORY[0x277D84F90];
  while (1)
  {
    if (a3 == v22)
    {

      return v36;
    }

    if (__OFSUB__(v22--, 1))
    {
      break;
    }

    if (v22 < a3)
    {
      goto LABEL_14;
    }

    (*(v17 + 16))(v21, v39 + *(v17 + 72) * v22, v16);
    sub_22BD26AF4(v40, v10);
    (*(v17 + 8))(v21, v16);
    if (sub_22BB3AA28(v10, 1, v11) == 1)
    {
      result = sub_22BB58728(v10, &qword_27D8E27C0, &qword_22BDBCDF0);
    }

    else
    {
      v37 = *v38;
      v37(v34, v10, v11);
      v37(v35, v34, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = *(v36 + 16);
        sub_22BBB22CC();
        v36 = v29;
      }

      v24 = *(v36 + 16);
      v25 = v24 + 1;
      if (v24 >= *(v36 + 24) >> 1)
      {
        v31 = *(v36 + 16);
        v32 = v24 + 1;
        sub_22BBB22CC();
        v24 = v31;
        v25 = v32;
        v36 = v30;
      }

      v26 = v35;
      v27 = v36;
      *(v36 + 16) = v25;
      result = (v37)(v27 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v24, v26, v11);
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_22BD1CF68(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  v9 = v7;
  while (1)
  {
    if (!v9)
    {
      goto LABEL_12;
    }

    if (--v9 >= v7)
    {
      break;
    }

    v10 = *(sub_22BDB89F4() - 8);
    sub_22BD23C8C((a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v9), a2, a3, &v17);
    if (v3)
    {

LABEL_12:

      return;
    }

    v11 = v17;
    if (v17)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = *(v8 + 16);
        sub_22BD91244();
        v8 = v15;
      }

      v12 = *(v8 + 16);
      v13 = v12 + 1;
      if (v12 >= *(v8 + 24) >> 1)
      {
        sub_22BD91244();
        v13 = v12 + 1;
        v8 = v16;
      }

      *(v8 + 16) = v13;
      *(v8 + 8 * v12 + 32) = v11;
    }
  }

  __break(1u);
}

uint64_t sub_22BD1D0F4(uint64_t a1)
{
  result = MEMORY[0x2318A5070](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_22BD2B728(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_22BD1D1B4(uint64_t a1)
{
  result = MEMORY[0x2318A5070](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_22BD2B728(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BD1D2D0(uint64_t a1)
{
  v2 = MEMORY[0x2318A5070](*(a1 + 16), MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v8 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_22BD2B874(&v7, *(a1 + v4));
      v4 += 8;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

void sub_22BD1D364()
{
  sub_22BB30F94();
  sub_22BB35760();
  v5 = sub_22BDB7B44();
  v6 = sub_22BB30444(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30C74();
  sub_22BB3E4D0();
  MEMORY[0x28223BE20](v11);
  sub_22BB72E1C();
  sub_22BB3A720();
  sub_22BBB9968(v12, v13);
  v14 = sub_22BB2F3F0();
  MEMORY[0x2318A5070](v14);
  v15 = *(v0 + 16);
  if (v15)
  {
    v16 = *(v8 + 16);
    v17 = *(v8 + 80);
    sub_22BB2F390();
    sub_22BB32E54();
    do
    {
      v16(v1, v3, v5);
      sub_22BB3AAD8();
      sub_22BD2BAC0();
      (*v0)(v2, v5);
      v3 += v4;
      --v15;
    }

    while (v15);
  }

  sub_22BB314EC();
}

void sub_22BD1D4C0()
{
  sub_22BB30F94();
  sub_22BBB79D8();
  v1 = sub_22BDB81A4();
  v2 = sub_22BB30444(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  sub_22BB3A434();
  v7 = sub_22BDB9564();
  v8 = sub_22BB30444(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  sub_22BB345CC();
  v13 = type metadata accessor for FeedbackLearning.ActionValue(0);
  v14 = sub_22BB2F330(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  sub_22BB89D24();
  sub_22BB33DE8();
  sub_22BD1FA4C();
  sub_22BB35464();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BB51840();
    v17 = sub_22BB313A8();
    v18(v17);
    sub_22BDB8194();
    MEMORY[0x2318A2DC0]();
    sub_22BDB8DE4();
    v19 = *(v4 + 8);
    v20 = sub_22BB2F3F0();
    v21(v20);
  }

  else
  {
    v22 = *(v10 + 32);
    v23 = sub_22BB32E04();
    v24(v23);
    sub_22BDB9544();
    (*(v10 + 8))(v0, v7);
  }

  sub_22BB314EC();
}

void sub_22BD1D6A4()
{
  sub_22BB30F94();
  sub_22BBB79D8();
  v1 = sub_22BDB81A4();
  v2 = sub_22BB30444(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  sub_22BB3A434();
  v7 = sub_22BDB9564();
  v8 = sub_22BB30444(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  sub_22BB345CC();
  v13 = type metadata accessor for FeedbackLearning.ActionValue(0);
  v14 = sub_22BB2F330(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  sub_22BB89D24();
  sub_22BB33DE8();
  sub_22BD1FA4C();
  sub_22BB35464();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BB51840();
    v17 = sub_22BB313A8();
    v18(v17);
    sub_22BDB8174();
    v19 = *(v4 + 8);
    v20 = sub_22BB2F3F0();
    v21(v20);
  }

  else
  {
    v22 = *(v10 + 32);
    v23 = sub_22BB32E04();
    v24(v23);
    sub_22BDB8174();
    (*(v10 + 8))(v0, v7);
  }

  sub_22BB314EC();
}

void sub_22BD1D87C()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_22BDB4C34();
  v7 = sub_22BB30444(v6);
  v63 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  sub_22BB89D24();
  v11 = sub_22BDB77D4();
  v12 = sub_22BB30444(v11);
  v64 = v13;
  v65 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB30574();
  v18 = v17 - v16;
  v19 = sub_22BBE6DE0(&qword_27D8E3E08, &qword_22BDC1250);
  sub_22BB2F0C8(v19);
  v21 = *(v20 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v22);
  v24 = &v62 - v23;
  v25 = sub_22BDB43E4();
  v26 = sub_22BB2F0C8(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BB30574();
  v29 = sub_22BDB5F24();
  v30 = sub_22BB2F0C8(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BB30574();
  if (sub_22BD206DC(v3, v1))
  {
    sub_22BDB8F24();
    sub_22BDB5F04();
    sub_22BBD5E2C();

    v33 = sub_22BD2EAAC();
    MEMORY[0x28223BE20](v33);
    *(&v62 - 2) = v3;
    sub_22BD79948();

    v34 = type metadata accessor for FeedbackLearning.FlowTask(0);
    if (sub_22BB3AA28(v24, 1, v34) == 1)
    {
      sub_22BB58728(v24, &qword_27D8E3E08, &qword_22BDC1250);
      sub_22BDB6404();
      v35 = v63;
      v36 = *(v63 + 16);
      v37 = sub_22BB35464();
      v38(v37);
      v39 = sub_22BDB77C4();
      v40 = sub_22BDBB114();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v66 = v62;
        *v41 = 136315138;
        sub_22BB31D8C();
        sub_22BBB9968(v42, v43);
        sub_22BDBB684();
        v44 = *(v35 + 8);
        v45 = sub_22BB31528();
        v46(v45);
        v47 = sub_22BB53C48();
        v50 = sub_22BB32EE0(v47, v48, v49);

        *(v41 + 4) = v50;
        _os_log_impl(&dword_22BB2C000, v39, v40, "Could not find a task containing an expression with statementId=%s", v41, 0xCu);
        v51 = v62;
        sub_22BB32FA4(v62);
        MEMORY[0x2318A6080](v51, -1, -1);
        MEMORY[0x2318A6080](v41, -1, -1);
      }

      else
      {

        v59 = *(v35 + 8);
        v60 = sub_22BB31528();
        v61(v60);
      }

      (*(v64 + 8))(v18, v65);
      v57 = v5;
      v58 = 1;
    }

    else
    {
      sub_22BB3A86C();
      sub_22BD2EB00();
      v57 = v5;
      v58 = 0;
    }

    sub_22BB336D0(v57, v58, 1, v34);
    sub_22BB314EC();
  }

  else
  {
    type metadata accessor for FeedbackLearning.FlowTask(0);
    sub_22BB314EC();

    sub_22BB336D0(v52, v53, v54, v55);
  }
}

uint64_t FeedbackLearning.FlowExpressionValue.referredStatements.getter()
{
  v2 = sub_22BDB4C34();
  v3 = sub_22BB30444(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  v8 = sub_22BB319F8();
  v9 = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(v8);
  v10 = sub_22BB2F330(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  v13 = sub_22BB3DFC0();
  v14 = *(type metadata accessor for FeedbackLearning.FlowExpressionValue(v13) + 24);
  sub_22BB35BA8();
  sub_22BD1FA4C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return *v0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(v5 + 32);
  v17 = sub_22BB3AC54();
  v16(v17);
  sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
  v18 = sub_22BB8AC8C();
  *(v18 + 16) = xmmword_22BDBCBD0;
  (v16)(v18 + v9, v1, v2);
  return v18;
}

void static FeedbackLearning.FlowActionEvent.== infix(_:_:)()
{
  sub_22BB35F54();
  if (sub_22BDB43B4())
  {
    v0 = type metadata accessor for FeedbackLearning.FlowActionEvent(0);
    sub_22BB36D64(v0);

    static FeedbackLearning.ActionValue.== infix(_:_:)();
  }
}

void static FeedbackLearning.ActionValue.== infix(_:_:)()
{
  sub_22BB30F94();
  v41 = v2;
  v42 = v3;
  v4 = sub_22BDB81A4();
  v5 = sub_22BB30444(v4);
  v39 = v6;
  v40 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  sub_22BB319F8();
  v9 = sub_22BDB9564();
  v10 = sub_22BB30444(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB30574();
  v15 = sub_22BB52E94();
  v16 = type metadata accessor for FeedbackLearning.ActionValue(v15);
  v17 = sub_22BB2F330(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BB30C74();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v39 - v24;
  v26 = sub_22BBE6DE0(&qword_27D8E4E60, &qword_22BDC7258);
  sub_22BB2F0C8(v26);
  v28 = *(v27 + 64);
  sub_22BB30B9C();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v39 - v31;
  v33 = *(v30 + 56);
  sub_22BD1FA4C();
  sub_22BD1FA4C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BB33DE8();
    sub_22BB313A8();
    sub_22BD1FA4C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = v39;
      v34 = v40;
      (*(v39 + 32))(v0, &v32[v33], v40);
      sub_22BDB8184();
      v36 = *(v35 + 8);
      v37 = sub_22BB3AC54();
      v36(v37);
      (v36)(v22, v34);
LABEL_9:
      sub_22BD2EAAC();
      goto LABEL_10;
    }

    (*(v39 + 8))(v22, v40);
  }

  else
  {
    sub_22BB33DE8();
    sub_22BD1FA4C();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v12 + 32))(v1, &v32[v33], v9);
      sub_22BDB9534();
      v38 = *(v12 + 8);
      v38(v1, v9);
      v38(v25, v9);
      goto LABEL_9;
    }

    (*(v12 + 8))(v25, v9);
  }

  sub_22BB58728(v32, &qword_27D8E4E60, &qword_22BDC7258);
LABEL_10:
  sub_22BB314EC();
}

uint64_t sub_22BD1E218(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6341746E65696C63 && a2 == 0xEC0000006E6F6974)
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

uint64_t sub_22BD1E2E0(char a1)
{
  if (a1)
  {
    return 0x6341746E65696C63;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_22BD1E31C(uint64_t a1)
{
  v2 = sub_22BD1FB4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD1E358(uint64_t a1)
{
  v2 = sub_22BD1FB4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD1E394(uint64_t a1)
{
  v2 = sub_22BD1FAF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD1E3D0(uint64_t a1)
{
  v2 = sub_22BD1FAF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BD1E414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BD1E218(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BD1E43C(uint64_t a1)
{
  v2 = sub_22BD1FAA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD1E478(uint64_t a1)
{
  v2 = sub_22BD1FAA4();

  return MEMORY[0x2821FE720](a1, v2);
}

void FeedbackLearning.ActionValue.encode(to:)()
{
  sub_22BB31014();
  v81 = v1;
  v79 = v0;
  v4 = v3;
  v5 = sub_22BBE6DE0(&qword_27D8E5EE8, &qword_22BDCCD70);
  v6 = sub_22BB30444(v5);
  v77 = v7;
  v78 = v6;
  v9 = *(v8 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v10);
  v74 = &v68 - v11;
  sub_22BB2F120();
  v12 = sub_22BDB81A4();
  v13 = sub_22BB30444(v12);
  v75 = v14;
  v76 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BB305A8();
  v73 = v17;
  v18 = sub_22BBE6DE0(&qword_27D8E5EF0, &qword_22BDCCD78);
  v19 = sub_22BB30444(v18);
  v71 = v20;
  v72 = v19;
  v22 = *(v21 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v23);
  sub_22BB52E94();
  v24 = sub_22BDB9564();
  v25 = sub_22BB30444(v24);
  v69 = v26;
  v70 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BB30574();
  sub_22BB89D24();
  v29 = type metadata accessor for FeedbackLearning.ActionValue(0);
  v30 = sub_22BB2F330(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BB30574();
  v35 = v34 - v33;
  v36 = sub_22BBE6DE0(&qword_27D8E5EF8, &qword_22BDCCD80);
  sub_22BB30444(v36);
  v80 = v37;
  v39 = *(v38 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v40);
  sub_22BB345CC();
  v41 = *(v4 + 24);
  v42 = *(v4 + 32);
  v43 = sub_22BB53C48();
  sub_22BB69FEC(v43, v44);
  sub_22BD1FAA4();
  sub_22BDBB8A4();
  sub_22BB33DE8();
  sub_22BD1FA4C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = v75;
    v45 = v76;
    sub_22BB379C8();
    v47 = v73;
    v48(v73, v35, v45);
    sub_22BD1FAF8();
    sub_22BDBB5F4();
    sub_22BB3A998();
    sub_22BBB9968(v49, v50);
    sub_22BDBB664();
    v51 = *(v77 + 8);
    v52 = sub_22BB3ADA8();
    v53(v52);
    (*(v46 + 8))(v47, v45);
  }

  else
  {
    v55 = v69;
    v54 = v70;
    sub_22BB51840();
    v56(v2, v35, v54);
    sub_22BD1FB4C();
    sub_22BDBB5F4();
    sub_22BB397B4();
    sub_22BBB9968(v57, v58);
    sub_22BDBB664();
    v59 = *(v71 + 8);
    v60 = sub_22BB3AAD8();
    v61(v60);
    v62 = *(v55 + 8);
    v63 = sub_22BB35464();
    v64(v63);
  }

  v65 = *(v80 + 8);
  v66 = sub_22BB95B90();
  v67(v66);
  sub_22BB376A8();
}

void FeedbackLearning.ActionValue.init(from:)()
{
  sub_22BB31014();
  v78 = v0;
  v3 = v2;
  v69 = v4;
  v77 = sub_22BBE6DE0(&qword_27D8E5F20, &qword_22BDCCD88);
  sub_22BB30444(v77);
  v72 = v5;
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  v74 = v67 - v9;
  v10 = sub_22BBE6DE0(&qword_27D8E5F28, &qword_22BDCCD90);
  v11 = sub_22BB30444(v10);
  v70 = v12;
  v71 = v11;
  v14 = *(v13 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  v73 = v67 - v16;
  v17 = sub_22BBE6DE0(&qword_27D8E5F30, &unk_22BDCCD98);
  v18 = sub_22BB30444(v17);
  v75 = v19;
  v76 = v18;
  v21 = *(v20 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v22);
  v23 = sub_22BB52E94();
  v24 = type metadata accessor for FeedbackLearning.ActionValue(v23);
  v25 = sub_22BB2F330(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BB30C74();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  sub_22BB7037C();
  MEMORY[0x28223BE20](v32);
  v34 = v67 - v33;
  v35 = v3[4];
  sub_22BB69FEC(v3, v3[3]);
  sub_22BD1FAA4();
  v36 = v78;
  sub_22BDBB894();
  if (v36)
  {
    goto LABEL_8;
  }

  v67[0] = v30;
  v67[1] = v1;
  v67[2] = v34;
  v68 = v24;
  v78 = v3;
  v37 = sub_22BDBB5E4();
  sub_22BD006D0(v37, 0);
  if (v39 == v40 >> 1)
  {
LABEL_7:
    v48 = v68;
    v49 = sub_22BDBB3A4();
    swift_allocError();
    v51 = v50;
    v52 = *(sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530) + 48);
    *v51 = v48;
    sub_22BDBB564();
    sub_22BDBB394();
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D84160], v49);
    swift_willThrow();
    swift_unknownObjectRelease();
    v53 = *(v75 + 8);
    v54 = sub_22BB95B90();
    v55(v54);
    v3 = v78;
LABEL_8:
    v56 = v3;
LABEL_9:
    sub_22BB32FA4(v56);
    sub_22BB376A8();
    return;
  }

  if (v39 < (v40 >> 1))
  {
    v79 = *(v38 + v39);
    sub_22BD006A8(v39 + 1);
    v42 = v41;
    v44 = v43;
    swift_unknownObjectRelease();
    if (v42 == v44 >> 1)
    {
      if (v79)
      {
        sub_22BD1FAF8();
        sub_22BBC7F9C();
        sub_22BDB81A4();
        sub_22BB3A998();
        sub_22BBB9968(v45, v46);
        sub_22BB97C28();
        v47 = v75;
        swift_unknownObjectRelease();
        v59 = sub_22BB3FCC8();
        v60(v59);
        v61 = *(v47 + 8);
      }

      else
      {
        sub_22BD1FB4C();
        sub_22BBC7F9C();
        sub_22BDB9564();
        sub_22BB397B4();
        sub_22BBB9968(v57, v58);
        sub_22BB97C28();
        swift_unknownObjectRelease();
        v64 = sub_22BB3FCC8();
        v65(v64);
        v66 = *(v75 + 8);
      }

      v62 = sub_22BB32E04();
      v63(v62);
      swift_storeEnumTagMultiPayload();
      sub_22BD2EB00();
      sub_22BD2EB00();
      v56 = v78;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t FeedbackLearning.FlowActionEvent.action.getter()
{
  v0 = sub_22BBB79D8();
  v1 = *(type metadata accessor for FeedbackLearning.FlowActionEvent(v0) + 20);
  sub_22BB33DE8();
  return sub_22BD1FA4C();
}

uint64_t sub_22BD1EFB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746E657665 && a2 == 0xE700000000000000;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
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

uint64_t sub_22BD1F074(char a1)
{
  if (a1)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x6449746E657665;
  }
}

uint64_t sub_22BD1F0B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BD1EFB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BD1F0D8(uint64_t a1)
{
  v2 = sub_22BD2EA58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BD1F114(uint64_t a1)
{
  v2 = sub_22BD2EA58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedbackLearning.FlowActionEvent.encode(to:)(uint64_t a1)
{
  v3 = sub_22BBE6DE0(&qword_27D8E5F40, &qword_22BDCCDA8);
  sub_22BB30444(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  v10 = &v21[-v9];
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = sub_22BB313A8();
  sub_22BB69FEC(v13, v14);
  sub_22BD2EA58();
  sub_22BDBB8A4();
  v21[15] = 0;
  sub_22BDB43E4();
  sub_22BB30D8C();
  sub_22BBB9968(v15, v16);
  sub_22BB38588();
  if (!v1)
  {
    v17 = *(type metadata accessor for FeedbackLearning.FlowActionEvent(0) + 20);
    v21[14] = 1;
    type metadata accessor for FeedbackLearning.ActionValue(0);
    sub_22BB6B6D8();
    sub_22BBB9968(v18, v19);
    sub_22BB38588();
  }

  return (*(v5 + 8))(v10, v3);
}

void FeedbackLearning.FlowActionEvent.init(from:)()
{
  sub_22BB31014();
  v3 = v2;
  v29 = type metadata accessor for FeedbackLearning.ActionValue(0);
  v4 = sub_22BB2F330(v29);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  sub_22BB345CC();
  v31 = sub_22BDB43E4();
  v7 = sub_22BB30444(v31);
  v28 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB305A8();
  v30 = v11;
  v32 = sub_22BBE6DE0(&qword_27D8E5F58, &unk_22BDCCDB0);
  sub_22BB30444(v32);
  v13 = *(v12 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  v15 = sub_22BB319F8();
  v16 = type metadata accessor for FeedbackLearning.FlowActionEvent(v15);
  v17 = sub_22BB2F330(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BB30574();
  sub_22BB89D24();
  v20 = v3[4];
  sub_22BB69FEC(v3, v3[3]);
  sub_22BD2EA58();
  sub_22BDBB894();
  if (v0)
  {
    sub_22BB32FA4(v3);
  }

  else
  {
    sub_22BB30D8C();
    sub_22BBB9968(v21, v22);
    sub_22BDBB5D4();
    (*(v28 + 32))(v1, v30, v31);
    sub_22BB6B6D8();
    sub_22BBB9968(v23, v24);
    sub_22BDBB5D4();
    v25 = sub_22BB3E158();
    v26(v25);
    v27 = *(v16 + 20);
    sub_22BD2EB00();
    sub_22BD1FA4C();
    sub_22BB32FA4(v3);
    sub_22BD2EAAC();
  }

  sub_22BB376A8();
}

uint64_t FeedbackLearning.FlowExpressionValue.FlowExpressionType.description.getter()
{
  v1 = sub_22BDB4C34();
  v2 = sub_22BB30444(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v7 = sub_22BB3DFC0();
  v8 = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(v7);
  v9 = sub_22BB2F330(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v14 = (v13 - v12);
  sub_22BB35BA8();
  sub_22BD1FA4C();
  sub_22BB345A8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = *(v4 + 32);
      v17 = sub_22BB37494();
      v18(v17);
      sub_22BB31D8C();
      sub_22BBB9968(v19, v20);
      v21 = sub_22BDBB684();
      MEMORY[0x2318A4C40](v21);

      MEMORY[0x2318A4C40](41, 0xE100000000000000);
      (*(v4 + 8))(v0, v1);
    }
  }

  else
  {
    v22 = *v14;
    v23 = sub_22BB2F324();
    v24 = MEMORY[0x2318A4D50](v23);
    v26 = v25;

    MEMORY[0x2318A4C40](v24, v26);

    MEMORY[0x2318A4C40](41, 0xE100000000000000);
  }

  return sub_22BB53C48();
}

uint64_t FeedbackLearning.FlowExpressionValue.FlowExpressionType.referredStatements.getter()
{
  v1 = sub_22BDB4C34();
  v2 = sub_22BB30444(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v7 = sub_22BB3A434();
  v8 = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(v7);
  v9 = sub_22BB2F330(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v14 = v13 - v12;
  sub_22BB35BA8();
  sub_22BB3AC54();
  sub_22BD1FA4C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return *v14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(v4 + 32);
  v17 = sub_22BB2F3F0();
  v16(v17);
  sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
  v18 = sub_22BB8AC8C();
  *(v18 + 16) = xmmword_22BDBCBD0;
  (v16)(v18 + v8, v0, v1);
  return v18;
}

uint64_t sub_22BD1FA4C()
{
  sub_22BB35F54();
  v2 = v1(0);
  sub_22BB2F330(v2);
  v4 = *(v3 + 16);
  v5 = sub_22BB31F54();
  v6(v5);
  return v0;
}

unint64_t sub_22BD1FAA4()
{
  result = qword_27D8E5F00;
  if (!qword_27D8E5F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5F00);
  }

  return result;
}

unint64_t sub_22BD1FAF8()
{
  result = qword_27D8E5F08;
  if (!qword_27D8E5F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5F08);
  }

  return result;
}

unint64_t sub_22BD1FB4C()
{
  result = qword_27D8E5F18;
  if (!qword_27D8E5F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E5F18);
  }

  return result;
}

void static FeedbackLearning.FlowExpressionValue.FlowExpressionType.== infix(_:_:)()
{
  sub_22BB30F94();
  v2 = sub_22BDB4C34();
  v3 = sub_22BB30444(v2);
  v31 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  v7 = sub_22BB3DFC0();
  v8 = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(v7);
  v9 = sub_22BB2F330(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30C74();
  sub_22BB3E4D0();
  MEMORY[0x28223BE20](v12);
  v14 = (&v30 - v13);
  v15 = sub_22BBE6DE0(&qword_27D8E4E50, &qword_22BDC7250);
  sub_22BB2F0C8(v15);
  v17 = *(v16 + 64);
  sub_22BB30B9C();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v30 - v20;
  v22 = *(v19 + 56);
  sub_22BD1FA4C();
  sub_22BD1FA4C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22BB35BA8();
      sub_22BD1FA4C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v24 = v31;
        sub_22BB379C8();
        v25(v0, &v21[v22], v2);
        sub_22BB3AC54();
        sub_22BDB4C04();
        v26 = *(v24 + 8);
        v27 = sub_22BB37494();
        v26(v27);
        (v26)(v1, v2);
LABEL_12:
        sub_22BB35FEC();
        goto LABEL_13;
      }

      (*(v31 + 8))(v1, v2);
    }

    else if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_22BB35BA8();
    sub_22BD1FA4C();
    v28 = *v14;
    if (!swift_getEnumCaseMultiPayload())
    {
      v29 = *&v21[v22];
      sub_22BB2F3F0();
      sub_22BCF162C();

      goto LABEL_12;
    }
  }

  sub_22BB58728(v21, &qword_27D8E4E50, &qword_22BDC7250);
LABEL_13:
  sub_22BB314EC();
}

uint64_t FeedbackLearning.FlowExpressionValue.init(statementId:originTaskStatementId:expressionType:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_22BDB4C34();
  sub_22BB2F330(v4);
  v6 = *(v5 + 32);
  v7 = sub_22BB3AC54();
  v6(v7);
  v8 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  (v6)(a2 + *(v8 + 20), a1, v4);
  v9 = *(v8 + 24);
  sub_22BB6BD38();
  return sub_22BD2EB00();
}

uint64_t FeedbackLearning.FlowExpressionValue.init(statementId:expressionType:)()
{
  sub_22BB35F54();
  v2 = v1;
  v3 = sub_22BDB4C34();
  sub_22BB30444(v3);
  v5 = v4;
  v7 = *(v6 + 16);
  v8 = sub_22BB37494();
  v9(v8);
  v10 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  (*(v5 + 32))(v2 + *(v10 + 20), v0, v3);
  v11 = *(v10 + 24);
  sub_22BB6BD38();
  return sub_22BD2EB00();
}

uint64_t sub_22BD1FFDC()
{
  v0 = sub_22BBB79D8();
  v2 = v1(v0);
  sub_22BB2F330(v2);
  v4 = *(v3 + 16);
  v5 = sub_22BB31F54();

  return v6(v5);
}

uint64_t FeedbackLearning.FlowExpressionValue.expressionType.getter()
{
  v0 = sub_22BBB79D8();
  v1 = *(type metadata accessor for FeedbackLearning.FlowExpressionValue(v0) + 24);
  sub_22BB35BA8();
  return sub_22BD1FA4C();
}

uint64_t FeedbackLearning.FlowExpressionValue.forming(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22BDB4C34();
  sub_22BB2F330(v4);
  v6 = *(v5 + 16);
  v7 = sub_22BB37494();
  v6(v7);
  v8 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  (v6)(a2 + *(v8 + 20), a1, v4);
  v9 = *(v8 + 24);
  sub_22BB35BA8();
  return sub_22BD1FA4C();
}

void static FeedbackLearning.FlowExpressionValue.== infix(_:_:)()
{
  sub_22BB35F54();
  if (sub_22BDB4C04())
  {
    v0 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
    sub_22BB36D64(v0);
    if (sub_22BDB4C04())
    {
      sub_22BB39610();

      static FeedbackLearning.FlowExpressionValue.FlowExpressionType.== infix(_:_:)();
    }
  }
}

uint64_t FeedbackLearning.FlowExpression.events.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeedbackLearning.FlowExpression(0) + 20));
}

void static FeedbackLearning.FlowExpression.== infix(_:_:)()
{
  sub_22BB35F54();
  if (sub_22BDB4C04())
  {
    v0 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
    sub_22BB36D64(v0);
    if (sub_22BDB4C04())
    {
      sub_22BB39610();
      static FeedbackLearning.FlowExpressionValue.FlowExpressionType.== infix(_:_:)();
      if (v1)
      {
        v2 = type metadata accessor for FeedbackLearning.FlowExpression(0);
        sub_22BB31A38(*(v2 + 20));
        sub_22BCF10EC();
        if (v3)
        {
          sub_22BB31A38(*(v2 + 24));

          sub_22BCF1134();
        }
      }
    }
  }
}

uint64_t sub_22BD20310()
{
  v2 = sub_22BBB79D8();
  v4 = *(v3(v2) + 20);
  v5 = sub_22BDB4C34();
  v6 = sub_22BB2F330(v5);
  v8 = *(v7 + 16);

  return v8(v0, v1 + v4, v6);
}

uint64_t sub_22BD203A0(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 24));
}

uint64_t FeedbackLearning.FlowTask.taskEvents.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeedbackLearning.FlowTask(0) + 28));
}

uint64_t FeedbackLearning.FlowTask.actionEvents.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeedbackLearning.FlowTask(0) + 32));
}

void FeedbackLearning.FlowTask.originProgramStatementIds.getter()
{
  sub_22BB30F94();
  v2 = type metadata accessor for FeedbackLearning.FlowExpression(0);
  v3 = sub_22BB30434(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  v10 = v9 - v8;
  v11 = sub_22BDB4C34();
  v12 = sub_22BB30444(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB30574();
  v17 = sub_22BB52E94();
  v18 = *(v0 + *(type metadata accessor for FeedbackLearning.FlowTask(v17) + 24));
  v19 = *(v18 + 16);
  if (v19)
  {
    v28 = MEMORY[0x277D84F90];
    sub_22BD27F28();
    v20 = *(v5 + 80);
    sub_22BB2F390();
    v22 = v18 + v21;
    v27 = *(v5 + 72);
    do
    {
      sub_22BB323D0();
      sub_22BD1FA4C();
      (*(v14 + 16))(v1, v10, v11);
      sub_22BB38E5C();
      sub_22BD2EAAC();
      v24 = *(v28 + 16);
      v23 = *(v28 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_22BB2F158(v23);
        sub_22BD27F28();
      }

      *(v28 + 16) = v24 + 1;
      v25 = *(v14 + 80);
      sub_22BB2F390();
      (*(v14 + 32))(v28 + v26 + *(v14 + 72) * v24, v1, v11);
      v22 += v27;
      --v19;
    }

    while (v19);
  }

  sub_22BBB2394();
  sub_22BB314EC();
}

void static FeedbackLearning.FlowTask.== infix(_:_:)()
{
  sub_22BB35F54();
  if (sub_22BDB43B4())
  {
    v0 = type metadata accessor for FeedbackLearning.FlowTask(0);
    sub_22BB36D64(v0);
    if (sub_22BDB4C04())
    {
      sub_22BB31A38(v0[6]);
      sub_22BCF0818();
      if (v1)
      {
        sub_22BB31A38(v0[7]);
        sub_22BCF10EC();
        if (v2)
        {
          sub_22BB31A38(v0[8]);

          sub_22BCF1134();
        }
      }
    }
  }
}

uint64_t sub_22BD206DC(uint64_t a1, unint64_t a2)
{
  v110 = a1;
  v116 = sub_22BDB9954();
  v106 = *(v116 - 8);
  v3 = *(v106 + 64);
  MEMORY[0x28223BE20](v116);
  v115 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_22BDB9B14();
  v105 = *(v117 - 8);
  v5 = *(v105 + 64);
  MEMORY[0x28223BE20](v117);
  v123 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_22BDB9B54();
  v122 = *(v114 - 8);
  v7 = *(v122 + 64);
  MEMORY[0x28223BE20](v114);
  v113 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
  v9 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v120 = (&v103 - v10);
  v11 = sub_22BBE6DE0(&qword_27D8E6220, &unk_22BDCD7C0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v119 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v118 = &v103 - v15;
  v16 = &qword_27D8E60F0;
  v17 = sub_22BBE6DE0(&qword_27D8E60F0, &qword_22BDCD648);
  v128 = *(v17 - 8);
  v18 = *(v128 + 64);
  MEMORY[0x28223BE20](v17);
  v126 = (&v103 - v19);
  v20 = sub_22BDB4C34();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v135 = (&v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x28223BE20](v23);
  v137 = &v103 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = (&v103 - v28);
  MEMORY[0x28223BE20](v27);
  v31 = &v103 - v30;
  v32 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v104 = &v103 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v109 = &v103 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v108 = &v103 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = (&v103 - v41);
  MEMORY[0x28223BE20](v40);
  v112 = (&v103 - v43);
  v111 = a2;
  v44 = sub_22BDB9744();
  v45 = sub_22BBD7224(v44);

  v46 = *(v21 + 16);
  v21 += 16;
  v107 = v31;
  v47 = v31;
  v48 = v110;
  v46(v47, v110, v20);
  v132 = v29;
  v129 = v46;
  v46(v29, v48, v20);
  i = 0;
  v133 = *(v45 + 16);
  v134 = v45;
  v136 = v21 - 8;
  v130 = v21;
  v131 = (v21 - 8);
  v124 = (v21 + 16);
  v125 = v17;
  v127 = v42;
  while (v133 != i)
  {
    v44 = (v134 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * i);
    v50 = v126;
    sub_22BC5E5C4();
    v51 = v137;
    v129(v137, v50 + *(v17 + 48), v20);
    sub_22BD2EAAC();
    v52 = sub_22BDB4C04();
    v53 = v16;
    v54 = *v131;
    (*v131)(v51, v20);
    v54(v50, v20);
    if (v52)
    {
      sub_22BC5E5C4();
      v55 = *(v17 + 48);
      v56 = v50;
      v57 = v127;
      (*v124)(v127, v56, v20);
      sub_22BB336D0(v57, 0, 1, v20);
      sub_22BD2EAAC();
      v16 = v53;
      if (sub_22BB3AA28(v57, 1, v20) != 1)
      {
        sub_22BB58728(v57, &qword_27D8E27C0, &qword_22BDBCDF0);
        goto LABEL_9;
      }
    }

    else
    {
      v57 = v127;
      sub_22BB336D0(v127, 1, 1, v20);
      v16 = v53;
    }

    sub_22BB58728(v57, &qword_27D8E27C0, &qword_22BDBCDF0);
    ++i;
    v17 = v125;
  }

  i = v133;
LABEL_9:
  v58 = *(v134 + 16);
  v136 = v136 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v59 = v114;
  v60 = v113;
  v61 = v109;
  v62 = v108;
  if (i == v58)
  {
    v44 = *v131;
    (*v131)(v107, v20);
    v63 = 1;
    v64 = v112;
  }

  else
  {
    if (i >= v58)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      swift_unknownObjectRelease_n();
LABEL_37:
      sub_22BD942B8(v59, i, v61, v60);
      v97 = v96;
      v98 = v114;
      v99 = v113;
LABEL_44:
      swift_unknownObjectRelease();
      goto LABEL_45;
    }

    v65 = v134 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * i;
    v66 = v107;
    sub_22BD23A50(v108);
    v44 = *v131;
    (*v131)(v66, v20);
    sub_22BC5E5C4();
    if (sub_22BB3AA28(v61, 1, v20) == 1)
    {
      result = v44(v132, v20);
      __break(1u);
      return result;
    }

    v64 = v112;
    (*v124)(v112, v61, v20);
    sub_22BB58728(v62, &qword_27D8E27C0, &qword_22BDBCDF0);
    v63 = 0;
  }

  sub_22BB336D0(v64, v63, 1, v20);

  v44(v132, v20);
  v67 = v104;
  sub_22BC5E5C4();
  if (sub_22BB3AA28(v67, 1, v20) == 1)
  {
    v129(v135, v110, v20);
    if (sub_22BB3AA28(v67, 1, v20) != 1)
    {
      sub_22BB58728(v67, &qword_27D8E27C0, &qword_22BDBCDF0);
    }
  }

  else
  {
    (*v124)(v135, v67, v20);
  }

  v68 = sub_22BDB9744();
  v61 = 0;
  v69 = *(v68 + 16);
  v133 = (v122 + 32);
  v134 = v122 + 16;
  v132 = (v105 + 88);
  LODWORD(v131) = *MEMORY[0x277D1E6F8];
  v130 = (v122 + 8);
  v127 = (v105 + 96);
  v128 = v105 + 8;
  v125 = (v106 + 8);
  v126 = (v106 + 32);
LABEL_19:
  for (i = v123; ; (*v128)(i, v80))
  {
    v70 = v120;
    v71 = v121;
    if (v69)
    {
      if (--v69 >= *(v68 + 16))
      {
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v72 = v122;
      v73 = v68 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v69;
      v74 = *(v121 + 48);
      *v120 = v61;
      (*(v72 + 16))(v70 + v74, v73, v59);
      if (__OFADD__(v61++, 1))
      {
        goto LABEL_49;
      }

      v76 = v119;
      sub_22BC8D26C();
      v77 = v76;
      v78 = 0;
    }

    else
    {
      v77 = v119;
      v78 = 1;
    }

    sub_22BB336D0(v77, v78, 1, v71);
    v79 = v118;
    sub_22BC8D26C();
    if (sub_22BB3AA28(v79, 1, v71) == 1)
    {
      sub_22BB58728(v112, &qword_27D8E27C0, &qword_22BDBCDF0);

      v97 = 0;
      goto LABEL_46;
    }

    v129 = *v79;
    (*v133)(v60, &v79[*(v71 + 48)], v59);
    sub_22BDB9B24();
    i = v123;
    v80 = v117;
    v81 = (*v132)(v123, v117);
    if (v81 == v131)
    {
      break;
    }

    (*v130)(v60, v59);
  }

  (*v127)(i, v80);
  (*v126)(v115, i, v116);
  v82 = sub_22BDB9914();
  v60 = 0;
  v83 = *(v82 + 16);
  do
  {
    if (v83 == v60)
    {

      (*v125)(v115, v116);
      v60 = v113;
      v59 = v114;
      (*v130)(v113, v114);
      goto LABEL_19;
    }

    v84 = *(sub_22BDB89F4() - 8);
    v85 = v60 + 1;
    v86 = v82 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v60;
    v87 = v137;
    sub_22BDB8174();
    LOBYTE(v86) = sub_22BDB4C04();
    v44(v87, v20);
    v60 = v85;
  }

  while ((v86 & 1) == 0);

  i = v111;
  v88 = sub_22BDB9744();
  v59 = *(sub_22BDB9744() + 16);

  v89 = v129 + 1;
  if (__OFADD__(v129, 1))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v90 = v59 - v89;
  if (__OFSUB__(v59, v89))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v91 = *(v88 + 16);
  if (v91 < v90)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  sub_22BB8EC88(v90, v91, v88);
  v59 = v92;
  i = v93;
  v61 = v94;
  v60 = v95;

  if ((v60 & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_22BDBB6F4();
  swift_unknownObjectRetain_n();
  v100 = swift_dynamicCastClass();
  if (!v100)
  {
    swift_unknownObjectRelease();
    v100 = MEMORY[0x277D84F90];
  }

  v101 = *(v100 + 16);

  if (__OFSUB__(v60 >> 1, v61))
  {
    goto LABEL_54;
  }

  if (v101 != (v60 >> 1) - v61)
  {
    goto LABEL_55;
  }

  v97 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v98 = v114;
  v99 = v113;
  if (!v97)
  {
    v97 = MEMORY[0x277D84F90];
    goto LABEL_44;
  }

LABEL_45:
  (*v125)(v115, v116);
  (*v130)(v99, v98);
  sub_22BB58728(v112, &qword_27D8E27C0, &qword_22BDBCDF0);
LABEL_46:
  v44(v135, v20);
  return v97;
}

uint64_t sub_22BD215A0()
{
  FeedbackLearning.FlowTask.originProgramStatementIds.getter();
  sub_22BBBCB1C();
  v1 = v0;

  return v1 & 1;
}

uint64_t sub_22BD215F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v103 = a4;
  v107 = sub_22BDB81A4();
  v113 = *(v107 - 8);
  v7 = *(v113 + 64);
  MEMORY[0x28223BE20](v107);
  v106 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BDB43E4();
  v108 = *(v9 - 8);
  v10 = *(v108 + 64);
  MEMORY[0x28223BE20](v9);
  v115 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_22BDB9564();
  v97 = *(v112 - 8);
  v12 = *(v97 + 64);
  MEMORY[0x28223BE20](v112);
  v111 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_22BDB9B14();
  v114 = *(v124 - 8);
  v14 = *(v114 + 64);
  MEMORY[0x28223BE20](v124);
  v16 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22BBE6DE0(&qword_27D8E4328, &unk_22BDCC070);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v133 = &v97 - v19;
  v127 = type metadata accessor for FeedbackLearning.FlowActionEvent(0);
  v110 = *(v127 - 8);
  v20 = *(v110 + 64);
  MEMORY[0x28223BE20](v127);
  v123 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
  v22 = *(v131 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v131);
  v130 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v129 = &v97 - v26;
  v27 = sub_22BDB9B54();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v98 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v97 - v33;
  MEMORY[0x28223BE20](v32);
  v125 = &v97 - v35;
  v102 = a1;
  v36 = sub_22BD85C50(a1, a2);
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  v38 = *(v37 + 16);
  v132 = v28;
  v126 = v16;
  v101 = a3;
  v116 = v9;
  v100 = v22;
  v99 = v37;
  if (v38)
  {
    v134 = MEMORY[0x277D84F90];
    sub_22BB6FF1C();
    v39 = v134;
    v40 = v37 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v128 = *(v22 + 72);
    v41 = (v28 + 32);
    v42 = v27;
    do
    {
      sub_22BC5E5C4();
      v43 = v130;
      sub_22BC8D26C();
      v44 = *v41;
      (*v41)(v34, &v43[*(v131 + 48)], v42);
      v134 = v39;
      v45 = *(v39 + 16);
      if (v45 >= *(v39 + 24) >> 1)
      {
        sub_22BB6FF1C();
        v39 = v134;
      }

      *(v39 + 16) = v45 + 1;
      v44((v39 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v45), v34, v42);
      v40 += v128;
      --v38;
    }

    while (v38);
    v27 = v42;
    v28 = v132;
    v16 = v126;
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
  }

  v46 = *(v39 + 16);
  v47 = v133;
  v48 = v127;
  if (v46)
  {
    v50 = *(v28 + 16);
    v49 = v28 + 16;
    v51 = v39 + ((*(v49 + 64) + 32) & ~*(v49 + 64));
    v120 = *(v49 + 56);
    v121 = v50;
    v119 = (v114 + 88);
    v118 = *MEMORY[0x277D1E710];
    v109 = *MEMORY[0x277D1E7A0];
    v122 = v49;
    v117 = (v49 - 8);
    v105 = (v114 + 8);
    v114 += 96;
    v104 = (v113 + 32);
    v113 = v108 + 32;
    v108 = v97 + 32;
    v128 = MEMORY[0x277D84F90];
    v52 = v125;
    while (1)
    {
      v121(v52, v51, v27);
      sub_22BDB9B24();
      v53 = v124;
      v54 = (*v119)(v16, v124);
      if (v54 == v118)
      {
        (*v114)(v16, v53);
        v55 = v52;
        v56 = *v108;
        v57 = v111;
        v58 = v16;
        v59 = v112;
        (*v108)(v111, v58, v112);
        v60 = v115;
        sub_22BDB8F24();
        (*v117)(v55, v27);
        v61 = v57;
        v48 = v127;
        v56((v133 + *(v127 + 20)), v61, v59);
        type metadata accessor for FeedbackLearning.ActionValue(0);
        swift_storeEnumTagMultiPayload();
        v62 = v60;
        v47 = v133;
        (*v113)(v133, v62, v116);
        v63 = v47;
        v64 = v48;
      }

      else
      {
        if (v54 != v109)
        {
          (*v117)(v52, v27);
          sub_22BB336D0(v47, 1, 1, v48);
          (*v105)(v16, v53);
          goto LABEL_19;
        }

        (*v114)(v16, v53);
        v65 = v52;
        v66 = *v104;
        v67 = v106;
        v68 = v27;
        v69 = v107;
        (*v104)(v106, v16, v107);
        v70 = v115;
        sub_22BDB8F24();
        (*v117)(v65, v68);
        v71 = v67;
        v47 = v133;
        v72 = v69;
        v27 = v68;
        v73 = v127;
        v66((v133 + *(v127 + 20)), v71, v72);
        v48 = v73;
        type metadata accessor for FeedbackLearning.ActionValue(0);
        swift_storeEnumTagMultiPayload();
        (*v113)(v47, v70, v116);
        v63 = v47;
        v64 = v73;
      }

      sub_22BB336D0(v63, 0, 1, v64);
LABEL_19:
      if (sub_22BB3AA28(v47, 1, v48) == 1)
      {
        sub_22BB58728(v47, &qword_27D8E4328, &unk_22BDCC070);
        v16 = v126;
      }

      else
      {
        sub_22BD2EB00();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = v126;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v79 = *(v128 + 16);
          sub_22BD9117C();
          v128 = v80;
        }

        v75 = *(v128 + 16);
        if (v75 >= *(v128 + 24) >> 1)
        {
          sub_22BD9117C();
          v128 = v81;
        }

        v76 = v128;
        *(v128 + 16) = v75 + 1;
        v77 = v76 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
        v78 = *(v110 + 72);
        sub_22BD2EB00();
      }

      v52 = v125;
      v51 += v120;
      if (!--v46)
      {

        v28 = v132;
        goto LABEL_29;
      }
    }
  }

  v128 = MEMORY[0x277D84F90];
LABEL_29:
  v134 = v99;

  sub_22BD66C8C(v82);

  sub_22BD294B8(&v134);
  v83 = v100;

  v84 = v134;
  v85 = *(v134 + 16);
  if (v85)
  {
    v134 = MEMORY[0x277D84F90];
    sub_22BB6FF1C();
    v86 = v134;
    v87 = *(v83 + 80);
    v127 = v84;
    v88 = v84 + ((v87 + 32) & ~v87);
    v133 = *(v83 + 72);
    v89 = v27;
    v90 = (v28 + 32);
    v91 = v98;
    do
    {
      sub_22BC5E5C4();
      v92 = v130;
      sub_22BC8D26C();
      v93 = *v90;
      (*v90)(v91, &v92[*(v131 + 48)], v89);
      v134 = v86;
      v94 = *(v86 + 16);
      if (v94 >= *(v86 + 24) >> 1)
      {
        sub_22BB6FF1C();
        v86 = v134;
      }

      *(v86 + 16) = v94 + 1;
      v93((v86 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v94), v91, v89);
      v88 += v133;
      --v85;
    }

    while (v85);
  }

  else
  {

    v86 = MEMORY[0x277D84F90];
  }

  v95 = v103;
  sub_22BD1FA4C();
  result = type metadata accessor for FeedbackLearning.FlowExpression(0);
  *(v95 + *(result + 20)) = v86;
  *(v95 + *(result + 24)) = v128;
  return result;
}

uint64_t sub_22BD222F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_22BD44B04();
  v7 = v6;
  sub_22BD66840();
  sub_22BD22374(a2, v5, v7, v8, a3);
}

uint64_t sub_22BD22374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v129 = a4;
  v127 = sub_22BDB81A4();
  v124 = *(v127 - 8);
  v9 = *(v124 + 64);
  MEMORY[0x28223BE20](v127);
  v126 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_22BDB43E4();
  v123 = *(v134 - 8);
  v11 = *(v123 + 64);
  MEMORY[0x28223BE20](v134);
  v133 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_22BDB9564();
  v122 = *(v132 - 8);
  v13 = *(v122 + 64);
  MEMORY[0x28223BE20](v132);
  v131 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_22BDB9B14();
  v121 = *(v139 - 8);
  v15 = *(v121 + 64);
  MEMORY[0x28223BE20](v139);
  v142 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22BBE6DE0(&qword_27D8E4328, &unk_22BDCC070);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v138 = &v115 - v19;
  v143 = type metadata accessor for FeedbackLearning.FlowActionEvent(0);
  v130 = *(v143 - 8);
  v20 = *(v130 + 64);
  MEMORY[0x28223BE20](v143);
  v137 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
  v140 = *(v150 - 8);
  v22 = *(v140 + 64);
  v23 = MEMORY[0x28223BE20](v150);
  v136 = (&v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v135 = (&v115 - v25);
  v144 = sub_22BDB9B54();
  v151 = *(v144 - 8);
  v26 = *(v151 + 64);
  v27 = MEMORY[0x28223BE20](v144);
  v128 = &v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v141 = &v115 - v29;
  v30 = type metadata accessor for FeedbackLearning.FlowExpression(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v34 = &v115 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22BDB4C34();
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v148 = &v115 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v115 - v40;
  MEMORY[0x28223BE20](v39);
  v44 = *(a2 + 16);
  if (v44)
  {
    v118 = a1;
    v119 = a5;
    v45 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v120 = a2;
    v46 = a2 + v45;
    v47 = &v115 - v42;
    v48 = v43;
    v49 = v46 + *(type metadata accessor for FeedbackLearning.FlowExpressionValue(0) + 20);
    v146 = *(v48 + 16);
    v147 = v48 + 16;
    (v146)(v41, v49, v35);
    v50 = *(v48 + 32);
    v116 = v47;
    v115 = v50;
    v50(v47, v41, v35);
    v145 = *(v31 + 72);
    v117 = v48 + 32;
    v51 = (v48 + 8);
    v52 = MEMORY[0x277D84F90];
    v149 = v35;
    do
    {
      sub_22BD1FA4C();
      v53 = v148;
      (v146)(v148, v34, v35);
      if (*(a3 + 16) && (sub_22BBDAE68(), (v55 & 1) != 0))
      {
        v56 = *(*(a3 + 56) + 8 * v54);
        v57 = *v51;

        v57(v53, v35);
      }

      else
      {
        (*v51)(v53, v35);
        v56 = MEMORY[0x277D84F90];
      }

      sub_22BD2EAAC();
      v58 = *(v56 + 16);
      v59 = *(v52 + 16);
      if (__OFADD__(v59, v58))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);

        __break(1u);
        return result;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v59 + v58 > *(v52 + 24) >> 1)
      {
        sub_22BD910B0();
        v52 = v60;
      }

      if (*(v56 + 16))
      {
        v61 = *(v52 + 16);
        if ((*(v52 + 24) >> 1) - v61 < v58)
        {
          goto LABEL_49;
        }

        v62 = v52 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v61;
        swift_arrayInitWithCopy();

        if (v58)
        {
          v63 = *(v52 + 16);
          v64 = __OFADD__(v63, v58);
          v65 = v63 + v58;
          if (v64)
          {
            goto LABEL_50;
          }

          *(v52 + 16) = v65;
        }
      }

      else
      {

        if (v58)
        {
          goto LABEL_48;
        }
      }

      v46 += v145;
      --v44;
      v35 = v149;
    }

    while (v44);
    v152 = v52;

    sub_22BD66C8C(v66);

    sub_22BD294B8(&v152);

    v67 = v152;
    v68 = *(v152 + 16);
    v69 = v128;
    if (v68)
    {
      v152 = MEMORY[0x277D84F90];
      sub_22BB6FF1C();
      v70 = v152;
      v71 = v67 + ((*(v140 + 80) + 32) & ~*(v140 + 80));
      v72 = *(v140 + 72);
      v147 = v67;
      v148 = v72;
      v73 = (v151 + 32);
      v74 = v144;
      do
      {
        sub_22BC5E5C4();
        v75 = v136;
        sub_22BC8D26C();
        v76 = *v73;
        (*v73)(v69, v75 + *(v150 + 48), v74);
        v152 = v70;
        v77 = v69;
        v78 = *(v70 + 16);
        if (v78 >= *(v70 + 24) >> 1)
        {
          sub_22BB6FF1C();
          v74 = v144;
          v70 = v152;
        }

        *(v70 + 16) = v78 + 1;
        v76((v70 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v78), v77, v74);
        v71 += v148;
        --v68;
        v69 = v77;
      }

      while (v68);
    }

    else
    {

      v70 = MEMORY[0x277D84F90];
      v74 = v144;
    }

    v81 = *(v70 + 16);
    v83 = v141;
    v82 = v142;
    if (v81)
    {
      v84 = *(v151 + 16);
      v85 = v70 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
      v147 = *(v151 + 72);
      v148 = v84;
      v146 = (v121 + 88);
      LODWORD(v145) = *MEMORY[0x277D1E710];
      LODWORD(v129) = *MEMORY[0x277D1E7A0];
      v151 += 16;
      v140 = v151 - 8;
      v125 = (v121 + 8);
      v136 = (v121 + 96);
      v124 += 32;
      v135 = (v123 + 32);
      v128 = (v122 + 32);
      v150 = MEMORY[0x277D84F90];
      while (1)
      {
        (v148)(v83, v85, v74);
        v86 = v74;
        sub_22BDB9B24();
        v87 = v139;
        v88 = (*v146)(v82, v139);
        if (v88 == v145)
        {
          (*v136)(v82, v87);
          v89 = v82;
          v90 = v83;
          v91 = *v128;
          v92 = v131;
          v93 = v132;
          (*v128)(v131, v89, v132);
          v94 = v133;
          sub_22BDB8F24();
          (*v140)(v90, v86);
          v95 = v92;
          v96 = v138;
          v91(v138 + *(v143 + 20), v95, v93);
          v97 = v143;
          type metadata accessor for FeedbackLearning.ActionValue(0);
          swift_storeEnumTagMultiPayload();
          (*v135)(v96, v94, v134);
        }

        else
        {
          if (v88 != v129)
          {
            (*v140)(v83, v144);
            v104 = v138;
            v105 = v143;
            sub_22BB336D0(v138, 1, 1, v143);
            v106 = v82;
            v96 = v104;
            v97 = v105;
            (*v125)(v106, v87);
            goto LABEL_36;
          }

          (*v136)(v82, v87);
          v98 = v82;
          v99 = *v124;
          v100 = v126;
          v101 = v127;
          (*v124)(v126, v98, v127);
          v102 = v133;
          sub_22BDB8F24();
          (*v140)(v83, v144);
          v97 = v143;
          v103 = v100;
          v96 = v138;
          v99((v138 + *(v143 + 20)), v103, v101);
          type metadata accessor for FeedbackLearning.ActionValue(0);
          swift_storeEnumTagMultiPayload();
          (*v135)(v96, v102, v134);
        }

        sub_22BB336D0(v96, 0, 1, v97);
LABEL_36:
        if (sub_22BB3AA28(v96, 1, v97) == 1)
        {
          sub_22BB58728(v96, &qword_27D8E4328, &unk_22BDCC070);
        }

        else
        {
          sub_22BD2EB00();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = *(v150 + 16);
            sub_22BD9117C();
            v150 = v111;
          }

          v107 = *(v150 + 16);
          if (v107 >= *(v150 + 24) >> 1)
          {
            sub_22BD9117C();
            v150 = v112;
          }

          v108 = v150;
          *(v150 + 16) = v107 + 1;
          v109 = v108 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v107;
          sub_22BD2EB00();
        }

        v83 = v141;
        v82 = v142;
        v74 = v144;
        v85 += v147;
        if (!--v81)
        {
          goto LABEL_46;
        }
      }
    }

    v150 = MEMORY[0x277D84F90];
LABEL_46:
    v113 = v119;
    sub_22BD1FA4C();
    v114 = type metadata accessor for FeedbackLearning.FlowTask(0);
    v115(v113 + v114[5], v116, v149);
    *(v113 + v114[6]) = v120;
    *(v113 + v114[7]) = v70;
    *(v113 + v114[8]) = v150;
    sub_22BB336D0(v113, 0, 1, v114);
  }

  else
  {
    v79 = type metadata accessor for FeedbackLearning.FlowTask(0);

    return sub_22BB336D0(a5, 1, 1, v79);
  }
}

uint64_t sub_22BD2329C(uint64_t a1, uint64_t a2)
{
  v73 = sub_22BBE6DE0(&qword_27D8E60F0, &qword_22BDCD648);
  v4 = *(v73 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v73);
  v72 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v71 = &v63 - v9;
  MEMORY[0x28223BE20](v8);
  v70 = &v63 - v10;
  v11 = sub_22BBE6DE0(&qword_27D8E6100, &qword_22BDCD658);
  v68 = *(v11 - 8);
  v69 = v11;
  v12 = *(v68 + 64);
  MEMORY[0x28223BE20](v11);
  v65 = &v63 - v13;
  v76 = sub_22BBE6DE0(&qword_27D8E6108, &unk_22BDCD660);
  v14 = *(v76 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v76);
  v17 = &v63 - v16;
  v66 = a1;
  v18 = sub_22BDB9914();
  v19 = *(v18 + 16);
  if (v19)
  {
    v64 = v4;
    v67 = a2;
    v79 = MEMORY[0x277D84F90];
    sub_22BD285C8();
    v20 = v79;
    v75 = sub_22BDB89F4();
    v21 = *(v75 - 8);
    v74 = *(v21 + 16);
    v22 = *(v21 + 80);
    v63 = v18;
    v23 = v18 + ((v22 + 32) & ~v22);
    v24 = *(v21 + 72);
    do
    {
      v74(&v17[*(v76 + 48)], v23, v75);
      sub_22BDB8174();
      v79 = v20;
      v25 = *(v20 + 16);
      if (v25 >= *(v20 + 24) >> 1)
      {
        sub_22BD285C8();
        v20 = v79;
      }

      *(v20 + 16) = v25 + 1;
      v26 = v20 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v27 = *(v14 + 72);
      sub_22BC8D26C();
      v23 += v24;
      --v19;
    }

    while (v19);

    a2 = v67;
    v4 = v64;
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  v28 = v65;
  if (*(v20 + 16))
  {
    sub_22BBE6DE0(&qword_27D8E6110, &unk_22BDCE620);
    v29 = sub_22BDBB524();
  }

  else
  {
    v29 = MEMORY[0x277D84F98];
  }

  v79 = v29;
  v30 = 0;
  sub_22BD2E59C(v20, 1, &v79);
  v31 = v79;
  v32 = *(a2 + 16);
  v33 = MEMORY[0x277D84F90];
  if (v32)
  {
    v63 = 0;
    v64 = v79;
    v79 = MEMORY[0x277D84F90];
    sub_22BD28588();
    v33 = v79;
    v34 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v67 = *(v4 + 72);
    do
    {
      v76 = v33;
      sub_22BC5E5C4();
      v74 = *(v69 + 48);
      v35 = v71;
      sub_22BC5E5C4();
      v36 = v73;
      v75 = *(v73 + 48);
      v37 = sub_22BDB4C34();
      v38 = *(v37 - 8);
      (*(v38 + 32))(v28, v35, v37);
      v39 = v72;
      sub_22BC8D26C();
      (*(v38 + 16))(v74 + v28, &v39[*(v36 + 48)], v37);
      sub_22BD2EAAC();
      (*(v38 + 8))(v39, v37);
      v33 = v76;
      sub_22BD2EAAC();
      v79 = v33;
      v40 = *(v33 + 16);
      if (v40 >= *(v33 + 24) >> 1)
      {
        sub_22BD28588();
        v33 = v79;
      }

      *(v33 + 16) = v40 + 1;
      v41 = v33 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
      v42 = *(v68 + 72);
      sub_22BC8D26C();
      v34 += v67;
      --v32;
    }

    while (v32);
    v30 = v63;
    v31 = v64;
  }

  if (*(v33 + 16))
  {
    sub_22BBE6DE0(&qword_27D8E6118, &qword_22BDCD670);
    v43 = sub_22BDBB524();
  }

  else
  {
    v43 = MEMORY[0x277D84F98];
  }

  v79 = v43;
  sub_22BD2E15C(v33, 1, &v79);
  v44 = v79;
  if (v30)
  {
LABEL_37:

    __break(1u);
  }

  else
  {
    v79 = MEMORY[0x277D84FA0];
    v45 = sub_22BDB9914();

    sub_22BD1CF68(v45, &v79, v31);
    v47 = v46;

    v48 = *(v47 + 16);
    v49 = MEMORY[0x277D84F90];
    v50 = MEMORY[0x277D84F90];
    if (v48)
    {
      while (v48 <= *(v47 + 16))
      {
        v78 = *(v47 + 8 * v48 + 24);

        sub_22BD264F0(&v78, v44, &v77);

        v51 = v77;
        if (v77)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = *(v50 + 16);
            sub_22BD91244();
            v50 = v54;
          }

          v52 = *(v50 + 16);
          if (v52 >= *(v50 + 24) >> 1)
          {
            sub_22BD91244();
            v50 = v55;
          }

          *(v50 + 16) = v52 + 1;
          *(v50 + 8 * v52 + 32) = v51;
        }

        if (!--v48)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_30:

      v56 = 0;
      v78 = v49;
      v57 = *(v50 + 16);
      while (v57 != v56)
      {
        if (v56 >= *(v50 + 16))
        {
          __break(1u);
          goto LABEL_37;
        }

        v58 = v56 + 1;
        v59 = *(v50 + 8 * v56 + 32);

        sub_22BD66C08(v60);
        v56 = v58;
      }
    }

    v61 = v78;

    return v61;
  }

  return result;
}

uint64_t sub_22BD23A50@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22BDB4C34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BBE6DE0(&qword_27D8E60F0, &qword_22BDCD648);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  sub_22BC5E5C4();
  (*(v3 + 16))(v6, &v10[*(v7 + 48)], v2);
  sub_22BD2EAAC();
  v11 = sub_22BDB4C04();
  v12 = *(v3 + 8);
  v12(v6, v2);
  v12(v10, v2);
  if ((v11 & 1) == 0)
  {
    return sub_22BB336D0(a1, 1, 1, v2);
  }

  sub_22BC5E5C4();
  v13 = *(v7 + 48);
  (*(v3 + 32))(a1, v10, v2);
  sub_22BB336D0(a1, 0, 1, v2);
  return sub_22BD2EAAC();
}

void *sub_22BD23C8C@<X0>(void (**a1)(char *, char *, uint64_t)@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v161 = a3;
  v162 = a1;
  v129 = a4;
  v5 = sub_22BBE6DE0(&qword_27D8E6120, &unk_22BDCD678);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v128 - v7);
  v139 = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
  v9 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v131 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BBE6DE0(&qword_27D8E60E8, &qword_22BDCD640);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v138 = &v128 - v13;
  v137 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  v130 = *(v137 - 8);
  v14 = *(v130 + 64);
  v15 = MEMORY[0x28223BE20](v137);
  v136 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v135 = &v128 - v17;
  v18 = sub_22BBE6DE0(&qword_27D8E3F38, &unk_22BDC1590);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v140 = &v128 - v20;
  v160 = sub_22BDB89F4();
  v142 = *(v160 - 8);
  v21 = *(v142 + 64);
  v22 = MEMORY[0x28223BE20](v160);
  v149 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v157 = &v128 - v25;
  MEMORY[0x28223BE20](v24);
  v148 = &v128 - v26;
  v141 = sub_22BDB80F4();
  v27 = *(v141 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v141);
  v134 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v145 = &v128 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v128 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v128 - v36;
  v38 = sub_22BDB4C34();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v150 = &v128 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v146 = &v128 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v165 = &v128 - v46;
  MEMORY[0x28223BE20](v45);
  v48 = &v128 - v47;
  v151 = a2;
  v49 = *a2;

  sub_22BDB8174();
  sub_22BBBCB1C();
  LOBYTE(a2) = v50;

  v163 = v39;
  v51 = v39 + 8;
  v167 = *(v39 + 8);
  result = v167(v48, v38);
  if (a2)
  {
    goto LABEL_50;
  }

  sub_22BDB89D4();
  v53 = v35;
  v54 = v37;
  v55 = v141;
  (*(v27 + 32))(v35, v54, v141);
  v56 = (*(v27 + 88))(v35, v55);
  LODWORD(v159) = *MEMORY[0x277D1DA78];
  v166 = v51;
  v57 = *MEMORY[0x277D1DAD0];
  v164 = v48;
  v58 = *MEMORY[0x277D1DA48];
  v59 = *MEMORY[0x277D1DAE8];
  v61 = *(v27 + 8);
  v60 = v27 + 8;
  v144 = v61;
  result = (v61)(v53, v55);
  v62 = v56 == v159 || v56 == v57;
  v63 = v62 || v56 == v58;
  v64 = v63 || v56 == v59;
  v65 = v140;
  if (v64)
  {
    v66 = v162;
    v143 = v60;
    result = sub_22BDB6004();
    v169 = *result;
    v67 = v169;
    v168 = MEMORY[0x277D84FA0];
    v68 = v169[3];
    v69 = v68 + 1;
    if (!__OFADD__(v68, 1))
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v67[2] < v69 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BD5DE58(isUniquelyReferenced_nonNull_native, v69);
        v67 = v169;
      }

      v71 = (*(v142 + 80) + 40) & ~*(v142 + 80);
      v159 = v67;
      v154 = v71;
      v72 = v158;
      sub_22BD5E348(v67 + 2, v67 + v71, v66);
      v158 = v72;
      sub_22BDB8174();
      v73 = v164;
      sub_22BBB97EC();
      v74 = v167;
      v167(v73, v38);
      sub_22BDB8174();
      sub_22BBB97EC();
      v74(v73, v38);
      v156 = v142 + 32;
      v162 = (v163 + 16);
      v147 = (v142 + 16);
      v153 = (v142 + 8);
      v133 = MEMORY[0x277D84F90];
      v132 = v8;
      v75 = v150;
      while (1)
      {
        if (v159[3] < 1)
        {
          sub_22BB336D0(v65, 1, 1, v160);

          sub_22BB58728(v65, &qword_27D8E3F38, &unk_22BDC1590);
          v127 = sub_22BD2631C(v133);

          *v129 = v127;
          return result;
        }

        v76 = v169;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22BD5E414();
          v76 = v169;
        }

        v159 = v76;
        v77 = v76[4];
        v152 = *(v142 + 72);
        v155 = *(v142 + 32);
        result = v155(v65, v76 + v154 + v152 * v77, v160);
        v78 = v159;
        v79 = v159[4];
        v80 = __OFADD__(v79, 1);
        v81 = v79 + 1;
        if (v80)
        {
          break;
        }

        v82 = v159[3];
        if (v81 >= v159[2])
        {
          v81 = 0;
        }

        v159[4] = v81;
        if (__OFSUB__(v82, 1))
        {
          goto LABEL_55;
        }

        v78[3] = v82 - 1;
        v83 = v160;
        sub_22BB336D0(v65, 0, 1, v160);
        v155(v148, v65, v83);
        sub_22BDB8174();
        v84 = v145;
        sub_22BDB89D4();
        sub_22BD26DE0(v84, v8);
        if (sub_22BB3AA28(v8, 1, v139) == 1)
        {
          sub_22BB58728(v8, &qword_27D8E6120, &unk_22BDCD678);
          v85 = 1;
          v86 = v138;
          v87 = v137;
        }

        else
        {
          sub_22BD2EB00();
          v87 = v137;
          v88 = *(v137 + 20);
          v89 = *v162;
          v86 = v138;
          (*v162)(&v138[v88], v146, v38);
          v90 = *(v87 + 24);
          sub_22BD2EB00();
          v89(v86, (v86 + v88), v38);
          v85 = 0;
        }

        v91 = v141;
        sub_22BB336D0(v86, v85, 1, v87);
        v144(v145, v91);
        v167(v146, v38);
        if (sub_22BB3AA28(v86, 1, v87) == 1)
        {
          sub_22BB58728(v86, &qword_27D8E60E8, &qword_22BDCD640);
        }

        else
        {
          sub_22BD2EB00();
          sub_22BD1FA4C();
          v92 = v133;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v124 = *(v92 + 16);
            sub_22BBD948C();
            v92 = v125;
          }

          v93 = *(v92 + 16);
          if (v93 >= *(v92 + 24) >> 1)
          {
            sub_22BBD948C();
            v92 = v126;
          }

          sub_22BD2EAAC();
          *(v92 + 16) = v93 + 1;
          v94 = (*(v130 + 80) + 32) & ~*(v130 + 80);
          v133 = v92;
          v95 = *(v130 + 72);
          sub_22BD2EB00();
        }

        v96 = v134;
        sub_22BDB89D4();
        sub_22BD24AC4();
        v98 = v97;
        result = (v144)(v96, v91);
        v99 = *(v98 + 16);
        if (v99)
        {
          v100 = 0;
          v101 = v98 + ((*(v163 + 80) + 32) & ~*(v163 + 80));
          while (v100 < *(v98 + 16))
          {
            v102 = *(v163 + 16);
            v102(v75, v101 + *(v163 + 72) * v100, v38);
            v102(v165, v75, v38);
            v103 = v164;
            sub_22BBB97EC();
            LOBYTE(v102) = v104;
            v105 = v103;
            v106 = v75;
            v107 = v167;
            v167(v105, v38);
            if (v102)
            {
              v108 = v161;
              v75 = v106;
              if (*(v161 + 16) && (sub_22BBDAE68(), (v110 & 1) != 0))
              {
                v111 = *(v108 + 56) + v109 * v152;
                v112 = v149;
                v113 = v160;
                (*v147)(v149, v111, v160);
                result = v155(v157, v112, v113);
                v114 = v159[3];
                v115 = v114 + 1;
                if (__OFADD__(v114, 1))
                {
                  goto LABEL_53;
                }

                v116 = v169;
                v117 = swift_isUniquelyReferenced_nonNull_native();
                if (v116[2] < v115 || (v117 & 1) == 0)
                {
                  sub_22BD5DE58(v117, v115);
                  v116 = v169;
                }

                v159 = v116;
                v119 = v157;
                v118 = v158;
                sub_22BD5E348(v116 + 2, v116 + v154, v157);
                v158 = v118;
                sub_22BDB8174();
                v120 = v164;
                sub_22BBB97EC();
                v121 = v120;
                v122 = v167;
                v167(v121, v38);
                v123 = v150;
                v122(v150, v38);
                v75 = v123;
                result = (*v153)(v119, v160);
              }

              else
              {
                result = v167(v106, v38);
              }
            }

            else
            {
              result = v107(v106, v38);
              v75 = v106;
            }

            if (v99 == ++v100)
            {
              goto LABEL_49;
            }
          }

          __break(1u);
LABEL_53:
          __break(1u);
          break;
        }

LABEL_49:

        (*v153)(v148, v160);
        v8 = v132;
        v65 = v140;
      }

      __break(1u);
LABEL_55:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_50:
    *v129 = MEMORY[0x277D84F90];
  }

  return result;
}

void sub_22BD24AC4()
{
  sub_22BB30F94();
  v376 = v2;
  v328 = sub_22BDB8984();
  v3 = sub_22BB30444(v328);
  v327 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB305A8();
  sub_22BB30B8C(v7);
  v330 = sub_22BDB8BA4();
  v8 = sub_22BB30444(v330);
  v329 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BB305A8();
  sub_22BB30B8C(v12);
  v332 = sub_22BDB8554();
  v13 = sub_22BB30444(v332);
  v331 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BB305A8();
  sub_22BB30B8C(v17);
  v334 = sub_22BDB8964();
  v18 = sub_22BB30444(v334);
  v333 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB305A8();
  sub_22BB30B8C(v22);
  v337 = sub_22BDB8B14();
  v23 = sub_22BB30444(v337);
  v336 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BB305A8();
  v335 = v27;
  v28 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  v29 = sub_22BB2F0C8(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BB30560();
  v339 = v32;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v33);
  sub_22BB2F39C();
  sub_22BB30B8C(v34);
  v343 = sub_22BDB86B4();
  v35 = sub_22BB30444(v343);
  v341 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BB305A8();
  sub_22BB30B8C(v39);
  v345 = sub_22BDB8BC4();
  v40 = sub_22BB30444(v345);
  v344 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BB305A8();
  sub_22BB30B8C(v44);
  v347 = sub_22BDB92E4();
  v45 = sub_22BB30444(v347);
  v346 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BB305A8();
  sub_22BB30B8C(v49);
  v349 = sub_22BDB8B84();
  v50 = sub_22BB30444(v349);
  v348 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22BB305A8();
  sub_22BB30B8C(v54);
  v351 = sub_22BDB8584();
  v55 = sub_22BB30444(v351);
  v350 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22BB305A8();
  sub_22BB30B8C(v59);
  v353 = sub_22BDB8474();
  v60 = sub_22BB30444(v353);
  v352 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22BB305A8();
  sub_22BB30B8C(v64);
  v355 = sub_22BDB84D4();
  v65 = sub_22BB30444(v355);
  v354 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  sub_22BB305A8();
  sub_22BB30B8C(v69);
  v372 = sub_22BDB9324();
  v70 = sub_22BB30444(v372);
  v357 = v71;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v70);
  sub_22BB305A8();
  v371 = v74;
  sub_22BB2F120();
  v75 = sub_22BDB9354();
  v76 = sub_22BB30444(v75);
  v363 = v77;
  v364 = v76;
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v76);
  sub_22BB305A8();
  v362 = v80;
  sub_22BB2F120();
  v81 = sub_22BDB8724();
  v82 = sub_22BB30444(v81);
  v360 = v83;
  v361 = v82;
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v82);
  sub_22BB305A8();
  v359[1] = v86;
  sub_22BB2F120();
  v87 = sub_22BDB8754();
  v88 = sub_22BB30444(v87);
  v366 = v89;
  v367 = v88;
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v88);
  sub_22BB305A8();
  v365 = v92;
  sub_22BB2F120();
  v93 = sub_22BDB89C4();
  v94 = sub_22BB30444(v93);
  v368 = v95;
  v369 = v94;
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v94);
  sub_22BB30574();
  sub_22BB3A434();
  v98 = sub_22BDB4C34();
  v99 = sub_22BB30444(v98);
  v374 = v100;
  v375 = v99;
  v102 = *(v101 + 64);
  MEMORY[0x28223BE20](v99);
  sub_22BB30560();
  v356 = v103;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v104);
  sub_22BB2F39C();
  v370 = v105;
  sub_22BB2F120();
  v106 = sub_22BDB80F4();
  v107 = sub_22BB30444(v106);
  v109 = v108;
  v111 = *(v110 + 64);
  MEMORY[0x28223BE20](v107);
  sub_22BB30560();
  v338 = v112;
  sub_22BB30B70();
  v114 = MEMORY[0x28223BE20](v113);
  v116 = &v326 - v115;
  v117 = MEMORY[0x28223BE20](v114);
  v119 = &v326 - v118;
  MEMORY[0x28223BE20](v117);
  sub_22BB3FBEC();
  MEMORY[0x28223BE20](v120);
  sub_22BB2F384();
  v373 = v121;
  sub_22BB30B70();
  v123 = MEMORY[0x28223BE20](v122);
  v125 = &v326 - v124;
  MEMORY[0x28223BE20](v123);
  v127 = &v326 - v126;
  v128 = *(v109 + 16);
  (v128)(&v326 - v126, v376, v106);
  v129 = (*(v109 + 88))(v127, v106);
  if (v129 == *MEMORY[0x277D1DAA8])
  {
    v130 = sub_22BB32E04();
    (v128)(v130);
    (*(v109 + 96))(v125, v106);
    v131 = sub_22BDB8944();
    sub_22BB314BC(v131);
    v133 = v132;
    v134 = *(v132 + 88);
    v135 = sub_22BB95B90();
    if (v136(v135) == *MEMORY[0x277D1DEE8])
    {
      v137 = *(v133 + 96);
      v138 = sub_22BB95B90();
      v139(v138);
      v140 = *v125;
    }

    else
    {
      v153 = *(v133 + 8);
      v154 = sub_22BB95B90();
      v155(v154);
    }

    goto LABEL_4;
  }

  v141 = v128;
  v376 = v127;
  v358 = v106;
  v359[0] = v109;
  if (v129 == *MEMORY[0x277D1D9F8])
  {
    v142 = v373;
    v125 = v376;
    v116 = v358;
    (v128)(v373, v376, v358);
    v128 = v359[0];
    v143 = *(v359[0] + 96);
    v144 = sub_22BB345A8();
    v145(v144);
    v146 = v375;
    v148 = v374 + 32;
    v147 = *(v374 + 32);
    v149 = v370;
    v147(v370, v142, v375);
    sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
    v150 = *(v148 + 40);
    v151 = *(v148 + 48);
    v152 = sub_22BB36904();
    *(v152 + 16) = xmmword_22BDBCBD0;
    v147(v152 + v142, v149, v146);
LABEL_12:
    (*(v128 + 8))(v125, v116);
    goto LABEL_13;
  }

  if (v129 == *MEMORY[0x277D1DAC0])
  {
    v156 = sub_22BB343A8();
    v157(v156);
    v158 = sub_22BB37DC4();
    v159(v158);
    v109 = v368;
    v160 = *(v368 + 32);
    v161 = sub_22BB2F324();
    v162(v161);
    sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
    v163 = sub_22BB311CC();
    sub_22BB36C14(v163, xmmword_22BDBCBD0);
    sub_22BDB89B4();
LABEL_11:
    v164 = *(v109 + 8);
    v165 = sub_22BB313A8();
    v166(v165);
    goto LABEL_12;
  }

  if (v129 == *MEMORY[0x277D1DAA0])
  {
    v167 = v358;
    (v128)(v373, v376, v358);
    v168 = sub_22BD2F7B0();
    v169(v168, v167);
    v170 = v365;
    v171 = v366;
    sub_22BB51840();
    v172 = sub_22BB2F324();
    v173 = v367;
    v174(v172);
    sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
    *(sub_22BB31598() + 16) = xmmword_22BDBCBC0;
    sub_22BDB8734();
    sub_22BDB8744();
    (*(v171 + 8))(v170, v173);
    v175 = *(v116 + 1);
    v176 = sub_22BB31528();
LABEL_18:
    v178(v176, v177);
    goto LABEL_13;
  }

  v106 = v358;
  if (v129 == *MEMORY[0x277D1DA98])
  {
    v179 = v376;
    (v128)(v373, v376, v358);
    v180 = sub_22BD2F7B0();
    v181(v180, v106);
    v182 = v360;
    v183 = *(v360 + 32);
    v184 = sub_22BB2F324();
    v185(v184);
    sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
    *(sub_22BB31598() + 16) = xmmword_22BDBCBC0;
    MEMORY[0x2318A26D0]();
    sub_22BDB8714();
    v186 = *(v182 + 8);
    v187 = sub_22BB313A8();
    v188(v187);
    v178 = *(v116 + 1);
    v176 = v179;
    v177 = v106;
    goto LABEL_18;
  }

  v109 = v359[0];
  if (v129 == *MEMORY[0x277D1DA50])
  {
    (v128)(v1, v376, v358);
    (*(v109 + 96))(v1, v106);
    v189 = *(v363 + 32);
    v190 = sub_22BB2F3F0();
    v191(v190);
    sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
    v192 = v374;
    v193 = (*(v374 + 80) + 32) & ~*(v374 + 80);
    v373 = *(v374 + 72);
    v194 = swift_allocObject();
    *(v194 + 16) = xmmword_22BDBCBD0;
    v370 = v193;
    MEMORY[0x2318A3300]();
    v195 = sub_22BDB9344();
    v196 = *(v195 + 16);
    if (v196)
    {
      v367 = v194;
      v377 = MEMORY[0x277D84F90];
      sub_22BD27F28();
      v197 = v377;
      v198 = *(v357 + 16);
      v199 = *(v357 + 80);
      sub_22BB2F390();
      v366 = v195;
      v201 = v195 + v200;
      v368 = *(v202 + 56);
      v369 = v203;
      v204 = (v202 - 8);
      v205 = (v192 + 32);
      v206 = v356;
      do
      {
        v207 = v371;
        v208 = v372;
        v209 = sub_22BB313A8();
        v369(v209);
        sub_22BDB9314();
        (*v204)(v207, v208);
        v377 = v197;
        v211 = *(v197 + 16);
        v210 = *(v197 + 24);
        if (v211 >= v210 >> 1)
        {
          sub_22BB2F158(v210);
          sub_22BD27F28();
          v197 = v377;
        }

        *(v197 + 16) = v211 + 1;
        (*v205)(v197 + v370 + v211 * v373, v206, v375);
        v201 += v368;
        --v196;
      }

      while (v196);

      v109 = v359[0];
      v106 = v358;
      v194 = v367;
    }

    else
    {

      v197 = MEMORY[0x277D84F90];
    }

    v377 = v194;
    sub_22BBB22A0(v197);
    (*(v363 + 8))(v362, v364);
    (*(v109 + 8))(v376, v106);
    goto LABEL_13;
  }

  if (v129 == *MEMORY[0x277D1DA78])
  {
    v212 = v376;
    v141(v119, v376, v358);
    v213 = sub_22BB38184();
    v214(v213);
    v215 = v354;
    v216 = *(v354 + 32);
    v217 = sub_22BB69B24();
    v218(v217);
    v219 = sub_22BDB84C4();
    v377 = sub_22BDA24FC(v219);

    sub_22BD2954C();

    v220 = *(v215 + 8);
    v221 = sub_22BB345A8();
    v222(v221);
    (*(v109 + 8))(v212, v106);
    goto LABEL_13;
  }

  v127 = v376;
  if (v129 == *MEMORY[0x277D1DA70])
  {
    v223 = sub_22BB38760();
    v224(v223);
    v225 = sub_22BB38184();
    v226(v225);
    v227 = v352;
    v228 = *(v352 + 32);
    v229 = sub_22BB69B24();
    v231 = v230(v229);
    MEMORY[0x2318A2430](v231);
    v232 = *(v227 + 8);
    v233 = sub_22BB2F324();
    v234(v233);
LABEL_4:
    (*(v109 + 8))(v127, v106);
    goto LABEL_13;
  }

  if (v129 == *MEMORY[0x277D1DA88])
  {
    v235 = sub_22BB38760();
    v236(v235);
    v237 = sub_22BB38184();
    v238(v237);
    sub_22BB92288(&v378);
    sub_22BB69B24();
    sub_22BB52808();
    v239();
    sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
    v240 = sub_22BB311CC();
    v241 = sub_22BB36C14(v240, xmmword_22BDBCBD0);
    MEMORY[0x2318A2530](v241);
LABEL_36:
    v249 = *(v116 + 1);
    v250 = sub_22BB53C48();
    v251(v250);
    goto LABEL_4;
  }

  if (v129 == *MEMORY[0x277D1DAD8])
  {
    v242 = sub_22BB38760();
    v243(v242);
    v244 = sub_22BB38184();
    v245(v244);
    sub_22BB92288(&v376);
    sub_22BB69B24();
    sub_22BB52808();
    v246();
    sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
    v247 = sub_22BB311CC();
    v248 = sub_22BB36C14(v247, xmmword_22BDBCBD0);
    MEMORY[0x2318A2B40](v248);
    goto LABEL_36;
  }

  if (v129 == *MEMORY[0x277D1DAD0])
  {
    goto LABEL_4;
  }

  if (v129 == *MEMORY[0x277D1DA48])
  {
    (v128)(v116, v376, v358);
    (*(v109 + 96))(v116, v106);
    v252 = v346;
    v253 = *(v346 + 32);
    sub_22BB35F34();
    sub_22BB52808();
    v255 = v254();
    v256 = MEMORY[0x2318A32A0](v255);
    v377 = sub_22BDA24FC(v256);

    sub_22BD2954C();

    v257 = *(v252 + 8);
    v258 = sub_22BB53C48();
    v259(v258);
    goto LABEL_4;
  }

  if (v129 == *MEMORY[0x277D1DAE8])
  {
    v260 = sub_22BB38760();
    v261(v260);
    v262 = sub_22BB38184();
    v263(v262);
    sub_22BB92288(&v370);
    sub_22BB69B24();
    sub_22BB52808();
    v264();
    sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
    v265 = sub_22BB311CC();
    v266 = sub_22BB36C14(v265, xmmword_22BDBCBD0);
    MEMORY[0x2318A2B80](v266);
    goto LABEL_36;
  }

  if (v129 == *MEMORY[0x277D1D9F0])
  {
    goto LABEL_4;
  }

  if (v129 != *MEMORY[0x277D1DA90])
  {
    if (v129 == *MEMORY[0x277D1DAC8])
    {
      v273 = sub_22BB343A8();
      v274(v273);
      v275 = sub_22BB37DC4();
      v276(v275);
      sub_22BB37A30(&v361);
      v277 = sub_22BB69B24();
      v278(v277);
      sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
      v279 = sub_22BB311CC();
      v280 = sub_22BB36C14(v279, xmmword_22BDBCBD0);
      MEMORY[0x2318A2AD0](v280);
    }

    else if (v129 == *MEMORY[0x277D1DAB0])
    {
      v288 = sub_22BB343A8();
      v289(v288);
      v290 = sub_22BB37DC4();
      v291(v290);
      sub_22BB37A30(v359);
      v292 = sub_22BB69B24();
      v293(v292);
      sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
      v294 = sub_22BB311CC();
      v295 = sub_22BB36C14(v294, xmmword_22BDBCBD0);
      MEMORY[0x2318A2920](v295);
    }

    else
    {
      if (v129 != *MEMORY[0x277D1DA80])
      {
        if (v129 == *MEMORY[0x277D1DAE0])
        {
          v304 = sub_22BB33268();
          v305(v304);
          v306 = sub_22BB586C0();
          v307(v306);
          v308 = v329;
          sub_22BB379C8();
          v309 = sub_22BB35F34();
          v310 = v330;
          v312 = v311(v309, v1, v330);
          MEMORY[0x2318A2B60](v312);
        }

        else
        {
          if (v129 != *MEMORY[0x277D1DAB8])
          {
            v323 = *MEMORY[0x277D1DAF0];
            v324 = *MEMORY[0x277D1DA68];
            v325 = v129 == *MEMORY[0x277D1DA40] || v129 == *MEMORY[0x277D1DA20];
            if (!v325)
            {
              v325 = v129 == *MEMORY[0x277D1DA38];
            }

            v109 = v359[0];
            v106 = v358;
            v127 = v376;
            goto LABEL_4;
          }

          v313 = sub_22BB33268();
          v314(v313);
          v315 = sub_22BB586C0();
          v316(v315);
          v308 = v327;
          sub_22BB379C8();
          v317 = sub_22BB35F34();
          v310 = v328;
          v319 = v318(v317, v1, v328);
          MEMORY[0x2318A2940](v319);
        }

        (*(v308 + 8))(v0, v310);
        v320 = *(v119 + 1);
        v321 = sub_22BB3AAD8();
        v322(v321);
        goto LABEL_13;
      }

      v296 = sub_22BB343A8();
      v297(v296);
      v298 = sub_22BB37DC4();
      v299(v298);
      sub_22BB37A30(&v356);
      v300 = sub_22BB69B24();
      v301(v300);
      sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
      v302 = sub_22BB311CC();
      v303 = sub_22BB36C14(v302, xmmword_22BDBCBD0);
      MEMORY[0x2318A2510](v303);
    }

    goto LABEL_11;
  }

  v267 = v338;
  v268 = v358;
  (v128)(v338, v376, v358);
  (*(v359[0] + 96))(v267, v268);
  v269 = *(v341 + 32);
  v270 = sub_22BB35F34();
  v271(v270, v267, v343);
  sub_22BDB86A4();
  v272 = v339;
  sub_22BC5E5C4();
  if (sub_22BB3AA28(v272, 1, v375) != 1)
  {
    v281 = v375;
    v283 = v374 + 32;
    v282 = *(v374 + 32);
    v284 = v370;
    v282(v370, v339, v375);
    sub_22BBE6DE0(&qword_27D8E5EE0, &unk_22BDCCD60);
    v285 = *(v283 + 40);
    v286 = *(v283 + 48);
    v287 = sub_22BB36904();
    *(v287 + 16) = xmmword_22BDBCBD0;
    v282(v287 + v0, v284, v281);
  }

  sub_22BB58728(v342, &qword_27D8E27C0, &qword_22BDBCDF0);
  (*(v341 + 8))(v340, v343);
  (*(v359[0] + 8))(v376, v358);
LABEL_13:
  sub_22BB314EC();
}

uint64_t sub_22BD2631C(uint64_t a1)
{
  v2 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  v17 = *(v2 - 8);
  v3 = *(v17 + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4);
  v18 = &v17 - v8;
  v9 = *(a1 + 16);
  if (v9 < 2)
  {
    return a1;
  }

  v10 = 0;
  v11 = v9 >> 1;
  for (i = v9 - 1; ; --i)
  {
    if (v10 == i)
    {
      goto LABEL_11;
    }

    v13 = *(a1 + 16);
    if (v10 >= v13)
    {
      break;
    }

    v14 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v15 = *(v17 + 72);
    result = sub_22BD1FA4C();
    if (i >= v13)
    {
      goto LABEL_14;
    }

    sub_22BD1FA4C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BD7DEAC(a1);
      a1 = v16;
    }

    result = sub_22BD2F6BC(v6, a1 + v14 + v15 * v10);
    if (i >= *(a1 + 16))
    {
      goto LABEL_15;
    }

    result = sub_22BD2F6BC(v18, a1 + v14 + v15 * i);
LABEL_11:
    if (v11 == ++v10)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_22BD264F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a3;
  v44 = a2;
  v48 = a1;
  v3 = sub_22BDB4C34();
  v47 = *(v3 - 8);
  v4 = *(v47 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v45 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = &v43 - v7;
  v8 = sub_22BBE6DE0(&qword_27D8E60E8, &qword_22BDCD640);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v43 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v43 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v43 - v30;
  v48 = *v48;
  sub_22BD39480(v48);
  if (sub_22BB3AA28(v14, 1, v15) == 1)
  {
    v32 = &qword_27D8E60E8;
    v33 = &qword_22BDCD640;
    v34 = v14;
    goto LABEL_5;
  }

  sub_22BD2EB00();
  sub_22BD811C0(v18, v44);
  sub_22BD2EAAC();
  if (sub_22BB3AA28(v26, 1, v3) == 1)
  {
    v32 = &qword_27D8E27C0;
    v33 = &qword_22BDBCDF0;
    v34 = v26;
LABEL_5:
    sub_22BB58728(v34, v32, v33);
    sub_22BD39480(v48);
    if (sub_22BB3AA28(v12, 1, v15) == 1)
    {
      sub_22BB58728(v12, &qword_27D8E60E8, &qword_22BDCD640);
      v35 = 1;
    }

    else
    {
      (*(v47 + 16))(v29, v12, v3);
      sub_22BD2EAAC();
      v35 = 0;
    }

    goto LABEL_9;
  }

  v36 = *(v47 + 32);
  v37 = v43;
  v36(v43, v26, v3);
  v36(v29, v37, v3);
  v35 = 0;
LABEL_9:
  sub_22BB336D0(v29, v35, 1, v3);
  sub_22BC8D26C();
  sub_22BC5E5C4();
  if (sub_22BB3AA28(v23, 1, v3) == 1)
  {
    sub_22BB58728(v31, &qword_27D8E27C0, &qword_22BDBCDF0);
    result = sub_22BB58728(v23, &qword_27D8E27C0, &qword_22BDBCDF0);
    *v46 = 0;
  }

  else
  {
    v39 = v47;
    v40 = v45;
    v41 = (*(v47 + 32))(v45, v23, v3);
    MEMORY[0x28223BE20](v41);
    *(&v43 - 2) = v40;
    v42 = sub_22BD659A4(sub_22BD2F69C, (&v43 - 4), v48);
    sub_22BB58728(v31, &qword_27D8E27C0, &qword_22BDBCDF0);
    *v46 = v42;
    return (*(v39 + 8))(v40, v3);
  }

  return result;
}

uint64_t sub_22BD26A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22BDB4C34();
  v7 = *(*(v6 - 8) + 16);
  v7(a3, a1, v6);
  v8 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  v7(a3 + *(v8 + 20), a2, v6);
  v9 = *(v8 + 24);
  return sub_22BD1FA4C();
}

uint64_t sub_22BD26AF4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23 = a1;
  v24 = a2;
  v2 = sub_22BDB4C34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BDB87F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22BDB9B14();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB9B24();
  if ((*(v13 + 88))(v16, v12) == *MEMORY[0x277D1E798])
  {
    (*(v13 + 96))(v16, v12);
    (*(v8 + 32))(v11, v16, v7);
    sub_22BDB8794();
    sub_22BBBCB1C();
    v18 = v17;
    (*(v3 + 8))(v6, v2);
    if (v18)
    {
      v19 = v24;
      sub_22BDB8794();
      (*(v8 + 8))(v11, v7);
      v20 = v19;
      v21 = 0;
    }

    else
    {
      (*(v8 + 8))(v11, v7);
      v20 = v24;
      v21 = 1;
    }

    return sub_22BB336D0(v20, v21, 1, v2);
  }

  else
  {
    sub_22BB336D0(v24, 1, 1, v2);
    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_22BD26DE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22BDB8BC4();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BDB84D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDB80F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v13);
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == *MEMORY[0x277D1DA78])
  {
    (*(v14 + 96))(v17, v13);
    (*(v9 + 32))(v12, v17, v8);
    v19 = sub_22BDB84C4();
    v28 = sub_22BDA24FC(v19);

    sub_22BD2954C();

    (*(v9 + 8))(v12, v8);
    *a2 = v28;
    v20 = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
  }

  else if (v18 == *MEMORY[0x277D1DAD0] || v18 == *MEMORY[0x277D1DA48])
  {
    (*(v14 + 8))(v17, v13);
    v20 = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
  }

  else
  {
    if (v18 != *MEMORY[0x277D1DAE8])
    {
      v25 = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
      sub_22BB336D0(a2, 1, 1, v25);
      return (*(v14 + 8))(v17, v13);
    }

    (*(v14 + 96))(v17, v13);
    v22 = v27;
    v23 = (*(v27 + 32))(v7, v17, v4);
    MEMORY[0x2318A2B80](v23);
    (*(v22 + 8))(v7, v4);
    v20 = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
  }

  swift_storeEnumTagMultiPayload();
  return sub_22BB336D0(a2, 0, 1, v20);
}

uint64_t sub_22BD271CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22BBE6DE0(&qword_27D8E3EA0, &qword_22BDC1370);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - v4;
  sub_22BCB5EE0();
  v6 = sub_22BDB5B14();
  if (sub_22BB3AA28(v5, 1, v6) == 1)
  {
    sub_22BB58728(v5, &qword_27D8E3EA0, &qword_22BDC1370);
    v7 = 1;
  }

  else
  {
    sub_22BDB5AE4();
    (*(*(v6 - 8) + 8))(v5, v6);
    v7 = 0;
  }

  v8 = sub_22BDB4C34();
  return sub_22BB336D0(a1, v7, 1, v8);
}

uint64_t sub_22BD27320(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  sub_22BB35F54();
  if (v9 < v8 || (v10 = (a4)(0), result = sub_22BB2F330(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    sub_22BB391C0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    sub_22BB391C0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_22BD27424(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_22BB308A8(a3, result);
  }

  return result;
}

char *sub_22BD2752C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_22BB308A8(a3, result);
  }

  return result;
}

char *sub_22BD278BC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return sub_22BB308A8(a3, result);
  }

  return result;
}

uint64_t sub_22BD278F0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_22BB35F54();
  if (v7 < v6 || (v8 = sub_22BB3AAD8(), v10 = sub_22BBE6DE0(v8, v9), result = sub_22BB2F330(v10), v4 + *(v12 + 72) * v3 <= a3))
  {
    v13 = sub_22BB3AAD8();
    sub_22BBE6DE0(v13, v14);
    sub_22BB391C0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v4)
  {
    sub_22BB391C0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_22BD27A00(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

void sub_22BD27A40()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD27A98()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD27AF0()
{
  v1 = *v0;
  sub_22BD288FC();
  *v0 = v2;
}

char *sub_22BD27B30(char *a1, int64_t a2, char a3)
{
  result = sub_22BD28A58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22BD27B50()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD27BA8()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD27C00()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD27C58()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD27CB0()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD27D08()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD27D60()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD27DB8()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD27E10()
{
  v1 = *v0;
  sub_22BD288FC();
  *v0 = v2;
}

void sub_22BD27E50()
{
  v1 = *v0;
  sub_22BD288FC();
  *v0 = v2;
}

void sub_22BD27E90()
{
  v1 = *v0;
  sub_22BD288FC();
  *v0 = v2;
}

void sub_22BD27ED0()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD27F28()
{
  v1 = *v0;
  sub_22BB3ABD8();
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD27F70()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD27FC8()
{
  v1 = *v0;
  sub_22BB51890();
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD28010()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD28068()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD280C0()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD28118()
{
  v1 = *v0;
  sub_22BD29148();
  *v0 = v2;
}

void sub_22BD28178()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD281D0()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD28228()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD28280()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD282D8()
{
  v1 = *v0;
  sub_22BD288FC();
  *v0 = v2;
}

void sub_22BD28318()
{
  v1 = *v0;
  sub_22BD288FC();
  *v0 = v2;
}

void sub_22BD28358()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD283B0()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD28408()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD28460()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

char *sub_22BD284B8(char *a1, int64_t a2, char a3)
{
  result = sub_22BD28CD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22BD284D8()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD28530()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD28588()
{
  v1 = *v0;
  sub_22BD288FC();
  *v0 = v2;
}

void sub_22BD285C8()
{
  v1 = *v0;
  sub_22BD288FC();
  *v0 = v2;
}

void *sub_22BD28608(void *a1, int64_t a2, char a3)
{
  result = sub_22BD28DD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22BD28628()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void *sub_22BD28680(void *a1, int64_t a2, char a3)
{
  result = sub_22BD28F10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22BD286A0(char *a1, int64_t a2, char a3)
{
  result = sub_22BD29040(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22BD286C0()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD28718()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD28770()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD287C8()
{
  v1 = *v0;
  sub_22BD29148();
  *v0 = v2;
}

char *sub_22BD28808(char *a1, int64_t a2, char a3)
{
  result = sub_22BD2924C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_22BD28828()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD28880()
{
  v1 = *v0;
  sub_22BD2934C();
  *v0 = v2;
}

void sub_22BD288FC()
{
  sub_22BB30F94();
  sub_22BB70C08();
  if (v6)
  {
    sub_22BB3665C();
    if (v8 != v9)
    {
      sub_22BB368F8();
      if (v8)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_22BB30DA4();
    }
  }

  else
  {
    v7 = v3;
  }

  v10 = *(v0 + 16);
  if (v7 <= v10)
  {
    v11 = *(v0 + 16);
  }

  else
  {
    v11 = v7;
  }

  if (!v11)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  sub_22BBE6DE0(v4, v5);
  v12 = sub_22BB37494();
  v14 = sub_22BBE6DE0(v12, v13);
  sub_22BB30434(v14);
  v16 = *(v15 + 72);
  v17 = sub_22BB351C0();
  v18 = j__malloc_size(v17);
  if (!v16)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v18 - v2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_23;
  }

  v17[2] = v10;
  v17[3] = 2 * ((v18 - v2) / v16);
LABEL_18:
  v20 = sub_22BB37494();
  v22 = sub_22BBE6DE0(v20, v21);
  sub_22BB314BC(v22);
  v24 = *(v23 + 80);
  sub_22BB2F390();
  if (v1)
  {
    sub_22BD278F0(v0 + v25, v10, v17 + v25);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BBCC134();
  }

  sub_22BB314EC();
}

char *sub_22BD28A58(char *result, int64_t a2, char a3, char *a4)
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
    sub_22BBE6DE0(&qword_27D8E5FE0, &unk_22BDCD508);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void sub_22BD28BB8(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    sub_22BB3665C();
    if (v7 != v8)
    {
      sub_22BB368F8();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22BB30DA4();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_22BBE6DE0(&qword_27D8E2B48, &qword_22BDBD250);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_22BD28CD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_22BBE6DE0(&qword_27D8E61E8, &qword_22BDCD780);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22BD28DD8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_22BBE6DE0(&qword_27D8E6060, &qword_22BDCD590);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22BBE6DE0(&qword_27D8E6068, &qword_22BDCD598);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22BD28F10(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_22BBE6DE0(&qword_27D8E6028, &qword_22BDCD558);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22BBE6DE0(&qword_27D8E6030, &unk_22BDCD560);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22BD29040(char *result, int64_t a2, char a3, char *a4)
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
    sub_22BBE6DE0(&qword_27D8E5FF8, &qword_22BDCD528);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_22BD29148()
{
  sub_22BB70C08();
  if (v5)
  {
    sub_22BB3665C();
    if (v7 != v8)
    {
      sub_22BB368F8();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_22BB30DA4();
    }
  }

  else
  {
    v6 = v2;
  }

  v9 = v0[2];
  if (v6 <= v9)
  {
    v10 = v0[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    sub_22BBE6DE0(v3, v4);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 8);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v11 != v0 || &v0[v9 + 4] <= v11 + 4)
    {
      v14 = sub_22BB35464();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    v17 = sub_22BB37494();
    sub_22BBE6DE0(v17, v18);
    sub_22BB35464();
    swift_arrayInitWithCopy();
  }
}

char *sub_22BD2924C(char *result, int64_t a2, char a3, char *a4)
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
    sub_22BBE6DE0(&qword_27D8E6080, &qword_22BDCD5B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

void sub_22BD2934C()
{
  sub_22BB30F94();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v12)
  {
    sub_22BB3665C();
    if (v14 != v15)
    {
      sub_22BB368F8();
      if (v14)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_22BB30DA4();
    }
  }

  else
  {
    v13 = v1;
  }

  v16 = *(v9 + 16);
  if (v13 <= v16)
  {
    v17 = *(v9 + 16);
  }

  else
  {
    v17 = v13;
  }

  if (!v17)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  sub_22BBE6DE0(v2, v3);
  v18 = v7(0);
  sub_22BB30434(v18);
  v20 = *(v19 + 72);
  v21 = sub_22BB351C0();
  v22 = j__malloc_size(v21);
  if (!v20)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v22 - v0 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_23;
  }

  v21[2] = v16;
  v21[3] = 2 * ((v22 - v0) / v20);
LABEL_18:
  v24 = v7(0);
  sub_22BB314BC(v24);
  v26 = *(v25 + 80);
  sub_22BB2F390();
  if (v11)
  {
    sub_22BD27320(v9 + v27, v16, v21 + v27, v5);
    *(v9 + 16) = 0;
  }

  else
  {
    sub_22BBCC134();
  }

  sub_22BB314EC();
}

void sub_22BD294B8(uint64_t *a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
  sub_22BB2F0C8(v2);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22BDB1684(v3);
    v3 = v4;
  }

  sub_22BB3B6C8();
  sub_22BD295D0(v5);
  *a1 = v3;
}

void sub_22BD2954C()
{
  sub_22BB35760();
  v1 = sub_22BDB4C34();
  sub_22BB2F0C8(v1);
  v2 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22BDB169C(v2);
    v2 = v3;
  }

  sub_22BB3B6C8();
  sub_22BD296CC(v4);
  *v0 = v2;
}

void sub_22BD295D0(uint64_t a1)
{
  if (sub_22BB3DE90(a1) < v2)
  {
    if (v2 >= -1)
    {
      sub_22BB71FF4();
      if (v4 ^ v5 | v3)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
        v6 = sub_22BDBADC4();
        *(v6 + 16) = v1;
      }

      v7 = sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
      sub_22BB2F0C8(v7);
      v9 = *(v8 + 80);
      sub_22BB2F390();
      sub_22BB720AC();
      sub_22BD29C1C();
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22BB8D25C();
    sub_22BD297B0();
  }
}

void sub_22BD296CC(uint64_t a1)
{
  if (sub_22BB3DE90(a1) < v2)
  {
    if (v2 >= -1)
    {
      sub_22BB71FF4();
      if (v4 ^ v5 | v3)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22BDB4C34();
        v6 = sub_22BDBADC4();
        *(v6 + 16) = v1;
      }

      v7 = sub_22BDB4C34();
      sub_22BB2F0C8(v7);
      v9 = *(v8 + 80);
      sub_22BB2F390();
      sub_22BB720AC();
      sub_22BD2A4E4();
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22BB8D25C();
    sub_22BD299D8();
  }
}

void sub_22BD297B0()
{
  sub_22BB31014();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v36 = sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
  v8 = *(*(v36 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v36);
  v35 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v26 - v12);
  MEMORY[0x28223BE20](v11);
  v16 = (&v26 - v15);
  v28 = v5;
  if (v3 != v5)
  {
    v17 = *v1;
    v18 = *(v14 + 72);
    v19 = *v1 + v18 * (v3 - 1);
    v33 = -v18;
    v34 = v17;
    v20 = v7 - v3;
    v27 = v18;
    v21 = v17 + v18 * v3;
    while (2)
    {
      v31 = v19;
      v32 = v3;
      v29 = v21;
      v30 = v20;
      v22 = v20;
      do
      {
        sub_22BD2F790();
        sub_22BC5E5C4();
        sub_22BD2F790();
        sub_22BC5E5C4();
        v23 = *v16;
        v24 = *v13;
        sub_22BB58728(v13, &qword_27D8E42E0, &unk_22BDD03F0);
        sub_22BB58728(v16, &qword_27D8E42E0, &unk_22BDD03F0);
        if (v23 >= v24)
        {
          break;
        }

        if (!v34)
        {
          __break(1u);
          return;
        }

        sub_22BD2F790();
        sub_22BC8D26C();
        swift_arrayInitWithTakeFrontToBack();
        sub_22BB3AAD8();
        sub_22BD2F790();
        sub_22BC8D26C();
        v19 += v33;
        v21 += v33;
      }

      while (!__CFADD__(v22++, 1));
      v3 = v32 + 1;
      v19 = v31 + v27;
      v20 = v30 - 1;
      v21 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }

  sub_22BB376A8();
}

void sub_22BD299D8()
{
  sub_22BB31014();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_22BDB4C34();
  v9 = sub_22BB30444(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30560();
  v37 = v12;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v13);
  sub_22BB2F384();
  v40 = v14;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v15);
  sub_22BB2F39C();
  v39 = v17;
  v29 = v5;
  if (v3 != v5)
  {
    v18 = *v1;
    v38 = *(v16 + 16);
    v19 = *(v16 + 72);
    v20 = (v16 + 8);
    v21 = *v1 + v19 * (v3 - 1);
    v34 = -v19;
    v35 = (v16 + 32);
    v22 = v7 - v3;
    v36 = v18;
    v28 = v19;
    v23 = v18 + v19 * v3;
    while (2)
    {
      v32 = v21;
      v33 = v3;
      v30 = v23;
      v31 = v22;
      do
      {
        v38(v39, v23, v8);
        v38(v40, v21, v8);
        v24 = sub_22BDB4BF4();
        v25 = *v20;
        (*v20)(v40, v8);
        v25(v39, v8);
        if ((v24 & 1) == 0)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return;
        }

        v26 = *v35;
        (*v35)(v37, v23, v8);
        swift_arrayInitWithTakeFrontToBack();
        v26(v21, v37, v8);
        v21 += v34;
        v23 += v34;
      }

      while (!__CFADD__(v22++, 1));
      v3 = v33 + 1;
      v21 = v32 + v28;
      v22 = v31 - 1;
      v23 = v30 + v28;
      if (v33 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }

  sub_22BB376A8();
}

void sub_22BD29C1C()
{
  sub_22BB31014();
  v117 = v0;
  v3 = v2;
  v5 = v4;
  v107 = v6;
  v124 = sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
  v7 = sub_22BB30444(v124);
  v114 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30560();
  v111 = v11;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v12);
  sub_22BB2F384();
  sub_22BB30B70();
  MEMORY[0x28223BE20](v13);
  sub_22BB2F384();
  v126 = v14;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v15);
  sub_22BB2F39C();
  v125 = v16;
  v17 = v5[1];
  v116 = v5;
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_101:
    v118 = v19;
    v19 = *v107;
    if (!*v107)
    {
      goto LABEL_141;
    }

    v1 = v117;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v91 = (v118 + 16);
      for (i = *(v118 + 2); i >= 2; *v91 = i)
      {
        if (!*v116)
        {
          goto LABEL_138;
        }

        v93 = &v118[16 * i];
        v94 = *v93;
        v95 = &v91[2 * i];
        v96 = *v95;
        v97 = *(v95 + 1);
        v98 = sub_22BB8AB98(*v116);
        sub_22BD2ADC0(v98, v99, v100, v19, v101, v102, v103, v104, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117);
        if (v1)
        {
          break;
        }

        if (v97 < v94)
        {
          goto LABEL_126;
        }

        if (i - 2 >= *v91)
        {
          goto LABEL_127;
        }

        *v93 = v94;
        *(v93 + 1) = v97;
        v105 = *v91 - i;
        if (*v91 < i)
        {
          goto LABEL_128;
        }

        i = *v91 - 1;
        sub_22BDB12C0(v95 + 16, v105, v95);
      }

LABEL_99:

      sub_22BB376A8();
      return;
    }

LABEL_135:
    v118 = sub_22BDB12A8(v118);
    goto LABEL_103;
  }

  v106 = v3;
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v108 = v18;
    if (v18 + 1 < v17)
    {
      v118 = v19;
      v119 = v18 + 1;
      v22 = *v116;
      v23 = *(v114 + 72);
      v19 = *v116 + v23 * v21;
      sub_22BC5E5C4();
      sub_22BC5E5C4();
      v112 = *v126;
      v113 = *v125;
      sub_22BB58728(v126, &qword_27D8E42E0, &unk_22BDD03F0);
      sub_22BB58728(v125, &qword_27D8E42E0, &unk_22BDD03F0);
      v24 = v20 + 2;
      v115 = v23;
      v25 = v22 + v23 * (v20 + 2);
      while (1)
      {
        v26 = v24;
        if (++v119 >= v17)
        {
          break;
        }

        sub_22BC5E5C4();
        sub_22BC5E5C4();
        v1 = *v125;
        v27 = *v126;
        sub_22BB58728(v126, &qword_27D8E42E0, &unk_22BDD03F0);
        sub_22BB58728(v125, &qword_27D8E42E0, &unk_22BDD03F0);
        v25 += v23;
        v19 += v23;
        v24 = v26 + 1;
        if (v113 < v112 == v1 >= v27)
        {
          goto LABEL_9;
        }
      }

      v119 = v17;
LABEL_9:
      if (v113 >= v112)
      {
        v19 = v118;
        v21 = v119;
        v20 = v108;
      }

      else
      {
        v21 = v119;
        if (v119 < v108)
        {
          goto LABEL_132;
        }

        if (v108 >= v119)
        {
          v19 = v118;
          v20 = v108;
        }

        else
        {
          if (v17 >= v26)
          {
            v28 = v26;
          }

          else
          {
            v28 = v17;
          }

          v29 = v23 * (v28 - 1);
          v30 = v23 * v28;
          v1 = v108 * v23;
          v31 = v108;
          v20 = v108;
          do
          {
            if (v31 != --v21)
            {
              v32 = *v116;
              if (!*v116)
              {
                goto LABEL_139;
              }

              sub_22BC8D26C();
              v33 = v1 < v29 || v32 + v1 >= (v32 + v30);
              if (v33)
              {
                sub_22BB384A8();
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v1 != v29)
              {
                sub_22BB384A8();
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22BC8D26C();
              v20 = v108;
            }

            ++v31;
            v29 -= v23;
            v30 -= v23;
            v1 += v23;
          }

          while (v31 < v21);
          v19 = v118;
          v21 = v119;
        }
      }
    }

    v34 = v116[1];
    if (v21 < v34)
    {
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_131;
      }

      if (v21 - v20 < v106)
      {
        break;
      }
    }

LABEL_47:
    if (v21 < v20)
    {
      goto LABEL_130;
    }

    v121 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BD2F758();
      v19 = v89;
    }

    v47 = *(v19 + 16);
    v48 = v47 + 1;
    if (v47 >= *(v19 + 24) >> 1)
    {
      sub_22BD8F3C8();
      v19 = v90;
    }

    *(v19 + 16) = v48;
    v49 = v19 + 32;
    v50 = (v19 + 32 + 16 * v47);
    *v50 = v20;
    v50[1] = v21;
    v123 = *v107;
    if (!*v107)
    {
      goto LABEL_140;
    }

    if (v47)
    {
      v118 = v19;
      while (1)
      {
        v51 = v48 - 1;
        v52 = (v49 + 16 * (v48 - 1));
        v53 = (v19 + 16 * v48);
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v54 = *(v19 + 32);
          v55 = *(v19 + 40);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_68:
          if (v57)
          {
            goto LABEL_117;
          }

          v69 = *v53;
          v68 = v53[1];
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_120;
          }

          v73 = v52[1];
          v74 = v73 - *v52;
          if (__OFSUB__(v73, *v52))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v71, v74))
          {
            goto LABEL_125;
          }

          if (v71 + v74 >= v56)
          {
            if (v56 < v74)
            {
              v51 = v48 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v48 < 2)
        {
          goto LABEL_119;
        }

        v76 = *v53;
        v75 = v53[1];
        v64 = __OFSUB__(v75, v76);
        v71 = v75 - v76;
        v72 = v64;
LABEL_83:
        if (v72)
        {
          goto LABEL_122;
        }

        v78 = *v52;
        v77 = v52[1];
        v64 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v64)
        {
          goto LABEL_124;
        }

        if (v79 < v71)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v51 - 1 >= v48)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v116)
        {
          goto LABEL_137;
        }

        v83 = (v49 + 16 * (v51 - 1));
        v84 = *v83;
        v85 = v49;
        v86 = v51;
        v19 = v49 + 16 * v51;
        v1 = *(v19 + 8);
        v87 = v117;
        sub_22BD2ADC0(*v116 + *(v114 + 72) * *v83, *v116 + *(v114 + 72) * *v19, *v116 + *(v114 + 72) * v1, v123, v43, v44, v45, v46, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117);
        v117 = v87;
        if (v87)
        {
          goto LABEL_99;
        }

        if (v1 < v84)
        {
          goto LABEL_112;
        }

        v88 = *(v118 + 2);
        if (v86 > v88)
        {
          goto LABEL_113;
        }

        *v83 = v84;
        v83[1] = v1;
        if (v86 >= v88)
        {
          goto LABEL_114;
        }

        v48 = v88 - 1;
        sub_22BDB12C0((v19 + 16), v88 - 1 - v86, v19);
        v19 = v118;
        *(v118 + 2) = v88 - 1;
        v49 = v85;
        if (v88 <= 2)
        {
          goto LABEL_97;
        }
      }

      v58 = v49 + 16 * v48;
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_115;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_116;
      }

      v65 = v53[1];
      v66 = v65 - *v53;
      if (__OFSUB__(v65, *v53))
      {
        goto LABEL_118;
      }

      v64 = __OFADD__(v56, v66);
      v67 = v56 + v66;
      if (v64)
      {
        goto LABEL_121;
      }

      if (v67 >= v61)
      {
        v81 = *v52;
        v80 = v52[1];
        v64 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v64)
        {
          goto LABEL_129;
        }

        if (v56 < v82)
        {
          v51 = v48 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v17 = v116[1];
    v18 = v121;
    if (v121 >= v17)
    {
      goto LABEL_101;
    }
  }

  v35 = v20 + v106;
  if (__OFADD__(v20, v106))
  {
    goto LABEL_133;
  }

  if (v35 >= v34)
  {
    v35 = v116[1];
  }

  if (v35 < v20)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v21 == v35)
  {
    goto LABEL_47;
  }

  v118 = v19;
  v36 = *(v114 + 72);
  v37 = *v116 + v36 * (v21 - 1);
  v1 = -v36;
  v38 = v20 - v21;
  v122 = *v116;
  v109 = v36;
  v110 = v35;
  v39 = *v116 + v21 * v36;
LABEL_40:
  v120 = v21;
  v112 = v39;
  v113 = v38;
  v115 = v37;
  v40 = v37;
  while (1)
  {
    sub_22BC5E5C4();
    sub_22BC5E5C4();
    v41 = *v125;
    v42 = *v126;
    sub_22BB58728(v126, &qword_27D8E42E0, &unk_22BDD03F0);
    sub_22BB58728(v125, &qword_27D8E42E0, &unk_22BDD03F0);
    if (v41 >= v42)
    {
LABEL_45:
      v21 = v120 + 1;
      v37 = v115 + v109;
      v38 = v113 - 1;
      v39 = v112 + v109;
      if (v120 + 1 == v110)
      {
        v21 = v110;
        v19 = v118;
        v20 = v108;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v122)
    {
      break;
    }

    sub_22BC8D26C();
    sub_22BB345A8();
    swift_arrayInitWithTakeFrontToBack();
    sub_22BC8D26C();
    v40 += v1;
    v39 += v1;
    v33 = __CFADD__(v38++, 1);
    if (v33)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_22BD2A4E4()
{
  sub_22BB31014();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v120 = v7;
  v144 = sub_22BDB4C34();
  v8 = sub_22BB30444(v144);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BB30560();
  v123 = v11;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v12);
  sub_22BB2F384();
  v136 = v13;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v14);
  sub_22BB2F384();
  v143 = v15;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v16);
  sub_22BB2F39C();
  v142 = v18;
  v128 = v17;
  v129 = v6;
  v19 = v6[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_101:
    v1 = *v120;
    if (!*v120)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v133 = v21;
      v102 = v21 + 16;
      v103 = *(v21 + 2);
      while (v103 >= 2)
      {
        if (!*v129)
        {
          goto LABEL_139;
        }

        v104 = v2;
        v105 = &v133[16 * v103];
        v2 = *v105;
        v21 = &v102[2 * v103];
        v106 = *v21;
        v107 = *(v21 + 1);
        v108 = sub_22BB8AB98(*v129);
        sub_22BD2B248(v108, v109, v110, v1, v111, v112, v113, v114, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127);
        if (v104)
        {
          break;
        }

        if (v107 < v2)
        {
          goto LABEL_127;
        }

        if (v103 - 2 >= *v102)
        {
          goto LABEL_128;
        }

        *v105 = v2;
        v105[1] = v107;
        v115 = *v102 - v103;
        if (*v102 < v103)
        {
          goto LABEL_129;
        }

        v103 = *v102 - 1;
        sub_22BDB12C0(v21 + 16, v115, v21);
        *v102 = v103;
        v2 = 0;
      }

LABEL_111:

      sub_22BB376A8();
      return;
    }

LABEL_136:
    v21 = sub_22BDB12A8(v21);
    goto LABEL_103;
  }

  v117 = v4;
  v20 = 0;
  v141 = (v17 + 8);
  v140 = (v17 + 32);
  v21 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v20++;
    if (v20 < v19)
    {
      v119 = v2;
      v130 = v21;
      v134 = v19;
      v23 = *v129;
      v24 = *(v17 + 72);
      v1 = v22;
      v25 = *v129 + v24 * v20;
      v26 = *(v17 + 16);
      v27 = sub_22BB3A86C();
      v127 = v20;
      (v26)(v27);
      v125 = v26;
      (v26)(v143, v23 + v24 * v22, v144);
      LODWORD(v126) = sub_22BDB4BF4();
      v28 = *(v128 + 8);
      v29 = sub_22BB31528();
      v28(v29);
      v30 = sub_22BB721FC();
      v124 = v28;
      v28(v30);
      v31 = v134;
      v118 = v22;
      v32 = v22 + 2;
      v137 = v24;
      v21 = (v23 + v24 * (v22 + 2));
      while (1)
      {
        v33 = v32;
        if (++v20 >= v31)
        {
          break;
        }

        (v125)(v142, v21, v144);
        (v125)(v143, v25, v144);
        v34 = sub_22BDB4BF4() & 1;
        v1 = v141;
        (v28)(v143, v144);
        (v28)(v142, v144);
        v21 += v24;
        v25 += v24;
        v32 = v33 + 1;
        v31 = v134;
        if ((v126 & 1) != v34)
        {
          goto LABEL_9;
        }
      }

      v20 = v31;
LABEL_9:
      v2 = v119;
      if (v126)
      {
        v22 = v118;
        if (v20 < v118)
        {
          goto LABEL_133;
        }

        if (v118 >= v20)
        {
          v17 = v128;
          v21 = v130;
          goto LABEL_32;
        }

        v1 = v20;
        if (v31 >= v33)
        {
          v35 = v33;
        }

        else
        {
          v35 = v31;
        }

        v36 = v137 * (v35 - 1);
        v37 = v137 * v35;
        v38 = v118 * v137;
        v127 = v20;
        do
        {
          if (v22 != --v1)
          {
            v39 = *v129;
            if (!*v129)
            {
              goto LABEL_140;
            }

            v40 = *v140;
            (*v140)(v123, v39 + v38, v144);
            v41 = v38 < v36 || v39 + v38 >= (v39 + v37);
            if (v41)
            {
              sub_22BD2F77C();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v38 != v36)
            {
              sub_22BD2F77C();
              swift_arrayInitWithTakeBackToFront();
            }

            v40(v39 + v36, v123, v144);
          }

          ++v22;
          v36 -= v137;
          v37 -= v137;
          v38 += v137;
        }

        while (v22 < v1);
        v2 = v119;
        v20 = v127;
        v17 = v128;
      }

      else
      {
        v17 = v128;
      }

      v21 = v130;
      v22 = v118;
    }

LABEL_32:
    v42 = v129[1];
    if (v20 < v42)
    {
      if (__OFSUB__(v20, v22))
      {
        goto LABEL_132;
      }

      if (v20 - v22 < v117)
      {
        break;
      }
    }

LABEL_48:
    if (v20 < v22)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BD2F758();
      v21 = v100;
    }

    v59 = *(v21 + 2);
    v60 = v59 + 1;
    if (v59 >= *(v21 + 3) >> 1)
    {
      sub_22BD8F3C8();
      v21 = v101;
    }

    *(v21 + 2) = v60;
    v61 = v21 + 32;
    v62 = &v21[16 * v59 + 32];
    *v62 = v22;
    *(v62 + 1) = v20;
    v139 = *v120;
    if (!*v120)
    {
      goto LABEL_141;
    }

    if (v59)
    {
      v132 = v21;
      while (1)
      {
        v63 = v60 - 1;
        v64 = &v61[16 * v60 - 16];
        v65 = &v21[16 * v60];
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v66 = *(v21 + 4);
          v67 = *(v21 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_69:
          if (v69)
          {
            goto LABEL_118;
          }

          v81 = *v65;
          v80 = *(v65 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_121;
          }

          v85 = *(v64 + 1);
          v86 = v85 - *v64;
          if (__OFSUB__(v85, *v64))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v83, v86))
          {
            goto LABEL_126;
          }

          if (v83 + v86 >= v68)
          {
            if (v68 < v86)
            {
              v63 = v60 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v60 < 2)
        {
          goto LABEL_120;
        }

        v88 = *v65;
        v87 = *(v65 + 1);
        v76 = __OFSUB__(v87, v88);
        v83 = v87 - v88;
        v84 = v76;
LABEL_84:
        if (v84)
        {
          goto LABEL_123;
        }

        v90 = *v64;
        v89 = *(v64 + 1);
        v76 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v76)
        {
          goto LABEL_125;
        }

        if (v91 < v83)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v63 - 1 >= v60)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v129)
        {
          goto LABEL_138;
        }

        v95 = &v61[16 * v63 - 16];
        v96 = *v95;
        v21 = &v61[16 * v63];
        v97 = *(v21 + 1);
        sub_22BD2B248(*v129 + *(v128 + 72) * *v95, *v129 + *(v128 + 72) * *v21, *v129 + *(v128 + 72) * v97, v139, v55, v56, v57, v58, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127);
        if (v2)
        {
          goto LABEL_111;
        }

        if (v97 < v96)
        {
          goto LABEL_113;
        }

        v1 = 0;
        v2 = v61;
        v98 = *(v132 + 2);
        if (v63 > v98)
        {
          goto LABEL_114;
        }

        *v95 = v96;
        *(v95 + 1) = v97;
        if (v63 >= v98)
        {
          goto LABEL_115;
        }

        v60 = v98 - 1;
        sub_22BDB12C0(v21 + 16, v98 - 1 - v63, v21);
        v21 = v132;
        *(v132 + 2) = v98 - 1;
        v99 = v98 > 2;
        v61 = v2;
        v2 = 0;
        if (!v99)
        {
          goto LABEL_98;
        }
      }

      v70 = &v61[16 * v60];
      v71 = *(v70 - 8);
      v72 = *(v70 - 7);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_116;
      }

      v75 = *(v70 - 6);
      v74 = *(v70 - 5);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_117;
      }

      v77 = *(v65 + 1);
      v78 = v77 - *v65;
      if (__OFSUB__(v77, *v65))
      {
        goto LABEL_119;
      }

      v76 = __OFADD__(v68, v78);
      v79 = v68 + v78;
      if (v76)
      {
        goto LABEL_122;
      }

      if (v79 >= v73)
      {
        v93 = *v64;
        v92 = *(v64 + 1);
        v76 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v76)
        {
          goto LABEL_130;
        }

        if (v68 < v94)
        {
          v63 = v60 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v17 = v128;
    v19 = v129[1];
    if (v20 >= v19)
    {
      goto LABEL_101;
    }
  }

  v43 = v22 + v117;
  if (__OFADD__(v22, v117))
  {
    goto LABEL_134;
  }

  if (v43 >= v42)
  {
    v43 = v129[1];
  }

  if (v43 < v22)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v20 == v43)
  {
    goto LABEL_48;
  }

  v118 = v22;
  v119 = v2;
  v44 = *(v17 + 72);
  v138 = *(v17 + 16);
  v45 = *v129 + v44 * (v20 - 1);
  v46 = -v44;
  v47 = (v22 - v20);
  v131 = v21;
  v135 = *v129;
  v121 = v44;
  v122 = v43;
  v48 = *v129 + v20 * v44;
LABEL_41:
  v126 = v45;
  v127 = v20;
  v124 = v48;
  v125 = v47;
  v49 = v45;
  while (1)
  {
    v50 = sub_22BB3ADA8();
    v138(v50);
    (v138)(v143, v49, v144);
    v51 = sub_22BDB4BF4();
    v1 = v141;
    v52 = *v141;
    (*v141)(v143, v144);
    v52(v142, v144);
    if ((v51 & 1) == 0)
    {
LABEL_46:
      v20 = v127 + 1;
      v45 = v126 + v121;
      v47 = v125 - 1;
      v48 = v124 + v121;
      if (v127 + 1 == v122)
      {
        v20 = v122;
        v22 = v118;
        v21 = v131;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v135)
    {
      break;
    }

    v53 = *v140;
    (*v140)(v136, v48, v144);
    swift_arrayInitWithTakeFrontToBack();
    v54 = sub_22BB721FC();
    (v53)(v54);
    v49 += v46;
    v48 += v46;
    v41 = __CFADD__(v47++, 1);
    if (v41)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

void sub_22BD2ADC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB31014();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v83 = sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
  v31 = *(*(v83 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v83);
  v84 = (&v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  v85 = (&v75 - v34);
  v36 = *(v35 + 72);
  if (!v36)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v37 = v28 - v30;
  v38 = v28 - v30 == 0x8000000000000000 && v36 == -1;
  if (v38)
  {
    goto LABEL_60;
  }

  v39 = v26 - v28;
  if (v26 - v28 == 0x8000000000000000 && v36 == -1)
  {
    goto LABEL_61;
  }

  v77 = v20;
  v41 = v37 / v36;
  a10 = v30;
  v88 = v24;
  v42 = v39 / v36;
  if (v37 / v36 >= v39 / v36)
  {
    v57 = sub_22BB3A86C();
    sub_22BD278F0(v57, v58, v24);
    v59 = v24 + v42 * v36;
    v60 = -v36;
    v61 = v59;
    v79 = -v36;
    v80 = v24;
    v86 = v30;
LABEL_36:
    v76 = v61;
    v81 = v28 + v60;
    while (1)
    {
      if (v59 <= v24)
      {
        a10 = v28;
        v87 = v61;
        goto LABEL_58;
      }

      if (v28 <= v30)
      {
        break;
      }

      v78 = v61;
      v62 = v28;
      v63 = v26 + v60;
      v64 = v59 + v60;
      v65 = v85;
      v66 = v59;
      sub_22BC5E5C4();
      v67 = v84;
      sub_22BC5E5C4();
      v82 = *v65;
      v68 = v67;
      v69 = *v67;
      sub_22BB58728(v68, &qword_27D8E42E0, &unk_22BDD03F0);
      sub_22BB58728(v65, &qword_27D8E42E0, &unk_22BDD03F0);
      if (v82 < v69)
      {
        if (v26 < v62 || v63 >= v62)
        {
          v28 = v81;
          sub_22BB3B7F8();
          swift_arrayInitWithTakeFrontToBack();
          v61 = v78;
          v60 = v79;
          v24 = v80;
          v26 = v63;
          v30 = v86;
          v59 = v66;
        }

        else
        {
          v60 = v79;
          v61 = v78;
          v38 = v26 == v62;
          v24 = v80;
          v72 = v81;
          v28 = v81;
          v26 = v63;
          v30 = v86;
          v59 = v66;
          if (!v38)
          {
            sub_22BB3B7F8();
            v74 = v73;
            swift_arrayInitWithTakeBackToFront();
            v59 = v66;
            v28 = v72;
            v61 = v74;
          }
        }

        goto LABEL_36;
      }

      v70 = v26 < v66 || v63 >= v66;
      v28 = v62;
      if (v70)
      {
        sub_22BB345A8();
        sub_22BB3B7F8();
        swift_arrayInitWithTakeFrontToBack();
        v26 += v60;
        v59 = v64;
        v61 = v64;
        v60 = v79;
        v24 = v80;
        v30 = v86;
      }

      else
      {
        v61 = v64;
        v38 = v66 == v26;
        v26 += v60;
        v59 = v64;
        v60 = v79;
        v24 = v80;
        v30 = v86;
        if (!v38)
        {
          sub_22BB3B7F8();
          swift_arrayInitWithTakeBackToFront();
          v26 = v63;
          v59 = v64;
          v61 = v64;
        }
      }
    }

    a10 = v28;
    v87 = v76;
  }

  else
  {
    v43 = sub_22BB2F324();
    sub_22BD278F0(v43, v44, v24);
    v81 = v26;
    v82 = v24 + v41 * v36;
    v87 = v82;
    v45 = v30;
    while (v24 < v82 && v28 < v26)
    {
      v86 = v45;
      v47 = v36;
      v48 = v28;
      v49 = v85;
      sub_22BC5E5C4();
      v50 = v24;
      v51 = v84;
      sub_22BC5E5C4();
      v52 = *v49;
      v53 = *v51;
      sub_22BB58728(v51, &qword_27D8E42E0, &unk_22BDD03F0);
      sub_22BB58728(v49, &qword_27D8E42E0, &unk_22BDD03F0);
      if (v52 >= v53)
      {
        v36 = v47;
        v24 = v50 + v47;
        v54 = v86;
        if (v86 < v50 || v86 >= v24)
        {
          sub_22BB31F54();
          sub_22BB3B7F8();
          swift_arrayInitWithTakeFrontToBack();
          v28 = v48;
        }

        else
        {
          v28 = v48;
          if (v86 != v50)
          {
            sub_22BB31F54();
            sub_22BB3B7F8();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v88 = v50 + v47;
      }

      else
      {
        v36 = v47;
        v28 = v48 + v47;
        v54 = v86;
        v55 = v86 < v48 || v86 >= v28;
        v24 = v50;
        if (v55)
        {
          sub_22BB3B7F8();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v86 != v48)
        {
          sub_22BB3B7F8();
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v45 = v54 + v36;
      a10 = v45;
      v26 = v81;
    }
  }

LABEL_58:
  sub_22BCD3BE0(&a10, &v88, &v87);
  sub_22BB376A8();
}

void sub_22BD2B248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB31014();
  a19 = v21;
  a20 = v22;
  v83 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v82 = sub_22BDB4C34();
  v30 = *(*(v82 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v82);
  v80 = v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v79 = v71 - v34;
  v36 = *(v35 + 72);
  if (!v36)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v37 = v27 - v29 == 0x8000000000000000 && v36 == -1;
  if (v37)
  {
    goto LABEL_60;
  }

  v38 = v25 - v27;
  if (v25 - v27 == 0x8000000000000000 && v36 == -1)
  {
    goto LABEL_61;
  }

  v71[1] = v20;
  v40 = (v27 - v29) / v36;
  a10 = v29;
  v85 = v83;
  v77 = (v33 + 8);
  v78 = (v33 + 16);
  v41 = v38 / v36;
  if (v40 >= v38 / v36)
  {
    v75 = v29;
    v53 = v83;
    sub_22BD27320(v27, v38 / v36, v83, MEMORY[0x277D1C338]);
    v54 = v53 + v41 * v36;
    v55 = -v36;
    v56 = v54;
    v73 = -v36;
LABEL_36:
    v76 = v27 + v55;
    v57 = v25;
    v71[0] = v56;
    v74 = v27;
    while (1)
    {
      if (v54 <= v83)
      {
        a10 = v27;
        v84 = v56;
        goto LABEL_58;
      }

      if (v27 <= v75)
      {
        break;
      }

      v72 = v56;
      v81 = v57 + v55;
      v58 = v54 + v55;
      v59 = v79;
      v60 = *v78;
      v61 = sub_22BB721FC();
      v62 = v54;
      v63 = v82;
      (v60)(v61);
      v60(v80, v76, v63);
      LOBYTE(v60) = sub_22BDB4BF4();
      v64 = *v77;
      v65 = sub_22BB3ADA8();
      v64(v65);
      (v64)(v59, v63);
      if (v60)
      {
        v54 = v62;
        v25 = v81;
        if (v57 < v74 || v81 >= v74)
        {
          v27 = v76;
          swift_arrayInitWithTakeFrontToBack();
          v56 = v72;
          v55 = v73;
        }

        else
        {
          v69 = v72;
          v56 = v72;
          v37 = v57 == v74;
          v70 = v76;
          v27 = v76;
          v55 = v73;
          if (!v37)
          {
            sub_22BB3CE10();
            swift_arrayInitWithTakeBackToFront();
            v27 = v70;
            v56 = v69;
          }
        }

        goto LABEL_36;
      }

      v66 = v81;
      if (v57 < v62 || v81 >= v62)
      {
        sub_22BB31528();
        swift_arrayInitWithTakeFrontToBack();
        v57 = v66;
        v54 = v58;
        v56 = v58;
        v55 = v73;
        v27 = v74;
      }

      else
      {
        v56 = v58;
        v37 = v62 == v57;
        v57 = v81;
        v54 = v58;
        v55 = v73;
        v27 = v74;
        if (!v37)
        {
          sub_22BB31528();
          sub_22BB3CE10();
          swift_arrayInitWithTakeBackToFront();
          v57 = v66;
          v54 = v58;
          v56 = v58;
        }
      }
    }

    a10 = v27;
    v84 = v71[0];
  }

  else
  {
    v42 = v83;
    sub_22BD27320(v29, (v27 - v29) / v36, v83, MEMORY[0x277D1C338]);
    v76 = v42 + v40 * v36;
    v84 = v76;
    v81 = v25;
    while (v83 < v76 && v27 < v25)
    {
      v44 = v79;
      v45 = *v78;
      v46 = v82;
      (*v78)(v79, v27, v82);
      v45(v80, v83, v46);
      sub_22BB721FC();
      LOBYTE(v45) = sub_22BDB4BF4();
      v47 = v27;
      v48 = *v77;
      v49 = sub_22BB32E04();
      v48(v49);
      (v48)(v44, v46);
      if (v45)
      {
        v27 = v47 + v36;
        if (v29 < v47 || v29 >= v27)
        {
          sub_22BB3CE10();
          swift_arrayInitWithTakeFrontToBack();
          v25 = v81;
        }

        else
        {
          v25 = v81;
          if (v29 != v47)
          {
            sub_22BB3CE10();
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v27 = v47;
        v51 = v83 + v36;
        if (v29 < v83 || v29 >= v51)
        {
          swift_arrayInitWithTakeFrontToBack();
          v25 = v81;
        }

        else
        {
          v25 = v81;
          if (v29 != v83)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v85 = v51;
        v83 = v51;
      }

      v29 += v36;
      a10 = v29;
    }
  }

LABEL_58:
  sub_22BCD3CBC(&a10, &v85, &v84);
  sub_22BB376A8();
}

BOOL sub_22BD2B728(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22BDBB814();
  sub_22BDBAC54();
  v9 = sub_22BDBB834();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_22BDBB6D4() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_22BD2CAC4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

BOOL sub_22BD2B874(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v6 + 40);
  v8 = sub_22BDBB804();
  v9 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v6 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v10) == a2)
    {
      goto LABEL_6;
    }

    v8 = v10 + 1;
  }

  v12 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  sub_22BD2CC2C(a2, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v15;
LABEL_6:
  result = v11 == 0;
  *a1 = a2;
  return result;
}

void sub_22BD2B944()
{
  sub_22BB30F94();
  sub_22BB51360(v4);
  v5 = sub_22BDB43E4();
  v6 = sub_22BB30444(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  sub_22BB52EA4();
  sub_22BB30D8C();
  sub_22BBB9968(v9, v10);
  sub_22BB898A4();
  sub_22BB38B98();
  while (1)
  {
    sub_22BB53DA4(v11);
    if (v12)
    {
      v16 = *v26;
      swift_isUniquelyReferenced_nonNull_native();
      v17 = sub_22BB6BB34();
      v18(v17);
      v19 = sub_22BB3A2A8();
      sub_22BD2CD30(v19, v20, v21);
      v22 = sub_22BB54294();
      v23(v22);
      goto LABEL_7;
    }

    v13 = sub_22BB2F578();
    v3(v13);
    sub_22BB30D8C();
    sub_22BBB9968(&unk_28142DD40, v14);
    sub_22BB337C8();
    v15 = sub_22BB37080();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v24 = sub_22BB3E3B4();
  v1(v24);
  v25 = sub_22BB58AEC();
  v3(v25);
LABEL_7:
  sub_22BB314EC();
}

void sub_22BD2BAC0()
{
  sub_22BB30F94();
  sub_22BB51360(v4);
  v5 = sub_22BDB7B44();
  v6 = sub_22BB30444(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  sub_22BB52EA4();
  sub_22BB3A720();
  sub_22BBB9968(v9, v10);
  sub_22BB898A4();
  sub_22BB38B98();
  while (1)
  {
    sub_22BB53DA4(v11);
    if (v12)
    {
      v16 = *v26;
      swift_isUniquelyReferenced_nonNull_native();
      v17 = sub_22BB6BB34();
      v18(v17);
      v19 = sub_22BB3A2A8();
      sub_22BD2CFE0(v19, v20, v21);
      v22 = sub_22BB54294();
      v23(v22);
      goto LABEL_7;
    }

    v13 = sub_22BB2F578();
    v3(v13);
    sub_22BB3A720();
    sub_22BBB9968(&qword_27D8E3078, v14);
    sub_22BB337C8();
    v15 = sub_22BB37080();
    v1(v15);
    if (v0)
    {
      break;
    }

    v11 = v2 + 1;
  }

  v24 = sub_22BB3E3B4();
  v1(v24);
  v25 = sub_22BB58AEC();
  v3(v25);
LABEL_7:
  sub_22BB314EC();
}

uint64_t sub_22BD2BC3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22BBE6DE0(&qword_27D8E3A90, &qword_22BDC0610);
  result = sub_22BDBB304();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_22BBC0B54(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_22BDBB814();
    sub_22BDBAC54();
    result = sub_22BDBB834();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22BD2BE98(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22BBE6DE0(&qword_27D8E5FD8, &qword_22BDCD500);
  result = sub_22BDBB304();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v9 = (v3 + 56);
  v8 = *(v3 + 56);
  v10 = 1 << *(v3 + 32);
  v27 = v2;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = result + 56;
  if ((v11 & v8) == 0)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    if (v10 >= 64)
    {
      sub_22BBC0B54(0, (v10 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_22BDBB804();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22BD2C0BC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22BDB4C34();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_22BBE6DE0(&qword_27D8E6098, &unk_22BDCD5D0);
  result = sub_22BDBB304();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_22BBC0B54(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_22BBB9968(&qword_28142DD18, MEMORY[0x277D1C338]);
    result = sub_22BDBABA4();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22BD2C414(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22BDB43E4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_22BBE6DE0(&qword_27D8E61C0, &qword_22BDCD750);
  result = sub_22BDBB304();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_22BBC0B54(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_22BBB9968(&qword_28142DD50, MEMORY[0x277CC95F0]);
    result = sub_22BDBABA4();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22BD2C76C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22BDB7B44();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_22BBE6DE0(&qword_27D8E60B0, &qword_22BDCD5F8);
  result = sub_22BDBB304();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_22BBC0B54(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_22BBB9968(&qword_27D8E3070, MEMORY[0x277D1D608]);
    result = sub_22BDBABA4();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_22BD2CAC4(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_22BD2BC3C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_22BD2D70C(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_22BDBB814();
      sub_22BDBAC54();
      v17 = sub_22BDBB834();
      v18 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v17 & v18;
        if (((*(v15 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v19 = (*(v15 + 48) + 16 * a3);
        v20 = *v19 == a1 && v19[1] == a2;
        if (v20 || (sub_22BDBB6D4() & 1) != 0)
        {
          goto LABEL_19;
        }

        v17 = a3 + 1;
      }
    }

    sub_22BD2D290();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_22BDBB734();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_22BD2CC2C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22BD2BE98(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_22BD2D940(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      result = sub_22BDBB804();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_22BD2D3D0();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_22BDBB734();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_22BD2CD30(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_22BDB43E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22BD2C414(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_22BD2DB2C(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_22BBB9968(&qword_28142DD50, MEMORY[0x277CC95F0]);
      v15 = sub_22BDBABA4();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_22BBB9968(&unk_28142DD40, MEMORY[0x277CC95F0]);
        v17 = sub_22BDBABD4();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_22BD2D510();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_22BDBB734();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_22BD2CFE0(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_22BDB7B44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22BD2C76C(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_22BD2DE44(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_22BBB9968(&qword_27D8E3070, MEMORY[0x277D1D608]);
      v15 = sub_22BDBABA4();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_22BBB9968(&qword_27D8E3078, MEMORY[0x277D1D608]);
        v17 = sub_22BDBABD4();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_22BD2D510();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_22BDBB734();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void sub_22BD2D290()
{
  v1 = v0;
  sub_22BBE6DE0(&qword_27D8E3A90, &qword_22BDC0610);
  v2 = *v0;
  v3 = sub_22BDBB2F4();
  if (*(v2 + 16))
  {
    v4 = sub_22BB68F68();
    v6 = (v5 + 63) >> 6;
    if (v3 != v2 || v4 >= v2 + 56 + 8 * v6)
    {
      memmove(v4, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v3 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    sub_22BD2F79C();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_15:
        v19 = v16 | (v8 << 6);
        v20 = (*(v2 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = (*(v3 + 48) + 16 * v19);
        *v22 = *v20;
        v22[1] = v21;
      }

      while (v13);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        goto LABEL_17;
      }

      v18 = *(v2 + 56 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v3;
  }
}

void *sub_22BD2D3D0()
{
  v1 = v0;
  sub_22BBE6DE0(&qword_27D8E5FD8, &qword_22BDCD500);
  v2 = *v0;
  v3 = sub_22BDBB2F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void sub_22BD2D510()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2(0);
  sub_22BB30444(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = sub_22BB31528();
  sub_22BBE6DE0(v11, v12);
  v13 = *v0;
  v14 = sub_22BDBB2F4();
  if (*(v13 + 16))
  {
    v32 = v1;
    v15 = sub_22BB68F68();
    v17 = (v16 + 63) >> 6;
    if (v14 != v13 || v15 >= v13 + 56 + 8 * v17)
    {
      memmove(v15, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v14 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = *(v13 + 56);
    sub_22BD2F79C();
    v24 = v23 & v22;
    v26 = (v25 + 63) >> 6;
    v33 = v5 + 32;
    v34 = v5 + 16;
    if ((v23 & v22) != 0)
    {
      do
      {
        v27 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
LABEL_15:
        v30 = *(v5 + 72) * (v27 | (v19 << 6));
        (*(v5 + 16))(v10, *(v13 + 48) + v30, v3);
        (*(v5 + 32))(*(v14 + 48) + v30, v10, v3);
      }

      while (v24);
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v19 >= v26)
      {

        v1 = v32;
        goto LABEL_19;
      }

      v29 = *(v13 + 56 + 8 * v19);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v24 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_19:
    *v1 = v14;
    sub_22BB314EC();
  }
}

uint64_t sub_22BD2D70C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22BBE6DE0(&qword_27D8E3A90, &qword_22BDC0610);
  result = sub_22BDBB304();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_22BDBB814();

        sub_22BDBAC54();
        result = sub_22BDBB834();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_22BD2D940(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22BBE6DE0(&qword_27D8E5FD8, &qword_22BDCD500);
  result = sub_22BDBB304();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        result = sub_22BDBB804();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_25;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_22BD2DB2C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_22BDB43E4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_22BBE6DE0(&qword_27D8E61C0, &qword_22BDCD750);
  v10 = sub_22BDBB304();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_22BBB9968(&qword_28142DD50, MEMORY[0x277CC95F0]);
        result = sub_22BDBABA4();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}