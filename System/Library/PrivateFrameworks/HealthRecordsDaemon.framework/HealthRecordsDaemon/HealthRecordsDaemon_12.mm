uint64_t sub_251BA5240(void *a1, void *a2)
{
  v4 = type metadata accessor for PBHKConcept(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v51 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v56 = &v51 - v9;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v52 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - v14;
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v17 = v16;
  v18 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v54 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v51 - v21;
  v55 = type metadata accessor for PBHKDiagnosticTestReport(0);
  v23 = v55[10];
  v53 = v17;
  v24 = *(v17 + 48);
  v57 = a1;
  sub_251BB33C4(a1 + v23, v22, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v58 = a2;
  sub_251BB33C4(a2 + v23, &v22[v24], qword_2813E6D28, type metadata accessor for PBHKConcept);
  v25 = *(v5 + 48);
  if (v25(v22, 1, v4) == 1)
  {
    if (v25(&v22[v24], 1, v4) == 1)
    {
      sub_251BB3444(v22, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_13;
    }

LABEL_6:
    v26 = v22;
LABEL_7:
    sub_251BB242C(v26, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_8;
  }

  sub_251BB33C4(v22, v15, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v25(&v22[v24], 1, v4) == 1)
  {
    sub_251BB2308(v15, type metadata accessor for PBHKConcept);
    goto LABEL_6;
  }

  v29 = v56;
  sub_251BB23C4(&v22[v24], v56, type metadata accessor for PBHKConcept);
  v30 = *(v4 + 20);
  v31 = *&v15[v30];
  v32 = *(v29 + v30);
  if (v31 != v32)
  {
    v33 = *&v15[v30];

    v34 = sub_251B70648(v31, v32);

    if ((v34 & 1) == 0)
    {
      sub_251BB2308(v29, type metadata accessor for PBHKConcept);
      sub_251BB2308(v15, type metadata accessor for PBHKConcept);
      v41 = v22;
LABEL_30:
      sub_251BB3444(v41, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_8;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v35 = sub_251C70ED4();
  sub_251BB2308(v29, type metadata accessor for PBHKConcept);
  sub_251BB2308(v15, type metadata accessor for PBHKConcept);
  sub_251BB3444(v22, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v35 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_13:
  v37 = v57;
  v36 = v58;
  if ((*v57 != *v58 || v57[1] != v58[1]) && (sub_251C719D4() & 1) == 0 || (v37[2] != v36[2] || v37[3] != v36[3]) && (sub_251C719D4() & 1) == 0 || (v37[4] != v36[4] || v37[5] != v36[5]) && (sub_251C719D4() & 1) == 0 || (v37[6] != v36[6] || v37[7] != v36[7]) && (sub_251C719D4() & 1) == 0 || (sub_251A94F54(v37[8], v36[8]) & 1) == 0)
  {
    goto LABEL_8;
  }

  v38 = v55[11];
  v39 = *(v53 + 48);
  v40 = v54;
  sub_251BB33C4(v37 + v38, v54, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(v36 + v38, v40 + v39, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v25(v40, 1, v4) == 1)
  {
    if (v25((v40 + v39), 1, v4) == 1)
    {
      sub_251BB3444(v40, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_37:
      v50 = v55[9];
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
      v27 = sub_251C70ED4();
      return v27 & 1;
    }

    goto LABEL_33;
  }

  v42 = v52;
  sub_251BB33C4(v40, v52, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v25((v40 + v39), 1, v4) == 1)
  {
    sub_251BB2308(v42, type metadata accessor for PBHKConcept);
LABEL_33:
    v26 = v40;
    goto LABEL_7;
  }

  v43 = v51;
  sub_251BB23C4(v40 + v39, v51, type metadata accessor for PBHKConcept);
  v44 = *(v4 + 20);
  v45 = *(v42 + v44);
  v46 = *(v43 + v44);
  if (v45 != v46)
  {
    v47 = *(v42 + v44);

    v48 = sub_251B70648(v45, v46);

    if ((v48 & 1) == 0)
    {
      sub_251BB2308(v43, type metadata accessor for PBHKConcept);
      sub_251BB2308(v42, type metadata accessor for PBHKConcept);
      v41 = v40;
      goto LABEL_30;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v49 = sub_251C70ED4();
  sub_251BB2308(v43, type metadata accessor for PBHKConcept);
  sub_251BB2308(v42, type metadata accessor for PBHKConcept);
  sub_251BB3444(v40, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v49)
  {
    goto LABEL_37;
  }

LABEL_8:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_251BA5AC8(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PBDateRange(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v25 - v10);
  sub_251BB34B4(0, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v26 = type metadata accessor for PBActivitySummarySeries(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 56);
  v28 = a1;
  sub_251BB33C4(a1 + v17, v16, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251BB33C4(a2 + v17, &v16[v18], qword_2813E6EE8, type metadata accessor for PBDateRange);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_251BB3444(v16, qword_2813E6EE8, type metadata accessor for PBDateRange);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_251BB33C4(v16, v11, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_251BB2308(v11, type metadata accessor for PBDateRange);
LABEL_6:
    sub_251BB242C(v16, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v27;
  sub_251BB23C4(&v16[v18], v27, type metadata accessor for PBDateRange);
  v21 = sub_251BB2194(v11, v20);
  sub_251BB2308(v20, type metadata accessor for PBDateRange);
  sub_251BB2308(v11, type metadata accessor for PBDateRange);
  sub_251BB3444(v16, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_251A951D8(*v28, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = *(v26 + 20);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v23 = sub_251C70ED4();
  return v23 & 1;
}

uint64_t sub_251BA5EA4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  if (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    v2 = *(a1 + 24);
    if ((sub_251C719D4() & 1) == 0)
    {
      return 0;
    }
  }

  v3 = *(type metadata accessor for PBActivitySummarySeries.ActivitySummary(0) + 44);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BA5FDC(uint64_t a1, uint64_t a2)
{
  v112 = type metadata accessor for PBHKConcept(0);
  v4 = *(v112 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v112);
  v8 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v106 = &v101 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v107 = &v101 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v101 - v13;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v108 = &v101 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v109 = &v101 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v101 - v24;
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v111 = v26;
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v101 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v110 = &v101 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v101 - v36;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_12;
  }

  v103 = v30;
  v104 = v33;
  v101 = v8;
  v102 = v19;
  v105 = type metadata accessor for PBHKVaccinationRecord(0);
  v38 = *(v105 + 60);
  v39 = *(v111 + 48);
  sub_251BB33C4(a1 + v38, v37, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(a2 + v38, &v37[v39], qword_2813E6D28, type metadata accessor for PBHKConcept);
  v40 = *(v4 + 48);
  v41 = v112;
  if (v40(v37, 1, v112) == 1)
  {
    if (v40(&v37[v39], 1, v41) != 1)
    {
      goto LABEL_10;
    }

    sub_251BB3444(v37, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  else
  {
    sub_251BB33C4(v37, v25, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v40(&v37[v39], 1, v41) == 1)
    {
      v42 = v25;
LABEL_9:
      sub_251BB2308(v42, type metadata accessor for PBHKConcept);
      goto LABEL_10;
    }

    sub_251BB23C4(&v37[v39], v14, type metadata accessor for PBHKConcept);
    v46 = *(v41 + 20);
    v47 = *&v25[v46];
    v48 = *&v14[v46];
    if (v47 != v48)
    {
      v49 = *&v25[v46];

      v50 = sub_251B70648(v47, v48);

      if ((v50 & 1) == 0)
      {
        sub_251BB2308(v14, type metadata accessor for PBHKConcept);
        sub_251BB2308(v25, type metadata accessor for PBHKConcept);
        v61 = v37;
        goto LABEL_40;
      }
    }

    sub_251C703B4();
    sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
    v51 = sub_251C70ED4();
    sub_251BB2308(v14, type metadata accessor for PBHKConcept);
    sub_251BB2308(v25, type metadata accessor for PBHKConcept);
    sub_251BB3444(v37, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if ((v51 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_251C719D4() & 1) == 0 || *(a1 + 64) != *(a2 + 64) || *(a1 + 65) != *(a2 + 65) || (*(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 88) != *(a2 + 88) || *(a1 + 96) != *(a2 + 96)) && (sub_251C719D4() & 1) == 0 || (sub_251A956E8(*(a1 + 104), *(a2 + 104)) & 1) == 0 || (sub_251A956E8(*(a1 + 112), *(a2 + 112)) & 1) == 0)
  {
    goto LABEL_12;
  }

  v52 = v105;
  v53 = v40;
  v54 = *(v105 + 64);
  v55 = v110;
  v56 = *(v111 + 48);
  sub_251BB33C4(a1 + v54, v110, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v57 = a2 + v54;
  v58 = v112;
  v59 = v55;
  sub_251BB33C4(v57, &v55[v56], qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v53)(v55, 1, v58) != 1)
  {
    v62 = v109;
    sub_251BB33C4(v55, v109, qword_2813E6D28, type metadata accessor for PBHKConcept);
    v63 = &v55[v56];
    v60 = v53;
    if ((v53)(v63, 1, v58) == 1)
    {
      v64 = v62;
LABEL_43:
      sub_251BB2308(v64, type metadata accessor for PBHKConcept);
      goto LABEL_44;
    }

    v65 = v107;
    sub_251BB23C4(v59 + v56, v107, type metadata accessor for PBHKConcept);
    v66 = *(v58 + 20);
    v67 = *(v62 + v66);
    v68 = *(v65 + v66);
    if (v67 == v68 || (, , v69 = sub_251B70648(v67, v68), , , (v69 & 1) != 0))
    {
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
      v70 = v109;
      v71 = sub_251C70ED4();
      sub_251BB2308(v65, type metadata accessor for PBHKConcept);
      sub_251BB2308(v70, type metadata accessor for PBHKConcept);
      sub_251BB3444(v110, qword_2813E6D28, type metadata accessor for PBHKConcept);
      if ((v71 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_48;
    }

    sub_251BB2308(v65, type metadata accessor for PBHKConcept);
    sub_251BB2308(v109, type metadata accessor for PBHKConcept);
    v61 = v110;
LABEL_40:
    sub_251BB3444(v61, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_12;
  }

  if ((v53)(&v55[v56], 1, v58) != 1)
  {
LABEL_44:
    v43 = v59;
    goto LABEL_11;
  }

  v60 = v53;
  sub_251BB3444(v59, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_48:
  v72 = v52[17];
  v73 = *(v111 + 48);
  v37 = v104;
  sub_251BB33C4(a1 + v72, v104, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v74 = a2 + v72;
  v75 = v112;
  sub_251BB33C4(v74, &v37[v73], qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v60)(v37, 1, v75) == 1)
  {
    if ((v60)(&v37[v73], 1, v75) == 1)
    {
      v110 = v60;
      sub_251BB3444(v37, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_56;
    }

LABEL_10:
    v43 = v37;
LABEL_11:
    sub_251BB242C(v43, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_12;
  }

  v76 = v108;
  sub_251BB33C4(v37, v108, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v110 = v60;
  if ((v60)(&v37[v73], 1, v75) == 1)
  {
    v42 = v76;
    goto LABEL_9;
  }

  v77 = v106;
  sub_251BB23C4(&v37[v73], v106, type metadata accessor for PBHKConcept);
  v78 = *(v75 + 20);
  v79 = *(v76 + v78);
  v80 = *(v77 + v78);
  if (v79 != v80)
  {

    v81 = sub_251B70648(v79, v80);

    if ((v81 & 1) == 0)
    {
      sub_251BB2308(v106, type metadata accessor for PBHKConcept);
      sub_251BB2308(v108, type metadata accessor for PBHKConcept);
      v61 = v104;
      goto LABEL_40;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v82 = v108;
  v83 = v106;
  v84 = sub_251C70ED4();
  sub_251BB2308(v83, type metadata accessor for PBHKConcept);
  sub_251BB2308(v82, type metadata accessor for PBHKConcept);
  sub_251BB3444(v104, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v84 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_56:
  v85 = v52[18];
  v86 = *(v111 + 48);
  v87 = v103;
  sub_251BB33C4(a1 + v85, v103, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v59 = v87;
  sub_251BB33C4(a2 + v85, v87 + v86, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v88 = v112;
  v89 = v110;
  if ((v110)(v87, 1, v112) == 1)
  {
    if ((v89)(v87 + v86, 1, v88) == 1)
    {
      sub_251BB3444(v87, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_65:
      v100 = v52[14];
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
      v44 = sub_251C70ED4();
      return v44 & 1;
    }

    goto LABEL_44;
  }

  v90 = v87;
  v91 = v102;
  sub_251BB33C4(v90, v102, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v89)(v59 + v86, 1, v88) == 1)
  {
    v64 = v91;
    goto LABEL_43;
  }

  v92 = v101;
  sub_251BB23C4(v59 + v86, v101, type metadata accessor for PBHKConcept);
  v93 = *(v88 + 20);
  v94 = *(v91 + v93);
  v95 = *(v92 + v93);
  if (v94 != v95)
  {
    v96 = *(v91 + v93);

    v97 = sub_251B70648(v94, v95);

    if ((v97 & 1) == 0)
    {
      sub_251BB2308(v92, type metadata accessor for PBHKConcept);
      sub_251BB2308(v102, type metadata accessor for PBHKConcept);
      v61 = v103;
      goto LABEL_40;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v98 = v102;
  v99 = sub_251C70ED4();
  sub_251BB2308(v92, type metadata accessor for PBHKConcept);
  sub_251BB2308(v98, type metadata accessor for PBHKConcept);
  sub_251BB3444(v103, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v99)
  {
    goto LABEL_65;
  }

LABEL_12:
  v44 = 0;
  return v44 & 1;
}

uint64_t sub_251BA6F00(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PBGeneralMedication(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251B67AAC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v28 - v10);
  sub_251BB34B4(0, &qword_27F47B580, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v29 = type metadata accessor for PBHKMedicationRecord(0);
  v17 = *(v29 + 52);
  v18 = *(v13 + 56);
  v31 = a1;
  sub_251BB33C4(a1 + v17, v16, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  sub_251BB33C4(a2 + v17, &v16[v18], qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_251BB33C4(v16, v11, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v30;
      sub_251BB23C4(&v16[v18], v30, type metadata accessor for PBGeneralMedication);
      v23 = sub_251BAA86C(v11, v22);
      sub_251BB2308(v22, type metadata accessor for PBGeneralMedication);
      sub_251BB2308(v11, type metadata accessor for PBGeneralMedication);
      sub_251BB3444(v16, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_251BB2308(v11, type metadata accessor for PBGeneralMedication);
LABEL_6:
    sub_251BB242C(v16, &qword_27F47B580, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_251BB3444(v16, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
LABEL_10:
  v24 = v31;
  if ((*v31 != *a2 || v31[1] != *(a2 + 8)) && (sub_251C719D4() & 1) == 0 || (v24[2] != *(a2 + 16) || v24[3] != *(a2 + 24)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_7;
  }

  v25 = v24[4];
  v26 = *(a2 + 32);
  if (*(a2 + 40) == 1)
  {
    if (v26 <= 2)
    {
      if (v26)
      {
        if (v26 == 1)
        {
          if (v25 != 1)
          {
            goto LABEL_7;
          }
        }

        else if (v25 != 2)
        {
          goto LABEL_7;
        }
      }

      else if (v25)
      {
        goto LABEL_7;
      }
    }

    else if (v26 > 4)
    {
      if (v26 == 5)
      {
        if (v25 != 5)
        {
          goto LABEL_7;
        }
      }

      else if (v25 != 6)
      {
        goto LABEL_7;
      }
    }

    else if (v26 == 3)
    {
      if (v25 != 3)
      {
        goto LABEL_7;
      }
    }

    else if (v25 != 4)
    {
      goto LABEL_7;
    }
  }

  else if (v25 != v26)
  {
    goto LABEL_7;
  }

  if (v24[6] == *(a2 + 48) && v24[7] == *(a2 + 56) || (sub_251C719D4()) && (v24[8] == *(a2 + 64) && v24[9] == *(a2 + 72) || (sub_251C719D4()) && *(v24 + 80) == *(a2 + 80) && (sub_251A956E8(v24[11], *(a2 + 88)) & 1) != 0 && (sub_251A956E8(v24[12], *(a2 + 96)))
  {
    v27 = *(v29 + 48);
    sub_251C703B4();
    sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
    v20 = sub_251C70ED4();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_251BA7420(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PBHKConcept(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v122 = &v114 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v123 = &v114 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v128 = &v114 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v114 - v16;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v121 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v124 = &v114 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v126 = &v114 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v129 = &v114 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v114 - v28;
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v31 = v30;
  v32 = *(*(v30 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v114 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33);
  v125 = &v114 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v127 = &v114 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v130 = &v114 - v41;
  MEMORY[0x28223BE20](v40);
  v43 = &v114 - v42;
  if ((sub_251A956E8(*a1, *a2) & 1) == 0)
  {
    goto LABEL_26;
  }

  v116 = v9;
  v117 = v35;
  v44 = type metadata accessor for PBHKProcedureRecord(0);
  v131 = a2;
  v118 = v44;
  v119 = v31;
  v45 = *(v44 + 52);
  v46 = a1;
  v47 = *(v31 + 48);
  v120 = v46;
  sub_251BB33C4(v46 + v45, v43, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(v131 + v45, &v43[v47], qword_2813E6D28, type metadata accessor for PBHKConcept);
  v48 = *(v5 + 48);
  if (v48(v43, 1, v4) == 1)
  {
    if (v48(&v43[v47], 1, v4) == 1)
    {
      sub_251BB3444(v43, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_12;
    }

LABEL_7:
    v49 = v43;
LABEL_8:
    sub_251BB242C(v49, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_26;
  }

  sub_251BB33C4(v43, v29, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v48(&v43[v47], 1, v4) == 1)
  {
    sub_251BB2308(v29, type metadata accessor for PBHKConcept);
    goto LABEL_7;
  }

  sub_251BB23C4(&v43[v47], v17, type metadata accessor for PBHKConcept);
  v50 = *(v4 + 20);
  v51 = *&v29[v50];
  v52 = *&v17[v50];
  if (v51 != v52)
  {
    v53 = *&v29[v50];

    v54 = sub_251B70648(v51, v52);

    if ((v54 & 1) == 0)
    {
      sub_251BB2308(v17, type metadata accessor for PBHKConcept);
      sub_251BB2308(v29, type metadata accessor for PBHKConcept);
      v65 = v43;
LABEL_25:
      sub_251BB3444(v65, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_26;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v55 = sub_251C70ED4();
  sub_251BB2308(v17, type metadata accessor for PBHKConcept);
  sub_251BB2308(v29, type metadata accessor for PBHKConcept);
  sub_251BB3444(v43, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v55 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_12:
  v56 = v120;
  v57 = v131;
  if ((sub_251A956E8(v120[1], v131[1]) & 1) == 0 || (v56[2] != v57[2] || v56[3] != v57[3]) && (sub_251C719D4() & 1) == 0 || (v56[4] != v57[4] || v56[5] != v57[5]) && (sub_251C719D4() & 1) == 0 || (sub_251A956E8(v56[6], v57[6]) & 1) == 0 || *(v56 + 56) != *(v57 + 56))
  {
    goto LABEL_26;
  }

  v115 = v4;
  v58 = v118;
  v59 = v118[14];
  v60 = *(v119 + 48);
  v61 = v130;
  sub_251BB33C4(v56 + v59, v130, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v62 = v57 + v59;
  v63 = v115;
  sub_251BB33C4(v62, &v61[v60], qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v48(v61, 1, v63) == 1)
  {
    v64 = v48;
    if (v48(&v61[v60], 1, v63) == 1)
    {
      sub_251BB3444(v61, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  v68 = v129;
  sub_251BB33C4(v61, v129, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v64 = v48;
  if (v48(&v61[v60], 1, v63) == 1)
  {
    sub_251BB2308(v68, type metadata accessor for PBHKConcept);
LABEL_30:
    v49 = v61;
    goto LABEL_8;
  }

  v69 = v128;
  sub_251BB23C4(&v61[v60], v128, type metadata accessor for PBHKConcept);
  v70 = *(v63 + 20);
  v71 = *(v68 + v70);
  v72 = *(v69 + v70);
  if (v71 != v72)
  {

    v73 = sub_251B70648(v71, v72);

    if ((v73 & 1) == 0)
    {
      sub_251BB2308(v69, type metadata accessor for PBHKConcept);
      sub_251BB2308(v129, type metadata accessor for PBHKConcept);
      v65 = v130;
      goto LABEL_25;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v74 = v129;
  v75 = sub_251C70ED4();
  sub_251BB2308(v69, type metadata accessor for PBHKConcept);
  sub_251BB2308(v74, type metadata accessor for PBHKConcept);
  sub_251BB3444(v130, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v75 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_34:
  v76 = v131;
  if ((sub_251A93C70(v56[8], v131[8]) & 1) == 0)
  {
    goto LABEL_26;
  }

  v77 = v58[15];
  v78 = *(v119 + 48);
  v79 = v127;
  sub_251BB33C4(v56 + v77, v127, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(v76 + v77, v79 + v78, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v64(v79, 1, v63) == 1)
  {
    if (v64(v79 + v78, 1, v63) == 1)
    {
      sub_251BB3444(v79, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  v80 = v126;
  sub_251BB33C4(v79, v126, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v64(v79 + v78, 1, v63) == 1)
  {
    sub_251BB2308(v80, type metadata accessor for PBHKConcept);
LABEL_40:
    v49 = v79;
    goto LABEL_8;
  }

  v81 = v123;
  sub_251BB23C4(v79 + v78, v123, type metadata accessor for PBHKConcept);
  v82 = *(v63 + 20);
  v83 = *(v80 + v82);
  v84 = *(v81 + v82);
  if (v83 != v84)
  {
    v85 = *(v80 + v82);

    v86 = sub_251B70648(v83, v84);

    if ((v86 & 1) == 0)
    {
      sub_251BB2308(v81, type metadata accessor for PBHKConcept);
      sub_251BB2308(v80, type metadata accessor for PBHKConcept);
      v65 = v127;
      goto LABEL_25;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v87 = sub_251C70ED4();
  sub_251BB2308(v81, type metadata accessor for PBHKConcept);
  sub_251BB2308(v80, type metadata accessor for PBHKConcept);
  sub_251BB3444(v127, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v87 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_45:
  v88 = v118;
  v89 = v118[16];
  v90 = *(v119 + 48);
  v91 = v125;
  sub_251BB33C4(v56 + v89, v125, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(v131 + v89, v91 + v90, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v64(v91, 1, v63) == 1)
  {
    if (v64(v91 + v90, 1, v63) == 1)
    {
      v130 = v64;
      sub_251BB3444(v91, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_54;
    }

LABEL_50:
    v49 = v91;
    goto LABEL_8;
  }

  v92 = v124;
  sub_251BB33C4(v91, v124, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v130 = v64;
  if (v64(v91 + v90, 1, v63) == 1)
  {
    sub_251BB2308(v92, type metadata accessor for PBHKConcept);
    goto LABEL_50;
  }

  v93 = v122;
  sub_251BB23C4(v91 + v90, v122, type metadata accessor for PBHKConcept);
  v94 = *(v63 + 20);
  v95 = *(v92 + v94);
  v96 = *(v93 + v94);
  if (v95 != v96)
  {

    v97 = sub_251B70648(v95, v96);

    if ((v97 & 1) == 0)
    {
      sub_251BB2308(v93, type metadata accessor for PBHKConcept);
      sub_251BB2308(v124, type metadata accessor for PBHKConcept);
      v65 = v125;
      goto LABEL_25;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v98 = v124;
  v99 = sub_251C70ED4();
  sub_251BB2308(v93, type metadata accessor for PBHKConcept);
  sub_251BB2308(v98, type metadata accessor for PBHKConcept);
  sub_251BB3444(v125, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v99 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_54:
  v100 = v131;
  if ((sub_251A956E8(v56[9], v131[9]) & 1) == 0)
  {
    goto LABEL_26;
  }

  v101 = v88[17];
  v102 = *(v119 + 48);
  v91 = v117;
  sub_251BB33C4(v56 + v101, v117, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(v100 + v101, v91 + v102, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v103 = v130;
  if ((v130)(v91, 1, v63) == 1)
  {
    if ((v103)(v91 + v102, 1, v63) == 1)
    {
      sub_251BB3444(v91, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_65:
      v113 = v118[12];
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
      v66 = sub_251C70ED4();
      return v66 & 1;
    }

    goto LABEL_50;
  }

  sub_251BB33C4(v91, v121, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v103)(v91 + v102, 1, v63) == 1)
  {
    sub_251BB2308(v121, type metadata accessor for PBHKConcept);
    v91 = v117;
    goto LABEL_50;
  }

  v104 = v116;
  sub_251BB23C4(&v117[v102], v116, type metadata accessor for PBHKConcept);
  v105 = *(v115 + 20);
  v106 = *(v121 + v105);
  v107 = *(v104 + v105);
  if (v106 != v107)
  {
    v108 = *(v121 + v105);

    v109 = sub_251B70648(v106, v107);

    if ((v109 & 1) == 0)
    {
      sub_251BB2308(v116, type metadata accessor for PBHKConcept);
      sub_251BB2308(v121, type metadata accessor for PBHKConcept);
      v65 = v117;
      goto LABEL_25;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v110 = v121;
  v111 = v116;
  v112 = sub_251C70ED4();
  sub_251BB2308(v111, type metadata accessor for PBHKConcept);
  sub_251BB2308(v110, type metadata accessor for PBHKConcept);
  sub_251BB3444(v117, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v112)
  {
    goto LABEL_65;
  }

LABEL_26:
  v66 = 0;
  return v66 & 1;
}

uint64_t sub_251BA8664(void *a1, uint64_t a2)
{
  v82 = a2;
  v3 = type metadata accessor for PBHKConcept(0);
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v71 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v73 = &v71 - v7;
  v8 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v72 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v75 = &v71 - v13;
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v79 = v14;
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v74 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v78 = &v71 - v18;
  v19 = type metadata accessor for PBGeneralMedication(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251B67AAC(0, qword_2813E52A0, type metadata accessor for PBGeneralMedication, v8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = (&v71 - v26);
  sub_251BB34B4(0, &qword_27F47B580, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v71 - v31;
  v80 = type metadata accessor for PBHKMedicationOrder(0);
  v81 = a1;
  v33 = v80[10];
  v34 = *(v29 + 56);
  sub_251BB33C4(a1 + v33, v32, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  v35 = v82;
  sub_251BB33C4(v82 + v33, &v32[v34], qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  v36 = *(v20 + 48);
  if (v36(v32, 1, v19) == 1)
  {
    if (v36(&v32[v34], 1, v19) == 1)
    {
      sub_251BB3444(v32, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
      goto LABEL_9;
    }

LABEL_6:
    v37 = &qword_27F47B580;
    v38 = qword_2813E52A0;
    v39 = type metadata accessor for PBGeneralMedication;
    v40 = v32;
LABEL_7:
    sub_251BB242C(v40, v37, v38, v39);
LABEL_42:
    v68 = 0;
    return v68 & 1;
  }

  sub_251BB33C4(v32, v27, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  if (v36(&v32[v34], 1, v19) == 1)
  {
    sub_251BB2308(v27, type metadata accessor for PBGeneralMedication);
    goto LABEL_6;
  }

  sub_251BB23C4(&v32[v34], v23, type metadata accessor for PBGeneralMedication);
  v41 = sub_251BAA86C(v27, v23);
  sub_251BB2308(v23, type metadata accessor for PBGeneralMedication);
  sub_251BB2308(v27, type metadata accessor for PBGeneralMedication);
  sub_251BB3444(v32, qword_2813E52A0, type metadata accessor for PBGeneralMedication);
  if ((v41 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_9:
  v42 = v81;
  if ((*v81 != *v35 || v81[1] != *(v35 + 8)) && (sub_251C719D4() & 1) == 0 || *(v42 + 4) != *(v35 + 16) || (v42[3] != *(v35 + 24) || v42[4] != *(v35 + 32)) && (sub_251C719D4() & 1) == 0 || (sub_251A956E8(v42[5], *(v35 + 40)) & 1) == 0)
  {
    goto LABEL_42;
  }

  v43 = v80[11];
  v44 = *(v79 + 48);
  v45 = v78;
  sub_251BB33C4(v42 + v43, v78, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(v35 + v43, v45 + v44, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v46 = v77;
  v47 = *(v76 + 48);
  if (v47(v45, 1, v77) == 1)
  {
    if (v47(v45 + v44, 1, v46) != 1)
    {
LABEL_31:
      v37 = &qword_27F4790E8;
      v38 = qword_2813E6D28;
      v39 = type metadata accessor for PBHKConcept;
      v40 = v45;
      goto LABEL_7;
    }

    sub_251BB3444(v45, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

  else
  {
    v48 = v75;
    sub_251BB33C4(v45, v75, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v47(v45 + v44, 1, v46) == 1)
    {
      v49 = v48;
LABEL_30:
      sub_251BB2308(v49, type metadata accessor for PBHKConcept);
      goto LABEL_31;
    }

    v50 = v73;
    sub_251BB23C4(v45 + v44, v73, type metadata accessor for PBHKConcept);
    v51 = *(v46 + 20);
    v52 = *(v48 + v51);
    v53 = *(v50 + v51);
    if (v52 != v53)
    {

      v54 = sub_251B70648(v52, v53);

      if ((v54 & 1) == 0)
      {
        sub_251BB2308(v50, type metadata accessor for PBHKConcept);
        sub_251BB2308(v75, type metadata accessor for PBHKConcept);
        v69 = v78;
LABEL_41:
        sub_251BB3444(v69, qword_2813E6D28, type metadata accessor for PBHKConcept);
        goto LABEL_42;
      }
    }

    sub_251C703B4();
    sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
    v55 = v75;
    v56 = sub_251C70ED4();
    sub_251BB2308(v50, type metadata accessor for PBHKConcept);
    sub_251BB2308(v55, type metadata accessor for PBHKConcept);
    sub_251BB3444(v78, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if ((v56 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  v57 = v80[12];
  v58 = *(v79 + 48);
  v45 = v74;
  sub_251BB33C4(v42 + v57, v74, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(v35 + v57, v45 + v58, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v47(v45, 1, v46) == 1)
  {
    if (v47(v45 + v58, 1, v46) == 1)
    {
      sub_251BB3444(v45, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  v59 = v72;
  sub_251BB33C4(v45, v72, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v47(v45 + v58, 1, v46) == 1)
  {
    v49 = v59;
    goto LABEL_30;
  }

  v60 = v71;
  sub_251BB23C4(v45 + v58, v71, type metadata accessor for PBHKConcept);
  v61 = *(v46 + 20);
  v62 = *(v59 + v61);
  v63 = *(v60 + v61);
  if (v62 != v63)
  {
    v64 = *(v59 + v61);

    v65 = sub_251B70648(v62, v63);

    if ((v65 & 1) == 0)
    {
      sub_251BB2308(v60, type metadata accessor for PBHKConcept);
      sub_251BB2308(v59, type metadata accessor for PBHKConcept);
      v69 = v74;
      goto LABEL_41;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v66 = sub_251C70ED4();
  sub_251BB2308(v60, type metadata accessor for PBHKConcept);
  sub_251BB2308(v59, type metadata accessor for PBHKConcept);
  sub_251BB3444(v74, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v66 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_35:
  if ((v42[6] != *(v35 + 48) || v42[7] != *(v35 + 56)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_42;
  }

  v67 = v80[9];
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v68 = sub_251C70ED4();
  return v68 & 1;
}

uint64_t sub_251BA91C0(void *a1, void *a2)
{
  v4 = type metadata accessor for PBHKConcept(0);
  v117 = *(v4 - 8);
  v5 = *(v117 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v109 = &v103 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v112 = &v103 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v113 = &v103 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v103 - v15;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v110 = &v103 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v114 = &v103 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v116 = &v103 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v103 - v28;
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v118 = v30;
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v103 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32);
  v111 = &v103 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v115 = &v103 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v103 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v103 - v42;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_251C719D4() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_251C719D4() & 1) == 0 || (sub_251A956E8(a1[4], a2[4]) & 1) == 0)
  {
    goto LABEL_32;
  }

  v104 = v8;
  v105 = v34;
  v103 = v21;
  v108 = type metadata accessor for PBHKConditionRecord(0);
  v44 = v108[10];
  v45 = a1;
  v46 = *(v118 + 48);
  v106 = v45;
  sub_251BB33C4(v45 + v44, v43, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v107 = a2;
  sub_251BB33C4(a2 + v44, &v43[v46], qword_2813E6D28, type metadata accessor for PBHKConcept);
  v47 = *(v117 + 48);
  if (v47(v43, 1, v4) == 1)
  {
    if (v47(&v43[v46], 1, v4) == 1)
    {
      sub_251BB3444(v43, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_17;
    }

LABEL_13:
    v48 = v43;
LABEL_31:
    sub_251BB242C(v48, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_32;
  }

  sub_251BB33C4(v43, v29, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v47(&v43[v46], 1, v4) == 1)
  {
    sub_251BB2308(v29, type metadata accessor for PBHKConcept);
    goto LABEL_13;
  }

  sub_251BB23C4(&v43[v46], v16, type metadata accessor for PBHKConcept);
  v49 = *(v4 + 20);
  v50 = *&v29[v49];
  v51 = *&v16[v49];
  if (v50 != v51)
  {
    v52 = *&v29[v49];

    v53 = sub_251B70648(v50, v51);

    if ((v53 & 1) == 0)
    {
      sub_251BB2308(v16, type metadata accessor for PBHKConcept);
      sub_251BB2308(v29, type metadata accessor for PBHKConcept);
      v69 = v43;
      goto LABEL_55;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v54 = sub_251C70ED4();
  sub_251BB2308(v16, type metadata accessor for PBHKConcept);
  sub_251BB2308(v29, type metadata accessor for PBHKConcept);
  sub_251BB3444(v43, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v54 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_17:
  v55 = v108[11];
  v56 = *(v118 + 48);
  v57 = v106;
  sub_251BB33C4(v106 + v55, v41, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v58 = v107;
  sub_251BB33C4(v107 + v55, &v41[v56], qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v47(v41, 1, v4) != 1)
  {
    v59 = v116;
    sub_251BB33C4(v41, v116, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v47(&v41[v56], 1, v4) == 1)
    {
      goto LABEL_29;
    }

    v60 = v113;
    sub_251BB23C4(&v41[v56], v113, type metadata accessor for PBHKConcept);
    v61 = *(v4 + 20);
    v62 = *(v59 + v61);
    v63 = *(v60 + v61);
    if (v62 == v63 || (, , v64 = sub_251B70648(v62, v63), , , (v64 & 1) != 0))
    {
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
      v65 = v116;
      v66 = sub_251C70ED4();
      sub_251BB2308(v60, type metadata accessor for PBHKConcept);
      sub_251BB2308(v65, type metadata accessor for PBHKConcept);
      sub_251BB3444(v41, qword_2813E6D28, type metadata accessor for PBHKConcept);
      if ((v66 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_24;
    }

    sub_251BB2308(v60, type metadata accessor for PBHKConcept);
    sub_251BB2308(v116, type metadata accessor for PBHKConcept);
    v69 = v41;
LABEL_55:
    sub_251BB3444(v69, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_32;
  }

  if (v47(&v41[v56], 1, v4) != 1)
  {
    goto LABEL_30;
  }

  sub_251BB3444(v41, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_24:
  v67 = v108[12];
  v68 = *(v118 + 48);
  v41 = v115;
  sub_251BB33C4(v57 + v67, v115, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(v58 + v67, &v41[v68], qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v47(v41, 1, v4) == 1)
  {
    if (v47(&v41[v68], 1, v4) == 1)
    {
      sub_251BB3444(v41, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_37;
    }

LABEL_30:
    v48 = v41;
    goto LABEL_31;
  }

  v59 = v114;
  sub_251BB33C4(v41, v114, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v47(&v41[v68], 1, v4) == 1)
  {
LABEL_29:
    sub_251BB2308(v59, type metadata accessor for PBHKConcept);
    goto LABEL_30;
  }

  v72 = v112;
  sub_251BB23C4(&v41[v68], v112, type metadata accessor for PBHKConcept);
  v73 = *(v4 + 20);
  v74 = *(v59 + v73);
  v75 = *(v72 + v73);
  if (v74 != v75)
  {

    v76 = sub_251B70648(v74, v75);

    if ((v76 & 1) == 0)
    {
      sub_251BB2308(v72, type metadata accessor for PBHKConcept);
      sub_251BB2308(v114, type metadata accessor for PBHKConcept);
      v69 = v115;
      goto LABEL_55;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v77 = v114;
  v78 = sub_251C70ED4();
  sub_251BB2308(v72, type metadata accessor for PBHKConcept);
  sub_251BB2308(v77, type metadata accessor for PBHKConcept);
  sub_251BB3444(v115, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v78 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_37:
  if ((v57[5] != v58[5] || v57[6] != v58[6]) && (sub_251C719D4() & 1) == 0 || (v57[7] != v58[7] || v57[8] != v58[8]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_32;
  }

  v79 = v108[13];
  v80 = *(v118 + 48);
  v41 = v111;
  sub_251BB33C4(v57 + v79, v111, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(v58 + v79, &v41[v80], qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v47(v41, 1, v4) == 1)
  {
    if (v47(&v41[v80], 1, v4) == 1)
    {
      sub_251BB3444(v41, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_51;
    }

    goto LABEL_30;
  }

  v59 = v110;
  sub_251BB33C4(v41, v110, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v47(&v41[v80], 1, v4) == 1)
  {
    goto LABEL_29;
  }

  v81 = v109;
  sub_251BB23C4(&v41[v80], v109, type metadata accessor for PBHKConcept);
  v82 = *(v4 + 20);
  v83 = *(v59 + v82);
  v84 = *(v81 + v82);
  if (v83 != v84)
  {

    v85 = sub_251B70648(v83, v84);

    if ((v85 & 1) == 0)
    {
      sub_251BB2308(v81, type metadata accessor for PBHKConcept);
      sub_251BB2308(v110, type metadata accessor for PBHKConcept);
      v69 = v111;
      goto LABEL_55;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v86 = v110;
  v87 = sub_251C70ED4();
  sub_251BB2308(v81, type metadata accessor for PBHKConcept);
  sub_251BB2308(v86, type metadata accessor for PBHKConcept);
  sub_251BB3444(v111, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v87 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_51:
  v88 = v108[14];
  v89 = *(v118 + 48);
  v90 = v105;
  sub_251BB33C4(v57 + v88, v105, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v118 = v89;
  sub_251BB33C4(v58 + v88, v90 + v89, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v47(v90, 1, v4) == 1)
  {
    if (v47((v90 + v118), 1, v4) == 1)
    {
      sub_251BB3444(v90, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_62:
      v102 = v108[9];
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
      v70 = sub_251C70ED4();
      return v70 & 1;
    }

    goto LABEL_58;
  }

  v91 = v103;
  sub_251BB33C4(v90, v103, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v92 = v118;
  if (v47((v90 + v118), 1, v4) == 1)
  {
    sub_251BB2308(v91, type metadata accessor for PBHKConcept);
LABEL_58:
    v48 = v90;
    goto LABEL_31;
  }

  v93 = v104;
  sub_251BB23C4(v90 + v92, v104, type metadata accessor for PBHKConcept);
  v94 = *(v4 + 20);
  v95 = *(v91 + v94);
  v96 = *(v93 + v94);
  v97 = v91;
  if (v95 != v96)
  {
    v98 = *(v91 + v94);

    v99 = sub_251B70648(v95, v96);

    if ((v99 & 1) == 0)
    {
      sub_251BB2308(v104, type metadata accessor for PBHKConcept);
      sub_251BB2308(v97, type metadata accessor for PBHKConcept);
      v69 = v105;
      goto LABEL_55;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v100 = v104;
  v101 = sub_251C70ED4();
  sub_251BB2308(v100, type metadata accessor for PBHKConcept);
  sub_251BB2308(v97, type metadata accessor for PBHKConcept);
  sub_251BB3444(v105, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v101)
  {
    goto LABEL_62;
  }

LABEL_32:
  v70 = 0;
  return v70 & 1;
}

uint64_t sub_251BAA378(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PBHKConcept(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  if ((sub_251A956E8(*a1, *a2) & 1) == 0 || (a1[1] != a2[1] || a1[2] != a2[2]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_11;
  }

  v31 = v8;
  v32 = type metadata accessor for PBHKAllergyReaction(0);
  v18 = *(v32 + 28);
  v19 = *(v14 + 48);
  sub_251BB33C4(a1 + v18, v17, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(a2 + v18, &v17[v19], qword_2813E6D28, type metadata accessor for PBHKConcept);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_251BB3444(v17, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_16:
      v30 = *(v32 + 24);
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
      v21 = sub_251C70ED4();
      return v21 & 1;
    }

    goto LABEL_10;
  }

  sub_251BB33C4(v17, v12, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_251BB2308(v12, type metadata accessor for PBHKConcept);
LABEL_10:
    sub_251BB242C(v17, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_11;
  }

  v23 = v31;
  sub_251BB23C4(&v17[v19], v31, type metadata accessor for PBHKConcept);
  v24 = *(v4 + 20);
  v25 = *&v12[v24];
  v26 = *(v23 + v24);
  if (v25 == v26 || (v27 = *&v12[v24], , , v28 = sub_251B70648(v25, v26), , , (v28 & 1) != 0))
  {
    sub_251C703B4();
    sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
    v29 = sub_251C70ED4();
    sub_251BB2308(v23, type metadata accessor for PBHKConcept);
    sub_251BB2308(v12, type metadata accessor for PBHKConcept);
    sub_251BB3444(v17, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v29)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_251BB2308(v23, type metadata accessor for PBHKConcept);
    sub_251BB2308(v12, type metadata accessor for PBHKConcept);
    sub_251BB3444(v17, qword_2813E6D28, type metadata accessor for PBHKConcept);
  }

LABEL_11:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_251BAA86C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PBHKConcept(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v61 = &v55 - v10;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v60 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - v15;
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v18 = v17;
  v19 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v62 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - v22;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_20;
  }

  v56 = v9;
  v24 = type metadata accessor for PBGeneralMedication(0);
  v25 = *(v24 + 36);
  v26 = *(v18 + 48);
  v57 = a1;
  v58 = v24;
  sub_251BB33C4(a1 + v25, v23, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v59 = a2;
  sub_251BB33C4(a2 + v25, &v23[v26], qword_2813E6D28, type metadata accessor for PBHKConcept);
  v27 = *(v5 + 48);
  if (v27(v23, 1, v4) == 1)
  {
    if (v27(&v23[v26], 1, v4) == 1)
    {
      sub_251BB3444(v23, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_13;
    }

LABEL_9:
    v28 = v23;
LABEL_19:
    sub_251BB242C(v28, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_20;
  }

  sub_251BB33C4(v23, v16, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v27(&v23[v26], 1, v4) == 1)
  {
    sub_251BB2308(v16, type metadata accessor for PBHKConcept);
    goto LABEL_9;
  }

  v29 = &v23[v26];
  v30 = v61;
  sub_251BB23C4(v29, v61, type metadata accessor for PBHKConcept);
  v31 = *(v4 + 20);
  v32 = *&v16[v31];
  v33 = *(v30 + v31);
  if (v32 != v33)
  {
    v34 = *&v16[v31];

    v35 = sub_251B70648(v32, v33);

    if ((v35 & 1) == 0)
    {
      sub_251BB2308(v30, type metadata accessor for PBHKConcept);
      sub_251BB2308(v16, type metadata accessor for PBHKConcept);
      v54 = v23;
      goto LABEL_33;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v36 = sub_251C70ED4();
  sub_251BB2308(v30, type metadata accessor for PBHKConcept);
  sub_251BB2308(v16, type metadata accessor for PBHKConcept);
  sub_251BB3444(v23, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v36 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_13:
  v37 = *(v58 + 40);
  v38 = *(v18 + 48);
  v39 = v57;
  v40 = v62;
  sub_251BB33C4(v57 + v37, v62, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v41 = v59 + v37;
  v42 = v59;
  sub_251BB33C4(v41, v40 + v38, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v27(v40, 1, v4) != 1)
  {
    v43 = v60;
    sub_251BB33C4(v40, v60, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v27((v40 + v38), 1, v4) == 1)
    {
      sub_251BB2308(v43, type metadata accessor for PBHKConcept);
      goto LABEL_18;
    }

    v46 = v56;
    sub_251BB23C4(v40 + v38, v56, type metadata accessor for PBHKConcept);
    v47 = *(v4 + 20);
    v48 = *(v43 + v47);
    v49 = *(v46 + v47);
    if (v48 == v49 || (v50 = *(v43 + v47), , , v51 = sub_251B70648(v48, v49), , , (v51 & 1) != 0))
    {
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
      v52 = sub_251C70ED4();
      sub_251BB2308(v46, type metadata accessor for PBHKConcept);
      sub_251BB2308(v43, type metadata accessor for PBHKConcept);
      sub_251BB3444(v40, qword_2813E6D28, type metadata accessor for PBHKConcept);
      v42 = v59;
      if ((v52 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_25;
    }

    sub_251BB2308(v46, type metadata accessor for PBHKConcept);
    sub_251BB2308(v43, type metadata accessor for PBHKConcept);
    v54 = v40;
LABEL_33:
    sub_251BB3444(v54, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_20;
  }

  if (v27((v40 + v38), 1, v4) != 1)
  {
LABEL_18:
    v28 = v40;
    goto LABEL_19;
  }

  sub_251BB3444(v40, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_25:
  if (sub_251A98080(v39[2], v42[2]) & 1) != 0 && (v39[3] == v42[3] && v39[4] == v42[4] || (sub_251C719D4()) && (sub_251A93C70(v39[5], v42[5]))
  {
    v53 = *(v58 + 32);
    sub_251C703B4();
    sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
    v44 = sub_251C70ED4();
    return v44 & 1;
  }

LABEL_20:
  v44 = 0;
  return v44 & 1;
}

uint64_t sub_251BAB0D0(void *a1, void *a2)
{
  v4 = type metadata accessor for PBDateRange(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v26 - v11);
  sub_251BB34B4(0, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_10;
  }

  v26 = v8;
  v27 = type metadata accessor for PBMedicationDosage(0);
  v18 = *(v27 + 24);
  v19 = *(v14 + 48);
  sub_251BB33C4(a1 + v18, v17, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251BB33C4(a2 + v18, &v17[v19], qword_2813E6EE8, type metadata accessor for PBDateRange);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_251BB3444(v17, qword_2813E6EE8, type metadata accessor for PBDateRange);
LABEL_12:
      v24 = *(v27 + 20);
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
      v21 = sub_251C70ED4();
      return v21 & 1;
    }

    goto LABEL_9;
  }

  sub_251BB33C4(v17, v12, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_251BB2308(v12, type metadata accessor for PBDateRange);
LABEL_9:
    sub_251BB242C(v17, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
    goto LABEL_10;
  }

  v22 = v26;
  sub_251BB23C4(&v17[v19], v26, type metadata accessor for PBDateRange);
  v23 = sub_251BB2194(v12, v22);
  sub_251BB2308(v22, type metadata accessor for PBDateRange);
  sub_251BB2308(v12, type metadata accessor for PBDateRange);
  sub_251BB3444(v17, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if (v23)
  {
    goto LABEL_12;
  }

LABEL_10:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_251BAB4D4(uint64_t *a1, uint64_t a2)
{
  v92 = type metadata accessor for PBHKInspectableValue(0);
  v4 = *(v92 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v92);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v89 = &v83 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v83 - v11;
  sub_251B67AAC(0, qword_2813E4B40, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v88 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v90 = &v83 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v83 - v19;
  sub_251BB34B4(0, &qword_27F47B588, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  v22 = v21;
  v23 = *(*(v21 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v83 - v26;
  MEMORY[0x28223BE20](v25);
  v30 = &v83 - v29;
  v31 = *a1;
  v32 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v32 <= 1)
    {
      if (v32)
      {
        if (v31 != 1)
        {
          goto LABEL_43;
        }
      }

      else if (v31)
      {
        goto LABEL_43;
      }
    }

    else if (v32 == 2)
    {
      if (v31 != 2)
      {
        goto LABEL_43;
      }
    }

    else if (v32 == 3)
    {
      if (v31 != 3)
      {
        goto LABEL_43;
      }
    }

    else if (v31 != 4)
    {
      goto LABEL_43;
    }
  }

  else if (v31 != v32)
  {
    goto LABEL_43;
  }

  v84 = v8;
  v85 = v28;
  v33 = type metadata accessor for PBHKInspectableValueCollection(0);
  v91 = a2;
  v34 = *(v33 + 32);
  v35 = *(v22 + 48);
  v86 = a1;
  v87 = v33;
  sub_251BB33C4(a1 + v34, v30, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  sub_251BB33C4(v91 + v34, &v30[v35], qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  v36 = *(v4 + 48);
  v37 = v92;
  if (v36(v30, 1, v92) == 1)
  {
    if (v36(&v30[v35], 1, v37) == 1)
    {
      v83 = v36;
      sub_251BB3444(v30, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
      goto LABEL_20;
    }

LABEL_13:
    v38 = v30;
LABEL_42:
    sub_251BB242C(v38, &qword_27F47B588, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
    goto LABEL_43;
  }

  sub_251BB33C4(v30, v20, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  if (v36(&v30[v35], 1, v37) == 1)
  {
    sub_251BB2308(v20, type metadata accessor for PBHKInspectableValue);
    goto LABEL_13;
  }

  v83 = v36;
  sub_251BB23C4(&v30[v35], v12, type metadata accessor for PBHKInspectableValue);
  v39 = *(v37 + 20);
  v40 = *&v20[v39];
  v41 = *&v12[v39];
  if (v40 != v41)
  {
    v42 = *&v20[v39];

    v43 = sub_251B83760(v40, v41);

    if (!v43)
    {
      sub_251BB2308(v12, type metadata accessor for PBHKInspectableValue);
      sub_251BB2308(v20, type metadata accessor for PBHKInspectableValue);
      v69 = v30;
      goto LABEL_55;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v44 = sub_251C70ED4();
  sub_251BB2308(v12, type metadata accessor for PBHKInspectableValue);
  sub_251BB2308(v20, type metadata accessor for PBHKInspectableValue);
  sub_251BB3444(v30, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  if ((v44 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_20:
  v46 = v86;
  v45 = v87;
  v47 = *(v87 + 36);
  v48 = *(v22 + 48);
  sub_251BB33C4(v86 + v47, v27, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  sub_251BB33C4(v91 + v47, &v27[v48], qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  v49 = v92;
  v50 = v83;
  if (v83(v27, 1, v92) == 1)
  {
    if (v50(&v27[v48], 1, v49) == 1)
    {
      v51 = v50;
      sub_251BB3444(v27, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  v52 = v90;
  sub_251BB33C4(v27, v90, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  v51 = v50;
  if (v50(&v27[v48], 1, v49) == 1)
  {
    sub_251BB2308(v52, type metadata accessor for PBHKInspectableValue);
LABEL_31:
    v38 = v27;
    goto LABEL_42;
  }

  v53 = &v27[v48];
  v54 = v89;
  sub_251BB23C4(v53, v89, type metadata accessor for PBHKInspectableValue);
  v55 = *(v49 + 20);
  v56 = *(v52 + v55);
  v57 = *(v54 + v55);
  if (v56 != v57)
  {
    v58 = *(v52 + v55);

    v59 = sub_251B83760(v56, v57);

    if (!v59)
    {
      sub_251BB2308(v54, type metadata accessor for PBHKInspectableValue);
      sub_251BB2308(v52, type metadata accessor for PBHKInspectableValue);
      v69 = v27;
      goto LABEL_55;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v60 = sub_251C70ED4();
  sub_251BB2308(v54, type metadata accessor for PBHKInspectableValue);
  sub_251BB2308(v52, type metadata accessor for PBHKInspectableValue);
  sub_251BB3444(v27, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  v45 = v87;
  if ((v60 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_35:
  v61 = v45;
  v62 = *(v45 + 40);
  v63 = *(v22 + 48);
  v64 = v85;
  sub_251BB33C4(v46 + v62, v85, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  v65 = v91 + v62;
  v66 = v91;
  v67 = v64;
  sub_251BB33C4(v65, v64 + v63, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  v68 = v92;
  if (v51(v64, 1, v92) != 1)
  {
    v70 = v64;
    v71 = v88;
    sub_251BB33C4(v70, v88, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
    if (v51(v67 + v63, 1, v68) == 1)
    {
      sub_251BB2308(v71, type metadata accessor for PBHKInspectableValue);
      goto LABEL_41;
    }

    v74 = v84;
    sub_251BB23C4(v67 + v63, v84, type metadata accessor for PBHKInspectableValue);
    v75 = *(v68 + 20);
    v76 = *(v71 + v75);
    v77 = *(v74 + v75);
    if (v76 == v77 || (v78 = *(v71 + v75), , , v79 = sub_251B83760(v76, v77), , , v79))
    {
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
      v80 = v84;
      v81 = sub_251C70ED4();
      sub_251BB2308(v80, type metadata accessor for PBHKInspectableValue);
      sub_251BB2308(v71, type metadata accessor for PBHKInspectableValue);
      sub_251BB3444(v85, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
      if ((v81 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_48;
    }

    sub_251BB2308(v84, type metadata accessor for PBHKInspectableValue);
    sub_251BB2308(v71, type metadata accessor for PBHKInspectableValue);
    v69 = v85;
LABEL_55:
    sub_251BB3444(v69, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
    goto LABEL_43;
  }

  if (v51(v64 + v63, 1, v68) != 1)
  {
LABEL_41:
    v38 = v67;
    goto LABEL_42;
  }

  sub_251BB3444(v64, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
LABEL_48:
  if (sub_251A9915C(v46[2], v66[2]) & 1) != 0 && (v46[3] == v66[3] && v46[4] == v66[4] || (sub_251C719D4()))
  {
    v82 = *(v61 + 28);
    sub_251C703B4();
    sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
    v72 = sub_251C70ED4();
    return v72 & 1;
  }

LABEL_43:
  v72 = 0;
  return v72 & 1;
}

uint64_t sub_251BAC0B8(void *a1, void *a2)
{
  v4 = type metadata accessor for PBHKInspectableValueCollection(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B67AAC(0, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v26 - v11);
  sub_251BB34B4(0, &qword_27F4790F0, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_10;
  }

  v26 = v8;
  v27 = type metadata accessor for PBHKReferenceRange(0);
  v18 = *(v27 + 24);
  v19 = *(v14 + 48);
  sub_251BB33C4(a1 + v18, v17, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  sub_251BB33C4(a2 + v18, &v17[v19], qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_251BB3444(v17, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
LABEL_12:
      v24 = *(v27 + 20);
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
      v21 = sub_251C70ED4();
      return v21 & 1;
    }

    goto LABEL_9;
  }

  sub_251BB33C4(v17, v12, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_251BB2308(v12, type metadata accessor for PBHKInspectableValueCollection);
LABEL_9:
    sub_251BB242C(v17, &qword_27F4790F0, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
    goto LABEL_10;
  }

  v22 = v26;
  sub_251BB23C4(&v17[v19], v26, type metadata accessor for PBHKInspectableValueCollection);
  v23 = sub_251BAB4D4(v12, v22);
  sub_251BB2308(v22, type metadata accessor for PBHKInspectableValueCollection);
  sub_251BB2308(v12, type metadata accessor for PBHKInspectableValueCollection);
  sub_251BB3444(v17, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
  if (v23)
  {
    goto LABEL_12;
  }

LABEL_10:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_251BAC4BC(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  if ((sub_251A99698(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v5 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for PBHistogramSeries.Value(0) + 28);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BAC5AC(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_251C719D4() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  if ((*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for PBHKCodedQuantity(0) + 40);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BAC720(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (sub_251C719D4() & 1) == 0 || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  if ((*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80)) && (sub_251C719D4() & 1) == 0 || (sub_251A93C70(*(a1 + 88), *(a2 + 88)) & 1) == 0 || (sub_251A9990C(*(a1 + 96), *(a2 + 96)) & 1) == 0 || *(a1 + 104) != *(a2 + 104) || !sub_251B5CAD0(*(a1 + 112), *(a1 + 120), *(a2 + 112), *(a2 + 120)))
  {
    return 0;
  }

  v6 = *(type metadata accessor for PBECGMeasurement(0) + 56);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BAC8C4(void *a1, void *a2)
{
  v4 = type metadata accessor for PBHKConcept(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v73 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v76 = &v72 - v10;
  MEMORY[0x28223BE20](v9);
  v78 = &v72 - v11;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v74 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v77 = &v72 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v72 - v18;
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v21 = v20;
  v22 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v75 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v81 = &v72 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v72 - v27;
  v29 = type metadata accessor for PBHKAllergyRecord(0);
  v79 = v21;
  v80 = v29;
  v30 = *(v29 + 40);
  v31 = *(v21 + 48);
  v82 = a1;
  sub_251BB33C4(a1 + v30, v28, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v83 = a2;
  sub_251BB33C4(a2 + v30, &v28[v31], qword_2813E6D28, type metadata accessor for PBHKConcept);
  v32 = *(v5 + 48);
  if (v32(v28, 1, v4) == 1)
  {
    if (v32(&v28[v31], 1, v4) == 1)
    {
      sub_251BB3444(v28, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_10;
    }

LABEL_6:
    v33 = v28;
LABEL_20:
    sub_251BB242C(v33, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_21;
  }

  sub_251BB33C4(v28, v19, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v32(&v28[v31], 1, v4) == 1)
  {
    sub_251BB2308(v19, type metadata accessor for PBHKConcept);
    goto LABEL_6;
  }

  v34 = v78;
  sub_251BB23C4(&v28[v31], v78, type metadata accessor for PBHKConcept);
  v35 = *(v4 + 20);
  v36 = *&v19[v35];
  v37 = *(v34 + v35);
  if (v36 != v37)
  {
    v38 = *&v19[v35];

    v39 = sub_251B70648(v36, v37);

    if ((v39 & 1) == 0)
    {
      sub_251BB2308(v34, type metadata accessor for PBHKConcept);
      sub_251BB2308(v19, type metadata accessor for PBHKConcept);
      v50 = v28;
      goto LABEL_41;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v40 = sub_251C70ED4();
  sub_251BB2308(v34, type metadata accessor for PBHKConcept);
  sub_251BB2308(v19, type metadata accessor for PBHKConcept);
  sub_251BB3444(v28, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v40 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  v42 = v82;
  v41 = v83;
  if ((*v82 != *v83 || v82[1] != v83[1]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_21;
  }

  v43 = v80[11];
  v44 = *(v79 + 48);
  v45 = v81;
  sub_251BB33C4(v42 + v43, v81, qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251BB33C4(v41 + v43, v45 + v44, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v32(v45, 1, v4) != 1)
  {
    v46 = v77;
    sub_251BB33C4(v45, v77, qword_2813E6D28, type metadata accessor for PBHKConcept);
    if (v32((v45 + v44), 1, v4) == 1)
    {
      v47 = v46;
LABEL_18:
      sub_251BB2308(v47, type metadata accessor for PBHKConcept);
      goto LABEL_19;
    }

    v51 = v76;
    sub_251BB23C4(v45 + v44, v76, type metadata accessor for PBHKConcept);
    v52 = *(v4 + 20);
    v53 = *(v46 + v52);
    v54 = *(v51 + v52);
    if (v53 == v54 || (v55 = *(v46 + v52), , , v56 = sub_251B70648(v53, v54), , , (v56 & 1) != 0))
    {
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
      v57 = sub_251C70ED4();
      sub_251BB2308(v51, type metadata accessor for PBHKConcept);
      sub_251BB2308(v46, type metadata accessor for PBHKConcept);
      sub_251BB3444(v81, qword_2813E6D28, type metadata accessor for PBHKConcept);
      if ((v57 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }

    sub_251BB2308(v51, type metadata accessor for PBHKConcept);
    sub_251BB2308(v46, type metadata accessor for PBHKConcept);
    v50 = v81;
LABEL_41:
    sub_251BB3444(v50, qword_2813E6D28, type metadata accessor for PBHKConcept);
    goto LABEL_21;
  }

  if (v32((v45 + v44), 1, v4) != 1)
  {
LABEL_19:
    v33 = v45;
    goto LABEL_20;
  }

  sub_251BB3444(v45, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_27:
  if ((v42[2] != v41[2] || v42[3] != v41[3]) && (sub_251C719D4() & 1) == 0 || (v42[4] != v41[4] || v42[5] != v41[5]) && (sub_251C719D4() & 1) == 0 || (sub_251A99968(v42[6], v41[6]) & 1) == 0 || (v42[7] != v41[7] || v42[8] != v41[8]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_21;
  }

  v58 = v4;
  v59 = v80[12];
  v60 = *(v79 + 48);
  v61 = v75;
  sub_251BB33C4(v42 + v59, v75, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v45 = v61;
  sub_251BB33C4(v41 + v59, v61 + v60, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v32(v61, 1, v58) == 1)
  {
    if (v32((v61 + v60), 1, v58) == 1)
    {
      sub_251BB3444(v61, qword_2813E6D28, type metadata accessor for PBHKConcept);
LABEL_47:
      v71 = v80[9];
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
      v48 = sub_251C70ED4();
      return v48 & 1;
    }

    goto LABEL_19;
  }

  v62 = v61;
  v63 = v74;
  sub_251BB33C4(v62, v74, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v32((v45 + v60), 1, v58) == 1)
  {
    v47 = v63;
    goto LABEL_18;
  }

  v64 = v73;
  sub_251BB23C4(v45 + v60, v73, type metadata accessor for PBHKConcept);
  v65 = *(v58 + 20);
  v66 = *(v63 + v65);
  v67 = *(v64 + v65);
  if (v66 != v67)
  {
    v68 = *(v63 + v65);

    v69 = sub_251B70648(v66, v67);

    if ((v69 & 1) == 0)
    {
      sub_251BB2308(v64, type metadata accessor for PBHKConcept);
      sub_251BB2308(v63, type metadata accessor for PBHKConcept);
      v50 = v75;
      goto LABEL_41;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v70 = sub_251C70ED4();
  sub_251BB2308(v64, type metadata accessor for PBHKConcept);
  sub_251BB2308(v63, type metadata accessor for PBHKConcept);
  sub_251BB3444(v75, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v70)
  {
    goto LABEL_47;
  }

LABEL_21:
  v48 = 0;
  return v48 & 1;
}

uint64_t sub_251BAD450(uint64_t a1, uint64_t a2)
{
  v118 = a2;
  v3 = type metadata accessor for PBHKMedicationRecord(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v111 = (&v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for PBHKProcedureRecord(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v109 = (&v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = type metadata accessor for PBHKAccountOwner(0);
  v9 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v112 = (&v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PBHKDiagnosticTestReport(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v108 = (&v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = type metadata accessor for PBHKDiagnosticTestResult(0);
  v14 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v110 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PBHKMedicationOrder(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v106 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PBHKMedicationDispenseRecord(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v105 = (&v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for PBHKVaccinationRecord(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v104 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PBHKConditionRecord(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v103 = (&v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for PBHKAllergyRecord(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v102 = (&v101 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v115 = (&v101 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = MEMORY[0x28223BE20](v33);
  v114 = (&v101 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v117 = (&v101 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v113 = (&v101 - v40);
  v41 = MEMORY[0x28223BE20](v39);
  v116 = (&v101 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = (&v101 - v44);
  v46 = MEMORY[0x28223BE20](v43);
  v48 = (&v101 - v47);
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v101 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v54 = (&v101 - v53);
  MEMORY[0x28223BE20](v52);
  v56 = (&v101 - v55);
  sub_251BB2488(0, &qword_27F47B570, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v58 = *(*(v57 - 8) + 64);
  v59 = MEMORY[0x28223BE20](v57 - 8);
  v61 = &v101 - v60;
  v62 = *(v59 + 56);
  sub_251BB24E8(a1, &v101 - v60, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  sub_251BB24E8(v118, &v61[v62], type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_251BB24E8(v61, v54, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v90 = &v61[v62];
          v91 = v103;
          sub_251BB23C4(v90, v103, type metadata accessor for PBHKConditionRecord);
          v66 = sub_251BA91C0(v54, v91);
          v67 = type metadata accessor for PBHKConditionRecord;
          sub_251BB2308(v91, type metadata accessor for PBHKConditionRecord);
          v68 = v54;
          goto LABEL_42;
        }

        v73 = type metadata accessor for PBHKConditionRecord;
        v74 = v54;
      }

      else
      {
        sub_251BB24E8(v61, v56, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
        if (!swift_getEnumCaseMultiPayload())
        {
          v97 = &v61[v62];
          v98 = v102;
          sub_251BB23C4(v97, v102, type metadata accessor for PBHKAllergyRecord);
          v66 = sub_251BAC8C4(v56, v98);
          v67 = type metadata accessor for PBHKAllergyRecord;
          sub_251BB2308(v98, type metadata accessor for PBHKAllergyRecord);
          v68 = v56;
          goto LABEL_42;
        }

        v73 = type metadata accessor for PBHKAllergyRecord;
        v74 = v56;
      }

      goto LABEL_56;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_251BB24E8(v61, v51, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v83 = v104;
        sub_251BB23C4(&v61[v62], v104, type metadata accessor for PBHKVaccinationRecord);
        v66 = sub_251BA5FDC(v51, v83);
        sub_251BB2308(v83, type metadata accessor for PBHKVaccinationRecord);
        v68 = v51;
        v84 = type metadata accessor for PBHKVaccinationRecord;
LABEL_43:
        sub_251BB2308(v68, v84);
        sub_251BB2308(v61, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
        return v66 & 1;
      }

      v73 = type metadata accessor for PBHKVaccinationRecord;
      v74 = v51;
      goto LABEL_56;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_251BB24E8(v61, v48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v64 = &v61[v62];
        v65 = v105;
        sub_251BB23C4(v64, v105, type metadata accessor for PBHKMedicationDispenseRecord);
        v66 = sub_251BA471C(v48, v65);
        v67 = type metadata accessor for PBHKMedicationDispenseRecord;
        sub_251BB2308(v65, type metadata accessor for PBHKMedicationDispenseRecord);
        v68 = v48;
LABEL_42:
        v84 = v67;
        goto LABEL_43;
      }

      v94 = type metadata accessor for PBHKMedicationDispenseRecord;
      goto LABEL_52;
    }

    sub_251BB24E8(v61, v45, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v87 = &v61[v62];
      v88 = v106;
      sub_251BB23C4(v87, v106, type metadata accessor for PBHKMedicationOrder);
      v66 = sub_251BA8664(v45, v88);
      v67 = type metadata accessor for PBHKMedicationOrder;
      sub_251BB2308(v88, type metadata accessor for PBHKMedicationOrder);
      v68 = v45;
      goto LABEL_42;
    }

    v93 = type metadata accessor for PBHKMedicationOrder;
LABEL_49:
    v73 = v93;
    v74 = v45;
LABEL_56:
    sub_251BB2308(v74, v73);
    sub_251BB2368(v61, &qword_27F47B570, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
LABEL_57:
    v66 = 0;
    return v66 & 1;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v69 = v114;
        sub_251BB24E8(v61, v114, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
        if (swift_getEnumCaseMultiPayload() == 8)
        {
          v70 = &v61[v62];
          v71 = v109;
          sub_251BB23C4(v70, v109, type metadata accessor for PBHKProcedureRecord);
          v66 = sub_251BA7420(v69, v71);
          v72 = type metadata accessor for PBHKProcedureRecord;
LABEL_41:
          v67 = v72;
          sub_251BB2308(v71, v72);
          v68 = v69;
          goto LABEL_42;
        }

        v95 = type metadata accessor for PBHKProcedureRecord;
      }

      else
      {
        v69 = v115;
        sub_251BB24E8(v61, v115, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          v89 = &v61[v62];
          v71 = v111;
          sub_251BB23C4(v89, v111, type metadata accessor for PBHKMedicationRecord);
          v66 = sub_251BA6F00(v69, v71);
          v72 = type metadata accessor for PBHKMedicationRecord;
          goto LABEL_41;
        }

        v95 = type metadata accessor for PBHKMedicationRecord;
      }

LABEL_55:
      v73 = v95;
      v74 = v69;
      goto LABEL_56;
    }

    v45 = v117;
    sub_251BB24E8(v61, v117, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      v93 = type metadata accessor for PBHKAccountOwner;
      goto LABEL_49;
    }

    v85 = v112;
    sub_251BB23C4(&v61[v62], v112, type metadata accessor for PBHKAccountOwner);
    if (*v45 == *v85 && v45[1] == v85[1] || (sub_251C719D4()) && (v45[2] == v85[2] && v45[3] == v85[3] || (sub_251C719D4()))
    {
      v86 = *(v101 + 24);
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
      if (sub_251C70ED4())
      {
        v81 = type metadata accessor for PBHKAccountOwner;
        sub_251BB2308(v85, type metadata accessor for PBHKAccountOwner);
        v82 = v45;
        goto LABEL_32;
      }
    }

    v99 = type metadata accessor for PBHKAccountOwner;
    sub_251BB2308(v85, type metadata accessor for PBHKAccountOwner);
    v100 = v45;
LABEL_62:
    sub_251BB2308(v100, v99);
    sub_251BB2308(v61, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    goto LABEL_57;
  }

  if (EnumCaseMultiPayload != 5)
  {
    v69 = v113;
    sub_251BB24E8(v61, v113, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v92 = &v61[v62];
      v71 = v108;
      sub_251BB23C4(v92, v108, type metadata accessor for PBHKDiagnosticTestReport);
      v66 = sub_251BA5240(v69, v71);
      v72 = type metadata accessor for PBHKDiagnosticTestReport;
      goto LABEL_41;
    }

    v95 = type metadata accessor for PBHKDiagnosticTestReport;
    goto LABEL_55;
  }

  v48 = v116;
  sub_251BB24E8(v61, v116, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    v94 = type metadata accessor for PBHKDiagnosticTestResult;
LABEL_52:
    v73 = v94;
    v74 = v48;
    goto LABEL_56;
  }

  v75 = v110;
  sub_251BB23C4(&v61[v62], v110, type metadata accessor for PBHKDiagnosticTestResult);
  v76 = *(v107 + 20);
  v77 = *(v48 + v76);
  v78 = *(v75 + v76);
  if (v77 != v78)
  {
    v79 = *(v48 + v76);

    v80 = sub_251B7C8C8(v77, v78);

    if ((v80 & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  if ((sub_251C70ED4() & 1) == 0)
  {
LABEL_61:
    v99 = type metadata accessor for PBHKDiagnosticTestResult;
    sub_251BB2308(v75, type metadata accessor for PBHKDiagnosticTestResult);
    v100 = v48;
    goto LABEL_62;
  }

  v81 = type metadata accessor for PBHKDiagnosticTestResult;
  sub_251BB2308(v75, type metadata accessor for PBHKDiagnosticTestResult);
  v82 = v48;
LABEL_32:
  sub_251BB2308(v82, v81);
  sub_251BB2308(v61, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v66 = 1;
  return v66 & 1;
}

uint64_t sub_251BAE270(void *a1, void *a2)
{
  v4 = type metadata accessor for PBDateRange(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v26 - v10);
  sub_251BB34B4(0, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v27 = type metadata accessor for PBCategorySeries(0);
  v17 = *(v27 + 28);
  v18 = *(v13 + 56);
  v29 = a1;
  sub_251BB33C4(a1 + v17, v16, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251BB33C4(a2 + v17, &v16[v18], qword_2813E6EE8, type metadata accessor for PBDateRange);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_251BB33C4(v16, v11, qword_2813E6EE8, type metadata accessor for PBDateRange);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = v28;
      sub_251BB23C4(&v16[v18], v28, type metadata accessor for PBDateRange);
      v21 = sub_251BB2194(v11, v20);
      sub_251BB2308(v20, type metadata accessor for PBDateRange);
      sub_251BB2308(v11, type metadata accessor for PBDateRange);
      sub_251BB3444(v16, qword_2813E6EE8, type metadata accessor for PBDateRange);
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      v24 = 0;
      return v24 & 1;
    }

    sub_251BB2308(v11, type metadata accessor for PBDateRange);
LABEL_6:
    sub_251BB242C(v16, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
    goto LABEL_13;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_251BB3444(v16, qword_2813E6EE8, type metadata accessor for PBDateRange);
LABEL_8:
  v22 = v29;
  if ((*v29 != *a2 || v29[1] != a2[1]) && (sub_251C719D4() & 1) == 0 || (sub_251A9A1F8(v22[2], a2[2]) & 1) == 0)
  {
    goto LABEL_13;
  }

  v23 = *(v27 + 24);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v24 = sub_251C70ED4();
  return v24 & 1;
}

uint64_t sub_251BAE674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v57 = &v54 - v11;
  sub_251BB34B4(0, &qword_27F4790E0, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  v58 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v54 - v14;
  v16 = type metadata accessor for PBDateRange(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, v8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = (&v54 - v23);
  sub_251BB34B4(0, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v26 = v25;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v54 - v28;
  if (*a1 != *a2 || (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_22;
  }

  v56 = v15;
  v54 = v7;
  v30 = type metadata accessor for PBCategorySeries.Event(0);
  v61 = a2;
  v55 = v30;
  v31 = *(v30 + 36);
  v32 = *(v26 + 48);
  sub_251BB33C4(a1 + v31, v29, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v33 = v61 + v31;
  v34 = v61;
  sub_251BB33C4(v33, &v29[v32], qword_2813E6EE8, type metadata accessor for PBDateRange);
  v35 = *(v17 + 48);
  if (v35(v29, 1, v16) != 1)
  {
    sub_251BB33C4(v29, v24, qword_2813E6EE8, type metadata accessor for PBDateRange);
    if (v35(&v29[v32], 1, v16) != 1)
    {
      sub_251BB23C4(&v29[v32], v20, type metadata accessor for PBDateRange);
      v40 = sub_251BB2194(v24, v20);
      sub_251BB2308(v20, type metadata accessor for PBDateRange);
      sub_251BB2308(v24, type metadata accessor for PBDateRange);
      sub_251BB3444(v29, qword_2813E6EE8, type metadata accessor for PBDateRange);
      if ((v40 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_12;
    }

    sub_251BB2308(v24, type metadata accessor for PBDateRange);
LABEL_10:
    v36 = &qword_27F4790D0;
    v37 = qword_2813E6EE8;
    v38 = type metadata accessor for PBDateRange;
    v39 = v29;
LABEL_21:
    sub_251BB242C(v39, v36, v37, v38);
    goto LABEL_22;
  }

  if (v35(&v29[v32], 1, v16) != 1)
  {
    goto LABEL_10;
  }

  sub_251BB3444(v29, qword_2813E6EE8, type metadata accessor for PBDateRange);
LABEL_12:
  if ((*(a1 + 24) != *(v34 + 24) || *(a1 + 32) != *(v34 + 32)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_22;
  }

  v42 = v55;
  v41 = v56;
  v43 = *(v55 + 28);
  v44 = *(v58 + 48);
  sub_251BB33C4(a1 + v43, v56, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  sub_251BB33C4(v61 + v43, v41 + v44, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  v45 = v60;
  v46 = *(v59 + 48);
  if (v46(v41, 1, v60) == 1)
  {
    if (v46(v41 + v44, 1, v45) == 1)
    {
      sub_251BB3444(v41, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
LABEL_25:
      v53 = *(v42 + 32);
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
      v48 = sub_251C70ED4();
      return v48 & 1;
    }

    goto LABEL_20;
  }

  v47 = v57;
  sub_251BB33C4(v41, v57, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  if (v46(v41 + v44, 1, v45) == 1)
  {
    sub_251BB2308(v47, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
LABEL_20:
    v36 = &qword_27F4790E0;
    v37 = qword_2813E5FC8;
    v38 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData;
    v39 = v41;
    goto LABEL_21;
  }

  v50 = v41 + v44;
  v51 = v54;
  sub_251BB23C4(v50, v54, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  v52 = sub_251BAEDDC(v47, v51);
  sub_251BB2308(v51, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  sub_251BB2308(v47, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  sub_251BB3444(v41, qword_2813E5FC8, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  if (v52)
  {
    goto LABEL_25;
  }

LABEL_22:
  v48 = 0;
  return v48 & 1;
}

BOOL sub_251BAEDDC(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v44 = type metadata accessor for PBCategorySeries.Range(0);
  v3 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v45 = (&v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v44 - v11);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v44 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v44 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v44 - v20);
  MEMORY[0x28223BE20](v19);
  v46 = (&v44 - v22);
  sub_251BB2488(0, &qword_27F47B560, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v44 - v26;
  v28 = (&v44 + *(v25 + 56) - v26);
  sub_251BB24E8(a1, &v44 - v26, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  sub_251BB24E8(v47, v28, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v37 = v46;
      sub_251BB24E8(v27, v46, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_251BB2308(v37, type metadata accessor for PBCategorySeries.Range);
        goto LABEL_39;
      }

      v40 = v45;
      sub_251BB23C4(v28, v45, type metadata accessor for PBCategorySeries.Range);
      if (*v37 == *v40 && v37[1] == v40[1])
      {
        v41 = *(v44 + 24);
        sub_251C703B4();
        sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
        LOBYTE(v41) = sub_251C70ED4();
        sub_251BB2308(v40, type metadata accessor for PBCategorySeries.Range);
        if (v41)
        {
          sub_251BB2308(v37, type metadata accessor for PBCategorySeries.Range);
          goto LABEL_48;
        }
      }

      else
      {
        sub_251BB2308(v40, type metadata accessor for PBCategorySeries.Range);
      }

      sub_251BB2308(v37, type metadata accessor for PBCategorySeries.Range);
      goto LABEL_50;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_251BB24E8(v27, v21, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
      v31 = *v21;
      v30 = v21[1];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (v31 == *v28 && v30 == v28[1])
        {
          v42 = v28[1];
        }

        else
        {
          v33 = v28[1];
          v34 = sub_251C719D4();

          if ((v34 & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        goto LABEL_48;
      }

LABEL_39:
      sub_251BB2368(v27, &qword_27F47B560, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
      return 0;
    }

    sub_251BB24E8(v27, v18, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
    v35 = *v18;
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_39;
    }

    v36 = *v28;
    if (*(v28 + 8) == 1)
    {
      if (v36 <= 1)
      {
        goto LABEL_27;
      }

LABEL_33:
      if (v36 == 2)
      {
        goto LABEL_34;
      }

      goto LABEL_47;
    }

    goto LABEL_36;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_251BB24E8(v27, v12, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
      v35 = *v12;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_39;
      }

      v36 = *v28;
      if (*(v28 + 8) == 1)
      {
        if (v36 <= 1)
        {
LABEL_27:
          if (!v36)
          {
            if (!v35)
            {
              goto LABEL_48;
            }

LABEL_50:
            sub_251BB2308(v27, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
            return 0;
          }

          if (v35 != 1)
          {
            goto LABEL_50;
          }

LABEL_48:
          sub_251BB2308(v27, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
          return 1;
        }

        if (v36 == 2)
        {
LABEL_34:
          if (v35 != 2)
          {
            goto LABEL_50;
          }

          goto LABEL_48;
        }

        if (v36 != 3)
        {
          if (v35 != 4)
          {
            goto LABEL_50;
          }

          goto LABEL_48;
        }

LABEL_47:
        if (v35 != 3)
        {
          goto LABEL_50;
        }

        goto LABEL_48;
      }
    }

    else
    {
      sub_251BB24E8(v27, v9, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
      v35 = *v9;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_39;
      }

      v36 = *v28;
      if (*(v28 + 8) == 1)
      {
        if (v36 <= 1)
        {
          goto LABEL_27;
        }

        goto LABEL_33;
      }
    }

LABEL_36:
    if (v35 != v36)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  sub_251BB24E8(v27, v15, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_39;
  }

  v38 = *(v28 + 8);
  v39 = sub_251A74D48(*v15, v15[8], *v28);
  sub_251BB2308(v27, type metadata accessor for PBCategorySeries.Event.OneOf_AdditionalData);
  return v39;
}

uint64_t sub_251BAF44C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBCycleTracking.Range(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v53 = (&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v10 = (&v49 - v9);
  sub_251B67AAC(0, qword_2813E6108, type metadata accessor for PBCycleTracking.Range, MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v54 = (&v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v16 = (&v49 - v15);
  sub_251BB34B4(0, &qword_27F47B5A0, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  v18 = v17;
  v19 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - v23;
  if ((sub_251A9AD0C(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_23;
  }

  v50 = v22;
  v25 = type metadata accessor for PBCycleTracking(0);
  v52 = a2;
  v49 = v25;
  v26 = *(v25 + 36);
  v27 = *(v18 + 48);
  v51 = a1;
  sub_251BB33C4(a1 + v26, v24, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  v28 = v52 + v26;
  v29 = v52;
  sub_251BB33C4(v28, &v24[v27], qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  v30 = *(v5 + 48);
  if (v30(v24, 1, v4) == 1)
  {
    if (v30(&v24[v27], 1, v4) == 1)
    {
      goto LABEL_5;
    }

LABEL_14:
    v39 = v24;
LABEL_15:
    sub_251BB242C(v39, &qword_27F47B5A0, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
    goto LABEL_23;
  }

  sub_251BB33C4(v24, v16, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  if (v30(&v24[v27], 1, v4) == 1)
  {
    sub_251BB2308(v16, type metadata accessor for PBCycleTracking.Range);
    goto LABEL_14;
  }

  sub_251BB23C4(&v24[v27], v10, type metadata accessor for PBCycleTracking.Range);
  if (*v16 != *v10 || v16[1] != v10[1])
  {
    sub_251BB2308(v10, type metadata accessor for PBCycleTracking.Range);
    goto LABEL_21;
  }

  v40 = *(v4 + 24);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v41 = sub_251C70ED4();
  sub_251BB2308(v10, type metadata accessor for PBCycleTracking.Range);
  if ((v41 & 1) == 0)
  {
LABEL_21:
    sub_251BB2308(v16, type metadata accessor for PBCycleTracking.Range);
    v42 = v24;
LABEL_22:
    sub_251BB3444(v42, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
    goto LABEL_23;
  }

  sub_251BB2308(v16, type metadata accessor for PBCycleTracking.Range);
  v29 = v52;
LABEL_5:
  sub_251BB3444(v24, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  if (*(v51 + 12) != *(v29 + 12))
  {
LABEL_23:
    v38 = 0;
    return v38 & 1;
  }

  v31 = v49;
  v32 = *(v49 + 40);
  v33 = *(v18 + 48);
  v34 = v50;
  sub_251BB33C4(v51 + v32, v50, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  v35 = v52 + v32;
  v36 = v52;
  sub_251BB33C4(v35, v34 + v33, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  if (v30(v34, 1, v4) == 1)
  {
    if (v30((v34 + v33), 1, v4) == 1)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

  v44 = v54;
  sub_251BB33C4(v34, v54, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  if (v30((v34 + v33), 1, v4) == 1)
  {
    sub_251BB2308(v44, type metadata accessor for PBCycleTracking.Range);
LABEL_27:
    v39 = v34;
    goto LABEL_15;
  }

  v45 = v34 + v33;
  v46 = v53;
  sub_251BB23C4(v45, v53, type metadata accessor for PBCycleTracking.Range);
  if (*v44 != *v46 || v44[1] != v46[1])
  {
    sub_251BB2308(v46, type metadata accessor for PBCycleTracking.Range);
    goto LABEL_33;
  }

  v47 = *(v4 + 24);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v48 = sub_251C70ED4();
  sub_251BB2308(v46, type metadata accessor for PBCycleTracking.Range);
  if ((v48 & 1) == 0)
  {
LABEL_33:
    sub_251BB2308(v44, type metadata accessor for PBCycleTracking.Range);
    v42 = v50;
    goto LABEL_22;
  }

  sub_251BB2308(v44, type metadata accessor for PBCycleTracking.Range);
  v34 = v50;
LABEL_8:
  sub_251BB3444(v34, qword_2813E6108, type metadata accessor for PBCycleTracking.Range);
  if ((*(v51 + 16) != *(v36 + 16) || *(v51 + 24) != *(v36 + 24)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_23;
  }

  v37 = *(v31 + 32);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v38 = sub_251C70ED4();
  return v38 & 1;
}

uint64_t sub_251BAFC4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBCycleTracking.SexualActivity(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B67AAC(0, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  sub_251BB34B4(0, &qword_27F47B5A8, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity);
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_57;
  }

  v18 = *(a1 + 16);
  v19 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        if (v18 != 3)
        {
          goto LABEL_57;
        }
      }

      else if (v19 == 4)
      {
        if (v18 != 4)
        {
          goto LABEL_57;
        }
      }

      else if (v18 != 5)
      {
        goto LABEL_57;
      }
    }

    else if (v19)
    {
      if (v19 == 1)
      {
        if (v18 != 1)
        {
          goto LABEL_57;
        }
      }

      else if (v18 != 2)
      {
        goto LABEL_57;
      }
    }

    else if (v18)
    {
      goto LABEL_57;
    }
  }

  else if (v18 != v19)
  {
    goto LABEL_57;
  }

  v33 = v8;
  v32 = type metadata accessor for PBCycleTracking.Event(0);
  v20 = *(v32 + 48);
  v21 = *(v14 + 48);
  sub_251BB33C4(a1 + v20, v17, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity);
  sub_251BB33C4(a2 + v20, &v17[v21], qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity);
  v22 = *(v5 + 48);
  if (v22(v17, 1, v4) == 1)
  {
    if (v22(&v17[v21], 1, v4) == 1)
    {
      goto LABEL_13;
    }

LABEL_25:
    sub_251BB242C(v17, &qword_27F47B5A8, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity);
    goto LABEL_57;
  }

  sub_251BB33C4(v17, v12, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity);
  if (v22(&v17[v21], 1, v4) == 1)
  {
    sub_251BB2308(v12, type metadata accessor for PBCycleTracking.SexualActivity);
    goto LABEL_25;
  }

  v25 = &v17[v21];
  v26 = v33;
  sub_251BB23C4(v25, v33, type metadata accessor for PBCycleTracking.SexualActivity);
  if (*v12 != *v26 || v12[1] != v26[1])
  {
    sub_251BB2308(v26, type metadata accessor for PBCycleTracking.SexualActivity);
LABEL_29:
    sub_251BB2308(v12, type metadata accessor for PBCycleTracking.SexualActivity);
    sub_251BB3444(v17, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity);
    goto LABEL_57;
  }

  v29 = *(v4 + 24);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v30 = sub_251C70ED4();
  sub_251BB2308(v26, type metadata accessor for PBCycleTracking.SexualActivity);
  if ((v30 & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_251BB2308(v12, type metadata accessor for PBCycleTracking.SexualActivity);
LABEL_13:
  sub_251BB3444(v17, qword_2813E62F8, type metadata accessor for PBCycleTracking.SexualActivity);
  v23 = *(a1 + 32);
  v24 = *(a2 + 32);
  if (*(a2 + 40) != 1)
  {
    if (v23 == v24)
    {
      goto LABEL_39;
    }

    goto LABEL_57;
  }

  if (v24 > 2)
  {
    if (v24 == 3)
    {
      if (v23 != 3)
      {
        goto LABEL_57;
      }

      goto LABEL_39;
    }

    if (v24 == 4)
    {
      if (v23 != 4)
      {
        goto LABEL_57;
      }

      goto LABEL_39;
    }

    if (v23 == 5)
    {
      goto LABEL_39;
    }

LABEL_57:
    v28 = 0;
    return v28 & 1;
  }

  if (!v24)
  {
    if (!v23)
    {
      goto LABEL_39;
    }

    goto LABEL_57;
  }

  if (v24 == 1)
  {
    if (v23 != 1)
    {
      goto LABEL_57;
    }
  }

  else if (v23 != 2)
  {
    goto LABEL_57;
  }

LABEL_39:
  if (*(a1 + 44) != *(a2 + 44) || *(a1 + 48) != *(a2 + 48) || (sub_251A93C70(*(a1 + 56), *(a2 + 56)) & 1) == 0 || (sub_251A9B180(*(a1 + 64), *(a2 + 64)) & 1) == 0)
  {
    goto LABEL_57;
  }

  v27 = *(v32 + 44);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v28 = sub_251C70ED4();
  return v28 & 1;
}

uint64_t sub_251BB0248(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_251C719D4() & 1) == 0 || (sub_251A9B314(*(a1 + 32), *(a2 + 32)) & 1) == 0 || *(a1 + 40) != *(a2 + 40) || *(a1 + 44) != *(a2 + 44))
  {
    return 0;
  }

  v6 = *(type metadata accessor for PBCycleTracking.Cycle(0) + 36);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BB0358(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5] || a1[6] != a2[6] || *(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3))
  {
    return 0;
  }

  v2 = *(type metadata accessor for PBSleepSummary.Schedule(0) + 52);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BB0480(uint64_t *a1, uint64_t *a2)
{
  v71 = a2;
  v3 = type metadata accessor for PBHKInspectableValue(0);
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  MEMORY[0x28223BE20](v3);
  v63 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E4B40, type metadata accessor for PBHKInspectableValue, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v64 = &v62 - v9;
  sub_251BB34B4(0, &qword_27F47B588, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  v65 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v69 = &v62 - v12;
  v13 = type metadata accessor for PBHKConcept(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, v6);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v62 - v20;
  sub_251BB34B4(0, &qword_27F4790E8, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v62 - v25;
  v66 = type metadata accessor for PBHKCodedValue(0);
  v27 = *(v66 + 24);
  v28 = *(v23 + 56);
  v70 = a1;
  sub_251BB33C4(a1 + v27, v26, qword_2813E6D28, type metadata accessor for PBHKConcept);
  v29 = v71;
  sub_251BB33C4(v71 + v27, &v26[v28], qword_2813E6D28, type metadata accessor for PBHKConcept);
  v30 = *(v14 + 48);
  if (v30(v26, 1, v13) == 1)
  {
    if (v30(&v26[v28], 1, v13) == 1)
    {
      sub_251BB3444(v26, qword_2813E6D28, type metadata accessor for PBHKConcept);
      goto LABEL_10;
    }

LABEL_6:
    v31 = &qword_27F4790E8;
    v32 = qword_2813E6D28;
    v33 = type metadata accessor for PBHKConcept;
    v34 = v26;
LABEL_16:
    sub_251BB242C(v34, v31, v32, v33);
    goto LABEL_17;
  }

  sub_251BB33C4(v26, v21, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if (v30(&v26[v28], 1, v13) == 1)
  {
    sub_251BB2308(v21, type metadata accessor for PBHKConcept);
    goto LABEL_6;
  }

  sub_251BB23C4(&v26[v28], v17, type metadata accessor for PBHKConcept);
  v35 = *(v13 + 20);
  v36 = *&v21[v35];
  v37 = *&v17[v35];
  if (v36 != v37)
  {
    v38 = *&v21[v35];

    v39 = sub_251B70648(v36, v37);

    if ((v39 & 1) == 0)
    {
      sub_251BB2308(v17, type metadata accessor for PBHKConcept);
      sub_251BB2308(v21, type metadata accessor for PBHKConcept);
      v59 = qword_2813E6D28;
      v60 = type metadata accessor for PBHKConcept;
      v61 = v26;
      goto LABEL_26;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v40 = sub_251C70ED4();
  sub_251BB2308(v17, type metadata accessor for PBHKConcept);
  sub_251BB2308(v21, type metadata accessor for PBHKConcept);
  sub_251BB3444(v26, qword_2813E6D28, type metadata accessor for PBHKConcept);
  if ((v40 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v41 = v66;
  v42 = *(v66 + 28);
  v43 = *(v65 + 48);
  v45 = v69;
  v44 = v70;
  sub_251BB33C4(v70 + v42, v69, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  sub_251BB33C4(v29 + v42, v45 + v43, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  v46 = v68;
  v47 = *(v67 + 48);
  if (v47(v45, 1, v68) != 1)
  {
    v48 = v64;
    sub_251BB33C4(v45, v64, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
    if (v47(v45 + v43, 1, v46) == 1)
    {
      sub_251BB2308(v48, type metadata accessor for PBHKInspectableValue);
      goto LABEL_15;
    }

    v51 = v63;
    sub_251BB23C4(v45 + v43, v63, type metadata accessor for PBHKInspectableValue);
    v52 = *(v46 + 20);
    v53 = *(v48 + v52);
    v54 = *(v51 + v52);
    if (v53 == v54 || (v55 = *(v48 + v52), , , v56 = sub_251B83760(v53, v54), , , v56))
    {
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
      v57 = sub_251C70ED4();
      sub_251BB2308(v51, type metadata accessor for PBHKInspectableValue);
      sub_251BB2308(v48, type metadata accessor for PBHKInspectableValue);
      sub_251BB3444(v45, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
      if ((v57 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    sub_251BB2308(v51, type metadata accessor for PBHKInspectableValue);
    sub_251BB2308(v48, type metadata accessor for PBHKInspectableValue);
    v59 = qword_2813E4B40;
    v60 = type metadata accessor for PBHKInspectableValue;
    v61 = v45;
LABEL_26:
    sub_251BB3444(v61, v59, v60);
    goto LABEL_17;
  }

  if (v47(v45 + v43, 1, v46) != 1)
  {
LABEL_15:
    v31 = &qword_27F47B588;
    v32 = qword_2813E4B40;
    v33 = type metadata accessor for PBHKInspectableValue;
    v34 = v45;
    goto LABEL_16;
  }

  sub_251BB3444(v45, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
LABEL_22:
  if (sub_251A9B63C(*v44, *v29))
  {
    v58 = *(v41 + 20);
    sub_251C703B4();
    sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
    v49 = sub_251C70ED4();
    return v49 & 1;
  }

LABEL_17:
  v49 = 0;
  return v49 & 1;
}

uint64_t sub_251BB0D30(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_251C719D4() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v5 = *(type metadata accessor for PBSleepSeries.Value(0) + 32);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BB0E20(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PBPatientMeta.HumanName(0);
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = *(v64 + 64);
  MEMORY[0x28223BE20](v4);
  v62 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E6758, type metadata accessor for PBPatientMeta.HumanName, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = (&v59 - v10);
  sub_251BB34B4(0, &qword_27F47B5B0, qword_2813E6758, type metadata accessor for PBPatientMeta.HumanName);
  v12 = v11;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v66 = &v59 - v14;
  v15 = type metadata accessor for PBPatientMeta.HeartRateMeds(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B67AAC(0, qword_2813E6890, type metadata accessor for PBPatientMeta.HeartRateMeds, v7);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v59 - v22;
  sub_251BB34B4(0, &qword_27F47B5B8, qword_2813E6890, type metadata accessor for PBPatientMeta.HeartRateMeds);
  v25 = v24;
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v59 - v27;
  if (*a1 != *a2 || (sub_251A9BE88(a1[1], a2[1]) & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_251C719D4() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_26;
  }

  v60 = type metadata accessor for PBPatientMeta(0);
  v61 = a2;
  v29 = *(v60 + 40);
  v30 = a1;
  v31 = *(v25 + 48);
  v59 = v30;
  sub_251BB33C4(v30 + v29, v28, qword_2813E6890, type metadata accessor for PBPatientMeta.HeartRateMeds);
  sub_251BB33C4(v61 + v29, &v28[v31], qword_2813E6890, type metadata accessor for PBPatientMeta.HeartRateMeds);
  v32 = *(v16 + 48);
  if (v32(v28, 1, v15) == 1)
  {
    if (v32(&v28[v31], 1, v15) == 1)
    {
      goto LABEL_11;
    }

LABEL_16:
    v42 = &qword_27F47B5B8;
    v43 = qword_2813E6890;
    v44 = type metadata accessor for PBPatientMeta.HeartRateMeds;
    v45 = v28;
LABEL_25:
    sub_251BB242C(v45, v42, v43, v44);
    goto LABEL_26;
  }

  sub_251BB33C4(v28, v23, qword_2813E6890, type metadata accessor for PBPatientMeta.HeartRateMeds);
  if (v32(&v28[v31], 1, v15) == 1)
  {
    sub_251BB2308(v23, type metadata accessor for PBPatientMeta.HeartRateMeds);
    goto LABEL_16;
  }

  sub_251BB23C4(&v28[v31], v19, type metadata accessor for PBPatientMeta.HeartRateMeds);
  if (*v23 != *v19 || v23[1] != v19[1])
  {
    sub_251BB2308(v19, type metadata accessor for PBPatientMeta.HeartRateMeds);
LABEL_20:
    sub_251BB2308(v23, type metadata accessor for PBPatientMeta.HeartRateMeds);
    v46 = qword_2813E6890;
    v47 = type metadata accessor for PBPatientMeta.HeartRateMeds;
    v48 = v28;
    goto LABEL_21;
  }

  v57 = *(v15 + 24);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  v58 = sub_251C70ED4();
  sub_251BB2308(v19, type metadata accessor for PBPatientMeta.HeartRateMeds);
  if ((v58 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_251BB2308(v23, type metadata accessor for PBPatientMeta.HeartRateMeds);
LABEL_11:
  sub_251BB3444(v28, qword_2813E6890, type metadata accessor for PBPatientMeta.HeartRateMeds);
  v33 = v59;
  v34 = v60;
  v35 = *(v60 + 44);
  v36 = *(v12 + 48);
  v37 = v66;
  sub_251BB33C4(v59 + v35, v66, qword_2813E6758, type metadata accessor for PBPatientMeta.HumanName);
  v38 = v61 + v35;
  v39 = v61;
  sub_251BB33C4(v38, v37 + v36, qword_2813E6758, type metadata accessor for PBPatientMeta.HumanName);
  v40 = v65;
  v41 = *(v64 + 48);
  if (v41(v37, 1, v65) != 1)
  {
    v49 = v63;
    sub_251BB33C4(v37, v63, qword_2813E6758, type metadata accessor for PBPatientMeta.HumanName);
    if (v41(v37 + v36, 1, v40) == 1)
    {
      sub_251BB2308(v49, type metadata accessor for PBPatientMeta.HumanName);
      goto LABEL_24;
    }

    v52 = v37 + v36;
    v53 = v62;
    sub_251BB23C4(v52, v62, type metadata accessor for PBPatientMeta.HumanName);
    if (*v49 == *v53 && v49[1] == v53[1] || (sub_251C719D4()) && (v49[2] == v53[2] && v49[3] == v53[3] || (sub_251C719D4()))
    {
      v54 = *(v40 + 24);
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
      v39 = v61;
      v55 = sub_251C70ED4();
      sub_251BB2308(v53, type metadata accessor for PBPatientMeta.HumanName);
      sub_251BB2308(v49, type metadata accessor for PBPatientMeta.HumanName);
      sub_251BB3444(v37, qword_2813E6758, type metadata accessor for PBPatientMeta.HumanName);
      if ((v55 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_35;
    }

    sub_251BB2308(v53, type metadata accessor for PBPatientMeta.HumanName);
    sub_251BB2308(v49, type metadata accessor for PBPatientMeta.HumanName);
    v46 = qword_2813E6758;
    v47 = type metadata accessor for PBPatientMeta.HumanName;
    v48 = v37;
LABEL_21:
    sub_251BB3444(v48, v46, v47);
    goto LABEL_26;
  }

  if (v41(v37 + v36, 1, v40) != 1)
  {
LABEL_24:
    v42 = &qword_27F47B5B0;
    v43 = qword_2813E6758;
    v44 = type metadata accessor for PBPatientMeta.HumanName;
    v45 = v37;
    goto LABEL_25;
  }

  sub_251BB3444(v37, qword_2813E6758, type metadata accessor for PBPatientMeta.HumanName);
LABEL_35:
  if (v33[6] == v39[6] && v33[7] == v39[7] || (sub_251C719D4() & 1) != 0)
  {
    v56 = *(v34 + 36);
    sub_251C703B4();
    sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
    v50 = sub_251C70ED4();
    return v50 & 1;
  }

LABEL_26:
  v50 = 0;
  return v50 & 1;
}

uint64_t sub_251BB1754(void *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_251C719D4() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3(0) + 28);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BB1860(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
  {
    if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) || (v2 = a1, v3 = *(a1 + 24), v4 = a2, v5 = sub_251C719D4(), a2 = v4, v6 = v5, a1 = v2, (v6 & 1) != 0))
    {
      if (*(a1 + 40) == *(a2 + 40))
      {
        if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) || (v7 = a1, v8 = *(a1 + 48), v9 = a2, v10 = sub_251C719D4(), a2 = v9, v11 = v10, a1 = v7, (v11 & 1) != 0))
        {
          if (*(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72) || (v12 = a1, v13 = *(a1 + 64), v14 = a2, v15 = sub_251C719D4(), a2 = v14, v16 = v15, a1 = v12, (v16 & 1) != 0))
          {
            if (*(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88) && *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104) && *(a1 + 112) == *(a2 + 112))
            {
              v17 = a1;
              v18 = a2;
              if (sub_251A93C70(*(a1 + 120), *(a2 + 120)))
              {
                v19 = *(v18 + 137);
                if (*(v17 + 137))
                {
                  if (*(v18 + 137))
                  {
LABEL_24:
                    v20 = *(type metadata accessor for PBTimeSeries.Value(0) + 80);
                    sub_251C703B4();
                    sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
                    return sub_251C70ED4() & 1;
                  }
                }

                else if ((*(v18 + 137) & 1) == 0)
                {
                  v22 = *(v17 + 128);
                  v23 = *(v18 + 128);
                  if (*(v18 + 136))
                  {
                    if (v23)
                    {
                      if (v23 == 1)
                      {
                        if (v22 == 1)
                        {
                          goto LABEL_24;
                        }
                      }

                      else if (v22 == 2)
                      {
                        goto LABEL_24;
                      }
                    }

                    else if (!v22)
                    {
                      goto LABEL_24;
                    }
                  }

                  else if (v22 == v23)
                  {
                    goto LABEL_24;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_251BB1AEC(void *a1, void *a2)
{
  v4 = type metadata accessor for PBDateRange(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B67AAC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v26 - v10);
  sub_251BB34B4(0, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v27 = type metadata accessor for PBTimeSeries(0);
  v17 = *(v27 + 32);
  v18 = *(v13 + 56);
  v29 = a1;
  sub_251BB33C4(a1 + v17, v16, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251BB33C4(a2 + v17, &v16[v18], qword_2813E6EE8, type metadata accessor for PBDateRange);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_251BB33C4(v16, v11, qword_2813E6EE8, type metadata accessor for PBDateRange);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v28;
      sub_251BB23C4(&v16[v18], v28, type metadata accessor for PBDateRange);
      v23 = sub_251BB2194(v11, v22);
      sub_251BB2308(v22, type metadata accessor for PBDateRange);
      sub_251BB2308(v11, type metadata accessor for PBDateRange);
      sub_251BB3444(v16, qword_2813E6EE8, type metadata accessor for PBDateRange);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_251BB2308(v11, type metadata accessor for PBDateRange);
LABEL_6:
    sub_251BB242C(v16, &qword_27F4790D0, qword_2813E6EE8, type metadata accessor for PBDateRange);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_251BB3444(v16, qword_2813E6EE8, type metadata accessor for PBDateRange);
LABEL_10:
  v24 = v29;
  if (*v29 == *a2 && v29[1] == a2[1] || (sub_251C719D4()) && (v24[2] == a2[2] && v24[3] == a2[3] || (sub_251C719D4()) && (sub_251A9C444(v24[4], a2[4]))
  {
    v25 = *(v27 + 28);
    sub_251C703B4();
    sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
    v20 = sub_251C70ED4();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_251BB1F0C(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (sub_251C719D4() & 1) == 0 || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  if ((*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80)) && (sub_251C719D4() & 1) == 0 || (sub_251A93C70(*(a1 + 88), *(a2 + 88)) & 1) == 0 || *(a1 + 96) != *(a2 + 96) || !sub_251B5CAD0(*(a1 + 104), *(a1 + 112), *(a2 + 104), *(a2 + 112)))
  {
    return 0;
  }

  v6 = *(type metadata accessor for PBECGMeta(0) + 52);
  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BB20A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {
    v10 = *(a1 + v7);

    v11 = a4(v8, v9);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_251C703B4();
  sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BB2194(void *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4];
  v7 = *(a2 + 32);
  if (*(a2 + 40) == 1)
  {
    if (v7 > 2)
    {
      if (v7 > 4)
      {
        if (v7 == 5)
        {
          if (v6 != 5)
          {
            return 0;
          }
        }

        else if (v6 != 6)
        {
          return 0;
        }
      }

      else if (v7 == 3)
      {
        if (v6 != 3)
        {
          return 0;
        }
      }

      else if (v6 != 4)
      {
        return 0;
      }

LABEL_18:
      v8 = *(type metadata accessor for PBDateRange(0) + 28);
      sub_251C703B4();
      sub_251B9ED44(&qword_27F478F98, MEMORY[0x277D216C8]);
      return sub_251C70ED4() & 1;
    }

    if (v7)
    {
      if (v7 == 1)
      {
        if (v6 != 1)
        {
          return 0;
        }
      }

      else if (v6 != 2)
      {
        return 0;
      }

      goto LABEL_18;
    }

    if (!v6)
    {
      goto LABEL_18;
    }
  }

  else if (v6 == v7)
  {
    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_251BB2308(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251BB2368(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_251BB2488(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251BB23C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251BB242C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251BB34B4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_251BB2488(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_251BB24E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_251BB2550()
{
  result = qword_27F47B5D0;
  if (!qword_27F47B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B5D0);
  }

  return result;
}

unint64_t sub_251BB25A4()
{
  result = qword_27F47B5E8;
  if (!qword_27F47B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B5E8);
  }

  return result;
}

unint64_t sub_251BB25F8()
{
  result = qword_27F47B640;
  if (!qword_27F47B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B640);
  }

  return result;
}

unint64_t sub_251BB264C()
{
  result = qword_27F47B648;
  if (!qword_27F47B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B648);
  }

  return result;
}

unint64_t sub_251BB26A0()
{
  result = qword_27F47B650;
  if (!qword_27F47B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B650);
  }

  return result;
}

unint64_t sub_251BB26F4()
{
  result = qword_27F47B658;
  if (!qword_27F47B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B658);
  }

  return result;
}

unint64_t sub_251BB2748()
{
  result = qword_27F47B678;
  if (!qword_27F47B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B678);
  }

  return result;
}

unint64_t sub_251BB279C()
{
  result = qword_27F47B690;
  if (!qword_27F47B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B690);
  }

  return result;
}

char *sub_251BB27F0(void *a1)
{
  v21 = type metadata accessor for PBHKConcept;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  *(v1 + 2) = 0;
  *(v1 + 3) = 0xE000000000000000;
  *(v1 + 4) = 0;
  *(v1 + 5) = 0xE000000000000000;
  *(v1 + 6) = 0;
  *(v1 + 7) = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__groupBy;
  v8 = type metadata accessor for PBHKConcept(0);
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__isInMemory;
  v1[OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__isInMemory] = 0;
  swift_beginAccess();
  v10 = a1[2];
  v11 = a1[3];
  swift_beginAccess();
  *(v1 + 2) = v10;
  *(v1 + 3) = v11;
  swift_beginAccess();
  v12 = a1[4];
  v13 = a1[5];
  swift_beginAccess();
  *(v1 + 4) = v12;
  *(v1 + 5) = v13;
  swift_beginAccess();
  v14 = a1[6];
  v15 = a1[7];
  swift_beginAccess();
  *(v1 + 6) = v14;
  *(v1 + 7) = v15;
  v16 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__groupBy;

  swift_beginAccess();
  v17 = v21;
  sub_251BB33C4(a1 + v16, v6, qword_2813E6D28, v21);
  swift_beginAccess();
  sub_251BB3050(v6, &v1[v7], qword_2813E6D28, v17);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__isInMemory;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v18);
  swift_beginAccess();
  v1[v9] = a1;
  return v1;
}

char *sub_251BB2A8C(void *a1)
{
  v52 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
  v3 = MEMORY[0x277D83D88];
  sub_251B67AAC(0, qword_2813E5D48, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v47 - v6;
  v49 = type metadata accessor for PBHKConcept;
  sub_251B67AAC(0, qword_2813E6D28, type metadata accessor for PBHKConcept, v3);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v47 - v9;
  *(v1 + 2) = 0;
  *(v1 + 3) = 0xE000000000000000;
  *(v1 + 4) = 0;
  *(v1 + 5) = 0xE000000000000000;
  v11 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__primaryConcept;
  v47 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__primaryConcept;
  v12 = type metadata accessor for PBHKConcept(0);
  (*(*(v12 - 8) + 56))(&v1[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  v48 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  v14 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  (*(*(v14 - 8) + 56))(&v1[v13], 1, 1, v14);
  v15 = &v1[OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__source];
  *v15 = 0;
  *(v15 + 1) = 0xE000000000000000;
  v16 = &v1[OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__gatewayID];
  *v16 = 0;
  *(v16 + 1) = 0xE000000000000000;
  v17 = &v1[OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName];
  v50 = &v1[OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName];
  *v17 = 0;
  *(v17 + 1) = 0xE000000000000000;
  v18 = &v1[OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecordOriginType];
  v53 = &v1[OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecordOriginType];
  *v18 = 0;
  v18[8] = 1;
  swift_beginAccess();
  v20 = a1[2];
  v19 = a1[3];
  swift_beginAccess();
  *(v1 + 2) = v20;
  *(v1 + 3) = v19;
  swift_beginAccess();
  v22 = a1[4];
  v21 = a1[5];
  swift_beginAccess();
  *(v1 + 4) = v22;
  *(v1 + 5) = v21;
  v23 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__primaryConcept;
  swift_beginAccess();
  v24 = v49;
  sub_251BB33C4(a1 + v23, v10, qword_2813E6D28, v49);
  v25 = v47;
  swift_beginAccess();

  sub_251BB3050(v10, &v1[v25], qword_2813E6D28, v24);
  swift_endAccess();
  v26 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  v28 = v51;
  v27 = v52;
  sub_251BB33C4(a1 + v26, v51, qword_2813E5D48, v52);
  v29 = v48;
  swift_beginAccess();
  sub_251BB3050(v28, &v1[v29], qword_2813E5D48, v27);
  swift_endAccess();
  v30 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__source);
  swift_beginAccess();
  v32 = *v30;
  v31 = v30[1];
  swift_beginAccess();
  v33 = *(v15 + 1);
  *v15 = v32;
  *(v15 + 1) = v31;

  v34 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__gatewayID);
  swift_beginAccess();
  v36 = *v34;
  v35 = v34[1];
  swift_beginAccess();
  v37 = *(v16 + 1);
  *v16 = v36;
  *(v16 + 1) = v35;

  v38 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__iosDerivedDisplayName);
  swift_beginAccess();
  v40 = *v38;
  v39 = v38[1];
  v41 = v50;
  swift_beginAccess();
  v42 = *(v41 + 1);
  *v41 = v40;
  *(v41 + 1) = v39;

  v43 = a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecordOriginType;
  swift_beginAccess();
  v44 = *v43;
  LOBYTE(v43) = v43[8];
  v45 = v53;
  swift_beginAccess();
  *v45 = v44;
  v45[8] = v43;
  return v1;
}

unint64_t sub_251BB2F54()
{
  result = qword_27F47B738;
  if (!qword_27F47B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B738);
  }

  return result;
}

unint64_t sub_251BB2FA8()
{
  result = qword_27F47B770;
  if (!qword_27F47B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B770);
  }

  return result;
}

unint64_t sub_251BB2FFC()
{
  result = qword_27F47B780;
  if (!qword_27F47B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B780);
  }

  return result;
}

uint64_t sub_251BB3050(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251B67AAC(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_251BB30D0()
{
  result = qword_27F47B7D0;
  if (!qword_27F47B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B7D0);
  }

  return result;
}

unint64_t sub_251BB3124()
{
  result = qword_27F47B7D8;
  if (!qword_27F47B7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B7D8);
  }

  return result;
}

unint64_t sub_251BB3178()
{
  result = qword_27F47B7E0;
  if (!qword_27F47B7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B7E0);
  }

  return result;
}

unint64_t sub_251BB31CC()
{
  result = qword_27F47B800;
  if (!qword_27F47B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B800);
  }

  return result;
}

unint64_t sub_251BB3220()
{
  result = qword_27F47B850;
  if (!qword_27F47B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B850);
  }

  return result;
}

unint64_t sub_251BB3274()
{
  result = qword_27F47B858;
  if (!qword_27F47B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B858);
  }

  return result;
}

unint64_t sub_251BB32C8()
{
  result = qword_27F47B870;
  if (!qword_27F47B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B870);
  }

  return result;
}

unint64_t sub_251BB331C()
{
  result = qword_27F47B878;
  if (!qword_27F47B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B878);
  }

  return result;
}

unint64_t sub_251BB3370()
{
  result = qword_27F47B890;
  if (!qword_27F47B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B890);
  }

  return result;
}

uint64_t sub_251BB33C4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251B67AAC(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251BB3444(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251B67AAC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_251BB34B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_251B67AAC(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_251BB3554()
{
  result = qword_27F47B8B8;
  if (!qword_27F47B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B8B8);
  }

  return result;
}

void sub_251BB35D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_251BB362C()
{
  result = qword_27F47B8D0;
  if (!qword_27F47B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B8D0);
  }

  return result;
}

unint64_t sub_251BB3684()
{
  result = qword_27F47B8D8;
  if (!qword_27F47B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B8D8);
  }

  return result;
}

unint64_t sub_251BB36D8()
{
  result = qword_27F47B8E0;
  if (!qword_27F47B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B8E0);
  }

  return result;
}

uint64_t sub_251BB3814()
{
  v1 = *(*(v0 + 56) + 56);
  swift_allocObject();
  swift_weakInit();
  v3 = *(v1 + 136);
  sub_251BB4BDC(0, &qword_2813E1D00, type metadata accessor for os_unfair_lock_s, MEMORY[0x277D83D58]);
  sub_251B3F1EC();

  sub_251C702C4();
}

uint64_t sub_251BB3908()
{
  sub_251BB4BDC(0, &qword_2813E1C70, sub_251ACFD80, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_251C75800;
  v2 = *MEMORY[0x277D12310];
  v3 = sub_251C70F14();
  v5 = v4;
  v6 = type metadata accessor for DefaultDaemonXPCService();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_identifier];
  *v8 = v3;
  v8[1] = v5;
  v9 = &v7[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_requiredEntitlementOverride];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = objc_allocWithZone(MEMORY[0x277D10BF0]);

  v11 = sub_251C70EE4();

  v12 = [v10 initWithLabel_];

  *&v7[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_listener] = v12;
  v13 = &v7[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_serverGenerator];
  *v13 = sub_251BB3E24;
  v13[1] = v0;
  v29.receiver = v7;
  v29.super_class = v6;
  v14 = objc_msgSendSuper2(&v29, sel_init);
  *(v1 + 56) = v6;
  *(v1 + 64) = &off_2863F5E58;
  *(v1 + 32) = v14;
  v15 = *MEMORY[0x277D12318];
  v16 = sub_251C70F14();
  v18 = v17;
  v19 = objc_allocWithZone(v6);
  v20 = &v19[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_identifier];
  *v20 = v16;
  v20[1] = v18;
  v21 = &v19[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_requiredEntitlementOverride];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = objc_allocWithZone(MEMORY[0x277D10BF0]);

  v23 = sub_251C70EE4();

  v24 = [v22 initWithLabel_];

  *&v19[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_listener] = v24;
  v25 = &v19[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_serverGenerator];
  *v25 = sub_251BB3E40;
  v25[1] = v0;
  v28.receiver = v19;
  v28.super_class = v6;
  v26 = objc_msgSendSuper2(&v28, sel_init);
  *(v1 + 96) = v6;
  *(v1 + 104) = &off_2863F5E58;
  *(v1 + 72) = v26;
  return v1;
}

id sub_251BB3B80(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingDaemonPlugin();
  v15[3] = v4;
  v15[4] = &off_2863FAE18;
  v15[0] = a2;
  v5 = objc_allocWithZone(type metadata accessor for ClinicalSharingServer());
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v15, v4);
  v7 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;

  v12 = sub_251BB3E5C(a1, v11, v5);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

id sub_251BB3CAC(void *a1, uint64_t a2)
{
  v3 = *(*(a2 + 56) + 88);
  v4 = type metadata accessor for ClinicalSharingSyncObserverServer();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_syncStateCancellable] = 0;
  *&v5[OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_client] = a1;

  v6 = a1;
  v7 = swift_slowAlloc();
  *v7 = 0;
  *&v5[OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_lock] = v7;
  *&v5[OBJC_IVAR____TtC19HealthRecordsDaemon33ClinicalSharingSyncObserverServer_syncStateSubject] = v3;
  v9.receiver = v5;
  v9.super_class = v4;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t sub_251BB3D78()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

id sub_251BB3E5C(uint64_t a1, uint64_t a2, char *a3)
{
  v10[3] = type metadata accessor for ClinicalSharingDaemonPlugin();
  v10[4] = &off_2863FAE18;
  v10[0] = a2;
  if (MEMORY[0x277D84F90] >> 62 && sub_251C717F4())
  {
    v6 = sub_251B1D794(MEMORY[0x277D84F90]);
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  *&a3[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_cancellables] = v6;
  *&a3[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_client] = a1;
  sub_251A823B4(v10, &a3[OBJC_IVAR____TtC19HealthRecordsDaemon21ClinicalSharingServer_contextProvider]);
  v9.receiver = a3;
  v9.super_class = type metadata accessor for ClinicalSharingServer();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

uint64_t *sub_251BB3F44(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v15[3] = &type metadata for ClinicalSharingDefaultDaemonEnvironment;
  v15[4] = &off_2863FA5F8;
  v5 = swift_allocObject();
  v15[0] = v5;
  v6 = *(a1 + 48);
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(a1 + 64);
  *(v5 + 96) = *(a1 + 80);
  v7 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v7;
  *(a2 + 4) = 0u;
  *(a2 + 5) = 0u;
  *(a2 + 6) = 0u;
  *(a2 + 7) = 0u;
  a2[16] = 0;
  v8 = swift_slowAlloc();
  *v8 = 0;
  a2[17] = v8;
  v14 = v4;
  swift_getMetatypeMetadata();
  a2[18] = sub_251C70F74();
  a2[19] = v9;
  sub_251A823B4(v15, (a2 + 2));
  v10 = objc_allocWithZone(MEMORY[0x277CCA8B8]);
  v11 = sub_251C70EE4();
  v12 = [v10 initWithIdentifier_];

  __swift_destroy_boxed_opaque_existential_1(v15);
  a2[7] = v12;
  return a2;
}

uint64_t *sub_251BB4094(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v24 = &type metadata for ClinicalSharingDefaultDaemonEnvironment;
  v25 = &off_2863FA5F8;
  v5 = swift_allocObject();
  v23[0] = v5;
  v6 = *(a1 + 48);
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(a1 + 64);
  *(v5 + 96) = *(a1 + 80);
  v7 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v7;
  v8 = MEMORY[0x277D84FA0];
  a2[11] = 0;
  a2[12] = v8;
  v9 = type metadata accessor for ClinicalSharingDAIState();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC19HealthRecordsDaemonP33_BED11DFC9D090ABA600C4282F599AD2323ClinicalSharingDAIState_startTime;
  v14 = sub_251C70014();
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  v15 = swift_slowAlloc();
  *v15 = 0;
  *(v12 + 16) = v15;
  a2[13] = v12;
  *(a2 + 7) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 9) = 0u;
  v22 = v4;
  swift_getMetatypeMetadata();
  a2[2] = sub_251C70F74();
  a2[3] = v16;
  sub_251A823B4(v23, (a2 + 4));
  sub_251BB4D50();
  v17 = sub_251B37FB0();
  v18 = objc_allocWithZone(type metadata accessor for URLSessionCertVerificationDelegate());
  v19 = [v18 init];
  v20 = [objc_opt_self() sessionWithConfiguration:v17 delegate:v19 delegateQueue:0];

  a2[9] = v20;
  a2[10] = [objc_allocWithZone(MEMORY[0x277CCD570]) initWithCategory:3 domainName:*MEMORY[0x277D12308] healthStore:{*__swift_project_boxed_opaque_existential_1(v23, v24)}];
  __swift_destroy_boxed_opaque_existential_1(v23);
  return a2;
}

uint64_t sub_251BB42B0(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v52[3] = &type metadata for ClinicalSharingDefaultDaemonEnvironment;
  v52[4] = &off_2863FA5F8;
  v5 = swift_allocObject();
  v52[0] = v5;
  v6 = *(a1 + 48);
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(a1 + 64);
  *(v5 + 96) = *(a1 + 80);
  v7 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v7;
  sub_251BB4CF0();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v8[2] = v9;
  v8[3] = v10;
  v8[4] = 0;
  *(a2 + 96) = v8;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0;
  v49 = v4;
  swift_getMetatypeMetadata();
  *(a2 + 72) = sub_251C70F74();
  *(a2 + 80) = v11;
  sub_251A823B4(v52, a2 + 16);
  sub_251A823B4(v52, &v49);
  v12 = v51;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(&v49, v51);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v46[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v47 = &type metadata for ClinicalSharingDefaultDaemonEnvironment;
  v48 = &off_2863FA5F8;
  v18 = swift_allocObject();
  v46[0] = v18;
  v19 = *(v16 + 3);
  *(v18 + 48) = *(v16 + 2);
  *(v18 + 64) = v19;
  *(v18 + 80) = *(v16 + 4);
  *(v18 + 96) = *(v16 + 10);
  v20 = *(v16 + 1);
  *(v18 + 16) = *v16;
  *(v18 + 32) = v20;
  type metadata accessor for ClinicalSharingSyncTaskScheduler();
  v21 = swift_allocObject();
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v46, &type metadata for ClinicalSharingDefaultDaemonEnvironment);
  v23 = off_2863FA5D0;
  v24 = *(off_2863FA5D0 + 8);
  MEMORY[0x28223BE20](v22);
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = v23[2];
  v26(&v46[-1] - v25);
  v27 = sub_251BB3F44(&v46[-1] - v25, v21);
  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_destroy_boxed_opaque_existential_1(&v49);
  *(a2 + 56) = v27;
  sub_251A823B4(v52, &v49);
  v28 = v51;
  v29 = __swift_mutable_project_boxed_opaque_existential_1(&v49, v51);
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v46[-1] - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32);
  v47 = &type metadata for ClinicalSharingDefaultDaemonEnvironment;
  v48 = &off_2863FA5F8;
  v34 = swift_allocObject();
  v46[0] = v34;
  v35 = *(v32 + 3);
  *(v34 + 48) = *(v32 + 2);
  *(v34 + 64) = v35;
  *(v34 + 80) = *(v32 + 4);
  *(v34 + 96) = *(v32 + 10);
  v36 = *(v32 + 1);
  *(v34 + 16) = *v32;
  *(v34 + 32) = v36;
  type metadata accessor for ClinicalSharingDAIManager();
  v37 = swift_allocObject();
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v46, &type metadata for ClinicalSharingDefaultDaemonEnvironment);
  MEMORY[0x28223BE20](v38);
  v26(&v46[-1] - v25);
  v39 = sub_251BB4094(&v46[-1] - v25, v37);
  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_destroy_boxed_opaque_existential_1(&v49);
  *(a2 + 64) = v39;
  v49 = 0;
  v50 = 2;
  sub_251B40E84();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v43 = sub_251C709D4();
  __swift_destroy_boxed_opaque_existential_1(v52);
  *(a2 + 88) = v43;
  return a2;
}

uint64_t sub_251BB4730(uint64_t a1, uint64_t a2)
{
  v28[3] = &type metadata for ClinicalSharingDefaultDaemonEnvironment;
  v28[4] = &off_2863FA5F8;
  v4 = swift_allocObject();
  v28[0] = v4;
  v5 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = *(a1 + 80);
  v6 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  sub_251A823B4(v28, a2 + 16);
  sub_251A823B4(v28, v26);
  v7 = v27;
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v25[3] = &type metadata for ClinicalSharingDefaultDaemonEnvironment;
  v25[4] = &off_2863FA5F8;
  v13 = swift_allocObject();
  v25[0] = v13;
  v14 = *(v11 + 3);
  *(v13 + 48) = *(v11 + 2);
  *(v13 + 64) = v14;
  *(v13 + 80) = *(v11 + 4);
  *(v13 + 96) = *(v11 + 10);
  v15 = *(v11 + 1);
  *(v13 + 16) = *v11;
  *(v13 + 32) = v15;
  type metadata accessor for ClinicalSharingSyncTaskCoordinator();
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v25, &type metadata for ClinicalSharingDefaultDaemonEnvironment);
  v18 = *(off_2863FA5D0 + 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v25[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = sub_251BB42B0(v20, v16);
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v26);
  *(a2 + 56) = v22;
  return a2;
}

id sub_251BB4980()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x277D123E8]) initWithHealthStore_];
    v19[0] = v0;
    v19[1] = v2;
    v17 = &type metadata for ClinicalSharingAccountStore;
    v18 = &off_2863F67B8;
    v16[0] = v3;
    v19[2] = v3;
    v19[3] = v0;
    sub_251A823B4(v16, &v20);
    v4 = objc_allocWithZone(MEMORY[0x277CCD1E8]);
    v5 = v0;
    v6 = v2;
    v7 = v3;
    v19[5] = [v4 initWithHealthStore_];
    v8 = [objc_allocWithZone(MEMORY[0x277CCD7D0]) initWithHealthStore_];

    __swift_destroy_boxed_opaque_existential_1(v16);
    v19[4] = v8;
    v17 = &type metadata for ClinicalSharingDefaultDaemonEnvironment;
    v18 = &off_2863FA5F8;
    v16[0] = swift_allocObject();
    sub_251BB4C40(v19, v16[0] + 16);
    type metadata accessor for ClinicalSharingDaemonPlugin();
    v9 = swift_allocObject();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, &type metadata for ClinicalSharingDefaultDaemonEnvironment);
    v11 = *(off_2863FA5D0 + 8);
    MEMORY[0x28223BE20](v10);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v13);
    v15 = sub_251BB4730(v13, v9);
    sub_251BB4C9C(v19);
    __swift_destroy_boxed_opaque_existential_1(v16);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_251BB4BDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251BB4CF0()
{
  if (!qword_2813E3340[0])
  {
    type metadata accessor for ClinicalSharingSyncTask();
    v0 = type metadata accessor for SingleValuePublisherTaskQueue();
    if (!v1)
    {
      atomic_store(v0, qword_2813E3340);
    }
  }
}

unint64_t sub_251BB4D50()
{
  result = qword_2813E1D40;
  if (!qword_2813E1D40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813E1D40);
  }

  return result;
}

uint64_t Sequence.autoreleasingMap<A>(_:)(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a1;
  v9[6] = a2;
  return sub_251BB4F20(sub_251BB5684, v9, a3, a4, MEMORY[0x277D84A98], a5, MEMORY[0x277D84AC0], a8);
}

uint64_t Sequence.autoreleasingMap<A>(_:)(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5)
{
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a1;
  v10[6] = a2;
  v8 = sub_251A82284();
  return sub_251BB4F20(sub_251BB56B0, v10, a3, a4, v8, a5, MEMORY[0x277D84950], &v11);
}

void sub_251BB4E94(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = MEMORY[0x25308DB30]();
  a2(a1);
  objc_autoreleasePoolPop(v11);
  if (v7)
  {
    *a7 = v7;
  }
}

uint64_t sub_251BB4F20(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v49 - v21;
  v22 = sub_251C71574();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x28223BE20](v69);
  v38 = &v49 - v37;
  v39 = sub_251C710C4();
  v70 = sub_251C717A4();
  v65 = sub_251C717B4();
  sub_251C71754();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_251C710B4();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_251C71594();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_251C71794();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_251C71594();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_251C71794();
      sub_251C71594();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

void sub_251BB5614(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = MEMORY[0x25308DB30]();
  a2(a1);
  objc_autoreleasePoolPop(v5);
  if (v2)
  {
    __break(1u);
  }
}

uint64_t Sequence.autoreleasingCompactMap<A>(_:)()
{
  return sub_251C710E4();
}

{
  return sub_251C710E4();
}

void sub_251BB5750(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = MEMORY[0x25308DB30]();
  a2(a1);
  objc_autoreleasePoolPop(v4);
}

void *sub_251BB5890(uint64_t a1, void *a2)
{
  v5 = sub_251C70014();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 accountInformation];
  v11 = [v10 authorization];

  if (v11)
  {
    v40 = v6;
    v41 = a1;
    v12 = [v11 patientID];

    v13 = sub_251C70F14();
    v6 = v14;

    sub_251BB5DAC();
    inited = swift_initStackObject();
    *(inited + 32) = 7;
    v16 = inited + 32;
    *(inited + 16) = xmmword_251C74800;
    *(inited + 64) = MEMORY[0x277D837D0];
    *(inited + 40) = v13;
    *(inited + 48) = v6;
    v17 = sub_251C4C508(inited);
    swift_setDeallocating();
    sub_251BB5E68(v16);
    v46 = v17;
    [a2 queryMode];
    if ((HKFHIRResourceQueryModeIncludesFullMode() & 1) == 0)
    {
      v19 = [a2 lastFetchDate];
      if (v19)
      {
        v20 = v19;
        sub_251C6FFE4();

        *&v44[24] = v5;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
        v22 = v40;
        (v40[2])(boxed_opaque_existential_1, v9, v5);
        sub_251AC712C(v44, 5);
        (v22[1])(v9, v5);
        v17 = v46;
      }
    }

    v23 = HKClinicalGatewayFeature.webRequestsForInteraction(_:substitutions:)(0xD000000000000013, 0x8000000251C8AB80, v17);

    if (!v2)
    {
      v25 = [a2 accountInformation];
      v26 = [v25 authorization];

      if (v26 && (HKFHIRCredential.asAuthorizationHeader()(v44), v26, (v41 = *&v44[8]) != 0))
      {
        v27 = *v44;
        v29 = *&v44[16];
        v28 = *&v44[24];
        v30 = v23[2];
        if (v30)
        {
          v40 = 0;
          v45 = MEMORY[0x277D84F90];
          sub_251C0BD74(0, v30, 0);
          v6 = v45;
          v39 = v23;
          v31 = (v23 + 4);
          do
          {
            sub_251A823B4(v31, v43);
            sub_251A823B4(v43, v44);
            v32 = v27;
            v42[0] = v27;
            v42[1] = v41;
            v33 = v29;
            v42[2] = v29;
            v34 = v28;
            v42[3] = v28;
            v35 = *&v44[24];
            v36 = *&v44[32];
            v47.value._object = __swift_mutable_project_boxed_opaque_existential_1(v44, *&v44[24]);
            v47.name._countAndFlagsBits = v42;
            v47.name._object = v35;
            v47.value._countAndFlagsBits = v36;
            WebRequest.add(header:)(v47);
            __swift_destroy_boxed_opaque_existential_1(v43);
            v45 = v6;
            v38 = v6[2];
            v37 = v6[3];
            if (v38 >= v37 >> 1)
            {
              sub_251C0BD74((v37 > 1), v38 + 1, 1);
              v6 = v45;
            }

            v6[2] = v38 + 1;
            sub_251A7E8D8(v44, &v6[5 * v38 + 4]);
            v31 += 40;
            --v30;
            v28 = v34;
            v29 = v33;
            v27 = v32;
          }

          while (v30);

          sub_251B220A8(v32, v41);
        }

        else
        {

          sub_251B220A8(v27, v41);
          return MEMORY[0x277D84F90];
        }
      }

      else
      {
        return v23;
      }
    }
  }

  else
  {
    sub_251BB5D58();
    swift_allocError();
    *v18 = xmmword_251C83360;
    swift_willThrow();
  }

  return v6;
}

unint64_t sub_251BB5D58()
{
  result = qword_27F47B8E8;
  if (!qword_27F47B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B8E8);
  }

  return result;
}

void sub_251BB5DAC()
{
  if (!qword_27F47B8F0)
  {
    sub_251BB5E04();
    v0 = sub_251C719B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47B8F0);
    }
  }
}

void sub_251BB5E04()
{
  if (!qword_27F47B8F8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47B8F8);
    }
  }
}

uint64_t sub_251BB5E68(uint64_t a1)
{
  sub_251BB5E04();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251BB5ED4(uint64_t a1, int a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return MEMORY[0x282200950](v5);
  }

  if (!a3)
  {
    __break(1u);
    return MEMORY[0x282200950](v5);
  }

  sub_251A82284();
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return MEMORY[0x282200958](v6, v7);
}

uint64_t sub_251BB5F80()
{
  sub_251A8223C(0, &qword_2813E1D28, 0x277CCABB0);
  result = sub_251C71514();
  qword_27F4A26C0 = result;
  return result;
}

uint64_t *sub_251BB5FC8(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  swift_getMetatypeMetadata();
  v2[2] = sub_251C70F74();
  v2[3] = v5;
  v2[4] = a1;
  v2[5] = a2;
  return v2;
}

uint64_t sub_251BB6044(uint64_t a1, char a2)
{
  *(v3 + 256) = a2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v2;
  v4 = sub_251C70074();
  *(v3 + 176) = v4;
  v5 = *(v4 - 8);
  *(v3 + 184) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251BB6108, 0, 0);
}

uint64_t sub_251BB6108()
{
  v1 = v0[20];
  v0[25] = v1;
  swift_bridgeObjectRetain_n();
  if (v1 >> 62)
  {
    v2 = sub_251C717F4();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = v0[21];
    v4 = swift_task_alloc();
    v0[26] = v4;
    *(v4 + 16) = v1;
    *(v4 + 24) = v3;
    v5 = *(MEMORY[0x277D859B8] + 4);
    v6 = swift_task_alloc();
    v0[27] = v6;
    *v6 = v0;
    v6[1] = sub_251BB6288;
    v7 = MEMORY[0x277D84F78] + 8;
    v8 = MEMORY[0x277D84F78] + 8;
    v9 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200740](v6, v7, v8, 0, 0, &unk_251C83440, v4, v9);
  }

  else
  {
    v10 = v0[24];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_251BB6288()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_251BB66B8;
  }

  else
  {
    v5 = *(v2 + 208);

    v4 = sub_251BB63A4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_251BB63A4()
{
  if (*(v0 + 256) != 1)
  {
    sub_251A8223C(0, &qword_2813E1D28, 0x277CCABB0);
    v1 = sub_251C71514();
    goto LABEL_5;
  }

  if (qword_27F478890 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v1 = qword_27F4A26C0;
LABEL_5:
    v2 = v1;
    *(v0 + 232) = v1;
    v3 = *(v0 + 200);
    if (v3 >> 62)
    {
      if (v3 < 0)
      {
        v20 = *(v0 + 200);
      }

      v4 = sub_251C717F4();
      if (!v4)
      {
LABEL_19:
        v21 = *(v0 + 200);

        goto LABEL_20;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_19;
      }
    }

    *(v0 + 144) = MEMORY[0x277D84F90];
    sub_251C0B5E4(0, v4 & ~(v4 >> 63), 0);
    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  v28 = v2;
  v5 = 0;
  v6 = *(v0 + 200);
  v7 = *(v0 + 144);
  v8 = v6 & 0xC000000000000001;
  v9 = v6 + 32;
  do
  {
    if (v8)
    {
      v10 = MEMORY[0x25308D460](v5, *(v0 + 200));
    }

    else
    {
      v10 = *(v9 + 8 * v5);
    }

    v11 = v10;
    v12 = *(v0 + 192);
    v13 = [v10 identifier];
    sub_251C70054();

    *(v0 + 144) = v7;
    v15 = *(v7 + 16);
    v14 = *(v7 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_251C0B5E4(v14 > 1, v15 + 1, 1);
      v7 = *(v0 + 144);
    }

    v17 = *(v0 + 184);
    v16 = *(v0 + 192);
    v18 = *(v0 + 176);
    ++v5;
    *(v7 + 16) = v15 + 1;
    (*(v17 + 32))(v7 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15, v16, v18);
  }

  while (v4 != v5);
  v19 = *(v0 + 200);

  v2 = v28;
LABEL_20:
  v22 = *(v0 + 176);
  v23 = *(*(v0 + 168) + 32);
  v24 = sub_251C71144();
  *(v0 + 240) = v24;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 152;
  *(v0 + 24) = sub_251BB672C;
  v25 = swift_continuation_init();
  sub_251BBB2B8();
  *(v0 + 136) = v26;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_251BB6A44;
  *(v0 + 104) = &block_descriptor_28;
  *(v0 + 112) = v25;
  [v23 notifyDownloadingCompleteAndRequestMoreWithIdentifiers:v24 requestBatchSize:v2 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_251BB66B8()
{
  v1 = v0[25];
  v2 = v0[26];

  v3 = v0[28];
  v4 = v0[24];

  v5 = v0[1];

  return v5();
}

uint64_t sub_251BB672C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_251BB69C4;
  }

  else
  {
    v3 = sub_251BB683C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251BB683C()
{
  v1 = *(v0 + 240);

  v2 = *(v0 + 152);

  *(v0 + 200) = v2;
  if (v2 >> 62)
  {
    v3 = sub_251C717F4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = *(v0 + 168);
    v5 = swift_task_alloc();
    *(v0 + 208) = v5;
    *(v5 + 16) = v2;
    *(v5 + 24) = v4;
    v6 = *(MEMORY[0x277D859B8] + 4);
    v7 = swift_task_alloc();
    *(v0 + 216) = v7;
    *v7 = v0;
    v7[1] = sub_251BB6288;
    v8 = MEMORY[0x277D84F78] + 8;
    v9 = MEMORY[0x277D84F78] + 8;
    v10 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200740](v7, v8, v9, 0, 0, &unk_251C83440, v5, v10);
  }

  else
  {
    v11 = *(v0 + 192);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_251BB69C4()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  swift_willThrow();

  v4 = v0[31];
  v5 = v0[24];

  v6 = v0[1];

  return v6();
}

uint64_t sub_251BB6A44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_251A82284();
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_251A8223C(0, &qword_27F47A308, 0x277D12470);
    **(*(v4 + 64) + 40) = sub_251C71154();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_251BB6B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[25] = a2;
  v5 = type metadata accessor for HTTPError();
  v4[28] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v7 = MEMORY[0x277D83D88];
  sub_251BBB354(0, &qword_2813E1E00, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v10 = sub_251C70074();
  v4[38] = v10;
  v11 = *(v10 - 8);
  v4[39] = v11;
  v12 = *(v11 + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  sub_251BBB3B8(0, &qword_27F47B928, MEMORY[0x277D85830]);
  v4[42] = v13;
  v14 = *(v13 - 8);
  v4[43] = v14;
  v15 = *(v14 + 64) + 15;
  v4[44] = swift_task_alloc();
  sub_251BBB354(0, &qword_2813E74D0, MEMORY[0x277CC95F0], v7);
  v17 = *(*(v16 - 8) + 64) + 15;
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251BB6DAC, 0, 0);
}

uint64_t sub_251BB6DAC()
{
  v1 = *(v0 + 208);
  if (v1 >> 62)
  {
LABEL_37:
    v63 = sub_251C717F4();
    *(v0 + 376) = v63;
    if (v63)
    {
      goto LABEL_3;
    }

LABEL_32:
    v57 = *(v0 + 352);
    v58 = **(v0 + 200);
    *(v0 + 416) = sub_251A82284();
    sub_251C71234();
    v59 = *(MEMORY[0x277D85828] + 4);
    v60 = swift_task_alloc();
    *(v0 + 448) = v60;
    *v60 = v0;
    v60[1] = sub_251BB7FEC;
    v61 = *(v0 + 352);
    v62 = *(v0 + 336);

    return MEMORY[0x2822004E8](v0 + 456, 0, 0, v62, v0 + 176);
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 376) = v2;
  if (!v2)
  {
    goto LABEL_32;
  }

LABEL_3:
  v3 = 0;
  for (i = MEMORY[0x277D84F98]; ; i = MEMORY[0x277D84F98])
  {
    *(v0 + 384) = i;
    *(v0 + 392) = i;
    v5 = *(v0 + 208);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x25308D460](v3);
    }

    else
    {
      if (v3 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v6 = *(v5 + 8 * v3 + 32);
    }

    *(v0 + 400) = v6;
    *(v0 + 408) = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v7 = [v6 accountIdentifier];
    if (v7)
    {
      v8 = *(v0 + 368);
      v9 = v7;
      sub_251C70054();

      v10 = 0;
    }

    else
    {
      v10 = 1;
    }

    v12 = *(v0 + 360);
    v11 = *(v0 + 368);
    v14 = *(v0 + 304);
    v13 = *(v0 + 312);
    (*(v13 + 56))(v11, v10, 1, v14);
    sub_251BBB4F4(v11, v12, &qword_2813E74D0, MEMORY[0x277CC95F0]);
    if ((*(v13 + 48))(v12, 1, v14) == 1)
    {
      break;
    }

    (*(*(v0 + 312) + 32))(*(v0 + 328), *(v0 + 360), *(v0 + 304));
    if (!*(i + 16) || (v15 = sub_251AC8AFC(*(v0 + 328)), (v16 & 1) == 0))
    {
      v40 = *(*(v0 + 216) + 40);
      v41 = swift_task_alloc();
      *(v0 + 424) = v41;
      *v41 = v0;
      v41[1] = sub_251BB74E4;
      v42 = *(v0 + 328);

      return sub_251C5F768(v42);
    }

    v17 = *(v0 + 328);
    v18 = *(v0 + 304);
    v19 = *(*(v0 + 312) + 8);
    v70 = *(*(i + 56) + 8 * v15);
    v19(v17, v18);
    v20 = *(v0 + 400);
    v21 = *(v0 + 296);
    v68 = *(v0 + 288);
    v22 = *(v0 + 216);
    sub_251BBB574(*(v0 + 368), &qword_2813E74D0, MEMORY[0x277CC95F0]);
    v23 = sub_251C71214();
    v24 = *(v23 - 8);
    (*(v24 + 56))(v21, 1, 1, v23);
    v25 = swift_allocObject();
    v25[2] = 0;
    v26 = v25 + 2;
    v25[3] = 0;
    v25[4] = v22;
    v25[5] = v20;
    v25[6] = v70;
    sub_251BBB4F4(v21, v68, &qword_2813E1E00, MEMORY[0x277D85720]);
    LODWORD(v21) = (*(v24 + 48))(v68, 1, v23);

    v27 = v20;
    v28 = v70;
    v29 = *(v0 + 288);
    if (v21 == 1)
    {
      sub_251BBB574(*(v0 + 288), &qword_2813E1E00, MEMORY[0x277D85720]);
      if (*v26)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_251C71204();
      (*(v24 + 8))(v29, v23);
      if (*v26)
      {
LABEL_17:
        v30 = v25[3];
        swift_getObjectType();
        swift_unknownObjectRetain();
        v31 = sub_251C711C4();
        v33 = v32;
        swift_unknownObjectRelease();
        goto LABEL_20;
      }
    }

    v31 = 0;
    v33 = 0;
LABEL_20:
    v34 = **(v0 + 200);

    if (v33 | v31)
    {
      v35 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v31;
      *(v0 + 40) = v33;
    }

    else
    {
      v35 = 0;
    }

    v37 = *(v0 + 400);
    v36 = *(v0 + 408);
    v38 = *(v0 + 376);
    v39 = *(v0 + 296);
    *(v0 + 144) = 1;
    *(v0 + 152) = v35;
    *(v0 + 160) = v34;
    swift_task_create();

    sub_251BBB574(v39, &qword_2813E1E00, MEMORY[0x277D85720]);
    if (v36 == v38)
    {

      goto LABEL_32;
    }

    v3 = *(v0 + 408);
  }

  v44 = *(v0 + 368);
  v45 = MEMORY[0x277CC95F0];
  sub_251BBB574(*(v0 + 360), &qword_2813E74D0, MEMORY[0x277CC95F0]);
  sub_251B21E54();
  swift_allocError();
  *v46 = 0;
  swift_willThrow();
  sub_251BBB574(v44, &qword_2813E74D0, v45);

  v48 = *(v0 + 360);
  v47 = *(v0 + 368);
  v49 = *(v0 + 352);
  v51 = *(v0 + 320);
  v50 = *(v0 + 328);
  v53 = *(v0 + 288);
  v52 = *(v0 + 296);
  v54 = *(v0 + 272);
  v55 = *(v0 + 280);
  v64 = *(v0 + 264);
  v65 = *(v0 + 256);
  v66 = *(v0 + 248);
  v67 = *(v0 + 240);
  v69 = *(v0 + 232);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_251BB74E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 424);
  v7 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v5 = sub_251BB7E7C;
  }

  else
  {
    v5 = sub_251BB75F8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_251BB75F8()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 384);
  v3 = *(v0 + 320);
  v4 = *(*(v0 + 312) + 16);
  (v4)(v3, *(v0 + 328), *(v0 + 304));
  v5 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 168) = v2;
  v7 = v0 + 168;
  v8 = sub_251AC8AFC(v3);
  v10 = *(v2 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    v93 = v8;
    sub_251ACF0E0();
    v8 = v93;
    goto LABEL_8;
  }

  LOBYTE(v3) = v9;
  if (*(*(v0 + 384) + 24) < v13)
  {
    v14 = *(v0 + 320);
    sub_251ACBE58(v13, isUniquelyReferenced_nonNull_native);
    v15 = *(v0 + 168);
    v8 = sub_251AC8AFC(v14);
    if ((v3 & 1) != (v16 & 1))
    {
      v17 = *(v0 + 304);

      return sub_251C71A14();
    }

    goto LABEL_8;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_8:
  v19 = *(v0 + 168);
  v20 = *(v0 + 432);
  if (v3)
  {
    v21 = v19[7];
    v22 = *(v21 + 8 * v8);
    *(v21 + 8 * v8) = v20;
  }

  else
  {
    v24 = *(v0 + 312);
    v23 = *(v0 + 320);
    v25 = *(v0 + 304);
    v19[(v8 >> 6) + 8] |= 1 << v8;
    v26 = v8;
    v27 = (v4)(v19[6] + *(v24 + 72) * v8, v23, v25);
    *(v19[7] + 8 * v26) = v20;
    v32 = v19[2];
    v12 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v12)
    {
      __break(1u);
      return MEMORY[0x2822004E8](v27, v28, v29, v30, v31);
    }

    v19[2] = v33;
  }

  v97 = (v7 - 152);
  v99 = v19;
  v34 = *(v0 + 328);
  v35 = *(v0 + 304);
  v36 = *(*(v0 + 312) + 8);
  v36(*(v0 + 320), v35);
  v36(v34, v35);
  v37 = *(v0 + 432);
  while (1)
  {
    v38 = *(v0 + 400);
    v40 = *(v0 + 288);
    v39 = *(v0 + 296);
    v41 = *(v0 + 216);
    sub_251BBB574(*(v0 + 368), &qword_2813E74D0, MEMORY[0x277CC95F0]);
    v42 = sub_251C71214();
    v43 = *(v42 - 8);
    (*(v43 + 56))(v39, 1, 1, v42);
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    v44 = (v4 + 16);
    *(v4 + 24) = 0;
    *(v4 + 32) = v41;
    *(v4 + 40) = v38;
    *(v4 + 48) = v37;
    sub_251BBB4F4(v39, v40, &qword_2813E1E00, MEMORY[0x277D85720]);
    LODWORD(v39) = (*(v43 + 48))(v40, 1, v42);

    v45 = v38;
    v46 = v37;
    v47 = *(v0 + 288);
    if (v39 == 1)
    {
      sub_251BBB574(*(v0 + 288), &qword_2813E1E00, MEMORY[0x277D85720]);
      if (*v44)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_251C71204();
      (*(v43 + 8))(v47, v42);
      if (*v44)
      {
LABEL_15:
        v48 = *(v4 + 24);
        swift_getObjectType();
        swift_unknownObjectRetain();
        v49 = sub_251C711C4();
        v51 = v50;
        swift_unknownObjectRelease();
        goto LABEL_18;
      }
    }

    v49 = 0;
    v51 = 0;
LABEL_18:
    v52 = **(v0 + 200);

    if (v51 | v49)
    {
      v53 = v97;
      *v97 = 0;
      v97[1] = 0;
      *(v0 + 32) = v49;
      *(v0 + 40) = v51;
    }

    else
    {
      v53 = 0;
    }

    v54 = *(v0 + 400);
    v7 = *(v0 + 408);
    v55 = *(v0 + 376);
    v56 = *(v0 + 296);
    *(v0 + 144) = 1;
    *(v0 + 152) = v53;
    *(v0 + 160) = v52;
    LOBYTE(v3) = swift_task_create();

    v8 = sub_251BBB574(v56, &qword_2813E1E00, MEMORY[0x277D85720]);
    if (v7 == v55)
    {
      break;
    }

    v57 = *(v0 + 408);
    *(v0 + 384) = v99;
    *(v0 + 392) = v99;
    v58 = *(v0 + 208);
    if ((v58 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x25308D460](v57);
    }

    else
    {
      if (v57 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v8 = *(v58 + 8 * v57 + 32);
    }

    *(v0 + 400) = v8;
    *(v0 + 408) = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v59 = [v8 accountIdentifier];
    if (v59)
    {
      v60 = *(v0 + 368);
      v61 = v59;
      sub_251C70054();

      v62 = 0;
    }

    else
    {
      v62 = 1;
    }

    v64 = *(v0 + 360);
    v63 = *(v0 + 368);
    v66 = *(v0 + 304);
    v65 = *(v0 + 312);
    (*(v65 + 56))(v63, v62, 1, v66);
    sub_251BBB4F4(v63, v64, &qword_2813E74D0, MEMORY[0x277CC95F0]);
    if ((*(v65 + 48))(v64, 1, v66) == 1)
    {
      v80 = *(v0 + 368);
      v81 = MEMORY[0x277CC95F0];
      sub_251BBB574(*(v0 + 360), &qword_2813E74D0, MEMORY[0x277CC95F0]);
      sub_251B21E54();
      swift_allocError();
      *v82 = 0;
      swift_willThrow();
      sub_251BBB574(v80, &qword_2813E74D0, v81);

      v84 = *(v0 + 360);
      v83 = *(v0 + 368);
      v85 = *(v0 + 352);
      v87 = *(v0 + 320);
      v86 = *(v0 + 328);
      v89 = *(v0 + 288);
      v88 = *(v0 + 296);
      v90 = *(v0 + 272);
      v91 = *(v0 + 280);
      v94 = *(v0 + 264);
      v95 = *(v0 + 256);
      v96 = *(v0 + 248);
      v98 = *(v0 + 240);
      v100 = *(v0 + 232);

      v92 = *(v0 + 8);

      return v92();
    }

    (*(*(v0 + 312) + 32))(*(v0 + 328), *(v0 + 360), *(v0 + 304));
    if (!v99[2] || (v67 = sub_251AC8AFC(*(v0 + 328)), (v68 & 1) == 0))
    {
      v72 = *(*(v0 + 216) + 40);
      v73 = swift_task_alloc();
      *(v0 + 424) = v73;
      *v73 = v0;
      v73[1] = sub_251BB74E4;
      v74 = *(v0 + 328);

      return sub_251C5F768(v74);
    }

    v69 = *(v0 + 328);
    v70 = *(v0 + 304);
    v71 = *(*(v0 + 312) + 8);
    v37 = *(v99[7] + 8 * v67);
    v71(v69, v70);
  }

  v75 = *(v0 + 352);
  v76 = **(v0 + 200);
  *(v0 + 416) = sub_251A82284();
  sub_251C71234();
  v77 = *(MEMORY[0x277D85828] + 4);
  v78 = swift_task_alloc();
  *(v0 + 448) = v78;
  *v78 = v0;
  v78[1] = sub_251BB7FEC;
  v79 = *(v0 + 352);
  v30 = *(v0 + 336);
  v27 = v0 + 456;
  v31 = v0 + 176;
  v28 = 0;
  v29 = 0;

  return MEMORY[0x2822004E8](v27, v28, v29, v30, v31);
}

uint64_t sub_251BB7E7C()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);
  (*(*(v0 + 312) + 8))(*(v0 + 328), *(v0 + 304));
  sub_251BBB574(v2, &qword_2813E74D0, MEMORY[0x277CC95F0]);

  v4 = *(v0 + 360);
  v3 = *(v0 + 368);
  v5 = *(v0 + 352);
  v7 = *(v0 + 320);
  v6 = *(v0 + 328);
  v9 = *(v0 + 288);
  v8 = *(v0 + 296);
  v10 = *(v0 + 272);
  v11 = *(v0 + 280);
  v14 = *(v0 + 264);
  v15 = *(v0 + 256);
  v16 = *(v0 + 248);
  v17 = *(v0 + 240);
  v18 = *(v0 + 232);
  v19 = *(v0 + 440);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_251BB7FEC()
{
  v2 = *(*v1 + 448);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_251BB82C0;
  }

  else
  {
    v3 = sub_251BB80FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251BB80FC()
{
  if (*(v0 + 456))
  {
    (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));
    v2 = *(v0 + 360);
    v1 = *(v0 + 368);
    v3 = *(v0 + 352);
    v5 = *(v0 + 320);
    v4 = *(v0 + 328);
    v7 = *(v0 + 288);
    v6 = *(v0 + 296);
    v9 = *(v0 + 272);
    v8 = *(v0 + 280);
    v10 = *(v0 + 264);
    v17 = *(v0 + 256);
    v18 = *(v0 + 248);
    v19 = *(v0 + 240);
    v20 = *(v0 + 232);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(MEMORY[0x277D85828] + 4);
    v14 = swift_task_alloc();
    *(v0 + 448) = v14;
    *v14 = v0;
    v14[1] = sub_251BB7FEC;
    v15 = *(v0 + 352);
    v16 = *(v0 + 336);

    return MEMORY[0x2822004E8](v0 + 456, 0, 0, v16, v0 + 176);
  }
}

uint64_t sub_251BB82C0()
{
  v88 = v0;
  v1 = v0[52];
  v3 = v0[28];
  v2 = v0[29];
  (*(v0[43] + 8))(v0[44], v0[42]);
  v4 = v0[22];
  v0[23] = v4;
  v5 = (v0 + 23);
  v6 = v4;
  if (swift_dynamicCast())
  {
    v8 = v0[34];
    v7 = v0[35];
    v10 = v0[28];
    v9 = v0[29];

    sub_251BBB5E4(v9, v7);
    sub_251BBB648(v7, v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v12 = v0[34];
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *v12;
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v14 = v0[35];
      v15 = v0[33];
      v16 = v0[27];
      v17 = sub_251C70764();
      __swift_project_value_buffer(v17, qword_2813E8130);
      sub_251BBB648(v14, v15);

      v18 = sub_251C70744();
      v19 = sub_251C713D4();

      v20 = os_log_type_enabled(v18, v19);
      v21 = v0[35];
      v22 = v0[33];
      if (!v20)
      {

        sub_251BBB6AC(v22, type metadata accessor for HTTPError);
        v64 = v21;
        goto LABEL_19;
      }

      v85 = v0[35];
      v23 = v0[31];
      v24 = v0[32];
      v25 = v0[27];
      v79 = v0[28];
      v26 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v87 = v83;
      *v26 = 136315650;
      *(v26 + 4) = sub_251B10780(*(v25 + 16), *(v25 + 24), &v87);
      *(v26 + 12) = 2048;
      *(v26 + 14) = v13;
      *(v26 + 22) = 2080;
      sub_251BBB648(v22, v24);
      sub_251BBB648(v24, v23);
      sub_251C719F4();
      v27 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v28 = sub_251C70F74();
      v30 = v29;
      sub_251BBB6AC(v24, type metadata accessor for HTTPError);
      sub_251BBB6AC(v22, type metadata accessor for HTTPError);
      v31 = sub_251B10780(v28, v30, &v87);

      *(v26 + 24) = v31;
      _os_log_impl(&dword_251A6C000, v18, v19, "%s threw HTTP error statusCode: %ld error: %s. Continue with downloads.", v26, 0x20u);
      swift_arrayDestroy();
      v32 = v83;
    }

    else
    {
      sub_251BBB6AC(v12, type metadata accessor for HTTPError);
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v47 = v0[35];
      v48 = v0[30];
      v49 = v0[27];
      v50 = sub_251C70764();
      __swift_project_value_buffer(v50, qword_2813E8130);
      sub_251BBB648(v47, v48);

      v18 = sub_251C70744();
      v51 = sub_251C713D4();

      v52 = os_log_type_enabled(v18, v51);
      v53 = v0[35];
      if (!v52)
      {
        v66 = v0[30];

        sub_251BBB6AC(v66, type metadata accessor for HTTPError);
        v64 = v53;
        goto LABEL_19;
      }

      v54 = v0[31];
      v55 = v0[32];
      v56 = v0[30];
      v57 = v0[27];
      v80 = v0[28];
      v85 = v0[35];
      v26 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v87 = v58;
      *v26 = 136315394;
      *(v26 + 4) = sub_251B10780(*(v57 + 16), *(v57 + 24), &v87);
      *(v26 + 12) = 2080;
      sub_251BBB648(v56, v55);
      sub_251BBB648(v55, v54);
      sub_251C719F4();
      v59 = HKSensitiveLogItem();
      swift_unknownObjectRelease();
      sub_251C715C4();
      swift_unknownObjectRelease();
      v60 = sub_251C70F74();
      v62 = v61;
      sub_251BBB6AC(v55, type metadata accessor for HTTPError);
      sub_251BBB6AC(v56, type metadata accessor for HTTPError);
      v63 = sub_251B10780(v60, v62, &v87);

      *(v26 + 14) = v63;
      _os_log_impl(&dword_251A6C000, v18, v51, "%s threw HTTP error: %s. Continue with downloads.", v26, 0x16u);
      swift_arrayDestroy();
      v32 = v58;
    }

    MEMORY[0x25308E2B0](v32, -1, -1);
    MEMORY[0x25308E2B0](v26, -1, -1);

    v64 = v85;
LABEL_19:
    sub_251BBB6AC(v64, type metadata accessor for HTTPError);
    v65 = *v5;
    goto LABEL_20;
  }

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v33 = v0[27];
  v34 = sub_251C70764();
  __swift_project_value_buffer(v34, qword_2813E8130);

  v35 = v4;
  v36 = sub_251C70744();
  v37 = sub_251C713D4();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = v0[52];
    v39 = v0[27];
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v87 = v41;
    *v40 = 136315394;
    *(v40 + 4) = sub_251B10780(*(v39 + 16), *(v39 + 24), &v87);
    *(v40 + 12) = 2080;
    v0[24] = v4;
    v42 = v4;
    sub_251C719F4();
    v43 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v44 = sub_251C70F74();
    v46 = sub_251B10780(v44, v45, &v87);

    *(v40 + 14) = v46;
    _os_log_impl(&dword_251A6C000, v36, v37, "%s threw error: %s. Continue with downloads.", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v41, -1, -1);
    MEMORY[0x25308E2B0](v40, -1, -1);

    goto LABEL_21;
  }

  v65 = v4;
LABEL_20:

LABEL_21:
  v68 = v0[45];
  v67 = v0[46];
  v69 = v0[44];
  v71 = v0[40];
  v70 = v0[41];
  v73 = v0[36];
  v72 = v0[37];
  v75 = v0[34];
  v74 = v0[35];
  v76 = v0[33];
  v81 = v0[32];
  v82 = v0[31];
  v84 = v0[30];
  v86 = v0[29];

  v77 = v0[1];

  return v77();
}

uint64_t sub_251BB8AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_251AF4F78;

  return sub_251BB8B98(a5, a6);
}

uint64_t sub_251BB8B98(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_251BB8BBC, 0, 0);
}

uint64_t sub_251BB8BBC()
{
  v1 = sub_251BBAF30();
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = objc_allocWithZone(type metadata accessor for URLSessionCertVerificationDelegate());
  v6 = v1;
  v7 = [v5 init];
  type metadata accessor for WebRequestPerformer();
  v8 = swift_allocObject();
  v9 = [objc_opt_self() sessionWithConfiguration:v6 delegate:v7 delegateQueue:0];

  *(v8 + 16) = v9;
  *(v8 + 24) = 1;
  v10 = *(v3 + 40);
  type metadata accessor for ClinicalDocumentDownloadTask();
  *(v0 + 104) = swift_initStackObject();
  v11 = v10;
  v12 = v2;
  v13 = v4;
  *(v0 + 112) = sub_251AF506C(v13, v8, v11, v12);
  v14 = [v13 contentType];
  if (!v14)
  {
    v22 = *MEMORY[0x277D12320];
    sub_251C70F14();
    goto LABEL_7;
  }

  v15 = v14;
  v16 = sub_251C70F14();
  v18 = v17;

  v19 = *MEMORY[0x277D12320];
  v20 = sub_251C70F14();
  if (!v18)
  {
LABEL_7:

    goto LABEL_8;
  }

  if (v16 == v20 && v18 == v21)
  {

LABEL_12:
    v27 = *(*(v0 + 96) + 32);
    v28 = [*(v0 + 80) FHIRVersion];
    *(v0 + 120) = v28;
    v29 = [objc_allocWithZone(MEMORY[0x277D123B0]) init];
    *(v0 + 128) = v29;
    v30 = swift_task_alloc();
    *(v0 + 136) = v30;
    *v30 = v0;
    v30[1] = sub_251BB8F20;

    return sub_251AF640C(v27, v28, v29);
  }

  v26 = sub_251C719D4();

  if (v26)
  {
    goto LABEL_12;
  }

LABEL_8:
  v23 = *(*(v0 + 96) + 32);
  v24 = swift_task_alloc();
  *(v0 + 152) = v24;
  *v24 = v0;
  v24[1] = sub_251BB90D0;

  return sub_251AF50FC(v23);
}

uint64_t sub_251BB8F20()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 120);

  if (v0)
  {
    v6 = sub_251BB91E4;
  }

  else
  {
    v6 = sub_251BB906C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_251BB906C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_251BB90D0()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_251BB9248;
  }

  else
  {
    v3 = sub_251BBB724;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251BB91E4()
{
  v1 = v0[14];

  v2 = v0[18];
  v3 = v0[1];

  return v3();
}

uint64_t sub_251BB9248()
{
  v1 = v0[14];

  v2 = v0[20];
  v3 = v0[1];

  return v3();
}

uint64_t sub_251BB92AC(uint64_t a1)
{
  v2[52] = a1;
  v2[53] = v1;
  v3 = sub_251C70074();
  v2[54] = v3;
  v4 = *(v3 - 8);
  v2[55] = v4;
  v5 = *(v4 + 64) + 15;
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251BB9378, 0, 0);
}

uint64_t sub_251BB9378()
{
  v1 = v0[52];
  v2 = *(v0[53] + 32);
  v0[58] = v2;
  v3 = sub_251C70034();
  v0[59] = v3;
  v0[2] = v0;
  v0[7] = v0 + 50;
  v0[3] = sub_251BB94AC;
  v4 = swift_continuation_init();
  sub_251BBAA40();
  v0[60] = v5;
  v0[33] = v5;
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_251AB5E04;
  v0[29] = &block_descriptor_11;
  v0[30] = v4;
  [v2 fetchAttachmentWithIdentifier:v3 completion:v0 + 26];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_251BB94AC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 488) = v2;
  if (v2)
  {
    v3 = sub_251BB9FD8;
  }

  else
  {
    v3 = sub_251BB95BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251BB95BC()
{
  v1 = v0[59];
  v2 = v0[50];
  v0[62] = v2;

  v3 = [v2 accountIdentifier];
  if (v3)
  {
    v4 = v0[56];
    v5 = v0[57];
    v6 = v0[54];
    v7 = v0[55];
    v8 = v0[53];
    v9 = v3;
    sub_251C70054();

    (*(v7 + 32))(v5, v4, v6);
    v10 = *(v8 + 40);
    v11 = swift_task_alloc();
    v0[63] = v11;
    *v11 = v0;
    v11[1] = sub_251BB9750;
    v12 = v0[57];

    return sub_251C5F768(v12);
  }

  else
  {
    sub_251B21E54();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();

    v16 = v0[56];
    v15 = v0[57];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_251BB9750(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 504);
  v6 = *v2;
  v4[64] = a1;
  v4[65] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_251BBA05C, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[66] = v7;
    *v7 = v6;
    v7[1] = sub_251BB98E0;
    v8 = v4[53];
    v9 = v4[62];

    return sub_251BB8B98(v9, a1);
  }
}

uint64_t sub_251BB98E0()
{
  v2 = *(*v1 + 528);
  v5 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v3 = sub_251BBA0F8;
  }

  else
  {
    v3 = sub_251BB99F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251BB99F4()
{
  v1 = v0[60];
  v2 = v0[58];
  v3 = v0[52];
  v4 = sub_251C70034();
  v0[68] = v4;
  v0[10] = v0;
  v0[15] = v0 + 51;
  v0[11] = sub_251BB9B18;
  v5 = swift_continuation_init();
  v0[41] = v1;
  v0[34] = MEMORY[0x277D85DD0];
  v0[35] = 1107296256;
  v0[36] = sub_251AB5E04;
  v0[37] = &block_descriptor_16_1;
  v0[38] = v5;
  [v2 fetchAttachmentWithIdentifier:v4 completion:v0 + 34];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_251BB9B18()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 552) = v2;
  if (v2)
  {
    v3 = sub_251BBA19C;
  }

  else
  {
    v3 = sub_251BB9C28;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251BB9C28()
{
  v1 = v0[68];
  v2 = v0[51];
  v0[70] = v2;

  if ([v2 status] == 3)
  {
    v3 = v0[58];
    v4 = v0[52];
    v5 = sub_251C70034();
    v0[71] = v5;
    v0[18] = v0;
    v0[19] = sub_251BB9E08;
    v6 = swift_continuation_init();
    sub_251BBB3B8(0, &qword_27F479F40, MEMORY[0x277D85808]);
    v0[49] = v7;
    v0[42] = MEMORY[0x277D85DD0];
    v0[43] = 1107296256;
    v0[44] = sub_251BB5ED4;
    v0[45] = &block_descriptor_20_1;
    v0[46] = v6;
    [v3 processAttachmentWithIdentifier:v5 completion:v0 + 42];

    return MEMORY[0x282200938](v0 + 18);
  }

  else
  {
    v8 = v0[64];
    v9 = v0[62];
    (*(v0[55] + 8))(v0[57], v0[54]);

    v11 = v0[56];
    v10 = v0[57];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_251BB9E08()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 576) = v2;
  if (v2)
  {
    v3 = sub_251BBA260;
  }

  else
  {
    v3 = sub_251BB9F18;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251BB9F18()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 496);
  v3 = *(v0 + 456);
  v4 = *(v0 + 432);
  v5 = *(v0 + 440);

  (*(v5 + 8))(v3, v4);
  v6 = *(v0 + 448);
  v7 = *(v0 + 456);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_251BB9FD8()
{
  v1 = v0[61];
  v2 = v0[59];
  swift_willThrow();

  v3 = v0[61];
  v5 = v0[56];
  v4 = v0[57];

  v6 = v0[1];

  return v6();
}

uint64_t sub_251BBA05C()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 432);
  v3 = *(v0 + 440);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 520);
  v6 = *(v0 + 448);
  v5 = *(v0 + 456);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_251BBA0F8()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 456);
  v3 = *(v0 + 432);
  v4 = *(v0 + 440);

  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 536);
  v7 = *(v0 + 448);
  v6 = *(v0 + 456);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_251BBA19C()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[64];
  v4 = v0[62];
  v5 = v0[57];
  v6 = v0[54];
  v7 = v0[55];
  swift_willThrow();

  (*(v7 + 8))(v5, v6);
  v8 = v0[69];
  v10 = v0[56];
  v9 = v0[57];

  v11 = v0[1];

  return v11();
}

uint64_t sub_251BBA260()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[64];
  v5 = v0[62];
  v6 = v0[57];
  v7 = v0[54];
  v8 = v0[55];
  swift_willThrow();

  (*(v8 + 8))(v6, v7);
  v9 = v0[72];
  v11 = v0[56];
  v10 = v0[57];

  v12 = v0[1];

  return v12();
}

uint64_t sub_251BBA334(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_251C70074();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251BBA400, 0, 0);
}

uint64_t sub_251BBA400()
{
  v1 = [*(v0 + 16) accountIdentifier];
  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 56);
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v6 = *(v0 + 24);
    v7 = v1;
    sub_251C70054();

    (*(v5 + 32))(v3, v2, v4);
    v8 = *(v6 + 40);
    v9 = swift_task_alloc();
    *(v0 + 64) = v9;
    *v9 = v0;
    v9[1] = sub_251BBA57C;
    v10 = *(v0 + 56);

    return sub_251C5F768(v10);
  }

  else
  {
    sub_251B21E54();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    v14 = *(v0 + 48);
    v13 = *(v0 + 56);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_251BBA57C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  v4[9] = a1;
  v4[10] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_251BBA8B4, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[11] = v7;
    *v7 = v6;
    v7[1] = sub_251BBA704;
    v8 = v4[3];
    v9 = v4[2];

    return sub_251BB8B98(v9, a1);
  }
}

uint64_t sub_251BBA704()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_251BBA938;
  }

  else
  {
    v3 = sub_251BBA818;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251BBA818()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_251BBA8B4()
{
  (*(v0[5] + 8))(v0[7], v0[4]);
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_251BBA938()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 96);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_251BBA9D4()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_251BBAA40()
{
  if (!qword_27F47B900)
  {
    sub_251A8223C(255, &qword_27F47A308, 0x277D12470);
    sub_251A82284();
    v0 = sub_251C71224();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47B900);
    }
  }
}

void sub_251BBAAD8(uint64_t a1)
{
  v43[10] = *MEMORY[0x277D85DE8];
  v2 = sub_251C6FE64();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  v7 = sub_251C6FDD4();
  sub_251BBB354(0, &qword_27F47B908, sub_251BBB140, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251C74800;
  v9 = *MEMORY[0x277CCA1B0];
  *(inited + 32) = *MEMORY[0x277CCA1B0];
  v10 = *MEMORY[0x277CCA198];
  type metadata accessor for FileProtectionType(0);
  *(inited + 64) = v11;
  *(inited + 40) = v10;
  v12 = v9;
  v13 = v10;
  sub_251C4C3F8(inited);
  swift_setDeallocating();
  sub_251BBB6AC(inited + 32, sub_251BBB140);
  type metadata accessor for FileAttributeKey(0);
  sub_251BBB1AC();
  v14 = sub_251C70E44();

  v43[0] = 0;
  v15 = [v6 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:v14 error:v43];

  if (v15)
  {
    v16 = v43[0];
  }

  else
  {
    v17 = v43[0];
    v18 = sub_251C6FD84();

    swift_willThrow();
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v19 = sub_251C70764();
    __swift_project_value_buffer(v19, qword_2813E8130);
    v21 = v41;
    v20 = v42;
    (*(v41 + 16))(v5, a1, v42);
    v22 = v18;
    v23 = sub_251C70744();
    v24 = sub_251C713C4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40 = v6;
      v27 = v26;
      v43[0] = v26;
      *v25 = 136315394;
      v28 = sub_251C6FE34();
      v29 = v20;
      v31 = v30;
      (*(v21 + 8))(v5, v29);
      v32 = sub_251B10780(v28, v31, v43);

      *(v25 + 4) = v32;
      *(v25 + 12) = 2112;
      v33 = v18;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v34;
      v35 = v39;
      *v39 = v34;
      _os_log_impl(&dword_251A6C000, v23, v24, "ClinicalDocumentDownloadTaskCoordinator creating directory: %s failed %@)", v25, 0x16u);
      sub_251B36EB4(v35);
      MEMORY[0x25308E2B0](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v36 = v27;
      v6 = v40;
      MEMORY[0x25308E2B0](v36, -1, -1);
      MEMORY[0x25308E2B0](v25, -1, -1);
    }

    else
    {

      (*(v21 + 8))(v5, v20);
    }

    swift_willThrow();
  }

  v37 = *MEMORY[0x277D85DE8];
}

id sub_251BBAF30()
{
  v1 = sub_251C6FE64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - v7;
  sub_251A8223C(0, &qword_2813E1D40, 0x277CCAD38);
  v9 = sub_251B37FB0();
  [v9 setAllowsConstrainedNetworkAccess_];
  [v9 set:*MEMORY[0x277CCA198] downloadFileProtectionType:?];
  v10 = objc_opt_self();
  v11 = [v10 downloadableAttachmentsDirectory];
  sub_251C6FE14();

  sub_251BBAAD8(v8);
  if (v0)
  {

    (*(v2 + 8))(v8, v1);
  }

  else
  {
    v12 = *(v2 + 8);
    v12(v8, v1);
    v13 = [v10 downloadableAttachmentsDirectory];
    sub_251C6FE14();

    v14 = sub_251C6FDD4();
    v12(v6, v1);
    [v9 set:v14 directoryForDownloadedFiles:?];
  }

  return v9;
}

void sub_251BBB140()
{
  if (!qword_27F47B910)
  {
    type metadata accessor for FileAttributeKey(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47B910);
    }
  }
}

unint64_t sub_251BBB1AC()
{
  result = qword_27F478C68;
  if (!qword_27F478C68)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478C68);
  }

  return result;
}

uint64_t sub_251BBB204(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_251AF4F78;

  return sub_251BB6B28(a1, a2, v7, v6);
}

void sub_251BBB2B8()
{
  if (!qword_27F47B918)
  {
    sub_251B36F3C(255, &qword_27F47B920, &qword_27F47A308, 0x277D12470, MEMORY[0x277D83940]);
    sub_251A82284();
    v0 = sub_251C71224();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47B918);
    }
  }
}

void sub_251BBB354(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251BBB3B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_251A82284();
    v7 = a3(a1, MEMORY[0x277D84F78] + 8, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251BBB42C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_251B14FE8;

  return sub_251BB8AEC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_251BBB4F4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251BBB354(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251BBB574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251BBB354(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251BBB5E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HTTPError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251BBB648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HTTPError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251BBB6AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_251BBB728(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for ClinicalDocumentDownloader());
  v3 = a1;
  v4 = sub_251B3451C(v3);

  return v4;
}

uint64_t sub_251BBB7A8()
{
  sub_251B3F554();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_251C74800;
  v1 = *MEMORY[0x277D122F8];
  v2 = sub_251C70F14();
  v4 = v3;
  v5 = type metadata accessor for DefaultDaemonXPCService();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_identifier];
  *v7 = v2;
  v7[1] = v4;
  v8 = &v6[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_requiredEntitlementOverride];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = objc_allocWithZone(MEMORY[0x277D10BF0]);

  v10 = sub_251C70EE4();

  v11 = [v9 initWithLabel_];

  *&v6[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_listener] = v11;
  v12 = &v6[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_serverGenerator];
  *v12 = sub_251BBB728;
  v12[1] = 0;
  v15.receiver = v6;
  v15.super_class = v5;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  *(v0 + 56) = v5;
  *(v0 + 64) = &off_2863F5E58;
  *(v0 + 32) = v13;
  return v0;
}

uint64_t sub_251BBB8F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_251BBB940(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

SecAccessControlRef sub_251BBB9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = sub_251C70CF4();
  v7 = *(v29 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v29);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[3] = &_s35DeviceIdentityBAASignatureGeneratorVN;
  v28[4] = &off_2863F88F0;
  sub_251A823B4(v28, v27);
  *(&v24 + 1) = 0x4143C68000000000;
  *&v22 = a1;
  *(&v22 + 1) = a2;
  sub_251A823B4(v27, v25);
  *&v23 = 0xD000000000000010;
  *(&v23 + 1) = 0x8000000251C8F140;
  result = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0, 0);
  if (result)
  {
    sub_251C70CD4();
    if (v3)
    {
      __swift_destroy_boxed_opaque_existential_1(v27);

      __swift_destroy_boxed_opaque_existential_1(v25);
    }

    else
    {
      v21 = v7;
      v20 = a3;
      sub_251AB6108();
      v12 = sub_251C71514();
      v13 = sub_251C71514();
      v14 = sub_251C71514();
      v28[5] = v12;
      v28[6] = v13;
      v28[7] = v14;
      v28[8] = 0xD000000000000010;
      v28[9] = 0x8000000251C8F140;
      v28[10] = 0xD000000000000010;
      v28[11] = 0x8000000251C8F140;
      v15 = sub_251C1849C();
      swift_bridgeObjectRelease_n();

      *&v24 = v15;
      sub_251AFDCC8();
      (*(v21 + 8))(v10, v29);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v16 = v25[0];
      v17 = v20;
      *(v20 + 32) = v24;
      *(v17 + 48) = v16;
      *(v17 + 64) = v25[1];
      *(v17 + 80) = v26;
      v18 = v23;
      *v17 = v22;
      *(v17 + 16) = v18;
    }

    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_251BBBC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(a2 + 88))();
  v7 = (*(a2 + 96))(a1, a2);
  sub_251C2653C(v7, 0, a3);
}

uint64_t sub_251BBBD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(a2 + 80))();
  v7 = (*(a2 + 96))(a1, a2);
  sub_251C2653C(v7, 0, a3);
}

uint64_t sub_251BBBDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(a2 + 72))();
  v7 = (*(a2 + 96))(a1, a2);
  sub_251C2653C(v7, 0, a3);
}

uint64_t sub_251BBBE70@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = (*(a3 + 64))(a2, a3);
  v9 = (*(a3 + 96))(a2, a3);
  sub_251C2653C(v9, a1, a4);
}

uint64_t sub_251BBBF20()
{
  v0 = sub_251C70764();
  __swift_allocate_value_buffer(v0, qword_2813E8130);
  __swift_project_value_buffer(v0, qword_2813E8130);
  return sub_251C70754();
}

uint64_t sub_251BBBFA4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_251BBC168();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = a1;
  v11 = a2;
  result = sub_251C70A64();
  *a3 = result;
  return result;
}

void sub_251BBC03C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_251AD96B8;
  *(v9 + 24) = v8;
  v11[4] = sub_251BBC2F4;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_251AD9914;
  v11[3] = &block_descriptor_12;
  v10 = _Block_copy(v11);

  [a3 fetchConceptForIdentifier:a4 loadRelationships:1 completionHandler:v10];
  _Block_release(v10);
}

void sub_251BBC168()
{
  if (!qword_27F47B930)
  {
    sub_251BBC1D8();
    sub_251A82284();
    v0 = sub_251C70A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47B930);
    }
  }
}

void sub_251BBC1D8()
{
  if (!qword_27F47B938)
  {
    sub_251BBC230();
    v0 = sub_251C71574();
    if (!v1)
    {
      atomic_store(v0, &qword_27F47B938);
    }
  }
}

unint64_t sub_251BBC230()
{
  result = qword_27F479F70;
  if (!qword_27F479F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F479F70);
  }

  return result;
}

void sub_251BBC27C(int a1, id a2, void (*a3)(void))
{
  if (a2)
  {
    v5 = a2;
    (a3)(a2, 1);
  }

  else
  {
    a3();
  }
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251BBC324(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BBE110();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251BBC380(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BBE6D4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251BBC3DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BBE728();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_251BBC428()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A26C8);
  __swift_project_value_buffer(v0, qword_27F4A26C8);
  sub_251BBE77C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "UNDEFINED_SERVICE";
  *(v7 + 8) = 17;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "HEALTH_INSTITUTION";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "OTS";
  *(v12 + 8) = 3;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251BBC674()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A26E0);
  __swift_project_value_buffer(v0, qword_27F4A26E0);
  sub_251BBE77C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "VX";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "V1";
  *(v11 + 1) = 2;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "V2";
  *(v12 + 8) = 2;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251BBC8B4()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A26F8);
  __swift_project_value_buffer(v0, qword_27F4A26F8);
  sub_251BBE77C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C76AF0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 0;
  *v7 = "ALG_X";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 1;
  *v11 = "AES_ECM";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 2;
  *v12 = "AES_GCM";
  *(v12 + 8) = 7;
  *(v12 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251BBCAFC()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2710);
  __swift_project_value_buffer(v0, qword_27F4A2710);
  sub_251BBE77C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C747F0;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "health_institute_id";
  *(v7 + 8) = 19;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "deletion_commitment";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  v10();
  v12 = (v6 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "vk_hr";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v10();
  v14 = (v6 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "type";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v16 = *MEMORY[0x277D21870];
  v10();
  v17 = v6 + 4 * v3 + *(v2 + 56);
  *(v6 + 4 * v3) = 5;
  *v17 = "service_type";
  *(v17 + 8) = 12;
  *(v17 + 16) = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251BBCDAC()
{
  result = sub_251C70444();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          sub_251C70534();
          goto LABEL_5;
        }

        if (result == 2)
        {
LABEL_14:
          sub_251C704D4();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            goto LABEL_14;
          case 4:
            v3 = v0;
            sub_251AB99F4();
            break;
          case 5:
            v3 = v0;
            sub_251BBE110();
            break;
          default:
            goto LABEL_5;
        }

        v0 = v3;
        sub_251C70494();
      }

LABEL_5:
      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251BBCED0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_251C70674(), !v1))
  {
    v6 = v0[2];
    v7 = v0[3];
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_14;
      }

      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((v7 & 0xFF000000000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v9 = v6;
      v10 = v6 >> 32;
    }

    if (v9 == v10)
    {
      goto LABEL_14;
    }

LABEL_13:
    result = sub_251C70624();
    if (v1)
    {
      return result;
    }

LABEL_14:
    v11 = v0[4];
    v12 = v0[5];
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_23;
      }

      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
    }

    else
    {
      if (!v13)
      {
        if ((v12 & 0xFF000000000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v14 = v11;
      v15 = v11 >> 32;
    }

    if (v14 == v15)
    {
      goto LABEL_23;
    }

LABEL_22:
    result = sub_251C70624();
    if (v1)
    {
      return result;
    }

LABEL_23:
    if (v0[6])
    {
      v17 = v0[6];
      v18 = *(v0 + 56);
      sub_251AB99F4();
      result = sub_251C70604();
      if (v1)
      {
        return result;
      }

      if (!v0[8])
      {
        goto LABEL_29;
      }
    }

    else if (!v0[8])
    {
LABEL_29:
      v16 = v0 + *(type metadata accessor for PBAssociatedData(0) + 36);
      return sub_251C70394();
    }

    v19 = *(v0 + 72);
    sub_251BBE110();
    result = sub_251C70604();
    if (v1)
    {
      return result;
    }

    goto LABEL_29;
  }

  return result;
}

uint64_t sub_251BBD0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_251C745D0;
  *(a2 + 32) = xmmword_251C745D0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  v2 = a2 + *(a1 + 36);
  return sub_251C703A4();
}

uint64_t sub_251BBD150(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BBDEF8(&qword_27F47B980, type metadata accessor for PBAssociatedData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251BBD1F0(uint64_t a1)
{
  v2 = sub_251BBDEF8(&qword_27F47B968, type metadata accessor for PBAssociatedData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251BBD25C()
{
  sub_251BBDEF8(&qword_27F47B968, type metadata accessor for PBAssociatedData);

  return sub_251C705C4();
}

uint64_t sub_251BBD2DC()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A2728);
  __swift_project_value_buffer(v0, qword_27F4A2728);
  sub_251BBE77C(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_251C7C1F0;
  v5 = v21 + v4;
  v6 = v21 + v4 + *(v2 + 56);
  *(v21 + v4) = 2;
  *v6 = "iv";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 3;
  *v10 = "associated_data";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 4;
  *v13 = "cyphertext";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 5;
  *v15 = "data_protocol_version";
  *(v15 + 1) = 21;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 6;
  *v17 = "algorithm";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 7;
  *v19 = "client_version";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251BBD5C4()
{
  result = sub_251C70444();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        switch(result)
        {
          case 5:
            v3 = v0;
            sub_251BBE6D4();
LABEL_19:
            v0 = v3;
            sub_251C70494();
            break;
          case 6:
            v3 = v0;
            sub_251BBE728();
            goto LABEL_19;
          case 7:
            sub_251C70534();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 2:
            goto LABEL_16;
          case 3:
            sub_251BBD70C();
            break;
          case 4:
LABEL_16:
            sub_251C704D4();
            break;
        }
      }

      result = sub_251C70444();
    }
  }

  return result;
}

uint64_t sub_251BBD70C()
{
  v0 = *(type metadata accessor for PBNode(0) + 40);
  type metadata accessor for PBAssociatedData(0);
  sub_251BBDEF8(&qword_27F47B968, type metadata accessor for PBAssociatedData);
  return sub_251C70564();
}

uint64_t sub_251BBD7C0()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 == v6)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_251C70624();
  if (v1)
  {
    return result;
  }

LABEL_10:
  result = sub_251BBD9C0(v0);
  if (v1)
  {
    return result;
  }

  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_21;
    }

    v11 = *(v8 + 16);
    v12 = *(v8 + 24);
  }

  else
  {
    if (!v10)
    {
      if ((v9 & 0xFF000000000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v11 = v8;
    v12 = v8 >> 32;
  }

  if (v11 != v12)
  {
LABEL_20:
    sub_251C70624();
  }

LABEL_21:
  if (*(v0 + 32))
  {
    v16 = *(v0 + 32);
    v18 = *(v0 + 40);
    sub_251BBE6D4();
    sub_251C70604();
  }

  if (*(v0 + 48))
  {
    v17 = *(v0 + 48);
    v19 = *(v0 + 56);
    sub_251BBE728();
    sub_251C70604();
  }

  v13 = *(v0 + 72);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *(v0 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    sub_251C70674();
  }

  v15 = v0 + *(type metadata accessor for PBNode(0) + 36);
  return sub_251C70394();
}

uint64_t sub_251BBD9C0(uint64_t a1)
{
  sub_251BBE77C(0, &qword_27F47B9A8, type metadata accessor for PBAssociatedData, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for PBAssociatedData(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBNode(0);
  sub_251BBE7E0(a1 + *(v11 + 40), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_251BBE874(v5);
  }

  sub_251BBE900(v5, v10);
  sub_251BBDEF8(&qword_27F47B968, type metadata accessor for PBAssociatedData);
  sub_251C706A4();
  return sub_251BBE9F8(v10, type metadata accessor for PBAssociatedData);
}

uint64_t sub_251BBDBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_251C745D0;
  *(a2 + 16) = xmmword_251C745D0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  v4 = a2 + *(a1 + 36);
  sub_251C703A4();
  v5 = *(a1 + 40);
  v6 = type metadata accessor for PBAssociatedData(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_251BBDCBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_251BBDEF8(&qword_27F47B990, type metadata accessor for PBNode);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251BBDD5C(uint64_t a1)
{
  v2 = sub_251BBDEF8(&qword_27F47B948, type metadata accessor for PBNode);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251BBDDC8()
{
  sub_251BBDEF8(&qword_27F47B948, type metadata accessor for PBNode);

  return sub_251C705C4();
}

uint64_t sub_251BBDEF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_251BBE110()
{
  result = qword_27F47B988;
  if (!qword_27F47B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B988);
  }

  return result;
}

uint64_t sub_251BBE164(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PBAssociatedData(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BBE77C(0, &qword_27F47B9A8, type metadata accessor for PBAssociatedData, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v30 - v11);
  sub_251BBE964();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_251A9D1F0(*a1, a1[1], *a2, *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_34;
  }

  v18 = type metadata accessor for PBNode(0);
  v19 = *(v18 + 40);
  v20 = *(v14 + 48);
  sub_251BBE7E0(a1 + v19, v17);
  sub_251BBE7E0(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_251BBE874(v17);
      goto LABEL_9;
    }

LABEL_7:
    sub_251BBE9F8(v17, sub_251BBE964);
    goto LABEL_34;
  }

  sub_251BBE7E0(v17, v12);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    sub_251BBE9F8(v12, type metadata accessor for PBAssociatedData);
    goto LABEL_7;
  }

  sub_251BBE900(&v17[v20], v8);
  v22 = sub_251BBE554(v12, v8);
  sub_251BBE9F8(v8, type metadata accessor for PBAssociatedData);
  sub_251BBE9F8(v12, type metadata accessor for PBAssociatedData);
  sub_251BBE874(v17);
  if ((v22 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_9:
  if ((sub_251A9D1F0(a1[2], a1[3], *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    goto LABEL_34;
  }

  v23 = a1[4];
  v24 = *(a2 + 32);
  if (*(a2 + 40) == 1)
  {
    if (v24)
    {
      if (v24 == 1)
      {
        if (v23 != 1)
        {
          goto LABEL_34;
        }
      }

      else if (v23 != 2)
      {
        goto LABEL_34;
      }
    }

    else if (v23)
    {
      goto LABEL_34;
    }
  }

  else if (v23 != v24)
  {
    goto LABEL_34;
  }

  v25 = a1[6];
  v26 = *(a2 + 48);
  if (*(a2 + 56) == 1)
  {
    if (v26)
    {
      if (v26 == 1)
      {
        if (v25 == 1)
        {
          goto LABEL_30;
        }
      }

      else if (v25 == 2)
      {
        goto LABEL_30;
      }

LABEL_34:
      v28 = 0;
      return v28 & 1;
    }

    if (v25)
    {
      goto LABEL_34;
    }
  }

  else if (v25 != v26)
  {
    goto LABEL_34;
  }

LABEL_30:
  if ((a1[8] != *(a2 + 64) || a1[9] != *(a2 + 72)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_34;
  }

  v27 = *(v18 + 36);
  sub_251C703B4();
  sub_251BBDEF8(&qword_27F478F98, MEMORY[0x277D216C8]);
  v28 = sub_251C70ED4();
  return v28 & 1;
}

uint64_t sub_251BBE554(void *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_251C719D4() & 1) == 0 || (sub_251A9D1F0(a1[2], a1[3], *(a2 + 16), *(a2 + 24)) & 1) == 0 || (sub_251A9D1F0(a1[4], a1[5], *(a2 + 32), *(a2 + 40)) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[6];
  v6 = *(a2 + 48);
  if (*(a2 + 56) == 1)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        if (v5 != 2)
        {
          return 0;
        }
      }

      else if (v5 != 3)
      {
        return 0;
      }
    }

    else if (v6)
    {
      if (v5 != 1)
      {
        return 0;
      }
    }

    else if (v5)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  v7 = a1[8];
  v8 = *(a2 + 64);
  if (*(a2 + 72) != 1)
  {
    if (v7 == v8)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      if (v7 == 1)
      {
        goto LABEL_31;
      }

      return 0;
    }

    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

LABEL_31:
  v10 = *(type metadata accessor for PBAssociatedData(0) + 36);
  sub_251C703B4();
  sub_251BBDEF8(&qword_27F478F98, MEMORY[0x277D216C8]);
  return sub_251C70ED4() & 1;
}

unint64_t sub_251BBE6D4()
{
  result = qword_27F47B998;
  if (!qword_27F47B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B998);
  }

  return result;
}

unint64_t sub_251BBE728()
{
  result = qword_27F47B9A0;
  if (!qword_27F47B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B9A0);
  }

  return result;
}

void sub_251BBE77C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251BBE7E0(uint64_t a1, uint64_t a2)
{
  sub_251BBE77C(0, &qword_27F47B9A8, type metadata accessor for PBAssociatedData, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251BBE874(uint64_t a1)
{
  sub_251BBE77C(0, &qword_27F47B9A8, type metadata accessor for PBAssociatedData, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251BBE900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBAssociatedData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_251BBE964()
{
  if (!qword_27F47B9B0)
  {
    sub_251BBE77C(255, &qword_27F47B9A8, type metadata accessor for PBAssociatedData, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47B9B0);
    }
  }
}

uint64_t sub_251BBE9F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251BBEAB0()
{
  result = sub_251C703B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251BBEB78()
{
  sub_251C703B4();
  if (v0 <= 0x3F)
  {
    sub_251BBE77C(319, &qword_27F47B9A8, type metadata accessor for PBAssociatedData, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_251BBEC64()
{
  result = qword_27F47B9D8;
  if (!qword_27F47B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B9D8);
  }

  return result;
}

unint64_t sub_251BBECEC()
{
  result = qword_27F47B9F0;
  if (!qword_27F47B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47B9F0);
  }

  return result;
}

unint64_t sub_251BBED74()
{
  result = qword_27F47BA08;
  if (!qword_27F47BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BA08);
  }

  return result;
}

unint64_t sub_251BBEDFC()
{
  result = qword_27F47BA20;
  if (!qword_27F47BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BA20);
  }

  return result;
}

unint64_t sub_251BBEE54()
{
  result = qword_27F47BA28;
  if (!qword_27F47BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BA28);
  }

  return result;
}

unint64_t sub_251BBEEAC()
{
  result = qword_27F47BA30;
  if (!qword_27F47BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BA30);
  }

  return result;
}

unint64_t sub_251BBEF04()
{
  result = qword_27F47BA38;
  if (!qword_27F47BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BA38);
  }

  return result;
}

unint64_t sub_251BBEF5C()
{
  result = qword_27F47BA40;
  if (!qword_27F47BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BA40);
  }

  return result;
}

unint64_t sub_251BBEFB4()
{
  result = qword_27F47BA48;
  if (!qword_27F47BA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BA48);
  }

  return result;
}

uint64_t type metadata accessor for ClinicalSharingDataNodeInfo()
{
  result = qword_27F47BA50;
  if (!qword_27F47BA50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251BBF07C()
{
  sub_251BBF120();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PBReference(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PBTypedData(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251BBF120()
{
  if (!qword_2813E1DF8)
  {
    sub_251C70074();
    sub_251AD27C4(&qword_2813E74E0);
    v0 = sub_251C71294();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1DF8);
    }
  }
}

uint64_t sub_251BBF1A4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_251C71AA4();

    sub_251C70FB4();
    v17 = sub_251C71AD4();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_251C719D4() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251BBF35C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C70074();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_251AD27C4(&qword_2813E74E0);
      v28 = sub_251C70E84();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_251AD27C4(&qword_27F4796A0);
        v33 = sub_251C70ED4();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}