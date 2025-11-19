void PlannerPromptData.Tool.Definition.init(ifps:)()
{
  sub_22BE19460();
  v5 = v4;
  v114 = v6;
  v7 = sub_22BE5CE4C(&qword_27D912128, &unk_22C2B5F90);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  v108 = v11;
  sub_22BE183BC();
  v107 = sub_22C26F924();
  v12 = sub_22BE179D8(v107);
  v105 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE17A44();
  v104 = v16;
  sub_22BE183BC();
  v17 = sub_22C270C84();
  v18 = sub_22BE179D8(v17);
  v106 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v22);
  sub_22BE19E94();
  sub_22BE183BC();
  v23 = sub_22C272224();
  v24 = sub_22BE179D8(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE183AC();
  sub_22BE28EF4();
  MEMORY[0x28223BE20](v29);
  sub_22BE32374();
  v30 = sub_22C272CA4();
  v31 = sub_22BE179D8(v30);
  v110 = v32;
  v111 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE17B98();
  v109 = v35;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v36);
  sub_22BE195C4();
  v37 = sub_22C270B74();
  v38 = sub_22BE179D8(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BE179EC();
  v45 = v44 - v43;
  v46 = sub_22C26F964();
  v47 = sub_22BE179D8(v46);
  v112 = v48;
  v113 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22BE179EC();
  sub_22BE1BC40();
  v51 = *(v40 + 16);
  v52 = sub_22BE33FD8();
  v53(v52);
  v54 = (*(v40 + 88))(v45, v37);
  if (v54 == *MEMORY[0x277D1ECE0])
  {
    v55 = sub_22BE1A040();
    v56(v55);
    v57 = sub_22BE2866C();
    v58(v57);
    sub_22C11634C();
    v59(v0, v3, v23);
    sub_22C26F934();
    (*(v40 + 8))(v5, v37);
    (*(v26 + 8))(v3, v23);
LABEL_3:
    v60 = MEMORY[0x277D1CC98];
    goto LABEL_6;
  }

  if (v54 == *MEMORY[0x277D1ECE8])
  {
    v61 = sub_22BE1A040();
    v62(v61);
    v63 = *(v110 + 32);
    v64 = sub_22BE33FCC();
    v65(v64);
    (*(v110 + 16))(v109, v2, v111);
    sub_22C26F954();
    v66 = *(v40 + 8);
    v67 = sub_22BE2BACC();
    v68(v67);
    v69 = *(v110 + 8);
    v70 = sub_22BE33FCC();
    v71(v70);
    v60 = MEMORY[0x277D1CC90];
    goto LABEL_6;
  }

  if (v54 == *MEMORY[0x277D1ECD8])
  {
    v74 = sub_22BE1A040();
    v75(v74);
    v76 = sub_22BE2866C();
    v77(v76);
    sub_22C11634C();
    v78(v0, v3, v23);
    sub_22C26F934();
    v79 = *(v40 + 8);
    v80 = sub_22BE2BACC();
    v81(v80);
    (*(v26 + 8))(v3, v23);
    goto LABEL_3;
  }

  if (v54 == *MEMORY[0x277D1ECD0])
  {
    v82 = sub_22BE1A040();
    v83(v82);
    v84 = sub_22BE2866C();
    v85(v84);
    sub_22C11634C();
    v86(v0, v3, v23);
    sub_22C26F934();
    v87 = *(v40 + 8);
    v88 = sub_22BE1B73C();
    v89(v88);
    (*(v26 + 8))(v3, v23);
    v60 = MEMORY[0x277D1CC88];
    goto LABEL_6;
  }

  if (v54 == *MEMORY[0x277D1ECF8])
  {
    v90 = sub_22BE1A040();
    v91(v90);
    sub_22BE27C14();
    v92 = sub_22BE33FCC();
    v93(v92);
    sub_22C116380();
    v94 = sub_22BE180C8();
    v95(v94);
    PlannerPromptData.Tool.Definition.UIControlTool.init(ifps:)();
    v96 = *(v40 + 8);
    v97 = sub_22BE1B73C();
    v98(v97);
    v99 = *(v106 + 8);
    v100 = sub_22BE33FCC();
    v101(v100);
    sub_22BE1AB5C(v108, 1, v107);
    if (v102)
    {
      sub_22BE233E8(v108, &qword_27D912128, &unk_22C2B5F90);
      v73 = 1;
      v72 = v114;
      goto LABEL_7;
    }

    v103 = *(v105 + 32);
    v103(v104, v108, v107);
    v103(v1, v104, v107);
    v60 = MEMORY[0x277D1CCA0];
LABEL_6:
    (*(v112 + 104))(v1, *v60, v113);
    v72 = v114;
    (*(v112 + 32))(v114, v1, v113);
    v73 = 0;
LABEL_7:
    sub_22BE3ACE4(v72, v73);
    sub_22BE1AABC();
    return;
  }

  sub_22C274004();
  __break(1u);
}

void PlannerPromptData.Tool.Definition.UIControlTool.init(ifps:)()
{
  sub_22BE19460();
  v3 = v2;
  v5 = v4;
  v6 = sub_22C26F914();
  v7 = sub_22BE19448(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  sub_22BE28738();
  v10 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1AB08();
  v14 = sub_22C272224();
  v15 = sub_22BE179D8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE18928();
  MEMORY[0x28223BE20](v20);
  sub_22BE181E4();
  sub_22C270C54();
  sub_22BE1AB5C(v1, 1, v14);
  if (v21)
  {
    v22 = sub_22C270C84();
    sub_22BE18524(v22);
    (*(v23 + 8))(v3);
    sub_22BE233E8(v1, &qword_27D90B2D8, &qword_22C2B5080);
    v30 = 1;
  }

  else
  {
    v24 = sub_22BE41F08(v17);
    v25(v24, v1, v14);
    sub_22C270C34();
    sub_22C270C44();
    sub_22C270C74();
    sub_22C26F904();
    v26 = sub_22C116374(v17);
    v27(v26, v0, v14);
    sub_22C26F8F4();
    v28 = sub_22C270C84();
    sub_22BE18524(v28);
    (*(v29 + 8))(v3);
    (*(v17 + 8))(v0, v14);
    v30 = 0;
  }

  v31 = sub_22C26F924();
  sub_22BE19DC4(v5, v30, 1, v31);
  sub_22BE1AABC();
}

void PlannerPromptData.OnScreenContextValue.ContextType.init(ifps:)()
{
  sub_22BE3C358();
  v0 = sub_22C26F8C4();
  v1 = sub_22BE179D8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  sub_22BE28738();
  v6 = *(sub_22C270A04() - 8);
  v7 = *(v6 + 88);
  v8 = sub_22BE2590C();
  v10 = v9(v8);
  if (v10 == *MEMORY[0x277D1EAB8])
  {
    v11 = MEMORY[0x277D1CC78];
LABEL_15:
    v12 = sub_22BE3C094(v11);
    v13(v12);
    v14 = *(v3 + 32);
    v15 = sub_22BE18040();
    v16(v15);
    sub_22BE3A264();
    sub_22BE19DC4(v17, v18, v19, v20);
    sub_22BE267B8();
    return;
  }

  if (v10 == *MEMORY[0x277D1EB38])
  {
    v11 = MEMORY[0x277D1CC60];
    goto LABEL_15;
  }

  if (v10 == *MEMORY[0x277D1EB28])
  {
    v11 = MEMORY[0x277D1CC58];
    goto LABEL_15;
  }

  if (v10 == *MEMORY[0x277D1EB48])
  {
    v11 = MEMORY[0x277D1CC68];
    goto LABEL_15;
  }

  if (v10 == *MEMORY[0x277D1EB00])
  {
    v11 = MEMORY[0x277D1CC48];
    goto LABEL_15;
  }

  if (v10 == *MEMORY[0x277D1EB18])
  {
    v11 = MEMORY[0x277D1CC50];
    goto LABEL_15;
  }

  if (v10 == *MEMORY[0x277D1EA80])
  {
    v11 = MEMORY[0x277D1CC70];
    goto LABEL_15;
  }

  v21 = *(v6 + 8);
  v22 = sub_22BE2590C();
  v23(v22);
  sub_22BE1A140();
  sub_22BE267B8();

  sub_22BE19DC4(v24, v25, v26, v27);
}

uint64_t ActionResolutionUpdate.init(ifps:)()
{
  sub_22BE28CF0();
  v1 = type metadata accessor for ActionResolverRequest(0);
  v2 = (v0 + *(v1 + 40));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v0 + *(v1 + 20));

  Dictionary<>.init(parameterCandidates:)();
  v6 = sub_22BE191CC();
  MEMORY[0x2318A85D0](v6);
  return sub_22BE48744();
}

void Dictionary<>.init(parameterCandidates:)()
{
  sub_22BE19460();
  v1 = v0;
  v2 = 0;
  v102 = sub_22BE5CE4C(&qword_27D9076D0, &unk_22C275230);
  sub_22BE179D8(v102);
  v99 = v3;
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1A174();
  v108 = v7;
  v8 = sub_22BE5CE4C(&qword_27D909008, &qword_22C27FC60);
  v9 = sub_22BE18000(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17B98();
  v101 = v12;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v13);
  sub_22BE19490();
  v107 = v14;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v15);
  sub_22BE19490();
  v106 = v16;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v17);
  sub_22BE19E94();
  v105 = v18;
  v20 = (v1 + 64);
  v19 = *(v1 + 64);
  v21 = *(v1 + 32);
  sub_22BE185B4();
  v24 = v23 & v22;
  v26 = (v25 + 63) >> 6;
  v103 = v1;

  v27 = MEMORY[0x277D84F98];
  v97 = v26;
  v98 = (v1 + 64);
  v100 = v8;
  if (!v24)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v104 = v27;
LABEL_7:
    v29 = __clz(__rbit64(v24)) | (v2 << 6);
    v30 = *(v103 + 56);
    v31 = *(v103 + 48) + 32 * v29;
    v33 = *v31;
    v32 = *(v31 + 8);
    v34 = *(v31 + 16);
    v35 = *(v31 + 24);
    v36 = type metadata accessor for Candidate(0);
    sub_22BE19448(v36);
    v38 = v30 + *(v37 + 72) * v29;
    v39 = *(v8 + 48);
    sub_22BE3F24C();
    *v105 = v33;
    *(v105 + 8) = v32;
    *(v105 + 16) = v34;
    *(v105 + 24) = v35;
    sub_22BE22814();
    v41 = *v106;
    v40 = v106[1];
    sub_22BE22814();
    v42 = *(v107 + 8);
    v43 = *(v107 + 16);
    v44 = *(v107 + 24);

    v45 = v41;
    v8 = v100;
    sub_22BE22814();
    v46 = *(v101 + 8);

    v47 = *(v100 + 48);
    v48 = *(v102 + 48);
    *v108 = v43;
    *(v108 + 8) = v44;
    sub_22BE37A38();
    swift_isUniquelyReferenced_nonNull_native();
    v109[0] = v104;
    v49 = sub_22BE1AB74();
    v51 = sub_22BE3B674(v49, v50);
    v53 = *(v104 + 16);
    v54 = (v52 & 1) == 0;
    v20 = (v53 + v54);
    if (__OFADD__(v53, v54))
    {
      break;
    }

    v55 = v51;
    v56 = v52;
    sub_22BE5CE4C(&qword_27D912130, qword_22C2B5FA0);
    v27 = v109[0];
    if (sub_22C273C44())
    {
      v57 = sub_22BE1AB74();
      v59 = sub_22BE3B674(v57, v58);
      if ((v56 & 1) != (v60 & 1))
      {
        goto LABEL_33;
      }

      v55 = v59;
    }

    if (v56)
    {
    }

    else
    {
      *(v109[0] + 8 * (v55 >> 6) + 64) |= 1 << v55;
      v61 = (*(v27 + 48) + 16 * v55);
      *v61 = v45;
      v61[1] = v40;
      *(*(v27 + 56) + 8 * v55) = MEMORY[0x277D84F90];
      v62 = *(v27 + 16);
      v63 = __OFADD__(v62, 1);
      v64 = v62 + 1;
      if (v63)
      {
        goto LABEL_32;
      }

      *(v27 + 16) = v64;
    }

    v65 = *(v27 + 56);
    v66 = *(v65 + 8 * v55);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v65 + 8 * v55) = v66;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v73 = *(v66 + 16);
      sub_22BE3A264();
      sub_22BE67AA8(v74, v75, v76, v77);
      v66 = v78;
      *(v65 + 8 * v55) = v78;
    }

    v69 = *(v66 + 16);
    v68 = *(v66 + 24);
    if (v69 >= v68 >> 1)
    {
      sub_22BE1AAE4(v68);
      sub_22BE3A264();
      sub_22BE67AA8(v79, v80, v81, v82);
      *(v65 + 8 * v55) = v83;
    }

    v24 &= v24 - 1;
    v70 = *(v100 + 48);
    sub_22BE233E8(v105, &qword_27D909008, &qword_22C27FC60);
    *(*(v65 + 8 * v55) + 16) = v69 + 1;
    v71 = *(v99 + 80);
    v72 = *(v99 + 72);
    sub_22BE424BC();
    sub_22BE41F44(v107 + v70, type metadata accessor for Candidate);
    sub_22BE41F44(v106 + v70, type metadata accessor for Candidate);
    v26 = v97;
    v20 = v98;
    if (!v24)
    {
      while (1)
      {
LABEL_3:
        v28 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          __break(1u);
          goto LABEL_30;
        }

        if (v28 >= v26)
        {
          break;
        }

        v24 = v20[v28];
        ++v2;
        if (v24)
        {
          v104 = v27;
          v2 = v28;
          goto LABEL_7;
        }
      }

      v110 = MEMORY[0x277D84F98];
      v84 = *(v27 + 64);
      v85 = *(v27 + 32);
      sub_22BE185B4();
      v88 = v87 & v86;
      v90 = (v89 + 63) >> 6;

      v91 = 0;
      v20 = 0;
      if (!v88)
      {
        goto LABEL_23;
      }

      do
      {
        v92 = v91;
LABEL_26:
        v93 = __clz(__rbit64(v88)) | (v92 << 6);
        v94 = (*(v27 + 48) + 16 * v93);
        v95 = v94[1];
        v96 = *(*(v27 + 56) + 8 * v93);
        v109[0] = *v94;
        v109[1] = v95;
        v109[2] = v96;

        sub_22C113B84(&v110, v109);
        v88 &= v88 - 1;

        v91 = v92;
      }

      while (v88);
LABEL_23:
      while (1)
      {
        v92 = v91 + 1;
        if (__OFADD__(v91, 1))
        {
          break;
        }

        if (v92 >= v90)
        {

          sub_22BE1AABC();
          return;
        }

        v88 = *(v27 + 64 + 8 * v92);
        ++v91;
        if (v88)
        {
          goto LABEL_26;
        }
      }

LABEL_30:
      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);

  __break(1u);
LABEL_33:
  sub_22C2740B4();
  __break(1u);
}

void ActionExecutionOutcome.init(ifps:)()
{
  sub_22BE19460();
  v4 = v3;
  sub_22BE2054C(v5);
  v6 = sub_22C26F894();
  v7 = sub_22BE179D8(v6);
  v38 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  sub_22BE1AB80();
  v11 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE23930();
  v15 = sub_22C26E1D4();
  v16 = sub_22BE179D8(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE18928();
  MEMORY[0x28223BE20](v21);
  sub_22BE26800();
  sub_22BE31038();
  sub_22BE22814();
  sub_22BE1AB5C(v2, 1, v15);
  if (v22)
  {
    sub_22BE2375C();
    sub_22BE233E8(v2, &qword_27D9082F0, &qword_22C27AB00);
LABEL_7:
    v32 = 1;
    goto LABEL_8;
  }

  (*(v18 + 32))(v1, v2, v15);
  v23 = type metadata accessor for StatementResult(0);
  v24 = (v4 + *(v23 + 36));
  if (!v24[1])
  {
    v33 = *(v18 + 8);
    v34 = sub_22BE1AB1C();
    v35(v34);
    sub_22BE2375C();
    goto LABEL_7;
  }

  v25 = v23;
  v26 = *v24;
  v27 = sub_22C116374(v18);
  v28(v27, v1, v15);
  (*(v38 + 16))(v0, v4 + *(v25 + 20), v6);

  sub_22C26FEB4();
  v29 = *(v18 + 8);
  v30 = sub_22BE1AB1C();
  v31(v30);
  sub_22BE2375C();
  v32 = 0;
LABEL_8:
  sub_22C26FEC4();
  v36 = sub_22BE335B4();
  sub_22BE19DC4(v36, v32, 1, v37);
  sub_22BE1AABC();
}

uint64_t sub_22C113B84(uint64_t a1, uint64_t *a2)
{
  v77 = a1;
  v85 = sub_22C272874();
  v83 = *(v85 - 8);
  v3 = *(v83 + 64);
  MEMORY[0x28223BE20](v85);
  v68 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v80 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v71 = (&v66 - v9);
  v73 = sub_22C272984();
  v70 = *(v73 - 8);
  v10 = *(v70 + 64);
  v11 = MEMORY[0x28223BE20](v73);
  v67 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v69 = &v66 - v13;
  v14 = sub_22BE5CE4C(&qword_27D912138, &qword_22C2B5FC8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v79 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v72 = &v66 - v18;
  v19 = type metadata accessor for Candidate(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v66 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v74 = &v66 - v23;
  v84 = sub_22BE5CE4C(&qword_27D9076D0, &unk_22C275230);
  v24 = *(v84 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v84);
  v82 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v81 = &v66 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v66 - v30;
  v32 = 0;
  v33 = *a2;
  v75 = a2[1];
  v76 = v33;
  v34 = a2[2];
  v86 = v34[2];
  do
  {
    if (v86 == v32)
    {
      goto LABEL_7;
    }

    if (v32 >= v34[2])
    {
      __break(1u);
      goto LABEL_21;
    }

    v35 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v36 = *(v24 + 72);
    sub_22BE22814();
    ++v32;
    v37 = v31[8];
    sub_22BE233E8(v31, &qword_27D9076D0, &unk_22C275230);
  }

  while ((v37 & 1) != 0);
  v38 = v72;
  sub_22BF2DDB0(v34);
  v39 = v84;
  if (sub_22BE1AEA8(v38, 1, v84) != 1)
  {
    v47 = *(v39 + 48);
    sub_22BE37A38();
    sub_22BE37A38();
    v87 = v34;

    v48 = v78;
    sub_22C108E24(&v87);
    v34 = v48;
    if (!v48)
    {
      v49 = v87;
      v50 = v87[2];
      v51 = v68;
      if (v50)
      {
        v78 = 0;
        v87 = MEMORY[0x277D84F90];
        sub_22BE71320(0, v50, 0);
        v86 = v87;
        v72 = v49;
        v52 = v49 + v35;
        v79 = (v83 + 32);
        v80 = (v83 + 16);
        v53 = v85;
        do
        {
          v85 = v50;
          v54 = v53;
          v55 = v39;
          sub_22BE22814();
          v56 = v82;
          v57 = v86;
          sub_22BE424BC();
          v58 = *(v55 + 48);
          (*v80)(v51, &v56[v58], v54);
          sub_22BE41F44(&v56[v58], type metadata accessor for Candidate);
          v87 = v57;
          v60 = *(v57 + 16);
          v59 = *(v57 + 24);
          v53 = v54;
          if (v60 >= v59 >> 1)
          {
            sub_22BE71320(v59 > 1, v60 + 1, 1);
            v86 = v87;
          }

          v61 = v86;
          *(v86 + 16) = v60 + 1;
          (*(v83 + 32))(v61 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v60, v51, v54);
          v52 += v36;
          v39 = v84;
          v50 = v85 - 1;
        }

        while (v85 != 1);
      }

      else
      {

        v86 = MEMORY[0x277D84F90];
        v53 = v85;
      }

      v62 = v69;
      sub_22C272814();
      sub_22C2726B4();
      v63 = swift_allocBox();
      v64 = v70;
      (*(v70 + 16))(v67, v62, v73);

      sub_22C272684();
      v65 = v71;
      *v71 = v63;
      (*(v83 + 104))(v65, *MEMORY[0x277D729E0], v53);
      sub_22BE19DC4(v65, 0, 1, v53);
      sub_22BE5F8EC();
      (*(v64 + 8))(v62, v73);
      return sub_22BE41F44(v74, type metadata accessor for Candidate);
    }

LABEL_21:

    __break(1u);
    return result;
  }

  sub_22BE233E8(v38, &qword_27D912138, &qword_22C2B5FC8);
LABEL_7:
  v40 = v79;
  sub_22BF2DDB0(v34);
  v41 = v84;
  if (sub_22BE1AEA8(v40, 1, v84) == 1)
  {

    sub_22BE233E8(v40, &qword_27D912138, &qword_22C2B5FC8);
    v42 = 1;
    v43 = v85;
    v44 = v80;
  }

  else
  {
    v45 = *(v41 + 48);
    v44 = v80;
    v43 = v85;
    (*(v83 + 16))(v80, v40 + v45, v85);

    sub_22BE41F44(v40 + v45, type metadata accessor for Candidate);
    v42 = 0;
  }

  sub_22BE19DC4(v44, v42, 1, v43);
  return sub_22BE5F8EC();
}

BOOL sub_22C1143C8()
{
  v0 = sub_22BE5CE4C(&qword_27D9076D0, &unk_22C275230);
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  sub_22BE22814();
  if (v7[8])
  {
    v8 = 0;
  }

  else
  {
    v8 = *v7;
  }

  sub_22BE41F44(&v7[*(v1 + 56)], type metadata accessor for Candidate);
  sub_22BE22814();
  if (v5[8])
  {
    v9 = 0;
  }

  else
  {
    v9 = *v5;
  }

  sub_22BE41F44(&v5[*(v1 + 56)], type metadata accessor for Candidate);
  return v8 < v9;
}

uint64_t sub_22C114518(int64_t *a1)
{
  v2 = a1[1];
  result = sub_22C273FC4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22BE5CE4C(&qword_27D9076D0, &unk_22C275230);
        v6 = sub_22C273534();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22BE5CE4C(&qword_27D9076D0, &unk_22C275230) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22C1149A0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22C114660(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C114660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_22BE5CE4C(&qword_27D9076D0, &unk_22C275230);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v49 = &v36 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v48 = &v36 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v47 = &v36 - v17;
  result = MEMORY[0x28223BE20](v16);
  v46 = &v36 - v20;
  v38 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v19 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v43 = -v22;
    v44 = v21;
    v24 = a1 - a3;
    v37 = v22;
    v25 = v21 + v22 * a3;
    v26 = &qword_27D9076D0;
    v27 = v46;
    while (2)
    {
      v41 = v23;
      v42 = a3;
      v39 = v25;
      v40 = v24;
      v50 = v24;
      do
      {
        sub_22BE22814();
        v28 = v47;
        sub_22BE22814();
        v29 = v26;
        v30 = v48;
        sub_22BE22814();
        v31 = *v30;
        if (v30[8])
        {
          v31 = 0;
        }

        v52 = v31;
        sub_22BE41F44(&v30[*(v8 + 48)], type metadata accessor for Candidate);
        v32 = v49;
        sub_22BE22814();
        v33 = *v32;
        if (v32[8])
        {
          v33 = 0;
        }

        v51 = v33;
        v34 = &v32[*(v8 + 48)];
        v26 = v29;
        sub_22BE41F44(v34, type metadata accessor for Candidate);
        sub_22BE233E8(v28, v29, &unk_22C275230);
        result = sub_22BE233E8(v27, v29, &unk_22C275230);
        if (v52 >= v51)
        {
          break;
        }

        if (!v44)
        {
          __break(1u);
          return result;
        }

        sub_22BE424BC();
        swift_arrayInitWithTakeFrontToBack();
        result = sub_22BE424BC();
        v23 += v43;
        v25 += v43;
      }

      while (!__CFADD__(v50++, 1));
      a3 = v42 + 1;
      v23 = v41 + v37;
      v24 = v40 - 1;
      v25 = v39 + v37;
      if (v42 + 1 != v38)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C1149A0(int64_t *a1, uint64_t a2, int64_t *a3, int64_t a4)
{
  v133 = a1;
  v7 = sub_22BE5CE4C(&qword_27D9076D0, &unk_22C275230);
  v147 = *(v7 - 8);
  v8 = *(v147 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v137 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v153 = &v130 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v157 = &v130 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v156 = &v130 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v155 = &v130 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v154 = &v130 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v142 = &v130 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v141 = &v130 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v140 = &v130 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v139 = &v130 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v130 - v30;
  MEMORY[0x28223BE20](v29);
  v148 = a3;
  v33 = a3[1];
  if (v33 < 1)
  {
    v35 = MEMORY[0x277D84F90];
    v36 = v4;
LABEL_115:
    v159 = *v133;
    if (!v159)
    {
      goto LABEL_157;
    }

    v37 = v35;
    v34 = v36;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_117;
    }

    goto LABEL_151;
  }

  v131 = a4;
  v34 = 0;
  v35 = MEMORY[0x277D84F90];
  v158 = v7;
  v143 = v31;
  v132 = &v130 - v32;
  v36 = v4;
  while (1)
  {
    v37 = v34 + 1;
    if (v34 + 1 < v33)
    {
      v146 = v33;
      v38 = *v148;
      v39 = *(v147 + 72);
      v134 = v34;
      v150 = (v34 + 1);
      v40 = v38 + v39 * v37;
      sub_22BE22814();
      v159 = v38;
      v41 = v134;
      sub_22BE22814();
      v42 = v132;
      LODWORD(v145) = sub_22C1143C8();
      v144 = v36;
      if (v36)
      {
        sub_22BE233E8(v31, &qword_27D9076D0, &unk_22C275230);
        sub_22BE233E8(v42, &qword_27D9076D0, &unk_22C275230);
LABEL_125:

        return;
      }

      v36 = 0;
      v149 = v35;
      sub_22BE233E8(v31, &qword_27D9076D0, &unk_22C275230);
      sub_22BE233E8(v42, &qword_27D9076D0, &unk_22C275230);
      v43 = v41 + 2;
      v44 = v159 + v39 * (v41 + 2);
      v45 = v39;
      v151 = v39;
      v46 = v146;
      while (1)
      {
        v47 = v43;
        v150 = (v150 + 1);
        if (v150 >= v46)
        {
          break;
        }

        v48 = v139;
        v159 = v43;
        sub_22BE22814();
        v49 = v140;
        sub_22BE22814();
        v50 = v141;
        sub_22BE22814();
        v51 = *v50;
        if (v50[8])
        {
          v51 = 0;
        }

        v152 = v51;
        sub_22BE41F44(&v50[*(v7 + 48)], type metadata accessor for Candidate);
        v52 = v142;
        sub_22BE22814();
        if (v52[8])
        {
          v53 = 0;
        }

        else
        {
          v53 = *v52;
        }

        v7 = v158;
        sub_22BE41F44(&v52[*(v158 + 48)], type metadata accessor for Candidate);
        sub_22BE233E8(v49, &qword_27D9076D0, &unk_22C275230);
        v54 = v48;
        v36 = v144;
        sub_22BE233E8(v54, &qword_27D9076D0, &unk_22C275230);
        v47 = v159;
        v46 = v146;
        v45 = v151;
        v44 += v151;
        v40 += v151;
        v43 = v159 + 1;
        if (((v145 ^ (v152 >= v53)) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v150 = v46;
LABEL_15:
      if (v145)
      {
        v37 = v150;
        v34 = v134;
        if (v150 < v134)
        {
          goto LABEL_150;
        }

        if (v134 >= v150)
        {
          v35 = v149;
          v31 = v143;
          goto LABEL_38;
        }

        if (v46 >= v47)
        {
          v55 = v47;
        }

        else
        {
          v55 = v46;
        }

        v56 = v45 * (v55 - 1);
        v57 = v45 * v55;
        v58 = v134 * v45;
        v59 = v150;
        do
        {
          if (v34 != --v59)
          {
            v60 = *v148;
            if (!*v148)
            {
              goto LABEL_155;
            }

            sub_22BE424BC();
            v61 = v58 < v56 || v60 + v58 >= (v60 + v57);
            if (v61)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v58 != v56)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_22BE424BC();
            v37 = v150;
            v45 = v151;
          }

          v34 = (v34 + 1);
          v56 -= v45;
          v57 -= v45;
          v58 += v45;
        }

        while (v34 < v59);
        v35 = v149;
        v7 = v158;
        v31 = v143;
      }

      else
      {
        v35 = v149;
        v37 = v150;
        v31 = v143;
      }

      v34 = v134;
    }

LABEL_38:
    v62 = v148[1];
    if (v37 < v62)
    {
      if (__OFSUB__(v37, v34))
      {
        goto LABEL_147;
      }

      if ((v37 - v34) < v131)
      {
        break;
      }
    }

LABEL_61:
    if (v37 < v34)
    {
      goto LABEL_146;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v150 = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v120 = v35[2];
      sub_22BE6614C();
      v35 = v121;
    }

    v78 = v35[2];
    v37 = v78 + 1;
    if (v78 >= v35[3] >> 1)
    {
      sub_22BE6614C();
      v35 = v122;
    }

    v35[2] = v37;
    v79 = v35 + 4;
    v80 = &v35[2 * v78 + 4];
    v81 = v150;
    *v80 = v34;
    v80[1] = v81;
    v159 = *v133;
    if (!v159)
    {
      goto LABEL_156;
    }

    if (v78)
    {
      v149 = v35;
      while (1)
      {
        v82 = v37 - 1;
        v83 = &v79[2 * v37 - 2];
        v84 = &v35[2 * v37];
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v85 = v35[4];
          v86 = v35[5];
          v95 = __OFSUB__(v86, v85);
          v87 = v86 - v85;
          v88 = v95;
LABEL_82:
          if (v88)
          {
            goto LABEL_133;
          }

          v100 = *v84;
          v99 = v84[1];
          v101 = __OFSUB__(v99, v100);
          v102 = v99 - v100;
          v103 = v101;
          if (v101)
          {
            goto LABEL_136;
          }

          v104 = v83[1];
          v105 = v104 - *v83;
          if (__OFSUB__(v104, *v83))
          {
            goto LABEL_139;
          }

          if (__OFADD__(v102, v105))
          {
            goto LABEL_141;
          }

          if (v102 + v105 >= v87)
          {
            if (v87 < v105)
            {
              v82 = v37 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v37 < 2)
        {
          goto LABEL_135;
        }

        v107 = *v84;
        v106 = v84[1];
        v95 = __OFSUB__(v106, v107);
        v102 = v106 - v107;
        v103 = v95;
LABEL_97:
        if (v103)
        {
          goto LABEL_138;
        }

        v109 = *v83;
        v108 = v83[1];
        v95 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v95)
        {
          goto LABEL_140;
        }

        if (v110 < v102)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v82 - 1 >= v37)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
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
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (!*v148)
        {
          goto LABEL_153;
        }

        v37 = &v79[2 * v82 - 2];
        v114 = *v37;
        v115 = v82;
        v34 = &v79[2 * v82];
        v116 = v34[1];
        sub_22C115608(*v148 + *(v147 + 72) * *v37, *v148 + *(v147 + 72) * *v34, *v148 + *(v147 + 72) * v116, v159);
        if (v36)
        {
          goto LABEL_125;
        }

        if (v116 < v114)
        {
          goto LABEL_128;
        }

        v117 = v79;
        v118 = v149[2];
        if (v115 > v118)
        {
          goto LABEL_129;
        }

        *v37 = v114;
        *(v37 + 8) = v116;
        if (v115 >= v118)
        {
          goto LABEL_130;
        }

        v37 = v118 - 1;
        memmove(v34, v34 + 2, 16 * (v118 - 1 - v115));
        v35 = v149;
        v149[2] = v118 - 1;
        v119 = v118 > 2;
        v31 = v143;
        v79 = v117;
        v36 = 0;
        if (!v119)
        {
          goto LABEL_111;
        }
      }

      v89 = &v79[2 * v37];
      v90 = *(v89 - 8);
      v91 = *(v89 - 7);
      v95 = __OFSUB__(v91, v90);
      v92 = v91 - v90;
      if (v95)
      {
        goto LABEL_131;
      }

      v94 = *(v89 - 6);
      v93 = *(v89 - 5);
      v95 = __OFSUB__(v93, v94);
      v87 = v93 - v94;
      v88 = v95;
      if (v95)
      {
        goto LABEL_132;
      }

      v96 = v84[1];
      v97 = v96 - *v84;
      if (__OFSUB__(v96, *v84))
      {
        goto LABEL_134;
      }

      v95 = __OFADD__(v87, v97);
      v98 = v87 + v97;
      if (v95)
      {
        goto LABEL_137;
      }

      if (v98 >= v92)
      {
        v112 = *v83;
        v111 = v83[1];
        v95 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v95)
        {
          goto LABEL_145;
        }

        if (v87 < v113)
        {
          v82 = v37 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v33 = v148[1];
    v34 = v150;
    v7 = v158;
    if (v150 >= v33)
    {
      goto LABEL_115;
    }
  }

  v63 = v34 + v131;
  if (__OFADD__(v34, v131))
  {
    goto LABEL_148;
  }

  if (v63 >= v62)
  {
    v63 = v148[1];
  }

  if (v63 < v34)
  {
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    v37 = sub_22C115CA4(v37);
LABEL_117:
    v123 = (v37 + 16);
    for (i = *(v37 + 16); i >= 2; *v123 = i)
    {
      if (!*v148)
      {
        goto LABEL_154;
      }

      v125 = (v37 + 16 * i);
      v126 = *v125;
      v127 = &v123[2 * i];
      v128 = v127[1];
      sub_22C115608(*v148 + *(v147 + 72) * *v125, *v148 + *(v147 + 72) * *v127, *v148 + *(v147 + 72) * v128, v159);
      if (v34)
      {
        break;
      }

      if (v128 < v126)
      {
        goto LABEL_142;
      }

      if (i - 2 >= *v123)
      {
        goto LABEL_143;
      }

      *v125 = v126;
      v125[1] = v128;
      v129 = *v123 - i;
      if (*v123 < i)
      {
        goto LABEL_144;
      }

      i = *v123 - 1;
      memmove(v127, v127 + 2, 16 * v129);
    }

    goto LABEL_125;
  }

  if (v37 == v63)
  {
    goto LABEL_61;
  }

  v149 = v35;
  v144 = v36;
  v64 = *v148;
  v65 = *(v147 + 72);
  v66 = *v148 + v65 * (v37 - 1);
  v151 = -v65;
  v134 = v34;
  v67 = v34 - v37;
  v152 = v64;
  v135 = v65;
  v68 = v64 + v37 * v65;
  v136 = v63;
LABEL_47:
  v150 = v37;
  v138 = v68;
  v69 = v68;
  v145 = v67;
  v146 = v66;
  v70 = v66;
  while (1)
  {
    v71 = v154;
    sub_22BE22814();
    v72 = v155;
    sub_22BE22814();
    v73 = v156;
    sub_22BE22814();
    v74 = *v73;
    if (v73[8])
    {
      v74 = 0;
    }

    v159 = v74;
    sub_22BE41F44(&v73[*(v7 + 48)], type metadata accessor for Candidate);
    v75 = v157;
    sub_22BE22814();
    if (v75[8])
    {
      v76 = 0;
    }

    else
    {
      v76 = *v75;
    }

    sub_22BE41F44(&v75[*(v7 + 48)], type metadata accessor for Candidate);
    sub_22BE233E8(v72, &qword_27D9076D0, &unk_22C275230);
    sub_22BE233E8(v71, &qword_27D9076D0, &unk_22C275230);
    if (v159 >= v76)
    {
      v7 = v158;
LABEL_59:
      v37 = v150 + 1;
      v66 = v146 + v135;
      v67 = v145 - 1;
      v68 = v138 + v135;
      if ((v150 + 1) == v136)
      {
        v37 = v136;
        v31 = v143;
        v36 = v144;
        v35 = v149;
        v34 = v134;
        goto LABEL_61;
      }

      goto LABEL_47;
    }

    if (!v152)
    {
      break;
    }

    sub_22BE424BC();
    v7 = v158;
    swift_arrayInitWithTakeFrontToBack();
    sub_22BE424BC();
    v70 += v151;
    v69 += v151;
    v61 = __CFADD__(v67++, 1);
    if (v61)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
}

uint64_t sub_22C115608(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v78 = sub_22BE5CE4C(&qword_27D9076D0, &unk_22C275230);
  v8 = *(*(v78 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v78);
  v70 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v67 = &v64 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v66 = &v64 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v65 = &v64 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v74 = &v64 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v73 = &v64 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v72 = &v64 - v22;
  result = MEMORY[0x28223BE20](v21);
  v71 = &v64 - v24;
  v26 = *(v25 + 72);
  if (!v26)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return result;
  }

  v27 = a2 - a1;
  v28 = a2 - a1 == 0x8000000000000000 && v26 == -1;
  if (v28)
  {
    goto LABEL_71;
  }

  v29 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v26 == -1)
  {
    goto LABEL_72;
  }

  v31 = v27 / v26;
  v81 = a1;
  v80 = a4;
  v32 = v29 / v26;
  if (v27 / v26 >= v29 / v26)
  {
    sub_22BE68680(a2, v29 / v26, a4);
    v46 = a4 + v32 * v26;
    v47 = -v26;
    v48 = v46;
    v75 = -v26;
    v76 = a1;
    v77 = a4;
LABEL_42:
    v68 = v48;
    v71 = (a2 + v47);
    v72 = a2;
    while (1)
    {
      if (v46 <= a4)
      {
        v81 = a2;
        goto LABEL_68;
      }

      if (a2 <= a1)
      {
        break;
      }

      v69 = v48;
      v49 = v46 + v47;
      v50 = v65;
      v51 = a3;
      sub_22BE22814();
      v52 = v66;
      sub_22BE22814();
      v53 = v67;
      sub_22BE22814();
      v54 = *v53;
      if (v53[8])
      {
        v54 = 0;
      }

      v74 = v54;
      v55 = v78;
      sub_22BE41F44(&v53[*(v78 + 48)], type metadata accessor for Candidate);
      v56 = v46;
      v57 = v70;
      sub_22BE22814();
      v58 = *v57;
      if (v57[8])
      {
        v58 = 0;
      }

      v73 = v58;
      v59 = a3 + v75;
      sub_22BE41F44(&v57[*(v55 + 48)], type metadata accessor for Candidate);
      sub_22BE233E8(v52, &qword_27D9076D0, &unk_22C275230);
      sub_22BE233E8(v50, &qword_27D9076D0, &unk_22C275230);
      if (v74 < v73)
      {
        v46 = v56;
        v61 = a3 < v72 || v59 >= v72;
        a4 = v77;
        a3 = v59;
        if (v61)
        {
          a2 = v71;
          swift_arrayInitWithTakeFrontToBack();
          v48 = v69;
          v47 = v75;
          a1 = v76;
        }

        else
        {
          v48 = v69;
          v28 = v51 == v72;
          v62 = v71;
          a2 = v71;
          v47 = v75;
          a1 = v76;
          if (!v28)
          {
            v63 = v69;
            swift_arrayInitWithTakeBackToFront();
            a2 = v62;
            v48 = v63;
          }
        }

        goto LABEL_42;
      }

      v60 = a3 < v56 || v59 >= v56;
      a4 = v77;
      if (v60)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v59;
        v46 = v49;
        v48 = v49;
        v47 = v75;
        a1 = v76;
        a2 = v72;
      }

      else
      {
        v48 = v49;
        v28 = v56 == a3;
        a3 = v59;
        v46 = v49;
        v47 = v75;
        a1 = v76;
        a2 = v72;
        if (!v28)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v59;
          v46 = v49;
          v48 = v49;
        }
      }
    }

    v81 = a2;
    v48 = v68;
LABEL_68:
    v79 = v48;
  }

  else
  {
    sub_22BE68680(a1, v27 / v26, a4);
    v69 = a3;
    v70 = (a4 + v31 * v26);
    v79 = v70;
    v68 = v26;
    v33 = v71;
    while (a4 < v70 && a2 < a3)
    {
      v76 = a1;
      sub_22BE22814();
      v35 = v72;
      sub_22BE22814();
      v36 = v73;
      sub_22BE22814();
      v37 = *v36;
      v38 = v36[8];
      v77 = a4;
      if (v38)
      {
        v37 = 0;
      }

      v75 = v37;
      v39 = v78;
      sub_22BE41F44(&v36[*(v78 + 48)], type metadata accessor for Candidate);
      v40 = v74;
      sub_22BE22814();
      if (v40[8])
      {
        v41 = 0;
      }

      else
      {
        v41 = *v40;
      }

      sub_22BE41F44(&v40[*(v39 + 48)], type metadata accessor for Candidate);
      sub_22BE233E8(v35, &qword_27D9076D0, &unk_22C275230);
      sub_22BE233E8(v33, &qword_27D9076D0, &unk_22C275230);
      if (v75 >= v41)
      {
        v42 = v68;
        v43 = v76;
        a4 = v77 + v68;
        if (v76 < v77 || v76 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v76 != v77)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v80 = a4;
      }

      else
      {
        v42 = v68;
        v43 = v76;
        a4 = v77;
        if (v76 < a2 || v76 >= a2 + v68)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v76 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v42;
      }

      a1 = v43 + v42;
      v81 = a1;
      a3 = v69;
    }
  }

  sub_22C115DBC(&v81, &v80, &v79, &qword_27D9076D0, &unk_22C275230);
  return 1;
}

void sub_22C115CE4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  v6 = type metadata accessor for ToolBoxToolSearchResult(0);
  sub_22BE18000(v6);
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v5 - v4 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  sub_22BE22998();
  v11 = !v11 || v3 >= v10;
  if (v11)
  {
    sub_22BE18944();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {
    sub_22BE18944();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_22C115DBC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  v8 = sub_22BE5CE4C(a4, a5);
  sub_22BE18000(v8);
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

  sub_22BE22998();
  v13 = !v13 || v5 >= v12;
  if (v13)
  {
    sub_22BE18944();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {
    sub_22BE18944();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_22C115E84(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_22C115EB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_22BE5CE4C(&qword_27D907300, &qword_22C2B5FD0);
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_22C11611C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C26E684();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v10 = (v9 + 16);
  v11 = (v9 + 8);
  do
  {
    if (!v8)
    {
      break;
    }

    --v8;
    v12 = *(type metadata accessor for ProgramStatement(0) - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v8;
    (*v10)(v7, a2, v4);
    LOBYTE(v13) = _s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0();
    (*v11)(v7, v4);
  }

  while ((v13 & 1) == 0);
  return v8;
}

void sub_22C116358()
{
  v1 = *(v0 - 368);
  v2 = *(v0 - 376);
  v3 = *(v0 - 384);
}

uint64_t sub_22C1163AC()
{
  v3 = *(v1 - 112);

  return sub_22BE41F44(v3, v0);
}

uint64_t sub_22C1163DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Session.Transcript(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Session.StatementIdCounter.__allocating_init(baseStatementIdIndex:)(int a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t Session.SessionState.init(events:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a1;
  v5 = type metadata accessor for Session.Event(0);
  v6 = sub_22BE179D8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v13 = v12 - v11;
  v14 = sub_22BE5CE4C(&qword_27D908310, &qword_22C27A410);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  sub_22BE192E0();
  MEMORY[0x28223BE20](v16);
  sub_22BE360F8();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v83 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v83 - v21;
  v91 = type metadata accessor for Session.Transcript(0);
  v23 = sub_22BE18000(v91);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v90 = &v83 - v30;
  MEMORY[0x28223BE20](v29);
  v93 = &v83 - v31;
  v32 = type metadata accessor for Session.SessionState();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  sub_22BE179EC();
  if (*(v34 + 16))
  {
    v84 = v32;
    v85 = a2;
    v89 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v37 = v34 + v89;
    v38 = v5[5];
    v92 = v36 - v35;
    v39 = sub_22C26E1D4();
    sub_22BE18000(v39);
    (*(v40 + 16))(v28, v37 + v38);
    v41 = (v37 + v5[9]);
    v42 = *v41;
    v88 = v41[1];
    v43 = v88;
    v44 = v91;
    v45 = &v28[v91[5]];
    *v45 = v42;
    *(v45 + 1) = v43;
    v46 = (v37 + v5[10]);
    v47 = *v46;
    v87 = v46[1];
    v48 = v87;
    v49 = &v28[v44[6]];
    *v49 = v47;
    *(v49 + 1) = v48;
    v50 = (v37 + v5[11]);
    v51 = *v50;
    v86 = v50[1];
    v52 = v86;
    v53 = &v28[v44[7]];
    *v53 = v51;
    *(v53 + 1) = v52;
    *&v28[v44[8]] = v94;
    v54 = v28;
    v55 = v90;
    sub_22BE3F2A0(v54, v90, type metadata accessor for Session.Transcript);
    v56 = v55;
    v57 = v93;
    sub_22BE3F2A0(v56, v93, type metadata accessor for Session.Transcript);
    sub_22BE18AF8();
    sub_22BE28A90(v57, v92, v58);
    v59 = *(v57 + v44[8]);
    v60 = *(v59 + 16);

    v94 = v59;

    v62 = v60;
    do
    {
      if (v62)
      {
        if (--v62 >= v60)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v63 = *(v8 + 72);
        sub_22BE1C040();
        sub_22BE28A90(v64, v22, v65);
        v66 = 0;
      }

      else
      {
        v66 = 1;
      }

      sub_22BE19DC4(v22, v66, 1, v5);
      sub_22BE26EE0(v22, v20);
      if (sub_22BE1AEA8(v20, 1, v5) == 1)
      {
        v76 = 0;
        goto LABEL_14;
      }

      sub_22BE18F14();
      sub_22BE3F2A0(v20, v13, v67);
      sub_22C19B5A0(&v96, v13);
      sub_22BE17E14();
      result = sub_22BE26F74(v13, v68);
    }

    while ((v96 & 0x100000000) != 0);
    v76 = v96;
    while (1)
    {
      if (v62)
      {
        if (--v62 >= v60)
        {
          goto LABEL_25;
        }

        v77 = *(v8 + 72);
        sub_22BE1C040();
        sub_22BE28A90(v78, v3, v79);
        v80 = 0;
      }

      else
      {
        v80 = 1;
      }

      sub_22BE19DC4(v3, v80, 1, v5);
      sub_22BE26EE0(v3, v2);
      if (sub_22BE1AEA8(v2, 1, v5) == 1)
      {
        break;
      }

      sub_22BE18F14();
      sub_22BE3F2A0(v2, v13, v81);
      sub_22C19B5A0(&v95, v13);
      sub_22BE17E14();
      result = sub_22BE26F74(v13, v82);
      if ((v95 & 0x100000000) == 0 && v76 <= v95)
      {
        v76 = v95;
      }
    }

LABEL_14:

    v69 = v76 + 1;
    v71 = v84;
    v70 = v85;
    v72 = v93;
    if (v76 != -1)
    {
      type metadata accessor for Session.StatementIdCounter();
      v73 = swift_allocObject();
      *(v73 + 16) = v69;
      sub_22BE186F0();
      sub_22BE26F74(v72, v74);
      v75 = v92;
      *(v92 + *(v71 + 20)) = v73;
      sub_22BE3F2A0(v75, v70, type metadata accessor for Session.SessionState);
      return sub_22BE19DC4(v70, 0, 1, v71);
    }

LABEL_26:
    __break(1u);
  }

  else
  {

    return sub_22BE19DC4(a2, 1, 1, v32);
  }

  return result;
}

uint64_t sub_22C116A4C()
{
  result = type metadata accessor for Session.Transcript(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Session.StatementIdCounter();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Session.StatusUpdateEvent.id.getter()
{
  sub_22BE1A5E4();
  v0 = sub_22C26E1D4();
  sub_22BE18000(v0);
  v2 = *(v1 + 16);
  v3 = sub_22BE19454();

  return v4(v3);
}

uint64_t Session.StatusUpdateEvent.id.setter()
{
  sub_22BE17BC4();
  v2 = sub_22C26E1D4();
  v3 = sub_22BE18000(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t Session.StatusUpdateEvent.sessionId.getter()
{
  v2 = sub_22BE1A5E4();
  v3 = *(type metadata accessor for Session.StatusUpdateEvent(v2) + 20);
  v4 = sub_22C26E1D4();
  v5 = sub_22BE18000(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t Session.StatusUpdateEvent.sessionId.setter()
{
  v2 = sub_22BE17BC4();
  v3 = *(type metadata accessor for Session.StatusUpdateEvent(v2) + 20);
  v4 = sub_22C26E1D4();
  sub_22BE18000(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t Session.StatusUpdateEvent.sessionId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.StatusUpdateEvent(v0) + 20);
  return sub_22BE18504();
}

uint64_t Session.StatusUpdateEvent.queryEventId.getter()
{
  v0 = sub_22BE1A5E4();
  updated = type metadata accessor for Session.StatusUpdateEvent(v0);
  v2 = sub_22BE25438(*(updated + 24));

  return sub_22C116D20(v2, v3);
}

uint64_t sub_22C116D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Session.StatusUpdateEvent.queryEventId.setter()
{
  v2 = sub_22BE17BC4();
  v3 = v1 + *(type metadata accessor for Session.StatusUpdateEvent(v2) + 24);

  return sub_22C116DD0(v0, v3);
}

uint64_t sub_22C116DD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Session.StatusUpdateEvent.queryEventId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.StatusUpdateEvent(v0) + 24);
  return sub_22BE18504();
}

uint64_t Session.StatusUpdateEvent.clientRequestId.getter()
{
  updated = type metadata accessor for Session.StatusUpdateEvent(0);
  sub_22BE36160(*(updated + 28));
  return sub_22BE19454();
}

uint64_t Session.StatusUpdateEvent.clientRequestId.setter()
{
  v3 = sub_22BE23708();
  updated = type metadata accessor for Session.StatusUpdateEvent(v3);
  result = sub_22BE1AFA8(*(updated + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Session.StatusUpdateEvent.clientRequestId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.StatusUpdateEvent(v0) + 28);
  return sub_22BE18504();
}

uint64_t Session.StatusUpdateEvent.clientSessionId.getter()
{
  updated = type metadata accessor for Session.StatusUpdateEvent(0);
  sub_22BE36160(*(updated + 32));
  return sub_22BE19454();
}

uint64_t Session.StatusUpdateEvent.clientSessionId.setter()
{
  v3 = sub_22BE23708();
  updated = type metadata accessor for Session.StatusUpdateEvent(v3);
  result = sub_22BE1AFA8(*(updated + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Session.StatusUpdateEvent.clientSessionId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.StatusUpdateEvent(v0) + 32);
  return sub_22BE18504();
}

uint64_t Session.StatusUpdateEvent.clientApplicationId.getter()
{
  updated = type metadata accessor for Session.StatusUpdateEvent(0);
  sub_22BE36160(*(updated + 36));
  return sub_22BE19454();
}

uint64_t Session.StatusUpdateEvent.clientApplicationId.setter()
{
  v3 = sub_22BE23708();
  updated = type metadata accessor for Session.StatusUpdateEvent(v3);
  result = sub_22BE1AFA8(*(updated + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Session.StatusUpdateEvent.clientApplicationId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.StatusUpdateEvent(v0) + 36);
  return sub_22BE18504();
}

uint64_t Session.StatusUpdateEvent.clientGroupId.getter()
{
  updated = type metadata accessor for Session.StatusUpdateEvent(0);
  sub_22BE36160(*(updated + 40));
  return sub_22BE19454();
}

uint64_t Session.StatusUpdateEvent.clientGroupId.setter()
{
  v3 = sub_22BE23708();
  updated = type metadata accessor for Session.StatusUpdateEvent(v3);
  result = sub_22BE1AFA8(*(updated + 40));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Session.StatusUpdateEvent.clientGroupId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.StatusUpdateEvent(v0) + 40);
  return sub_22BE18504();
}

uint64_t Session.StatusUpdateEvent.timepoint.getter()
{
  v0 = sub_22BE1A5E4();
  updated = type metadata accessor for Session.StatusUpdateEvent(v0);
  v2 = sub_22BE25438(*(updated + 44));
  return sub_22C117370(v2, v3);
}

uint64_t Session.StatusUpdateEvent.timepoint.setter()
{
  v0 = sub_22BE17BC4();
  updated = type metadata accessor for Session.StatusUpdateEvent(v0);
  return sub_22BE3EAE0(*(updated + 44));
}

uint64_t Session.StatusUpdateEvent.timepoint.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.StatusUpdateEvent(v0) + 44);
  return sub_22BE18504();
}

uint64_t Session.StatusUpdateEvent.sender.getter()
{
  updated = type metadata accessor for Session.StatusUpdateEvent(0);
  sub_22BE36160(*(updated + 48));
  return sub_22BE19454();
}

uint64_t Session.StatusUpdateEvent.sender.setter()
{
  v3 = sub_22BE23708();
  updated = type metadata accessor for Session.StatusUpdateEvent(v3);
  result = sub_22BE1AFA8(*(updated + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Session.StatusUpdateEvent.sender.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.StatusUpdateEvent(v0) + 48);
  return sub_22BE18504();
}

uint64_t Session.StatusUpdateEvent.postingSpan.getter()
{
  v1 = (v0 + *(type metadata accessor for Session.StatusUpdateEvent(0) + 52));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t Session.StatusUpdateEvent.postingSpan.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for Session.StatusUpdateEvent(0);
  v6 = v2 + *(result + 52);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t Session.StatusUpdateEvent.postingSpan.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.StatusUpdateEvent(v0) + 52);
  return sub_22BE18504();
}

uint64_t Session.StatusUpdateEvent.payload.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = *(type metadata accessor for Session.StatusUpdateEvent(v0) + 56);
  sub_22BE18F2C();
  v3 = sub_22BE25438(v2);
  return sub_22C117370(v3, v4);
}

uint64_t sub_22C117370(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BE23C8C();
  v5 = v4(v3);
  sub_22BE18000(v5);
  v7 = *(v6 + 16);
  v8 = sub_22BE19454();
  v9(v8);
  return a2;
}

uint64_t Session.StatusUpdateEvent.payload.setter()
{
  v0 = sub_22BE17BC4();
  updated = type metadata accessor for Session.StatusUpdateEvent(v0);
  return sub_22BE3EAE0(*(updated + 56));
}

uint64_t sub_22C117424(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BE23C8C();
  v5 = v4(v3);
  sub_22BE18000(v5);
  v7 = *(v6 + 40);
  v8 = sub_22BE19454();
  v9(v8);
  return a2;
}

uint64_t Session.StatusUpdateEvent.payload.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.StatusUpdateEvent(v0) + 56);
  return sub_22BE18504();
}

uint64_t static Session.StatusUpdateEvent.== infix(_:_:)()
{
  sub_22BE23708();
  v5 = sub_22C26E1D4();
  v6 = sub_22BE179D8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  sub_22BE1BC40();
  v11 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE234F4();
  v15 = sub_22BE5CE4C(&qword_27D90A8E8, &qword_22C288AF8);
  sub_22BE18000(v15);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1B01C();
  if ((sub_22C26E1B4() & 1) == 0)
  {
    goto LABEL_12;
  }

  updated = type metadata accessor for Session.StatusUpdateEvent(0);
  v20 = updated[5];
  if ((sub_22C26E1B4() & 1) == 0)
  {
    goto LABEL_12;
  }

  v21 = updated[6];
  v22 = *(v15 + 48);
  sub_22C116D20(v1 + v21, v3);
  sub_22C116D20(v0 + v21, v3 + v22);
  sub_22BE181B0(v3);
  if (!v25)
  {
    v23 = sub_22BE1B18C();
    sub_22C116D20(v23, v24);
    sub_22BE181B0(v3 + v22);
    if (!v25)
    {
      (*(v8 + 32))(v2, v3 + v22, v5);
      sub_22BE3E6A4();
      sub_22C11BD2C(v28, v29);
      sub_22BE33560();
      v30 = sub_22C272FD4();
      v31 = *(v8 + 8);
      v31(v2, v5);
      v31(v4, v5);
      sub_22BE33928(v3, &qword_27D9082F0, &qword_22C27AB00);
      if ((v30 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    (*(v8 + 8))(v4, v5);
LABEL_11:
    sub_22BE33928(v3, &qword_27D90A8E8, &qword_22C288AF8);
    goto LABEL_12;
  }

  sub_22BE181B0(v3 + v22);
  if (!v25)
  {
    goto LABEL_11;
  }

  sub_22BE33928(v3, &qword_27D9082F0, &qword_22C27AB00);
LABEL_15:
  sub_22BE2B8DC(updated[7]);
  if (v25)
  {
    v34 = v32 == v33;
  }

  else
  {
    v34 = 0;
  }

  if (!v34 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_22BE2B8DC(updated[8]);
  v37 = v25 && v35 == v36;
  if (!v37 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_22BE2B8DC(updated[9]);
  v40 = v25 && v38 == v39;
  if (!v40 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_12;
  }

  v41 = updated[10];
  sub_22BE39128();
  if (v42)
  {
    if (!v43)
    {
      goto LABEL_12;
    }

    v46 = *v44 == *v45 && v42 == v43;
    if (!v46 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v43)
  {
    goto LABEL_12;
  }

  if (static Timepoint.== infix(_:_:)(v1 + updated[11], v0 + updated[11]))
  {
    v47 = updated[12];
    sub_22BE39128();
    if (v48)
    {
      if (!v49)
      {
        goto LABEL_12;
      }

      v52 = *v50 == *v51 && v48 == v49;
      if (!v52 && (sub_22C274014() & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (v49)
    {
      goto LABEL_12;
    }

    v53 = updated[13];
    v54 = (v1 + v53);
    v55 = *(v1 + v53 + 8);
    v56 = (v0 + v53);
    v57 = *(v0 + v53 + 8);
    if (v55)
    {
      if (v57)
      {
LABEL_55:
        v26 = static Session.StatusUpdateEvent.Payload.== infix(_:_:)(v1 + updated[14]);
        return v26 & 1;
      }
    }

    else
    {
      if (*v54 != *v56)
      {
        LOBYTE(v57) = 1;
      }

      if ((v57 & 1) == 0)
      {
        goto LABEL_55;
      }
    }
  }

LABEL_12:
  v26 = 0;
  return v26 & 1;
}

uint64_t static Session.StatusUpdateEvent.Payload.== infix(_:_:)(uint64_t a1)
{
  *&v70 = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(0);
  v4 = sub_22BE18000(v70);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v9 = (v8 - v7);
  updated = type metadata accessor for Session.StatusUpdateEvent.Payload(0);
  v11 = sub_22BE18000(updated);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE183AC();
  v16 = (v14 - v15);
  MEMORY[0x28223BE20](v17);
  sub_22BE20324();
  MEMORY[0x28223BE20](v18);
  v20 = &v70 - v19;
  v21 = sub_22BE5CE4C(&qword_27D912190, &qword_22C2B6100);
  sub_22BE19448(v21);
  v23 = *(v22 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  sub_22BE1B72C();
  v26 = v1 + *(v25 + 56);
  sub_22C117370(a1, v1);
  v27 = sub_22BE18240();
  sub_22C117370(v27, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_22BE18F2C();
    sub_22C117370(v1, v20);
    v38 = *(v20 + 2);
    v39 = *(v20 + 4);
    sub_22BE1AB1C();
    if (!swift_getEnumCaseMultiPayload())
    {
      v60 = *(v20 + 3);
      v61 = *(v20 + 1);
      v62 = *v26;
      v63 = *(v26 + 8);
      v64 = *(v26 + 32);
      v75 = *v20;
      v76 = v61;
      v77 = v38;
      v78 = v60;
      v79 = v39;
      v71 = v62;
      v72 = v63;
      v70 = *(v26 + 16);
      v73 = v70;
      v74 = v64;
      v57 = static Session.StatusUpdateEvent.ToolExecutionProgressUpdate.== infix(_:_:)(&v75, &v71);

      sub_22BE17E2C();
      sub_22C119530();
      return v57 & 1;
    }

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_22BE18F2C();
    v40 = sub_22BE1A6BC();
    sub_22C117370(v40, v41);
    v43 = *v16;
    v42 = v16[1];
    v45 = v16[2];
    v44 = v16[3];
    sub_22BE1AB1C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v46 = *v26;
      v47 = *(v26 + 8);
      v48 = *(v26 + 16);
      v49 = *(v26 + 24);
      v50 = v43 == v46 && v42 == v47;
      if (v50 || (sub_22C274014() & 1) != 0)
      {
        v51 = sub_22BE1804C();
        v52 = MEMORY[0x2318A6720](v51);

        v53 = sub_22BE29454();
        sub_22BE29DD4(v53, v54);

        v55 = sub_22BE1804C();
        sub_22BE29DD4(v55, v56);
        if (v52)
        {
          goto LABEL_21;
        }
      }

      else
      {

        v65 = sub_22BE29454();
        sub_22BE29DD4(v65, v66);

        v67 = sub_22BE1804C();
        sub_22BE29DD4(v67, v68);
      }

      goto LABEL_28;
    }

    v58 = sub_22BE1804C();
    sub_22BE29DD4(v58, v59);
LABEL_24:
    sub_22BE33928(v1, &qword_27D912190, &qword_22C2B6100);
LABEL_29:
    v57 = 0;
    return v57 & 1;
  }

  sub_22BE18F2C();
  v30 = sub_22BE260B8();
  sub_22C117370(v30, v31);
  sub_22BE1AB1C();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22C11FDB0();
    sub_22C119530();
    goto LABEL_24;
  }

  sub_22BE22D00();
  sub_22C11BD74(v26, v9);
  v32 = *v2 == *v9 && v2[1] == v9[1];
  v33 = v70;
  if (!v32 && (sub_22C274014() & 1) == 0 || (static Session.StatusUpdateEvent.IntermediateQueryResult.Source.== infix(_:_:)(v2 + *(v33 + 20), v9 + *(v33 + 20)) & 1) == 0 || (v34 = *(v33 + 24), v35 = *(v2 + v34), v36 = *(v9 + v34), sub_22BE96740(), (v37 & 1) == 0))
  {
    sub_22C11FDC8();
    sub_22C119530();
    sub_22C119530();
LABEL_28:
    sub_22BE17E2C();
    sub_22C119530();
    goto LABEL_29;
  }

  sub_22C11FDC8();
  sub_22C119530();
  sub_22C119530();
LABEL_21:
  sub_22BE17E2C();
  sub_22C119530();
  v57 = 1;
  return v57 & 1;
}

uint64_t sub_22C117C6C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6576457972657571 && a2 == 0xEC0000006449746ELL;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6552746E65696C63 && a2 == 0xEF64497473657571;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6553746E65696C63 && a2 == 0xEF64496E6F697373;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x800000022C2DAEA0 == a2;
            if (v10 || (sub_22C274014() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7247746E65696C63 && a2 == 0xED0000644970756FLL;
              if (v11 || (sub_22C274014() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E696F70656D6974 && a2 == 0xE900000000000074;
                if (v12 || (sub_22C274014() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
                  if (v13 || (sub_22C274014() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x53676E6974736F70 && a2 == 0xEB000000006E6170;
                    if (v14 || (sub_22C274014() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_22C274014();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_22C117FEC(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x496E6F6973736573;
      break;
    case 2:
      result = 0x6576457972657571;
      break;
    case 3:
      result = 0x6552746E65696C63;
      break;
    case 4:
      result = 0x6553746E65696C63;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x7247746E65696C63;
      break;
    case 7:
      result = 0x6E696F70656D6974;
      break;
    case 8:
      result = 0x7265646E6573;
      break;
    case 9:
      result = 0x53676E6974736F70;
      break;
    case 10:
      result = 0x64616F6C796170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C118154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C117C6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C11817C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C117FE4();
  *a1 = result;
  return result;
}

uint64_t sub_22C1181A4(uint64_t a1)
{
  v2 = sub_22C11BCD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1181E0(uint64_t a1)
{
  v2 = sub_22C11BCD8();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.StatusUpdateEvent.encode(to:)()
{
  sub_22BE19130();
  v2 = v0;
  v4 = v3;
  v5 = sub_22BE5CE4C(&qword_27D912198, &qword_22C2B6108);
  sub_22BE179D8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE19E64();
  v11 = *(v4 + 24);
  v12 = *(v4 + 32);
  v13 = sub_22BE1B73C();
  sub_22BE26950(v13, v14);
  sub_22C11BCD8();
  sub_22BE23550();
  sub_22C274234();
  sub_22C26E1D4();
  sub_22BE3E6A4();
  sub_22C11BD2C(v15, v16);
  sub_22BE1C270();
  sub_22C273FA4();
  if (!v1)
  {
    updated = type metadata accessor for Session.StatusUpdateEvent(0);
    v18 = updated[5];
    sub_22BE2BC34();
    sub_22BE1C270();
    sub_22C273FA4();
    v19 = updated[6];
    sub_22BE2BC34();
    sub_22BE1C270();
    sub_22C273F34();
    sub_22C11FDEC(updated[7]);
    sub_22BE1BB58();
    sub_22C273F54();
    sub_22C11FDEC(updated[8]);
    sub_22BE1BB58();
    sub_22C273F54();
    sub_22C11FDEC(updated[9]);
    sub_22BE1BB58();
    sub_22C273F54();
    sub_22C11FDEC(updated[10]);
    sub_22BE1BB58();
    sub_22C273EF4();
    v20 = updated[11];
    type metadata accessor for Timepoint();
    sub_22BE3D1F4();
    sub_22C11BD2C(v21, v22);
    sub_22BE2BC34();
    sub_22BE1C270();
    sub_22C273FA4();
    v30 = *(v2 + updated[12]);
    sub_22BE31554();
    sub_22BE1C270();
    sub_22C273F34();
    v23 = (v2 + updated[13]);
    v31 = *v23;
    v32 = *(v23 + 8);
    sub_22BE315A8();
    sub_22BE1C270();
    sub_22C273F34();
    v24 = updated[14];
    type metadata accessor for Session.StatusUpdateEvent.Payload(0);
    sub_22BE25998();
    sub_22C11BD2C(v25, v26);
    sub_22BE2BC34();
    sub_22BE1C270();
    sub_22C273FA4();
  }

  v27 = *(v7 + 8);
  v28 = sub_22BE1AB74();
  v29(v28);
  sub_22BE35D48();
  sub_22BE18478();
}

void Session.StatusUpdateEvent.init(from:)()
{
  sub_22BE19130();
  v5 = v4;
  v82 = v6;
  updated = type metadata accessor for Session.StatusUpdateEvent.Payload(0);
  v7 = sub_22BE18000(updated);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  v84 = v11 - v10;
  v90 = type metadata accessor for Timepoint();
  v12 = sub_22BE18000(v90);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE179EC();
  v17 = v16 - v15;
  v18 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v18);
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE1B72C();
  v22 = sub_22C26E1D4();
  v23 = sub_22BE179D8(v22);
  v95 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v27);
  v29 = &v80 - v28;
  v30 = sub_22BE5CE4C(&qword_27D9121B0, &qword_22C2B6110);
  v31 = sub_22BE179D8(v30);
  v86 = v32;
  v87 = v31;
  v34 = *(v33 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  v36 = sub_22BE1AED0();
  v37 = type metadata accessor for Session.StatusUpdateEvent(v36);
  v38 = sub_22BE18000(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BE179EC();
  v93 = v41[6];
  v94 = v41;
  v91 = v43 - v42;
  sub_22BE19DC4(v43 - v42 + v93, 1, 1, v22);
  v44 = v5[3];
  v45 = v5[4];
  v89 = v5;
  sub_22BE26950(v5, v44);
  sub_22C11BCD8();
  v88 = v3;
  sub_22C274214();
  v92 = v22;
  if (v1)
  {
    v90 = v1;
    sub_22C11FDF8();
    v48 = v91;
    sub_22BE26B64(v89);
    v50 = 0;
    if (!v29)
    {
      v51 = v94;
      goto LABEL_11;
    }

    v49 = *(v95 + 8);
  }

  else
  {
    v85 = v0;
    v81 = v17;
    LOBYTE(v96) = 0;
    sub_22BE3E6A4();
    sub_22C11BD2C(v46, v47);
    sub_22C273EB4();
    v56 = v91;
    v80 = *(v95 + 32);
    v80(v91, v29, v22);
    LOBYTE(v96) = 1;
    sub_22BE23B58();
    sub_22C273EB4();
    v57 = v94;
    v80(v56 + v94[5], v2, v22);
    LOBYTE(v96) = 2;
    v58 = v85;
    sub_22BE23B58();
    sub_22C273E44();
    sub_22C116DD0(v58, v56 + v93);
    sub_22BE23D8C(3);
    v59 = sub_22C273E64();
    LODWORD(v45) = v86;
    sub_22BE37C38(v59, v60, v57[7]);
    sub_22BE23D8C(4);
    v61 = sub_22C273E64();
    sub_22BE37C38(v61, v62, v57[8]);
    sub_22BE23D8C(5);
    v63 = sub_22C273E64();
    sub_22BE37C38(v63, v64, v57[9]);
    sub_22BE23D8C(6);
    v65 = sub_22C273E04();
    sub_22BE37C38(v65, v66, v57[10]);
    LOBYTE(v96) = 7;
    sub_22BE3D1F4();
    sub_22C11BD2C(v67, v68);
    v69 = v81;
    sub_22C273EB4();
    LODWORD(v2) = 0;
    LODWORD(v85) = 1;
    sub_22C11BD74(v69, v56 + v57[11]);
    sub_22C11BDCC();
    sub_22C273E44();
    v70 = (v56 + v57[12]);
    v71 = v97;
    *v70 = v96;
    v70[1] = v71;
    sub_22C11BE20();
    sub_22BE3788C();
    sub_22C273E44();
    v90 = 0;
    v72 = v91 + v94[13];
    v73 = v97;
    *v72 = v96;
    *(v72 + 8) = v73;
    LOBYTE(v96) = 10;
    sub_22BE25998();
    sub_22C11BD2C(v74, v75);
    LODWORD(v5) = v88;
    v76 = v90;
    sub_22C273EB4();
    v90 = v76;
    if (!v76)
    {
      (*(v86 + 8))(v88, v87);
      v77 = v94[14];
      sub_22BE18B10();
      v78 = v91;
      sub_22C11BD74(v84, v91 + v79);
      sub_22C117370(v78, v82);
      sub_22BE26B64(v89);
      sub_22C119530();
      goto LABEL_20;
    }

    (*(v86 + 8))(v88, v87);
    v48 = v91;
    sub_22BE26B64(v89);
    sub_22BE48E38();
    v49 = *(v95 + 8);
    v49(v48, v92);
    if ((v57 & 1) == 0)
    {
      v51 = v94;
      v50 = v85;
      goto LABEL_11;
    }

    v50 = v85;
  }

  v51 = v94;
  v49(v48 + v94[5], v92);
LABEL_11:
  sub_22BE33928(v48 + v93, &qword_27D9082F0, &qword_22C27AB00);
  if (v45)
  {
    v52 = *(v48 + v51[7] + 8);
  }

  if (v2)
  {
    v53 = *(v48 + v51[8] + 8);
  }

  if (v5)
  {
    v54 = *(v48 + v51[9] + 8);
  }

  if (v50)
  {
    v55 = v51[11];
    sub_22C119530();
  }

LABEL_20:
  sub_22BE35D48();
  sub_22BE18478();
}

uint64_t Session.Event.formingStatusUpdate(_:)(uint64_t a1)
{
  sub_22BE1A5E4();
  v3 = type metadata accessor for PreassignedEventID();
  v4 = sub_22BE19448(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v9 = v8 - v7;
  _s30IntelligenceFlowPlannerSupport20PlatformPnRTelemetryC5endedyyAA10EndedStateO_0aE7Library0aB11IdentifiersVSg10Foundation4UUIDVtFZfA1__0();
  v10 = sub_22C26E1D4();
  sub_22BE187D0(v10);
  v47 = v11;
  v12 = *(v11 + 16);
  v49 = v9;
  v12(v1, v9, v10);
  v13 = type metadata accessor for Session.Event(0);
  v14 = v13[5];
  updated = type metadata accessor for Session.StatusUpdateEvent(0);
  v12(v1 + updated[5], v2 + v14, v10);
  sub_22C116D20(v2 + v13[6], v1 + updated[6]);
  v16 = v13[9];
  v17 = (v2 + v13[8]);
  v18 = v17[1];
  v43 = *v17;
  v19 = *(v2 + v16 + 8);
  v45 = *(v2 + v16);
  v20 = v13[11];
  v21 = (v2 + v13[10]);
  v22 = *v21;
  v23 = v21[1];
  v24 = (v2 + v20);
  v25 = v1 + updated[11];
  v39 = *v24;
  v40 = v24[1];
  v41 = v22;

  v44 = v18;

  v46 = v19;

  v42 = v23;

  sub_22C26E134();
  v26 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v27 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (qword_28106E038 != -1)
  {
    sub_22BE2360C();
  }

  v28 = sub_22BE199F4(v10, qword_28108A1E0);
  v29 = type metadata accessor for Timepoint();
  v12(v25 + v29[7], v28, v10);
  *(v25 + v29[5]) = v26;
  *(v25 + v29[6]) = v27;
  v30 = updated[14];
  sub_22BE18F2C();
  sub_22C117370(a1, v1 + v31);
  v32 = (v1 + updated[7]);
  *v32 = v43;
  v32[1] = v44;
  v33 = (v1 + updated[8]);
  *v33 = v45;
  v33[1] = v46;
  v34 = (v1 + updated[9]);
  *v34 = v41;
  v34[1] = v42;
  v35 = (v1 + updated[10]);
  *v35 = v39;
  v35[1] = v40;
  v36 = (v1 + updated[12]);
  *v36 = 0;
  v36[1] = 0;
  v37 = v1 + updated[13];
  *v37 = 0;
  *(v37 + 8) = 1;
  return (*(v47 + 8))(v49, v10);
}

uint64_t Session.Event.formingStatusUpdate(id:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22C26E1D4();
  sub_22BE179D8(v6);
  v46 = v7;
  v9 = *(v8 + 16);
  v47 = a1;
  v9(a3, a1, v6);
  v10 = type metadata accessor for Session.Event(0);
  v11 = v10[5];
  updated = type metadata accessor for Session.StatusUpdateEvent(0);
  v9(a3 + updated[5], v3 + v11, v6);
  sub_22C116D20(v3 + v10[6], a3 + updated[6]);
  v13 = v10[9];
  v14 = (v3 + v10[8]);
  v15 = v14[1];
  v41 = *v14;
  v16 = *(v3 + v13 + 8);
  v43 = *(v3 + v13);
  v17 = v10[11];
  v18 = (v3 + v10[10]);
  v19 = *v18;
  v20 = v18[1];
  v21 = (v3 + v17);
  v22 = a3 + updated[11];
  v37 = *v21;
  v38 = v21[1];
  v39 = v19;

  v42 = v15;

  v44 = v16;

  v40 = v20;

  sub_22C26E134();
  v23 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v24 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (qword_28106E038 != -1)
  {
    sub_22BE2360C();
  }

  v25 = sub_22BE199F4(v6, qword_28108A1E0);
  v26 = type metadata accessor for Timepoint();
  v9(v22 + v26[7], v25, v6);
  *(v22 + v26[5]) = v23;
  *(v22 + v26[6]) = v24;
  v27 = updated[14];
  sub_22BE18F2C();
  sub_22C117370(a2, a3 + v28);
  v29 = (a3 + updated[7]);
  *v29 = v41;
  v29[1] = v42;
  v30 = (a3 + updated[8]);
  *v30 = v43;
  v30[1] = v44;
  v31 = (a3 + updated[9]);
  *v31 = v39;
  v31[1] = v40;
  v32 = (a3 + updated[10]);
  *v32 = v37;
  v32[1] = v38;
  v33 = (a3 + updated[12]);
  *v33 = 0;
  v33[1] = 0;
  v34 = a3 + updated[13];
  *v34 = 0;
  *(v34 + 8) = 1;
  v35 = *(v46 + 8);

  return v35(v47, v6);
}

uint64_t static Session.StatusUpdateEvent.ToolExecutionProgressUpdate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *(a1 + 8) == *(a2 + 8) && v3 == v6;
    if (!v9 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      if (v4 == v7 && v5 == v8)
      {
        return 1;
      }

      sub_22BE19454();
      if (sub_22C274014())
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

void static Session.StatusUpdateEvent.IntermediateQueryResult.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_22C274014() & 1) != 0)
  {
    updated = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(0);
    if (static Session.StatusUpdateEvent.IntermediateQueryResult.Source.== infix(_:_:)(a1 + *(updated + 20), a2 + *(updated + 20)))
    {
      v6 = *(updated + 24);
      v7 = *(a1 + v6);
      v8 = *(a2 + v6);

      sub_22BE96740();
    }
  }
}

uint64_t static Session.StatusUpdateEvent.SnippetStreamUpdate.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_22BE28FB4(a1, a2);
  v4 = v4 && v2 == v3;
  if (v4 || (sub_22C274014() & 1) != 0)
  {
    sub_22BE19454();

    JUMPOUT(0x2318A6720);
  }

  return 0;
}

uint64_t sub_22C119530()
{
  v1 = sub_22BE17BC4();
  v3 = v2(v1);
  sub_22BE18000(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_22C119584(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x800000022C2DB4D0 == a2;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x800000022C2DB4F0 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000013 && 0x800000022C2DB510 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

unint64_t sub_22C1196A0(unsigned __int8 a1)
{
  result = 0xD000000000000017;
  if (a1 >= 2u)
  {
    return 0xD000000000000013;
  }

  return result;
}

uint64_t sub_22C1196FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C119584(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C119724(uint64_t a1)
{
  v2 = sub_22C11BE74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C119760(uint64_t a1)
{
  v2 = sub_22C11BE74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C11979C(uint64_t a1)
{
  v2 = sub_22C11BFC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1197D8(uint64_t a1)
{
  v2 = sub_22C11BFC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C119814(uint64_t a1)
{
  v2 = sub_22C11BF70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C119850(uint64_t a1)
{
  v2 = sub_22C11BF70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C11988C(uint64_t a1)
{
  v2 = sub_22C11BEC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C1198C8(uint64_t a1)
{
  v2 = sub_22C11BEC8();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.StatusUpdateEvent.Payload.encode(to:)()
{
  sub_22BE3F494();
  v67 = v0;
  v2 = v1;
  v3 = sub_22BE5CE4C(&qword_27D9121D8, &qword_22C2B6118);
  v66 = sub_22BE179D8(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1A174();
  v65 = sub_22BE5CE4C(&qword_27D9121E0, &qword_22C2B6120);
  sub_22BE179D8(v65);
  v64 = v7;
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  updated = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(0);
  v11 = sub_22BE18000(updated);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  v16 = v15 - v14;
  v17 = sub_22BE5CE4C(&qword_27D9121E8, &qword_22C2B6128);
  sub_22BE179D8(v17);
  v62 = v18;
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE234F4();
  v22 = type metadata accessor for Session.StatusUpdateEvent.Payload(0);
  v23 = sub_22BE18000(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE179EC();
  v28 = (v27 - v26);
  v29 = sub_22BE5CE4C(&qword_27D9121F0, &qword_22C2B6130);
  v68 = sub_22BE179D8(v29);
  v31 = *(v30 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE1BC40();
  v33 = v2[4];
  sub_22BE26950(v2, v2[3]);
  sub_22C11BE74();
  sub_22C274234();
  sub_22BE18F2C();
  sub_22C117370(v67, v28);
  sub_22BE1A6BC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22C11BD74(v28, v16);
      sub_22C11BF70();
      sub_22C273EE4();
      sub_22BE2F248();
      sub_22C11BD2C(v35, v36);
      sub_22C273FA4();
      v37 = *(v64 + 8);
      v38 = sub_22BE18240();
      v39(v38);
      sub_22C11FDB0();
      sub_22C119530();
      v40 = sub_22BE336B4();
      v41(v40, v68);
    }

    else
    {
      v52 = *v28;
      v53 = v28[1];
      v54 = v28[2];
      v55 = v28[3];
      sub_22C11BEC8();
      sub_22C273EE4();
      sub_22C11BF1C();
      sub_22C273FA4();
      v56 = sub_22C11FDE0();
      v57(v56, v66);
      v58 = sub_22BE336B4();
      v59(v58, v68);

      v60 = sub_22BE1B18C();
      sub_22BE29DD4(v60, v61);
    }
  }

  else
  {
    v42 = *v28;
    v43 = v28[1];
    v44 = v28[2];
    v46 = v28[3];
    v45 = v28[4];
    sub_22C11BFC4();
    sub_22C273EE4();
    sub_22C11C018();
    sub_22C273FA4();
    v47 = *(v62 + 8);
    v48 = sub_22BE18240();
    v49(v48);
    v50 = sub_22BE336B4();
    v51(v50, v68);
  }

  sub_22BE3CAD8();
}

void Session.StatusUpdateEvent.Payload.init(from:)()
{
  sub_22BE19130();
  v5 = v4;
  v103 = v6;
  v97 = sub_22BE5CE4C(&qword_27D912230, &qword_22C2B6138);
  sub_22BE179D8(v97);
  v104 = v7;
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE1A174();
  v102 = v11;
  v12 = sub_22BE5CE4C(&qword_27D912238, &qword_22C2B6140);
  v13 = sub_22BE179D8(v12);
  v98 = v14;
  v99 = v13;
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1A174();
  v101 = v18;
  v107 = sub_22BE5CE4C(&qword_27D912240, &qword_22C2B6148);
  sub_22BE179D8(v107);
  v96 = v19;
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1A174();
  v100 = v23;
  v24 = sub_22BE5CE4C(&qword_27D912248, &unk_22C2B6150);
  v25 = sub_22BE179D8(v24);
  v105 = v26;
  v106 = v25;
  v28 = *(v27 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  v30 = sub_22BE1AED0();
  updated = type metadata accessor for Session.StatusUpdateEvent.Payload(v30);
  v32 = sub_22BE18000(updated);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v35);
  sub_22BE20324();
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v91 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v91 - v40;
  v43 = v5[3];
  v42 = v5[4];
  v108 = v5;
  sub_22BE26950(v5, v43);
  sub_22C11BE74();
  sub_22C274214();
  if (v0)
  {
    goto LABEL_11;
  }

  v92 = v39;
  v93 = v2;
  v94 = v1;
  v45 = v106;
  v44 = v107;
  v95 = v41;
  v111 = updated;
  v46 = sub_22C273ED4();
  sub_22BE7C5C4(v46, 0);
  if (v48 != v47 >> 1)
  {
    sub_22BE32C78();
    if (v51 == v52)
    {
      __break(1u);
      return;
    }

    v53 = v3;
    v54 = *(v50 + v49);
    sub_22BE7C5C0(v49 + 1);
    v56 = v55;
    v58 = v57;
    swift_unknownObjectRelease();
    v59 = v56 == v58 >> 1;
    v60 = v104;
    if (!v59)
    {
      v3 = v53;
      goto LABEL_10;
    }

    v61 = v53;
    if (v54)
    {
      if (v54 != 1)
      {
        LOBYTE(v109) = 2;
        sub_22C11BEC8();
        v72 = v102;
        sub_22BE22EB4();
        v73 = v103;
        sub_22C11E008();
        v74 = v97;
        sub_22BE3788C();
        sub_22C273EB4();
        swift_unknownObjectRelease();
        (*(v60 + 8))(v72, v74);
        sub_22BE1C1F4();
        v86(v61, v45);
        v87 = *v110;
        v88 = v93;
        *v93 = v109;
        *(v88 + 8) = v87;
        *(v88 + 16) = *&v110[8];
        swift_storeEnumTagMultiPayload();
        sub_22BE18B10();
        v89 = v95;
        sub_22C11BD74(v88, v95);
        v90 = v108;
LABEL_16:
        sub_22BE18B10();
        sub_22C11BD74(v89, v73);
        v70 = v90;
        goto LABEL_12;
      }

      LOBYTE(v109) = 1;
      sub_22C11BF70();
      sub_22BE22EB4();
      type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(0);
      sub_22BE2F248();
      sub_22C11BD2C(v62, v63);
      v64 = v94;
      sub_22C273EB4();
      swift_unknownObjectRelease();
      v75 = sub_22BE27C20();
      v76(v75);
      sub_22BE1C1F4();
      v77 = sub_22BE1B18C();
      v78(v77);
      swift_storeEnumTagMultiPayload();
      sub_22BE18B10();
      v79 = v64;
    }

    else
    {
      LOBYTE(v109) = 0;
      sub_22C11BFC4();
      sub_22BE22EB4();
      sub_22C11E05C();
      sub_22C273EB4();
      v71 = v105;
      swift_unknownObjectRelease();
      v80 = sub_22C11FDE0();
      v81(v80, v44);
      v82 = *(v71 + 8);
      v83 = sub_22BE1B18C();
      v84(v83);
      v85 = v92;
      *v92 = v109;
      *(v85 + 2) = *v110;
      *(v85 + 6) = *&v110[16];
      swift_storeEnumTagMultiPayload();
      sub_22BE18B10();
      v79 = v85;
    }

    v89 = v95;
    sub_22C11BD74(v79, v95);
    v90 = v108;
    v73 = v103;
    goto LABEL_16;
  }

LABEL_10:
  v65 = sub_22C273B34();
  swift_allocError();
  v67 = v66;
  v68 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
  *v67 = v111;
  sub_22C273DF4();
  sub_22BE1B198();
  (*(*(v65 - 8) + 104))(v67, *MEMORY[0x277D84160], v65);
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_22BE1C1F4();
  v69(v3, v45);
LABEL_11:
  v70 = v108;
LABEL_12:
  sub_22BE26B64(v70);
  sub_22BE18478();
}

uint64_t Session.StatusUpdateEvent.ToolExecutionProgressUpdate.progressDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return sub_22BE19454();
}

uint64_t Session.StatusUpdateEvent.ToolExecutionProgressUpdate.additionalProgressDescription.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_22BE19454();
}

uint64_t Session.StatusUpdateEvent.ToolExecutionProgressUpdate.init(progress:progressDescription:additionalProgressDescription:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, float a6@<S0>)
{
  *a5 = a6;
  *(a5 + 8) = result;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

uint64_t sub_22C11A624(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572676F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x800000022C2DB530 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001DLL && 0x800000022C2DB550 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22C11A740(char a1)
{
  if (!a1)
  {
    return 0x73736572676F7270;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD00000000000001DLL;
}

uint64_t sub_22C11A7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C11A624(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C11A7CC(uint64_t a1)
{
  v2 = sub_22C11E0B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C11A808(uint64_t a1)
{
  v2 = sub_22C11E0B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.StatusUpdateEvent.ToolExecutionProgressUpdate.encode(to:)()
{
  sub_22BE3F494();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D912268, &qword_22C2B6160);
  sub_22BE179D8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE19E64();
  v10 = *v0;
  v17 = *(v0 + 2);
  v18 = *(v0 + 1);
  v11 = *(v0 + 4);
  v16 = *(v0 + 3);
  v12 = v3[4];
  sub_22BE26950(v3, v3[3]);
  sub_22C11E0B0();
  sub_22BE23550();
  sub_22C274234();
  sub_22BE1C270();
  sub_22C273F84();
  if (!v1)
  {
    sub_22BE1BB58();
    sub_22C273EF4();
    sub_22BE1BB58();
    sub_22C273EF4();
  }

  v13 = *(v6 + 8);
  v14 = sub_22BE1AB74();
  v15(v14);
  sub_22BE35D48();
  sub_22BE3CAD8();
}

void Session.StatusUpdateEvent.ToolExecutionProgressUpdate.init(from:)()
{
  sub_22BE3F494();
  v2 = v1;
  v4 = v3;
  v5 = sub_22BE5CE4C(&qword_27D912278, &qword_22C2B6168);
  sub_22BE179D8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE234F4();
  v11 = v2[3];
  v12 = v2[4];
  v13 = sub_22BE1A6BC();
  sub_22BE26950(v13, v14);
  sub_22C11E0B0();
  sub_22BE33A2C();
  if (v0)
  {
    sub_22BE26B64(v2);
  }

  else
  {
    sub_22BE23070();
    sub_22C273E94();
    v16 = v15;
    sub_22BE23070();
    v17 = sub_22C273E04();
    v19 = v18;
    sub_22BE23070();
    v20 = sub_22C273E04();
    v22 = v21;
    v23 = *(v7 + 8);
    v26 = v20;
    v24 = sub_22BE33560();
    v25(v24);
    *v4 = v16;
    *(v4 + 8) = v17;
    *(v4 + 16) = v19;
    *(v4 + 24) = v26;
    *(v4 + 32) = v22;

    sub_22BE26B64(v2);
  }

  sub_22BE3CAD8();
}

uint64_t Session.StatusUpdateEvent.IntermediateQueryResult.query.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_22BE19454();
}

uint64_t Session.StatusUpdateEvent.IntermediateQueryResult.query.setter()
{
  sub_22BE1A8A8();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Session.StatusUpdateEvent.IntermediateQueryResult.source.getter()
{
  v0 = sub_22BE1A5E4();
  v1 = *(type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(v0) + 20);
  sub_22BE1A7C8();
  v3 = sub_22BE25438(v2);
  return sub_22C117370(v3, v4);
}

uint64_t Session.StatusUpdateEvent.IntermediateQueryResult.source.setter()
{
  v0 = sub_22BE17BC4();
  updated = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(v0);
  return sub_22BE3EAE0(*(updated + 20));
}

uint64_t Session.StatusUpdateEvent.IntermediateQueryResult.source.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(v0) + 20);
  return sub_22BE18504();
}

uint64_t Session.StatusUpdateEvent.IntermediateQueryResult.results.getter()
{
  v1 = *(v0 + *(type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(0) + 24));
}

uint64_t Session.StatusUpdateEvent.IntermediateQueryResult.results.setter()
{
  v2 = sub_22BE17BC4();
  v3 = *(type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(v2) + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t Session.StatusUpdateEvent.IntermediateQueryResult.results.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(v0) + 24);
  return sub_22BE18504();
}

uint64_t Session.StatusUpdateEvent.IntermediateQueryResult.init(query:source:results:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  updated = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(0);
  v9 = *(updated + 20);
  sub_22BE252A0();
  result = sub_22C11BD74(a3, a5 + v10);
  *(a5 + *(updated + 24)) = a4;
  return result;
}

uint64_t Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery.ActionContext.parameterId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_22BE19454();
}

uint64_t Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery.ActionContext.parameterId.setter()
{
  sub_22BE1A8A8();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t static Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery.ActionContext.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_22BE28FB4(a1, a2);
  v8 = v8 && v6 == v7;
  if (v8 || (v9 = sub_22C274014(), result = 0, (v9 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      sub_22BE19454();

      return sub_22C274014();
    }
  }

  return result;
}

uint64_t sub_22C11AF98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEB00000000644972)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C11B060(char a1)
{
  if (a1)
  {
    return 0x6574656D61726170;
  }

  else
  {
    return 0x64496C6F6F74;
  }
}

uint64_t sub_22C11B0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C11AF98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C11B0CC(uint64_t a1)
{
  v2 = sub_22C11E124();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C11B108(uint64_t a1)
{
  v2 = sub_22C11E124();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery.ActionContext.encode(to:)()
{
  sub_22BE19130();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D912280, &qword_22C2B6170);
  sub_22BE179D8(v4);
  v17 = v5;
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE19E64();
  v9 = *v0;
  v10 = v0[1];
  v15 = v0[3];
  v16 = v0[2];
  v11 = v3[4];
  sub_22BE26950(v3, v3[3]);
  sub_22C11E124();
  sub_22BE23550();
  sub_22C274234();
  sub_22BE1BB58();
  sub_22C273F54();
  if (!v1)
  {
    sub_22BE33FE4();
    sub_22BE1BB58();
    sub_22C273F54();
  }

  v12 = *(v17 + 8);
  v13 = sub_22BE1AB74();
  v14(v13);
  sub_22BE35D48();
  sub_22BE18478();
}

void Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery.ActionContext.init(from:)()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  v5 = sub_22BE5CE4C(&qword_27D912290, &qword_22C2B6178);
  sub_22BE179D8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE234F4();
  v11 = v2[3];
  v12 = v2[4];
  v13 = sub_22BE1A6BC();
  sub_22BE26950(v13, v14);
  sub_22C11E124();
  sub_22BE33A2C();
  if (v0)
  {
    sub_22BE26B64(v2);
  }

  else
  {
    sub_22BE23070();
    v15 = sub_22C273E64();
    v17 = v16;
    sub_22BE33FE4();
    sub_22BE23070();
    v18 = sub_22C273E64();
    v20 = v19;
    v21 = *(v7 + 8);
    v24 = v18;
    v22 = sub_22BE18240();
    v23(v22);
    *v4 = v15;
    v4[1] = v17;
    v4[2] = v24;
    v4[3] = v20;

    sub_22BE26B64(v2);
  }

  sub_22BE18478();
}

uint64_t sub_22C11B448(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x800000022C2DB570 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C11B4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C11B448(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C11B514(uint64_t a1)
{
  v2 = sub_22C11E178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C11B550(uint64_t a1)
{
  v2 = sub_22C11E178();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery.encode(to:)(uint64_t a1)
{
  v3 = sub_22BE5CE4C(&qword_27D912298, &qword_22C2B6180);
  sub_22BE179D8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1B01C();
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = sub_22BE1B73C();
  sub_22BE26950(v11, v12);
  sub_22C11E178();
  sub_22C274234();
  type metadata accessor for ActionParameterContext(0);
  sub_22BE25B6C();
  sub_22C11BD2C(v13, v14);
  sub_22C273FA4();
  return (*(v5 + 8))(v1, v3);
}

void Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery.init(from:)()
{
  sub_22BE19130();
  v2 = v1;
  v30 = v3;
  v4 = type metadata accessor for ActionParameterContext(0);
  v5 = sub_22BE18000(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v31 = v9 - v8;
  v10 = sub_22BE5CE4C(&qword_27D9122B0, &qword_22C2B6188);
  sub_22BE179D8(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  v14 = sub_22BE1AED0();
  updated = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery(v14);
  v16 = sub_22BE19448(updated);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE179EC();
  v21 = v20 - v19;
  v22 = v2[3];
  v23 = v2[4];
  v24 = sub_22BE260B8();
  sub_22BE26950(v24, v25);
  sub_22C11E178();
  sub_22C274214();
  if (!v0)
  {
    sub_22BE25B6C();
    sub_22C11BD2C(v26, v27);
    sub_22C273EB4();
    v28 = sub_22C11FDE0();
    v29(v28, v10);
    sub_22BE25574();
    sub_22C11BD74(v31, v21);
    sub_22BE3B108();
    sub_22C11BD74(v21, v30);
  }

  sub_22BE26B64(v2);
  sub_22BE18478();
}

uint64_t sub_22C11B904(uint64_t a1)
{
  v2 = sub_22C11E1EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C11B940(uint64_t a1)
{
  v2 = sub_22C11E1EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Session.StatusUpdateEvent.IntermediateQueryResult.Source.OmniSearchQuery.encode(to:)(void *a1)
{
  v3 = sub_22BE5CE4C(&qword_27D9122C0, &qword_22C2B6190);
  sub_22BE179D8(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1BC40();
  v9 = a1[4];
  sub_22BE26950(a1, a1[3]);
  sub_22C11E1EC();
  sub_22C274234();
  return (*(v5 + 8))(v1, v3);
}

uint64_t static Session.StatusUpdateEvent.IntermediateQueryResult.Source.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery(0);
  v6 = sub_22BE19448(updated);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v11 = v10 - v9;
  v12 = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source(0);
  v13 = sub_22BE18000(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  v18 = v17 - v16;
  v19 = sub_22BE5CE4C(&qword_27D9122D0, &qword_22C2B6198);
  sub_22BE19448(v19);
  v21 = *(v20 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v22);
  sub_22BE1B72C();
  v24 = *(v23 + 56);
  sub_22C117370(a1, v2);
  sub_22C117370(a2, v2 + v24);
  sub_22BE260B8();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_22BE18708();
      sub_22C119530();
      v26 = 1;
      return v26 & 1;
    }

LABEL_7:
    sub_22BE33928(v2, &qword_27D9122D0, &qword_22C2B6198);
    v26 = 0;
    return v26 & 1;
  }

  sub_22BE1A7C8();
  sub_22C117370(v2, v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22BE19350();
    sub_22C119530();
    goto LABEL_7;
  }

  sub_22BE3B108();
  sub_22C11BD74(v2 + v24, v11);
  sub_22BE1804C();
  static ActionParameterContext.== infix(_:_:)();
  v26 = v25;
  sub_22C119530();
  sub_22C119530();
  sub_22BE18708();
  sub_22C119530();
  return v26 & 1;
}

unint64_t sub_22C11BCD8()
{
  result = qword_27D9121A0;
  if (!qword_27D9121A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9121A0);
  }

  return result;
}

uint64_t sub_22C11BD2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C11BD74(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BE23C8C();
  v5 = v4(v3);
  sub_22BE18000(v5);
  v7 = *(v6 + 32);
  v8 = sub_22BE19454();
  v9(v8);
  return a2;
}

unint64_t sub_22C11BDCC()
{
  result = qword_27D9121C0;
  if (!qword_27D9121C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9121C0);
  }

  return result;
}

unint64_t sub_22C11BE20()
{
  result = qword_27D9121C8;
  if (!qword_27D9121C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9121C8);
  }

  return result;
}

unint64_t sub_22C11BE74()
{
  result = qword_27D9121F8;
  if (!qword_27D9121F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9121F8);
  }

  return result;
}

unint64_t sub_22C11BEC8()
{
  result = qword_27D912200;
  if (!qword_27D912200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912200);
  }

  return result;
}

unint64_t sub_22C11BF1C()
{
  result = qword_27D912208;
  if (!qword_27D912208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912208);
  }

  return result;
}

unint64_t sub_22C11BF70()
{
  result = qword_27D912210;
  if (!qword_27D912210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912210);
  }

  return result;
}

unint64_t sub_22C11BFC4()
{
  result = qword_27D912220;
  if (!qword_27D912220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912220);
  }

  return result;
}

unint64_t sub_22C11C018()
{
  result = qword_27D912228;
  if (!qword_27D912228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912228);
  }

  return result;
}

uint64_t sub_22C11C06C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72616553696E6D6FLL && a2 == 0xEA00000000006863;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022C2DB590 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C11C144(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x72616553696E6D6FLL;
  }
}

uint64_t sub_22C11C184(uint64_t a1)
{
  v2 = sub_22C11E294();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C11C1C0(uint64_t a1)
{
  v2 = sub_22C11E294();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C11C204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C11C06C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C11C22C(uint64_t a1)
{
  v2 = sub_22C11E240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C11C268(uint64_t a1)
{
  v2 = sub_22C11E240();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C11C2A4(uint64_t a1)
{
  v2 = sub_22C11E2E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C11C2E0(uint64_t a1)
{
  v2 = sub_22C11E2E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.StatusUpdateEvent.IntermediateQueryResult.Source.encode(to:)()
{
  sub_22BE19130();
  v54 = v0;
  v55 = v1;
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D9122D8, &qword_22C2B61A0);
  v5 = sub_22BE179D8(v4);
  v52 = v6;
  v53 = v5;
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1A174();
  v51 = v10;
  updated = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery(0);
  v11 = sub_22BE18000(updated);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE179EC();
  v50 = v15 - v14;
  v16 = sub_22BE5CE4C(&qword_27D9122E0, &qword_22C2B61A8);
  v17 = sub_22BE179D8(v16);
  v47 = v18;
  v48 = v17;
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  sub_22BE1B72C();
  v22 = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source(0);
  v23 = sub_22BE18000(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE179EC();
  v28 = v27 - v26;
  v29 = sub_22BE5CE4C(&qword_27D9122E8, &qword_22C2B61B0);
  sub_22BE179D8(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  v36 = &v46 - v35;
  v37 = v3[4];
  sub_22BE26950(v3, v3[3]);
  sub_22C11E240();
  sub_22C274234();
  sub_22BE1A7C8();
  sub_22C117370(v54, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C11BD74(v28, v50);
    sub_22BE486C4();
    sub_22C11E294();
    sub_22C273EE4();
    sub_22BE37434();
    sub_22C11BD2C(v38, v39);
    sub_22C273FA4();
    v40 = *(v52 + 8);
    v41 = sub_22BE1AB74();
    v42(v41);
    sub_22BE19350();
    sub_22C119530();
  }

  else
  {
    sub_22C11E2E8();
    sub_22C273EE4();
    sub_22C11E33C();
    sub_22C273FA4();
    v43 = *(v47 + 8);
    v44 = sub_22BE260B8();
    v45(v44);
  }

  (*(v31 + 8))(v36, v29);
  sub_22BE18478();
}

void Session.StatusUpdateEvent.IntermediateQueryResult.Source.init(from:)()
{
  sub_22BE19130();
  v89 = v0;
  v3 = v2;
  v84 = v4;
  v82 = sub_22BE5CE4C(&qword_27D912318, &qword_22C2B61B8);
  sub_22BE179D8(v82);
  v85 = v5;
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  v83 = v9;
  v10 = sub_22BE5CE4C(&qword_27D912320, &qword_22C2B61C0);
  v11 = sub_22BE179D8(v10);
  v80 = v12;
  v81 = v11;
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1A174();
  v87 = v16;
  v88 = sub_22BE5CE4C(&qword_27D912328, &qword_22C2B61C8);
  sub_22BE179D8(v88);
  v86 = v17;
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1B01C();
  updated = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source(0);
  v22 = sub_22BE18000(updated);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE183AC();
  v27 = v25 - v26;
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v76 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v76 - v32;
  v34 = v3[4];
  sub_22BE26950(v3, v3[3]);
  sub_22C11E240();
  v35 = v89;
  sub_22C274214();
  if (!v35)
  {
    v76 = v31;
    v77 = v27;
    v37 = v87;
    v36 = v88;
    v78 = v33;
    v79 = updated;
    v89 = v3;
    v38 = sub_22C273ED4();
    sub_22BE7C5C4(v38, 0);
    if (v40 != v39 >> 1)
    {
      sub_22BE32C78();
      if (v43 == v44)
      {
        __break(1u);
        return;
      }

      v90 = *(v42 + v41);
      v45 = sub_22BE7C5C0(v41 + 1);
      v47 = v46;
      v49 = v48;
      swift_unknownObjectRelease();
      v50 = v85;
      if (v47 == v49 >> 1)
      {
        if (v90)
        {
          sub_22BE486C4();
          sub_22C11E294();
          sub_22BE3788C();
          sub_22C273DE4();
          v51 = v78;
          v52 = v36;
          v87 = v45;
          type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery(0);
          sub_22BE37434();
          sub_22C11BD2C(v53, v54);
          v55 = v77;
          sub_22C273EB4();
          swift_unknownObjectRelease();
          v69 = *(v50 + 8);
          v70 = sub_22BE33560();
          v71(v70);
          v72 = sub_22BE20270();
          v73(v72, v52);
          swift_storeEnumTagMultiPayload();
          v74 = v84;
        }

        else
        {
          sub_22C11E2E8();
          v65 = v37;
          sub_22BE3788C();
          sub_22C273DE4();
          v74 = v84;
          v51 = v78;
          v66 = v36;
          sub_22C11E390();
          v67 = v81;
          sub_22BE3788C();
          sub_22C273EB4();
          v68 = v86;
          swift_unknownObjectRelease();
          sub_22BE1C1F4();
          v75(v65, v67);
          (*(v68 + 8))(v1, v66);
          v55 = v76;
          swift_storeEnumTagMultiPayload();
        }

        sub_22C11BD74(v55, v51);
        sub_22C11BD74(v51, v74);
        v64 = v89;
        goto LABEL_10;
      }
    }

    v56 = v36;
    v57 = v79;
    v58 = sub_22C273B34();
    swift_allocError();
    v60 = v59;
    v61 = *(sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0) + 48);
    *v60 = v57;
    sub_22C273DF4();
    sub_22BE1B198();
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x277D84160], v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    v62 = sub_22BE20270();
    v63(v62, v56);
    v3 = v89;
  }

  v64 = v3;
LABEL_10:
  sub_22BE26B64(v64);
  sub_22BE18478();
}

uint64_t sub_22C11CCC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

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

uint64_t sub_22C11CDCC(char a1)
{
  if (!a1)
  {
    return 0x7972657571;
  }

  if (a1 == 1)
  {
    return 0x656372756F73;
  }

  return 0x73746C75736572;
}

uint64_t sub_22C11CE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C11CCC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C11CE80(uint64_t a1)
{
  v2 = sub_22C11E3E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C11CEBC(uint64_t a1)
{
  v2 = sub_22C11E3E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Session.StatusUpdateEvent.IntermediateQueryResult.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = sub_22BE5CE4C(&qword_27D912340, &unk_22C2B61D0);
  sub_22BE179D8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE19E64();
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = sub_22BE1B73C();
  sub_22BE26950(v13, v14);
  sub_22C11E3E4();
  sub_22BE23550();
  sub_22C274234();
  v15 = *v3;
  v16 = v3[1];
  sub_22BE1BB58();
  sub_22C273F54();
  if (!v2)
  {
    updated = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(0);
    v18 = *(updated + 20);
    sub_22BE33FE4();
    type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source(0);
    sub_22BE355CC();
    sub_22C11BD2C(v19, v20);
    sub_22BE1C270();
    sub_22C273FA4();
    v25 = *(v3 + *(updated + 24));
    sub_22BE5CE4C(&qword_27D90B9D8, &qword_22C2904E0);
    sub_22C11E438(&qword_27D912358, &qword_27D907D90);
    sub_22BE1C270();
    sub_22C273FA4();
  }

  v21 = *(v7 + 8);
  v22 = sub_22BE1AB74();
  return v23(v22);
}

void Session.StatusUpdateEvent.IntermediateQueryResult.init(from:)()
{
  sub_22BE19130();
  v41 = v0;
  v2 = v1;
  v37 = v3;
  updated = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source(0);
  v5 = sub_22BE18000(updated);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v10 = v9 - v8;
  v11 = sub_22BE5CE4C(&qword_27D912360, &qword_22C2B61E0);
  v12 = sub_22BE179D8(v11);
  v38 = v13;
  v39 = v12;
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  v18 = v36 - v17;
  v19 = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(0);
  v20 = sub_22BE18000(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE179EC();
  v25 = (v24 - v23);
  v26 = v2[4];
  sub_22BE26950(v2, v2[3]);
  sub_22C11E3E4();
  v40 = v18;
  v27 = v41;
  sub_22C274214();
  if (v27)
  {
    sub_22BE26B64(v2);
  }

  else
  {
    *v25 = sub_22C273E64();
    v25[1] = v28;
    v41 = v25;
    v36[1] = v28;
    sub_22BE33FE4();
    sub_22BE355CC();
    sub_22C11BD2C(v29, v30);
    sub_22C273EB4();
    v31 = *(v19 + 20);
    sub_22BE252A0();
    sub_22C11BD74(v10, v41 + v32);
    sub_22BE5CE4C(&qword_27D90B9D8, &qword_22C2904E0);
    sub_22C11E438(&qword_27D912370, &qword_27D907DA8);
    sub_22C273EB4();
    v33 = sub_22BE2C72C();
    v34(v33);
    v35 = v41;
    *(v41 + *(v19 + 24)) = v42;
    sub_22BE35C1C();
    sub_22C117370(v35, v37);
    sub_22BE26B64(v2);
    sub_22C11FDB0();
    sub_22C119530();
  }

  sub_22BE18478();
}

uint64_t Session.StatusUpdateEvent.SnippetStreamUpdate.toolId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_22BE19454();
}

uint64_t Session.StatusUpdateEvent.SnippetStreamUpdate.toolId.setter()
{
  sub_22BE1A8A8();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Session.StatusUpdateEvent.SnippetStreamUpdate.data.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_22BE19454();
  sub_22BE29D7C(v3, v4);
  return sub_22BE19454();
}

uint64_t Session.StatusUpdateEvent.SnippetStreamUpdate.data.setter()
{
  sub_22BE1A8A8();
  result = sub_22BE29DD4(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_22C11D568(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6F6F74 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

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

uint64_t sub_22C11D62C(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 0x64496C6F6F74;
  }
}

uint64_t sub_22C11D660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C11D568(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C11D688(uint64_t a1)
{
  v2 = sub_22C11E4D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C11D6C4(uint64_t a1)
{
  v2 = sub_22C11E4D4();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.StatusUpdateEvent.SnippetStreamUpdate.encode(to:)()
{
  sub_22BE19130();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D912378, &qword_22C2B61E8);
  sub_22BE179D8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE19E64();
  v10 = *v0;
  v11 = v0[1];
  v18 = v0[3];
  v19 = v0[2];
  v12 = v3[4];
  sub_22BE26950(v3, v3[3]);
  sub_22C11E4D4();
  sub_22BE23550();
  sub_22C274234();
  sub_22C273F54();
  if (!v1)
  {
    sub_22BE486C4();
    sub_22BE29D7C(v13, v14);
    sub_22BE3BE7C();
    sub_22BE1C270();
    sub_22C273FA4();
    sub_22BE29DD4(v19, v18);
  }

  v15 = *(v6 + 8);
  v16 = sub_22BE1AB74();
  v17(v16);
  sub_22BE35D48();
  sub_22BE18478();
}

void Session.StatusUpdateEvent.SnippetStreamUpdate.init(from:)()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  v5 = sub_22BE5CE4C(&qword_27D912388, &qword_22C2B61F0);
  sub_22BE179D8(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE234F4();
  v9 = v2[3];
  v10 = v2[4];
  v11 = sub_22BE1A6BC();
  sub_22BE26950(v11, v12);
  sub_22C11E4D4();
  sub_22BE33A2C();
  if (v0)
  {
    sub_22BE26B64(v2);
  }

  else
  {
    LOBYTE(v18) = 0;
    sub_22BE23070();
    v13 = sub_22C273E64();
    v15 = v14;
    sub_22BE486C4();
    sub_22C11E528();
    sub_22BE23070();
    sub_22C273EB4();
    v16 = sub_22BE17B54();
    v17(v16);
    *v4 = v13;
    v4[1] = v15;
    v4[2] = v18;
    v4[3] = v19;

    sub_22BE29D7C(v18, v19);
    sub_22BE26B64(v2);

    sub_22BE29DD4(v18, v19);
  }

  sub_22BE18478();
}

uint64_t SessionStatusUpdate.Payload.init(ifps:)(uint64_t a1)
{
  v4 = sub_22BE1A5E4();
  updated = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source(v4);
  v6 = sub_22BE19448(updated);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE179EC();
  v11 = v10 - v9;
  v12 = sub_22C26FD54();
  v13 = sub_22BE19448(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE179EC();
  v16 = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(0);
  v17 = sub_22BE18000(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE183AC();
  sub_22BE2017C();
  MEMORY[0x28223BE20](v20);
  v22 = &v57 - v21;
  v23 = type metadata accessor for Session.StatusUpdateEvent.Payload(0);
  v24 = sub_22BE18000(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE179EC();
  v29 = (v28 - v27);
  sub_22BE18F2C();
  sub_22C117370(a1, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22BE22D00();
      sub_22C11BD74(v29, v22);
      sub_22BE35C1C();
      v31 = sub_22BE1AB1C();
      sub_22C117370(v31, v32);
      v33 = *v2;
      v34 = v2[1];
      v35 = *(v16 + 20);
      sub_22BE1A7C8();
      sub_22C117370(v2 + v36, v11);

      sub_22C11DD44(v11);
      v37 = *(v2 + *(v16 + 24));

      sub_22C26FD04();
      sub_22BE17E2C();
      sub_22C119530();
      sub_22C119530();
      sub_22C119530();
      v38 = MEMORY[0x277D1CE40];
    }

    else
    {
      v44 = *v29;
      v45 = v29[1];
      v46 = v29[2];
      v47 = v29[3];

      v48 = sub_22BE29454();
      sub_22BE29D7C(v48, v49);
      v50 = sub_22C11FE0C();
      MEMORY[0x2318A83E0](v50);

      v51 = sub_22BE29454();
      sub_22BE29DD4(v51, v52);
      sub_22BE17E2C();
      sub_22C119530();
      v38 = MEMORY[0x277D1CE30];
    }
  }

  else
  {
    v39 = *v29;
    v40 = v29[1];
    v41 = v29[2];
    v42 = v29[3];
    v43 = v29[4];

    sub_22C11FE0C();
    sub_22C26FCF4();

    sub_22BE17E2C();
    sub_22C119530();
    v38 = MEMORY[0x277D1CE38];
  }

  v53 = *v38;
  v54 = sub_22C26FD64();
  sub_22BE18000(v54);
  return (*(v55 + 104))(v1, v53);
}

uint64_t sub_22C11DD44(uint64_t a1)
{
  v5 = sub_22BE1A5E4();
  updated = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery(v5);
  v7 = sub_22BE19448(updated);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE183AC();
  sub_22BE20324();
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source(0);
  v14 = sub_22BE18000(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE179EC();
  sub_22BE1BC40();
  sub_22BE1A7C8();
  sub_22C117370(a1, v3);
  sub_22BE29454();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22BE3B108();
    sub_22C11BD74(v3, v12);
    sub_22C117370(v12, v2);
    sub_22C11DED4(v2);
    sub_22BE18708();
    sub_22C119530();
    sub_22BE19350();
    sub_22C119530();
    v17 = MEMORY[0x277D1CE20];
  }

  else
  {
    sub_22C26FD14();
    sub_22BE18708();
    sub_22C119530();
    v17 = MEMORY[0x277D1CE28];
  }

  v18 = *v17;
  v19 = sub_22C26FD54();
  sub_22BE18000(v19);
  return (*(v20 + 104))(v1, v18);
}

uint64_t sub_22C11DED4(uint64_t a1)
{
  v2 = type metadata accessor for ActionParameterContext(0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  v7 = v6 - v5;
  v8 = sub_22C26FD34();
  v9 = sub_22BE19448(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  sub_22BE1BC40();
  sub_22BE195D8();
  sub_22C117370(a1, v7);
  v12 = *(v3 + 28);
  v13 = (v7 + *(v3 + 32));
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v7 + v12);
  v17 = *(v7 + v12 + 8);

  MEMORY[0x2318A8420](v14, v15, v16, v17);
  sub_22C119530();
  sub_22C26FD44();
  sub_22BE19350();
  return sub_22C119530();
}

unint64_t sub_22C11E008()
{
  result = qword_27D912250;
  if (!qword_27D912250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912250);
  }

  return result;
}

unint64_t sub_22C11E05C()
{
  result = qword_27D912260;
  if (!qword_27D912260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912260);
  }

  return result;
}

unint64_t sub_22C11E0B0()
{
  result = qword_27D912270;
  if (!qword_27D912270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912270);
  }

  return result;
}

unint64_t sub_22C11E124()
{
  result = qword_27D912288;
  if (!qword_27D912288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912288);
  }

  return result;
}

unint64_t sub_22C11E178()
{
  result = qword_27D9122A0;
  if (!qword_27D9122A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9122A0);
  }

  return result;
}

unint64_t sub_22C11E1EC()
{
  result = qword_27D9122C8;
  if (!qword_27D9122C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9122C8);
  }

  return result;
}

unint64_t sub_22C11E240()
{
  result = qword_27D9122F0;
  if (!qword_27D9122F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9122F0);
  }

  return result;
}

unint64_t sub_22C11E294()
{
  result = qword_27D9122F8;
  if (!qword_27D9122F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9122F8);
  }

  return result;
}

unint64_t sub_22C11E2E8()
{
  result = qword_27D912308;
  if (!qword_27D912308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912308);
  }

  return result;
}

unint64_t sub_22C11E33C()
{
  result = qword_27D912310;
  if (!qword_27D912310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912310);
  }

  return result;
}

unint64_t sub_22C11E390()
{
  result = qword_27D912338;
  if (!qword_27D912338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912338);
  }

  return result;
}

unint64_t sub_22C11E3E4()
{
  result = qword_27D912348;
  if (!qword_27D912348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912348);
  }

  return result;
}

uint64_t sub_22C11E438(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_22BE7431C(&qword_27D90B9D8, &qword_22C2904E0);
    sub_22C11BD2C(a2, MEMORY[0x277D72A78]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22C11E4D4()
{
  result = qword_27D912380;
  if (!qword_27D912380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912380);
  }

  return result;
}

unint64_t sub_22C11E528()
{
  result = qword_27D912390;
  if (!qword_27D912390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912390);
  }

  return result;
}

void sub_22C11E5EC()
{
  sub_22C26E1D4();
  if (v0 <= 0x3F)
  {
    sub_22C11E96C(319, &qword_28107F318, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22BEE1D24(319, &qword_28106DDD8);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Timepoint();
        if (v3 <= 0x3F)
        {
          sub_22BEE1D24(319, &qword_28107C8B0);
          if (v4 <= 0x3F)
          {
            sub_22BEE1D24(319, &qword_28106F230);
            if (v5 <= 0x3F)
            {
              type metadata accessor for Session.StatusUpdateEvent.Payload(319);
              if (v6 <= 0x3F)
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

uint64_t sub_22C11E74C()
{
  result = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C11E7C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C11E814(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_22C11E8A8()
{
  type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source(319);
  if (v0 <= 0x3F)
  {
    sub_22C11E96C(319, &qword_28106DC20, MEMORY[0x277D72A78], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C11E96C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22C11E9D0()
{
  result = type metadata accessor for Session.StatusUpdateEvent.IntermediateQueryResult.Source.AppEntityStringQuery(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C11EA64()
{
  result = type metadata accessor for ActionParameterContext(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C11EAF0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

_BYTE *sub_22C11EB8C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_22BE22BD0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22C11EC74(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_22BE22BD0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22C11ED6C(_BYTE *result, int a2, int a3)
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

uint64_t _s17StatusUpdateEventV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s17StatusUpdateEventV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C11EF80()
{
  result = qword_27D912398;
  if (!qword_27D912398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912398);
  }

  return result;
}

unint64_t sub_22C11EFD8()
{
  result = qword_27D9123A0;
  if (!qword_27D9123A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9123A0);
  }

  return result;
}

unint64_t sub_22C11F030()
{
  result = qword_27D9123A8;
  if (!qword_27D9123A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9123A8);
  }

  return result;
}

unint64_t sub_22C11F088()
{
  result = qword_27D9123B0;
  if (!qword_27D9123B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9123B0);
  }

  return result;
}

unint64_t sub_22C11F0E0()
{
  result = qword_27D9123B8;
  if (!qword_27D9123B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9123B8);
  }

  return result;
}

unint64_t sub_22C11F138()
{
  result = qword_27D9123C0;
  if (!qword_27D9123C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9123C0);
  }

  return result;
}

unint64_t sub_22C11F190()
{
  result = qword_27D9123C8;
  if (!qword_27D9123C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9123C8);
  }

  return result;
}

unint64_t sub_22C11F1E8()
{
  result = qword_27D9123D0;
  if (!qword_27D9123D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9123D0);
  }

  return result;
}

unint64_t sub_22C11F240()
{
  result = qword_27D9123D8;
  if (!qword_27D9123D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9123D8);
  }

  return result;
}

unint64_t sub_22C11F298()
{
  result = qword_27D9123E0;
  if (!qword_27D9123E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9123E0);
  }

  return result;
}

unint64_t sub_22C11F2F0()
{
  result = qword_27D9123E8;
  if (!qword_27D9123E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9123E8);
  }

  return result;
}

unint64_t sub_22C11F348()
{
  result = qword_27D9123F0;
  if (!qword_27D9123F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9123F0);
  }

  return result;
}

unint64_t sub_22C11F3A0()
{
  result = qword_27D9123F8;
  if (!qword_27D9123F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9123F8);
  }

  return result;
}

unint64_t sub_22C11F3F8()
{
  result = qword_27D912400;
  if (!qword_27D912400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912400);
  }

  return result;
}

unint64_t sub_22C11F450()
{
  result = qword_27D912408;
  if (!qword_27D912408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912408);
  }

  return result;
}

unint64_t sub_22C11F4A8()
{
  result = qword_27D912410;
  if (!qword_27D912410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912410);
  }

  return result;
}

unint64_t sub_22C11F500()
{
  result = qword_27D912418;
  if (!qword_27D912418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912418);
  }

  return result;
}

unint64_t sub_22C11F558()
{
  result = qword_27D912420;
  if (!qword_27D912420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912420);
  }

  return result;
}

unint64_t sub_22C11F5B0()
{
  result = qword_27D912428;
  if (!qword_27D912428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912428);
  }

  return result;
}

unint64_t sub_22C11F608()
{
  result = qword_27D912430;
  if (!qword_27D912430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912430);
  }

  return result;
}

unint64_t sub_22C11F660()
{
  result = qword_27D912438;
  if (!qword_27D912438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912438);
  }

  return result;
}

unint64_t sub_22C11F6B8()
{
  result = qword_27D912440;
  if (!qword_27D912440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912440);
  }

  return result;
}

unint64_t sub_22C11F710()
{
  result = qword_27D912448;
  if (!qword_27D912448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912448);
  }

  return result;
}

unint64_t sub_22C11F768()
{
  result = qword_27D912450;
  if (!qword_27D912450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912450);
  }

  return result;
}

unint64_t sub_22C11F7C0()
{
  result = qword_27D912458;
  if (!qword_27D912458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912458);
  }

  return result;
}

unint64_t sub_22C11F818()
{
  result = qword_27D912460;
  if (!qword_27D912460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912460);
  }

  return result;
}

unint64_t sub_22C11F870()
{
  result = qword_27D912468;
  if (!qword_27D912468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912468);
  }

  return result;
}

unint64_t sub_22C11F8C8()
{
  result = qword_27D912470;
  if (!qword_27D912470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912470);
  }

  return result;
}

unint64_t sub_22C11F920()
{
  result = qword_27D912478;
  if (!qword_27D912478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912478);
  }

  return result;
}

unint64_t sub_22C11F978()
{
  result = qword_27D912480;
  if (!qword_27D912480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912480);
  }

  return result;
}

unint64_t sub_22C11F9D0()
{
  result = qword_27D912488;
  if (!qword_27D912488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912488);
  }

  return result;
}

unint64_t sub_22C11FA28()
{
  result = qword_27D912490;
  if (!qword_27D912490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912490);
  }

  return result;
}

unint64_t sub_22C11FA80()
{
  result = qword_27D912498;
  if (!qword_27D912498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D912498);
  }

  return result;
}

unint64_t sub_22C11FAD8()
{
  result = qword_27D9124A0;
  if (!qword_27D9124A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9124A0);
  }

  return result;
}

unint64_t sub_22C11FB30()
{
  result = qword_27D9124A8;
  if (!qword_27D9124A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9124A8);
  }

  return result;
}

unint64_t sub_22C11FB88()
{
  result = qword_27D9124B0;
  if (!qword_27D9124B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9124B0);
  }

  return result;
}

unint64_t sub_22C11FBE0()
{
  result = qword_27D9124B8;
  if (!qword_27D9124B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9124B8);
  }

  return result;
}

unint64_t sub_22C11FC38()
{
  result = qword_27D9124C0;
  if (!qword_27D9124C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9124C0);
  }

  return result;
}

unint64_t sub_22C11FC90()
{
  result = qword_27D9124C8;
  if (!qword_27D9124C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9124C8);
  }

  return result;
}

unint64_t sub_22C11FCE8()
{
  result = qword_27D9124D0;
  if (!qword_27D9124D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9124D0);
  }

  return result;
}

unint64_t sub_22C11FD40()
{
  result = qword_27D9124D8;
  if (!qword_27D9124D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9124D8);
  }

  return result;
}

uint64_t sub_22C11FDEC@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_22C11FE20(char a1)
{
  v2 = 0xEB00000000797265;
  v3 = 0x7551797469746E65;
  switch(a1)
  {
    case 1:
      v2 = 0xEE007972616C7562;
      v3 = 0x61636F5669726973;
      break;
    case 2:
      v2 = 0x800000022C2D29F0;
      v3 = 0xD000000000000014;
      break;
    case 3:
      v2 = 0xEB00000000524345;
      v3 = 0x656D6F646167656DLL;
      break;
    case 4:
      v2 = 0xEF79727473696765;
      v3 = 0x52747865746E6F63;
      break;
    case 5:
      v2 = 0xEB0000000065756CLL;
      v3 = 0x61566E7275746572;
      break;
    case 6:
      v2 = 0xEA00000000007470;
      v3 = 0x6D6F725072657375;
      break;
    case 7:
      v3 = 0x72616573696E6D6FLL;
      v2 = 0xEA00000000006863;
      break;
    default:
      break;
  }

  MEMORY[0x2318AB8D0](v3, v2);
}

uint64_t sub_22C11FF78(char a1)
{
  sub_22C273AA4();

  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x2318AB8D0](v2, v3);

  MEMORY[0x2318AB8D0](41, 0xE100000000000000);
  MEMORY[0x2318AB8D0](0xD00000000000002ELL, 0x800000022C2DBC60);
}

uint64_t sub_22C120054(char a1)
{
  v2 = 0xE100000000000000;
  v3 = 61;
  switch(a1)
  {
    case 1:
      v2 = 0xE200000000000000;
      v3 = 15649;
      break;
    case 2:
      v3 = 62;
      break;
    case 3:
      v2 = 0xE200000000000000;
      v3 = 15678;
      break;
    case 4:
      v3 = 60;
      break;
    case 5:
      v2 = 0xE200000000000000;
      v3 = 15676;
      break;
    case 6:
      v2 = 0xE800000000000000;
      v3 = 0x736E6961746E6F63;
      break;
    case 7:
      v3 = 0x666572705F736168;
      goto LABEL_11;
    case 8:
      v3 = 0x666675735F736168;
LABEL_11:
      v2 = 0xEA00000000007869;
      break;
    case 9:
      v2 = 0xEA00000000006E65;
      v3 = 0x65777465625F7369;
      break;
    default:
      break;
  }

  MEMORY[0x2318AB8D0](v3, v2);
}

uint64_t sub_22C120154(uint64_t a1)
{
  v3 = type metadata accessor for Candidate(0);
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C26E684();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v12)
  {
    v40[1] = v1;
    v55 = MEMORY[0x277D84F90];
    v42 = v9;
    sub_22BE71084();
    v14 = v55;
    result = sub_22C17850C(v42);
    v17 = v7;
    v18 = result;
    v19 = v42;
    v20 = 0;
    v21 = v42 + 64;
    v46 = (v17 + 16);
    v47 = v17;
    v44 = v42 + 64;
    v45 = v17 + 32;
    v41 = v42 + 72;
    v43 = v12;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v18 < 1 << *(v19 + 32))
      {
        v22 = v18 >> 6;
        if ((*(v21 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v19 + 36) != v15)
        {
          goto LABEL_26;
        }

        v51 = v16;
        v54 = v15;
        v52 = v20;
        v23 = v48;
        v24 = v19;
        sub_22BE1A964(*(v19 + 56) + *(v49 + 72) * v18, v48);
        (*v46)(v11, v23 + *(v50 + 28), v6);
        sub_22C171FFC();
        v55 = v14;
        v25 = v6;
        v26 = *(v14 + 16);
        if (v26 >= *(v14 + 24) >> 1)
        {
          sub_22BE71084();
          v14 = v55;
        }

        *(v14 + 16) = v26 + 1;
        v27 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v53 = v14;
        v28 = v14 + v27 + *(v47 + 72) * v26;
        v29 = v11;
        result = (*(v47 + 32))(v28, v11, v25);
        v30 = 1 << *(v24 + 32);
        if (v18 >= v30)
        {
          goto LABEL_27;
        }

        v19 = v24;
        v21 = v44;
        v31 = *(v44 + 8 * v22);
        if ((v31 & (1 << v18)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v19 + 36) != v54)
        {
          goto LABEL_29;
        }

        v6 = v25;
        v32 = v31 & (-2 << (v18 & 0x3F));
        if (v32)
        {
          v30 = __clz(__rbit64(v32)) | v18 & 0x7FFFFFFFFFFFFFC0;
          v33 = v43;
        }

        else
        {
          v34 = v25;
          v35 = v22 << 6;
          v36 = v22 + 1;
          v37 = (v41 + 8 * v22);
          v33 = v43;
          while (v36 < (v30 + 63) >> 6)
          {
            v39 = *v37++;
            v38 = v39;
            v35 += 64;
            ++v36;
            if (v39)
            {
              result = sub_22BE2FC64(v18, v54, v51 & 1);
              v19 = v42;
              v30 = __clz(__rbit64(v38)) + v35;
              goto LABEL_18;
            }
          }

          result = sub_22BE2FC64(v18, v54, v51 & 1);
          v19 = v42;
LABEL_18:
          v6 = v34;
        }

        v20 = v52 + 1;
        if (v52 + 1 == v33)
        {
          return v53;
        }

        v11 = v29;
        v16 = 0;
        v15 = *(v19 + 36);
        v18 = v30;
        v14 = v53;
        if (v30 < 0)
        {
          break;
        }
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
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C1205B0()
{
  sub_22BE18378();
  sub_22BE25DAC();
  sub_22C272F44();
  return sub_22C2741A4();
}

uint64_t sub_22C1205F4()
{
  sub_22BE25DAC();
  v0 = sub_22BEC03B0();
  MEMORY[0x2318AC890](v0);
  return sub_22C2741A4();
}

uint64_t sub_22C120630()
{
  sub_22BE25DAC();
  sub_22C18FBD4();
  return sub_22C2741A4();
}

uint64_t sub_22C120678()
{
  sub_22BE25DAC();
  sub_22C274184();
  return sub_22C2741A4();
}

uint64_t sub_22C1206C4()
{
  sub_22BE25DAC();
  sub_22C274174();
  return sub_22C2741A4();
}

uint64_t sub_22C120884()
{
  sub_22BE25DAC();
  sub_22BFB03BC();
  sub_22C272EE4();
  return sub_22C2741A4();
}

uint64_t sub_22C120ACC()
{
  sub_22BE393A8();
  v1 = sub_22C274154();
  v0(v1);
  sub_22C18F120();
  return sub_22C2741A4();
}

uint64_t sub_22C120B5C()
{
  sub_22BE393A8();
  v1 = sub_22C274154();
  v0(v1);
  sub_22C18F120();
  return sub_22C2741A4();
}

uint64_t sub_22C120C0C()
{
  sub_22C274154();
  sub_22C272F44();
  return sub_22C2741A4();
}

uint64_t sub_22C120C58(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_22BE25DAC();
  a2(v5, a1);
  return sub_22C2741A4();
}

uint64_t sub_22C120CA0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      sub_22BE1B30C();
      break;
    default:
      break;
  }

  sub_22C272F44();
}

uint64_t sub_22C120E2C()
{
  sub_22C272F44();
}

uint64_t sub_22C120E9C(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_22C18FF7C();
  }

  sub_22C272F44();
}

uint64_t sub_22C120F40()
{
  sub_22BE25A74();
  sub_22C272F44();
}

uint64_t sub_22C120FCC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_22C272F44();
}

uint64_t sub_22C121030()
{
  sub_22C272F44();
}

uint64_t sub_22C1210A4(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_22C18FF40();
  }

  sub_22C272F44();
}

uint64_t sub_22C121170()
{
  sub_22C272F44();
}

uint64_t sub_22C121274()
{
  sub_22C272F44();
}

uint64_t sub_22C12134C()
{
  sub_22C272F44();
}

uint64_t sub_22C121510(uint64_t a1, unsigned __int8 a2)
{
  sub_22C274154();
  MEMORY[0x2318AC890](a2);
  return sub_22C2741A4();
}

uint64_t sub_22C121554()
{
  sub_22C18FADC();
  sub_22C18FC14();

  return sub_22C2741A4();
}

uint64_t sub_22C1215D4()
{
  sub_22C18FADC();
  sub_22C274184();
  return sub_22C2741A4();
}

uint64_t sub_22C121610()
{
  sub_22C18FADC();
  sub_22C274174();
  return sub_22C2741A4();
}

uint64_t sub_22C12164C(uint64_t a1, char a2)
{
  sub_22C274154();
  MEMORY[0x2318AC860](a2 & 1);
  return sub_22C2741A4();
}

uint64_t sub_22C121690()
{
  sub_22C274154();
  sub_22C18FBD4();
  return sub_22C2741A4();
}

uint64_t sub_22C1216D0()
{
  sub_22C18FADC();
  if (!v0)
  {
    sub_22C18FF40();
  }

  sub_22C18FC14();

  return sub_22C2741A4();
}

uint64_t sub_22C12175C()
{
  sub_22C18FADC();
  sub_22C18FC14();

  return sub_22C2741A4();
}

uint64_t sub_22C1217EC()
{
  sub_22C18FADC();
  sub_22BE25A74();
  sub_22C18FC14();

  return sub_22C2741A4();
}

uint64_t sub_22C12189C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_22C274154();
  a3(v4);
  sub_22C272F44();

  return sub_22C2741A4();
}

uint64_t sub_22C121908(uint64_t a1, char a2)
{
  sub_22C274154();
  if (!a2)
  {
    sub_22C18FF7C();
  }

  sub_22C18FC14();

  return sub_22C2741A4();
}

uint64_t sub_22C121B40()
{
  sub_22C18FADC();
  sub_22C18FC14();

  return sub_22C2741A4();
}

uint64_t sub_22C121C34()
{
  sub_22C18FF14();
  v1 = sub_22C274154();
  v0(v1);
  sub_22C18F120();
  return sub_22C2741A4();
}

uint64_t sub_22C121C7C()
{
  sub_22C274154();
  sub_22BFB03BC();
  sub_22C272EE4();
  return sub_22C2741A4();
}

uint64_t sub_22C121CE8()
{
  sub_22C18FF14();
  v1 = sub_22C274154();
  v0(v1);
  sub_22C18F120();
  return sub_22C2741A4();
}

uint64_t sub_22C121D34()
{
  sub_22C274154();
  sub_22C272F44();
  return sub_22C2741A4();
}

uint64_t sub_22C121D7C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_22C274154();
  a3(v6, a2);
  return sub_22C2741A4();
}

uint64_t static GlobalToolIdentifier.== infix(_:_:)(uint64_t a1)
{
  v1 = sub_22C18E738(a1);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v8 = *(v2 + 16);
  v7 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = v1 == *v2 && *(v3 + 8) == *(v2 + 8);
  if (v10 || (sub_22C274014() & 1) != 0)
  {
    if (v5)
    {
      if (v7)
      {
        if (v4 == v8 && v5 == v7)
        {
          return v6 ^ v9 ^ 1u;
        }

        sub_22BE19454();
        if (sub_22C18F3BC())
        {
          return v6 ^ v9 ^ 1u;
        }
      }
    }

    else if (!v7)
    {
      return v6 ^ v9 ^ 1u;
    }
  }

  return 0;
}

void __swiftcall GlobalToolIdentifier.init(toolId:deviceIdsId:representsBuiltInTool:)(IntelligenceFlowPlannerSupport::GlobalToolIdentifier *__return_ptr retstr, Swift::String toolId, Swift::String_optional deviceIdsId, Swift::Bool representsBuiltInTool)
{
  retstr->toolId = toolId;
  retstr->deviceIdsId = deviceIdsId;
  retstr->representsBuiltInTool = representsBuiltInTool;
}

void ProgramStatement.init(id:expression:isRoot:isExpanded:executionSupportType:canonicalIndex:)()
{
  sub_22BE22B9C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v21 = v6;
  v22[0] = *v7;
  v8 = type metadata accessor for ProgramStatement(0);
  v9 = v8[6];
  v10 = v8[7];
  v11 = v8[9];
  v12 = v5 + v8[8];
  *(v5 + v11) = 2;
  v13 = sub_22C26E684();
  sub_22BE1834C(v13);
  v15 = *(v14 + 32);
  v16 = sub_22BE1AB1C();
  v17(v16);
  v18 = v8[5];
  sub_22BE3ED9C();
  v19 = sub_22C18FCC8();
  sub_22C171FA8(v19, v20);
  *(v5 + v9) = v3;
  *(v5 + v10) = v21;
  *v12 = v1;
  *(v12 + 4) = BYTE4(v1) & 1;
  *(v5 + v11) = v22[0];
  sub_22BE234D8();
}

uint64_t StatementResultPayload.init(outcome:response:)()
{
  v2 = sub_22BE28634();
  v3 = type metadata accessor for StatementResultPayload(v2);
  sub_22BE341A4(v3);
  v4 = sub_22C26F874();
  sub_22C0E966C(v0 + v1, v5, v6, v4);
  v7 = sub_22C26F894();
  sub_22BE1834C(v7);
  v9 = *(v8 + 32);
  v10 = sub_22BE1804C();
  v11(v10);
  return sub_22BE2343C();
}

uint64_t StatementResult.init(actionEventId:toolId:payload:resultStatementId:originProgramStatementId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_22BE22B9C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_22C0E9824();
  sub_22C26E1D4();
  v24 = sub_22BE238E8();
  v28 = sub_22C0E966C(v24, v25, v26, v27);
  v29 = type metadata accessor for StatementResult(v28);
  sub_22C18F88C(v29);
  sub_22BE2565C();
  sub_22BE2343C();
  if (!v21)
  {
    v23 = 0;
  }

  v30 = *(v15 + 16);
  v31 = *(v15 + 24);
  v32 = *(v15 + 32);
  sub_22C1083D4(*v15, *(v15 + 8));
  *v15 = v23;
  *(v15 + 8) = v21;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  v33 = v29[5];
  sub_22BE41330();
  sub_22C171FA8(v19, v14 + v34);
  v35 = v29[6];
  v36 = sub_22C26E684();
  sub_22BE187D0(v36);
  v38 = v37;
  v51 = v37 + 32;
  v52 = *(v37 + 32);
  v52(v14 + v35, v17, v36);
  v39 = *(v38 + 16);
  v40 = sub_22BE25438(v29[7]);
  v41(v40);
  sub_22BE25438(v29[8]);
  sub_22BE234D8();

  return v45(v42, v43, v44, v45, v46, v47, v48, v49, v51, v52, a11, a12, a13, a14);
}

uint64_t UserTurnStarted.init(statementId:turn:turnId:siriRequestContext:)@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = sub_22C26E684();
  sub_22BE1834C(v8);
  v10 = *(v9 + 32);
  v11 = sub_22BE1B328();
  v12(v11);
  v13 = type metadata accessor for UserTurnStarted(0);
  *(a4 + v13[5]) = v7;
  v14 = (a4 + v13[6]);
  *v14 = a2;
  v14[1] = a3;
  v15 = v13[7];
  return sub_22BE424BC();
}

uint64_t Request.init(content:safetyMode:prescribedPlan:rewriteMetadataEventID:rewriteMetadataInlined:siriRequestContext:suggestedInvocation:datetimeContext:)@<X0>(char a1@<W1>, __int128 *a2@<X4>, uint64_t *a3@<X6>, uint64_t a4@<X8>)
{
  v35 = *a2;
  v34 = *(a2 + 2);
  v37 = *a3;
  v36 = a3[1];
  v6 = type metadata accessor for Request(0);
  v7 = v6[6];
  type metadata accessor for RequestPrescribedPlan(0);
  sub_22BE1A140();
  sub_22BE19DC4(v8, v9, v10, v11);
  v12 = v6[7];
  sub_22C26E1D4();
  sub_22BE1A140();
  sub_22BE19DC4(v13, v14, v15, v16);
  v17 = (a4 + v6[8]);
  *v17 = 0;
  v17[1] = 0;
  v17[2] = 0;
  v18 = v6[9];
  sub_22C271394();
  sub_22BE1A140();
  sub_22BE19DC4(v19, v20, v21, v22);
  v23 = (a4 + v6[10]);
  *v23 = 0;
  v23[1] = 0;
  v24 = v6[11];
  type metadata accessor for DateTimeContext();
  sub_22BE1A140();
  sub_22BE19DC4(v25, v26, v27, v28);
  sub_22BE250EC();
  v29 = sub_22BE35838();
  sub_22C171FA8(v29, v30);
  *(a4 + v6[5]) = a1;
  sub_22BE2343C();
  sub_22BE2343C();
  v31 = v17[2];
  sub_22BE37808(*v17, v17[1]);
  *v17 = v35;
  v17[2] = v34;
  sub_22BE2343C();
  v32 = v23[1];

  *v23 = v37;
  v23[1] = v36;
  return sub_22BE2343C();
}

__n128 ExternalAgentRequest.init(content:rewriteMetadataEventID:rewriteMetadataInlined:)()
{
  sub_22C190048();
  sub_22BE18378();
  v1 = v0;
  v14 = *v2;
  v3 = *(v2 + 2);
  v4 = type metadata accessor for ExternalAgentRequest(0);
  sub_22C18FA90(v4);
  sub_22C26E1D4();
  sub_22BE1A140();
  sub_22BE19DC4(v5, v6, v7, v8);
  v9 = (v1 + *(v4 + 24));
  *v9 = 0;
  v9[1] = 0;
  v9[2] = 0;
  sub_22BE250EC();
  v10 = sub_22BE18040();
  sub_22C171FA8(v10, v11);
  sub_22BE2343C();
  v12 = v9[2];
  sub_22BE37808(*v9, v9[1]);
  *v9 = v14;
  v9[2] = v3;
  sub_22C190034();
  return result;
}

uint64_t RequestContent.TextContent.init(text:statementId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v3 = *(type metadata accessor for RequestContent.TextContent(0) + 20);
  v4 = sub_22C26E684();
  sub_22BE1834C(v4);
  v6 = *(v5 + 32);
  v7 = sub_22BE33684();

  return v8(v7);
}

uint64_t RequestContent.SpeechContent.init(text:speechPackage:preITNSpeechPackage:statementId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE3C358();
  sub_22BEC0548();
  v12 = v11;
  v14 = v13;
  v15 = type metadata accessor for RequestContent.SpeechContent(0);
  v16 = v15[5];
  sub_22C26EBC4();
  sub_22BE1A140();
  sub_22BE19DC4(v17, v18, v19, v20);
  *v14 = v12;
  v14[1] = v10;
  sub_22C18FCEC();
  sub_22BE2343C();
  v21 = v15[7];
  sub_22C18FCEC();
  sub_22BE424BC();
  v22 = v15[6];
  v23 = sub_22C26E684();
  sub_22BE1834C(v23);
  v25 = *(v24 + 32);
  sub_22BE267B8();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

void RequestContent.SystemPromptResolution.init(actionEventId:systemResponseEventId:userAction:statementId:input:)()
{
  sub_22BE19460();
  v3 = v2;
  v32 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_22BE1A5E4();
  v10 = type metadata accessor for RequestContent.SystemPromptResolution.ResolutionInput(v9);
  v11 = sub_22BE18000(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE38390();
  v14 = sub_22C26E1D4();
  sub_22BE1A140();
  v18 = sub_22C18F17C(v15, v16, v17, v14);
  v19 = type metadata accessor for RequestContent.SystemPromptResolution(v18);
  v20 = v19[8];
  swift_storeEnumTagMultiPayload();
  sub_22BE2343C();
  v21 = v19[5];
  sub_22C18FA78();
  (*(v22 + 32))(v0 + v23, v8, v14);
  v24 = v19[6];
  sub_22BE3E31C();
  sub_22C171FA8(v6, v0 + v25);
  v26 = v19[7];
  v27 = sub_22C26E684();
  sub_22BE1834C(v27);
  (*(v28 + 32))(v0 + v26, v32);
  sub_22BE200F8(v3);
  if (v29)
  {
    sub_22BE191CC();
    swift_storeEnumTagMultiPayload();
    sub_22BE200F8(v3);
    if (!v29)
    {
      sub_22C18DC5C(v3, &qword_27D9120D0);
    }
  }

  else
  {
    sub_22C18E36C();
    v30 = sub_22BE18040();
    sub_22C171FA8(v30, v31);
  }

  sub_22C18E354();
  sub_22C172628(v1, v0 + v20);
  sub_22BE1AABC();
}

IntelligenceFlowPlannerSupport::RequestPrescribedPlan::SearchTool __swiftcall RequestPrescribedPlan.SearchTool.init(query:isLowConfidenceKnowledge:shouldOpenResultIfApplicable:)(IntelligenceFlowPlannerSupport::RequestPrescribedPlan::SearchTool query, Swift::Bool isLowConfidenceKnowledge, Swift::Bool shouldOpenResultIfApplicable)
{
  *v3 = query.query;
  *(v3 + 16) = isLowConfidenceKnowledge;
  *(v3 + 17) = shouldOpenResultIfApplicable;
  query.isLowConfidenceKnowledge = isLowConfidenceKnowledge;
  return query;
}

void __swiftcall RequestPrescribedPlan.ConvertTool.init(query:isExplicit:partner:directInvocationClient:)(IntelligenceFlowPlannerSupport::RequestPrescribedPlan::ConvertTool *__return_ptr retstr, Swift::String query, Swift::Bool isExplicit, Swift::String_optional partner, Swift::String_optional directInvocationClient)
{
  retstr->query = query;
  retstr->isExplicit = isExplicit;
  retstr->partner = partner;
  retstr->directInvocationClient = directInvocationClient;
}

uint64_t RequestPrescribedPlan.OpenTool.init(resultStatementId:elementAtIndex:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_22BE3E864();
  v7 = v4 + *(type metadata accessor for RequestPrescribedPlan.OpenTool(v6) + 20);
  v8 = sub_22C26E684();
  sub_22BE1834C(v8);
  v10 = *(v9 + 32);
  v11 = sub_22BE1C2A0();
  result = v12(v11);
  *v7 = v3;
  *(v7 + 8) = a3 & 1;
  return result;
}

IntelligenceFlowPlannerSupport::RequestPrescribedPlan::OpenSuccessValueFromLatestRequestTool __swiftcall RequestPrescribedPlan.OpenSuccessValueFromLatestRequestTool.init(elementAtIndex:)(IntelligenceFlowPlannerSupport::RequestPrescribedPlan::OpenSuccessValueFromLatestRequestTool elementAtIndex)
{
  *v1 = elementAtIndex.elementAtIndex.value;
  *(v1 + 8) = elementAtIndex.elementAtIndex.is_nil;
  return elementAtIndex;
}

void Session.Transcript.init(events:)()
{
  sub_22BE3C358();
  v4 = v3;
  v5 = sub_22C0E9824();
  v6 = type metadata accessor for Session.Transcript(v5);
  v7 = sub_22BE29F40(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17CBC();
  if (*(v4 + 16))
  {
    v10 = (type metadata accessor for Session.Event(0) - 8);
    v11 = *(*v10 + 80);
    sub_22BE19E14();
    v13 = v4 + v12;
    v14 = v10[7];
    v15 = sub_22C26E1D4();
    sub_22BE1834C(v15);
    (*(v16 + 16))(v2, v13 + v14);
    v17 = (v13 + v10[11]);
    v18 = *v17;
    v19 = v17[1];
    v20 = (v2 + v0[5]);
    *v20 = v18;
    v20[1] = v19;
    v21 = (v13 + v10[12]);
    v22 = *v21;
    v23 = v21[1];
    v24 = (v2 + v0[6]);
    *v24 = v22;
    v24[1] = v23;
    v25 = (v13 + v10[13]);
    v26 = *v25;
    v27 = v25[1];
    v28 = (v2 + v0[7]);
    *v28 = v26;
    v28[1] = v27;
    *(v2 + v0[8]) = v4;
    v29 = sub_22BE3C5E4();
    sub_22C171FA8(v29, v30);
    sub_22BE19DC4(v1, 0, 1, v0);

    sub_22BE267B8();
  }

  else
  {

    sub_22BE1A140();
    sub_22BE267B8();

    sub_22BE19DC4(v31, v32, v33, v34);
  }
}

void static ActionParameterContext.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE18378();
  if (_s30IntelligenceFlowPlannerSupport14OpenExpressionV2eeoiySbAC_ACtFZ_0())
  {
    v3 = type metadata accessor for ActionParameterContext(0);
    sub_22C18F27C(v3);
    sub_22C18E1A0(v4);
    v7 = v7 && v5 == v6;
    if (v7 || (sub_22C274014() & 1) != 0)
    {
      v8 = *(v2 + 24);
      v9 = *(v1 + v8);
      v10 = *(v1 + v8 + 8);
      v11 = *(v1 + v8 + 16);
      v12 = *(v1 + v8 + 24);
      v13 = *(v1 + v8 + 32);
      v14 = v0 + v8;
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      v17 = *(v14 + 32);
      v18 = v9 == *v14 && v10 == *(v14 + 8);
      if (v18 || (sub_22C274014() & 1) != 0)
      {
        if (v12)
        {
          if (v15)
          {
            if (v11 != v16 || v12 != v15)
            {
              sub_22BE2590C();
              sub_22C274014();
              sub_22C18FA30();
              if ((v20 & 1) == 0)
              {
                goto LABEL_24;
              }

              goto LABEL_21;
            }

            if (v13 == v17)
            {
LABEL_25:
              sub_22BE43248(*(v2 + 28));
            }
          }
        }

        else if (!v15)
        {
LABEL_21:
          if ((v13 ^ v17))
          {
            goto LABEL_24;
          }

          goto LABEL_25;
        }
      }
    }
  }

LABEL_24:
  sub_22BE1AABC();
}

uint64_t Session.Transcript.events.setter()
{
  v2 = sub_22BE17BC4();
  v3 = *(type metadata accessor for Session.Transcript(v2) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t Session.Transcript.events.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.Transcript(v0) + 32);
  return sub_22BE18504();
}

void Session.Transcript.init(sessionId:clientSessionId:clientApplicationId:clientGroupId:)()
{
  sub_22BE3C358();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_22C26E1D4();
  sub_22BE1834C(v14);
  v16 = *(v15 + 32);
  v17 = sub_22BE196A8();
  v18(v17);
  v19 = type metadata accessor for Session.Transcript(0);
  v20 = (v13 + v19[5]);
  *v20 = v11;
  v20[1] = v9;
  v21 = (v13 + v19[6]);
  *v21 = v7;
  v21[1] = v5;
  v22 = (v13 + v19[7]);
  *v22 = v3;
  v22[1] = v1;
  *(v13 + v19[8]) = MEMORY[0x277D84F90];
  sub_22BE267B8();
}

void Session.Transcript.formingQueryEvent(clientRequestId:_:)()
{
  sub_22BE3E308();
  v0 = type metadata accessor for PreassignedEventID();
  v1 = sub_22BE19448(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE19338();
  _s30IntelligenceFlowPlannerSupport20PlatformPnRTelemetryC5endedyyAA10EndedStateO_0aE7Library0aB11IdentifiersVSg10Foundation4UUIDVtFZfA1__0();
  sub_22BE25C08();
  Session.Transcript.formingQueryEvent(id:clientRequestId:_:)();
}

void Session.Transcript.formingQueryEvent(id:clientRequestId:_:)()
{
  sub_22BE19460();
  sub_22C18F9F4(v6, v7, v8);
  v9 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE3100C();
  v13 = sub_22C26E1D4();
  sub_22BE187D0(v13);
  v16 = v14 + 16;
  v15 = *(v14 + 16);
  sub_22C18F300();
  v15();
  v17 = type metadata accessor for Session.Event(0);
  sub_22C18E864(v17);
  sub_22C18F9C4();
  v15();
  v46 = v0;
  sub_22C18F300();
  v15();
  sub_22BE19DC4(v2, 0, 1, v13);
  v18 = v3[7];
  sub_22BE1C058();
  sub_22BE1A964(v4, v1 + v19);
  v20 = sub_22C18FAA8();
  v22 = (v5 + v21);
  v23 = *v22;
  v24 = v22[1];
  v26 = *(v5 + v25 + 8);
  v44 = *(v5 + v25);
  v27 = (v5 + *(v20 + 28));
  v41 = *v27;
  v28 = (v1 + v3[12]);
  v42 = v27[1];
  v43 = v23;

  v45 = v26;

  sub_22C26E134();
  v29 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v30 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (qword_28106E038 != -1)
  {
    sub_22BE2360C();
  }

  sub_22BE199F4(v13, qword_28108A1E0);
  sub_22BE39FFC();
  v31 = type metadata accessor for Timepoint();
  v32 = v31[7];
  sub_22C18FD4C();
  v15();
  *(v28 + v31[5]) = v29;
  *(v28 + v31[6]) = v30;
  sub_22BE340C8();
  v33 = sub_22C272E84();
  v34 = v3[6];
  sub_22BE3AE2C();
  sub_22BE19DC4(v35, v36, v37, v38);
  sub_22C18FEE8();
  sub_22BE2343C();
  sub_22BE40678();
  *v39 = v43;
  v39[1] = v24;
  v40 = (v1 + v3[10]);
  *v40 = v44;
  v40[1] = v45;
  *v28 = v41;
  v28[1] = v42;
  *(v1 + v16) = xmmword_22C2B7780;
  sub_22C18E7C8();
  sub_22C1900FC();
  v33(v46, v13);
  sub_22BE1AABC();
}

uint64_t Session.Event.init(id:sessionId:queryEventId:payload:clientRequestId:clientSessionId:clientApplicationId:clientGroupId:timepoint:sender:postingSpan:initiatedSpans:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17)
{
  v18 = type metadata accessor for Session.Event(0);
  v19 = v18[6];
  v20 = sub_22C26E1D4();
  sub_22BE1A140();
  sub_22BE19DC4(v21, v22, v23, v20);
  v24 = (a7 + v18[11]);
  v25 = (a7 + v18[13]);
  v26 = a7 + v18[14];
  sub_22BE1BC24(v20);
  v28 = *(v27 + 32);
  v29 = sub_22BE19454();
  v28(v29);
  (v28)(a7 + v18[5], a1, v20);
  sub_22BE2343C();
  v30 = v18[7];
  sub_22BE1A054();
  sub_22C171FA8(a2, a7 + v31);
  v32 = (a7 + v18[8]);
  *v32 = a3;
  v32[1] = a4;
  v33 = (a7 + v18[9]);
  *v33 = a5;
  v33[1] = a6;
  v34 = (a7 + v18[10]);
  *v34 = a8;
  v34[1] = a9;
  *v24 = a10;
  v24[1] = a11;
  v35 = v18[12];
  sub_22BE38554();
  result = sub_22C171FA8(a12, v36);
  *v25 = a13;
  v25[1] = a14;
  *v26 = a15;
  *(v26 + 8) = a16 & 1;
  *(a7 + v18[15]) = a17;
  return result;
}

void Session.Transcript.formingQuerylessEvent(clientRequestId:_:)()
{
  sub_22BE19460();
  v3 = v1;
  v5 = v4;
  v61 = v6;
  v62 = v7;
  v9 = v8;
  v10 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1AEF0();
  v14 = type metadata accessor for PreassignedEventID();
  v15 = sub_22BE19448(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE197B8();
  _s30IntelligenceFlowPlannerSupport20PlatformPnRTelemetryC5endedyyAA10EndedStateO_0aE7Library0aB11IdentifiersVSg10Foundation4UUIDVtFZfA1__0();
  v18 = sub_22C26E1D4();
  sub_22BE187D0(v18);
  v59 = v19;
  v20 = *(v19 + 16);
  v60 = v0;
  sub_22C18F300();
  v20();
  v21 = type metadata accessor for Session.Event(0);
  sub_22C18E864(v21);
  v58 = v20;
  (v20)(v9 + v22, v3, v18);
  sub_22BE3AE2C();
  sub_22BE19DC4(v23, v24, v25, v26);
  v27 = v2[7];
  sub_22BE1C058();
  sub_22BE1A964(v5, v9 + v28);
  v29 = sub_22C18FAA8();
  v31 = (v3 + v30);
  v32 = *v31;
  v33 = v31[1];
  v35 = *(v3 + v34 + 8);
  v56 = *(v3 + v34);
  v36 = (v3 + *(v29 + 28));
  v37 = v36[1];
  v55 = *v36;
  v38 = v9 + v2[12];

  v57 = v35;

  sub_22C26E134();
  v39 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v40 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (qword_28106E038 != -1)
  {
    sub_22BE2360C();
  }

  sub_22BE199F4(v18, qword_28108A1E0);
  sub_22BE39FFC();
  v41 = type metadata accessor for Timepoint();
  v42 = v41[7];
  sub_22C18FD4C();
  v58();
  *(v38 + v41[5]) = v39;
  *(v38 + v41[6]) = v40;
  sub_22BE340C8();
  v43 = sub_22C272E84();
  v44 = v2[6];
  sub_22BE3AE2C();
  sub_22BE19DC4(v45, v46, v47, v48);
  v49 = (v9 + v2[11]);
  v50 = v2[13];
  v51 = v9 + v2[14];
  sub_22BE2343C();
  v52 = (v9 + v2[8]);
  *v52 = v61;
  v52[1] = v62;
  sub_22C18FE38((v9 + v2[9]));
  v53 = (v9 + v2[10]);
  *v53 = v56;
  v53[1] = v57;
  *v49 = v55;
  v49[1] = v37;
  *(v9 + v50) = xmmword_22C2B7780;
  sub_22C18E7C8();
  *(v9 + v2[15]) = v43;
  v54 = *(v59 + 8);

  v54(v60, v18);
  sub_22BE1AABC();
}

void Session.Transcript.formingOriginatingEventForTesting(_:clientRequestId:sender:)()
{
  sub_22BE19460();
  v61 = v2;
  v62 = v3;
  v59 = v4;
  v60 = v5;
  v7 = v6;
  v9 = v8;
  v10 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE3100C();
  v14 = type metadata accessor for PreassignedEventID();
  v15 = sub_22BE19448(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE197B8();
  _s30IntelligenceFlowPlannerSupport20PlatformPnRTelemetryC5endedyyAA10EndedStateO_0aE7Library0aB11IdentifiersVSg10Foundation4UUIDVtFZfA1__0();
  v18 = sub_22C26E1D4();
  sub_22BE187D0(v18);
  v57 = v19;
  v20 = *(v19 + 16);
  v58 = v0;
  v20(v9, v0, v18);
  v21 = type metadata accessor for Session.Event(0);
  v56 = v20;
  v20(v9 + v21[5], v1, v18);
  sub_22BE1A140();
  sub_22BE19DC4(v22, v23, v24, v18);
  v25 = v21[7];
  sub_22BE1C058();
  sub_22BE1A964(v7, v9 + v26);
  v27 = sub_22C18FAA8();
  v29 = (v1 + v28);
  v30 = *v29;
  v31 = v29[1];
  v33 = *(v1 + v32 + 8);
  v55 = *(v1 + v32);
  v34 = (v1 + *(v27 + 28));
  v35 = v34[1];
  v52 = *v34;
  v53 = v30;
  v36 = v9 + v21[12];

  v54 = v31;

  sub_22C26E134();
  v37 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v38 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (qword_28106E038 != -1)
  {
    sub_22BE2360C();
  }

  v39 = sub_22BE199F4(v18, qword_28108A1E0);
  v40 = type metadata accessor for Timepoint();
  v56(v36 + v40[7], v39, v18);
  *(v36 + v40[5]) = v37;
  *(v36 + v40[6]) = v38;
  sub_22BE340C8();
  v41 = sub_22C272E84();
  v42 = v21[6];
  sub_22BE1A140();
  sub_22BE19DC4(v43, v44, v45, v18);
  v46 = (v9 + v21[11]);
  v47 = (v9 + v21[13]);
  v48 = v9 + v21[14];
  sub_22BE2343C();
  v49 = (v9 + v21[8]);
  *v49 = v59;
  v49[1] = v61;
  v50 = (v9 + v21[9]);
  *v50 = v53;
  v50[1] = v54;
  sub_22C18FE38((v9 + v21[10]));
  *v46 = v52;
  v46[1] = v35;
  *v47 = v60;
  v47[1] = v62;
  sub_22C18E7C8();
  *(v9 + v21[15]) = v41;
  v51 = *(v57 + 8);

  v51(v58, v18);
  sub_22BE1AABC();
}

void Session.Transcript.formingOriginatingEventForTesting(id:_:clientRequestId:sender:)()
{
  sub_22BE19460();
  v2 = v1;
  v56 = v3;
  v54 = v5;
  v55 = v4;
  v53 = v6;
  sub_22BE18378();
  v8 = v7;
  v9 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1AEF0();
  v13 = sub_22C26E1D4();
  sub_22BE187D0(v13);
  v52 = v14;
  v15 = *(v14 + 16);
  (v15)(v8, v1, v13);
  v16 = type metadata accessor for Session.Event(0);
  (v15)(v8 + v16[5], v1, v13);
  sub_22BE1A140();
  sub_22BE19DC4(v17, v18, v19, v13);
  v20 = v16[7];
  sub_22BE1C058();
  sub_22BE1A964(v0, v8 + v21);
  v22 = sub_22C18FAA8();
  v24 = (v1 + v23);
  v25 = *v24;
  v26 = v24[1];
  v28 = *(v1 + v27 + 8);
  v51 = *(v2 + v27);
  v29 = (v2 + *(v22 + 28));
  v30 = v29[1];
  v48 = *v29;
  v49 = v25;
  v31 = v8 + v16[12];

  v50 = v26;

  sub_22C18FE2C();

  sub_22C26E134();
  v32 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v33 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (qword_28106E038 != -1)
  {
    sub_22BE2360C();
  }

  sub_22BE199F4(v13, qword_28108A1E0);
  sub_22BE39FFC();
  v34 = type metadata accessor for Timepoint();
  v35 = v34[7];
  sub_22C18FD58();
  v15();
  *(v31 + v34[5]) = v32;
  *(v31 + v34[6]) = v33;
  sub_22BE340C8();
  v36 = sub_22C272E84();
  v37 = v16[6];
  sub_22BE1A140();
  sub_22BE19DC4(v38, v39, v40, v13);
  v41 = (v8 + v16[11]);
  v42 = (v8 + v16[13]);
  v43 = v8 + v16[14];
  sub_22BE2343C();
  v44 = (v8 + v16[8]);
  *v44 = v53;
  v44[1] = v55;
  v45 = (v8 + v16[9]);
  *v45 = v49;
  v45[1] = v50;
  sub_22C18FE38((v8 + v16[10]));
  *v41 = v48;
  v41[1] = v30;
  *v42 = v54;
  v42[1] = v56;
  sub_22C18E7C8();
  *(v8 + v16[15]) = v36;
  v46 = *(v52 + 8);

  v47 = sub_22C18F9B8();
  v46(v47);
  sub_22BE1AABC();
}

uint64_t sub_22C1239EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6553746E65696C63 && a2 == 0xEF64496E6F697373;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x800000022C2DAEA0 == a2;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7247746E65696C63 && a2 == 0xED0000644970756FLL;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_22C274014();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_22C123BA8(char a1)
{
  result = 0x496E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0x6553746E65696C63;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x7247746E65696C63;
      break;
    case 4:
      result = 0x73746E657665;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C123C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C1239EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C123C90(uint64_t a1)
{
  v2 = sub_22C17246C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C123CCC(uint64_t a1)
{
  v2 = sub_22C17246C();

  return MEMORY[0x2821FE720](a1, v2);
}

void Session.Transcript.encode(to:)()
{
  sub_22BE2BB34();
  sub_22BE22950();
  v3 = sub_22BE5CE4C(&qword_27D9124E0, &qword_22C2B77E8);
  sub_22BE1BF18(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  sub_22BE23094();
  sub_22C17246C();
  sub_22BE25524();
  sub_22C18E810();
  sub_22C26E1D4();
  sub_22BE18B28();
  sub_22BE20458(v7);
  sub_22BEE92A4();
  sub_22BE196CC();
  sub_22C273FA4();
  if (!v0)
  {
    v8 = type metadata accessor for Session.Transcript(0);
    sub_22C18E864(v8);
    sub_22C18F320(v9);
    sub_22BE42570();
    sub_22C273F54();
    sub_22C18F320(v2[6]);
    sub_22BE200EC();
    sub_22BE36628();
    sub_22C273F54();
    sub_22C18F320(v2[7]);
    sub_22C18E900();
    sub_22BE36628();
    sub_22C273EF4();
    v12 = *(v1 + v2[8]);
    sub_22BE5CE4C(&qword_27D9124F0, &qword_22C2B77F0);
    sub_22C1724C0();
    sub_22BE196CC();
    sub_22C273FA4();
  }

  v10 = sub_22BE37A10();
  v11(v10);
  sub_22BEE92C0();
  sub_22BEE93D4();
}

void Session.Transcript.init(from:)()
{
  sub_22BE19130();
  v3 = v2;
  v31 = v4;
  v5 = sub_22C26E1D4();
  v6 = sub_22BE179D8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  sub_22BE252B8(v9);
  v32 = sub_22BE5CE4C(&qword_27D912500, &qword_22C2B77F8);
  sub_22BE179D8(v32);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A8B4();
  v13 = type metadata accessor for Session.Transcript(0);
  v14 = sub_22BE18000(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE197B8();
  v18 = v3[3];
  v17 = v3[4];
  sub_22BE31088(v3);
  sub_22C17246C();
  sub_22BEE939C();
  sub_22C274214();
  if (v1)
  {
    sub_22BE26B64(v3);
  }

  else
  {
    sub_22BE18B28();
    sub_22BE20458(v19);
    sub_22BEE92A4();
    sub_22C273EB4();
    sub_22BE27C14();
    v20 = sub_22BE1A6BC();
    v21(v20);
    sub_22BE2315C();
    v22 = sub_22C273E64();
    sub_22BE37C38(v22, v23, v13[5]);
    sub_22BE200EC();
    v24 = sub_22C273E64();
    sub_22BE37C38(v24, v25, v13[6]);
    sub_22C18E900();
    v26 = sub_22C273E04();
    sub_22BE37C38(v26, v27, v13[7]);
    sub_22BE5CE4C(&qword_27D9124F0, &qword_22C2B77F0);
    sub_22C18FDB8();
    sub_22C172574();
    sub_22C18EBD4();
    sub_22C273EB4();
    v28 = sub_22C18FCE0();
    v29(v28);
    *(v0 + v13[8]) = v33;
    v30 = sub_22BE19EBC();
    sub_22BE1A964(v30, v31);
    sub_22BE26B64(v3);
    sub_22BE26148();
    sub_22C171FFC();
  }

  sub_22BE46D98();
  sub_22BE18478();
}

uint64_t Session.Event.sessionId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.Event(v0) + 20);
  return sub_22BE18504();
}

uint64_t Session.Event.queryEventId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.Event(v0) + 24);
  return sub_22BE18504();
}

uint64_t Session.Event.payload.setter()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.Event(v0) + 28);
  v2 = sub_22C18F880();
  return sub_22C172628(v2, v3);
}

uint64_t Session.Event.payload.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.Event(v0) + 28);
  return sub_22BE18504();
}

uint64_t Session.Event.clientRequestId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.Event(v0) + 32);
  return sub_22BE18504();
}

uint64_t Session.Event.clientSessionId.setter()
{
  v3 = sub_22BE23708();
  v4 = type metadata accessor for Session.Event(v3);
  sub_22C18EA48(*(v4 + 36));

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Session.Event.clientSessionId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.Event(v0) + 36);
  return sub_22BE18504();
}

uint64_t Session.Event.clientApplicationId.setter()
{
  v3 = sub_22BE23708();
  v4 = type metadata accessor for Session.Event(v3);
  sub_22C18EA48(*(v4 + 40));

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Session.Event.clientApplicationId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.Event(v0) + 40);
  return sub_22BE18504();
}

uint64_t Session.Event.clientGroupId.setter()
{
  v3 = sub_22BE23708();
  v4 = type metadata accessor for Session.Event(v3);
  sub_22C18EA48(*(v4 + 44));

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Session.Event.clientGroupId.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.Event(v0) + 44);
  return sub_22BE18504();
}

uint64_t Session.Event.timepoint.setter()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.Event(v0) + 48);
  v2 = sub_22C18F880();
  return sub_22C172628(v2, v3);
}

uint64_t Session.Event.timepoint.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.Event(v0) + 48);
  return sub_22BE18504();
}

uint64_t Session.Event.sender.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.Event(v0) + 52);
  return sub_22BE18504();
}

uint64_t Session.Event.postingSpan.modify()
{
  v0 = sub_22BE17BC4();
  v1 = *(type metadata accessor for Session.Event(v0) + 56);
  return sub_22BE18504();
}

uint64_t Session.Event.initiatedSpans.getter()
{
  v1 = *(v0 + *(type metadata accessor for Session.Event(0) + 60));
}

uint64_t Session.Event.initiatedSpans.setter()
{
  v2 = sub_22BE17BC4();
  v3 = *(type metadata accessor for Session.Event(v2) + 60);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t Session.Event.init(sessionId:queryEventId:payload:clientRequestId:clientSessionId:clientApplicationId:clientGroupId:timepoint:sender:postingSpan:initiatedSpans:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17)
{
  _s30IntelligenceFlowPlannerSupport20PlatformPnRTelemetryC5endedyyAA10EndedStateO_0aE7Library0aB11IdentifiersVSg10Foundation4UUIDVtFZfA1__0();
  v20 = type metadata accessor for Session.Event(0);
  v21 = v20[6];
  v22 = sub_22C26E1D4();
  sub_22BE1A140();
  sub_22BE19DC4(v23, v24, v25, v22);
  v26 = (a8 + v20[11]);
  v27 = (a8 + v20[13]);
  v28 = a8 + v20[14];
  v29 = v20[5];
  sub_22C18FA78();
  (*(v30 + 32))(a8 + v31, a1, v22);
  sub_22BE2343C();
  v32 = v20[7];
  sub_22BE1A054();
  sub_22C171FA8(a2, a8 + v33);
  v34 = (a8 + v20[8]);
  *v34 = a3;
  v34[1] = a4;
  v35 = (a8 + v20[9]);
  *v35 = a5;
  v35[1] = a6;
  v36 = (a8 + v20[10]);
  *v36 = a7;
  v36[1] = a9;
  *v26 = a10;
  v26[1] = a11;
  v37 = v20[12];
  sub_22BE38554();
  result = sub_22C171FA8(v38, v39);
  *v27 = a13;
  v27[1] = a14;
  *v28 = a15;
  *(v28 + 8) = a16 & 1;
  *(a8 + v20[15]) = a17;
  return result;
}

BOOL sub_22C124910()
{
  v0 = sub_22C273DC4();

  return v0 != 0;
}

BOOL sub_22C124964@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22C124910();
  *a2 = result;
  return result;
}

BOOL sub_22C1249BC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_22C124910();
  *a1 = result;
  return result;
}

uint64_t sub_22C1249F4(uint64_t a1)
{
  v2 = sub_22C17387C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C124A30(uint64_t a1)
{
  v2 = sub_22C17387C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RequestContent.SystemPromptResolution.description.getter()
{
  v2 = v0;
  v3 = sub_22BE324FC();
  v5 = sub_22BE5CE4C(v3, v4);
  sub_22BE19448(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE19E64();
  sub_22C18E4D0();
  sub_22C273AA4();
  sub_22C18F8D4();
  MEMORY[0x2318AB8D0](0xD000000000000026, 0x800000022C2DB8E0);
  sub_22BE260B8();
  sub_22BE22814();
  v9 = sub_22C26E1D4();
  v10 = sub_22BE1AB5C(v1, 1, v9);
  if (v11)
  {
    sub_22C18DC5C(v1, &qword_27D9082F0);
  }

  else
  {
    MEMORY[0x2318A6890](v10);
    sub_22BE1BC24(v9);
    v13 = *(v12 + 8);
    v14 = sub_22BE1C2A0();
    v15(v14);
  }

  v16 = sub_22BE1AB1C();
  MEMORY[0x2318AB8D0](v16);

  sub_22C18F4F8();
  MEMORY[0x2318AB8D0](0xD000000000000019);
  v17 = type metadata accessor for RequestContent.SystemPromptResolution(0);
  v18 = v17[5];
  sub_22BE18B28();
  sub_22BE20458(v19);
  v20 = sub_22C18F5E0();
  MEMORY[0x2318AB8D0](v20);

  MEMORY[0x2318AB8D0](0x634172657375202CLL, 0xEE00203A6E6F6974);
  v21 = v2 + v17[6];
  v22 = RequestContent.SystemPromptResolution.UserAction.description.getter();
  MEMORY[0x2318AB8D0](v22);

  v23 = sub_22BE33AB0();
  MEMORY[0x2318AB8D0](v23);
  v24 = v17[7];
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v25);
  v26 = sub_22C18F5E0();
  MEMORY[0x2318AB8D0](v26);

  v27 = sub_22C18E830();
  MEMORY[0x2318AB8D0](v27);
  return v29;
}

uint64_t Action.description.getter()
{
  v1 = v0;
  sub_22C273AA4();
  MEMORY[0x2318AB8D0](0xD000000000000014, 0x800000022C2DB930);
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v2);
  v3 = sub_22C18FB68();
  MEMORY[0x2318AB8D0](v3);

  MEMORY[0x2318AB8D0](0x203A6C6F6F74202CLL, 0xE800000000000000);
  v4 = type metadata accessor for Action(0);
  v5 = (v0 + v4[9]);
  v16 = *v5;
  v17 = v5[1];
  v18 = *(v5 + 1);
  v19 = *(v5 + 32);
  sub_22C273C24();
  MEMORY[0x2318AB8D0](0x656C646E7562202CLL, 0xEC000000203A6449);
  if (sub_22C18F2B8(v4[5]))
  {
    v7 = *v6;
  }

  v8 = sub_22BE1B328();
  MEMORY[0x2318AB8D0](v8);

  sub_22C18F4F8();
  MEMORY[0x2318AB8D0](0xD000000000000013);
  v9 = *(v0 + v4[7]);
  type metadata accessor for Action.ParameterValue(0);
  v10 = sub_22C272E64();
  MEMORY[0x2318AB8D0](v10);

  MEMORY[0x2318AB8D0](0x666E6F437369202CLL, 0xEF203A64656D7269);
  if (*(v1 + v4[6]))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(v1 + v4[6]))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x2318AB8D0](v11, v12);

  sub_22BE2940C();
  MEMORY[0x2318AB8D0]();
  sub_22C18F7F4(v4[8]);

  v13 = sub_22BE33FD8();
  MEMORY[0x2318AB8D0](v13);

  v14 = sub_22C18E830();
  MEMORY[0x2318AB8D0](v14);
  return 0;
}

void ClientAction.description.getter()
{
  sub_22BE22B9C();
  v1 = v0;
  sub_22C273AA4();
  sub_22C18F8B0();
  sub_22C18F06C();
  MEMORY[0x2318AB8D0]();
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v2);
  v3 = sub_22C18FB68();
  v5 = v4;
  MEMORY[0x2318AB8D0](v3);

  sub_22C18FAC4();
  v6 = type metadata accessor for ClientAction(0);
  sub_22C18F27C(v6);
  v8 = sub_22C18FA3C(v7);
  MEMORY[0x2318AB8D0](v8);
  MEMORY[0x2318AB8D0](0x656D61726170202CLL, 0xEE00203A73726574);
  v9 = *(v0 + v5[6]);
  sub_22C272874();
  sub_22BE336E8();
  v10 = sub_22C272E64();
  MEMORY[0x2318AB8D0](v10);

  sub_22C18F06C();
  MEMORY[0x2318AB8D0](0xD000000000000011);
  sub_22C18F7F4(v5[7]);

  v11 = sub_22BE1B18C();
  MEMORY[0x2318AB8D0](v11);

  sub_22BE2940C();
  MEMORY[0x2318AB8D0]();
  sub_22C18F7F4(v5[8]);

  v12 = sub_22BE1B18C();
  MEMORY[0x2318AB8D0](v12);

  sub_22C18F06C();
  MEMORY[0x2318AB8D0]();
  v13 = *(v1 + v5[9]);
  sub_22BE5CE4C(&qword_27D912510, &unk_22C2B7800);
  sub_22BE3CC34();
  sub_22C272E64();
  sub_22C18FC2C();

  sub_22BE234D8();
}

uint64_t ActionCancellation.description.getter()
{
  v0 = sub_22BE191CC();
  v2 = sub_22BE5CE4C(v0, v1);
  sub_22BE18000(v2);
  v4 = *(v3 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1B01C();
  sub_22C18E4D0();
  sub_22C273AA4();
  sub_22C18F8D4();
  MEMORY[0x2318AB8D0](0xD000000000000020, 0x800000022C2DB9D0);
  sub_22BE37490();
  sub_22BE22814();
  sub_22BE1AB1C();
  v6 = sub_22C273074();
  MEMORY[0x2318AB8D0](v6);

  sub_22C18F4F8();
  MEMORY[0x2318AB8D0](0xD00000000000001DLL);
  v7 = type metadata accessor for ActionCancellation(0);
  sub_22C18F32C(v7);
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v8);
  v9 = sub_22C18F5E0();
  MEMORY[0x2318AB8D0](v9);

  v10 = sub_22C18E830();
  MEMORY[0x2318AB8D0](v10);
  return v12;
}

uint64_t ToolResolution.description.getter()
{
  sub_22BE382D8();
  sub_22C273AA4();
  sub_22C18F8B0();
  sub_22C18F06C();
  MEMORY[0x2318AB8D0](0xD000000000000015);
  v1 = sub_22C2721D4();
  MEMORY[0x2318AB8D0](v1);

  v2 = sub_22BE33AB0();
  MEMORY[0x2318AB8D0](v2);
  v3 = type metadata accessor for ToolResolution(0);
  sub_22C18F32C(v3);
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v4);
  sub_22BE2590C();
  v5 = sub_22C273FD4();
  MEMORY[0x2318AB8D0](v5);

  sub_22C18F06C();
  MEMORY[0x2318AB8D0]();
  v6 = v0 + *(v3 + 24);
  sub_22BE2590C();
  sub_22C273FD4();
  sub_22C18FC2C();

  v7 = sub_22C18E830();
  MEMORY[0x2318AB8D0](v7);
  return v9;
}

void UndoRedoRequest.description.getter()
{
  sub_22BE19460();
  v3 = sub_22C26E684();
  v4 = sub_22BE179D8(v3);
  v38 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17CBC();
  v8 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1B01C();
  v12 = sub_22BE3E79C();
  v14 = sub_22BE5CE4C(v12, v13);
  sub_22BE19448(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1A8B4();
  sub_22BE1BE3C();
  sub_22C273AA4();
  MEMORY[0x2318AB8D0](0xD000000000000022, 0x800000022C2DBA60);
  MEMORY[0x2318AB8D0](*v0, v0[1]);
  MEMORY[0x2318AB8D0](0x3A6E656B6F74202CLL, 0xE900000000000020);
  v18 = type metadata accessor for UndoRedoRequest(0);
  sub_22C18E864(v18);
  sub_22C18EA6C();
  sub_22BE22814();
  v19 = sub_22C26E1D4();
  v20 = sub_22BE406A0();
  sub_22BE1AB5C(v20, v21, v19);
  if (v22)
  {
    sub_22C18DC5C(v2, &qword_27D9082F0);
  }

  else
  {
    sub_22C26E184();
    sub_22C18FA9C();
    sub_22BE1BC24(v19);
    (*(v23 + 8))(v2, v19);
  }

  v24 = sub_22BE29264();
  MEMORY[0x2318AB8D0](v24);

  sub_22C18F504();
  v39 = *(v0 + v1[6]);
  sub_22C273C24();
  v25 = sub_22BE33AB0();
  MEMORY[0x2318AB8D0](v25);
  v26 = v1[7];
  sub_22BE18F44();
  sub_22BE20458(v27);
  sub_22C18EA54();
  v28 = sub_22C273FD4();
  MEMORY[0x2318AB8D0](v28);

  sub_22C18F4F8();
  MEMORY[0x2318AB8D0](0xD000000000000016);
  v29 = v1[8];
  sub_22BE22814();
  v30 = sub_22BE23E90();
  sub_22BE1AB5C(v30, v31, v3);
  if (!v22)
  {
    sub_22BE47DF4();
    sub_22C18F910();
    v32();
    sub_22C18EA54();
    sub_22C273FD4();
    v33 = *(v38 + 8);
    v34 = sub_22BE1C2A0();
    v35(v34);
  }

  v36 = sub_22BE3CC34();
  MEMORY[0x2318AB8D0](v36);

  v37 = sub_22C18E830();
  MEMORY[0x2318AB8D0](v37);
  sub_22C18FCD4();
  sub_22BE1AABC();
}

void ClientUndoRedoRequest.description.getter()
{
  sub_22BE19460();
  v2 = sub_22C26E684();
  v3 = sub_22BE1BF18(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE38390();
  v8 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE25CD0();
  sub_22BE1BE3C();
  sub_22C273AA4();
  MEMORY[0x2318AB8D0](0xD00000000000001DLL, 0x800000022C2DBAB0);
  v12 = sub_22C26E184();
  v14 = v13;
  MEMORY[0x2318AB8D0](v12);

  sub_22C18F504();
  v15 = type metadata accessor for ClientUndoRedoRequest(0);
  sub_22C18FCBC(v15);
  v32 = *(v1 + v16);
  sub_22C273C24();
  v17 = sub_22BE33AB0();
  MEMORY[0x2318AB8D0](v17);
  v18 = *(v14 + 24);
  sub_22BE18F44();
  sub_22BE20458(v19);
  sub_22BE29264();
  v20 = sub_22C273FD4();
  MEMORY[0x2318AB8D0](v20);

  sub_22C18F4F8();
  MEMORY[0x2318AB8D0](0xD000000000000016);
  v21 = *(v14 + 28);
  sub_22BE22814();
  v22 = sub_22BE26188();
  sub_22BE1AB5C(v22, v23, v0);
  if (!v24)
  {
    sub_22BE27C14();
    v25 = sub_22BE324FC();
    v26(v25);
    sub_22BE29264();
    sub_22C273FD4();
    v27 = *(v5 + 8);
    v28 = sub_22BE1B5EC();
    v29(v28);
  }

  v30 = sub_22BE1B328();
  MEMORY[0x2318AB8D0](v30);

  v31 = sub_22C18E830();
  MEMORY[0x2318AB8D0](v31);
  sub_22C18FCD4();
  sub_22BE1AABC();
}

void TypeConversionRequest.description.getter()
{
  sub_22C190048();
  sub_22BE382D8();
  sub_22C273AA4();
  sub_22C18F8B0();
  sub_22C18F06C();
  MEMORY[0x2318AB8D0](0xD00000000000001DLL);
  sub_22C272874();
  sub_22C273C24();
  sub_22C18FAC4();
  v0 = type metadata accessor for TypeConversionRequest(0);
  sub_22C18F32C(v0);
  sub_22C2728A4();
  sub_22C273C24();
  v1 = sub_22BE33AB0();
  MEMORY[0x2318AB8D0](v1);
  v2 = *(v0 + 24);
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v3);
  sub_22C18F5E0();
  sub_22C18FC2C();

  v4 = sub_22C18E830();
  MEMORY[0x2318AB8D0](v4);
  sub_22C190034();
}

void TypeConversionResult.description.getter()
{
  sub_22C190048();
  sub_22BE382D8();
  sub_22C273AA4();
  sub_22C18F8B0();
  sub_22C18F06C();
  MEMORY[0x2318AB8D0]();
  sub_22C272874();
  sub_22C273C24();
  v1 = sub_22BE33AB0();
  MEMORY[0x2318AB8D0](v1);
  v2 = type metadata accessor for TypeConversionResult(0);
  sub_22C18F32C(v2);
  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v3);
  sub_22BE2590C();
  v4 = sub_22C273FD4();
  MEMORY[0x2318AB8D0](v4);

  sub_22C18F06C();
  MEMORY[0x2318AB8D0](0xD000000000000015);
  v5 = v0 + *(v2 + 24);
  sub_22BE2590C();
  sub_22C273FD4();
  sub_22C18FC2C();

  v6 = sub_22C18E830();
  MEMORY[0x2318AB8D0](v6);
  sub_22C190034();
}

void QueryDecorationResult.description.getter()
{
  sub_22BE3C358();
  v1 = v0;
  v2 = sub_22BE29454();
  v4 = sub_22BE5CE4C(v2, v3);
  sub_22C18DFEC(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A8B4();
  sub_22BE5CE4C(&qword_27D907770, &unk_22C2880C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22C28E670;
  v9 = *v0;
  sub_22C270FD4();
  v10 = sub_22BE1ACEC();
  v11 = MEMORY[0x2318ABBB0](v10);
  MEMORY[0x2318AB8D0](v11);

  sub_22BE48998();

  *(v8 + 32) = 0x203A736E6170737BLL;
  *(v8 + 40) = 0xE800000000000000;
  DecorationResult = type metadata accessor for QueryDecorationResult(0);
  v13 = DecorationResult[5];
  sub_22C18FD4C();
  sub_22BE22814();
  sub_22BE196A8();
  v14 = sub_22C273074();
  MEMORY[0x2318AB8D0](v14);

  sub_22BE48998();

  *(v8 + 48) = 0xD000000000000018;
  *(v8 + 56) = 0x800000022C2DBB30;
  v15 = *(v1 + DecorationResult[6]);
  type metadata accessor for DynamicEnumerationEntityStatement(0);
  v16 = sub_22BE1ACEC();
  v17 = MEMORY[0x2318ABBB0](v16);
  MEMORY[0x2318AB8D0](v17);

  sub_22BE48998();

  *(v8 + 64) = 0xD00000000000001DLL;
  *(v8 + 72) = 0x800000022C2DBB50;
  v18 = *(v1 + DecorationResult[7]);
  type metadata accessor for RetrievedContextStatement(0);
  v19 = sub_22BE1ACEC();
  v20 = MEMORY[0x2318ABBB0](v19);
  MEMORY[0x2318AB8D0](v20);

  sub_22BE48998();

  *(v8 + 80) = 0x747865746E6F637BLL;
  *(v8 + 88) = 0xEA0000000000203ALL;
  sub_22BE5CE4C(&qword_27D908050, &qword_22C278EB0);
  sub_22BEBAF64();
  sub_22C272FB4();

  sub_22BE18040();
  sub_22BE267B8();
}

uint64_t QueryDecorationPrePlannerResult.description.getter()
{
  sub_22C273AA4();

  sub_22C26E684();
  sub_22BE18F44();
  sub_22BE20458(v1);
  v2 = sub_22C18FB68();
  MEMORY[0x2318AB8D0](v2);

  sub_22BE48998();
  sub_22C273AA4();

  DecorationPrePlannerResult = type metadata accessor for QueryDecorationPrePlannerResult(0);
  v4 = sub_22C18FA3C(*(DecorationPrePlannerResult + 20));
  MEMORY[0x2318AB8D0](v4);
  sub_22BE48998();

  v5 = sub_22BE29454();
  MEMORY[0x2318AB8D0](v5);

  sub_22C18F774(0x707Bu);
  sub_22C18FAC4();
  sub_22C18FA84((v0 + *(DecorationPrePlannerResult + 24)));
  sub_22C273C24();
  sub_22BE48998();

  v6 = sub_22BE260B8();
  MEMORY[0x2318AB8D0](v6);

  return 0x656D65746174537BLL;
}

unint64_t ExecutionPreconditionEvaluatorRequest.description.getter()
{
  sub_22BE382D8();
  sub_22C273AA4();

  sub_22BE25A74();
  ExecutionPreconditionEvaluatorRequest.ActionRequest.description.getter();
  sub_22C18FC2C();

  v0 = sub_22C18E830();
  MEMORY[0x2318AB8D0](v0);
  return 0xD000000000000026;
}

uint64_t Session.Event.Payload.payloadType.getter()
{
  v1 = sub_22BE1A5E4();
  v2 = type metadata accessor for Session.Event.Payload(v1);
  v3 = sub_22BE18000(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE2379C();
  sub_22BE1C058();
  v6 = sub_22BE1804C();
  sub_22BE1A964(v6, v7);
  sub_22BE1A8C4();
  result = swift_getEnumCaseMultiPayload();
  v9 = 12;
  switch(result)
  {
    case 1:
      result = sub_22C171FFC();
      v9 = 1;
      break;
    case 2:
      result = sub_22C171FFC();
      v9 = 2;
      break;
    case 3:
      result = sub_22C171FFC();
      v9 = 3;
      break;
    case 4:
      result = sub_22C171FFC();
      v9 = 4;
      break;
    case 5:
      result = sub_22C171FFC();
      v9 = 5;
      break;
    case 6:
      result = sub_22C171FFC();
      v9 = 6;
      break;
    case 7:
      result = sub_22C171FFC();
      v9 = 7;
      break;
    case 8:
      result = sub_22C171FFC();
      v9 = 8;
      break;
    case 9:
      result = sub_22C171FFC();
      v9 = 9;
      break;
    case 10:
      result = sub_22C171FFC();
      v9 = 10;
      break;
    case 11:
      result = sub_22C171FFC();
      v9 = 11;
      break;
    case 12:
      result = sub_22C171FFC();
      v9 = 14;
      break;
    case 13:
      result = sub_22C171FFC();
      v9 = 15;
      break;
    case 14:
      result = sub_22C171FFC();
      v9 = 16;
      break;
    case 15:
      v9 = 17;
      break;
    case 16:
      result = sub_22C171FFC();
      v9 = 18;
      break;
    case 17:
      result = sub_22C171FFC();
      v9 = 33;
      break;
    case 18:
      result = sub_22C171FFC();
      v9 = 34;
      break;
    case 19:
      result = sub_22C171FFC();
      v9 = 35;
      break;
    case 20:
      result = sub_22C171FFC();
      v9 = 19;
      break;
    case 21:
      result = sub_22C171FFC();
      v9 = 20;
      break;
    case 22:
      result = sub_22C171FFC();
      v9 = 21;
      break;
    case 23:
      result = sub_22C171FFC();
      v9 = 22;
      break;
    case 24:
      result = sub_22C171FFC();
      v9 = 23;
      break;
    case 25:
      result = sub_22C171FFC();
      v9 = 24;
      break;
    case 26:
      result = sub_22C171FFC();
      v9 = 25;
      break;
    case 27:
      result = sub_22C171FFC();
      v9 = 26;
      break;
    case 28:
      result = sub_22C171FFC();
      v9 = 27;
      break;
    case 29:
      result = sub_22C171FFC();
      v9 = 28;
      break;
    case 30:
      result = sub_22C171FFC();
      v9 = 29;
      break;
    case 31:
      v9 = 30;
      break;
    case 32:
      result = sub_22C171FFC();
      v9 = 31;
      break;
    case 33:
      result = sub_22C171FFC();
      v9 = 32;
      break;
    case 34:
      result = sub_22C171FFC();
      v9 = 36;
      break;
    case 35:
      result = sub_22C171FFC();
      v9 = 37;
      break;
    case 36:
      result = sub_22C171FFC();
      v9 = 38;
      break;
    case 37:
      v9 = 39;
      break;
    case 38:
      result = sub_22C171FFC();
      v9 = 40;
      break;
    case 39:
      result = sub_22C171FFC();
      v9 = 41;
      break;
    case 40:
      result = sub_22C171FFC();
      v9 = 42;
      break;
    case 41:
      result = sub_22C171FFC();
      v9 = 43;
      break;
    case 42:
      break;
    case 43:
      v9 = 13;
      break;
    default:
      result = sub_22C171FFC();
      v9 = 0;
      break;
  }

  *v0 = v9;
  return result;
}