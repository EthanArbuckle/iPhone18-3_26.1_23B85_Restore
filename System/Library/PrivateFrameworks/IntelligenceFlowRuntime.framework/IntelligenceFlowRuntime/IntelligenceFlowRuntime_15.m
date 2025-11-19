uint64_t sub_22BCC637C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_22BBE6DE0(&qword_27D8E4008, &unk_22BDC1810);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v84 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v87 = &v82 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v83 = &v82 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v82 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v88 = &v82 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v92 = &v82 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v98 = &v82 - v24;
  result = MEMORY[0x28223BE20](v23);
  v28 = *(v27 + 72);
  if (!v28)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  v29 = a2 - a1;
  v30 = a2 - a1 == 0x8000000000000000 && v28 == -1;
  if (v30)
  {
    goto LABEL_70;
  }

  v31 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_71;
  }

  v95 = result;
  v33 = v29 / v28;
  v101 = a1;
  v100 = a4;
  v34 = v31 / v28;
  if (v29 / v28 < v31 / v28)
  {
    v94 = &v82 - v26;
    sub_22BD2774C(a1, v29 / v28, a4);
    v90 = a3;
    v91 = a4 + v33 * v28;
    v99 = v91;
    v35 = v98;
    v36 = v95;
    v89 = v28;
    while (1)
    {
      if (a4 >= v91 || a2 >= a3)
      {
        goto LABEL_68;
      }

      v97 = a1;
      v98 = a2;
      v38 = v36;
      v39 = v94;
      sub_22BB3CD70(a2, v94, &qword_27D8E4008, &unk_22BDC1810);
      v96 = a4;
      sub_22BB3CD70(a4, v35, &qword_27D8E4008, &unk_22BDC1810);
      v40 = v92;
      sub_22BB3CD70(v39, v92, &qword_27D8E4008, &unk_22BDC1810);
      v93 = *v40;
      v41 = *(v40 + 8);
      v42 = *(v38 + 48);
      v43 = sub_22BDB9CB4();
      v44 = *(*(v43 - 8) + 8);
      v44(v40 + v42, v43);
      if (v41)
      {
        goto LABEL_19;
      }

      v45 = v88;
      sub_22BB3CD70(v35, v88, &qword_27D8E4008, &unk_22BDC1810);
      v46 = *(v95 + 48);
      if (*(v45 + 8))
      {
        break;
      }

      v50 = v45;
      v51 = *v45;
      v44(v50 + v46, v43);
      sub_22BB58728(v35, &qword_27D8E4008, &unk_22BDC1810);
      sub_22BB58728(v94, &qword_27D8E4008, &unk_22BDC1810);
      if (v93 >= v51)
      {
        goto LABEL_20;
      }

      v47 = v97;
      v48 = v89;
      a2 = &v98[v89];
      v52 = v97 < v98 || v97 >= a2;
      v36 = v95;
      a4 = v96;
      if (v52)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v90;
      }

      else
      {
        a3 = v90;
        if (v97 != v98)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

LABEL_29:
      a1 = &v47[v48];
      v101 = a1;
    }

    v44(v45 + v46, v43);
    v39 = v94;
LABEL_19:
    sub_22BB58728(v35, &qword_27D8E4008, &unk_22BDC1810);
    sub_22BB58728(v39, &qword_27D8E4008, &unk_22BDC1810);
LABEL_20:
    v47 = v97;
    v48 = v89;
    a4 = v96 + v89;
    v49 = v97 < v96 || v97 >= a4;
    v36 = v95;
    a2 = v98;
    if (v49)
    {
      swift_arrayInitWithTakeFrontToBack();
      a3 = v90;
    }

    else
    {
      a3 = v90;
      if (v97 != v96)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v100 = a4;
    goto LABEL_29;
  }

  sub_22BD2774C(a2, v31 / v28, a4);
  v53 = a4 + v34 * v28;
  v54 = -v28;
  v55 = v53;
  v96 = a4;
  v97 = a1;
  v86 = v18;
  v94 = -v28;
LABEL_40:
  v98 = a2;
  v88 = a2 + v54;
  v56 = a3;
  v57 = v55;
  v58 = v83;
  v90 = v55;
  while (1)
  {
    if (v53 <= a4)
    {
      v101 = v98;
      v99 = v57;
      goto LABEL_68;
    }

    if (v98 <= a1)
    {
      break;
    }

    v92 = v56;
    v93 = v53;
    v85 = v57;
    v91 = v53 + v54;
    sub_22BB3CD70(v53 + v54, v18, &qword_27D8E4008, &unk_22BDC1810);
    sub_22BB3CD70(v88, v58, &qword_27D8E4008, &unk_22BDC1810);
    v59 = v18;
    v60 = v58;
    v61 = v87;
    sub_22BB3CD70(v59, v87, &qword_27D8E4008, &unk_22BDC1810);
    v89 = *v61;
    v62 = *(v61 + 8);
    v63 = v95;
    v64 = *(v95 + 48);
    v65 = sub_22BDB9CB4();
    v66 = *(*(v65 - 8) + 8);
    v66(v61 + v64, v65);
    if (v62)
    {
      v67 = 0;
      a1 = v97;
      v68 = v60;
    }

    else
    {
      v69 = v84;
      sub_22BB3CD70(v60, v84, &qword_27D8E4008, &unk_22BDC1810);
      v70 = *(v63 + 48);
      v68 = v60;
      if (*(v69 + 8))
      {
        v66(v69 + v70, v65);
        v67 = 0;
      }

      else
      {
        v71 = *v69;
        v66(v69 + v70, v65);
        v67 = v89 < v71;
      }

      a1 = v97;
    }

    v72 = v86;
    v73 = v92;
    v74 = v92 + v94;
    v58 = v68;
    sub_22BB58728(v68, &qword_27D8E4008, &unk_22BDC1810);
    v75 = v72;
    sub_22BB58728(v72, &qword_27D8E4008, &unk_22BDC1810);
    a4 = v96;
    if (v67)
    {
      v81 = v73 < v98 || v74 >= v98;
      a3 = v74;
      if (v81)
      {
        a2 = v88;
        swift_arrayInitWithTakeFrontToBack();
        v55 = v85;
        v53 = v93;
        v54 = v94;
        v18 = v75;
      }

      else
      {
        v55 = v85;
        v30 = v73 == v98;
        a2 = v88;
        v53 = v93;
        v54 = v94;
        v18 = v75;
        if (!v30)
        {
          a2 = v88;
          swift_arrayInitWithTakeBackToFront();
          v53 = v93;
          v55 = v85;
        }
      }

      goto LABEL_40;
    }

    v76 = v73 < v93 || v74 >= v93;
    v77 = v74;
    if (v76)
    {
      v78 = v91;
      swift_arrayInitWithTakeFrontToBack();
      v56 = v74;
      v53 = v78;
      v57 = v78;
      v55 = v90;
      v18 = v72;
      v54 = v94;
    }

    else
    {
      v55 = v90;
      v79 = v91;
      v57 = v91;
      v30 = v93 == v73;
      v56 = v74;
      v53 = v91;
      v18 = v75;
      v54 = v94;
      if (!v30)
      {
        v80 = v77;
        swift_arrayInitWithTakeBackToFront();
        v55 = v90;
        v56 = v80;
        v53 = v79;
        v57 = v79;
      }
    }
  }

  v101 = v98;
  v99 = v55;
LABEL_68:
  sub_22BCD3BCC(&v101, &v100, &v99);
  return 1;
}

uint64_t sub_22BCC6B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22BDBA594();
  sub_22BB2F330(v7);
  (*(v8 + 16))(a1, a4);

  return a2;
}

uint64_t sub_22BCC6B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB4C34();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
}

uint64_t sub_22BCC6C18()
{
  sub_22BCC74B0();
}

uint64_t sub_22BCC6C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_22BBE6DE0(&qword_27D8E3FC8, &qword_22BDC17D0) + 48);
  v5 = *(sub_22BBE6DE0(&qword_27D8E3FD0, &qword_22BDC17D8) + 48);
  v6 = *(a1 + v4);
  result = sub_22BCC6B98(a2, a1);
  *(a2 + v5) = result;
  return result;
}

uint64_t sub_22BCC6CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_22BBE6DE0(&qword_27D8E3FD8, &qword_22BDC17E0) + 48);
  v5 = *(sub_22BBE6DE0(&qword_27D8E3F90, &unk_22BDC1798) + 48);
  v6 = *(a1 + v4);
  result = sub_22BCC6C18();
  *(a2 + v5) = result;
  return result;
}

uint64_t sub_22BCC6D50(uint64_t a1, char a2, uint64_t *a3)
{
  v54 = a3;
  v5 = type metadata accessor for FeedbackLearning.CandidateParameter(0);
  v48 = *(v5 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BBE6DE0(&qword_27D8E3F90, &unk_22BDC1798);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v52 = &v45 - v13;
  v51 = *(a1 + 16);
  if (!v51)
  {
  }

  v46 = v5;
  v14 = 0;
  v15 = *(v11 + 48);
  v49 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v50 = v15;
  while (v14 < *(a1 + 16))
  {
    v16 = v12;
    v17 = v52;
    sub_22BB3CD70(v49 + *(v12 + 72) * v14, v52, &qword_27D8E3F90, &unk_22BDC1798);
    sub_22BCC7414();
    v18 = *(v17 + v50);
    v19 = *v54;
    v27 = sub_22BD84634(v8);
    v28 = *(v19 + 16);
    v29 = (v20 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_18;
    }

    v31 = v20;
    if (*(v19 + 24) >= v30)
    {
      if ((a2 & 1) == 0)
      {
        sub_22BBE6DE0(&qword_27D8E3FF8, &qword_22BDC1800);
        sub_22BDBB4B4();
      }
    }

    else
    {
      v32 = v54;
      sub_22BD5C114(v30, a2 & 1, v21, v22, v23, v24, v25, v26, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
      v33 = *v32;
      v34 = sub_22BD84634(v8);
      if ((v31 & 1) != (v35 & 1))
      {
        goto LABEL_20;
      }

      v27 = v34;
    }

    v36 = *v54;
    if (v31)
    {
      sub_22BCC73B8(v8);
      v37 = v36[7];
      v38 = *(v37 + 8 * v27);
      *(v37 + 8 * v27) = v18;
    }

    else
    {
      v36[(v27 >> 6) + 8] |= 1 << v27;
      v39 = v36[6];
      v40 = *(v48 + 72);
      sub_22BCC7414();
      *(v36[7] + 8 * v27) = v18;
      v41 = v36[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_19;
      }

      v36[2] = v43;
    }

    ++v14;
    a2 = 1;
    v12 = v16;
    if (v51 == v14)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BCC708C@<X0>(uint64_t a1@<X8>)
{
  v51 = sub_22BBE6DE0(&qword_27D8E27E8, &qword_22BDBF4C0);
  sub_22BB2F330(v51);
  v4 = *(v3 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - v6;
  v8 = sub_22BDBA594();
  v9 = sub_22BB30444(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v16 = v15 - v14;
  v17 = sub_22BBE6DE0(&qword_27D8E27D8, &qword_22BDC0640);
  v18 = sub_22BB2F0C8(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30560();
  v53 = v21;
  sub_22BB30B70();
  result = MEMORY[0x28223BE20](v22);
  v25 = &v48 - v24;
  v26 = *v1;
  v27 = v1[1];
  v28 = v1[2];
  v29 = v1[3];
  v30 = v1[4];
  v48 = v7;
  v52 = v28;
  if (v30)
  {
    v50 = a1;
    v31 = v29;
LABEL_7:
    v49 = (v30 - 1) & v30;
    v32 = __clz(__rbit64(v30)) | (v31 << 6);
    v33 = (*(v26 + 48) + 16 * v32);
    v34 = *v33;
    v35 = v33[1];
    (*(v11 + 16))(v16, *(v26 + 56) + *(v11 + 72) * v32, v8);
    v36 = v51;
    v37 = *(v51 + 48);
    *v25 = v34;
    *(v25 + 1) = v35;
    v38 = v16;
    v39 = v36;
    (*(v11 + 32))(&v25[v37], v38, v8);
    sub_22BB336D0(v25, 0, 1, v39);

    v40 = v49;
    a1 = v50;
LABEL_8:
    *v1 = v26;
    v1[1] = v27;
    v41 = v53;
    v1[2] = v52;
    v1[3] = v29;
    v1[4] = v40;
    v42 = v1[5];
    v43 = v1[6];
    sub_22BB6BEE0(v25, v41, &qword_27D8E27D8, &qword_22BDC0640);
    v44 = 1;
    if (sub_22BB3AA28(v41, 1, v39) != 1)
    {
      v45 = v41;
      v46 = v48;
      sub_22BB6BEE0(v45, v48, &qword_27D8E27E8, &qword_22BDBF4C0);
      v42(v46);
      sub_22BB58728(v46, &qword_27D8E27E8, &qword_22BDBF4C0);
      v44 = 0;
    }

    v47 = sub_22BBE6DE0(&qword_27D8E2B58, &unk_22BDBD260);
    return sub_22BB336D0(a1, v44, 1, v47);
  }

  else
  {
    while (1)
    {
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v31 >= ((v28 + 64) >> 6))
      {
        v39 = v51;
        sub_22BB336D0(&v48 - v24, 1, 1, v51);
        v40 = 0;
        goto LABEL_8;
      }

      v30 = *(v27 + 8 * v31);
      ++v29;
      if (v30)
      {
        v50 = a1;
        v29 = v31;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22BCC73B8(uint64_t a1)
{
  v2 = type metadata accessor for FeedbackLearning.CandidateParameter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BCC7414()
{
  v1 = sub_22BB2F474();
  v3 = v2(v1);
  sub_22BB2F330(v3);
  v5 = *(v4 + 32);
  v6 = sub_22BB31F54();
  v7(v6);
  return v0;
}

uint64_t sub_22BCC7468(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BCC74B0()
{
  v1 = sub_22BB2F474();
  v3 = v2(v1);
  sub_22BB2F330(v3);
  v5 = *(v4 + 16);
  v6 = sub_22BB31F54();
  v7(v6);
  return v0;
}

uint64_t sub_22BCC7514()
{
  result = _s18ToolStepEvaluationVMa(319);
  if (v1 <= 0x3F)
  {
    result = _s23ParameterStepEvaluationVMa(319);
    if (v2 <= 0x3F)
    {
      result = _s20ActionStepEvaluationVMa(319);
      if (v3 <= 0x3F)
      {
        result = _s19ValueStepEvaluationVMa(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_22BCC75F8()
{
  result = sub_22BDB4C34();
  if (v1 <= 0x3F)
  {
    result = _s25ValueDisambiguationResultVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22BCC76C4()
{
  sub_22BCC7738();
  if (v0 <= 0x3F)
  {
    sub_22BCC7760();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_22BCC7738()
{
  result = qword_2814287B0;
  if (!qword_2814287B0)
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &qword_2814287B0);
  }

  return result;
}

void sub_22BCC7760()
{
  if (!qword_281428900)
  {
    v0 = sub_22BDBA594();
    if (!v1)
    {
      atomic_store(v0, &qword_281428900);
    }
  }
}

uint64_t sub_22BCC7824()
{
  result = sub_22BDB43E4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BCC78D8()
{
  result = sub_22BDB4C34();
  if (v1 <= 0x3F)
  {
    result = sub_22BDB8384();
    if (v2 <= 0x3F)
    {
      result = _s19ParameterStepResultOMa(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22BCC7974()
{
  result = _s25ParameterNeedsValueResultVMa(319);
  if (v1 <= 0x3F)
  {
    result = _s25ParameterNotAllowedResultVMa(319);
    if (v2 <= 0x3F)
    {
      result = _s33ParameterCandidatesNotFoundResultVMa(319);
      if (v3 <= 0x3F)
      {
        result = _s27ParameterConfirmationResultVMa(319);
        if (v4 <= 0x3F)
        {
          result = _s29ParameterDisambiguationResultVMa(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22BCC7A38(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s20DisambiguationResultOMa(0);
    v9 = sub_22BB314BC(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(a3 + 20);
    }

    else
    {
      v11 = sub_22BDB43E4();
      v12 = *(a3 + 24);
    }

    return sub_22BB3AA28(a1 + v12, a2, v11);
  }
}

void *sub_22BCC7B14(void *result, int a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_22BB6BE74();
    v5 = _s20DisambiguationResultOMa(0);
    sub_22BB314BC(v5);
    if (*(v6 + 84) == v4)
    {
      v7 = *(v3 + 20);
    }

    else
    {
      sub_22BDB43E4();
      v8 = *(v3 + 24);
    }

    sub_22BB313F4();

    return sub_22BB336D0(v9, v10, v11, v12);
  }

  return result;
}

void sub_22BCC7BD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_22BCC80CC(319, a4, a5);
  if (v5 <= 0x3F)
  {
    _s20DisambiguationResultOMa(319);
    if (v6 <= 0x3F)
    {
      sub_22BDB43E4();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22BCC7C9C()
{
  result = sub_22BDBA594();
  if (v1 <= 0x3F)
  {
    result = sub_22BDB43E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BCC7D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v7 = sub_22BB2F474();
  v9 = v8(v7);
  sub_22BB314BC(v9);
  if (*(v10 + 84) == v5)
  {
    v11 = sub_22BB69A84();
  }

  else
  {
    a5(0);
    v11 = sub_22BB35180();
  }

  return sub_22BB3AA28(v11, v5, v12);
}

uint64_t sub_22BCC7DE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v8 = sub_22BB2F474();
  v10 = v9(v8);
  sub_22BB314BC(v10);
  if (*(v11 + 84) == a3)
  {
    sub_22BB33224();
  }

  else
  {
    a6(0);
    sub_22BB35180();
  }

  sub_22BB313F4();

  return sub_22BB336D0(v12, v13, v14, v15);
}

uint64_t sub_22BCC7E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BCC7FD8()
{
  sub_22BCC7760();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_22BCC80CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22BDBAE24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22BCC8120(uint64_t a1, uint64_t a2)
{
  v4 = _s24ToolDisambiguationResultVMa(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_22BBE1C90);
}

uint64_t sub_22BCC8178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s24ToolDisambiguationResultVMa(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_22BBE1C80);
}

uint64_t sub_22BCC81E0(uint64_t a1)
{
  v2 = _s24ToolDisambiguationResultVMa(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

void sub_22BCC8288()
{
  sub_22BB30F94();
  v76 = v3;
  v77 = v4;
  v73 = _s19ValueStepEvaluationVMa(0);
  v5 = sub_22BB2F330(v73);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v75 = v9 - v8;
  v10 = sub_22BB2F120();
  v72 = _s20ActionStepEvaluationVMa(v10);
  v11 = sub_22BB2F330(v72);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v74 = v15 - v14;
  v16 = sub_22BB2F120();
  v17 = _s23ParameterStepEvaluationVMa(v16);
  v18 = sub_22BB2F0C8(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  v23 = v22 - v21;
  v71 = _s18ToolStepEvaluationVMa(0);
  v24 = sub_22BB2F330(v71);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = sub_22BB310F8();
  v28 = _s23StatementStepEvaluationOMa(v27);
  v29 = sub_22BB2F330(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BB30C74();
  v34 = v32 - v33;
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v70 - v37;
  MEMORY[0x28223BE20](v36);
  sub_22BB7037C();
  MEMORY[0x28223BE20](v39);
  v41 = &v70 - v40;
  v42 = sub_22BBE6DE0(&qword_27D8E4128, &qword_22BDC2320);
  sub_22BB2F0C8(v42);
  v44 = *(v43 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v45);
  sub_22BB395E0();
  v47 = *(v46 + 56);
  sub_22BCCD9D4(v76, v0);
  sub_22BCCD9D4(v77, v0 + v47);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BB37784();
      sub_22BCCD9D4(v0, v2);
      if (sub_22BB977AC() != 1)
      {
        sub_22BB39778();
        v49 = v2;
        goto LABEL_21;
      }

      sub_22BB6BD00();
      sub_22BCCD920(v0 + v47, v23);
      sub_22BCC8EA8();
      sub_22BCCD97C(v23, _s23ParameterStepEvaluationVMa);
      sub_22BCCD97C(v2, _s23ParameterStepEvaluationVMa);
      sub_22BB3809C();
      goto LABEL_28;
    case 2u:
      sub_22BB37784();
      sub_22BCCD9D4(v0, v38);
      if (sub_22BB977AC() != 2)
      {
        sub_22BB31D04();
        v49 = v38;
        goto LABEL_21;
      }

      sub_22BB6926C();
      v50 = v74;
      sub_22BCCD920(v0 + v47, v74);
      if ((sub_22BDB4C04() & 1) != 0 && v38[*(v72 + 20)] == *(v50 + *(v72 + 20)))
      {
        v51 = *(_s24ActionConfirmationResultVMa(0) + 20);
        sub_22BDB43B4();
        sub_22BB31D04();
        sub_22BCCD97C(v50, v52);
      }

      else
      {
        sub_22BB31D04();
        sub_22BCCD97C(v50, v68);
      }

      sub_22BB31D04();
      v54 = v38;
      goto LABEL_27;
    case 3u:
      sub_22BB37784();
      v55 = sub_22BB33728();
      sub_22BCCD9D4(v55, v56);
      if (sub_22BB977AC() != 3)
      {
        sub_22BB3A95C();
        v49 = v34;
        goto LABEL_21;
      }

      sub_22BB374F4();
      v57 = v75;
      sub_22BCCD920(v0 + v47, v75);
      if (sub_22BDB4C04())
      {
        v58 = *(v73 + 20);
        if (sub_22BDB4C04())
        {
          v59 = *(v73 + 24);
          v60 = *(v34 + v59);
          v61 = *(v57 + v59);
          sub_22BCEFBF4();
          if (v62)
          {
            v63 = _s25ValueDisambiguationResultVMa(0);
            v64 = *(v63 + 20);
            sub_22BCCBDC4();
            if (v65)
            {
              v66 = *(v63 + 24);
              sub_22BDB43B4();
            }
          }
        }
      }

      sub_22BB354B8();
      sub_22BCCD97C(v57, v67);
      v54 = sub_22BB95B5C();
      goto LABEL_27;
    default:
      sub_22BB37784();
      sub_22BCCD9D4(v0, v41);
      if (sub_22BB977AC())
      {
        sub_22BB33D58();
        v49 = v41;
LABEL_21:
        sub_22BCCD97C(v49, v48);
        sub_22BB58728(v0, &qword_27D8E4128, &qword_22BDC2320);
      }

      else
      {
        sub_22BB340A8();
        sub_22BCCD920(v0 + v47, v1);
        if (sub_22BDB4C04())
        {
          sub_22BCC9310(&v41[*(v71 + 20)], v1 + *(v71 + 20));
        }

        sub_22BB33D58();
        sub_22BCCD97C(v1, v69);
        sub_22BB33D58();
        v54 = v41;
LABEL_27:
        sub_22BCCD97C(v54, v53);
        sub_22BB3809C();
      }

LABEL_28:
      sub_22BB314EC();
      return;
  }
}

uint64_t sub_22BCC87B8()
{
  v6 = _s19ValueStepEvaluationVMa(0);
  v7 = sub_22BB2F0C8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v10 = sub_22BB51880();
  v11 = _s20ActionStepEvaluationVMa(v10);
  v12 = sub_22BB2F0C8(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_22BB310F8();
  v16 = _s23ParameterStepEvaluationVMa(v15);
  v17 = sub_22BB2F0C8(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BB30574();
  v20 = sub_22BB319F8();
  v21 = _s18ToolStepEvaluationVMa(v20);
  v22 = sub_22BB2F0C8(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BB30574();
  sub_22BB31580();
  v25 = _s23StatementStepEvaluationOMa(0);
  v26 = sub_22BB2F330(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BB30574();
  sub_22BB345CC();
  sub_22BB37784();
  sub_22BCCD9D4(v1, v5);
  sub_22BB32E04();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BB6BD00();
      sub_22BCCD920(v5, v3);
      sub_22BB37D18();
      sub_22BDBB334();

      sub_22BB54238();
      v41 = v36 + 5;
      sub_22BCC8F30();
      sub_22BB92270();

      sub_22BB36A44();
      v30 = v41;
      sub_22BB39778();
      v32 = v3;
      break;
    case 2u:
      sub_22BB6926C();
      sub_22BCCD920(v5, v2);
      sub_22BB37D18();
      sub_22BDBB334();

      sub_22BB54238();
      v39 = v33 | 2;
      sub_22BCC8B28();
      sub_22BB92270();

      sub_22BB36A44();
      v30 = v39;
      sub_22BB31D04();
      v32 = v2;
      break;
    case 3u:
      sub_22BB374F4();
      sub_22BCCD920(v5, v0);
      sub_22BB37D18();
      sub_22BDBB334();

      sub_22BB54238();
      v40 = v34 + 1;
      v35 = sub_22BCC9124();
      MEMORY[0x2318A4C40](v35);

      sub_22BB36A44();
      v30 = v40;
      sub_22BB3A95C();
      v32 = v0;
      break;
    default:
      sub_22BB340A8();
      sub_22BCCD920(v5, v4);
      sub_22BB37D18();
      sub_22BDBB334();

      sub_22BB54238();
      v38 = v29;
      sub_22BCC8DD0();
      sub_22BB92270();

      sub_22BB36A44();
      v30 = v38;
      sub_22BB33D58();
      v32 = v4;
      break;
  }

  sub_22BCCD97C(v32, v31);
  return v30;
}

BOOL sub_22BCC8AB4()
{
  sub_22BB35F54();
  result = 0;
  if (sub_22BDB4C04())
  {
    v2 = _s20ActionStepEvaluationVMa(0);
    if (*(v1 + *(v2 + 20)) == *(v0 + *(v2 + 20)))
    {
      v3 = _s24ActionConfirmationResultVMa(0);
      sub_22BB36D64(v3);
      if (sub_22BDB43B4())
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_22BCC8B28()
{
  sub_22BB36298();
  sub_22BDBB334();
  sub_22BB72F10();
  sub_22BB38DCC();
  MEMORY[0x2318A4C40](0xD00000000000002ELL);
  sub_22BDB4C34();
  sub_22BB34304();
  sub_22BCC988C(v1, v2);
  v3 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v3);

  sub_22BB53D24();
  v4 = v0 + *(_s20ActionStepEvaluationVMa(0) + 20);
  sub_22BCC8C58();
  sub_22BB3AAE4();

  sub_22BB39180();
  return v6;
}

uint64_t sub_22BCC8BFC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = sub_22BB30F68();
  v4 = _s24ActionConfirmationResultVMa(v3);
  sub_22BB36D64(v4);

  return sub_22BDB43B4();
}

uint64_t sub_22BCC8C58()
{
  sub_22BB3377C();
  sub_22BDBB334();
  sub_22BB72F10();
  sub_22BB3A248();
  MEMORY[0x2318A4C40]();
  v2 = 0xE900000000000064;
  v3 = 0x657463656A65722ELL;
  if (*v0 != 1)
  {
    v3 = 0x6E6F646E6162612ELL;
    v2 = v1;
  }

  if (*v0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6D7269666E6F632ELL;
  }

  if (*v0)
  {
    v1 = v2;
  }

  MEMORY[0x2318A4C40](v4, v1);

  sub_22BB38DCC();
  sub_22BBC7868();
  v5 = _s24ActionConfirmationResultVMa(0);
  sub_22BB394F8(v5);
  sub_22BDB43E4();
  sub_22BB35B18();
  sub_22BCC988C(v6, v7);
  sub_22BB37014();
  sub_22BB3AAE4();

  sub_22BB39180();
  return v9;
}

BOOL sub_22BCC8D78()
{
  sub_22BB35F54();
  if ((sub_22BDB4C04() & 1) == 0)
  {
    return 0;
  }

  v0 = _s18ToolStepEvaluationVMa(0);
  v1 = sub_22BB36D64(v0);

  return sub_22BCC9310(v1, v2);
}

uint64_t sub_22BCC8DD0()
{
  sub_22BB36298();
  sub_22BDBB334();
  sub_22BB72F10();
  sub_22BB38DCC();
  MEMORY[0x2318A4C40](0xD00000000000002CLL);
  sub_22BDB4C34();
  sub_22BB34304();
  sub_22BCC988C(v1, v2);
  v3 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v3);

  sub_22BB53D24();
  v4 = v0 + *(_s18ToolStepEvaluationVMa(0) + 20);
  sub_22BCC9484();
  sub_22BB3AAE4();

  sub_22BB39180();
  return v6;
}

void sub_22BCC8EA8()
{
  sub_22BB35F54();
  if (sub_22BDB4C04())
  {
    v0 = _s23ParameterStepEvaluationVMa(0);
    sub_22BB36D64(v0);
    if (sub_22BDB4C04())
    {
      sub_22BB94E2C(*(v0 + 24));
      if (sub_22BDB8354())
      {
        sub_22BB94E2C(*(v0 + 28));

        sub_22BCCA5F8();
      }
    }
  }
}

uint64_t sub_22BCC8F30()
{
  sub_22BB36298();
  sub_22BDBB334();
  sub_22BB72F10();
  sub_22BB3A248();
  MEMORY[0x2318A4C40]();
  v1 = _s23ParameterStepEvaluationVMa(0);
  sub_22BB394F8(v1);
  sub_22BDB4C34();
  sub_22BB34304();
  sub_22BCC988C(v2, v3);
  sub_22BB3B69C();
  v4 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v4);

  sub_22BB38DCC();
  MEMORY[0x2318A4C40](0xD000000000000018);
  sub_22BB3B69C();
  sub_22BDBB684();
  sub_22BB379F0();

  MEMORY[0x2318A4C40](0x656D61726170202CLL, 0xEC0000003D726574);
  sub_22BB5133C();
  sub_22BDB8384();
  sub_22BDBB474();
  sub_22BB53D24();
  v5 = v0 + *(v1 + 28);
  sub_22BCCAC74();
  sub_22BB3AAE4();

  sub_22BB39180();
  return v7;
}

uint64_t sub_22BCC9094()
{
  sub_22BB35F54();
  if (sub_22BDB4C04() & 1) != 0 && (v0 = _s19ValueStepEvaluationVMa(0), sub_22BB36D64(v0), (sub_22BDB4C04()))
  {
    v1 = sub_22BB94E2C(*(v0 + 24));
    v5 = sub_22BCCA280(v1, v2, v3, v4);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_22BCC9124()
{
  sub_22BB36298();
  sub_22BDBB334();
  sub_22BB72F10();
  sub_22BB3A248();
  MEMORY[0x2318A4C40]();
  v1 = _s19ValueStepEvaluationVMa(0);
  sub_22BB394F8(v1);
  sub_22BDB4C34();
  sub_22BB34304();
  sub_22BCC988C(v2, v3);
  sub_22BB3B69C();
  v4 = sub_22BDBB684();
  MEMORY[0x2318A4C40](v4);

  sub_22BB38DCC();
  MEMORY[0x2318A4C40](0xD000000000000018);
  sub_22BB3B69C();
  sub_22BDBB684();
  sub_22BB379F0();

  sub_22BB53D24();
  v5 = v0 + *(v1 + 24);
  sub_22BCCA52C();
  sub_22BB3AAE4();

  sub_22BB39180();
  return v7;
}

uint64_t sub_22BCC9244()
{
  sub_22BB36298();
  sub_22BDBB334();
  sub_22BB72F10();
  sub_22BB38750();
  sub_22BB3A248();
  MEMORY[0x2318A4C40]();
  v0 = _s24ToolDisambiguationResultVMa(0);
  sub_22BB3B7D8(v0);
  sub_22BCCD54C();
  sub_22BB379F0();

  sub_22BB38DCC();
  sub_22BBC7868();
  sub_22BB5133C();
  sub_22BDB43E4();
  sub_22BB35B18();
  sub_22BCC988C(v1, v2);
  sub_22BB37014();
  sub_22BB3AAE4();

  sub_22BB39180();
  return v4;
}

BOOL sub_22BCC9310(uint64_t a1, uint64_t a2)
{
  v5 = sub_22BBE6DE0(&qword_27D8E4130, &qword_22BDC2328);
  sub_22BB2F0C8(v5);
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB395E0();
  v10 = (v2 + *(v9 + 56));
  sub_22BCCD9D4(a1, v2);
  sub_22BCCD9D4(a2, v10);
  v11 = *v2;
  v12 = *v10;
  sub_22BCEFC3C();
  v17 = 0;
  if (v13)
  {
    v14 = _s24ToolDisambiguationResultVMa(0);
    sub_22BB3B7D8(v14);
    sub_22BCCBDC4();
    if (v15)
    {
      v16 = *(a2 + 24);
      if (sub_22BDB43B4())
      {
        v17 = 1;
      }
    }
  }

  sub_22BCCD97C(v10, _s24ToolDisambiguationResultVMa);
  sub_22BCCD97C(v2, _s24ToolDisambiguationResultVMa);
  return v17;
}

unint64_t sub_22BCC9484()
{
  v1 = _s24ToolDisambiguationResultVMa(0);
  v2 = sub_22BB2F0C8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  v5 = sub_22BB51880();
  v6 = _s14ToolStepResultOMa(v5);
  v7 = sub_22BB2F0C8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  sub_22BCCD9D4(v0, v11 - v10);
  v12 = sub_22BB3182C();
  sub_22BCCD920(v12, v13);
  sub_22BDBB334();

  v14 = sub_22BCC9244();
  MEMORY[0x2318A4C40](v14);

  sub_22BB36A44();
  v15 = sub_22BB92848();
  sub_22BCCD97C(v15, v16);
  return 0xD00000000000001ELL;
}

void sub_22BCC95D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB30F94();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_22BDBA594();
  v28 = sub_22BB30444(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  v33 = sub_22BB310F8();
  v34 = _s25ParameterNeedsValueResultV16NeedsValueResultOMa(v33);
  v35 = sub_22BB2F0C8(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BB30574();
  v40 = v39 - v38;
  v41 = sub_22BBE6DE0(&qword_27D8E4140, &qword_22BDC2338);
  sub_22BB2F0C8(v41);
  v43 = *(v42 + 64);
  sub_22BB30B9C();
  v45 = MEMORY[0x28223BE20](v44);
  v47 = &a9 - v46;
  v48 = *(v45 + 56);
  sub_22BCCD9D4(v26, &a9 - v46);
  sub_22BCCD9D4(v24, &v47[v48]);
  sub_22BBE6DE0(&qword_27D8E3F48, &qword_22BDC1A80);
  sub_22BBC7F7C(v47);
  if (!v49)
  {
    sub_22BB35FAC();
    sub_22BCCD9D4(v47, v40);
    sub_22BBC7F7C(&v47[v48]);
    if (!v49)
    {
      (*(v30 + 32))(v20, &v47[v48], v27);
      sub_22BDBA574();
      v50 = *(v30 + 8);
      v51 = sub_22BB3182C();
      v50(v51);
      (v50)(v40, v27);
      sub_22BB3E1C4();
      goto LABEL_10;
    }

    (*(v30 + 8))(v40, v27);
LABEL_9:
    sub_22BB58728(v47, &qword_27D8E4140, &qword_22BDC2338);
    goto LABEL_10;
  }

  sub_22BBC7F7C(&v47[v48]);
  if (!v49)
  {
    goto LABEL_9;
  }

  sub_22BB3E1C4();
LABEL_10:
  sub_22BB314EC();
}

uint64_t sub_22BCC9808(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E4030, _s14ToolStepResultOMa);
  result = sub_22BCC988C(&qword_27D8E4038, _s14ToolStepResultOMa);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCC988C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BCC98D4(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E4040, _s24ToolDisambiguationResultVMa);
  result = sub_22BCC988C(&qword_27D8E4048, _s24ToolDisambiguationResultVMa);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCC9958(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E4050, _s18ToolStepEvaluationVMa);
  result = sub_22BCC988C(&qword_27D8E4058, _s18ToolStepEvaluationVMa);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCC99E0()
{
  v3 = sub_22BBE6DE0(&qword_27D8E3E60, &qword_22BDC23E0);
  sub_22BB2F330(v3);
  v5 = *(v4 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB319F8();
  v7 = sub_22BDBA594();
  v8 = sub_22BB30444(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = sub_22BB310F8();
  v14 = _s25ParameterNeedsValueResultV16NeedsValueResultOMa(v13);
  v15 = sub_22BB2F0C8(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  sub_22BB345CC();
  sub_22BB35FAC();
  sub_22BCCD9D4(v0, v2);
  v18 = sub_22BBE6DE0(&qword_27D8E3F48, &qword_22BDC1A80);
  if (sub_22BB3AA28(v2, 1, v18) == 1)
  {
    sub_22BB3932C();
  }

  else
  {
    (*(v10 + 32))(v1, v2, v7);
    sub_22BCB4048();
    sub_22BB3627C();
    v19 = sub_22BDBAC14();
    MEMORY[0x2318A4C40](v19);

    sub_22BB36A44();
    v20 = *(v10 + 8);
    v21 = sub_22BB3182C();
    v22(v21);
  }

  return sub_22BB3627C();
}

unint64_t sub_22BCC9BBC()
{
  sub_22BB36298();
  sub_22BDBB334();

  v0 = _s25ParameterNeedsValueResultVMa(0);
  sub_22BB394F8(v0);
  sub_22BDB43E4();
  sub_22BB35B18();
  sub_22BCC988C(v1, v2);
  sub_22BB37014();
  sub_22BB3AAE4();

  sub_22BB39180();
  return 0xD00000000000002BLL;
}

uint64_t sub_22BCC9C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_22BB35F54();
  if ((v5() & 1) == 0)
  {
    return 0;
  }

  v6 = a4(0);
  sub_22BB36D64(v6);

  return sub_22BDB43B4();
}

uint64_t sub_22BCC9D18(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E4060, _s25ParameterNeedsValueResultVMa);
  result = sub_22BCC988C(&qword_27D8E4068, _s25ParameterNeedsValueResultVMa);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCC9DA0()
{
  sub_22BB36298();
  sub_22BDBB334();
  sub_22BB72F10();
  sub_22BB38750();
  sub_22BB3A248();
  MEMORY[0x2318A4C40]();
  sub_22BDBA594();
  sub_22BDBB474();
  sub_22BB38DCC();
  sub_22BBC7868();
  v0 = _s25ParameterNotAllowedResultVMa(0);
  sub_22BB394F8(v0);
  sub_22BDB43E4();
  sub_22BB35B18();
  sub_22BCC988C(v1, v2);
  sub_22BB37014();
  sub_22BB3AAE4();

  sub_22BB39180();
  return v4;
}

uint64_t sub_22BCC9EC0(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E4070, _s25ParameterNotAllowedResultVMa);
  result = sub_22BCC988C(&qword_27D8E4078, _s25ParameterNotAllowedResultVMa);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCC9F48()
{
  sub_22BB36298();
  sub_22BDBB334();
  sub_22BB72F10();
  sub_22BB38750();
  sub_22BB3A248();
  MEMORY[0x2318A4C40]();
  sub_22BDBA594();
  sub_22BDBB474();
  sub_22BB38DCC();
  sub_22BBC7868();
  found = _s33ParameterCandidatesNotFoundResultVMa(0);
  sub_22BB394F8(found);
  sub_22BDB43E4();
  sub_22BB35B18();
  sub_22BCC988C(v1, v2);
  sub_22BB37014();
  sub_22BB3AAE4();

  sub_22BB39180();
  return v4;
}

uint64_t sub_22BCCA024()
{
  sub_22BB35F54();
  if ((sub_22BDBA574() & 1) == 0)
  {
    return 0;
  }

  v2 = _s27ParameterConfirmationResultVMa(0);
  if (*(v1 + *(v2 + 20)) != *(v0 + *(v2 + 20)))
  {
    return 0;
  }

  sub_22BB94E2C(*(v2 + 24));

  return sub_22BDB43B4();
}

uint64_t sub_22BCCA0D4(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E4080, _s33ParameterCandidatesNotFoundResultVMa);
  result = sub_22BCC988C(&qword_27D8E4088, _s33ParameterCandidatesNotFoundResultVMa);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCCA15C()
{
  sub_22BB3377C();
  sub_22BDBB334();
  sub_22BB72F10();
  sub_22BB3A248();
  MEMORY[0x2318A4C40]();
  v2 = _s27ParameterConfirmationResultVMa(0);
  if (*(v0 + *(v2 + 20)))
  {
    if (*(v0 + *(v2 + 20)) == 1)
    {
      v1 = 0xE900000000000064;
      v3 = 0x657463656A65722ELL;
    }

    else
    {
      v3 = 0x6E6F646E6162612ELL;
    }
  }

  else
  {
    v3 = 0x6D7269666E6F632ELL;
  }

  MEMORY[0x2318A4C40](v3, v1);

  sub_22BB38DCC();
  sub_22BBC7868();
  v4 = *(v2 + 24);
  sub_22BDB43E4();
  sub_22BB35B18();
  sub_22BCC988C(v5, v6);
  sub_22BB37014();
  sub_22BB3AAE4();

  sub_22BB39180();
  return v8;
}

uint64_t sub_22BCCA280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_22BB35F54();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  v8 = a4(0);
  sub_22BB36D64(v8);
  sub_22BCCBDC4();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  sub_22BB94E2C(*(v8 + 24));

  return sub_22BDB43B4();
}

uint64_t sub_22BCCA30C(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E4090, _s27ParameterConfirmationResultVMa);
  result = sub_22BCC988C(&qword_27D8E4098, _s27ParameterConfirmationResultVMa);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCCA394()
{
  sub_22BB36298();
  sub_22BDBB334();
  sub_22BB72F10();
  sub_22BB38750();
  sub_22BB3A248();
  MEMORY[0x2318A4C40]();
  v0 = _s29ParameterDisambiguationResultVMa(0);
  sub_22BB3B7D8(v0);
  sub_22BCCD54C();
  sub_22BB379F0();

  sub_22BB38DCC();
  sub_22BBC7868();
  sub_22BB5133C();
  sub_22BDB43E4();
  sub_22BB35B18();
  sub_22BCC988C(v1, v2);
  sub_22BB37014();
  sub_22BB3AAE4();

  sub_22BB39180();
  return v4;
}

uint64_t sub_22BCCA4A4(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E40A0, _s29ParameterDisambiguationResultVMa);
  result = sub_22BCC988C(&qword_27D8E40A8, _s29ParameterDisambiguationResultVMa);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCCA52C()
{
  sub_22BB36298();
  sub_22BDBB334();
  sub_22BB72F10();
  sub_22BB38750();
  sub_22BB3A248();
  MEMORY[0x2318A4C40]();
  v0 = _s25ValueDisambiguationResultVMa(0);
  sub_22BB3B7D8(v0);
  sub_22BCCD54C();
  sub_22BB379F0();

  sub_22BB38DCC();
  sub_22BBC7868();
  sub_22BB5133C();
  sub_22BDB43E4();
  sub_22BB35B18();
  sub_22BCC988C(v1, v2);
  sub_22BB37014();
  sub_22BB3AAE4();

  sub_22BB39180();
  return v4;
}

void sub_22BCCA5F8()
{
  sub_22BB30F94();
  v103 = v1;
  v104 = v2;
  v98 = _s29ParameterDisambiguationResultVMa(0);
  v3 = sub_22BB2F330(v98);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BB30574();
  v102 = (v7 - v6);
  v8 = sub_22BB2F120();
  v97 = _s27ParameterConfirmationResultVMa(v8);
  v9 = sub_22BB2F330(v97);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v101 = v13 - v12;
  v14 = sub_22BB2F120();
  found = _s33ParameterCandidatesNotFoundResultVMa(v14);
  v15 = sub_22BB2F330(found);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  v100 = v19 - v18;
  v20 = sub_22BB2F120();
  v95 = _s25ParameterNotAllowedResultVMa(v20);
  v21 = sub_22BB2F330(v95);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BB30574();
  v99 = v25 - v24;
  v26 = sub_22BB2F120();
  v94 = _s25ParameterNeedsValueResultVMa(v26);
  v27 = sub_22BB2F330(v94);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BB30574();
  v32 = v31 - v30;
  v33 = _s19ParameterStepResultOMa(0);
  v34 = sub_22BB2F330(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BB30C74();
  v39 = (v37 - v38);
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v93 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v93 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v93 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v93 - v50;
  v52 = sub_22BBE6DE0(&qword_27D8E4138, &qword_22BDC2330);
  sub_22BB2F0C8(v52);
  v54 = *(v53 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v55);
  sub_22BB395E0();
  v57 = *(v56 + 56);
  sub_22BCCD9D4(v103, v0);
  sub_22BCCD9D4(v104, v0 + v57);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BB32350();
      sub_22BCCD9D4(v0, v49);
      if (sub_22BB3E39C() != 1)
      {
        sub_22BB365BC();
        v59 = v49;
        goto LABEL_26;
      }

      sub_22BB3AF60();
      v78 = v99;
      sub_22BCCD920(v0 + v57, v99);
      if (sub_22BDBA574())
      {
        v79 = *(v95 + 20);
        sub_22BDB43B4();
      }

      sub_22BB365BC();
      sub_22BCCD97C(v78, v80);
      sub_22BB365BC();
      v70 = v49;
      goto LABEL_34;
    case 2u:
      sub_22BB32350();
      sub_22BCCD9D4(v0, v46);
      if (sub_22BB3E39C() != 2)
      {
        sub_22BB307C8();
        v59 = v46;
        goto LABEL_26;
      }

      sub_22BB334D4();
      v72 = v100;
      sub_22BCCD920(v0 + v57, v100);
      if (sub_22BDBA574())
      {
        v73 = *(found + 20);
        sub_22BDB43B4();
      }

      sub_22BB307C8();
      sub_22BCCD97C(v72, v74);
      sub_22BB307C8();
      v70 = v46;
      goto LABEL_34;
    case 3u:
      sub_22BB32350();
      sub_22BCCD9D4(v0, v43);
      if (sub_22BB3E39C() != 3)
      {
        sub_22BB327B8();
        v59 = v43;
        goto LABEL_26;
      }

      sub_22BB3AD48();
      v75 = v101;
      sub_22BCCD920(v0 + v57, v101);
      if ((sub_22BDBA574() & 1) != 0 && v43[*(v97 + 20)] == *(v75 + *(v97 + 20)))
      {
        v76 = *(v97 + 24);
        sub_22BDB43B4();
        sub_22BB327B8();
        sub_22BCCD97C(v75, v77);
      }

      else
      {
        sub_22BB327B8();
        sub_22BCCD97C(v75, v81);
      }

      sub_22BB327B8();
      v70 = v43;
      goto LABEL_34;
    case 4u:
      sub_22BB32350();
      v60 = sub_22BB33728();
      sub_22BCCD9D4(v60, v61);
      if (sub_22BB3E39C() != 4)
      {
        sub_22BBDB8DC();
        v59 = v39;
        goto LABEL_26;
      }

      sub_22BB2F218();
      v62 = v102;
      sub_22BCCD920(v0 + v57, v102);
      v63 = *v39;
      v64 = *v62;
      sub_22BCEFBF4();
      if (v65)
      {
        v66 = *(v98 + 20);
        sub_22BCCBDC4();
        if (v67)
        {
          v68 = *(v98 + 24);
          sub_22BDB43B4();
        }
      }

      sub_22BB58850();
      sub_22BCCD97C(v62, v69);
      v70 = sub_22BB95B5C();
      goto LABEL_34;
    default:
      sub_22BB32350();
      sub_22BCCD9D4(v0, v51);
      if (sub_22BB3E39C())
      {
        sub_22BB32C10();
        v59 = v51;
LABEL_26:
        sub_22BCCD97C(v59, v58);
        sub_22BB58728(v0, &qword_27D8E4138, &qword_22BDC2330);
      }

      else
      {
        sub_22BB5297C();
        sub_22BCCD920(v0 + v57, v32);
        sub_22BCC95D0(v51, v32, v82, v83, v84, v85, v86, v87, v93, v94, v95, found, v97, v98, v99, v100, v101, v102, v103, v104);
        if (v88)
        {
          v89 = *(v94 + 20);
          sub_22BDB43B4();
        }

        sub_22BB32C10();
        sub_22BCCD97C(v32, v90);
        sub_22BB32C10();
        v70 = v51;
LABEL_34:
        sub_22BCCD97C(v70, v71);
        v91 = sub_22BB92848();
        sub_22BCCD97C(v91, v92);
      }

      sub_22BB314EC();
      return;
  }
}

uint64_t sub_22BCCAC74()
{
  v6 = _s29ParameterDisambiguationResultVMa(0);
  v7 = sub_22BB2F0C8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v10 = sub_22BB51880();
  v11 = _s27ParameterConfirmationResultVMa(v10);
  v12 = sub_22BB2F0C8(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_22BB310F8();
  found = _s33ParameterCandidatesNotFoundResultVMa(v15);
  v17 = sub_22BB2F0C8(found);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BB30574();
  v20 = sub_22BB319F8();
  v21 = _s25ParameterNotAllowedResultVMa(v20);
  v22 = sub_22BB2F0C8(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BB30574();
  sub_22BB31580();
  v25 = _s25ParameterNeedsValueResultVMa(0);
  v26 = sub_22BB2F0C8(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BB30574();
  sub_22BB345CC();
  v29 = _s19ParameterStepResultOMa(0);
  v30 = sub_22BB2F330(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BB30574();
  v35 = v34 - v33;
  sub_22BB32350();
  sub_22BCCD9D4(v1, v35);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BB3AF60();
      sub_22BCCD920(v35, v4);
      sub_22BB37D18();
      sub_22BDBB334();

      sub_22BB36884();
      v50 = v44;
      sub_22BCC9DA0();
      sub_22BB92270();

      sub_22BB36A44();
      v37 = v50;
      sub_22BB365BC();
      v39 = v4;
      break;
    case 2u:
      sub_22BB334D4();
      sub_22BCCD920(v35, v3);
      sub_22BB37D18();
      sub_22BDBB334();

      sub_22BB36884();
      v48 = v42 + 8;
      sub_22BCC9F48();
      sub_22BB92270();

      sub_22BB36A44();
      v37 = v48;
      sub_22BB307C8();
      v39 = v3;
      break;
    case 3u:
      sub_22BB3AD48();
      sub_22BCCD920(v35, v2);
      sub_22BB37D18();
      sub_22BDBB334();

      sub_22BB36884();
      v49 = v43 + 2;
      sub_22BCCA15C();
      sub_22BB92270();

      sub_22BB36A44();
      v37 = v49;
      sub_22BB327B8();
      v39 = v2;
      break;
    case 4u:
      sub_22BB2F218();
      sub_22BCCD920(v35, v0);
      sub_22BB37D18();
      sub_22BDBB334();

      sub_22BB36884();
      v47 = v40 + 4;
      v41 = sub_22BCCA394();
      MEMORY[0x2318A4C40](v41);

      sub_22BB36A44();
      v37 = v47;
      sub_22BBDB8DC();
      v39 = v0;
      break;
    default:
      sub_22BB5297C();
      sub_22BCCD920(v35, v5);
      sub_22BB37D18();
      sub_22BDBB334();

      sub_22BB36884();
      v46 = v36;
      sub_22BCC9BBC();
      sub_22BB92270();

      sub_22BB36A44();
      v37 = v46;
      sub_22BB32C10();
      v39 = v5;
      break;
  }

  sub_22BCCD97C(v39, v38);
  return v37;
}

uint64_t sub_22BCCB014(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D7269666E6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64657463656A6572 && a2 == 0xE800000000000000;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656E6F646E616261 && a2 == 0xE900000000000064)
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

uint64_t sub_22BCCB134(char a1)
{
  if (!a1)
  {
    return 0x656D7269666E6F63;
  }

  if (a1 == 1)
  {
    return 0x64657463656A6572;
  }

  return 0x656E6F646E616261;
}

void sub_22BCCB18C()
{
  sub_22BB31014();
  v43 = v0;
  v2 = v1;
  v3 = sub_22BBE6DE0(&qword_27D8E4208, &qword_22BDC23C0);
  v4 = sub_22BB30444(v3);
  v41 = v5;
  v42 = v4;
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB30BA8();
  v40 = v9;
  v10 = sub_22BBE6DE0(&qword_27D8E4210, &qword_22BDC23C8);
  v11 = sub_22BB30444(v10);
  v38 = v12;
  v39 = v11;
  v14 = *(v13 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  v18 = sub_22BBE6DE0(&qword_27D8E4218, &qword_22BDC23D0);
  sub_22BB30444(v18);
  v37 = v19;
  v21 = *(v20 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v22);
  v24 = &v36 - v23;
  v25 = sub_22BBE6DE0(&qword_27D8E4220, &qword_22BDC23D8);
  sub_22BB30444(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v30);
  v32 = &v36 - v31;
  v33 = v2[4];
  sub_22BB69FEC(v2, v2[3]);
  sub_22BCCDBD4();
  sub_22BDBB8A4();
  v34 = (v27 + 8);
  if (v43)
  {
    if (v43 == 1)
    {
      sub_22BCCDC7C();
      sub_22BB3DFA4();
      (*(v38 + 8))(v17, v39);
    }

    else
    {
      sub_22BCCDC28();
      v35 = v40;
      sub_22BB3DFA4();
      (*(v41 + 8))(v35, v42);
    }
  }

  else
  {
    sub_22BCCDCD0();
    sub_22BB3DFA4();
    (*(v37 + 8))(v24, v18);
  }

  (*v34)(v32, v25);
  sub_22BB376A8();
}

void sub_22BCCB494()
{
  sub_22BB31014();
  v82 = v0;
  v4 = v3;
  v81 = sub_22BBE6DE0(&qword_27D8E41C8, &qword_22BDC23A0);
  sub_22BB30444(v81);
  v79 = v5;
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB30BA8();
  v77 = v9;
  v78 = sub_22BBE6DE0(&qword_27D8E41D0, &qword_22BDC23A8);
  sub_22BB30444(v78);
  v76 = v10;
  v12 = *(v11 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v13);
  sub_22BB345CC();
  v14 = sub_22BBE6DE0(&qword_27D8E41D8, &qword_22BDC23B0);
  sub_22BB30444(v14);
  v75 = v15;
  v17 = *(v16 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  v20 = &v71 - v19;
  v21 = sub_22BBE6DE0(&qword_27D8E41E0, &qword_22BDC23B8);
  sub_22BB30444(v21);
  v80 = v22;
  v24 = *(v23 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v25);
  sub_22BB31580();
  v26 = v4[4];
  sub_22BB69FEC(v4, v4[3]);
  sub_22BCCDBD4();
  v27 = v82;
  sub_22BDBB894();
  if (v27)
  {
    goto LABEL_13;
  }

  v71 = v14;
  v72 = v20;
  v73 = v2;
  v74 = 0;
  v28 = v81;
  v82 = v4;
  v29 = sub_22BDBB5E4();
  sub_22BD006D0(v29, 0);
  v31 = v21;
  if (v32 != v30 >> 1)
  {
    sub_22BB2F4F4();
    if (v35 == v36)
    {
      __break(1u);
      return;
    }

    v37 = v21;
    v38 = *(v34 + v33);
    v39 = sub_22BD006A8(v33 + 1);
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    v44 = v79;
    if (v41 == v43 >> 1)
    {
      if (v38)
      {
        v75 = v39;
        v45 = v74;
        if (v38 == 1)
        {
          sub_22BCCDC7C();
          sub_22BB2F230();
          sub_22BDBB554();
          v46 = v80;
          if (!v45)
          {
            swift_unknownObjectRelease();
            v47 = *(v76 + 8);
            v48 = sub_22BB33728();
            v49(v48);
            v50 = *(v46 + 8);
            v51 = sub_22BB32E04();
            v52(v51);
LABEL_22:
            sub_22BB32FA4(v82);
            goto LABEL_14;
          }
        }

        else
        {
          LODWORD(v78) = v38;
          sub_22BCCDC28();
          v62 = v77;
          sub_22BB2F230();
          sub_22BDBB554();
          v46 = v80;
          if (!v45)
          {
            swift_unknownObjectRelease();
            (*(v44 + 8))(v62, v28);
            v68 = *(v46 + 8);
            v69 = sub_22BB32E04();
            v70(v69);
            goto LABEL_22;
          }
        }

        v63 = *(v46 + 8);
        v64 = sub_22BB32E04();
        v65(v64);
      }

      else
      {
        sub_22BCCDCD0();
        v58 = v72;
        sub_22BB2F230();
        v59 = v74;
        sub_22BDBB554();
        if (!v59)
        {
          swift_unknownObjectRelease();
          (*(v75 + 8))(v58, v71);
          sub_22BB3158C();
          v66 = sub_22BB32E04();
          v67(v66);
          goto LABEL_22;
        }

        sub_22BB3158C();
        v60 = sub_22BB32E04();
        v61(v60);
      }

      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    v31 = v37;
  }

  v53 = sub_22BDBB3A4();
  swift_allocError();
  v55 = v54;
  v56 = *(sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530) + 48);
  *v55 = &_s18ConfirmationResultON;
  sub_22BDBB564();
  sub_22BB36D74();
  (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D84160], v53);
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_22BB3158C();
  v57(v1, v31);
LABEL_12:
  v4 = v82;
LABEL_13:
  sub_22BB32FA4(v4);
LABEL_14:
  sub_22BB376A8();
}

uint64_t sub_22BCCB9FC(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E40B0, _s19ParameterStepResultOMa);
  result = sub_22BCC988C(&qword_27D8E40B8, _s19ParameterStepResultOMa);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCCBA80(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E40C0, _s23ParameterStepEvaluationVMa);
  result = sub_22BCC988C(&qword_27D8E40C8, _s23ParameterStepEvaluationVMa);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCCBB08(uint64_t a1)
{
  v2 = sub_22BCCDC28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCCBB44(uint64_t a1)
{
  v2 = sub_22BCCDC28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCCBB88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCCB014(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCCBBB0(uint64_t a1)
{
  v2 = sub_22BCCDBD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCCBBEC(uint64_t a1)
{
  v2 = sub_22BCCDBD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCCBC28(uint64_t a1)
{
  v2 = sub_22BCCDCD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCCBC64(uint64_t a1)
{
  v2 = sub_22BCCDCD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCCBCA0(uint64_t a1)
{
  v2 = sub_22BCCDC7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCCBCDC(uint64_t a1)
{
  v2 = sub_22BCCDC7C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22BCCBD18(_BYTE *a1@<X8>)
{
  sub_22BCCB494();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_22BCCBD68(char a1)
{
  if (!a1)
  {
    return 0x6D7269666E6F632ELL;
  }

  if (a1 == 1)
  {
    return 0x657463656A65722ELL;
  }

  return 0x6E6F646E6162612ELL;
}

void sub_22BCCBDC4()
{
  sub_22BB30F94();
  v3 = v2;
  v5 = v4;
  v6 = sub_22BDBA594();
  v7 = sub_22BB30444(v6);
  v38 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = sub_22BB310F8();
  v12 = _s20DisambiguationResultOMa(v11);
  v13 = sub_22BB2F330(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BB30C74();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = (&v37 - v20);
  v22 = sub_22BBE6DE0(&qword_27D8E4148, &qword_22BDC2340);
  sub_22BB2F0C8(v22);
  v24 = *(v23 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v25);
  sub_22BB395E0();
  v27 = *(v26 + 56);
  sub_22BCCD9D4(v5, v0);
  sub_22BCCD9D4(v3, v0 + v27);
  sub_22BB33728();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BB37274();
      sub_22BCCD9D4(v0, v18);
      if (sub_22BB8DCB4() == 1)
      {
        v31 = v38;
        (*(v38 + 32))(v1, v0 + v27, v6);
        sub_22BDBA574();
        v32 = *(v31 + 8);
        v32(v1, v6);
        v33 = sub_22BB3627C();
        (v32)(v33);
        goto LABEL_7;
      }

      v34 = *(v38 + 8);
      v35 = sub_22BB3627C();
      v36(v35);
      goto LABEL_11;
    case 2u:
      if (sub_22BB8DCB4() != 2)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    case 3u:
      if (sub_22BB8DCB4() == 3)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    default:
      sub_22BB37274();
      sub_22BCCD9D4(v0, v21);
      if (sub_22BB8DCB4())
      {
LABEL_11:
        sub_22BB58728(v0, &qword_27D8E4148, &qword_22BDC2340);
      }

      else
      {
        v28 = *v21 == *(v0 + v27);
LABEL_7:
        v29 = sub_22BB92848();
        sub_22BCCD97C(v29, v30);
      }

      sub_22BB314EC();
      return;
  }
}

uint64_t sub_22BCCC088(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6F646E616261 && a2 == 0xE900000000000064;
  if (v4 || (sub_22BDBB6D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C65536D657469 && a2 == 0xEC00000064657463;
    if (v6 || (sub_22BDBB6D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C655365756C6176 && a2 == 0xED00006465746365;
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

uint64_t sub_22BCCC1F4(char a1)
{
  result = 0x656E6F646E616261;
  switch(a1)
  {
    case 1:
      result = 0x656C65536D657469;
      break;
    case 2:
      result = 0x6C655365756C6176;
      break;
    case 3:
      result = 0x64657463656A6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BCCC290(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
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

uint64_t sub_22BCCC318(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

void sub_22BCCC3A0()
{
  sub_22BB31014();
  v80 = v1;
  v77 = v0;
  v5 = v4;
  v73 = sub_22BBE6DE0(&qword_27D8E41A0, &qword_22BDC2378);
  sub_22BB30444(v73);
  v70 = v6;
  v8 = *(v7 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v9);
  sub_22BB30BA8();
  v69 = v10;
  v11 = sub_22BBE6DE0(&qword_27D8E41A8, &qword_22BDC2380);
  v12 = sub_22BB30444(v11);
  v75 = v13;
  v76 = v12;
  v15 = *(v14 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB30BA8();
  v71 = v17;
  sub_22BB2F120();
  v74 = sub_22BDBA594();
  v18 = sub_22BB30444(v74);
  v72 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BB30574();
  v68 = v23 - v22;
  v24 = sub_22BBE6DE0(&qword_27D8E41B0, &qword_22BDC2388);
  v25 = sub_22BB30444(v24);
  v66 = v26;
  v67 = v25;
  v28 = *(v27 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v29);
  sub_22BB31580();
  v30 = sub_22BBE6DE0(&qword_27D8E41B8, &qword_22BDC2390);
  sub_22BB30444(v30);
  v65 = v31;
  v33 = *(v32 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v34);
  sub_22BB345CC();
  v35 = _s20DisambiguationResultOMa(0);
  v36 = sub_22BB2F330(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22BB30574();
  v41 = (v40 - v39);
  v42 = sub_22BBE6DE0(&qword_27D8E41C0, &qword_22BDC2398);
  v43 = sub_22BB30444(v42);
  v78 = v44;
  v79 = v43;
  v46 = *(v45 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v47);
  v49 = &v65 - v48;
  v50 = v5[4];
  sub_22BB69FEC(v5, v5[3]);
  sub_22BCCDA30();
  sub_22BDBB8A4();
  sub_22BB37274();
  sub_22BCCD9D4(v77, v41);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v57 = v72;
      v58 = v68;
      v59 = v74;
      (*(v72 + 32))(v68, v41, v74);
      sub_22BCCDAD8();
      v60 = v71;
      v52 = v79;
      sub_22BB3B0B4();
      sub_22BDBB5F4();
      sub_22BB6B68C();
      sub_22BCC988C(v61, v62);
      v63 = v76;
      sub_22BDBB664();
      (*(v75 + 8))(v60, v63);
      (*(v57 + 8))(v58, v59);
      goto LABEL_7;
    case 2u:
      sub_22BCCDB80();
      v54 = v79;
      sub_22BB3B0B4();
      sub_22BDBB5F4();
      (*(v65 + 8))(v3, v30);
      goto LABEL_5;
    case 3u:
      sub_22BCCDA84();
      v55 = v69;
      v54 = v79;
      sub_22BB3B0B4();
      sub_22BDBB5F4();
      (*(v70 + 8))(v55, v73);
LABEL_5:
      sub_22BB3158C();
      v56(v49, v54);
      break;
    default:
      v51 = *v41;
      sub_22BCCDB2C();
      v52 = v79;
      sub_22BB3B0B4();
      sub_22BDBB5F4();
      v53 = v67;
      sub_22BDBB644();
      (*(v66 + 8))(v2, v53);
LABEL_7:
      sub_22BB3158C();
      v64(v49, v52);
      break;
  }

  sub_22BB376A8();
}

void sub_22BCCC92C()
{
  sub_22BB31014();
  v115 = v0;
  v3 = v2;
  v111 = v4;
  v110 = sub_22BBE6DE0(&qword_27D8E4150, &qword_22BDC2348);
  sub_22BB30444(v110);
  v104 = v5;
  v7 = *(v6 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB30BA8();
  v109 = v9;
  v10 = sub_22BBE6DE0(&qword_27D8E4158, &qword_22BDC2350);
  v105 = sub_22BB30444(v10);
  v106 = v11;
  v13 = *(v12 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  sub_22BB30BA8();
  v113 = v15;
  v16 = sub_22BBE6DE0(&qword_27D8E4160, &qword_22BDC2358);
  v17 = sub_22BB30444(v16);
  v102 = v18;
  v103 = v17;
  v20 = *(v19 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v21);
  sub_22BB30BA8();
  v108 = v22;
  v23 = sub_22BBE6DE0(&qword_27D8E4168, &qword_22BDC2360);
  v24 = sub_22BB30444(v23);
  v100 = v25;
  v101 = v24;
  v27 = *(v26 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v28);
  sub_22BB30BA8();
  v107 = v29;
  v30 = sub_22BBE6DE0(&qword_27D8E4170, &qword_22BDC2368);
  sub_22BB30444(v30);
  v112 = v31;
  v33 = *(v32 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v34);
  v36 = &v96 - v35;
  v37 = _s20DisambiguationResultOMa(0);
  v38 = sub_22BB2F330(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BB30C74();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  sub_22BB7037C();
  MEMORY[0x28223BE20](v45);
  v47 = &v96 - v46;
  v49 = v3[3];
  v48 = v3[4];
  v114 = v3;
  sub_22BB69FEC(v3, v49);
  sub_22BCCDA30();
  v50 = v115;
  sub_22BDBB894();
  if (!v50)
  {
    v97 = v1;
    v98 = v43;
    v99 = v47;
    v115 = v37;
    v51 = sub_22BDBB5E4();
    sub_22BD006D0(v51, 0);
    if (v53 != v52 >> 1)
    {
      sub_22BB2F4F4();
      if (v56 == v57)
      {
        __break(1u);
        return;
      }

      v58 = *(v55 + v54);
      sub_22BD006A8(v54 + 1);
      v60 = v59;
      v62 = v61;
      swift_unknownObjectRelease();
      if (v60 == v62 >> 1)
      {
        v63 = v58;
        v64 = v111;
        switch(v63)
        {
          case 1:
            sub_22BCCDB2C();
            sub_22BB8985C();
            v89 = sub_22BDBB5B4();
            swift_unknownObjectRelease();
            v90 = sub_22BB3CAE4();
            v91(v90);
            v92 = sub_22BB69A70();
            v93(v92);
            v94 = v97;
            *v97 = v89;
            swift_storeEnumTagMultiPayload();
            sub_22BB38B08();
            v95 = v94;
            v68 = v99;
            sub_22BCCD920(v95, v99);
            goto LABEL_14;
          case 2:
            sub_22BCCDAD8();
            sub_22BB8985C();
            sub_22BDBA594();
            sub_22BB6B68C();
            sub_22BCC988C(v77, v78);
            v79 = v98;
            sub_22BDBB5D4();
            v80 = v112;
            swift_unknownObjectRelease();
            v85 = *(v106 + 8);
            v86 = sub_22BB3B69C();
            v87(v86);
            (*(v80 + 8))(v36, v30);
            swift_storeEnumTagMultiPayload();
            sub_22BB38B08();
            v68 = v99;
            sub_22BCCD920(v79, v99);
            v88 = v114;
            v64 = v111;
            goto LABEL_15;
          case 3:
            sub_22BCCDA84();
            sub_22BB8985C();
            swift_unknownObjectRelease();
            v81 = sub_22BB3CAE4();
            v82(v81);
            v83 = sub_22BB69A70();
            v84(v83);
            v68 = v99;
            goto LABEL_13;
          default:
            sub_22BCCDB80();
            v65 = v107;
            sub_22BB8985C();
            swift_unknownObjectRelease();
            (*(v100 + 8))(v65, v101);
            v66 = sub_22BB69A70();
            v67(v66);
            v68 = v99;
LABEL_13:
            swift_storeEnumTagMultiPayload();
LABEL_14:
            v88 = v114;
LABEL_15:
            sub_22BB38B08();
            sub_22BCCD920(v68, v64);
            v76 = v88;
            break;
        }

        goto LABEL_10;
      }
    }

    v69 = v115;
    v70 = sub_22BDBB3A4();
    swift_allocError();
    v72 = v71;
    v73 = *(sub_22BBE6DE0(&qword_27D8E32F0, &qword_22BDBE530) + 48);
    *v72 = v69;
    sub_22BDBB564();
    sub_22BB36D74();
    (*(*(v70 - 8) + 104))(v72, *MEMORY[0x277D84160], v70);
    swift_willThrow();
    swift_unknownObjectRelease();
    v74 = sub_22BB69A70();
    v75(v74);
  }

  v76 = v114;
LABEL_10:
  sub_22BB32FA4(v76);
  sub_22BB376A8();
}

unint64_t sub_22BCCD0D4()
{
  result = qword_27D8E40D0;
  if (!qword_27D8E40D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E40D0);
  }

  return result;
}

uint64_t sub_22BCCD128(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E40D8, _s24ActionConfirmationResultVMa);
  result = sub_22BCC988C(&qword_27D8E40E0, _s24ActionConfirmationResultVMa);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCCD1AC(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E40E8, _s20ActionStepEvaluationVMa);
  result = sub_22BCC988C(&qword_27D8E40F0, _s20ActionStepEvaluationVMa);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCCD230(uint64_t a1)
{
  v2 = sub_22BCCDB80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCCD26C(uint64_t a1)
{
  v2 = sub_22BCCDB80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCCD2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCCC088(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BCCD2D8(uint64_t a1)
{
  v2 = sub_22BCCDA30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCCD314(uint64_t a1)
{
  v2 = sub_22BCCDA30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCCD354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCCC290(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BCCD380(uint64_t a1)
{
  v2 = sub_22BCCDB2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCCD3BC(uint64_t a1)
{
  v2 = sub_22BCCDB2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCCD3F8(uint64_t a1)
{
  v2 = sub_22BCCDA84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCCD434(uint64_t a1)
{
  v2 = sub_22BCCDA84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCCD474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BCCC318(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BCCD4A0(uint64_t a1)
{
  v2 = sub_22BCCDAD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BCCD4DC(uint64_t a1)
{
  v2 = sub_22BCCDAD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BCCD54C()
{
  v3 = sub_22BDBA594();
  v4 = sub_22BB30444(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = sub_22BB310F8();
  v10 = _s20DisambiguationResultOMa(v9);
  v11 = sub_22BB2F330(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  sub_22BB31580();
  sub_22BB37274();
  sub_22BCCD9D4(v0, v2);
  swift_getEnumCaseMultiPayload();
  sub_22BB3932C();
  switch(v14)
  {
    case 1:
      (*(v6 + 32))(v1, v2, v3);
      sub_22BDBB334();
      MEMORY[0x2318A4C40](0x655365756C61762ELL, 0xEF2864657463656CLL);
      sub_22BDBB474();
      sub_22BB36A44();
      v17 = *(v6 + 8);
      v18 = sub_22BB3182C();
      v19(v18);
      break;
    case 2:
    case 3:
      return sub_22BB3627C();
    default:
      v15 = *v2;
      sub_22BDBB334();

      v16 = sub_22BDBB684();
      MEMORY[0x2318A4C40](v16);

      sub_22BB36A44();
      break;
  }

  return sub_22BB3627C();
}

uint64_t sub_22BCCD794(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E40F8, _s25ValueDisambiguationResultVMa);
  result = sub_22BCC988C(&qword_27D8E4100, _s25ValueDisambiguationResultVMa);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCCD818(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E4108, _s19ValueStepEvaluationVMa);
  result = sub_22BCC988C(&qword_27D8E4110, _s19ValueStepEvaluationVMa);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCCD89C(uint64_t a1)
{
  *(a1 + 8) = sub_22BCC988C(&qword_27D8E4118, _s23StatementStepEvaluationOMa);
  result = sub_22BCC988C(&qword_27D8E4120, _s23StatementStepEvaluationOMa);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22BCCD920(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB30F68();
  v6 = v5(v4);
  sub_22BB2F330(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_22BCCD97C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BCCD9D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB30F68();
  v6 = v5(v4);
  sub_22BB2F330(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

unint64_t sub_22BCCDA30()
{
  result = qword_27D8E4178;
  if (!qword_27D8E4178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4178);
  }

  return result;
}

unint64_t sub_22BCCDA84()
{
  result = qword_27D8E4180;
  if (!qword_27D8E4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4180);
  }

  return result;
}

unint64_t sub_22BCCDAD8()
{
  result = qword_27D8E4188;
  if (!qword_27D8E4188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4188);
  }

  return result;
}

unint64_t sub_22BCCDB2C()
{
  result = qword_27D8E4190;
  if (!qword_27D8E4190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4190);
  }

  return result;
}

unint64_t sub_22BCCDB80()
{
  result = qword_27D8E4198;
  if (!qword_27D8E4198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4198);
  }

  return result;
}

unint64_t sub_22BCCDBD4()
{
  result = qword_27D8E41E8;
  if (!qword_27D8E41E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E41E8);
  }

  return result;
}

unint64_t sub_22BCCDC28()
{
  result = qword_27D8E41F0;
  if (!qword_27D8E41F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E41F0);
  }

  return result;
}

unint64_t sub_22BCCDC7C()
{
  result = qword_27D8E41F8;
  if (!qword_27D8E41F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E41F8);
  }

  return result;
}

unint64_t sub_22BCCDCD0()
{
  result = qword_27D8E4200;
  if (!qword_27D8E4200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4200);
  }

  return result;
}

_BYTE *sub_22BCCDD24(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s20DisambiguationResultO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BCCDF2C(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BCCDFEC()
{
  result = qword_27D8E4228;
  if (!qword_27D8E4228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4228);
  }

  return result;
}

unint64_t sub_22BCCE044()
{
  result = qword_27D8E4230;
  if (!qword_27D8E4230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4230);
  }

  return result;
}

unint64_t sub_22BCCE09C()
{
  result = qword_27D8E4238;
  if (!qword_27D8E4238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4238);
  }

  return result;
}

unint64_t sub_22BCCE0F4()
{
  result = qword_27D8E4240;
  if (!qword_27D8E4240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4240);
  }

  return result;
}

unint64_t sub_22BCCE14C()
{
  result = qword_27D8E4248;
  if (!qword_27D8E4248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4248);
  }

  return result;
}

unint64_t sub_22BCCE1A4()
{
  result = qword_27D8E4250;
  if (!qword_27D8E4250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4250);
  }

  return result;
}

unint64_t sub_22BCCE1FC()
{
  result = qword_27D8E4258;
  if (!qword_27D8E4258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4258);
  }

  return result;
}

unint64_t sub_22BCCE254()
{
  result = qword_27D8E4260;
  if (!qword_27D8E4260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4260);
  }

  return result;
}

unint64_t sub_22BCCE2AC()
{
  result = qword_27D8E4268;
  if (!qword_27D8E4268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4268);
  }

  return result;
}

unint64_t sub_22BCCE304()
{
  result = qword_27D8E4270;
  if (!qword_27D8E4270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4270);
  }

  return result;
}

unint64_t sub_22BCCE35C()
{
  result = qword_27D8E4278;
  if (!qword_27D8E4278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4278);
  }

  return result;
}

unint64_t sub_22BCCE3B4()
{
  result = qword_27D8E4280;
  if (!qword_27D8E4280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4280);
  }

  return result;
}

unint64_t sub_22BCCE40C()
{
  result = qword_27D8E4288;
  if (!qword_27D8E4288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4288);
  }

  return result;
}

unint64_t sub_22BCCE464()
{
  result = qword_27D8E4290;
  if (!qword_27D8E4290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4290);
  }

  return result;
}

unint64_t sub_22BCCE4BC()
{
  result = qword_27D8E4298;
  if (!qword_27D8E4298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E4298);
  }

  return result;
}

unint64_t sub_22BCCE514()
{
  result = qword_27D8E42A0;
  if (!qword_27D8E42A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E42A0);
  }

  return result;
}

unint64_t sub_22BCCE56C()
{
  result = qword_27D8E42A8;
  if (!qword_27D8E42A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E42A8);
  }

  return result;
}

unint64_t sub_22BCCE5C4()
{
  result = qword_27D8E42B0;
  if (!qword_27D8E42B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E42B0);
  }

  return result;
}

unint64_t sub_22BCCE61C()
{
  result = qword_27D8E42B8;
  if (!qword_27D8E42B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E42B8);
  }

  return result;
}

unint64_t sub_22BCCE674()
{
  result = qword_27D8E42C0;
  if (!qword_27D8E42C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E42C0);
  }

  return result;
}

unint64_t sub_22BCCE6CC()
{
  result = qword_27D8E42C8;
  if (!qword_27D8E42C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E42C8);
  }

  return result;
}

unint64_t sub_22BCCE724()
{
  result = qword_27D8E42D0;
  if (!qword_27D8E42D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E42D0);
  }

  return result;
}

uint64_t sub_22BCCE794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v201 = a2;
  v211 = a3;
  v203 = sub_22BBE6DE0(&qword_27D8E3E10, &qword_22BDC1258);
  v4 = sub_22BB2F330(v203);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v7);
  sub_22BB2F39C();
  sub_22BB30B8C(v8);
  v196 = sub_22BDB5E44();
  v9 = sub_22BB30444(v196);
  v194 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  sub_22BB30B8C(v14 - v13);
  v206 = sub_22BDB4C34();
  v15 = sub_22BB30444(v206);
  v205 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v19);
  sub_22BB2F39C();
  sub_22BB30B8C(v20);
  v199 = sub_22BDB55D4();
  v21 = sub_22BB30444(v199);
  v198 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BB30574();
  sub_22BB30B8C(v26 - v25);
  v209 = sub_22BDB90B4();
  v27 = sub_22BB30444(v209);
  v208 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BB30574();
  sub_22BB30B8C(v32 - v31);
  v229 = sub_22BDB5404();
  v33 = sub_22BB30444(v229);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v38);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v39);
  sub_22BB2F384();
  v214 = v40;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v41);
  sub_22BB2F384();
  v219 = v42;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v43);
  sub_22BB2F39C();
  v222 = v44;
  v45 = sub_22BDB43E4();
  v46 = sub_22BB30444(v45);
  v223 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22BB30574();
  v226 = v51 - v50;
  v224 = sub_22BDB87F4();
  v52 = sub_22BB30444(v224);
  v227 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v56);
  sub_22BB2F384();
  v231 = v57;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v58);
  sub_22BB2F39C();
  v220 = v59;
  v216 = _s20StatementResultEventVMa(0);
  v60 = sub_22BB2F330(v216);
  v62 = *(v61 + 64);
  v63 = MEMORY[0x28223BE20](v60);
  v65 = &v190 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v67 = &v190 - v66;
  v68 = sub_22BDB77D4();
  v69 = sub_22BB30444(v68);
  v228 = v70;
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v69);
  sub_22BB30560();
  v221 = v73;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v74);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v75);
  sub_22BB2F384();
  v215 = v76;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v77);
  sub_22BDB6404();
  sub_22BCBE9F8(a1, v67);
  v210 = a1;
  sub_22BCBE9F8(a1, v65);
  v78 = sub_22BDB77C4();
  v79 = sub_22BDBB104();
  v80 = os_log_type_enabled(v78, v79);
  v225 = v35;
  v217 = v68;
  v218 = v45;
  if (v80)
  {
    v81 = swift_slowAlloc();
    v191 = swift_slowAlloc();
    v230 = v191;
    *v81 = 136315395;
    sub_22BB32368();
    sub_22BBB8F84(v82, v83);
    sub_22BDBB684();
    v85 = v84;
    sub_22BCD0054(v67);
    v86 = sub_22BB38B20();
    v88 = sub_22BB32EE0(v86, v85, v87);

    *(v81 + 4) = v88;
    *(v81 + 12) = 2085;
    sub_22BB38DDC();
    v89(v220);
    sub_22BDBAC14();
    v91 = v90;
    sub_22BCD0054(v65);
    v92 = sub_22BB38B20();
    v94 = sub_22BB32EE0(v92, v91, v93);
    v45 = v218;

    *(v81 + 14) = v94;
    _os_log_impl(&dword_22BB2C000, v78, v79, "Evaluating statement result with id=%s, result=%{sensitive}s", v81, 0x16u);
    swift_arrayDestroy();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    v35 = v225;
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    v95 = *(v228 + 8);
  }

  else
  {

    sub_22BCD0054(v65);
    sub_22BCD0054(v67);
    v98 = *(v228 + 8);
  }

  v96 = sub_22BB362AC();
  v220 = v97;
  (v97)(v96);
  (*(v223 + 16))(v226, v210, v45);
  sub_22BB38DDC();
  v216 = v99;
  v210 = v100;
  (v100)(v231);
  v101 = v207;
  sub_22BDB87E4();
  v102 = v222;
  sub_22BDB9094();
  (*(v208 + 8))(v101, v209);
  v104 = v35 + 16;
  v103 = *(v35 + 16);
  v105 = v219;
  v106 = v229;
  v103(v219, v102, v229);
  v107 = (*(v35 + 88))(v105, v106);
  v109 = v107 == *MEMORY[0x277D1CBF0] || v107 == *MEMORY[0x277D1CB98] || v107 == *MEMORY[0x277D1CBA8];
  v110 = v214;
  if (!v109)
  {
    if (v107 == *MEMORY[0x277D1CBB0])
    {
LABEL_15:
      v124 = sub_22BB36D94();
      sub_22BB69088(v102 + *(v124 + 24), &v230);
      sub_22BB3779C();
      sub_22BCCFC24(v226, v125, v126);
      sub_22BB32FA4(&v230);
      v35 = v225;
      (*(v225 + 8))(v219, v229);
      sub_22BB31114();
      v127 = v224;
      v122 = v231;
      goto LABEL_24;
    }

    v131 = v103;
    v132 = v219;
    v45 = v213;
    v127 = v224;
    v35 = v225;
    v122 = v231;
    if (v107 == *MEMORY[0x277D1CBB8] || v107 == *MEMORY[0x277D1CBD0] || v107 == *MEMORY[0x277D1CBD8])
    {
      v133 = sub_22BB36D94();
      sub_22BB69088(v102 + *(v133 + 24), &v230);
      sub_22BB3779C();
      sub_22BCCFC24(v226, v134, v135);
      sub_22BB32FA4(&v230);
      (*(v35 + 8))(v132, v229);
LABEL_22:
      v110 = v217;
LABEL_23:
      v102 = v212;
      goto LABEL_24;
    }

    if (v107 == *MEMORY[0x277D1CBC0])
    {
      v157 = sub_22BB380C4();
      v158(v157);
      (*(v198 + 32))(v197, v132, v199);
      sub_22BB69A90();
      sub_22BDB8794();
      sub_22BB3779C();
      v159 = sub_22BB362AC();
      sub_22BCCF9DC(v159, v160, v226, v161);
      v162 = sub_22BB36898();
      v163 = v206;
      (v132)(v162, v206);
      v164 = v163;
      v122 = v231;
      (v132)(v110, v164);
      (*(v198 + 8))(v197, v199);
      v165 = _s23StatementStepEvaluationOMa(0);
      sub_22BB53D50(v165);
      goto LABEL_22;
    }

    if (v107 == *MEMORY[0x277D1CBE0])
    {
      v166 = sub_22BB380C4();
      v167(v166);
      v168 = v194;
      v102 = v195;
      (*(v194 + 32))(v195, v132, v196);
      sub_22BB69A90();
      sub_22BDB8794();
      sub_22BB3779C();
      v169 = sub_22BB362AC();
      sub_22BCCFA20(v169, v170, v226, v171);
      v172 = sub_22BB36898();
      v173 = v206;
      (v132)(v172, v206);
      v174 = v173;
      v122 = v231;
      (v132)(v110, v174);
      v175 = *(v168 + 8);
      v45 = v168 + 8;
      v175(v195, v196);
      v176 = _s23StatementStepEvaluationOMa(0);
      sub_22BB53D50(v176);
      sub_22BB31114();
      goto LABEL_24;
    }

    v105 = v219;
    v103 = v131;
    if (v107 != *MEMORY[0x277D1CBA0])
    {
      if (v107 == *MEMORY[0x277D1CBC8])
      {
        goto LABEL_15;
      }

      v105 = v219;
      v103 = v131;
      v35 = v225;
      if (v107 != *MEMORY[0x277D1CBE8])
      {
        v110 = v193;
        sub_22BDB6404();
        v177 = v192;
        v178 = v229;
        v103(v192, v102, v229);
        v179 = sub_22BDB77C4();
        v180 = v178;
        v181 = sub_22BDBB114();
        if (os_log_type_enabled(v179, v181))
        {
          v182 = swift_slowAlloc();
          v215 = swift_slowAlloc();
          v230 = v215;
          *v182 = 136642819;
          v127 = v103;
          v103(v200, v177, v180);
          v183 = sub_22BDBAC14();
          v110 = v184;
          v185 = sub_22BB3728C();
          (v103)(v185);
          v104 = sub_22BB32EE0(v183, v110, &v230);

          *(v182 + 4) = v104;
          _os_log_impl(&dword_22BB2C000, v179, v181, "Found an unhandled statement outcome, outcome=%{sensitive}s", v182, 0xCu);
          sub_22BB32FA4(v215);
          sub_22BB2F368();
          MEMORY[0x2318A6080]();
          sub_22BB2F368();
          MEMORY[0x2318A6080]();
        }

        else
        {

          v186 = sub_22BB3728C();
          v127(v186);
        }

        sub_22BB37D28();
        sub_22BB35710();
        v187();
        v188 = v219;
        v45 = v213;
        v189 = _s23StatementStepEvaluationOMa(0);
        sub_22BB3A68C(v189);
        (v127)(v188, v229);
        v127 = v224;
        v35 = v225;
        v122 = v231;
        goto LABEL_23;
      }
    }
  }

  v111 = *(v35 + 8);
  v112 = v105;
  v113 = v229;
  v111(v112, v229);
  sub_22BDB6404();
  v103(v110, v102, v113);
  v114 = sub_22BDB77C4();
  v115 = sub_22BDBB104();
  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v209 = v116;
    v219 = swift_slowAlloc();
    v230 = v219;
    *v116 = 136642819;
    v117 = v115;
    v118 = v214;
    v103(v200, v214, v113);
    sub_22BB362AC();
    v119 = sub_22BDBAC14();
    v110 = v120;
    v111(v118, v113);
    v104 = sub_22BB32EE0(v119, v110, &v230);

    v121 = v209;
    *(v209 + 1) = v104;
    _os_log_impl(&dword_22BB2C000, v114, v117, "Skipping statement outcome not related to plan resolution, outcome=%{sensitive}s", v121, 0xCu);
    sub_22BB32FA4(v219);
    v122 = v231;
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    sub_22BB37D28();
    sub_22BB35710();
    v123();
  }

  else
  {

    v128 = sub_22BB362AC();
    (v111)(v128);
    sub_22BB37D28();
    sub_22BB35710();
    v129();
    v122 = v231;
  }

  v130 = _s23StatementStepEvaluationOMa(0);
  sub_22BB3A68C(v130);
  v102 = v212;
  v127 = v224;
  v35 = v225;
  v45 = v213;
LABEL_24:
  sub_22BDB6404();
  v210(v45, v122, v127);
  sub_22BCD00B0(v104, v102);
  v136 = v102;
  v137 = sub_22BDB77C4();
  v138 = sub_22BDBB0F4();
  if (os_log_type_enabled(v137, v138))
  {
    v139 = swift_slowAlloc();
    v219 = swift_slowAlloc();
    v230 = v219;
    *v139 = 136315394;
    v140 = v45;
    v141 = v204;
    LODWORD(v216) = v138;
    sub_22BDB8794();
    sub_22BBB8F84(&qword_27D8E2F68, MEMORY[0x277D1C338]);
    v142 = v127;
    v143 = v206;
    sub_22BDBB684();
    v145 = v144;
    (*(v205 + 8))(v141, v143);
    v146 = *(v227 + 8);
    v146(v140, v142);
    v147 = sub_22BB38B20();
    v149 = sub_22BB32EE0(v147, v145, v148);

    *(v139 + 4) = v149;
    *(v139 + 12) = 2080;
    sub_22BCD00B0(v136, v202);
    sub_22BDBAC14();
    v151 = v150;
    sub_22BCCFF8C(v136);
    v152 = sub_22BB38B20();
    v154 = sub_22BB32EE0(v152, v151, v153);

    *(v139 + 14) = v154;
    _os_log_impl(&dword_22BB2C000, v137, v216, "Generated a statement step result for statement %s: %s", v139, 0x16u);
    swift_arrayDestroy();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    v220(v221, v217);
    (*(v225 + 8))(v222, v229);
    v146(v231, v142);
  }

  else
  {

    sub_22BCCFF8C(v136);
    v155 = *(v227 + 8);
    v155(v45, v127);
    v220(v221, v110);
    (*(v35 + 8))(v222, v229);
    v155(v231, v127);
  }

  return (*(v223 + 8))(v226, v218);
}

uint64_t sub_22BCCFA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, void (*a6)(uint64_t)@<X7>, uint64_t a7@<X8>)
{
  v13 = _s19ParameterStepResultOMa(0);
  v14 = sub_22BB2F330(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  v19 = v18 - v17;
  a4();
  v20 = *(a5(0) + 20);
  v21 = sub_22BDB43E4();
  sub_22BB2F330(v21);
  (*(v22 + 16))(v19 + v20, a3);
  swift_storeEnumTagMultiPayload();
  v23 = sub_22BDB4C34();
  sub_22BB2F330(v23);
  v25 = *(v24 + 16);
  v25(a7, a1, v23);
  v26 = _s23ParameterStepEvaluationVMa(0);
  v27 = (v25)(a7 + v26[5], a2, v23);
  a6(v27);
  v28 = a7 + v26[6];
  sub_22BDB8364();
  sub_22BCCFFF4(v19, a7 + v26[7], _s19ParameterStepResultOMa);
  _s23StatementStepEvaluationOMa(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22BCCFC24@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22BDB43E4();
  v7 = sub_22BB30444(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v14 = v13 - v12;
  v15 = sub_22BDB77D4();
  v16 = sub_22BB30444(v15);
  v44 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  v22 = v21 - v20;
  v23 = sub_22BBE6DE0(&qword_27D8E3E10, &qword_22BDC1258);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v40 - v25;
  v27 = *sub_22BB69FEC(a2, a2[3]);
  sub_22BCBD54C(a1, v26);
  v28 = _s23StatementStepEvaluationOMa(0);
  if (sub_22BB3AA28(v26, 1, v28) == 1)
  {
    v43 = v15;
    sub_22BCCFF8C(v26);
    sub_22BDB6404();
    (*(v9 + 16))(v14, a1, v6);
    v29 = sub_22BDB77C4();
    v30 = sub_22BDBB114();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v45 = v41;
      *v31 = 136315138;
      sub_22BB32368();
      sub_22BBB8F84(v32, v33);
      v34 = sub_22BDBB684();
      v42 = a3;
      v36 = v35;
      (*(v9 + 8))(v14, v6);
      v37 = sub_22BB32EE0(v34, v36, &v45);
      a3 = v42;

      *(v31 + 4) = v37;
      _os_log_impl(&dword_22BB2C000, v29, v30, "Cannot retrieve a statement step for a prompt outcome with statementEventId=%s", v31, 0xCu);
      sub_22BB32FA4(v41);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
    }

    else
    {

      (*(v9 + 8))(v14, v6);
    }

    (*(v44 + 8))(v22, v43);
    v38 = 1;
  }

  else
  {
    sub_22BCCFFF4(v26, a3, _s23StatementStepEvaluationOMa);
    v38 = 0;
  }

  return sub_22BB336D0(a3, v38, 1, v28);
}

uint64_t sub_22BCCFF8C(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E3E10, &qword_22BDC1258);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BCCFFF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BB2F330(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22BCD0054(uint64_t a1)
{
  v2 = _s20StatementResultEventVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BCD00B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3E10, &qword_22BDC1258);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BCD0120@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (sub_22BD84660(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = _s23StatementStepEvaluationOMa(0);
    sub_22BB2F330(v8);
    sub_22BCD1054(v7 + *(v9 + 72) * v6, a1, _s23StatementStepEvaluationOMa);
    v10 = a1;
    v11 = 0;
    v12 = v8;
  }

  else
  {
    v12 = _s23StatementStepEvaluationOMa(0);
    v10 = a1;
    v11 = 1;
  }

  return sub_22BB336D0(v10, v11, 1, v12);
}

uint64_t sub_22BCD01DC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v191 = a4;
  v176 = a3;
  v171 = sub_22BDB90B4();
  v6 = sub_22BB30444(v171);
  v170 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB305A8();
  v169 = v10;
  sub_22BB2F120();
  v11 = sub_22BDB85E4();
  v12 = sub_22BB2F0C8(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB305A8();
  v166 = v15;
  v16 = sub_22BB2F120();
  v167 = _s26PromptStatementStepBuilderVMa(v16);
  v17 = sub_22BB2F330(v167);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BB305A8();
  v168 = v20;
  sub_22BB2F120();
  v21 = sub_22BDB4C34();
  v180 = sub_22BB30444(v21);
  v181 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v180);
  sub_22BB305A8();
  v179 = v25;
  v26 = sub_22BBE6DE0(&qword_27D8E3DE8, &unk_22BDC1220);
  v27 = sub_22BB2F0C8(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v175 = &v161 - v30;
  v31 = sub_22BB2F120();
  v177 = _s20StatementResultEventVMa(v31);
  v32 = sub_22BB2F330(v177);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v35);
  v165 = &v161 - v36;
  v37 = sub_22BBE6DE0(&qword_27D8E3EA0, &qword_22BDC1370);
  v38 = sub_22BB2F0C8(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v182 = &v161 - v41;
  sub_22BB2F120();
  v193 = sub_22BDB5B14();
  v42 = sub_22BB30444(v193);
  v178 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v46);
  v185 = &v161 - v47;
  sub_22BB2F120();
  v48 = sub_22BDB8624();
  v49 = sub_22BB30444(v48);
  v188 = v50;
  v189 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22BB305A8();
  v183 = v53;
  sub_22BB2F120();
  v54 = sub_22BDB77D4();
  v55 = sub_22BB30444(v54);
  v186 = v56;
  v187 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22BB30560();
  sub_22BB30B7C();
  v60 = MEMORY[0x28223BE20](v59);
  v174 = &v161 - v61;
  MEMORY[0x28223BE20](v60);
  v190 = &v161 - v62;
  v63 = sub_22BBE6DE0(&qword_27D8E42D8, &unk_22BDC2C60);
  v64 = sub_22BB2F0C8(v63);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  v68 = &v161 - v67;
  v69 = sub_22BDB43E4();
  v70 = sub_22BB30444(v69);
  v72 = v71;
  v74 = *(v73 + 64);
  v75 = MEMORY[0x28223BE20](v70);
  v77 = &v161 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v75);
  v79 = &v161 - v78;
  v80 = _s19SystemResponseEventVMa(0);
  v81 = sub_22BB2F330(v80);
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v81);
  sub_22BB30560();
  v173 = v84;
  MEMORY[0x28223BE20](v85);
  v87 = &v161 - v86;
  sub_22BDB8614();
  sub_22BD81134(v79, a2);
  v162 = v72;
  v88 = *(v72 + 8);
  v184 = v69;
  v88(v79, v69);
  if (sub_22BB3AA28(v68, 1, v80) == 1)
  {
    sub_22BB58728(v68, &qword_27D8E42D8, &unk_22BDC2C60);
    sub_22BDB6404();
    v89 = v183;
    (*(v188 + 16))(v183, a1, v189);
    v90 = sub_22BDB77C4();
    v91 = sub_22BDBB114();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      v194 = v193;
      *v92 = 136315138;
      LODWORD(v185) = v91;
      sub_22BDB8614();
      sub_22BB32368();
      sub_22BBB8F84(v93, v94);
      v95 = v184;
      v96 = sub_22BDBB684();
      v98 = v97;
      v88(v77, v95);
      (*(v188 + 8))(v89, v189);
      v99 = sub_22BB32EE0(v96, v98, &v194);

      *(v92 + 4) = v99;
      _os_log_impl(&dword_22BB2C000, v90, v185, "Cannot find a response event for a system prompt resolution with systemResponseEventId=%s", v92, 0xCu);
      sub_22BB32FA4(v193);
      sub_22BB30AF0();
      sub_22BB30AF0();
    }

    else
    {

      (*(v188 + 8))(v89, v189);
    }

    sub_22BB31134();
    v116(v190);
LABEL_14:
    v146 = _s23StatementStepEvaluationOMa(0);
    return sub_22BB336D0(v191, 1, 1, v146);
  }

  v190 = a1;
  sub_22BCD0FF4(v68, v87, _s19SystemResponseEventVMa);
  v100 = &v87[*(v80 + 20)];
  v101 = v182;
  sub_22BCB5EE0();
  if (sub_22BB3AA28(v101, 1, v193) == 1)
  {
    sub_22BB58728(v101, &qword_27D8E3EA0, &qword_22BDC1370);
    v102 = v174;
    sub_22BDB6404();
    v103 = v173;
    sub_22BCD1054(v87, v173, _s19SystemResponseEventVMa);
    v104 = sub_22BDB77C4();
    v105 = sub_22BDBB114();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v194 = v107;
      *v106 = 136315138;
      sub_22BB32368();
      sub_22BBB8F84(v108, v109);
      v110 = sub_22BDBB684();
      v112 = v111;
      sub_22BB31D1C();
      sub_22BCD10B4(v113, v114);
      v115 = sub_22BB32EE0(v110, v112, &v194);

      *(v106 + 4) = v115;
      _os_log_impl(&dword_22BB2C000, v104, v105, "System response event with id %s is not referencing exactly one statement, cannot create a prompt statement step builder", v106, 0xCu);
      sub_22BB32FA4(v107);
      sub_22BB30AF0();
      sub_22BB30AF0();
    }

    else
    {

      sub_22BB31D1C();
      sub_22BCD10B4(v103, v144);
    }

    sub_22BB31134();
    v145(v102);
    sub_22BCD10B4(v87, v101);
    goto LABEL_14;
  }

  v189 = v87;
  v117 = v178;
  (*(v178 + 32))(v185, v101, v193);
  v118 = sub_22BB69FEC(v176, v176[3]);
  v119 = v179;
  v120 = sub_22BDB5AF4();
  v194 = *v118;
  MEMORY[0x28223BE20](v120);
  *(&v161 - 2) = v119;

  sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
  sub_22BCBD20C();
  v121 = v175;
  v122 = v177;
  sub_22BDB9074();
  v123 = v121;

  v124 = v181 + 8;
  v125 = *(v181 + 8);
  v125(v119, v180);
  if (sub_22BB3AA28(v123, 1, v122) == 1)
  {
    sub_22BB58728(v123, &qword_27D8E3DE8, &unk_22BDC1220);
    v126 = v172;
    sub_22BDB6404();
    v127 = v163;
    v128 = v185;
    (*(v117 + 16))(v163, v185, v193);
    v129 = sub_22BDB77C4();
    v130 = sub_22BDBB114();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v181 = v124;
      v132 = v131;
      v188 = v131;
      v192 = swift_slowAlloc();
      v194 = v192;
      *v132 = 136315138;
      v133 = v179;
      LODWORD(v190) = v130;
      sub_22BDB5AF4();
      sub_22BBB8F84(&qword_27D8E2F68, MEMORY[0x277D1C338]);
      v134 = v127;
      v135 = v180;
      v136 = sub_22BDBB684();
      v138 = v137;
      v125(v133, v135);
      v139 = *(v117 + 8);
      v140 = v193;
      v139(v134, v193);
      v141 = sub_22BB32EE0(v136, v138, &v194);

      v142 = v188;
      *(v188 + 4) = v141;
      _os_log_impl(&dword_22BB2C000, v129, v190, "Cannot find a statement result event for a system prompt resolution with resultStatementId=%s", v142, 0xCu);
      sub_22BB32FA4(v192);
      sub_22BB30AF0();
      sub_22BB30AF0();

      sub_22BB31134();
      v143(v172);
      v139(v185, v140);
    }

    else
    {

      v158 = *(v117 + 8);
      v159 = v193;
      v158(v127, v193);
      sub_22BB31134();
      v160(v126);
      v158(v128, v159);
    }

    sub_22BB365D4();
    goto LABEL_14;
  }

  v148 = v165;
  sub_22BCD0FF4(v123, v165, _s20StatementResultEventVMa);
  v149 = v164;
  sub_22BCD1054(v148, v164, _s20StatementResultEventVMa);
  v150 = v166;
  sub_22BDB85F4();
  v151 = v167;
  v152 = v122;
  v153 = v168;
  sub_22BCC07B4(v150, (v168 + v167[8]));
  v154 = *(v152 + 20);
  sub_22BDB8784();
  v155 = v153 + v151[5];
  sub_22BDB8794();
  (*(v162 + 16))(v153 + v151[6], v149, v184);
  v156 = v169;
  sub_22BDB87E4();
  v157 = v153 + v151[7];
  sub_22BDB9094();
  (*(v170 + 8))(v156, v171);
  sub_22BCD10B4(v149, _s20StatementResultEventVMa);
  sub_22BCBED20(v191);
  sub_22BCD10B4(v153, _s26PromptStatementStepBuilderVMa);
  sub_22BCD10B4(v148, _s20StatementResultEventVMa);
  (*(v117 + 8))(v185, v193);
  return sub_22BB365D4();
}

uint64_t sub_22BCD0FF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BB2F330(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22BCD1054(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BB2F330(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22BCD10B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BCD110C(uint64_t a1)
{
  v44 = sub_22BDB8384();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v36 = v1;
    v48 = MEMORY[0x277D84F90];
    sub_22BD28158(0, v6, 0);
    v8 = v48;
    v11 = sub_22BCD3E4C(a1);
    result = v8;
    v12 = 0;
    v13 = a1 + 64;
    v41 = v3 + 8;
    v42 = v3 + 16;
    v37 = a1 + 72;
    v38 = v6;
    v39 = v3;
    v40 = a1 + 64;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(a1 + 32))
      {
        v14 = v11 >> 6;
        if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v9)
        {
          goto LABEL_25;
        }

        v45 = v10;
        v46 = v12;
        v47 = v9;
        v15 = v43;
        v16 = v44;
        v17 = result;
        (*(v3 + 16))(v43, *(a1 + 48) + *(v3 + 72) * v11, v44);
        v18 = sub_22BDB8374();
        v19 = v3;
        v21 = v20;
        (*(v19 + 8))(v15, v16);
        result = v17;
        v48 = v17;
        v23 = *(v17 + 16);
        v22 = *(v17 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_22BD28158(v22 > 1, v23 + 1, 1);
          result = v48;
        }

        *(result + 16) = v23 + 1;
        v24 = result + 16 * v23;
        *(v24 + 32) = v18;
        *(v24 + 40) = v21;
        v25 = 1 << *(a1 + 32);
        if (v11 >= v25)
        {
          goto LABEL_26;
        }

        v13 = v40;
        v26 = *(v40 + 8 * v14);
        if ((v26 & (1 << v11)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v47)
        {
          goto LABEL_28;
        }

        v27 = v26 & (-2 << (v11 & 0x3F));
        if (v27)
        {
          v25 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
          v3 = v39;
        }

        else
        {
          v28 = v14 << 6;
          v29 = v14 + 1;
          v30 = (v37 + 8 * v14);
          v31 = v39;
          while (v29 < (v25 + 63) >> 6)
          {
            v33 = *v30++;
            v32 = v33;
            v28 += 64;
            ++v29;
            if (v33)
            {
              v34 = result;
              sub_22BBBFEB0(v11, v47, v45 & 1);
              result = v34;
              v25 = __clz(__rbit64(v32)) + v28;
              goto LABEL_18;
            }
          }

          v35 = result;
          sub_22BBBFEB0(v11, v47, v45 & 1);
          result = v35;
LABEL_18:
          v3 = v31;
        }

        v12 = v46 + 1;
        if (v46 + 1 == v38)
        {
          return result;
        }

        v10 = 0;
        v9 = *(a1 + 36);
        v11 = v25;
        if (v25 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t sub_22BCD1434(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  if (v8)
  {
LABEL_8:
    while (1)
    {
      v14 = (*(a3 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v8)))));
      v15 = v14[1];
      v29[0] = *v14;
      v29[1] = v15;

      a1(&v30, v29);
      if (v4)
      {
        break;
      }

      v16 = v30;
      v17 = *(v30 + 16);
      v18 = *(v12 + 16);
      if (__OFADD__(v18, v17))
      {
        goto LABEL_25;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v18 + v17 > *(v12 + 24) >> 1)
      {
        sub_22BBD5D64();
        v12 = v19;
      }

      if (*(v16 + 16))
      {
        v20 = (*(v12 + 24) >> 1) - *(v12 + 16);
        result = _s16CandidateSummaryVMa(0);
        v21 = *(result - 8);
        if (v20 < v17)
        {
          goto LABEL_27;
        }

        v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v23 = *(v21 + 72);
        swift_arrayInitWithCopy();

        v4 = 0;
        if (v17)
        {
          v24 = *(v12 + 16);
          v25 = __OFADD__(v24, v17);
          v26 = v24 + v17;
          if (v25)
          {
            goto LABEL_28;
          }

          *(v12 + 16) = v26;
        }
      }

      else
      {

        v4 = 0;
        if (v17)
        {
          goto LABEL_26;
        }
      }

      v8 &= v8 - 1;
      if (!v8)
      {
        goto LABEL_4;
      }
    }

    return v12;
  }

  else
  {
LABEL_4:
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {

        return v12;
      }

      v8 = *(v5 + 8 * v13);
      ++v11;
      if (v8)
      {
        v11 = v13;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

BOOL sub_22BCD167C(uint64_t a1, uint64_t a2)
{
  if ((sub_22BDB4C04() & 1) == 0)
  {
    return 0;
  }

  v4 = _s16CandidateSummaryVMa(0);
  v5 = v4[5];
  static FeedbackLearning.CandidateParameter.== infix(_:_:)();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v4[6];
  static FeedbackLearning.CandidateDefinition.== infix(_:_:)();
  if (v8 & 1) != 0 && (v9 = v4[7], (sub_22BDB7B04()) && (v10 = v4[8], v13 = *(a1 + v10), v12 = *(a2 + v10), (static FeedbackLearning.CandidateOutcome.== infix(_:_:)(&v13, &v12)))
  {
    return *(a1 + v4[9]) == *(a2 + v4[9]);
  }

  else
  {
    return 0;
  }
}

void sub_22BCD1744(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  v105 = a3;
  v104 = a2;
  v106 = a4;
  v117 = sub_22BBE6DE0(&qword_27D8E4010, &unk_22BDC2CD0);
  v5 = sub_22BB2F330(v117);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB30560();
  v116 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22BB2F384();
  v115 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22BB2F39C();
  v114 = v12;
  sub_22BB2F120();
  v13 = sub_22BDB4C34();
  v14 = sub_22BB30444(v13);
  v107 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  v20 = v19 - v18;
  v21 = sub_22BDB8F04();
  v22 = sub_22BB30444(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BB30574();
  v29 = v28 - v27;
  v30 = sub_22BDB77D4();
  v31 = sub_22BB30444(v30);
  v124 = v32;
  v125 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BB30574();
  v37 = v36 - v35;
  sub_22BDB6404();
  v38 = *(v24 + 16);
  v108 = a1;
  v38(v29, a1, v21);
  v39 = sub_22BDB77C4();
  v40 = sub_22BDBB104();
  v118 = v20;
  v103 = v13;
  if (os_log_type_enabled(v39, v40))
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v126 = v123;
    *v122 = 136315138;
    sub_22BDB8174();
    sub_22BB33D70();
    sub_22BCD3F54(v41, v42);
    sub_22BDBB684();
    LODWORD(v121) = v40;
    (*(v107 + 8))(v20, v13);
    v43 = *(v24 + 8);
    v44 = sub_22BB35470();
    v45(v44);
    v46 = sub_22BB31F54();
    v49 = sub_22BB32EE0(v46, v47, v48);

    v50 = v122;
    *(v122 + 4) = v49;
    _os_log_impl(&dword_22BB2C000, v39, v121, "Evaluating resolver request for candidate success: %s", v50, 0xCu);
    sub_22BB32FA4(v123);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  else
  {

    v51 = *(v24 + 8);
    v52 = sub_22BB35470();
    v53(v52);
  }

  (*(v124 + 8))(v37, v125);
  v54 = v108;
  v55 = sub_22BDB8ED4();
  v56 = *(v55 + 16);
  v57 = v118;
  if (v56)
  {
    v126 = MEMORY[0x277D84F90];
    sub_22BD28158(0, v56, 0);
    v58 = v126;
    v61 = sub_22BDB1D48(v55);
    v62 = 0;
    v63 = v55 + 64;
    v110 = v59;
    v111 = v56;
    v109 = v55 + 72;
    v112 = v55;
    v113 = v55 + 64;
    while ((v61 & 0x8000000000000000) == 0 && v61 < 1 << *(v55 + 32))
    {
      if ((*(v63 + 8 * (v61 >> 6)) & (1 << v61)) == 0)
      {
        goto LABEL_30;
      }

      if (*(v55 + 36) != v59)
      {
        goto LABEL_31;
      }

      v122 = 1 << v61;
      v123 = v61 >> 6;
      v120 = v62;
      v121 = v59;
      v119 = v60;
      v124 = *(v117 + 48);
      v64 = *(v55 + 48);
      v65 = sub_22BDB8384();
      sub_22BB30444(v65);
      v125 = v58;
      v67 = v66;
      (*(v68 + 16))(v114, v64 + *(v68 + 72) * v61, v65);
      v69 = *(v55 + 56);
      v70 = sub_22BDB9CB4();
      sub_22BB30444(v70);
      v72 = v71;
      (*(v71 + 16))(v114 + v124, v69 + *(v73 + 72) * v61, v70);
      (*(v67 + 32))(v115, v114, v65);
      (*(v72 + 32))(v115 + *(v117 + 48), v114 + v124, v70);
      sub_22BCD3E8C(v115, v116);
      v74 = *(v117 + 48);
      v75 = sub_22BDB8374();
      v124 = v76;
      sub_22BB58728(v115, &qword_27D8E4010, &unk_22BDC2CD0);
      (*(v67 + 8))(v116, v65);
      v58 = v125;
      (*(v72 + 8))(v116 + v74, v70);
      v126 = v125;
      v78 = v125[2];
      v77 = v125[3];
      if (v78 >= v77 >> 1)
      {
        v91 = sub_22BB2F158(v77);
        sub_22BD28158(v91, v78 + 1, 1);
        v58 = v126;
      }

      v58[2] = v78 + 1;
      v79 = &v58[2 * v78];
      v80 = v124;
      v79[4] = v75;
      v79[5] = v80;
      v55 = v112;
      v63 = v113;
      v81 = 1 << *(v112 + 32);
      if (v61 >= v81)
      {
        goto LABEL_32;
      }

      if ((*(v113 + 8 * v123) & v122) == 0)
      {
        goto LABEL_33;
      }

      if (*(v112 + 36) != v121)
      {
        goto LABEL_34;
      }

      sub_22BB5424C();
      if (v85)
      {
        v86 = v84 << 6;
        v87 = v84 + 1;
        v88 = (v109 + 8 * v84);
        v57 = v118;
        while (v87 < (v81 + 63) >> 6)
        {
          v90 = *v88++;
          v89 = v90;
          v86 += 64;
          ++v87;
          if (v90)
          {
            sub_22BBBFEB0(v61, v82, v119 & 1);
            v81 = __clz(__rbit64(v89)) + v86;
            goto LABEL_22;
          }
        }

        sub_22BBBFEB0(v61, v82, v119 & 1);
      }

      else
      {
        v81 = __clz(__rbit64(v83)) | v61 & 0x7FFFFFFFFFFFFFC0;
        v57 = v118;
      }

LABEL_22:
      v60 = 0;
      v62 = v120 + 1;
      v61 = v81;
      v59 = v110;
      if (v120 + 1 == v111)
      {

        v54 = v108;
        goto LABEL_25;
      }
    }

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
  }

  else
  {

    v58 = MEMORY[0x277D84F90];
LABEL_25:
    v92 = sub_22BDB8EE4();
    v93 = sub_22BC741B4(v92);

    v94 = v103;
    v95 = v107;
    v125 = v58;
    if (v93)
    {
      v96 = sub_22BCD110C(v93);
    }

    else
    {
      v96 = MEMORY[0x277D84F90];
    }

    sub_22BDB8174();
    sub_22BCBAE60(v57);
    MEMORY[0x28223BE20](v97);
    *(&v102 - 2) = v57;
    sub_22BCA83A8();
    v99 = v98;

    (*(v95 + 8))(v57, v94);
    v126 = v125;
    sub_22BD66B50(v96);
    v100 = sub_22BD1D0F4(v126);
    MEMORY[0x28223BE20](v100);
    *(&v102 - 2) = v105;
    *(&v102 - 1) = v54;
    v101 = sub_22BCD1434(sub_22BCD3F18, (&v102 - 4), v100);

    v126 = v99;
    sub_22BBD5D38(v101);
    *v106 = v126;
  }
}

uint64_t sub_22BCD2044@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22BDB4C34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *a1;
  v9 = a1[1];
  sub_22BDB8174();
  sub_22BCAE988();
  v15 = v8;
  v16 = v10;
  v17 = v9;
  sub_22BCA83A8();
  v12 = v11;

  result = (*(v5 + 8))(v8, v4);
  *a2 = v12;
  return result;
}

uint64_t sub_22BCD2194@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22BDB4C34();
  v5 = sub_22BB30444(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v12 = v11 - v10;
  v13 = a1 + *(_s20StatementResultEventVMa(0) + 20);
  sub_22BDB8794();
  sub_22BCD4170(v12);
  v21 = v12;
  v15 = sub_22BD656F0(sub_22BCD3E2C, v20, v14);

  v16 = *(v7 + 8);
  v17 = sub_22BB362AC();
  result = v18(v17);
  *a2 = v15;
  return result;
}

uint64_t sub_22BCD22C0()
{
  v1 = sub_22BB69284();
  v2 = sub_22BB2F330(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  sub_22BB377AC(v5);
  sub_22BB53C48();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_22BCD3FF4(v0, _s23StatementStepEvaluationOMa);
  }

  else
  {
    v6 = sub_22BB2F324();
    sub_22BCD404C(v6, v7);
  }

  _s18ToolStepEvaluationVMa(0);
  v8 = sub_22BB31F54();
  return sub_22BB336D0(v8, v9, 1, v10);
}

uint64_t sub_22BCD2384()
{
  v1 = sub_22BB69284();
  v2 = sub_22BB2F330(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  sub_22BB377AC(v5);
  sub_22BB53C48();
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v6 = sub_22BB2F324();
    sub_22BCD404C(v6, v7);
  }

  else
  {
    sub_22BCD3FF4(v0, _s23StatementStepEvaluationOMa);
  }

  _s19ValueStepEvaluationVMa(0);
  v8 = sub_22BB31F54();
  return sub_22BB336D0(v8, v9, 1, v10);
}

uint64_t sub_22BCD244C()
{
  v1 = sub_22BB69284();
  v2 = sub_22BB2F330(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BB30574();
  sub_22BB377AC(v5);
  sub_22BB53C48();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_22BB2F324();
    sub_22BCD404C(v6, v7);
  }

  else
  {
    sub_22BCD3FF4(v0, _s23StatementStepEvaluationOMa);
  }

  _s23ParameterStepEvaluationVMa(0);
  v8 = sub_22BB31F54();
  return sub_22BB336D0(v8, v9, 1, v10);
}

uint64_t sub_22BCD251C()
{
  result = sub_22BDB9C14();
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

uint64_t sub_22BCD25B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_22BDB4C34();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v62);
  v61 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v43 - v12;
  v13 = sub_22BDB8F04();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = &v43 - v18;
  result = MEMORY[0x28223BE20](v17);
  v58 = &v43 - v21;
  v45 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v55 = (v8 + 8);
    v56 = v24;
    v54 = (v23 - 8);
    v57 = v23;
    v26 = (v22 + v25 * (a3 - 1));
    v50 = -v25;
    v51 = (v23 + 16);
    v27 = a1 - a3;
    v52 = v22;
    v44 = v25;
    v28 = v22 + v25 * a3;
    v29 = v60;
    while (2)
    {
      v48 = v26;
      v49 = a3;
      v46 = v28;
      v47 = v27;
      v63 = v27;
      do
      {
        v30 = v58;
        v31 = v56;
        v56(v58, v28, v13);
        v32 = v13;
        v33 = v59;
        v31(v59, v26, v32);
        sub_22BDB8174();
        v34 = v61;
        sub_22BDB8174();
        v64 = sub_22BDB4BF4();
        v35 = *v55;
        v36 = v34;
        v37 = v62;
        (*v55)(v36, v62);
        v35(v29, v37);
        v38 = *v54;
        v39 = v33;
        v13 = v32;
        (*v54)(v39, v32);
        result = v38(v30, v32);
        if ((v64 & 1) == 0)
        {
          break;
        }

        if (!v52)
        {
          __break(1u);
          return result;
        }

        v40 = *v51;
        v41 = v53;
        (*v51)(v53, v28, v32);
        swift_arrayInitWithTakeFrontToBack();
        result = v40(v26, v41, v32);
        v26 += v50;
        v28 += v50;
      }

      while (!__CFADD__(v63++, 1));
      a3 = v49 + 1;
      v26 = &v48[v44];
      v27 = v47 - 1;
      v28 = v46 + v44;
      if (v49 + 1 != v45)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22BCD294C(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v136 = a1;
  v160 = sub_22BDB4C34();
  v8 = *(v160 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v160);
  v159 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v133 - v12;
  v13 = sub_22BDB8F04();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v139 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v150 = &v133 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v157 = &v133 - v21;
  MEMORY[0x28223BE20](v20);
  v161 = &v133 - v22;
  v145 = a3;
  v23 = a3[1];
  v140 = v14;
  if (v23 < 1)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_101:
    v162 = *v136;
    if (!v162)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v126 = (v25 + 16);
      v127 = *(v25 + 16);
      while (v127 >= 2)
      {
        if (!*v145)
        {
          goto LABEL_139;
        }

        v128 = v25;
        v129 = (v25 + 16 * v127);
        v130 = *v129;
        v131 = &v126[2 * v127];
        v25 = *(v131 + 1);
        sub_22BCD3538(*v145 + v140[9] * *v129, *v145 + v140[9] * *v131, *v145 + v140[9] * v25, v162);
        if (v5)
        {
          break;
        }

        if (v25 < v130)
        {
          goto LABEL_127;
        }

        if (v127 - 2 >= *v126)
        {
          goto LABEL_128;
        }

        *v129 = v130;
        v129[1] = v25;
        v132 = *v126 - v127;
        if (*v126 < v127)
        {
          goto LABEL_129;
        }

        v127 = *v126 - 1;
        sub_22BDB12C0(v131 + 16, v132, v131);
        *v126 = v127;
        v25 = v128;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v25 = sub_22BDB12A8(v25);
    goto LABEL_103;
  }

  v134 = a4;
  v24 = 0;
  v154 = (v8 + 8);
  v155 = v14 + 2;
  v152 = v14 + 4;
  v153 = (v14 + 1);
  v25 = MEMORY[0x277D84F90];
  v156 = v13;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    if (v24 + 1 < v23)
    {
      v135 = v25;
      v28 = v24;
      v137 = v24;
      v146 = v5;
      v147 = v24 + 1;
      v29 = *v145;
      v162 = v29;
      v30 = v14;
      v31 = v14[9];
      v148 = v23;
      v149 = v31;
      v32 = v29 + v31 * v27;
      v33 = v13;
      v34 = v30[2];
      v34(v161, v32, v13);
      v35 = v157;
      v143 = v34;
      v34(v157, v29 + v31 * v28, v33);
      v5 = v158;
      v25 = v161;
      sub_22BDB8174();
      v36 = v159;
      sub_22BDB8174();
      LODWORD(v144) = sub_22BDB4BF4();
      v37 = *v154;
      v38 = v160;
      (*v154)(v36, v160);
      v142 = v37;
      (v37)(v5, v38);
      v39 = v140[1];
      v39(v35, v33);
      v141 = v39;
      v39(v25, v33);
      v40 = v148;
      v41 = v137 + 2;
      v42 = v162 + v149 * (v137 + 2);
      while (1)
      {
        v43 = v41;
        if (++v147 >= v40)
        {
          break;
        }

        v5 = v161;
        v44 = v156;
        v45 = v143;
        v162 = v41;
        (v143)(v161, v42, v156);
        v25 = v157;
        v45(v157, v32, v44);
        v46 = v158;
        sub_22BDB8174();
        v47 = v159;
        sub_22BDB8174();
        LOBYTE(v151) = sub_22BDB4BF4() & 1;
        LODWORD(v151) = v151;
        v48 = v47;
        v49 = v160;
        v50 = v142;
        (v142)(v48, v160);
        v50(v46, v49);
        v51 = v141;
        v141(v25, v44);
        v51(v5, v44);
        v43 = v162;
        v40 = v148;
        v42 += v149;
        v32 += v149;
        v41 = v162 + 1;
        if ((v144 & 1) != v151)
        {
          goto LABEL_9;
        }
      }

      v147 = v40;
LABEL_9:
      if (v144)
      {
        v27 = v147;
        v26 = v137;
        v13 = v156;
        if (v147 < v137)
        {
          goto LABEL_133;
        }

        if (v137 >= v147)
        {
          v5 = v146;
          v14 = v140;
          v25 = v135;
          goto LABEL_32;
        }

        if (v40 >= v43)
        {
          v52 = v43;
        }

        else
        {
          v52 = v40;
        }

        v53 = v149 * (v52 - 1);
        v54 = v149 * v52;
        v55 = v137;
        v56 = v137 * v149;
        v5 = v146;
        v14 = v140;
        do
        {
          if (v55 != --v27)
          {
            v57 = v5;
            v58 = *v145;
            if (!*v145)
            {
              goto LABEL_140;
            }

            v162 = *v152;
            (v162)(v139, v58 + v56, v13);
            v59 = v56 < v53 || v58 + v56 >= v58 + v54;
            if (v59)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v56 != v53)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v162)(v58 + v53, v139, v13);
            v5 = v57;
            v14 = v140;
          }

          ++v55;
          v53 -= v149;
          v54 -= v149;
          v56 += v149;
        }

        while (v55 < v27);
        v25 = v135;
      }

      else
      {
        v5 = v146;
        v14 = v140;
        v25 = v135;
        v13 = v156;
      }

      v27 = v147;
      v26 = v137;
    }

LABEL_32:
    v60 = v145[1];
    if (v27 < v60)
    {
      if (__OFSUB__(v27, v26))
      {
        goto LABEL_132;
      }

      if (v27 - v26 < v134)
      {
        break;
      }
    }

LABEL_48:
    if (v27 < v26)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v123 = *(v25 + 16);
      sub_22BD8F3C8();
      v25 = v124;
    }

    v80 = *(v25 + 16);
    v81 = v80 + 1;
    if (v80 >= *(v25 + 24) >> 1)
    {
      sub_22BD8F3C8();
      v25 = v125;
    }

    *(v25 + 16) = v81;
    v82 = (v25 + 32);
    v83 = (v25 + 32 + 16 * v80);
    *v83 = v26;
    v83[1] = v27;
    v162 = *v136;
    if (!v162)
    {
      goto LABEL_141;
    }

    v147 = v27;
    if (v80)
    {
      v151 = (v25 + 32);
      while (1)
      {
        v84 = v81 - 1;
        v85 = &v82[16 * v81 - 16];
        v86 = (v25 + 16 * v81);
        if (v81 >= 4)
        {
          break;
        }

        if (v81 == 3)
        {
          v87 = *(v25 + 32);
          v88 = *(v25 + 40);
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_69:
          if (v90)
          {
            goto LABEL_118;
          }

          v102 = *v86;
          v101 = v86[1];
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_121;
          }

          v106 = *(v85 + 1);
          v107 = v106 - *v85;
          if (__OFSUB__(v106, *v85))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v104, v107))
          {
            goto LABEL_126;
          }

          if (v104 + v107 >= v89)
          {
            if (v89 < v107)
            {
              v84 = v81 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v81 < 2)
        {
          goto LABEL_120;
        }

        v109 = *v86;
        v108 = v86[1];
        v97 = __OFSUB__(v108, v109);
        v104 = v108 - v109;
        v105 = v97;
LABEL_84:
        if (v105)
        {
          goto LABEL_123;
        }

        v111 = *v85;
        v110 = *(v85 + 1);
        v97 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v97)
        {
          goto LABEL_125;
        }

        if (v112 < v104)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v84 - 1 >= v81)
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

        if (!*v145)
        {
          goto LABEL_138;
        }

        v116 = &v82[16 * v84 - 16];
        v117 = *v116;
        v118 = v84;
        v119 = &v82[16 * v84];
        v120 = *(v119 + 1);
        sub_22BCD3538(*v145 + v14[9] * *v116, *v145 + v14[9] * *v119, *v145 + v14[9] * v120, v162);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v120 < v117)
        {
          goto LABEL_113;
        }

        v146 = 0;
        v5 = v14;
        v121 = v25;
        v25 = *(v25 + 16);
        if (v118 > v25)
        {
          goto LABEL_114;
        }

        *v116 = v117;
        *(v116 + 1) = v120;
        if (v118 >= v25)
        {
          goto LABEL_115;
        }

        v81 = v25 - 1;
        sub_22BDB12C0(v119 + 16, v25 - 1 - v118, v119);
        *(v121 + 16) = v25 - 1;
        v122 = v25 > 2;
        v25 = v121;
        v14 = v5;
        v5 = v146;
        v82 = v151;
        if (!v122)
        {
          goto LABEL_98;
        }
      }

      v91 = &v82[16 * v81];
      v92 = *(v91 - 8);
      v93 = *(v91 - 7);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_116;
      }

      v96 = *(v91 - 6);
      v95 = *(v91 - 5);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_117;
      }

      v98 = v86[1];
      v99 = v98 - *v86;
      if (__OFSUB__(v98, *v86))
      {
        goto LABEL_119;
      }

      v97 = __OFADD__(v89, v99);
      v100 = v89 + v99;
      if (v97)
      {
        goto LABEL_122;
      }

      if (v100 >= v94)
      {
        v114 = *v85;
        v113 = *(v85 + 1);
        v97 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v97)
        {
          goto LABEL_130;
        }

        if (v89 < v115)
        {
          v84 = v81 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v23 = v145[1];
    v24 = v147;
    if (v147 >= v23)
    {
      goto LABEL_101;
    }
  }

  v61 = (v26 + v134);
  if (__OFADD__(v26, v134))
  {
    goto LABEL_134;
  }

  if (v61 >= v60)
  {
    v61 = v145[1];
  }

  if (v61 < v26)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v27 == v61)
  {
    goto LABEL_48;
  }

  v135 = v25;
  v146 = v5;
  v62 = *v145;
  v63 = v14[9];
  v151 = v14[2];
  v64 = v62 + v63 * (v27 - 1);
  v148 = -v63;
  v137 = v26;
  v65 = (v26 - v27);
  v149 = v62;
  v138 = v63;
  v66 = (v62 + v27 * v63);
  v141 = v61;
LABEL_41:
  v147 = v27;
  v142 = v66;
  v143 = v65;
  v144 = v64;
  v67 = v64;
  while (1)
  {
    v68 = v161;
    v69 = v151;
    (v151)(v161, v66, v13);
    v70 = v157;
    (v69)(v157, v67, v13);
    v71 = v158;
    sub_22BDB8174();
    v72 = v159;
    sub_22BDB8174();
    LODWORD(v162) = sub_22BDB4BF4();
    v73 = *v154;
    v74 = v72;
    v75 = v160;
    (*v154)(v74, v160);
    v76 = v71;
    v13 = v156;
    v73(v76, v75);
    v77 = *v153;
    (*v153)(v70, v13);
    v77(v68, v13);
    if ((v162 & 1) == 0)
    {
LABEL_46:
      v27 = v147 + 1;
      v64 = v144 + v138;
      v65 = v143 - 1;
      v66 = &v142[v138];
      if ((v147 + 1) == v141)
      {
        v27 = v141;
        v5 = v146;
        v14 = v140;
        v25 = v135;
        v26 = v137;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v149)
    {
      break;
    }

    v78 = *v152;
    v79 = v150;
    (*v152)(v150, v66, v13);
    swift_arrayInitWithTakeFrontToBack();
    v78(v67, v79, v13);
    v67 += v148;
    v66 += v148;
    v59 = __CFADD__(v65++, 1);
    if (v59)
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

uint64_t sub_22BCD3538(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v86 = a4;
  v81 = sub_22BDB4C34();
  v7 = *(v81 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v81);
  v80 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v79 = &v69 - v11;
  v85 = sub_22BDB8F04();
  v12 = *(*(v85 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v85);
  v78 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v83 = &v69 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v20 = a2 - a1 == 0x8000000000000000 && v19 == -1;
  if (v20)
  {
    goto LABEL_60;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v23 = (a2 - a1) / v19;
  v89 = a1;
  v88 = v86;
  v76 = (v7 + 8);
  v77 = (v16 + 16);
  v75 = (v16 + 8);
  v24 = v21 / v19;
  if (v23 >= v21 / v19)
  {
    v44 = v86;
    sub_22BD27708(a2, v21 / v19, v86);
    v45 = v44 + v24 * v19;
    v46 = -v19;
    v47 = v45;
    v84 = a1;
    v71 = v46;
LABEL_36:
    v48 = a2 + v46;
    v49 = a3;
    v69 = v47;
    v50 = v47;
    v72 = a2 + v46;
    v73 = a2;
    while (1)
    {
      if (v45 <= v86)
      {
        v89 = a2;
        v87 = v50;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v70 = v50;
      v82 = v49 + v46;
      v51 = v45 + v46;
      v52 = v45;
      v53 = *v77;
      v54 = v48;
      v55 = v85;
      v56 = v49;
      (*v77)(v83, v45 + v46, v85);
      v57 = v78;
      v53(v78, v54, v55);
      v58 = v79;
      sub_22BDB8174();
      v59 = v80;
      sub_22BDB8174();
      LODWORD(v74) = sub_22BDB4BF4();
      v60 = *v76;
      v61 = v59;
      v62 = v81;
      (*v76)(v61, v81);
      v60(v58, v62);
      v63 = *v75;
      (*v75)(v57, v55);
      v63(v83, v55);
      if (v74)
      {
        v45 = v52;
        a3 = v82;
        if (v56 < v73 || v82 >= v73)
        {
          a2 = v72;
          swift_arrayInitWithTakeFrontToBack();
          v47 = v70;
          v46 = v71;
          a1 = v84;
        }

        else
        {
          v67 = v70;
          v46 = v71;
          v47 = v70;
          v20 = v56 == v73;
          v68 = v72;
          a2 = v72;
          a1 = v84;
          if (!v20)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v68;
            v47 = v67;
          }
        }

        goto LABEL_36;
      }

      v64 = v82;
      if (v56 < v52 || v82 >= v52)
      {
        swift_arrayInitWithTakeFrontToBack();
        v49 = v64;
        v45 = v51;
        v50 = v51;
        v48 = v72;
        a2 = v73;
        a1 = v84;
        v46 = v71;
      }

      else
      {
        v50 = v51;
        v20 = v52 == v56;
        v49 = v82;
        v45 = v51;
        v48 = v72;
        a2 = v73;
        a1 = v84;
        v46 = v71;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          v49 = v64;
          v45 = v51;
          v50 = v51;
        }
      }
    }

    v89 = a2;
    v87 = v69;
  }

  else
  {
    v25 = v86;
    sub_22BD27708(a1, (a2 - a1) / v19, v86);
    v73 = v19;
    v74 = v25 + v23 * v19;
    v87 = v74;
    v82 = a3;
    while (v86 < v74 && a2 < a3)
    {
      v84 = a1;
      v27 = *v77;
      v28 = v83;
      v29 = v85;
      (*v77)(v83, a2, v85);
      v30 = v78;
      v27(v78, v86, v29);
      v31 = v79;
      sub_22BDB8174();
      v32 = v80;
      sub_22BDB8174();
      v33 = sub_22BDB4BF4();
      v34 = a2;
      v35 = *v76;
      v36 = v32;
      v37 = v81;
      (*v76)(v36, v81);
      v35(v31, v37);
      v38 = *v75;
      (*v75)(v30, v29);
      v38(v28, v29);
      if (v33)
      {
        v39 = v73;
        a2 = v34 + v73;
        v40 = v84;
        if (v84 < v34 || v84 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v82;
        }

        else
        {
          a3 = v82;
          if (v84 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v39 = v73;
        v42 = v86 + v73;
        v40 = v84;
        if (v84 < v86 || v84 >= v42)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v82;
          a2 = v34;
        }

        else
        {
          a3 = v82;
          a2 = v34;
          if (v84 != v86)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v88 = v42;
        v86 = v42;
      }

      a1 = v40 + v39;
      v89 = a1;
    }
  }

LABEL_58:
  sub_22BCD3CD4(&v89, &v88, &v87, MEMORY[0x277D1E158]);
  return 1;
}

void sub_22BCD3BF4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  v8 = sub_22BBE6DE0(a4, a5);
  sub_22BB2F330(v8);
  v10 = *(v9 + 72);
  if (!v10)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v7 - v6 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_20;
  }

  sub_22BB6BD18();
  v13 = !v13 || v5 >= v12;
  if (v13)
  {
    sub_22BB2F324();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {
    sub_22BB2F324();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_22BCD3CD4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  v7 = a4(0);
  sub_22BB2F330(v7);
  v9 = *(v8 + 72);
  if (!v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_20;
  }

  sub_22BB6BD18();
  v12 = !v12 || v4 >= v11;
  if (v12)
  {
    sub_22BB2F324();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    sub_22BB2F324();

    swift_arrayInitWithTakeBackToFront();
  }
}

void *sub_22BCD3D9C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_22BCD3E4C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_22BDBB2C4();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_22BCD3E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E4010, &unk_22BDC2CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BCD3F18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_22BCD2044(a1, a2);
}

uint64_t sub_22BCD3F54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BCD3F9C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB30F68();
  v5 = v4(v3);
  sub_22BB2F330(v5);
  v7 = *(v6 + 16);
  v8 = sub_22BB31F54();
  v9(v8);
  return a2;
}

uint64_t sub_22BCD3FF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BCD404C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB30F68();
  v5 = v4(v3);
  sub_22BB2F330(v5);
  v7 = *(v6 + 32);
  v8 = sub_22BB31F54();
  v9(v8);
  return a2;
}

uint64_t sub_22BCD40A4()
{
  result = sub_22BDB4C34();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FeedbackLearning.CandidateParameter(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FeedbackLearning.CandidateDefinition(319);
      if (v3 <= 0x3F)
      {
        result = sub_22BDB7B44();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_22BCD4170(uint64_t a1)
{
  v3 = type metadata accessor for FeedbackLearning.CandidateDefinition(0);
  v4 = sub_22BB30444(v3);
  v136 = v5;
  v137 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v10 = v9 - v8;
  v127 = _s24ToolDisambiguationResultVMa(0);
  v11 = sub_22BB2F330(v127);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v134 = v15 - v14;
  v16 = _s14ToolStepResultOMa(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  sub_22BB30574();
  v126 = v19 - v18;
  v135 = _s18ToolStepEvaluationVMa(0);
  v20 = sub_22BB30444(v135);
  v130 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BB30574();
  v133 = v25 - v24;
  v122 = sub_22BDB4C34();
  v26 = sub_22BB30444(v122);
  v118 = v27;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v32 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v112 - v33;
  v35 = sub_22BDB77D4();
  v36 = sub_22BB30444(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v36);
  v43 = &v112 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v45 = &v112 - v44;
  v46 = *(v1 + *(_s22ToolCandidateEvaluatorVMa() + 20));
  v138 = a1;

  sub_22BDA2A88();
  v48 = v47;
  sub_22BDB6404();
  v49 = v118;
  v50 = *(v118 + 16);
  v131 = v34;
  v51 = v34;
  v115 = a1;
  v52 = v48;
  v114 = v118 + 16;
  v113 = v50;
  v50(v51, a1, v122);

  v132 = v45;
  v53 = sub_22BDB77C4();
  LODWORD(v48) = sub_22BDBB0F4();

  LODWORD(v125) = v48;
  v54 = os_log_type_enabled(v53, v48);
  v128 = v52;
  v129 = v32;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v56 = v49;
    v123 = v53;
    v57 = v55;
    v124 = swift_slowAlloc();
    v139[0] = v124;
    *v57 = 136315394;
    sub_22BCBBA38();
    v58 = v131;
    v59 = v122;
    v60 = sub_22BDBB684();
    v62 = v61;
    v63 = v56;
    v52 = v128;
    v116 = *(v63 + 8);
    v116(v58, v59);
    v64 = sub_22BB32EE0(v60, v62, v139);
    v32 = v129;

    *(v57 + 4) = v64;
    *(v57 + 12) = 2080;
    v65 = MEMORY[0x2318A4D50](v52, v135);
    v67 = sub_22BB32EE0(v65, v66, v139);

    *(v57 + 14) = v67;
    v68 = v123;
    _os_log_impl(&dword_22BB2C000, v123, v125, "Matching tool step evaluations for statementId=%s: %s", v57, 0x16u);
    swift_arrayDestroy();
    sub_22BB30AF0();
    sub_22BB30AF0();

    v69 = sub_22BB32C28();
    v70(v69);
    v71 = v59;
  }

  else
  {

    v71 = v122;
    v116 = *(v49 + 8);
    v116(v131, v122);
    v72 = sub_22BB32C28();
    v73(v72);
  }

  v125 = *(v52 + 16);
  if (v125)
  {
    v74 = 0;
    v75 = *(v135 + 20);
    v123 = (v52 + ((*(v130 + 80) + 32) & ~*(v130 + 80)));
    v124 = v75;
    v76 = MEMORY[0x277D84F90];
    v121 = v35;
    v120 = v38;
    v119 = v43;
    while (v74 < *(v52 + 16))
    {
      v135 = v76;
      v77 = *(v130 + 72);
      v132 = v74;
      v78 = v133;
      sub_22BCD4CF8(v123 + v77 * v74, v133, _s18ToolStepEvaluationVMa);
      v79 = v78 + v124;
      v80 = v126;
      sub_22BCD4CF8(v79, v126, _s14ToolStepResultOMa);
      v81 = v80;
      v82 = v134;
      sub_22BCD4D58(v81, v134, _s24ToolDisambiguationResultVMa);
      v83 = *v82;
      v84 = *(*v82 + 16);
      if (v84)
      {
        v131 = *(v127 + 20);
        v139[0] = MEMORY[0x277D84F90];
        sub_22BD27DB8();
        v85 = v139[0];
        v86 = sub_22BDBA014();
        v87 = *(v86 - 8);
        v88 = *(v87 + 16);
        v89 = v83 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
        v90 = *(v87 + 72);
        do
        {
          v88(v10, v89, v86);
          swift_storeEnumTagMultiPayload();
          v139[0] = v85;
          v91 = *(v85 + 16);
          if (v91 >= *(v85 + 24) >> 1)
          {
            sub_22BD27DB8();
            v85 = v139[0];
          }

          *(v85 + 16) = v91 + 1;
          sub_22BCD4D58(v10, v85 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v91, type metadata accessor for FeedbackLearning.CandidateDefinition);
          v89 += v90;
          --v84;
        }

        while (v84);
        v35 = v121;
        v43 = v119;
        v71 = v122;
      }

      v92 = v134;
      sub_22BCB7C08();
      v94 = v93;

      sub_22BCD4DB8(v133, _s18ToolStepEvaluationVMa);
      sub_22BCD4DB8(v92, _s24ToolDisambiguationResultVMa);
      v32 = v129;
      v76 = v135;
      if (v94)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = *(v76 + 16);
          sub_22BD8FD18();
          v76 = v97;
        }

        v95 = *(v76 + 16);
        if (v95 >= *(v76 + 24) >> 1)
        {
          sub_22BD8FD18();
          v76 = v98;
        }

        *(v76 + 16) = v95 + 1;
        *(v76 + 8 * v95 + 32) = v94;
      }

      v52 = v128;
      v74 = v132 + 1;
      if (v132 + 1 == v125)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {

    v76 = MEMORY[0x277D84F90];
LABEL_22:
    sub_22BDB6404();
    v113(v32, v115, v71);

    v99 = sub_22BDB77C4();
    v100 = sub_22BDBB0F4();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v135 = v76;
      v139[0] = v102;
      *v101 = 136315394;
      sub_22BCBBA38();
      v103 = sub_22BDBB684();
      v104 = v32;
      v106 = v105;
      v116(v104, v71);
      v107 = sub_22BB32EE0(v103, v106, v139);

      *(v101 + 4) = v107;
      *(v101 + 12) = 2080;
      v108 = sub_22BBE6DE0(&qword_27D8E3EB0, &qword_22BDC1380);
      v109 = MEMORY[0x2318A4D50](v135, v108);
      v111 = sub_22BB32EE0(v109, v110, v139);

      *(v101 + 14) = v111;
      _os_log_impl(&dword_22BB2C000, v99, v100, "Generated tool candidate results for statementId=%s: %s", v101, 0x16u);
      swift_arrayDestroy();
      v76 = v135;
      sub_22BB30AF0();
      sub_22BB30AF0();
    }

    else
    {

      v116(v32, v71);
    }

    v117(v43, v35);
    sub_22BCDFC54(v76);
  }
}

uint64_t sub_22BCD4BA4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22BDB4C34();
  sub_22BB2F330(v6);
  (*(v7 + 16))(a3, a2);
  v8 = _s16CandidateSummaryVMa(0);
  v9 = v8[5];
  type metadata accessor for FeedbackLearning.CandidateParameter(0);
  swift_storeEnumTagMultiPayload();
  v10 = _s15CandidateResultVMa();
  sub_22BCD4CF8(&a1[*(v10 + 20)], a3 + v8[6], type metadata accessor for FeedbackLearning.CandidateDefinition);
  v11 = *(v10 + 24);
  v12 = v8[7];
  v13 = sub_22BDB7B44();
  sub_22BB2F330(v13);
  result = (*(v14 + 16))(a3 + v12, &a1[v11]);
  *(a3 + v8[8]) = *a1;
  *(a3 + v8[9]) = 1;
  return result;
}

uint64_t sub_22BCD4CF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BB2F330(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22BCD4D58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_22BB2F330(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22BCD4DB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_22BCD4E38()
{
  sub_22BDB9C14();
  if (v0 <= 0x3F)
  {
    sub_22BCD4EBC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22BCD4EBC()
{
  if (!qword_281428860)
  {
    _s18ToolStepEvaluationVMa(255);
    v0 = sub_22BDBAE24();
    if (!v1)
    {
      atomic_store(v0, &qword_281428860);
    }
  }
}

__n128 sub_22BCD4F14(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22BCD4F20(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22BCD4F60(uint64_t result, int a2, int a3)
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

uint64_t sub_22BCD4FAC(uint64_t a1, void *a2)
{
  v4 = *(v2 + 1);
  v5 = *v2;
  v6 = sub_22BB69FEC(a2, a2[3]);

  return sub_22BCD500C(a1, v6, v5, v4);
}

uint64_t sub_22BCD500C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[3] = _s19TranscriptRetrieverVMa();
  v29[4] = &off_283F7A608;
  v7 = sub_22BB8B8A0(v29);
  sub_22BCD51FC(a2, v7);
  v8 = *(a4 + 16);
  if (v8)
  {
    v27 = a3;
    v9 = 0;
    v10 = (a4 + 32);
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      v12 = v10[3];
      v13 = v10[4];
      sub_22BB69FEC(v10, v12);
      v14 = (*(v13 + 16))(a1, v29, v12, v13);
      v16 = v15;
      v18 = v17;
      v20 = v19;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = *(v11 + 16);
        sub_22BD8F874();
        v11 = v24;
      }

      v21 = *(v11 + 16);
      if (v21 >= *(v11 + 24) >> 1)
      {
        sub_22BD8F874();
        v11 = v25;
      }

      *(v11 + 16) = v21 + 1;
      v22 = v11 + 32 * v21;
      *(v22 + 32) = v14;
      *(v22 + 40) = v16;
      *(v22 + 48) = v18;
      *(v22 + 56) = v20;
      if (!v16)
      {
        break;
      }

      if (v9)
      {
        goto LABEL_11;
      }

      v9 = v18;
LABEL_12:
      v10 += 5;
      if (!--v8)
      {
        a3 = v27;
        goto LABEL_14;
      }
    }

LABEL_11:

    goto LABEL_12;
  }

LABEL_14:
  sub_22BB32FA4(v29);
  return a3;
}

uint64_t sub_22BCD51FC(uint64_t a1, uint64_t a2)
{
  v4 = _s19TranscriptRetrieverVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *_s17ActionPromptVoterVwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s19TaskCompletionVoterVwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22BCD5418@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, void (*a4)(char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a5;
  v28 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a6;
  v7 = sub_22BDB4CE4();
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BDB4E24();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22BDB5404();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v16);
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == *MEMORY[0x277D1CBF0])
  {
    (*(v17 + 96))(v20, v16);
    (*(v12 + 32))(v15, v20, v11);
    v32(v15);
    return (*(v12 + 8))(v15, v11);
  }

  else
  {
    v23 = v33;
    if (v21 == *MEMORY[0x277D1CBE8])
    {
      (*(v17 + 96))(v20, v16);
      v25 = v29;
      v24 = v30;
      (*(v29 + 32))(v10, v20, v30);
      v28(v10);
      return (*(v25 + 8))(v10, v24);
    }

    else
    {
      v26 = _s20TaskStatementOutcomeOMa(0);
      sub_22BB336D0(v23, 1, 1, v26);
      return (*(v17 + 8))(v20, v16);
    }
  }
}

uint64_t sub_22BCD5758@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v31[3] = a2;
  v5 = sub_22BBE6DE0(&qword_27D8E3DB8, &qword_22BDC1150);
  v6 = sub_22BB2F0C8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v31 - v9;
  v11 = _s20TaskStatementOutcomeOMa(0);
  v12 = sub_22BB2F330(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB30574();
  v17 = v16 - v15;
  v18 = sub_22BBE6DE0(&qword_27D8E4318, &unk_22BDC2E90);
  v19 = sub_22BB2F0C8(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BB30C74();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v31 - v26;
  v33 = *(a1 + *(type metadata accessor for FeedbackLearning.FlowExpression(0) + 20));
  v32 = a1;

  sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
  sub_22BCBD20C();
  sub_22BDB9074();

  sub_22BCD6538(v27, v24);
  if (sub_22BB3AA28(v24, 1, v11) != 1)
  {
    sub_22BB58728(v27, &qword_27D8E4318, &unk_22BDC2E90);
    sub_22BCD6694(v24, v17, _s20TaskStatementOutcomeOMa);
    sub_22BCD6694(v17, a3, _s20TaskStatementOutcomeOMa);
LABEL_6:
    v29 = 0;
    return sub_22BB336D0(a3, v29, 1, v11);
  }

  sub_22BB58728(v24, &qword_27D8E4318, &unk_22BDC2E90);
  sub_22BCD5C90(a1, v10);
  sub_22BB58728(v27, &qword_27D8E4318, &unk_22BDC2E90);
  v28 = _s23StatementCreatedOutcomeVMa(0);
  if (sub_22BB3AA28(v10, 1, v28) != 1)
  {
    sub_22BCD6638(v10, a3, _s23StatementCreatedOutcomeVMa);
    swift_storeEnumTagMultiPayload();
    sub_22BCD66F0(v10, _s23StatementCreatedOutcomeVMa);
    goto LABEL_6;
  }

  sub_22BB58728(v10, &qword_27D8E3DB8, &qword_22BDC1150);
  v29 = 1;
  return sub_22BB336D0(a3, v29, 1, v11);
}

uint64_t sub_22BCD5A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v5 = sub_22BB2F0C8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB30C74();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
  v15 = sub_22BB2F330(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  v20 = v19 - v18;
  v21 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  sub_22BB307FC(v21);
  sub_22BCD6638(a1 + v22, v20, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = sub_22BDB4C34();
      sub_22BB2F330(v25);
      (*(v26 + 8))(v20);
    }

    sub_22BDB8794();
    v27 = _s28StatementResolutionReferenceOMa(0);
    sub_22BB31F54();
  }

  else
  {
    sub_22BB33D88();
    sub_22BCD66F0(v20, v32);
    sub_22BDB87D4();
    sub_22BBCD82C(v13, v10, &qword_27D8E3218, &qword_22BDBE390);
    v33 = sub_22BDB43E4();
    if (sub_22BB3AA28(v10, 1, v33) == 1)
    {
      v30 = _s28StatementResolutionReferenceOMa(0);
      v28 = a2;
      v29 = 1;
      return sub_22BB336D0(v28, v29, 1, v30);
    }

    (*(*(v33 - 8) + 32))(a2, v10, v33);
    v27 = _s28StatementResolutionReferenceOMa(0);
    sub_22BB31F54();
  }

  swift_storeEnumTagMultiPayload();
  v28 = a2;
  v29 = 0;
  v30 = v27;
  return sub_22BB336D0(v28, v29, 1, v30);
}

uint64_t sub_22BCD5C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FeedbackLearning.FlowActionEvent(0);
  v5 = sub_22BB2F330(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v10 = v9 - v8;
  v11 = sub_22BBE6DE0(&qword_27D8E4328, &unk_22BDCC070);
  v12 = sub_22BB2F0C8(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BB30C74();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  v21 = type metadata accessor for FeedbackLearning.FlowExpressionValue.FlowExpressionType(0);
  v22 = sub_22BB2F330(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BB30574();
  v27 = v26 - v25;
  v28 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  sub_22BB307FC(v28);
  sub_22BCD6638(a1 + v29, v27, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v32 = sub_22BDB4C34();
      sub_22BB2F330(v32);
      (*(v33 + 8))(v27);
    }

    v34 = 1;
  }

  else
  {
    sub_22BB33D88();
    sub_22BCD66F0(v27, v37);
    v38 = type metadata accessor for FeedbackLearning.FlowExpression(0);
    sub_22BD39428(*(a1 + *(v38 + 24)));
    sub_22BBCD82C(v20, v17, &qword_27D8E4328, &unk_22BDCC070);
    v34 = 1;
    if (sub_22BB3AA28(v17, 1, v4) != 1)
    {
      sub_22BCD6694(v17, v10, type metadata accessor for FeedbackLearning.FlowActionEvent);
      v39 = sub_22BDB43E4();
      sub_22BB2F330(v39);
      v41 = *(v40 + 16);
      v42 = sub_22BB31F54();
      v43(v42);
      sub_22BCD66F0(v10, type metadata accessor for FeedbackLearning.FlowActionEvent);
      _s28StatementResolutionReferenceOMa(0);
      swift_storeEnumTagMultiPayload();
      v34 = 0;
    }
  }

  v35 = _s23StatementCreatedOutcomeVMa(0);
  return sub_22BB336D0(a2, v34, 1, v35);
}

uint64_t sub_22BCD5F14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v42 = a1;
  v43 = a2;
  v2 = sub_22BDB5404();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BDB90B4();
  v36 = *(v5 - 8);
  v37 = v5;
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v5);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BBE6DE0(&qword_27D8E4320, &unk_22BDC2EA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v34 - v10;
  v12 = _s28StatementResolutionReferenceOMa(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v38 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22BDB87F4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22BDB9B14();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB9B24();
  if ((*(v21 + 88))(v24, v20) == *MEMORY[0x277D1E798])
  {
    (*(v21 + 96))(v24, v20);
    (*(v16 + 32))(v19, v24, v15);
    sub_22BCD5A5C(v42, v11);
    if (sub_22BB3AA28(v11, 1, v12) == 1)
    {
      (*(v16 + 8))(v19, v15);
      sub_22BB58728(v11, &qword_27D8E4320, &unk_22BDC2EA0);
      v25 = _s20TaskStatementOutcomeOMa(0);
      return sub_22BB336D0(v43, 1, 1, v25);
    }

    else
    {
      v28 = v38;
      sub_22BCD6694(v11, v38, _s28StatementResolutionReferenceOMa);
      v29 = v35;
      sub_22BDB87E4();
      v30 = v39;
      sub_22BDB9094();
      v31 = (*(v36 + 8))(v29, v37);
      v32 = MEMORY[0x28223BE20](v31);
      *(&v34 - 2) = v28;
      MEMORY[0x28223BE20](v32);
      *(&v34 - 2) = v28;
      sub_22BCD5418(v30, sub_22BCD65A8, v33, sub_22BCD65F0, (&v34 - 4), v43);
      (*(v40 + 8))(v30, v41);
      (*(v16 + 8))(v19, v15);
      return sub_22BCD66F0(v28, _s28StatementResolutionReferenceOMa);
    }
  }

  else
  {
    v27 = _s20TaskStatementOutcomeOMa(0);
    sub_22BB336D0(v43, 1, 1, v27);
    return (*(v21 + 8))(v24, v20);
  }
}

uint64_t sub_22BCD643C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  sub_22BCD6638(a2, a5, _s28StatementResolutionReferenceOMa);
  v9 = *(a3(0) + 20);
  v10 = a4(0);
  sub_22BB2F330(v10);
  (*(v11 + 16))(a5 + v9, a1);
  v12 = _s20TaskStatementOutcomeOMa(0);
  swift_storeEnumTagMultiPayload();
  return sub_22BB336D0(a5, 0, 1, v12);
}

uint64_t sub_22BCD6538(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E4318, &unk_22BDC2E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BCD6638(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22BB2F330(v4);
  v6 = *(v5 + 16);
  v7 = sub_22BB31F54();
  v8(v7);
  return a2;
}

uint64_t sub_22BCD6694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22BB2F330(v4);
  v6 = *(v5 + 32);
  v7 = sub_22BB31F54();
  v8(v7);
  return a2;
}

uint64_t sub_22BCD66F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BCD6748@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v14[3] = _s19TranscriptRetrieverVMa();
  v14[4] = &off_283F7A608;
  v12 = sub_22BB8B8A0(v14);
  sub_22BBCE8A0(a2, v12);
  sub_22BCD680C(a1, v14, a3, a4, a5, a6);
  return sub_22BB32FA4(v14);
}

uint64_t sub_22BCD680C@<X0>(void *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v119 = a4;
  v120 = a5;
  v109 = a2;
  v110 = a3;
  v108 = a1;
  v118 = a6;
  v8 = sub_22BDB6AF4();
  v103 = *(v8 - 8);
  v104 = v8;
  v9 = *(v103 + 64);
  MEMORY[0x28223BE20](v8);
  v102 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for FeedbackLearning.FlowTask(0);
  v11 = *(*(v90 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v90);
  v98 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v97 = &v90 - v14;
  v101 = sub_22BDB77D4();
  v100 = *(v101 - 8);
  v15 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v99 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_22BDB5714();
  v92 = *(v94 - 8);
  v17 = *(v92 + 64);
  MEMORY[0x28223BE20](v94);
  v91 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_22BDB6AC4();
  v95 = *(v96 - 8);
  v19 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v93 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for FeedbackLearning.TaskEvaluation(0);
  v21 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v106 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22BDB6B24();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22BDB6B14();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22BDB43E4();
  v114 = *(v33 - 8);
  v115 = v33;
  v34 = *(v114 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v90 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB43D4();
  v116 = _s17FastTaskEvaluatorVMa();
  v37 = *(v116 + 28);
  sub_22BDB76D4();
  v105 = 0;
  v38 = v29;
  (*(v29 + 16))(v27, v32, v28);
  v39 = *MEMORY[0x277D1F888];
  v40 = v24 + 104;
  v111 = *(v24 + 104);
  v111(v27, v39, v23);
  v112 = v37;
  v113 = v36;
  sub_22BCA358C();
  v41 = v24;
  v42 = v27;
  v45 = *(v41 + 8);
  v44 = v41 + 8;
  v43 = v45;
  v107 = v23;
  v45(v27, v23);
  v46 = v32;
  v47 = v108;
  (*(v38 + 8))(v46, v28);
  v48 = v105;
  v49 = v106;
  v50 = *(v116 + 20);
  v116 = v7;
  sub_22BCD8450(v47, v109, v110, v106);
  if (v48)
  {
    v105 = v42;
    v106 = v40;
    v109 = v43;
    v110 = v44;
    v51 = v99;
    sub_22BDB6404();
    v52 = v97;
    sub_22BBCE8A0(v47, v97);
    v53 = v98;
    sub_22BBCE8A0(v47, v98);
    v54 = v48;
    v55 = sub_22BDB77C4();
    v56 = sub_22BDBB114();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v121 = v58;
      *v57 = 136315650;
      v59 = *(v90 + 20);
      sub_22BDB4C34();
      sub_22BCBD270(&qword_27D8E2F68, MEMORY[0x277D1C338]);
      v60 = sub_22BDBB684();
      v62 = v61;
      sub_22BBDB99C(v52, type metadata accessor for FeedbackLearning.FlowTask);
      v63 = sub_22BB32EE0(v60, v62, &v121);

      *(v57 + 4) = v63;
      *(v57 + 12) = 2080;
      v65 = MEMORY[0x23189FEB0](v64);
      v67 = v66;
      sub_22BBDB99C(v53, type metadata accessor for FeedbackLearning.FlowTask);
      v68 = sub_22BB32EE0(v65, v67, &v121);

      *(v57 + 14) = v68;
      *(v57 + 22) = 2112;
      v69 = v48;
      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 24) = v70;
      v71 = v108;
      *v108 = v70;
      _os_log_impl(&dword_22BB2C000, v55, v56, "Cannot generate task evaluation for task with id %s in session %s: %@", v57, 0x20u);
      sub_22BB58728(v71, &unk_27D8E6A70, &unk_22BDBCDB0);
      MEMORY[0x2318A6080](v71, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x2318A6080](v58, -1, -1);
      MEMORY[0x2318A6080](v57, -1, -1);
    }

    else
    {

      sub_22BBDB99C(v53, type metadata accessor for FeedbackLearning.FlowTask);
      sub_22BBDB99C(v52, type metadata accessor for FeedbackLearning.FlowTask);
    }

    (*(v100 + 8))(v51, v101);
    v82 = v114;
    v83 = v105;
    v84 = v102;
    sub_22BDB6A04();
    v80 = 1;
    sub_22BDB69F4();
    v85 = v103;
    v86 = v104;
    (*(v103 + 16))(v83, v84, v104);
    v87 = v107;
    v111(v83, *MEMORY[0x277D1F880], v107);
    v88 = v113;
    sub_22BCA358C();

    v109(v83, v87);
    (*(v85 + 8))(v84, v86);
    (*(v82 + 8))(v88, v115);
    v81 = v118;
  }

  else
  {
    sub_22BDB9994();
    v72 = v43;
    v73 = v91;
    sub_22BDB5704();

    v74 = v93;
    sub_22BCA3E68();
    (*(v92 + 8))(v73, v94);
    v75 = v95;
    v76 = v96;
    (*(v95 + 16))(v42, v74, v96);
    v77 = v107;
    v111(v42, *MEMORY[0x277D1F878], v107);
    v78 = v113;
    sub_22BCA358C();
    v72(v42, v77);
    (*(v75 + 8))(v74, v76);
    (*(v114 + 8))(v78, v115);
    v79 = v118;
    sub_22BCD7DF4(v49, v118);
    v80 = 0;
    v81 = v79;
  }

  return sub_22BB336D0(v81, v80, 1, v117);
}

uint64_t sub_22BCD72D0@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v1 = sub_22BBE6DE0(&qword_27D8E3EA0, &qword_22BDC1370);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v55 = &v45 - v3;
  v4 = sub_22BDB5264();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v52 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BDB8D84();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v46 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDB87F4();
  v50 = *(v10 - 8);
  v51 = v10;
  v11 = *(v50 + 64);
  MEMORY[0x28223BE20](v10);
  v49 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22BDB81A4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22BDB9564();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22BDB9B14();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB9B24();
  v28 = (*(v24 + 88))(v27, v23);
  if (v28 == *MEMORY[0x277D1E710])
  {
    (*(v24 + 96))(v27, v23);
    (*(v19 + 32))(v22, v27, v18);
    v29 = v56;
    sub_22BDB8174();
    (*(v19 + 8))(v22, v18);
LABEL_5:
    v31 = sub_22BDB4C34();
    v32 = v29;
    goto LABEL_6;
  }

  v30 = v56;
  if (v28 == *MEMORY[0x277D1E7A0])
  {
    (*(v24 + 96))(v27, v23);
    (*(v14 + 32))(v17, v27, v13);
    v29 = v30;
    sub_22BDB8174();
    (*(v14 + 8))(v17, v13);
    goto LABEL_5;
  }

  if (v28 == *MEMORY[0x277D1E820])
  {
    (*(v24 + 96))(v27, v23);
    v36 = v52;
    v35 = v53;
    v37 = v54;
    (*(v53 + 32))(v52, v27, v54);
    v38 = v55;
    sub_22BCB5EE0();
    v39 = sub_22BDB5B14();
    v40 = v30;
    if (sub_22BB3AA28(v38, 1, v39) == 1)
    {
      (*(v35 + 8))(v36, v37);
      sub_22BB58728(v38, &qword_27D8E3EA0, &qword_22BDC1370);
      v31 = sub_22BDB4C34();
      v32 = v30;
      v33 = 1;
      return sub_22BB336D0(v32, v33, 1, v31);
    }

    sub_22BDB5AE4();
    (*(v35 + 8))(v36, v37);
    (*(*(v39 - 8) + 8))(v38, v39);
  }

  else
  {
    v40 = v56;
    if (v28 == *MEMORY[0x277D1E798])
    {
      (*(v24 + 96))(v27, v23);
      v41 = v49;
      v42 = v50;
      v43 = v51;
      (*(v50 + 32))(v49, v27, v51);
      sub_22BDB8794();
    }

    else
    {
      if (v28 != *MEMORY[0x277D1E7C0])
      {
        v44 = sub_22BDB4C34();
        sub_22BB336D0(v30, 1, 1, v44);
        return (*(v24 + 8))(v27, v23);
      }

      (*(v24 + 96))(v27, v23);
      v41 = v46;
      v42 = v47;
      v43 = v48;
      (*(v47 + 32))(v46, v27, v48);
      sub_22BDB8174();
    }

    (*(v42 + 8))(v41, v43);
  }

  v31 = sub_22BDB4C34();
  v32 = v40;
LABEL_6:
  v33 = 0;
  return sub_22BB336D0(v32, v33, 1, v31);
}

uint64_t sub_22BCD79B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22BBE6DE0(&qword_27D8E3EA0, &qword_22BDC1370);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - v4;
  v6 = sub_22BDB5264();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDB87F4();
  v28 = *(v10 - 8);
  v11 = *(v28 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BDB9B14();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB9B24();
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == *MEMORY[0x277D1E710] || v19 == *MEMORY[0x277D1E7A0])
  {
    sub_22BDB8F24();
    v20 = sub_22BDB43E4();
    v21 = a1;
    v22 = 0;
LABEL_4:
    sub_22BB336D0(v21, v22, 1, v20);
    return (*(v15 + 8))(v18, v14);
  }

  if (v19 != *MEMORY[0x277D1E820])
  {
    if (v19 == *MEMORY[0x277D1E798])
    {
      (*(v15 + 96))(v18, v14);
      v27 = v28;
      (*(v28 + 32))(v13, v18, v10);
      sub_22BDB87D4();
      return (*(v27 + 8))(v13, v10);
    }

    v20 = sub_22BDB43E4();
    v21 = a1;
    v22 = 1;
    goto LABEL_4;
  }

  (*(v15 + 96))(v18, v14);
  v24 = v29;
  (*(v29 + 32))(v9, v18, v6);
  sub_22BCB5EE0();
  v25 = sub_22BDB5B14();
  if (sub_22BB3AA28(v5, 1, v25) == 1)
  {
    (*(v24 + 8))(v9, v6);
    sub_22BB58728(v5, &qword_27D8E3EA0, &qword_22BDC1370);
    v26 = sub_22BDB43E4();
    return sub_22BB336D0(a1, 1, 1, v26);
  }

  else
  {
    sub_22BDB5B04();
    (*(v24 + 8))(v9, v6);
    return (*(*(v25 - 8) + 8))(v5, v25);
  }
}

uint64_t sub_22BCD7DF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BB30F68();
  v6 = v5(v4);
  sub_22BB2F330(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_22BCD7E9C()
{
  result = sub_22BDB9C14();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FeedbackLearning.TaskEvaluator();
    if (v2 <= 0x3F)
    {
      result = sub_22BCB69BC(319, qword_28142B6E0);
      if (v3 <= 0x3F)
      {
        result = sub_22BCB69BC(319, qword_28142C390);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

double sub_22BCD7F70()
{
  sub_22BBE6DE0(&qword_27D8E4338, &unk_22BDC2F30);
  v0 = swift_allocObject();
  *&result = 3;
  *(v0 + 16) = xmmword_22BDC2F20;
  *(v0 + 56) = &_s17ActionPromptVoterVN;
  *(v0 + 64) = &off_283F76EF8;
  *(v0 + 32) = 0;
  *(v0 + 96) = &_s19TaskCompletionVoterVN;
  *(v0 + 104) = &off_283F76FA8;
  *(v0 + 72) = 3;
  *(v0 + 136) = &_s10FixedVoterVN;
  *(v0 + 144) = &off_283F7A870;
  *(v0 + 120) = MEMORY[0x277D84F90];
  *(v0 + 128) = 1;
  *(v0 + 112) = 0;
  qword_28142F420 = &_s17WaterfallMediatorVN;
  unk_28142F428 = &off_283F76E48;
  byte_28142F408 = 4;
  qword_28142F410 = v0;
  return result;
}

uint64_t sub_22BCD8038(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(type metadata accessor for FeedbackLearning.FlowExpression(0) - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_22BCD811C(void (*a1)(uint64_t *__return_ptr, char *))
{
  v3 = type metadata accessor for FeedbackLearning.FlowExpression(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BBE6DE0(&qword_27D8E4348, &qword_22BDC2FA8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v12 - v9;
  sub_22BCE098C();
  if (sub_22BB3AA28(v10, 1, v3) == 1)
  {
    return 2;
  }

  sub_22BCE17CC();
  a1(&v13, v6);
  if (v1)
  {
    result = sub_22BB344AC(v6, type metadata accessor for FeedbackLearning.FlowExpression);
    __break(1u);
  }

  else
  {
    sub_22BB344AC(v6, type metadata accessor for FeedbackLearning.FlowExpression);
    return v13;
  }

  return result;
}

uint64_t sub_22BCD82C0(void (*a1)(uint64_t *__return_ptr, _BYTE *), uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  if (!a5)
  {
    return 3;
  }

  v9[0] = a3;
  v9[8] = a4;
  v10 = a5;
  v11 = a6;

  a1(&v12, v9);

  if (v6)
  {

    __break(1u);
  }

  else
  {

    return v12;
  }

  return result;
}

uint64_t sub_22BCD8378@<X0>(void (*a1)(_BYTE *)@<X0>, char a2@<W2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  if (a4)
  {
    v11[0] = a2;
    v11[8] = a3;
    v12 = a4;
    v13 = a5;

    a1(v11);

    if (v6)
    {
      __break(1u);
    }
  }

  else
  {
    v10 = _s24StatementExecutionResultOMa(0);
    return sub_22BB336D0(a6, 1, 1, v10);
  }

  return result;
}

uint64_t sub_22BCD8450@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v270 = a3;
  v283 = a2;
  v274 = a4;
  v5 = sub_22BDB5F24();
  v6 = sub_22BB2F0C8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB305A8();
  sub_22BB30B8C(v9);
  v273 = sub_22BDB7A84();
  v10 = sub_22BB30444(v273);
  v272 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB305A8();
  v282 = v14;
  v15 = sub_22BB2F120();
  v260 = _s24StatementExecutionResultOMa(v15);
  v16 = sub_22BB2F330(v260);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB305A8();
  v20 = sub_22BB30B8C(v19);
  v21 = type metadata accessor for FeedbackLearning.TaskFinalResolutionState(v20);
  v22 = sub_22BB2F0C8(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BB305A8();
  v284 = v25;
  v26 = sub_22BB2F120();
  v27 = type metadata accessor for FeedbackLearning.TaskOutcome(v26);
  v28 = sub_22BB2F0C8(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BB305A8();
  v281 = v31;
  v258 = sub_22BBE6DE0(&qword_27D8E4340, &qword_22BDC2FA0);
  v32 = sub_22BB2F330(v258);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v35);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v36);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v37);
  sub_22BB2F39C();
  v280 = v38;
  v39 = sub_22BBE6DE0(&qword_27D8E4348, &qword_22BDC2FA8);
  sub_22BB2F0C8(v39);
  v41 = *(v40 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v42);
  v278 = &v255 - v43;
  v44 = sub_22BB2F120();
  v277 = type metadata accessor for FeedbackLearning.FlowExpression(v44);
  v45 = sub_22BB30444(v277);
  v259 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22BB30560();
  v279 = v49;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v50);
  v52 = &v255 - v51;
  v262 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  v53 = sub_22BB30444(v262);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v53);
  v58 = type metadata accessor for FeedbackLearning.FlowTask(0);
  v59 = sub_22BB2F330(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v62);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v63);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v64);
  sub_22BB2F384();
  v287 = v65;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v66);
  sub_22BB2F384();
  v276 = v67;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v68);
  v70 = &v255 - v69;
  v71 = sub_22BDB77D4();
  v72 = sub_22BB30444(v71);
  v291 = v73;
  v292 = v72;
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v72);
  sub_22BB30560();
  v285 = v76;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v77);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v78);
  sub_22BB2F384();
  v275 = v79;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v80);
  sub_22BB2F384();
  v286 = v81;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v82);
  v84 = &v255 - v83;
  sub_22BDB6404();
  sub_22BB32C44();
  v293 = a1;
  sub_22BBCE8FC();
  v85 = sub_22BDB77C4();
  v86 = sub_22BDBB0F4();
  v87 = os_log_type_enabled(v85, v86);
  v289 = v58;
  if (v87)
  {
    sub_22BB354D0();
    v88 = swift_slowAlloc();
    LODWORD(v261) = v86;
    v89 = v58;
    v90 = v88;
    v257 = v88;
    sub_22BB2F440();
    v290 = swift_slowAlloc();
    v295 = v290;
    LODWORD(v90->isa) = 136315138;
    v91 = *(v89 + 20);
    sub_22BDB4C34();
    sub_22BB30830();
    sub_22BCE16D4(v92, v93);
    v94 = sub_22BDBB684();
    sub_22BB35B48();
    sub_22BB344AC(v70, v95);
    v96 = sub_22BB31F54();
    sub_22BB32EE0(v96, v97, v98);
    sub_22BB2F1B0();

    v99 = v257;
    *(v257 + 4) = v94;
    _os_log_impl(&dword_22BB2C000, v85, v261, "Starting to run task evaluator for task with statementId=%s", v99, 0xCu);
    sub_22BB32FA4(v290);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  else
  {

    sub_22BB35B48();
    sub_22BB344AC(v70, v100);
  }

  v290 = *(v291 + 8);
  (v290)(v84, v292);
  v101 = v286;
  sub_22BDB6404();
  v102 = v276;
  sub_22BBCE8FC();
  v103 = v287;
  sub_22BBCE8FC();
  v104 = sub_22BDB77C4();
  LODWORD(v261) = sub_22BDBB0F4();
  if (os_log_type_enabled(v104, v261))
  {
    v257 = v104;
    v105 = swift_slowAlloc();
    v256 = swift_slowAlloc();
    v295 = v256;
    *v105 = 136315395;
    v106 = v103;
    v107 = v289;
    v108 = *(v289 + 20);
    sub_22BDB4C34();
    sub_22BB30830();
    sub_22BCE16D4(v109, v110);
    v111 = sub_22BDBB684();
    sub_22BB35B48();
    sub_22BB344AC(v102, v112);
    v113 = sub_22BB31F54();
    sub_22BB32EE0(v113, v114, v115);
    sub_22BB2F1B0();

    *(v105 + 4) = v111;
    v276 = v105;
    *(v105 + 12) = 2081;
    v116 = *(v106 + *(v107 + 24));
    v117 = *(v116 + 16);
    v118 = MEMORY[0x277D84F90];
    if (v117)
    {
      v294 = MEMORY[0x277D84F90];
      sub_22BD28408();
      v118 = v294;
      v119 = *(v259 + 80);
      sub_22BB2F390();
      v121 = v116 + v120;
      v123 = *(v122 + 72);
      do
      {
        sub_22BBCE8FC();
        sub_22BBCE8FC();
        sub_22BB38B3C();
        sub_22BB344AC(v52, v124);
        v294 = v118;
        v126 = *(v118 + 16);
        v125 = *(v118 + 24);
        if (v126 >= v125 >> 1)
        {
          sub_22BB2F158(v125);
          sub_22BD28408();
          v118 = v294;
        }

        *(v118 + 16) = v126 + 1;
        v127 = *(v55 + 80);
        sub_22BB2F390();
        v128 = *(v55 + 72);
        sub_22BCE17CC();
        v121 += v123;
        --v117;
      }

      while (v117);
      v134 = v292;
      v133 = v293;
    }

    else
    {
      v134 = v292;
      v133 = v293;
    }

    v135 = MEMORY[0x2318A4D50](v118, v262);
    v137 = v136;

    sub_22BB35B48();
    sub_22BB344AC(v287, v138);
    v139 = sub_22BB32EE0(v135, v137, &v295);

    v140 = v276;
    *(v276 + 14) = v139;
    v141 = v257;
    _os_log_impl(&dword_22BB2C000, v257, v261, "Expressions extracted for task with statementId=%s: %{private}s", v140, 0x16u);
    swift_arrayDestroy();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    (v290)(v286, v134);
    v131 = v288;
    v130 = v289;
    v132 = v285;
  }

  else
  {

    sub_22BB344AC(v102, type metadata accessor for FeedbackLearning.FlowTask);
    v129 = v292;
    (v290)(v101, v292);
    sub_22BB344AC(v103, type metadata accessor for FeedbackLearning.FlowTask);
    v131 = v288;
    v130 = v289;
    v132 = v285;
    v133 = v293;
    v134 = v129;
  }

  v142 = v278;
  sub_22BD39454(*(v133 + *(v130 + 24)));
  if (sub_22BB3AA28(v142, 1, v277) == 1)
  {
    sub_22BB58728(v142, &qword_27D8E4348, &qword_22BDC2FA8);
    sub_22BDB6404();
    sub_22BB32C44();
    v143 = v263;
    sub_22BBCE8FC();
    v144 = sub_22BDB77C4();
    v145 = sub_22BDBB114();
    if (os_log_type_enabled(v144, v145))
    {
      sub_22BB354D0();
      v146 = swift_slowAlloc();
      sub_22BB2F440();
      v147 = swift_slowAlloc();
      v295 = v147;
      *v146 = 136315138;
      v148 = *(v130 + 20);
      sub_22BDB4C34();
      v149 = v134;
      sub_22BB30830();
      sub_22BCE16D4(v150, v151);
      v152 = sub_22BDBB684();
      v154 = v153;
      sub_22BB35B48();
      sub_22BB344AC(v143, v155);
      v156 = sub_22BB32EE0(v152, v154, &v295);

      *(v146 + 4) = v156;
      _os_log_impl(&dword_22BB2C000, v144, v145, "Task with statementId=%s does not reference any expression", v146, 0xCu);
      sub_22BB32FA4(v147);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      v157 = v285;
      v158 = v149;
    }

    else
    {

      sub_22BB35B48();
      sub_22BB344AC(v143, v211);
      v157 = v132;
      v158 = v134;
    }

    (v290)(v157, v158);
    sub_22BCE00B0();
    swift_allocError();
    return swift_willThrow();
  }

  v159 = v279;
  sub_22BCE17CC();
  v160 = (v131 + *(type metadata accessor for FeedbackLearning.TaskEvaluator() + 20));
  v161 = v160[3];
  v162 = v160[4];
  sub_22BB69FEC(v160, v161);
  v163 = (*(v162 + 16))(v159, v283, v161, v162);
  LODWORD(v286) = v163;
  LODWORD(v287) = v164;
  v285 = v165;
  v167 = *(v166 + 2);
  v278 = v166;
  v168 = (v166 + 32);
  v169 = v167 + 1;
  v170 = (v166 + 32);
  while (--v169)
  {
    v171 = v170 + 32;
    v172 = *v170;
    v170 += 32;
    if (!v172)
    {
      v173 = *(v171 - 24);
      v174 = *(v171 - 2);
      v175 = *(v171 - 1);

      goto LABEL_22;
    }
  }

  v173 = 0;
  v174 = 0;
  v175 = 0;
LABEL_22:
  v176 = v167 + 1;
  while (--v176)
  {
    v177 = v168 + 32;
    v178 = *v168;
    v168 += 32;
    if (v178 == 3)
    {
      v179 = *(v177 - 24);
      v181 = *(v177 - 2);
      v180 = *(v177 - 1);

      v277 = 3;
      goto LABEL_27;
    }
  }

  v277 = 0;
  v179 = 0;
  v181 = 0;
  v180 = 0;
LABEL_27:
  MEMORY[0x28223BE20](v163);
  sub_22BB36D34();
  *(v182 - 16) = v131;
  v183 = v265;
  LODWORD(v265) = sub_22BCD82C0(sub_22BCE0104, v184, 0, v173, v174, v175);
  v185 = sub_22BCE0120(0, v173, v174);
  MEMORY[0x28223BE20](v185);
  sub_22BB36D34();
  *(v186 - 16) = v131;
  v187 = v280;
  v262 = v179;
  v276 = v181;
  v263 = v180;
  sub_22BCD8378(sub_22BCE0164, v277, v179, v181, v180, v280);
  v277 = v183;
  v188 = v187;
  v189 = v275;
  sub_22BDB6404();
  sub_22BB32C44();
  v190 = v293;
  v191 = v264;
  sub_22BBCE8FC();
  v192 = v266;
  sub_22BCE098C();
  v193 = sub_22BDB77C4();
  v194 = sub_22BDBB0F4();
  if (os_log_type_enabled(v193, v194))
  {
    v195 = swift_slowAlloc();
    v261 = swift_slowAlloc();
    v295 = v261;
    *v195 = 136315395;
    v196 = v289;
    v197 = *(v289 + 20);
    sub_22BDB4C34();
    v198 = v191;
    sub_22BB30830();
    sub_22BCE16D4(v199, v200);
    v201 = sub_22BDBB684();
    v203 = v202;
    sub_22BB35B48();
    sub_22BB344AC(v198, v204);
    v205 = sub_22BB32EE0(v201, v203, &v295);

    *(v195 + 4) = v205;
    *(v195 + 12) = 2085;
    sub_22BCE098C();
    v206 = sub_22BDBAC14();
    v208 = v207;
    sub_22BB58728(v192, &qword_27D8E4340, &qword_22BDC2FA0);
    v209 = sub_22BB32EE0(v206, v208, &v295);
    v190 = v293;

    *(v195 + 14) = v209;
    v188 = v280;
    _os_log_impl(&dword_22BB2C000, v193, v194, "The task execution result for statementId=%s is %{sensitive}s", v195, 0x16u);
    swift_arrayDestroy();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    sub_22BB6BD2C();
    (v290)(v275);
    v210 = v270;
  }

  else
  {

    sub_22BB58728(v192, &qword_27D8E4340, &qword_22BDC2FA0);
    sub_22BB35B48();
    sub_22BB344AC(v191, v213);
    sub_22BB6BD2C();
    (v290)(v189);
    v210 = v270;
    v196 = v289;
  }

  v214 = v269;
  v215 = v268;
  v289 = *(v196 + 20);
  v216 = v288;
  sub_22BCDA8A8(v190 + v289, v287, v265, v188, v281);
  v217 = v267;
  if (!v276)
  {
    goto LABEL_38;
  }

  sub_22BCE098C();
  if (sub_22BB3AA28(v217, 1, v260) == 1)
  {
    sub_22BB58728(v217, &qword_27D8E4340, &qword_22BDC2FA0);
LABEL_38:
    v218 = 1;
    goto LABEL_39;
  }

  sub_22BCE17CC();
  if ((v262 - 1) >= 2)
  {
    sub_22BB69AB0();
    goto LABEL_38;
  }

  sub_22BCDC5A0(v190, v283, v284);
  sub_22BB69AB0();
  v218 = 0;
LABEL_39:
  v219 = sub_22BBE6DE0(&qword_27D8E3D90, &unk_22BDC2EE0);
  sub_22BB336D0(v284, v218, 1, v219);
  v220 = sub_22BB69FEC(v283, v283[3]);
  sub_22BCE0180(v190, v210, v220, v216);
  v222 = v221;
  sub_22BCDB2D8(v190, v282);
  sub_22BDB6404();
  sub_22BB32C44();
  sub_22BBCE8FC();

  v223 = sub_22BDB77C4();
  v224 = sub_22BDBB0F4();

  if (os_log_type_enabled(v223, v224))
  {
    v225 = swift_slowAlloc();
    v295 = swift_slowAlloc();
    *v225 = 136315394;
    v226 = *(v196 + 20);
    sub_22BDB4C34();
    sub_22BB30830();
    sub_22BCE16D4(v227, v228);
    v229 = sub_22BDBB684();
    sub_22BB35B48();
    sub_22BB344AC(v215, v230);
    v231 = sub_22BB31F54();
    sub_22BB32EE0(v231, v232, v233);
    sub_22BB2F1B0();

    *(v225 + 4) = v229;
    *(v225 + 12) = 2080;
    v234 = type metadata accessor for FeedbackLearning.CandidateEvaluation(0);
    v235 = MEMORY[0x2318A4D50](v222, v234);
    v237 = sub_22BB32EE0(v235, v236, &v295);

    *(v225 + 14) = v237;
    _os_log_impl(&dword_22BB2C000, v223, v224, "The inferred candidate evaluations for statementId=%s: %s", v225, 0x16u);
    swift_arrayDestroy();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    v190 = v293;
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    sub_22BB6BD2C();
    (v290)(v214);
    v238 = v280;
  }

  else
  {

    sub_22BB35B48();
    sub_22BB344AC(v215, v239);
    sub_22BB6BD2C();
    (v290)(v214);
    v238 = v188;
  }

  sub_22BB58728(v238, &qword_27D8E4340, &qword_22BDC2FA0);
  sub_22BB38B3C();
  sub_22BB344AC(v279, v240);
  v241 = v274;
  v242 = v273;
  v243 = v272;
  v244 = v271;
  sub_22BBCE8FC();
  v245 = sub_22BDB43E4();
  sub_22BB30ED8(v245);
  (*(v246 + 32))(v241, v244);
  v247 = type metadata accessor for FeedbackLearning.TaskEvaluation(0);
  v248 = v247[5];
  v249 = sub_22BDB4C34();
  sub_22BB30ED8(v249);
  (*(v250 + 16))(v241 + v248, v190 + v289);
  (*(v243 + 32))(v241 + v247[6], v282, v242);
  *(v241 + v247[7]) = v222;
  v251 = v247[8];
  sub_22BCE17CC();
  v252 = v247[9];
  result = sub_22BCE17CC();
  v253 = v241 + v247[10];
  *v253 = v286;
  *(v253 + 8) = v287;
  v254 = v278;
  *(v253 + 16) = v285;
  *(v253 + 24) = v254;
  return result;
}

uint64_t FeedbackLearning.TaskEvaluator.init(toolbox:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22BDB9C14();
  sub_22BB30444(v4);
  v12 = v5;
  (*(v6 + 16))(a2, a1, v4);
  if (qword_28142AD28 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for FeedbackLearning.TaskEvaluator();
  sub_22BB69088(&byte_28142F408, a2 + *(v7 + 20));
  v8 = *(v12 + 8);
  v9 = sub_22BB31F54();

  return v10(v9);
}

uint64_t FeedbackLearning.TaskEvaluator.evaluateTasks(transcript:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22BDB43E4();
  sub_22BB2F0C8(v3);
  v5 = *(v4 + 64);
  v2[4] = sub_22BB30ACC();
  v6 = sub_22BDB5F24();
  sub_22BB2F0C8(v6);
  v8 = *(v7 + 64);
  v2[5] = sub_22BB30ACC();
  v9 = sub_22BDB9774();
  v2[6] = v9;
  v10 = *(v9 - 8);
  v2[7] = v10;
  v11 = *(v10 + 64);
  v2[8] = sub_22BB30ACC();
  v12 = _s19TranscriptRetrieverVMa();
  sub_22BB2F0C8(v12);
  v14 = *(v13 + 64);
  v2[9] = sub_22BB30ACC();
  v15 = sub_22BDB9C14();
  v2[10] = v15;
  v16 = *(v15 - 8);
  v2[11] = v16;
  v17 = *(v16 + 64);
  v2[12] = sub_22BB30ACC();

  return MEMORY[0x2822009F8](sub_22BCD9C00, 0, 0);
}

uint64_t sub_22BCD9C00()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v20 = v0[8];
  v16 = v0[6];
  v17 = v0[9];
  v19 = v0[5];
  v5 = v0[3];
  v18 = v0[4];
  v6 = v0[2];
  _s22TaskCandidateEvaluatorCMa(0);
  v7 = *(v2 + 16);
  v7(v1, v5, v3);
  v8 = sub_22BB8E770(v1);
  (*(v4 + 16))(v20, v6, v16);
  v7(v1, v5, v3);
  sub_22BBB9080(v20, v1, v17);
  v9 = sub_22BDB9744();
  v10 = sub_22BBCE950(v9, v17, v8);

  sub_22BDB8F24();
  sub_22BDB5F04();
  sub_22BDB9744();
  sub_22BBD5E2C();
  sub_22BB2F1B0();

  sub_22BB344AC(v19, MEMORY[0x277D1D2C8]);
  v11 = swift_task_alloc();
  v11[2] = v5;
  v11[3] = v17;
  v11[4] = v10;
  sub_22BBDB9F4();
  v13 = v12;

  sub_22BB344AC(v17, _s19TranscriptRetrieverVMa);

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_22BCD9E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v44 = type metadata accessor for FeedbackLearning.FlowTask(0);
  v7 = *(*(v44 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v44);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v13 = sub_22BDB77D4();
  v45 = *(v13 - 8);
  v46 = v13;
  v14 = *(v45 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[3] = _s19TranscriptRetrieverVMa();
  v47[4] = &off_283F7A608;
  sub_22BB8B8A0(v47);
  sub_22BBCE8FC();
  v48 = a3;
  sub_22BCD8450(a1, v47, a2, a3);
  if (v3)
  {
    sub_22BB32FA4(v47);
    v17 = v16;
    sub_22BDB6404();
    sub_22BBCE8FC();
    sub_22BBCE8FC();
    v18 = v3;
    v19 = sub_22BDB77C4();
    v20 = sub_22BDBB114();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v42 = v20;
      v22 = v21;
      v41 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v47[0] = v43;
      *v22 = 136315650;
      v23 = *(v44 + 20);
      sub_22BDB4C34();
      sub_22BCE16D4(&qword_27D8E2F68, MEMORY[0x277D1C338]);
      v24 = sub_22BDBB684();
      v26 = v25;
      sub_22BB344AC(v12, type metadata accessor for FeedbackLearning.FlowTask);
      v27 = sub_22BB32EE0(v24, v26, v47);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2080;
      v29 = MEMORY[0x23189FEB0](v28);
      v31 = v30;
      sub_22BB344AC(v10, type metadata accessor for FeedbackLearning.FlowTask);
      v32 = sub_22BB32EE0(v29, v31, v47);

      *(v22 + 14) = v32;
      *(v22 + 22) = 2112;
      v33 = v3;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 24) = v34;
      v35 = v41;
      *v41 = v34;
      _os_log_impl(&dword_22BB2C000, v19, v42, "Failed to evaluate flow action with statementId=%s in session %s: %@", v22, 0x20u);
      sub_22BB58728(v35, &unk_27D8E6A70, &unk_22BDBCDB0);
      MEMORY[0x2318A6080](v35, -1, -1);
      v36 = v43;
      swift_arrayDestroy();
      MEMORY[0x2318A6080](v36, -1, -1);
      MEMORY[0x2318A6080](v22, -1, -1);
    }

    else
    {

      sub_22BB344AC(v10, type metadata accessor for FeedbackLearning.FlowTask);
      sub_22BB344AC(v12, type metadata accessor for FeedbackLearning.FlowTask);
    }

    (*(v45 + 8))(v17, v46);
    v37 = 1;
  }

  else
  {
    sub_22BB32FA4(v47);
    v37 = 0;
  }

  v38 = type metadata accessor for FeedbackLearning.TaskEvaluation(0);
  return sub_22BB336D0(v48, v37, 1, v38);
}

uint64_t sub_22BCDA2E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = _s19EvaluatorVoteSourceOMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - v10;
  v12 = *(a1 + 16);
  v13 = *(v12 + 16);

  for (i = 0; v13 != i; ++i)
  {
    v15 = v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v16 = *(v5 + 72);
    sub_22BBCE8FC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = i;
      break;
    }

    sub_22BB344AC(v11, _s19EvaluatorVoteSourceOMa);
  }

  v17 = *(v12 + 16);
  if (v13 == v17)
  {
    v18 = 3;
LABEL_11:

    *a2 = v18;
    return result;
  }

  if (v13 >= v17)
  {
    __break(1u);
  }

  else
  {
    v19 = v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v20 = *(v5 + 72);
    sub_22BBCE8FC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = *v9;
      goto LABEL_11;
    }
  }

  result = sub_22BB344AC(v9, _s19EvaluatorVoteSourceOMa);
  __break(1u);
  return result;
}

uint64_t sub_22BCDA4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = _s19EvaluatorVoteSourceOMa(0);
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v39);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BBE6DE0(&qword_27D8E4340, &qword_22BDC2FA0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v37 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v36 = &v35 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = *(a1 + 16);
  v19 = *(v18 + 16);
  v40 = v18;

  for (i = 0; v19 != i; ++i)
  {
    v22 = v40 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v23 = *(v3 + 72);
    sub_22BBCE8FC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = _s24StatementExecutionResultOMa(0);
      sub_22BB336D0(v15, 1, 1, v24);
      sub_22BB344AC(v6, _s19EvaluatorVoteSourceOMa);
    }

    else
    {
      sub_22BCE17CC();
      v24 = _s24StatementExecutionResultOMa(0);
      sub_22BB336D0(v15, 0, 1, v24);
    }

    sub_22BCE1778();
    _s24StatementExecutionResultOMa(0);
    v25 = sub_22BB3AA28(v17, 1, v24);
    result = sub_22BB58728(v17, &qword_27D8E4340, &qword_22BDC2FA0);
    if (v25 != 1)
    {
      v19 = i;
      break;
    }
  }

  v26 = *(v40 + 16);
  if (v19 == v26)
  {
    v27 = _s24StatementExecutionResultOMa(0);
    v28 = v38;
    v29 = 1;
LABEL_14:
    sub_22BB336D0(v28, v29, 1, v27);
  }

  if (v19 >= v26)
  {
    __break(1u);
  }

  else
  {
    v30 = v40 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19;
    v31 = v36;
    sub_22BCDC478(v36);
    v32 = v37;
    sub_22BCE098C();
    v33 = _s24StatementExecutionResultOMa(0);
    result = sub_22BB3AA28(v32, 1, v33);
    if (result != 1)
    {
      v34 = v38;
      sub_22BCE17CC();
      sub_22BB58728(v31, &qword_27D8E4340, &qword_22BDC2FA0);
      v28 = v34;
      v29 = 0;
      v27 = v33;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BCDA8A8@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v78 = a4;
  v84 = a3;
  v82 = a1;
  v83 = a5;
  v81 = a2;
  v5 = sub_22BDB4C34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v74 = &v74 - v11;
  v12 = sub_22BDB77D4();
  v79 = *(v12 - 8);
  v80 = v12;
  v13 = *(v79 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v75 = &v74 - v17;
  v18 = _s23StatementFailureOutcomeVMa(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FeedbackLearning.TaskStatus(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v77 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v76 = &v74 - v26;
  v27 = sub_22BBE6DE0(&qword_27D8E4340, &qword_22BDC2FA0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v74 - v29;
  v31 = _s24StatementExecutionResultOMa(0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v74 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v74 - v36;
  if (!v81)
  {
    sub_22BDB6404();
    (*(v6 + 16))(v10, v82, v5);
    v50 = sub_22BDB77C4();
    v51 = sub_22BDBB104();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v85 = v53;
      *v52 = 136315138;
      sub_22BCE16D4(&qword_27D8E2F68, MEMORY[0x277D1C338]);
      v54 = sub_22BDBB684();
      v56 = v55;
      (*(v6 + 8))(v10, v5);
      v57 = sub_22BB32EE0(v54, v56, &v85);

      *(v52 + 4) = v57;
      _os_log_impl(&dword_22BB2C000, v50, v51, "The final task evaluation vote is abstain, not setting task status for %s", v52, 0xCu);
      sub_22BB32FA4(v53);
      MEMORY[0x2318A6080](v53, -1, -1);
      MEMORY[0x2318A6080](v52, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v10, v5);
    }

    (*(v79 + 8))(v16, v80);
    v61 = v84;
    v62 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
    v63 = v83;
    goto LABEL_13;
  }

  v38 = v82;
  sub_22BCE098C();
  if (sub_22BB3AA28(v30, 1, v31) == 1)
  {
    sub_22BB58728(v30, &qword_27D8E4340, &qword_22BDC2FA0);
    v39 = v75;
    sub_22BDB6404();
    v40 = v74;
    (*(v6 + 16))(v74, v38, v5);
    v41 = sub_22BDB77C4();
    v42 = sub_22BDBB114();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v85 = v44;
      *v43 = 136315138;
      sub_22BCE16D4(&qword_27D8E2F68, MEMORY[0x277D1C338]);
      v45 = sub_22BDBB684();
      v46 = v40;
      v48 = v47;
      (*(v6 + 8))(v46, v5);
      v49 = sub_22BB32EE0(v45, v48, &v85);

      *(v43 + 4) = v49;
      _os_log_impl(&dword_22BB2C000, v41, v42, "The task outcome cannot be determined, action execution result was not set for %s", v43, 0xCu);
      sub_22BB32FA4(v44);
      MEMORY[0x2318A6080](v44, -1, -1);
      MEMORY[0x2318A6080](v43, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v40, v5);
    }

    (*(v79 + 8))(v39, v80);
    v61 = v84;
    v63 = v83;
    v62 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
LABEL_13:
    sub_22BB336D0(v63, 1, 4, v62);
    goto LABEL_22;
  }

  sub_22BCE17CC();
  sub_22BBCE8FC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BB344AC(v37, _s24StatementExecutionResultOMa);
      v58 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
      v59 = v77;
      v60 = 3;
      goto LABEL_18;
    case 2u:
      sub_22BCE17CC();
      v64 = &v21[*(v18 + 20)];
      v65 = v77;
      sub_22BDB4CD4();
      sub_22BB344AC(v21, _s23StatementFailureOutcomeVMa);
      sub_22BB344AC(v37, _s24StatementExecutionResultOMa);
      type metadata accessor for FeedbackLearning.TaskFailureReason(0);
      swift_storeEnumTagMultiPayload();
      v66 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
      v67 = v65;
      v68 = 0;
      goto LABEL_20;
    case 3u:
      sub_22BB344AC(v37, _s24StatementExecutionResultOMa);
      v69 = *(sub_22BBE6DE0(&qword_27D8E3DB0, &qword_22BDC1148) + 48);
      v70 = sub_22BDB8294();
      v71 = v77;
      (*(*(v70 - 8) + 32))(v77, &v35[v69], v70);
      type metadata accessor for FeedbackLearning.TaskFailureReason(0);
      swift_storeEnumTagMultiPayload();
      v72 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
      sub_22BB336D0(v71, 0, 4, v72);
      sub_22BB58728(v35, &qword_27D8E3DB8, &qword_22BDC1150);
      break;
    case 4u:
      sub_22BB344AC(v37, _s24StatementExecutionResultOMa);
      v58 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
      v59 = v77;
      v60 = 4;
      goto LABEL_18;
    case 5u:
      sub_22BB344AC(v37, _s24StatementExecutionResultOMa);
      v66 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
      v67 = v77;
      v68 = 2;
LABEL_20:
      sub_22BB336D0(v67, v68, 4, v66);
      break;
    default:
      sub_22BB344AC(v37, _s24StatementExecutionResultOMa);
      v58 = sub_22BBE6DE0(&qword_27D8E3DD8, &qword_22BDC1170);
      v59 = v77;
      v60 = 2;
LABEL_18:
      sub_22BB336D0(v59, v60, 4, v58);
      sub_22BB344AC(v35, _s24StatementExecutionResultOMa);
      break;
  }

  v61 = v84;
  sub_22BCE17CC();
  v63 = v83;
  sub_22BCE17CC();
LABEL_22:
  result = type metadata accessor for FeedbackLearning.TaskOutcome(0);
  *(v63 + *(result + 20)) = v61;
  return result;
}

uint64_t sub_22BCDB2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a1;
  v3 = sub_22BBE6DE0(&qword_27D8E4358, &unk_22BDC2FB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v102 - v5;
  v7 = sub_22BDB77D4();
  v114 = *(v7 - 8);
  v115 = v7;
  v8 = *(v114 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v132 = v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v106 = v102 - v11;
  v126 = sub_22BDB4354();
  v113 = *(v126 - 8);
  v12 = *(v113 + 64);
  v13 = MEMORY[0x28223BE20](v126);
  v15 = v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v108 = v102 - v16;
  v17 = sub_22BDB9D54();
  v18 = *(v17 - 8);
  v118 = v17;
  v119 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v117 = v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_22BDB4C34();
  v116 = *(v133 - 8);
  v21 = v116[8];
  MEMORY[0x28223BE20](v133);
  v23 = v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_22BDB9954();
  v109 = *(v131 - 8);
  v24 = *(v109 + 8);
  MEMORY[0x28223BE20](v131);
  v130 = v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_22BDB9B14();
  v26 = *(v125 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v125);
  v124 = v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22BBE6DE0(&qword_27D8E6A80, &unk_22BDC0E70);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v107 = v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v111 = v102 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v110 = v102 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v123 = v102 - v38;
  MEMORY[0x28223BE20](v37);
  v112 = v102 - v39;
  v40 = sub_22BBE6DE0(&qword_27D8E4348, &qword_22BDC2FA8);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v43 = v102 - v42;
  v44 = type metadata accessor for FeedbackLearning.FlowExpression(0);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44);
  v48 = v102 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v46);
  v51 = v102 - v50;
  MEMORY[0x28223BE20](v49);
  v53 = v102 - v52;
  v54 = type metadata accessor for FeedbackLearning.FlowTask(0);
  sub_22BBDB6C8(*(v129 + *(v54 + 24)), v43);
  if (sub_22BB3AA28(v43, 1, v44) == 1)
  {
    sub_22BB58728(v43, &qword_27D8E4348, &qword_22BDC2FA8);
    sub_22BDB6404();
    v55 = sub_22BDB77C4();
    v56 = sub_22BDBB114();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_22BB2C000, v55, v56, "The task start expression could not be retrieved, using the current time", v57, 2u);
      MEMORY[0x2318A6080](v57, -1, -1);
    }

    (*(v114 + 8))(v132, v115);
    sub_22BDB4344();
    v58 = sub_22BDB7E54();
    sub_22BB336D0(v6, 1, 1, v58);
    return sub_22BDB7A74();
  }

  v104 = v15;
  v105 = v6;
  v102[1] = a2;
  sub_22BCE17CC();
  v60 = *&v53[*(v44 + 20)];
  v103 = v51;
  sub_22BBCE8FC();
  sub_22BBCE8FC();
  v61 = *(v60 + 2);
  v128 = (v26 + 88);
  v121 = (v26 + 96);
  v122 = (v26 + 8);
  v127 = *MEMORY[0x277D1E6F8];
  v62 = v116 + 1;
  v116 = v119 + 1;
  v119 = (v109 + 8);
  v120 = (v109 + 32);
  v132 = v60;

  v63 = 0;
  v64 = v126;
  v109 = v53;
  v66 = v124;
  v65 = v125;
  v67 = v123;
  v129 = v61;
  while (v63 != v61)
  {
    v68 = *(sub_22BDB9B54() - 8);
    v69 = &v132[((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v63];
    sub_22BDB9B24();
    v70 = (*v128)(v66, v65);
    if (v70 == v127)
    {
      (*v121)(v66, v65);
      (*v120)(v130, v66, v131);
      v71 = sub_22BDB9914();
      v72 = 0;
      v73 = *(v71 + 16);
      while (v73 != v72)
      {
        v74 = *(sub_22BDB89F4() - 8);
        v75 = v71 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v72;
        sub_22BDB8174();
        LOBYTE(v75) = sub_22BDB4C04();
        (*v62)(v23, v133);
        ++v72;
        if (v75)
        {

          v76 = v117;
          sub_22BDB9B44();
          v67 = v123;
          sub_22BDB9D44();
          (*v116)(v76, v118);
          (*v119)(v130, v131);
          v77 = v67;
          v78 = 0;
          goto LABEL_14;
        }
      }

      (*v119)(v130, v131);
      v67 = v123;
      v77 = v123;
      v78 = 1;
LABEL_14:
      v64 = v126;
      sub_22BB336D0(v77, v78, 1, v126);
      v66 = v124;
      v65 = v125;
    }

    else
    {
      sub_22BB336D0(v67, 1, 1, v64);
      (*v122)(v66, v65);
    }

    v79 = sub_22BB3AA28(v67, 1, v64);
    sub_22BB58728(v67, &qword_27D8E6A80, &unk_22BDC0E70);
    v61 = v129;
    if (v79 != 1)
    {
      v61 = v63;
      break;
    }

    ++v63;
  }

  v80 = *(v132 + 2);
  v81 = v61;
  v82 = v61 >= v80;
  v83 = v61 == v80;
  v84 = v105;
  v85 = v104;
  v86 = v113;
  v87 = v112;
  v88 = v111;
  v89 = v110;
  v90 = v103;
  if (!v83)
  {
    if (v82)
    {
      __break(1u);
    }

    else
    {
      v92 = *(sub_22BDB9B54() - 8);
      v93 = &v132[((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v81];
      sub_22BCDF4D4(v90, v89);
      sub_22BB344AC(v90, type metadata accessor for FeedbackLearning.FlowExpression);
      sub_22BCE098C();
      if (sub_22BB3AA28(v88, 1, v64) != 1)
      {
        (*(v86 + 32))(v87, v88, v64);
        sub_22BB58728(v89, &qword_27D8E6A80, &unk_22BDC0E70);
        v91 = 0;
        goto LABEL_24;
      }
    }

    result = sub_22BB344AC(v48, type metadata accessor for FeedbackLearning.FlowExpression);
    __break(1u);
    return result;
  }

  sub_22BB344AC(v103, type metadata accessor for FeedbackLearning.FlowExpression);
  v91 = 1;
LABEL_24:
  sub_22BB336D0(v87, v91, 1, v64);

  sub_22BB344AC(v48, type metadata accessor for FeedbackLearning.FlowExpression);
  v94 = v107;
  sub_22BCE098C();
  if (sub_22BB3AA28(v94, 1, v64) == 1)
  {
    sub_22BB58728(v94, &qword_27D8E6A80, &unk_22BDC0E70);
    v95 = v106;
    sub_22BDB6404();
    v96 = sub_22BDB77C4();
    v97 = sub_22BDBB114();
    v98 = os_log_type_enabled(v96, v97);
    v99 = v108;
    if (v98)
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_22BB2C000, v96, v97, "The task occurred time could not be retrieved, using the current time", v100, 2u);
      MEMORY[0x2318A6080](v100, -1, -1);
    }

    (*(v114 + 8))(v95, v115);
    sub_22BDB4344();
    v86 = v113;
  }

  else
  {
    v99 = v108;
    (*(v86 + 32))(v108, v94, v64);
  }

  (*(v86 + 16))(v85, v99, v64);
  v101 = sub_22BDB7E54();
  sub_22BB336D0(v84, 1, 1, v101);
  sub_22BDB7A74();
  (*(v86 + 8))(v99, v64);
  sub_22BB58728(v87, &qword_27D8E6A80, &unk_22BDC0E70);
  return sub_22BB344AC(v109, type metadata accessor for FeedbackLearning.FlowExpression);
}