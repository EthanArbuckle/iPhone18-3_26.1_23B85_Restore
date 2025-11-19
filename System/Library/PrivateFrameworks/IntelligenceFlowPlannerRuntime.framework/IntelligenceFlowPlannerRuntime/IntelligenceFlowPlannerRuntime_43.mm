uint64_t sub_22C724160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v48 = a3;
  v4 = sub_22C900F4C();
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v4);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9BF960, &unk_22C9238A0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v42 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v43 = &v41 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v44 = &v41 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v41 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v41 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v41 - v27;
  sub_22C900B5C();
  v29 = sub_22C370B74(v28, 1, v4);
  sub_22C3AC228(v28, &qword_27D9BF960, &unk_22C9238A0);
  if (v29 == 1)
  {
    sub_22C900B7C();
    v30 = sub_22C370B74(v23, 1, v4);
    sub_22C3AC228(v23, &qword_27D9BF960, &unk_22C9238A0);
    if (v30 != 1)
    {
      sub_22C900B7C();
      goto LABEL_11;
    }

    sub_22C900BAC();
    v31 = sub_22C370B74(v17, 1, v4);
    sub_22C3AC228(v17, &qword_27D9BF960, &unk_22C9238A0);
    if (v31 != 1)
    {
      v20 = v44;
      sub_22C900BAC();
      goto LABEL_11;
    }

    v32 = v43;
    sub_22C900B9C();
    v33 = sub_22C370B74(v32, 1, v4);
    sub_22C3AC228(v32, &qword_27D9BF960, &unk_22C9238A0);
    if (v33 != 1)
    {
      v20 = v42;
      sub_22C900B9C();
LABEL_11:
      if (!sub_22C370B74(v20, 1, v4))
      {
        v38 = v46;
        v37 = v47;
        (*(v47 + 16))(v46, v20, v4);
        sub_22C3AC228(v20, &qword_27D9BF960, &unk_22C9238A0);

        sub_22C900EFC();
        (*(v37 + 8))(v38, v4);
        goto LABEL_15;
      }

      v34 = v20;
      goto LABEL_13;
    }
  }

  else
  {
    sub_22C900B5C();
    if (sub_22C370B74(v26, 1, v4))
    {
      v34 = v26;
LABEL_13:
      sub_22C3AC228(v34, &qword_27D9BF960, &unk_22C9238A0);
      goto LABEL_15;
    }

    v35 = v46;
    v36 = v47;
    (*(v47 + 16))(v46, v26, v4);
    sub_22C3AC228(v26, &qword_27D9BF960, &unk_22C9238A0);

    sub_22C900EFC();
    (*(v36 + 8))(v35, v4);
  }

LABEL_15:
  v39 = sub_22C900BDC();
  return (*(*(v39 - 8) + 16))(v48, a1, v39);
}

uint64_t sub_22C724618@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a2;
  v67 = a3;
  v4 = sub_22C900BDC();
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v58 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v58 - v8;
  v9 = sub_22C9063DC();
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = *(v63 + 64);
  MEMORY[0x28223BE20](v9);
  v65 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C3A5908(&qword_27D9BF960, &unk_22C9238A0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v66 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v58 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v58 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v58 - v22;
  v24 = sub_22C900F4C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v59 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v58 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v58 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v58 - v35;
  sub_22C900B5C();
  if (sub_22C370B74(v23, 1, v24) != 1)
  {
    (*(v25 + 32))(v36, v23, v24);
    v52 = v67;
    sub_22C724CD4(0, v67);
    (*(v25 + 8))(v36, v24);
    v53 = 0;
    v37 = v52;
    goto LABEL_12;
  }

  v37 = v67;
  sub_22C3AC228(v23, &qword_27D9BF960, &unk_22C9238A0);
  sub_22C900B7C();
  if (sub_22C370B74(v21, 1, v24) != 1)
  {
    (*(v25 + 32))(v34, v21, v24);
    v54 = v37;
    v55 = 0;
LABEL_9:
    sub_22C724CD4(v55, v54);
    (*(v25 + 8))(v34, v24);
LABEL_11:
    v53 = 0;
    goto LABEL_12;
  }

  sub_22C3AC228(v21, &qword_27D9BF960, &unk_22C9238A0);
  sub_22C900BAC();
  if (sub_22C370B74(v18, 1, v24) != 1)
  {
    (*(v25 + 32))(v31, v18, v24);
    sub_22C724CD4(0, v37);
    (*(v25 + 8))(v31, v24);
    goto LABEL_11;
  }

  sub_22C3AC228(v18, &qword_27D9BF960, &unk_22C9238A0);
  v38 = v66;
  sub_22C900B9C();
  if (sub_22C370B74(v38, 1, v24) != 1)
  {
    v34 = v59;
    (*(v25 + 32))(v59, v38, v24);
    v54 = v37;
    v55 = 1;
    goto LABEL_9;
  }

  sub_22C3AC228(v38, &qword_27D9BF960, &unk_22C9238A0);
  v39 = v65;
  sub_22C903F8C();
  v41 = v60;
  v40 = v61;
  v42 = *(v61 + 16);
  v43 = v62;
  v42(v60, a1, v62);
  v44 = sub_22C9063CC();
  v45 = sub_22C90AADC();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v69 = v68;
    *v46 = 136315138;
    LODWORD(v66) = v45;
    v42(v58, v41, v43);
    v47 = sub_22C90A1AC();
    v49 = v48;
    (*(v40 + 8))(v41, v43);
    v50 = sub_22C36F9F4(v47, v49, &v69);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_22C366000, v44, v66, "StructuredQueryConverter: Ignoring empty person query: %s", v46, 0xCu);
    v51 = v68;
    sub_22C36FF94(v68);
    MEMORY[0x2318B9880](v51, -1, -1);
    MEMORY[0x2318B9880](v46, -1, -1);

    (*(v63 + 8))(v65, v64);
  }

  else
  {

    (*(v40 + 8))(v41, v43);
    (*(v63 + 8))(v39, v64);
  }

  v53 = 1;
LABEL_12:
  v56 = sub_22C90665C();
  return sub_22C36C640(v37, v53, 1, v56);
}

uint64_t sub_22C724CD4@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v37 = a1;
  v36 = a2;
  v2 = sub_22C3A5908(&qword_27D9BF968, &qword_22C925FA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v34 - v4;
  v6 = sub_22C3A5908(&qword_27D9BF970, &qword_22C9238B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v34 - v8;
  v10 = sub_22C900B4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v18 = sub_22C3A5908(&qword_27D9BF7A8, &unk_22C923360);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v34 - v23;
  v35 = sub_22C90663C();
  sub_22C36C640(v24, 1, 1, v35);
  v25 = sub_22C900EEC();
  if (!v25)
  {
    sub_22C36C640(v9, 1, 1, v10);
    goto LABEL_6;
  }

  sub_22C58B7B0(v25, v9);

  if (sub_22C370B74(v9, 1, v10) == 1)
  {
LABEL_6:
    sub_22C3AC228(v9, &qword_27D9BF970, &qword_22C9238B0);
    goto LABEL_12;
  }

  (*(v11 + 32))(v17, v9, v10);
  (*(v11 + 16))(v15, v17, v10);
  v26 = (*(v11 + 88))(v15, v10);
  if (v26 == *MEMORY[0x277D36F30])
  {
    v27 = MEMORY[0x277D1DB68];
  }

  else if (v26 == *MEMORY[0x277D36F28])
  {
    v27 = MEMORY[0x277D1DB60];
  }

  else
  {
    if (v26 != *MEMORY[0x277D36F38])
    {
      result = sub_22C90B4EC();
      __break(1u);
      return result;
    }

    v27 = MEMORY[0x277D1DB70];
  }

  v28 = *v27;
  v29 = sub_22C90660C();
  (*(*(v29 - 8) + 104))(v5, v28, v29);
  sub_22C36C640(v5, 0, 1, v29);
  sub_22C90661C();
  (*(v11 + 8))(v17, v10);
  sub_22C3AC228(v24, &qword_27D9BF7A8, &unk_22C923360);
  sub_22C36C640(v22, 0, 1, v35);
  sub_22C726D8C(v22, v24);
LABEL_12:
  v30 = sub_22C900F0C();
  if (v30)
  {
    if (v30[2])
    {
      v31 = v30[4];
      v32 = v30[5];
    }
  }

  sub_22C726F20(v24, v22, &qword_27D9BF7A8, &unk_22C923360);
  sub_22C9065CC();
  return sub_22C3AC228(v24, &qword_27D9BF7A8, &unk_22C923360);
}

uint64_t sub_22C725158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v22[1] = a3;
  v7 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v22 - v9;
  v11 = sub_22C90952C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22C9090BC();
  v16 = swift_allocBox();
  v17 = swift_allocObject();
  v17[2] = 0xD000000000000028;
  v17[3] = 0x800000022C92EB40;
  v17[4] = a1;
  v17[5] = a2;
  *v15 = v17;
  (*(v12 + 104))(v15, *MEMORY[0x277D72D28], v11);
  v18 = sub_22C90993C();
  sub_22C36C640(v10, 1, 1, v18);

  sub_22C90909C();
  *a4 = v16;
  v19 = *MEMORY[0x277D729E8];
  v20 = sub_22C9093BC();
  return (*(*(v20 - 8) + 104))(a4, v19, v20);
}

uint64_t sub_22C725374@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t *a4@<X8>)
{
  v7 = a1();
  sub_22C725158(a2, a3, v7, a4);
}

uint64_t sub_22C7253F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22C9093BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_22C90952C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_22C9094EC();
  v15 = swift_allocBox();
  (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D72CE0], v14);
  *v13 = v15;
  (*(v10 + 104))(v13, *MEMORY[0x277D72D50], v9);
  v17 = *(a1 + 16);
  if (v17)
  {
    v31[1] = v13;
    v32 = a2;
    v39 = MEMORY[0x277D84F90];
    sub_22C3B74E0(0, v17, 0);
    v18 = v39;
    v19 = sub_22C90931C();
    v37 = *MEMORY[0x277D729B8];
    v36 = v19 - 8;
    v35 = *MEMORY[0x277D72A58];
    v38 = v5;
    v33 = v5 + 32;
    v34 = (v5 + 104);
    v20 = (a1 + 40);
    do
    {
      v22 = *(v20 - 1);
      v21 = *v20;
      v23 = swift_allocBox();
      *v24 = v22;
      v24[1] = v21;
      (*(*(v19 - 8) + 104))(v24, v37, v19);
      *v8 = v23;
      (*v34)(v8, v35, v4);
      v39 = v18;
      v25 = v8;
      v26 = v4;
      v27 = *(v18 + 16);
      v28 = *(v18 + 24);

      if (v27 >= v28 >> 1)
      {
        sub_22C3B74E0(v28 > 1, v27 + 1, 1);
        v18 = v39;
      }

      *(v18 + 16) = v27 + 1;
      (*(v38 + 32))(v18 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v27, v25, v26);
      v20 += 2;
      --v17;
      v4 = v26;
      v8 = v25;
    }

    while (v17);
    a2 = v32;
    v5 = v38;
  }

  sub_22C90906C();
  v29 = swift_allocBox();
  sub_22C90903C();
  *a2 = v29;
  return (*(v5 + 104))(a2, *MEMORY[0x277D729E0], v4);
}

uint64_t sub_22C725774@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v1 = sub_22C9093BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  v9 = sub_22C900C2C();
  v11 = MEMORY[0x277D84F98];
  if (v10)
  {
    sub_22C725A08(v9, v10, v8);

    (*(v2 + 32))(v6, v8, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22C62EC0C(v6, 0x6669636570736E75, 0xEB00000000646569, isUniquelyReferenced_nonNull_native, v13, v14, v15, v16, v32, v33, v34, v11, v36, v37);
    v11 = v35;
  }

  v17 = sub_22C900C4C();
  if (v18)
  {
    sub_22C725A08(v17, v18, v8);

    (*(v2 + 32))(v6, v8, v1);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_22C62EC0C(v6, 0x6C617669727261, 0xE700000000000000, v19, v20, v21, v22, v23, v32, v33, v34, v11, v36, v37);
    v11 = v35;
  }

  v24 = sub_22C900C6C();
  if (v25)
  {
    sub_22C725A08(v24, v25, v8);

    (*(v2 + 32))(v6, v8, v1);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_22C62EC0C(v6, 0x7275747261706564, 0xE900000000000065, v26, v27, v28, v29, v30, v32, v33, v34, v11, v36, v37);
  }

  sub_22C725BB0(0xD000000000000013, 0x800000022C933C60, v32);
}

uint64_t sub_22C725A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22C9093BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v11 = sub_22C90931C();
    v12 = swift_allocBox();
    *v13 = a1;
    v13[1] = a2;
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D729B8], v11);
  }

  else
  {
    v14 = sub_22C90931C();
    v12 = swift_allocBox();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D729A0], v14);
  }

  *v10 = v12;
  (*(v7 + 104))(v10, *MEMORY[0x277D72A58], v6);
  (*(v7 + 32))(a3, v10, v6);
}

uint64_t sub_22C725BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  v10 = sub_22C90952C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22C90919C();
  v15 = swift_allocBox();
  v16 = swift_allocObject();
  v16[2] = 0xD000000000000028;
  v16[3] = 0x800000022C92EB40;
  v16[4] = a1;
  v16[5] = a2;
  *v14 = v16;
  (*(v11 + 104))(v14, *MEMORY[0x277D72D28], v10);
  v17 = sub_22C90993C();
  sub_22C36C640(v9, 1, 1, v17);

  sub_22C90917C();
  *a3 = v15;
  v18 = *MEMORY[0x277D72A38];
  v19 = sub_22C9093BC();
  return (*(*(v19 - 8) + 104))(a3, v18, v19);
}

uint64_t sub_22C725DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v77 = a3;
  v81 = a2;
  v4 = sub_22C9093BC();
  v80 = *(v4 - 8);
  v5 = *(v80 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v70 - v9);
  v11 = sub_22C3A5908(&qword_27D9BF960, &unk_22C9238A0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v75 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v74 = &v70 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v70 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v70 - v20;
  v22 = sub_22C900F4C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v72 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v71 = &v70 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v70 = &v70 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v70 - v31;
  v82 = a1;
  sub_22C900B5C();
  v33 = sub_22C370B74(v21, 1, v22);
  v78 = v23;
  v79 = v4;
  v76 = v10;
  if (v33 == 1)
  {
    v34 = v8;
    sub_22C3AC228(v21, &qword_27D9BF960, &unk_22C9238A0);
    v35 = MEMORY[0x277D84F98];
  }

  else
  {
    (*(v23 + 32))(v32, v21, v22);
    sub_22C726454(v32, v10);
    (*(v80 + 32))(v8, v10, v4);
    v36 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = v36;
    v34 = v8;
    sub_22C62EC0C(v8, 0x6669636570736E75, 0xEB00000000646569, isUniquelyReferenced_nonNull_native, v38, v39, v40, v41, v70, v71, v72, v73, v74, v75);
    v35 = v83;
    (*(v23 + 8))(v32, v22);
  }

  sub_22C900B7C();
  v42 = sub_22C370B74(v19, 1, v22);
  v43 = v74;
  v73 = v34;
  if (v42 == 1)
  {
    sub_22C3AC228(v19, &qword_27D9BF960, &unk_22C9238A0);
    v44 = v76;
  }

  else
  {
    v45 = v78;
    v46 = v70;
    (*(v78 + 32))(v70, v19, v22);
    v44 = v76;
    sub_22C726454(v46, v76);
    (*(v80 + 32))(v34, v44, v79);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v35;
    sub_22C62EC0C(v34, 0x7265646E6573, 0xE600000000000000, v47, v48, v49, v50, v51, v70, v71, v72, v73, v74, v75);
    v35 = v83;
    (*(v45 + 8))(v46, v22);
  }

  v52 = v75;
  sub_22C900BAC();
  if (sub_22C370B74(v43, 1, v22) == 1)
  {
    sub_22C3AC228(v43, &qword_27D9BF960, &unk_22C9238A0);
    v53 = v80;
    v54 = v78;
  }

  else
  {
    v54 = v78;
    v55 = v71;
    (*(v78 + 32))(v71, v43, v22);
    sub_22C726454(v55, v44);
    v53 = v80;
    v56 = v73;
    (*(v80 + 32))(v73, v44, v79);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v35;
    sub_22C62EC0C(v56, 0x7265766965636572, 0xE800000000000000, v57, v58, v59, v60, v61, v70, v71, v72, v73, v74, v75);
    v35 = v83;
    (*(v54 + 8))(v55, v22);
  }

  sub_22C900B9C();
  if (sub_22C370B74(v52, 1, v22) == 1)
  {
    sub_22C3AC228(v52, &qword_27D9BF960, &unk_22C9238A0);
  }

  else
  {
    v62 = v72;
    (*(v54 + 32))(v72, v52, v22);
    sub_22C726454(v62, v44);
    v63 = v73;
    (*(v53 + 32))(v73, v44, v79);
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v35;
    sub_22C62EC0C(v63, 0x666C6573656E6FLL, 0xE700000000000000, v64, v65, v66, v67, v68, v70, v71, v72, v73, v74, v75);
    (*(v54 + 8))(v62, v22);
  }

  sub_22C725BB0(0xD000000000000011, 0x800000022C933C40, v77);
}

uint64_t sub_22C726454@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_22C90952C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v81 = (&v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v12 = (&v74 - v11);
  v13 = sub_22C9093BC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v82 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v90 = &v74 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v83 = (&v74 - v21);
  MEMORY[0x28223BE20](v20);
  v80 = (&v74 - v22);
  v23 = sub_22C900F0C();
  v24 = MEMORY[0x277D84F98];
  v84 = a2;
  if (v23)
  {
    v25 = v23;
    v76 = a1;
    v79 = v3;
    v26 = sub_22C9094EC();
    v27 = swift_allocBox();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D72CE0], v26);
    *v12 = v27;
    v29 = *MEMORY[0x277D72D50];
    v77 = v7;
    v78 = v6;
    v30 = *(v7 + 104);
    v75 = v12;
    result = v30(v12, v29, v6);
    v32 = 0;
    v89 = *(v25 + 16);
    v86 = *MEMORY[0x277D729B8];
    v85 = *MEMORY[0x277D72A58];
    v87 = (v14 + 104);
    v88 = (v14 + 32);
    v33 = (v25 + 40);
    v34 = MEMORY[0x277D84F90];
    for (i = v25; ; i = v36)
    {
      if (v89 == v32)
      {
        sub_22C90906C();
        v50 = swift_allocBox();

        sub_22C90903C();
        v51 = v80;
        *v80 = v50;
        (*v87)(v51, *MEMORY[0x277D729E0], v13);
        v52 = v83;
        (*v88)(v83, v51, v13);
        v53 = MEMORY[0x277D84F98];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v91 = v53;
        sub_22C62EC0C(v52, 1701667182, 0xE400000000000000, isUniquelyReferenced_nonNull_native, v55, v56, v57, v58, v74, v75, v76, v77, v78, v79);
        v24 = v91;
        v6 = v78;
        v59 = v79;
        a2 = v84;
        v7 = v77;
        goto LABEL_12;
      }

      if (v32 >= *(i + 16))
      {
        break;
      }

      v36 = i;
      v37 = v14;
      v38 = *(v33 - 1);
      v39 = *v33;
      v40 = v13;
      v41 = sub_22C90931C();
      v42 = swift_allocBox();
      *v43 = v38;
      v43[1] = v39;
      v44 = *(*(v41 - 8) + 104);
      v45 = v41;
      v13 = v40;
      v44(v43, v86, v45);
      *v90 = v42;
      (*v87)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = *(v34 + 16);
        sub_22C5903C0();
        v34 = v48;
      }

      v14 = v37;
      v46 = *(v34 + 16);
      if (v46 >= *(v34 + 24) >> 1)
      {
        sub_22C5903C0();
        v34 = v49;
      }

      *(v34 + 16) = v46 + 1;
      result = (*(v37 + 32))(v34 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v46, v90, v13);
      v33 += 2;
      ++v32;
    }

    __break(1u);
  }

  else
  {
    v59 = v3;
LABEL_12:
    if (sub_22C900EEC())
    {
      v90 = "TemporalReference";
      sub_22C90906C();
      v60 = swift_allocBox();
      v61 = swift_allocObject();
      v61[2] = 0xD000000000000028;
      v61[3] = 0x800000022C92EB40;
      v61[4] = 0xD000000000000011;
      v61[5] = 0x800000022C933CC0;
      v62 = v6;
      v63 = v14;
      v64 = v81;
      *v81 = v61;
      v65 = (*(v7 + 104))(v64, *MEMORY[0x277D72D28], v62);
      MEMORY[0x28223BE20](v65);
      *(&v74 - 2) = v59;
      sub_22C7946DC();

      sub_22C90903C();
      v66 = v83;
      *v83 = v60;
      (*(v63 + 104))(v66, *MEMORY[0x277D729E0], v13);
      v67 = v82;
      v68 = v66;
      a2 = v84;
      (*(v63 + 32))(v82, v68, v13);
      v69 = swift_isUniquelyReferenced_nonNull_native();
      v91 = v24;
      sub_22C62EC0C(v67, 0xD000000000000011, v90 | 0x8000000000000000, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
    }

    sub_22C725BB0(0x6E6F73726550, 0xE600000000000000, a2);
  }

  return result;
}

uint64_t sub_22C726AF0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22C900B3C();
  sub_22C725158(0xD000000000000011, 0x800000022C933CC0, v2, a1);

  v3 = sub_22C9093BC();
  return sub_22C36C640(a1, 0, 1, v3);
}

uint64_t sub_22C726BA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C726D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BF7A8, &unk_22C923360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C726E1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BF800, &qword_22C923130);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C726E8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C369848(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C726F20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(sub_22C3A5908(a3, a4) - 8) + 16);
  v6 = sub_22C36BA00();
  v7(v6);
  return a2;
}

void sub_22C726FAC()
{
  sub_22C900EDC();
  if (v0 <= 0x3F)
  {
    sub_22C6AAFC8();
    if (v1 <= 0x3F)
    {
      sub_22C908AEC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22C727048()
{
  v2 = v0[31];
  result = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[22];
  v10 = v0[18];
  v11 = v0[19];
  return result;
}

uint64_t sub_22C727118@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 128) = a1;
  return result;
}

void sub_22C727168()
{
  v1 = v0[34];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
}

void *sub_22C72717C()
{
  v1 = v0;
  v44 = sub_22C90634C();
  v2 = sub_22C369824(v44);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v2);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v12 = sub_22C90636C();
  v13 = sub_22C369824(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v42 = *(v15 + 8);
  v43 = v12;
  v42(v20, v12);
  v23 = sub_22C90635C();
  v24 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v25 = swift_slowAlloc();
    v41 = v1;
    v26 = v25;
    *v25 = 0;
    v27 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v23, v24, v27, "ToolResolver.init", "", v26, 2u);
    v1 = v41;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v28 = v44;
  (*(v4 + 16))(v9, v11, v44);
  v29 = sub_22C9063AC();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_22C90639C();
  (*(v4 + 8))(v11, v28);
  v42(v22, v43);
  type metadata accessor for JointResolver();
  v32 = v45;
  v33 = sub_22C7500B8();
  if (v32)
  {
    sub_22C7274EC();

    type metadata accessor for ToolResolver();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[2] = v33;
    type metadata accessor for JointResolverFeaturizer();
    swift_allocObject();
    v1[3] = sub_22C7550A4();
    v34 = v1;
    v35 = type metadata accessor for DeviceContextClient();
    v36 = swift_allocObject();
    v37 = sub_22C9043BC();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    *(v36 + 16) = sub_22C9043AC();
    v34[7] = v35;
    v34[8] = &off_283FBED08;
    v1 = v34;
    v34[4] = v36;
    sub_22C7274EC();
  }

  return v1;
}

uint64_t sub_22C7274EC()
{
  v31 = sub_22C90637C();
  v29 = *(v31 - 1);
  v0 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22C90634C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C90636C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90365C();
  v13 = sub_22C90635C();
  sub_22C90638C();
  v30 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v26 = v9;
    v27 = v8;
    v28 = v3;

    sub_22C9063BC();

    v14 = v29;
    v15 = v31;
    if ((*(v29 + 88))(v2, v31) == *MEMORY[0x277D85B00])
    {
      v16 = 0;
      v17 = 0;
      v31 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v2, v15);
      v31 = "%s";
      v17 = 2;
      v16 = 1;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = v17;
    *(v19 + 1) = v16;
    *(v19 + 2) = 2080;
    sub_22C90366C();
    v21 = sub_22C90AF7C();
    v23 = sub_22C36F9F4(v21, v22, &v32);

    *(v19 + 4) = v23;
    v24 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v13, v30, v24, "ToolResolver.init", v31, v19, 0xCu);
    sub_22C36FF94(v20);
    MEMORY[0x2318B9880](v20, -1, -1);
    MEMORY[0x2318B9880](v19, -1, -1);

    (*(v4 + 8))(v7, v28);
    return (*(v26 + 8))(v12, v27);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_22C727890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a4;
  v5[33] = v4;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  v6 = _s10ModelInputVMa();
  v5[34] = v6;
  v7 = *(*(v6 - 8) + 64);
  v5[35] = sub_22C3699D4();
  v8 = sub_22C9063DC();
  v5[36] = v8;
  sub_22C3699B8(v8);
  v5[37] = v9;
  v11 = *(v10 + 64);
  v5[38] = sub_22C36D0D4();
  v5[39] = swift_task_alloc();
  v12 = *(*(sub_22C3A5908(&qword_27D9BF2C0, &qword_22C925300) - 8) + 64);
  v5[40] = sub_22C36D0D4();
  v5[41] = swift_task_alloc();
  v13 = type metadata accessor for JointResolution.DeviceContext();
  v5[42] = v13;
  v14 = *(*(v13 - 8) + 64);
  v5[43] = sub_22C36D0D4();
  v5[44] = swift_task_alloc();
  v15 = sub_22C90069C();
  v5[45] = v15;
  sub_22C3699B8(v15);
  v5[46] = v16;
  v18 = *(v17 + 64);
  v5[47] = sub_22C3699D4();
  v19 = sub_22C90063C();
  v5[48] = v19;
  sub_22C3699B8(v19);
  v5[49] = v20;
  v22 = *(v21 + 64);
  v5[50] = sub_22C3699D4();
  v23 = sub_22C90977C();
  v5[51] = v23;
  sub_22C3699B8(v23);
  v5[52] = v24;
  v26 = *(v25 + 64);
  v5[53] = sub_22C3699D4();
  v27 = sub_22C908EAC();
  v5[54] = v27;
  sub_22C3699B8(v27);
  v5[55] = v28;
  v30 = *(v29 + 64);
  v5[56] = sub_22C36D0D4();
  v5[57] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v31, v32, v33);
}

uint64_t sub_22C727B24()
{
  v1 = v0[30];
  v2 = *(v1 + 16);
  v0[58] = v2;
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[55];
    v5 = v0[52];
    v55 = MEMORY[0x277D84F90];
    sub_22C3B794C();
    v6 = v55;
    v7 = *(v4 + 16);
    v4 += 16;
    v8 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v49 = *(v4 + 56);
    v50 = v7;
    v51 = v0;
    v47 = (v4 - 8);
    v48 = (v5 + 8);
    do
    {
      v54 = v6;
      v9 = v0[57];
      v11 = v0[53];
      v10 = v0[54];
      v12 = v0[51];
      v50(v9, v8, v10);
      v53 = sub_22C908E7C();
      v14 = v13;
      sub_22C908DDC();
      v52 = sub_22C9096FC();
      v16 = v15;
      (*v48)(v11, v12);
      sub_22C5F8D4C();

      v17 = sub_22C909F0C();
      v18 = v10;
      v6 = v54;
      (*v47)(v9, v18);

      v19 = *(v54 + 16);
      v20 = v19 + 1;
      if (v19 >= *(v54 + 24) >> 1)
      {
        sub_22C3B794C();
        v6 = v54;
      }

      *(v6 + 16) = v20;
      v21 = (v6 + 40 * v19);
      v21[4] = v53;
      v21[5] = v14;
      v21[6] = v52;
      v21[7] = v16;
      v21[8] = v17;
      v8 += v49;
      --v2;
      v0 = v51;
    }

    while (v2);
    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v20 = *(MEMORY[0x277D84F90] + 16);
    if (!v20)
    {
      v22 = MEMORY[0x277D84F90];

      goto LABEL_14;
    }

    v51 = v0;
    v6 = MEMORY[0x277D84F90];
  }

  v56 = v3;
  sub_22C3B781C(0, v20, 0);
  v22 = v56;
  v23 = (v6 + 64);
  do
  {
    v25 = *(v23 - 4);
    v24 = *(v23 - 3);
    v26 = *(v23 - 2);
    v27 = *(v23 - 1);
    v28 = *v23;
    sub_22C3A5908(&qword_27D9BAC10, &qword_22C90D4B0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_22C90F800;
    *(v29 + 32) = v25;
    *(v29 + 40) = v24;
    *(v29 + 48) = v26;
    *(v29 + 56) = v27;
    *(v29 + 64) = v28;
    v30 = *(v56 + 16);
    v31 = *(v56 + 24);

    if (v30 >= v31 >> 1)
    {
      sub_22C3B781C((v31 > 1), v30 + 1, 1);
    }

    *(v56 + 16) = v30 + 1;
    *(v56 + 8 * v30 + 32) = v29;
    v23 += 5;
    --v20;
  }

  while (v20);

  v0 = v51;
LABEL_14:
  v0[59] = v22;
  v32 = v0[50];
  sub_22C90052C();

  v0[60] = sub_22C74C164(v33, &unk_283FAFD78, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  v0[61] = v34;
  v0[62] = v35;
  v0[63] = v36;
  v38 = v0[46];
  v37 = v0[47];
  v39 = v0[45];
  v40 = sub_22C374168((v0[33] + 32), *(v0[33] + 56));
  sub_22C90068C();
  v41 = sub_22C90065C();
  v43 = v42;
  v0[64] = v42;
  (*(v38 + 8))(v37, v39);
  v44 = *v40;
  v45 = swift_task_alloc();
  v0[65] = v45;
  *v45 = v0;
  v45[1] = sub_22C72802C;

  return sub_22C740278((v0 + 2), 0xD00000000000001BLL, 0x800000022C933D40, v41, v43);
}

uint64_t sub_22C72802C()
{
  v2 = *v1;
  sub_22C369A30();
  *v3 = v2;
  v5 = *(v4 + 520);
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  v2[66] = v0;

  if (v0)
  {
    v9 = v2[63];
    v8 = v2[64];
    v11 = v2[61];
    v10 = v2[62];
    v14 = v2 + 59;
    v12 = v2[59];
    v13 = v14[1];
  }

  else
  {
    v15 = v2[64];
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_22C728180()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 352);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 320);
  v6 = *(v0 + 264);
  v7 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v7;
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 121) = *(v0 + 57);
  sub_22C90060C();
  v8 = (v2 + *(v3 + 20));
  v9 = *(v0 + 80);
  v10 = *(v0 + 96);
  v11 = *(v0 + 112);
  *(v8 + 41) = *(v0 + 121);
  v8[1] = v10;
  v8[2] = v11;
  *v8 = v9;
  *(v0 + 536) = *(v6 + 24);
  sub_22C36C640(v4, 1, 1, v1);
  sub_22C36C640(v5, 1, 1, v1);
  v12 = swift_task_alloc();
  *(v0 + 544) = v12;
  *v12 = v0;
  v12[1] = sub_22C7282A8;
  v13 = *(v0 + 320);
  v14 = *(v0 + 328);

  return sub_22C757604();
}

uint64_t sub_22C7282A8(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  v6 = v3[68];
  v7 = v3[41];
  v8 = v3[40];
  v9 = *v1;
  *v5 = *v1;
  v4[69] = a1;

  sub_22C3AC228(v8, &qword_27D9BF2C0, &qword_22C925300);
  sub_22C3AC228(v7, &qword_27D9BF2C0, &qword_22C925300);
  v10 = swift_task_alloc();
  v4[70] = v10;
  *v10 = v9;
  v10[1] = sub_22C7284C4;
  v11 = v3[67];
  v12 = v3[63];
  v13 = v3[62];
  v14 = v3[61];
  v15 = v3[60];
  v16 = v3[50];

  return sub_22C755550();
}

uint64_t sub_22C7284C4()
{
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  v5 = *(v2 + 560);
  v6 = *v1;
  sub_22C369A30();
  *v7 = v6;
  v9[71] = v8;
  v9[72] = v10;
  v9[73] = v0;

  v11 = *(v2 + 552);

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C7285FC()
{
  (*(v0[49] + 8))(v0[50], v0[48]);
  v1 = v0[66];
  v3 = v0[56];
  v2 = v0[57];
  v4 = v0[53];
  sub_22C38BF90();
  sub_22C37095C();

  sub_22C369A24();

  return v5();
}

uint64_t sub_22C7286F8()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 312);

  sub_22C90401C();

  v4 = sub_22C9063CC();
  v5 = sub_22C90AABC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 576);
  v8 = *(v0 + 568);
  if (v6)
  {
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = *(v7 + 16);
    *(v9 + 12) = 2048;
    v10 = *(v8 + 16);

    *(v9 + 14) = v10;

    _os_log_impl(&dword_22C366000, v4, v5, "ToolResolver fetched %ld tupleInteractions and %ld candidateInteractions from InteractionStore", v9, 0x16u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  else
  {
    v11 = *(v0 + 568);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v12 = *(v0 + 472);
  v14 = *(v0 + 344);
  v13 = *(v0 + 352);
  v16 = *(v0 + 272);
  v15 = *(v0 + 280);
  v17 = *(v0 + 264);
  v18 = *(v0 + 480);
  v28 = v18;
  v29 = *(v0 + 568);
  v27 = *(v0 + 496);
  (*(*(v0 + 296) + 8))(*(v0 + 312), *(v0 + 288));
  v19 = *(v12 + 16);

  sub_22C729348(v13, v14);
  sub_22C5C8B28(0x7FFuLL);
  sub_22C389170();
  v20 = (v15 + v16[5]);
  *v20 = v28;
  v20[1] = v27;
  *(v15 + v16[6]) = v29;
  v21 = MEMORY[0x277D84F90];
  *(v15 + v16[7]) = MEMORY[0x277D84F90];
  v22 = (v15 + v16[8]);
  *v22 = v21;
  v22[1] = v19;
  sub_22C374F10(v16[9]);
  *(v15 + v16[10]) = 2;
  *(v15 + v16[11]) = v23;
  v24 = *(v17 + 16);
  v25 = swift_task_alloc();
  *(v0 + 592) = v25;
  *v25 = v0;
  sub_22C36A21C(v25);

  return sub_22C750500();
}

uint64_t sub_22C728940()
{
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  v6 = *(v5 + 592);
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v9 + 600) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_22C728A44()
{
  v2 = *(v0 + 600);
  v3 = sub_22C7432D0();
  if (v2)
  {
    v7 = *(v0 + 392);
    v6 = *(v0 + 400);
    v8 = *(v0 + 384);
    v9 = *(v0 + 352);
    v10 = *(v0 + 280);
    *(v0 + 184) = *(v0 + 160);
    sub_22C3AC228(v0 + 184, &qword_27D9BAC08, &unk_22C91D830);
    *(v0 + 192) = *(v0 + 168);
    sub_22C3AC228(v0 + 192, &qword_27D9BF2D8, &unk_22C9239C0);
    *(v0 + 200) = *(v0 + 176);
    sub_22C3AC228(v0 + 200, &qword_27D9BF2D8, &unk_22C9239C0);
    sub_22C373804();
    sub_22C729410(v10, v11);
    sub_22C36B4C0();
    sub_22C729410(v9, v12);
    (*(v7 + 8))(v6, v8);
    v14 = *(v0 + 448);
    v13 = *(v0 + 456);
    v15 = *(v0 + 424);
    sub_22C38BF90();
    v16 = *(v0 + 312);
    v59 = *(v0 + 304);
    v61 = *(v0 + 280);

    sub_22C369A24();
  }

  else
  {
    v18 = v3;
    v19 = v4;
    v20 = v5;
    *(v0 + 208) = *(v0 + 160);
    sub_22C3AC228(v0 + 208, &qword_27D9BAC08, &unk_22C91D830);
    *(v0 + 216) = *(v0 + 168);
    sub_22C3AC228(v0 + 216, &qword_27D9BF2D8, &unk_22C9239C0);
    *(v0 + 224) = *(v0 + 176);
    sub_22C3AC228(v0 + 224, &qword_27D9BF2D8, &unk_22C9239C0);
    switch(v20)
    {
      case 1:
        if (v18 >= *(v0 + 464))
        {
          goto LABEL_25;
        }

        goto LABEL_5;
      case 2:
        if (v18 < *(v0 + 464))
        {
          goto LABEL_5;
        }

        __break(1u);
LABEL_8:
        v27 = *(v19 + 16);
        if (v27)
        {
          v60 = v18;
          v28 = *(v0 + 440);
          v29 = *(v0 + 240);
          v64 = MEMORY[0x277D84F90];
          sub_22C3B7AE0(0, v27, 0);
          v30 = v64;
          v58 = v19;
          v31 = (v19 + 32);
          v32 = (*(v28 + 80) + 32) & ~*(v28 + 80);
          do
          {
            v34 = *v31++;
            v33 = v34;
            if (v34 >= *(v0 + 464))
            {
              __break(1u);
LABEL_24:
              __break(1u);
LABEL_25:
              __break(1u);
              return;
            }

            v35 = *(v28 + 72);
            (*(v28 + 16))(*(v0 + 448), v29 + v32 + v35 * v33, *(v0 + 432));
            v37 = *(v64 + 16);
            v36 = *(v64 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_22C3B7AE0(v36 > 1, v37 + 1, 1);
            }

            v38 = *(v0 + 448);
            v39 = *(v0 + 432);
            *(v64 + 16) = v37 + 1;
            (*(v28 + 32))(v64 + v32 + v37 * v35, v38, v39);
            --v27;
          }

          while (v27);
          sub_22C72957C();
          sub_22C601E0C(v60, v58, 3);
          sub_22C373804();
          sub_22C729410(v28, v40);
          sub_22C36B4C0();
          sub_22C729410(v37 + 1, v41);
          v42 = sub_22C36C228();
          v43(v42);
        }

        else
        {
          sub_22C72957C();
          sub_22C601E0C(v18, v19, 3);
          sub_22C373804();
          sub_22C729410(v1, v44);
          sub_22C36B4C0();
          sub_22C729410(&unk_22C9239C0, v45);
          v46 = sub_22C36C228();
          v47(v46);
          v30 = MEMORY[0x277D84F90];
        }

        **(v0 + 232) = v30;
        type metadata accessor for ToolResolver.Decision();
LABEL_19:
        swift_storeEnumTagMultiPayload();
        v49 = *(v0 + 448);
        v48 = *(v0 + 456);
        v50 = *(v0 + 424);
        v51 = *(v0 + 400);
        v52 = *(v0 + 376);
        v54 = *(v0 + 344);
        v53 = *(v0 + 352);
        v56 = *(v0 + 320);
        v55 = *(v0 + 328);
        v57 = *(v0 + 312);
        v62 = *(v0 + 304);
        v63 = *(v0 + 280);

        sub_22C369A24();
        break;
      case 3:
        goto LABEL_8;
      default:
        if (v18 >= *(v0 + 464))
        {
          goto LABEL_24;
        }

LABEL_5:
        v21 = sub_22C378594();
        v22(v21);
        sub_22C373804();
        sub_22C729410(&unk_22C9239C0, v23);
        sub_22C36B4C0();
        sub_22C729410(v19, v24);
        v25 = sub_22C36C228();
        v26(v25);
        type metadata accessor for ToolResolver.Decision();
        goto LABEL_19;
    }
  }

  v17();
}

uint64_t sub_22C728F74()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 304);
  sub_22C90401C();
  v3 = v1;
  v4 = sub_22C9063CC();
  v5 = sub_22C90AADC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 584);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22C366000, v4, v5, "[RECOVERABLE_ERROR]: %@", v8, 0xCu);
    sub_22C3AC228(v9, &qword_27D9BB158, qword_22C910FD0);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  else
  {
  }

  v12 = *(v0 + 472);
  v14 = *(v0 + 344);
  v13 = *(v0 + 352);
  v15 = *(v0 + 280);
  v16 = *(v0 + 264);
  v17 = *(v0 + 272);
  v27 = *(v0 + 496);
  v28 = *(v0 + 480);
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  v18 = *(v12 + 16);

  sub_22C729348(v13, v14);
  sub_22C5C8B28(0x7FFuLL);
  sub_22C389170();
  v19 = (v15 + v17[5]);
  *v19 = v28;
  v19[1] = v27;
  v20 = (v15 + v17[6]);
  v21 = MEMORY[0x277D84F90];
  *v20 = MEMORY[0x277D84F90];
  v20[1] = v21;
  *(v15 + v17[7]) = v21;
  v22 = (v15 + v17[8]);
  *v22 = v21;
  v22[1] = v18;
  sub_22C374F10(v17[9]);
  *(v15 + v17[10]) = 2;
  *(v15 + v17[11]) = v23;
  v24 = *(v16 + 16);
  v25 = swift_task_alloc();
  *(v0 + 592) = v25;
  *v25 = v0;
  sub_22C36A21C(v25);

  return sub_22C750500();
}

uint64_t sub_22C7291A0()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  v4 = v0[44];
  v5 = v0[35];
  sub_22C373804();
  sub_22C729410(v6, v7);
  sub_22C36B4C0();
  sub_22C729410(v4, v8);
  (*(v2 + 8))(v1, v3);
  v9 = v0[75];
  v11 = v0[56];
  v10 = v0[57];
  v12 = v0[53];
  sub_22C38BF90();
  sub_22C37095C();

  sub_22C369A24();

  return v13();
}

void *sub_22C7292C0()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_22C36FF94(v0 + 4);
  return v0;
}

uint64_t sub_22C7292F0()
{
  sub_22C7292C0();

  return swift_deallocClassInstance();
}

uint64_t sub_22C729348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JointResolution.DeviceContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C7293AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JointResolution.DeviceContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C729410(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C369848(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for ToolResolver.Decision()
{
  result = qword_27D9BF9A0;
  if (!qword_27D9BF9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C7294B0()
{
  sub_22C908EAC();
  if (v0 <= 0x3F)
  {
    sub_22C729524();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22C729524()
{
  if (!qword_27D9BF9B0)
  {
    sub_22C908EAC();
    v0 = sub_22C90A68C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BF9B0);
    }
  }
}

void sub_22C72957C()
{
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[48];
  v4 = v0[44];
  v5 = v0[35];
}

uint64_t sub_22C729620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  if (*(*(v7 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v7);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_22C7296E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_22C7297E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), unint64_t *a5, void (*a6)(uint64_t))
{
  a4(319);
  if (v8 <= 0x3F)
  {
    sub_22C729884(319, a5, a6);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C729884(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_22C901FAC();
    a3(255);
    sub_22C36B4D8();
    sub_22C4E9D34(v5);
    v6 = sub_22C909F2C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_22C72990C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  sub_22C369914(v5);
  v7 = *(v6 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v9 = sub_22C9093BC();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v17 = (v16 - v15);
  v18 = sub_22C906F2C();
  v19 = sub_22C369824(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v26 = (v25 - v24);
  (*(v21 + 16))(v25 - v24, a1, v18);
  v27 = *(v21 + 88);
  v28 = sub_22C371510();
  v30 = v29(v28);
  if (v30 == *MEMORY[0x277D1DED8])
  {
    v31 = sub_22C72FFCC();
    v32(v31);
    v33 = *v26;
    v34 = sub_22C90931C();
    v35 = swift_allocBox();
    sub_22C37AD18(v35, v36);
    *v37 = v33;
    v38 = MEMORY[0x277D72988];
LABEL_9:
    v58 = *v38;
    sub_22C36BBA8(v34);
    (*(v59 + 104))();
    *v17 = v18;
    (*(v12 + 104))(v17, *MEMORY[0x277D72A58], v9);
    sub_22C901ECC();
    sub_22C36A748();
    sub_22C36C640(v60, v61, v62, v63);
    sub_22C9025CC();
LABEL_10:
    v64 = 0;
LABEL_11:
    v65 = sub_22C9025EC();
    return sub_22C36C640(a2, v64, 1, v65);
  }

  if (v30 == *MEMORY[0x277D1DED0])
  {
    v39 = sub_22C72FFCC();
    v40(v39);
    v41 = *v26;
    v34 = sub_22C90931C();
    v42 = swift_allocBox();
    sub_22C37AD18(v42, v43);
    *v44 = v41;
    v38 = MEMORY[0x277D72978];
    goto LABEL_9;
  }

  if (v30 == *MEMORY[0x277D1DEF0])
  {
    v45 = sub_22C72FFCC();
    v46(v45);
    v47 = *v26;
    v34 = sub_22C90931C();
    v48 = swift_allocBox();
    sub_22C37AD18(v48, v49);
    *v50 = v47;
    v38 = MEMORY[0x277D729A8];
    goto LABEL_9;
  }

  if (v30 == *MEMORY[0x277D1DEF8])
  {
    v51 = sub_22C72FFCC();
    v52(v51);
    v54 = *v26;
    v53 = *(v26 + 1);
    v34 = sub_22C90931C();
    v55 = swift_allocBox();
    sub_22C37AD18(v55, v56);
    *v57 = v54;
    v57[1] = v53;
    v38 = MEMORY[0x277D729B8];
    goto LABEL_9;
  }

  if (v30 == *MEMORY[0x277D1DEE8])
  {
    v67 = sub_22C72FFCC();
    v69 = v68(v67);
    v70 = *v26;
    MEMORY[0x28223BE20](v69);
    *(&v78 - 2) = v2;
    sub_22C793964();
    v72 = v71;

    sub_22C72E4D0(v72, a2);

    goto LABEL_10;
  }

  if (v30 == *MEMORY[0x277D1DF00])
  {
    v73 = *(v21 + 8);
    v74 = sub_22C371510();
    v75(v74);
    v64 = 1;
    goto LABEL_11;
  }

  if (v30 == *MEMORY[0x277D1DEE0])
  {
    v34 = sub_22C90931C();
    v76 = swift_allocBox();
    sub_22C37AD18(v76, v77);
    v38 = MEMORY[0x277D729A0];
    goto LABEL_9;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C729D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v72 = a1;
  v75 = sub_22C9025EC();
  v3 = sub_22C369824(v75);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C3698A8();
  v69 = v8;
  v9 = sub_22C36BA0C();
  v10 = type metadata accessor for CandidateWithDependencies(v9);
  v70 = *(v10 - 8);
  v11 = *(v70 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_22C369838();
  v14 = v13 - v12;
  v15 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  sub_22C369914(v15);
  v17 = *(v16 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v18);
  sub_22C36D5B4();
  v74 = v19;
  sub_22C36BA0C();
  v20 = sub_22C9093BC();
  v21 = sub_22C369914(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  v26 = v25 - v24;
  v27 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  sub_22C369914(v27);
  v29 = *(v28 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v30);
  v32 = &v67 - v31;
  v33 = sub_22C908C5C();
  v34 = sub_22C369824(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C3698E4();
  v68 = v39;
  v41 = MEMORY[0x28223BE20](v40);
  v43 = &v67 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v67 - v44;
  v46 = type metadata accessor for TranscriptValueFetcher(0);
  sub_22C605B74(v72, *&v2[*(v46 + 20)]);
  if (sub_22C370B74(v32, 1, v33) != 1)
  {
    (*(v36 + 32))(v45, v32, v33);
    sub_22C90774C();
    sub_22C908B8C();
    sub_22C386D64();
    sub_22C9025CC();
    (*(v36 + 8))(v45, v33);
    goto LABEL_7;
  }

  v47 = v71;
  v73 = v26;
  sub_22C376B84(v32, &qword_27D9BB628, &unk_22C920580);
  v48 = sub_22C72A310();
  if (!v48)
  {
    v56 = v47;
    v57 = 1;
    goto LABEL_9;
  }

  v49 = v48;
  v50 = *(v48 + 16);
  if (!v50)
  {

    v59 = MEMORY[0x277D84F90];
    v60 = v75;
LABEL_16:
    sub_22C72E4D0(v59, v47);

    v56 = v47;
    v57 = 0;
    v58 = v60;
    return sub_22C36C640(v56, v57, 1, v58);
  }

  if (v50 != 1)
  {
    v68 = v2;
    v76 = MEMORY[0x277D84F90];
    sub_22C3B7538(0, v50, 0);
    v59 = v76;
    v61 = v69;
    v62 = *(v70 + 80);
    v67 = v49;
    v63 = v49 + ((v62 + 32) & ~v62);
    v72 = *(v70 + 72);
    do
    {
      sub_22C72FE4C(v63, v14);
      sub_22C90774C();
      sub_22C908B8C();
      sub_22C9025CC();
      sub_22C72FEB0(v14);
      v76 = v59;
      v65 = *(v59 + 16);
      v64 = *(v59 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_22C3B7538(v64 > 1, v65 + 1, 1);
        v59 = v76;
      }

      *(v59 + 16) = v65 + 1;
      (*(v5 + 32))(v59 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v65, v61, v75);
      v63 += v72;
      --v50;
    }

    while (v50);

    v60 = v75;
    v47 = v71;
    goto LABEL_16;
  }

  v51 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v52 = v36;
  v53 = *(v36 + 16);
  v53(v43, v48 + v51, v33);
  sub_22C90774C();
  v54 = *(v52 + 8);
  v54(v43, v33);
  sub_22C72FE4C(v49 + v51, v14);

  v55 = v68;
  v53(v68, v14, v33);
  sub_22C72FEB0(v14);
  sub_22C908B8C();
  v54(v55, v33);
  sub_22C386D64();
  sub_22C9025CC();
LABEL_7:
  v56 = v43;
  v57 = 0;
LABEL_9:
  v58 = v75;
  return sub_22C36C640(v56, v57, 1, v58);
}

uint64_t sub_22C72A310()
{
  sub_22C9087DC();
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3A5908(&qword_27D9BF6C8, qword_22C923260);
  sub_22C72FF0C(&qword_27D9BC090);
  sub_22C907D9C();

  return v1;
}

uint64_t sub_22C72A3E0@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t, uint64_t, uint64_t)@<X2>, void *a3@<X8>)
{
  v909 = a2;
  v872 = a1;
  v910 = a3;
  v3 = sub_22C9026BC();
  v4 = sub_22C36A7A4(v3, &v848);
  v821 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C3698A8();
  sub_22C3698F8(v8);
  v9 = sub_22C9020CC();
  v10 = sub_22C36A7A4(v9, &v855);
  v827 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C3698A8();
  sub_22C3698F8(v14);
  v15 = sub_22C903E2C();
  v16 = sub_22C36A7A4(v15, &v851);
  v823 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22C3698A8();
  sub_22C3698F8(v20);
  v21 = sub_22C9063DC();
  v22 = sub_22C36A7A4(v21, &v861);
  v834 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v26);
  sub_22C36BA64();
  sub_22C36D234(v27);
  v28 = sub_22C3A5908(&qword_27D9BD2B8, &qword_22C9204B0);
  sub_22C369914(v28);
  v30 = *(v29 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v31);
  sub_22C36D5B4();
  sub_22C3698F8(v32);
  v33 = sub_22C9084CC();
  v34 = sub_22C36A7A4(v33, v857);
  v829 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C3698A8();
  sub_22C36D234(v38);
  v39 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v40 = sub_22C369914(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v43);
  sub_22C36BA64();
  sub_22C3698F8(v44);
  v45 = sub_22C90399C();
  v46 = sub_22C36A7A4(v45, v866);
  v838[1] = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA64();
  v52 = sub_22C3698F8(v51);
  v53 = type metadata accessor for CandidateWithDependencies(v52);
  v54 = sub_22C36A7A4(v53, &v914);
  v882 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  sub_22C3698A8();
  sub_22C3698F8(v58);
  v59 = sub_22C90684C();
  v60 = sub_22C36A7A4(v59, &v881);
  v857[0] = v61;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22C3698A8();
  sub_22C3698F8(v64);
  v65 = sub_22C90069C();
  v66 = sub_22C36A7A4(v65, &v878);
  v848 = v67;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v66);
  sub_22C3698A8();
  sub_22C36D234(v70);
  v71 = sub_22C3A5908(&qword_27D9BEEA8, &qword_22C9214D0);
  sub_22C369914(v71);
  v73 = *(v72 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v74);
  sub_22C36D5B4();
  sub_22C36D234(v75);
  v76 = sub_22C3A5908(&qword_27D9BB628, &unk_22C920580);
  sub_22C369914(v76);
  v78 = *(v77 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v79);
  sub_22C36D5B4();
  sub_22C3698F8(v80);
  v81 = sub_22C908C5C();
  v82 = sub_22C36A7A4(v81, &v904);
  v862 = v83;
  v85 = *(v84 + 64);
  MEMORY[0x28223BE20](v82);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v86);
  sub_22C36BA64();
  sub_22C36D234(v87);
  v88 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  sub_22C369914(v88);
  v90 = *(v89 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v91);
  sub_22C36D5B4();
  sub_22C3698F8(v92);
  v93 = sub_22C9025EC();
  v94 = sub_22C36A7A4(v93, &v901);
  v865 = v95;
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v94);
  sub_22C3698A8();
  sub_22C3698F8(v98);
  v99 = sub_22C90654C();
  v100 = sub_22C36A7A4(v99, &v906);
  v880 = v101;
  v103 = *(v102 + 64);
  MEMORY[0x28223BE20](v100);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v104);
  sub_22C36BA64();
  sub_22C3698F8(v105);
  v106 = sub_22C906F2C();
  v107 = sub_22C36A7A4(v106, &v900);
  v868 = v108;
  v110 = *(v109 + 64);
  MEMORY[0x28223BE20](v107);
  sub_22C3698A8();
  sub_22C3698F8(v111);
  v112 = sub_22C908C3C();
  v113 = sub_22C36A7A4(v112, &v908);
  v878 = v114;
  v116 = *(v115 + 64);
  MEMORY[0x28223BE20](v113);
  sub_22C3698A8();
  sub_22C36D234(v117);
  v118 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  v119 = sub_22C369914(v118);
  v121 = *(v120 + 64);
  MEMORY[0x28223BE20](v119);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v122);
  sub_22C36BA64();
  sub_22C3698F8(v123);
  v893 = sub_22C9093BC();
  v124 = sub_22C369824(v893);
  v886 = v125;
  v127 = *(v126 + 64);
  MEMORY[0x28223BE20](v124);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v128);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v129);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v130);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v131);
  sub_22C36BA64();
  sub_22C3698F8(v132);
  v899 = sub_22C906B9C();
  v133 = sub_22C369824(v899);
  v901 = v134;
  v136 = *(v135 + 64);
  MEMORY[0x28223BE20](v133);
  sub_22C3698A8();
  v898 = v137;
  sub_22C36BA0C();
  v138 = sub_22C906B6C();
  v139 = sub_22C36A7A4(v138, &v912);
  v903 = v140;
  v142 = *(v141 + 64);
  MEMORY[0x28223BE20](v139);
  sub_22C3698A8();
  v900 = v143;
  sub_22C36BA0C();
  v144 = sub_22C90762C();
  v145 = sub_22C36A7A4(v144, &v840);
  v815 = v146;
  v148 = *(v147 + 64);
  MEMORY[0x28223BE20](v145);
  sub_22C3698A8();
  sub_22C3698F8(v149);
  v150 = sub_22C90775C();
  v151 = sub_22C36A7A4(v150, v838);
  v813 = v152;
  v154 = *(v153 + 64);
  MEMORY[0x28223BE20](v151);
  sub_22C3698A8();
  sub_22C3698F8(v155);
  v156 = sub_22C906ECC();
  v157 = sub_22C36A7A4(v156, v859);
  v832 = v158;
  v160 = *(v159 + 64);
  MEMORY[0x28223BE20](v157);
  sub_22C3698A8();
  sub_22C3698F8(v161);
  v162 = sub_22C906F8C();
  v163 = sub_22C36A7A4(v162, &v873);
  v843 = v164;
  v166 = *(v165 + 64);
  MEMORY[0x28223BE20](v163);
  sub_22C3698A8();
  sub_22C36D234(v167);
  v168 = sub_22C3A5908(&qword_27D9BEC18, &unk_22C9204A0);
  v169 = sub_22C369914(v168);
  v171 = *(v170 + 64);
  MEMORY[0x28223BE20](v169);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v172);
  sub_22C36BA64();
  sub_22C3698F8(v173);
  v174 = sub_22C9081CC();
  v175 = sub_22C36A7A4(v174, v874);
  v841[1] = v176;
  v178 = *(v177 + 64);
  MEMORY[0x28223BE20](v175);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v179);
  sub_22C36BA64();
  sub_22C3698F8(v180);
  v181 = sub_22C9079FC();
  v182 = sub_22C36A7A4(v181, &v843);
  v818 = v183;
  v185 = *(v184 + 64);
  MEMORY[0x28223BE20](v182);
  sub_22C3698A8();
  sub_22C3698F8(v186);
  v187 = sub_22C90711C();
  v188 = sub_22C36A7A4(v187, v884);
  v855 = v189;
  v191 = *(v190 + 64);
  MEMORY[0x28223BE20](v188);
  sub_22C3698A8();
  sub_22C3698F8(v192);
  v897 = sub_22C901FAC();
  v193 = sub_22C369824(v897);
  v902 = v194;
  v196 = *(v195 + 64);
  MEMORY[0x28223BE20](v193);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v197);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v198);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v199);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v200);
  sub_22C36BA64();
  v891 = v201;
  sub_22C36BA0C();
  v202 = sub_22C90693C();
  v203 = sub_22C36A7A4(v202, &v888);
  v858 = v204;
  v206 = *(v205 + 64);
  MEMORY[0x28223BE20](v203);
  sub_22C3698A8();
  sub_22C36D234(v207);
  v208 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  sub_22C369914(v208);
  v210 = *(v209 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v211);
  sub_22C36D5B4();
  sub_22C3698F8(v212);
  v895 = sub_22C9070DC();
  v213 = sub_22C369824(v895);
  v888 = v214;
  v216 = *(v215 + 64);
  MEMORY[0x28223BE20](v213);
  sub_22C3698A8();
  sub_22C3698F8(v217);
  v892 = sub_22C9088CC();
  v218 = sub_22C369824(v892);
  v896 = v219;
  v221 = *(v220 + 64);
  MEMORY[0x28223BE20](v218);
  sub_22C3698A8();
  v894 = v222;
  sub_22C36BA0C();
  v223 = sub_22C90720C();
  v224 = sub_22C36A7A4(v223, &v833);
  v808 = v225;
  v227 = *(v226 + 64);
  MEMORY[0x28223BE20](v224);
  sub_22C3698A8();
  sub_22C3698F8(v228);
  v229 = sub_22C90873C();
  v230 = sub_22C369824(v229);
  v232 = v231;
  v234 = *(v233 + 64);
  MEMORY[0x28223BE20](v230);
  sub_22C369838();
  v237 = v236 - v235;
  v905 = sub_22C906C4C();
  v238 = sub_22C369824(v905);
  v908 = v239;
  v241 = *(v240 + 64);
  MEMORY[0x28223BE20](v238);
  sub_22C3698E4();
  v906 = v242;
  MEMORY[0x28223BE20](v243);
  sub_22C36BA64();
  v907 = v244;
  sub_22C36BA0C();
  v245 = sub_22C9089DC();
  v246 = sub_22C369824(v245);
  v248 = v247;
  v250 = *(v249 + 64);
  MEMORY[0x28223BE20](v246);
  sub_22C3698E4();
  sub_22C3698D4();
  v252 = MEMORY[0x28223BE20](v251);
  v254 = (&v806 - v253);
  MEMORY[0x28223BE20](v252);
  v256 = &v806 - v255;
  sub_22C9089EC();
  v257 = v248;
  (*(v248 + 16))(v254, v256, v245);
  v258 = *(v248 + 88);
  v259 = sub_22C36BE34();
  LODWORD(v260) = v258(v259);
  if (v260 == *MEMORY[0x277D1E700])
  {
    v261 = *(v257 + 8);
    v261(v256, v245);
    v262 = sub_22C36BE34();
    result = (v261)(v262, v263);
    goto LABEL_6;
  }

  v807 = v256;
  v904 = v245;
  if (v260 == *MEMORY[0x277D1E758] || v260 == *MEMORY[0x277D1E7B0])
  {
    goto LABEL_5;
  }

  if (v260 == *MEMORY[0x277D1E858])
  {
    v859[0] = v257;
    v268 = sub_22C389190(v257);
    v269(v268);
    (*(v232 + 32))(v237, v254, v229);
    sub_22C386D64();
    sub_22C90763C();
    (*(v232 + 8))(v237, v229);
LABEL_10:
    v271 = v905;
    v270 = v906;
    v272 = v908;
    (*(v908 + 16))(v906, v258, v905);
    v273 = (*(v272 + 88))(v270, v271);
    v274 = v898;
    v275 = v899;
    v276 = v258;
    v278 = v900;
    v277 = v901;
    v279 = v903;
    if (v273 == *MEMORY[0x277D1DDC8])
    {
      v280 = *(v272 + 8);
      v280(v276, v271);
      v281 = sub_22C3785D0();
      v282(v281);
      result = (v280)(v270, v271);
LABEL_47:
      v267 = 0;
      goto LABEL_7;
    }

    if (v273 == *MEMORY[0x277D1DDD0])
    {
      v294 = v908;
      v295 = v906;
      (*(v908 + 96))(v906, v271);
      v296 = v881;
      (*(v279 + 32))(v278, v295, v881);
      v297 = v891;
      sub_22C906B4C();
      LOBYTE(v295) = sub_22C901F6C();
      v298 = v902 + 1;
      v299 = v278;
      v300 = v897;
      v901 = v902[1];
      (v901)(v297, v897);
      if (v295)
      {
        v301 = sub_22C90931C();
        v302 = swift_allocBox();
        v304 = v303;
        v305 = v299;
        *v303 = sub_22C906B5C();
        v304[1] = v306;
        v307 = *MEMORY[0x277D729B8];
        sub_22C36BBA8(v301);
        (*(v308 + 104))(v304);
        sub_22C381240();
        *v304 = v302;
        v309 = *MEMORY[0x277D72A58];
        sub_22C3833B0();
        v311 = v893;
        (*(v310 + 104))(v304);
        sub_22C3A5908(&qword_27D9BAD00, &unk_22C90D5A0);
        v312 = sub_22C371BC4();
        sub_22C37097C(v312, xmmword_22C90F800);
        v899 = v313;
        v314 = v305[2];
        v898 = v298;
        v315 = v885;
        v314();
        v316 = v902[2];
        v902 += 2;
        v316(v297, v909, v300);
        sub_22C901ECC();
        sub_22C730000();
        v318 = *(v317 - 256);
        sub_22C36A748();
        sub_22C36C640(v319, v320, v321, v322);
        (v314)(v871, v315, v311);
        v323 = *MEMORY[0x277D1E930];
        sub_22C72FF78();
        v324 = sub_22C3768B4();
        v325(v324);
        v326 = sub_22C37B38C();
        v327 = v897;
        v316(v326, v297, v897);
        v328 = v879;
        sub_22C72E460(v318, v879);
        sub_22C73000C();
        sub_22C36B4D8();
        sub_22C4E9D34(v329);
        v330 = sub_22C7300A4();
        sub_22C376B84(v318, &qword_27D9BF318, &qword_22C9225A0);
        (v901)(v297, v327);
        sub_22C730028();
        v331 = sub_22C37B73C(&v916);
        v328(v331);
        sub_22C72FFBC();
        *(v899 + v332) = v330;
        v333 = sub_22C72FFDC();
        v267 = v906;
        v328(v333);
        (*(v903 + 8))(v900, v881);
LABEL_30:
        (*(v908 + 8))(v907, v905);
        v386 = sub_22C3785D0();
LABEL_31:
        result = v387(v386);
        goto LABEL_7;
      }

      (*(v903 + 8))(v299, v296);
      (*(v294 + 8))(v907, v905);
      goto LABEL_46;
    }

    if (v273 == *MEMORY[0x277D1DDD8])
    {
      v346 = v906;
      (*(v908 + 96))(v906, v271);
      (*(v277 + 32))(v274, v346, v275);
      v347 = v271;
      v348 = v891;
      v349 = v274;
      sub_22C906B7C();
      v350 = sub_22C901F6C();
      v351 = v902;
      v903 = v902[1];
      v900 = v902 + 1;
      (v903)(v348, v897);
      if (v350)
      {
        v352 = sub_22C90931C();
        v353 = swift_allocBox();
        v355 = v354;
        *v354 = sub_22C906B5C();
        v355[1] = v356;
        v357 = *MEMORY[0x277D729B8];
        sub_22C36BBA8(v352);
        (*(v358 + 104))(v355);
        sub_22C381240();
        *v355 = v353;
        v359 = *MEMORY[0x277D72A58];
        sub_22C3833B0();
        v361 = v893;
        (*(v360 + 104))(v355);
        sub_22C3A5908(&qword_27D9BAD00, &unk_22C90D5A0);
        v362 = sub_22C371BC4();
        sub_22C37097C(v362, xmmword_22C90F800);
        v896 = v363;
        v364 = v349[2];
        v365 = sub_22C381754(&v916);
        v364(v365);
        v366 = v351[2];
        v902 = v351 + 2;
        sub_22C37BF18();
        v366();
        sub_22C901ECC();
        sub_22C730000();
        v368 = *(v367 - 256);
        sub_22C36A748();
        sub_22C36C640(v369, v370, v371, v372);
        (v364)(v871, v349, v361);
        v373 = *MEMORY[0x277D1E930];
        sub_22C72FF78();
        v374 = sub_22C3768B4();
        v375(v374);
        v376 = sub_22C37B38C();
        (v366)(v376, v348, v351);
        v377 = sub_22C383834(&v915);
        sub_22C72E460(v377, v879);
        v378 = v896;
        sub_22C73000C();
        sub_22C36B4D8();
        sub_22C4E9D34(v379);
        v380 = v897;
        v381 = sub_22C7300A4();
        sub_22C376B84(v361, &qword_27D9BF318, &qword_22C9225A0);
        (v903)(v348, v380);
        v382 = *(v886 + 8);
        v383 = sub_22C37B73C(&v916);
        v382(v383);
        sub_22C72FFBC();
        *(v378 + v384) = v381;
        v385 = sub_22C72FFDC();
        v267 = v906;
        v382(v385);
        (*(v901 + 8))(v898, v899);
        goto LABEL_30;
      }

      (*(v901 + 8))(v349, v275);
      (*(v908 + 8))(v907, v347);
LABEL_46:
      v434 = sub_22C3785D0();
      result = v435(v434);
      goto LABEL_47;
    }

    v399 = v906;
    if (v273 == *MEMORY[0x277D1DD78])
    {
      v400 = *(v908 + 8);
      v401 = v905;
      v400(v907, v905);
      v402 = sub_22C36C238();
      v403(v402);
      result = (v400)(v399, v401);
      goto LABEL_47;
    }

LABEL_166:
    result = sub_22C90B4EC();
    __break(1u);
    return result;
  }

  if (v260 == *MEMORY[0x277D1E6F8])
  {
    v283 = v904;
    (*(v257 + 96))(v254, v904);
    v284 = v896;
    v285 = v894;
    v286 = v254;
    v287 = v892;
    (*(v896 + 32))(v894, v286, v892);
    v288 = v257;
    v289 = sub_22C90887C();
    MEMORY[0x28223BE20](v289);
    sub_22C72FFA4();
    v290 = v887;
    sub_22C6B0590();

    sub_22C36D0A8(v290, 1, v895);
    if (v579)
    {
      (*(v284 + 8))(v285, v287);
      (*(v288 + 8))(v807, v283);
      v291 = &qword_27D9BAA18;
      v292 = &qword_22C911C40;
      v293 = v290;
    }

    else
    {
      v859[0] = v288;
      sub_22C3722F4(&v918);
      v388 = sub_22C37BA1C();
      v389(v388);
      sub_22C370208(&v905);
      sub_22C90702C();
      v390 = v880;
      v391 = *(v880 + 88);
      v392 = v875;
      v393 = v391(v288, v875);
      if (v393 == *MEMORY[0x277D1DAA8])
      {
        (*(v390 + 96))(v288, v392);
        sub_22C374490(&v899);
        v395 = v867;
        v396 = v869;
        (*(v394 + 32))(v867, v288, v869);
        sub_22C370208(&v893);
        sub_22C72990C(v395);
        sub_22C36D0A8(v288, 1, v870);
        if (!v579)
        {
          sub_22C3722F4(&v895);
          v436();
          sub_22C3A5908(&qword_27D9BAD00, &unk_22C90D5A0);
          v437 = sub_22C371BC4();
          sub_22C37097C(v437, xmmword_22C90F800);
          v911 = v438;
          sub_22C370208(&v919);
          sub_22C90207C();
          v439 = v902[2];
          v440 = v891;
          sub_22C37BF18();
          v439();
          sub_22C9025BC();
          v441 = v886;
          v442 = *(v886 + 16);
          v443 = sub_22C37BA1C();
          v444(v443, v288, v893);
          v445 = *MEMORY[0x277D1E930];
          sub_22C72FF78();
          v447 = *(v446 - 256);
          sub_22C3805B8();
          v448();
          v449 = sub_22C383834(&v907);
          (v439)(v449, v440, v395);
          sub_22C37F998();
          v450 = v911;
          sub_22C908BFC();
          sub_22C36B4D8();
          sub_22C4E9D34(v451);
          v452 = v893;
          v453 = sub_22C909F0C();
          sub_22C376B84(v440, &qword_27D9BF318, &qword_22C9225A0);
          sub_22C3701E0();
          v454 = v395;
          v267 = v906;
          v455(v891, v454);
          (*(v441 + 8))(v890, v452);
          sub_22C72FFBC();
          *(v450 + v456) = v453;
          sub_22C36FB04(&v895);
          v457(v864, v870);
          sub_22C36FB04(&v899);
          v458(v867, v869);
LABEL_48:
          sub_22C36FB04(&v918);
          v479(v889, v895);
          v480 = sub_22C374598();
          v481(v480, v892);
          v482 = *(v859[0] + 8);
          v483 = sub_22C374F24();
          result = v484(v483);
          goto LABEL_7;
        }

        v397 = *(v287 + 8);
        v287 += 8;
        v397(v395, v396);
        sub_22C376B84(v288, &qword_27D9BF610, &qword_22C922B50);
        v390 = v880;
        v398 = v892;
      }

      else
      {
        (*(v390 + 8))(v288, v392);
        v398 = v287;
      }

      sub_22C374490(&v897);
      v404 = v889;
      sub_22C90702C();
      v405 = sub_22C36BE34();
      if ((v391)(v405) != *MEMORY[0x277D1D9F8])
      {
        sub_22C36FB04(&v918);
        v425(v404, v895);
        v426 = sub_22C374598();
        v427(v426, v398);
        v428 = *(v859[0] + 8);
        v429 = sub_22C374F24();
        v430(v429);
        v431 = *(v390 + 8);
        v432 = sub_22C36BE34();
        result = v433(v432);
        goto LABEL_47;
      }

      v407 = *(v390 + 96);
      v406 = v390 + 96;
      v408 = sub_22C36BE34();
      v409(v408);
      v410 = v902;
      v411 = v902[4];
      v412 = sub_22C36D9D0();
      v413 = v287;
      v414 = v897;
      v415(v412, v413, v897);
      v416 = type metadata accessor for TranscriptValueFetcher(0);
      v417 = v860;
      sub_22C605B74(v406, *(v872 + *(v416 + 20)));
      v418 = v873;
      sub_22C36D0A8(v417, 1, v873);
      if (!v579)
      {
        sub_22C3722F4(&v892);
        v459();
        sub_22C3A5908(&qword_27D9BAD00, &unk_22C90D5A0);
        v460 = sub_22C371BC4();
        sub_22C37097C(v460, xmmword_22C90F800);
        v911 = v461;
        sub_22C36D818(&v919);
        sub_22C90774C();
        v909 = v410[2];
        v462 = v891;
        v909(v891, v406, v414);
        sub_22C901ECC();
        sub_22C730000();
        sub_22C383834(v463);
        sub_22C36A748();
        sub_22C36C640(v464, v465, v466, v467);
        v468 = v886;
        (*(v886 + 16))(v885, v418, v893);
        v469 = *MEMORY[0x277D1E930];
        sub_22C72FF78();
        sub_22C36D9D0();
        sub_22C3805B8();
        v470();
        v909(v876, v462, v414);
        sub_22C72E460(v404, v879);
        sub_22C908BFC();
        sub_22C36B4D8();
        sub_22C4E9D34(v471);
        v472 = v414;
        v473 = v893;
        v474 = sub_22C909F0C();
        sub_22C376B84(v404, &qword_27D9BF318, &qword_22C9225A0);
        v475 = v902[1];
        v475(v891, v472);
        (*(v468 + 8))(v890, v473);
        v267 = v906;
        sub_22C72FFBC();
        *(v911 + v476) = v474;
        sub_22C36FB04(&v892);
        v477(v861, v873);
        v478 = sub_22C37B73C(&v896);
        (v475)(v478);
        goto LABEL_48;
      }

      (v410[1])(v406, v414);
      sub_22C36FB04(&v918);
      v419(v404, v895);
      v420 = sub_22C374598();
      v421(v420, v398);
      v422 = *(v859[0] + 8);
      v423 = sub_22C374F24();
      v424(v423);
      v291 = &qword_27D9BB628;
      v292 = &unk_22C920580;
      v293 = v417;
    }

    result = sub_22C376B84(v293, v291, v292);
    goto LABEL_47;
  }

  if (v260 == *MEMORY[0x277D1E710])
  {
    goto LABEL_5;
  }

  if (v260 == *MEMORY[0x277D1E728])
  {
    goto LABEL_5;
  }

  if (v260 == *MEMORY[0x277D1E7A0])
  {
    goto LABEL_5;
  }

  v334 = *MEMORY[0x277D1E730];
  if (v260 == v334)
  {
    goto LABEL_5;
  }

  if (v260 == *MEMORY[0x277D1E708])
  {
    v335 = v257;
    v336 = sub_22C389190(v257);
    v337(v336);
    v338 = v858;
    v339 = v857[1];
    (*(v858 + 32))();
    v340 = v891;
    sub_22C9068FC();
    sub_22C4E9D34(&qword_27D9BAA28);
    sub_22C730080();
    v341 = v897;
    v342 = sub_22C90A0BC();
    sub_22C3701E0();
    v343(v340, v341);
    if (v342)
    {
      v344 = sub_22C90692C();
      MEMORY[0x28223BE20](v344);
      *(&v806 - 2) = v339;
      sub_22C3B4C54();
      v267 = v345;
    }

    else
    {
      v267 = 0;
    }

    (*(v335 + 8))(v807, v904);
    v504 = *(v338 + 8);
    v386 = sub_22C371510();
    goto LABEL_31;
  }

  v485 = v891;
  if (v260 == *MEMORY[0x277D1E770] || v260 == *MEMORY[0x277D1E718])
  {
    goto LABEL_5;
  }

  if (v260 != *MEMORY[0x277D1E748])
  {
    if (v260 != *MEMORY[0x277D1E830])
    {
      v859[0] = v257;
      if (v260 == *MEMORY[0x277D1E838] || v260 == *MEMORY[0x277D1E790] || v260 == *MEMORY[0x277D1E7A8])
      {
        goto LABEL_63;
      }

      if (v260 == *MEMORY[0x277D1E760])
      {
        v548 = sub_22C72FF8C();
        v549(v548);
        sub_22C3722F4(&v872);
        v550 = sub_22C372BEC();
        v552 = v551(v550);
        MEMORY[0x2318B4450](v552);
        sub_22C381B90();
        MEMORY[0x28223BE20](v553);
        sub_22C72FFA4();
        sub_22C375AC4(&v870);
        sub_22C6B08C8();
        sub_22C73008C();
        v554 = sub_22C730048();
        sub_22C36D0A8(v554, v555, v845);
        if (!v579)
        {
          sub_22C3722F4(&v869);
          v575 = sub_22C37BA1C();
          v576(v575, v841[2], v845);
          v577 = v838[0];
          sub_22C9081AC();
          sub_22C36D818(&v868);
          sub_22C90391C();
          sub_22C36FB04(&v865);
          v578(v577, v839);
          sub_22C36D0A8(v258, 1, v893);
          if (v579)
          {
            sub_22C376B84(v841[0], &qword_27D9BB908, &qword_22C910960);
            sub_22C903F8C();
            (v902[2])(v836, v909, v897);
            v580 = sub_22C9063CC();
            v581 = sub_22C90AADC();
            if (os_log_type_enabled(v580, v581))
            {
              v582 = swift_slowAlloc();
              v583 = swift_slowAlloc();
              v913 = v583;
              *v582 = 136315138;
              sub_22C379A84(&qword_27D9BAA48);
              v584 = sub_22C38662C(&v862);
              v586 = v585;
              v587 = sub_22C37764C();
              v588(v587);
              v589 = sub_22C36F9F4(v584, v586, &v913);

              *(v582 + 4) = v589;
              sub_22C386830(&dword_22C366000, v590, v591, "contextual value for %s has no typedValue! This is a bug in ContextRetrieval.");
              sub_22C36FF94(v583);
              sub_22C3699EC();
              sub_22C3699EC();
            }

            else
            {

              sub_22C3701E0();
              v628(v836, v897);
            }

            sub_22C36FB04(&v860);
            v629(v840, v835);
            sub_22C36FB04(&v869);
            v630 = sub_22C37ED3C();
            v631(v630);
            sub_22C36FB04(&v872);
            v632 = sub_22C730058();
            goto LABEL_113;
          }

          sub_22C3833B0();
          v593 = *(v592 + 32);
          v594 = sub_22C36D9D0();
          v595(v594, v841[0], v893);
          sub_22C3A5908(&qword_27D9BAD00, &unk_22C90D5A0);
          v596 = sub_22C371BC4();
          sub_22C37097C(v596, xmmword_22C90F800);
          v908 = v597;
          v598 = *(v577 + 16);
          v599 = sub_22C381754(&v919);
          v598(v599);
          v600 = v902[2];
          v601 = v891;
          sub_22C37BF18();
          v600();
          sub_22C901ECC();
          sub_22C730000();
          v603 = *(v602 - 256);
          sub_22C36A748();
          sub_22C36C640(v604, v605, v606, v607);
          v608 = sub_22C375F98();
          v598(v608);
          v609 = *MEMORY[0x277D1E930];
          sub_22C72FF78();
          v610 = sub_22C3768B4();
          v611(v610);
          v612 = sub_22C37B38C();
          (v600)(v612, v601, v334);
          sub_22C37F998();
          v613 = v908;
          sub_22C73000C();
          sub_22C36B4D8();
          sub_22C4E9D34(v614);
          v615 = sub_22C7300A4();
          sub_22C376B84(v600, &qword_27D9BF318, &qword_22C9225A0);
          v616 = sub_22C37764C();
          v267 = v906;
          v617(v616);
          sub_22C730028();
          v618 = sub_22C72FFDC();
          v598(v618);
          sub_22C72FFBC();
          *(v613 + v619) = v615;
          v620 = sub_22C37B73C(v863);
          v598(v620);
          sub_22C36FB04(&v869);
          v621 = sub_22C37ED3C();
          v622(v621);
          sub_22C36FB04(&v872);
          v623 = sub_22C730058();
          goto LABEL_110;
        }

        sub_22C36FB04(&v872);
        v556 = sub_22C730058();
        v558(v556, *(v557 - 256));
        v559 = sub_22C3785D0();
        v560(v559);
        v501 = &qword_27D9BEC18;
        v502 = &unk_22C9204A0;
        v561 = &v870;
LABEL_95:
        v503 = *(v561 - 32);
        goto LABEL_56;
      }

      if (v260 != *MEMORY[0x277D1E740] && v260 != *MEMORY[0x277D1E788] && v260 != *MEMORY[0x277D1E820])
      {
        if (v260 == *MEMORY[0x277D1E798])
        {
          v564 = sub_22C72FF8C();
          v565(v564);
          sub_22C3722F4(&v858);
          v566 = sub_22C372BEC();
          v567(v566);
          v568 = v891;
          sub_22C906E1C();
          sub_22C730080();
          v569 = sub_22C901F6C();
          v570 = v902[1];
          v570(v568, v897);
          if ((v569 & 1) != 0 || (v571 = v891, sub_22C906DFC(), v572 = sub_22C901F6C(), v570(v571, v897), (v572)) && sub_22C72EF54(v833))
          {
            sub_22C381B90();
            MEMORY[0x28223BE20](v573);
            sub_22C72FFA4();
            sub_22C3B4CAC();
            v267 = v574;
            sub_22C73008C();
          }

          else
          {
LABEL_123:
            v267 = 0;
          }

          sub_22C36FB04(&v858);
          v623 = v833;
          v625 = v859;
          goto LABEL_110;
        }

        if (v260 != *MEMORY[0x277D1E7C8])
        {
          if (v260 == *MEMORY[0x277D1E7C0])
          {
            v635 = sub_22C72FF8C();
            v636(v635);
            sub_22C3722F4(&v839);
            v637 = sub_22C372BEC();
            v638(v637);
            v639 = v891;
            sub_22C9068FC();
            v640 = sub_22C901F6C();
            v908 = v902[1];
            (v908)(v639, v897);
            if ((v640 & 1) == 0)
            {
              goto LABEL_135;
            }

            sub_22C36D818(&v846);
            sub_22C9075FC();
            if ((*(v821 + 88))(v640, v822) != *MEMORY[0x277D1CBF0])
            {
              sub_22C36FB04(&v839);
              v694 = sub_22C36EDCC();
              v696(v694, *(v695 - 256));
              v697 = sub_22C3785D0();
              v698(v697);
              sub_22C36FB04(&v847);
              result = v699(v820, v822);
              goto LABEL_6;
            }

            v641 = v820;
            (*(v821 + 96))(v820, v822);
            sub_22C3722F4(&v854);
            v642();
            sub_22C3A5908(&qword_27D9BAD00, &unk_22C90D5A0);
            v643 = sub_22C371BC4();
            v906 = v643;
            *(v643 + 16) = xmmword_22C90F800;
            v907 = v643 + v641;
            sub_22C370208(&v919);
            sub_22C90207C();
            v905 = v902[2];
            v644 = v891;
            v645 = v897;
            v905(v891, v909, v897);
            sub_22C901ECC();
            sub_22C730000();
            v647 = *(v646 - 256);
            sub_22C36A748();
            sub_22C36C640(v648, v649, v650, v651);
            v652 = v886;
            v653 = sub_22C386304(v886);
            v654(v653, v639, v893);
            v655 = *MEMORY[0x277D1E930];
            sub_22C72FF78();
            v657 = *(v656 - 256);
            sub_22C3805B8();
            v658();
            v905(v876, v644, v645);
            sub_22C72E460(v647, v879);
            v267 = v906;
            sub_22C908BFC();
            sub_22C36B4D8();
            sub_22C4E9D34(v659);
            v660 = sub_22C909F0C();
            sub_22C376B84(v647, &qword_27D9BF318, &qword_22C9225A0);
            (v908)(v891, v645);
            v661 = *(v652 + 8);
            v662 = sub_22C730038();
            v663(v662);
            sub_22C72FFBC();
            *(v907 + v664) = v660;
            sub_22C36FB04(&v854);
            v665(v825, v828);
            sub_22C36FB04(&v839);
            v623 = sub_22C36EDCC();
            goto LABEL_110;
          }

LABEL_126:
          if (v260 != *MEMORY[0x277D1E848] && v260 != *MEMORY[0x277D1E738] && v260 != *MEMORY[0x277D1E750] && v260 != *MEMORY[0x277D1E800] && v260 != *MEMORY[0x277D1E810])
          {
            if (v260 == *MEMORY[0x277D1E7D8])
            {
              v666 = sub_22C72FF8C();
              v667(v666);
              sub_22C3722F4(v837);
              v668 = sub_22C372BEC();
              v669(v668);
              v670 = v891;
              sub_22C90773C();
              sub_22C730080();
              v671 = sub_22C901F6C();
              v908 = v902[1];
              (v908)(v670, v897);
              if (v671)
              {
                sub_22C3A5908(&qword_27D9BAD00, &unk_22C90D5A0);
                v672 = sub_22C371BC4();
                *(v672 + 16) = xmmword_22C90F800;
                v906 = v672;
                v907 = v672 + v671;
                sub_22C381240();
                sub_22C90774C();
                v905 = v902[2];
                v673 = v891;
                v674 = v897;
                v905(v891, v909, v897);
                sub_22C901ECC();
                sub_22C730000();
                v676 = *(v675 - 256);
                sub_22C36A748();
                sub_22C36C640(v677, v678, v679, v680);
                v681 = v886;
                v682 = sub_22C386304(v886);
                v683(v682, v670, v893);
                v684 = *MEMORY[0x277D1E930];
                sub_22C72FF78();
                sub_22C36D9D0();
                sub_22C3805B8();
                v685();
                v686 = sub_22C383834(&v907);
                v905(v686, v673, v674);
                v687 = v676;
                sub_22C72E460(v676, v879);
                sub_22C908BFC();
                sub_22C36B4D8();
                sub_22C4E9D34(v688);
                v689 = sub_22C909F0C();
                sub_22C376B84(v687, &qword_27D9BF318, &qword_22C9225A0);
                (v908)(v891, v674);
                v690 = *(v681 + 8);
                v691 = sub_22C730038();
                v692(v691);
                sub_22C72FFBC();
                *(v907 + v693) = v689;
              }

              else
              {
                v906 = 0;
              }

              sub_22C36FB04(v837);
              v715(v812, v814);
              v716 = sub_22C3785D0();
              result = v717(v716);
              v267 = v906;
              goto LABEL_7;
            }

            if (v260 != *MEMORY[0x277D1E808])
            {
              if (v260 != *MEMORY[0x277D1E768] && v260 != *MEMORY[0x277D1E6F0] && v260 != *MEMORY[0x277D1E720] && v260 != *MEMORY[0x277D1E850])
              {
                if (v260 == *MEMORY[0x277D1E778])
                {
                  v718 = sub_22C72FF8C();
                  v719(v718);
                  v720 = v808;
                  v721 = *(v808 + 32);
                  v722 = sub_22C372BEC();
                  v723 = v809;
                  v724(v722);
                  sub_22C386D64();
                  sub_22C9071FC();
                  (*(v720 + 8))(v257, v723);
                  goto LABEL_10;
                }

                if (v260 != *MEMORY[0x277D1E7D0] && v260 != *MEMORY[0x277D1E818] && v260 != *MEMORY[0x277D1E780] && v260 != *MEMORY[0x277D1E828] && v260 != *MEMORY[0x277D1E840] && v260 != *MEMORY[0x277D1E7B8])
                {
                  if (v260 == *MEMORY[0x277D1E860] || v260 == *MEMORY[0x277D1E868])
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_166;
                }
              }

              goto LABEL_63;
            }

            v700 = sub_22C72FF8C();
            v701(v700);
            sub_22C3722F4(v842);
            v702 = sub_22C372BEC();
            v703(v702);
            sub_22C9079EC();
            sub_22C381B90();
            MEMORY[0x28223BE20](v704);
            sub_22C72FFA4();
            sub_22C375AC4(&v834);
            sub_22C6B08C8();
            sub_22C73008C();
            v705 = sub_22C730048();
            sub_22C36D0A8(v705, v706, v845);
            if (v579)
            {
              sub_22C376B84(v810, &qword_27D9BEC18, &unk_22C9204A0);
              sub_22C90799C();
              sub_22C381B90();
              MEMORY[0x28223BE20](v707);
              sub_22C72FFA4();
              sub_22C375AC4(&v845);
              sub_22C6B08F4();
              sub_22C73008C();
              v708 = sub_22C730048();
              sub_22C36D0A8(v708, v709, v830);
              if (v579)
              {
                sub_22C36FB04(v842);
                v710 = sub_22C38C464();
                v712(v710, *(v711 - 256));
                v713 = sub_22C3785D0();
                v714(v713);
                v501 = &qword_27D9BD2B8;
                v502 = &qword_22C9204B0;
                v561 = &v845;
                goto LABEL_95;
              }

              sub_22C3722F4(&v856);
              v742();
              sub_22C3A5908(&qword_27D9BAD00, &unk_22C90D5A0);
              v743 = sub_22C371BC4();
              sub_22C37097C(v743, xmmword_22C90F800);
              v908 = v744;
              sub_22C36D818(&v849);
              sub_22C9084AC();
              sub_22C381240();
              sub_22C903E0C();
              sub_22C36FB04(v850);
              v745(v258, v824);
              v746 = v902[2];
              v747 = v891;
              v748 = v897;
              v746(v891, v909, v897);
              sub_22C901ECC();
              sub_22C730000();
              v750 = *(v749 - 256);
              sub_22C36A748();
              sub_22C36C640(v751, v752, v753, v754);
              sub_22C374490(&v917);
              v756 = sub_22C386304(v755);
              v757(v756, v485, v893);
              v758 = *MEMORY[0x277D1E930];
              sub_22C72FF78();
              v760 = *(v759 - 256);
              sub_22C3805B8();
              v761();
              v746(v876, v747, v748);
              sub_22C72E460(v750, v879);
              v762 = v908;
              v267 = v906;
              sub_22C908BFC();
              sub_22C36B4D8();
              sub_22C4E9D34(v763);
              v764 = sub_22C909F0C();
              sub_22C376B84(v750, &qword_27D9BF318, &qword_22C9225A0);
              sub_22C3701E0();
              v765(v747, v748);
              v766 = v254[1];
              v767 = sub_22C730038();
              v768(v767);
              sub_22C72FFBC();
              *(v762 + v769) = v764;
              sub_22C36FB04(&v856);
              v771 = v826;
              v772 = v857;
            }

            else
            {
              sub_22C3722F4(&v869);
              v725 = sub_22C37BA1C();
              v726(v725, v810, v845);
              v727 = v817;
              sub_22C9081AC();
              sub_22C36D818(v844);
              sub_22C90391C();
              sub_22C36FB04(&v865);
              v728(v727, v839);
              sub_22C36D0A8(v258, 1, v893);
              if (v729)
              {
                sub_22C376B84(v819, &qword_27D9BB908, &qword_22C910960);
                sub_22C903F8C();
                (v902[2])(v811, v909, v897);
                v730 = sub_22C9063CC();
                v731 = sub_22C90AADC();
                if (os_log_type_enabled(v730, v731))
                {
                  v732 = swift_slowAlloc();
                  v733 = swift_slowAlloc();
                  v913 = v733;
                  *v732 = 136315138;
                  sub_22C379A84(&qword_27D9BAA48);
                  v734 = sub_22C38662C(&v835);
                  v736 = v735;
                  v737 = sub_22C37764C();
                  v738(v737);
                  v739 = sub_22C36F9F4(v734, v736, &v913);

                  *(v732 + 4) = v739;
                  sub_22C386830(&dword_22C366000, v740, v741, "contextual value for %s has no typedValue! This is a bug in ContextRetrieval.");
                  sub_22C36FF94(v733);
                  sub_22C3699EC();
                  sub_22C3699EC();
                }

                else
                {

                  sub_22C3701E0();
                  v802(v811, v897);
                }

                sub_22C36FB04(&v860);
                v803(v831, v835);
                sub_22C36FB04(&v869);
                v804 = sub_22C37ED3C();
                v805(v804);
                sub_22C36FB04(v842);
                v632 = sub_22C38C464();
                goto LABEL_113;
              }

              sub_22C3833B0();
              v774 = *(v773 + 32);
              v775 = sub_22C36D9D0();
              v776(v775, v819, v893);
              sub_22C3A5908(&qword_27D9BAD00, &unk_22C90D5A0);
              v777 = sub_22C371BC4();
              sub_22C37097C(v777, xmmword_22C90F800);
              v908 = v778;
              v779 = *(v727 + 16);
              v780 = sub_22C381754(&v919);
              v779(v780);
              v781 = v902[2];
              v782 = v891;
              sub_22C37BF18();
              v781();
              sub_22C901ECC();
              sub_22C730000();
              v784 = *(v783 - 256);
              sub_22C36A748();
              sub_22C36C640(v785, v786, v787, v788);
              v789 = sub_22C375F98();
              v779(v789);
              v790 = *MEMORY[0x277D1E930];
              sub_22C72FF78();
              v791 = sub_22C3768B4();
              v792(v791);
              v793 = sub_22C37B38C();
              (v781)(v793, v782, v334);
              sub_22C37F998();
              v794 = v908;
              sub_22C73000C();
              sub_22C36B4D8();
              sub_22C4E9D34(v795);
              v796 = sub_22C7300A4();
              sub_22C376B84(v781, &qword_27D9BF318, &qword_22C9225A0);
              v797 = sub_22C37764C();
              v267 = v906;
              v798(v797);
              sub_22C730028();
              v799 = sub_22C72FFDC();
              v779(v799);
              sub_22C72FFBC();
              *(v794 + v800) = v796;
              v801 = sub_22C37B73C(v841);
              v779(v801);
              sub_22C36FB04(&v869);
              v771 = v816;
              v772 = v874;
            }

            v770(v771, *(v772 - 32));
            sub_22C36FB04(v842);
            v623 = sub_22C38C464();
LABEL_110:
            v624(v623, *(v625 - 32));
            v626 = sub_22C3785D0();
            result = v627(v626);
            goto LABEL_7;
          }
        }
      }

LABEL_63:
      v505 = sub_22C730068();
      v258(v505);
      v506 = v254;
LABEL_90:
      result = (v258)(v506, v257);
      goto LABEL_6;
    }

LABEL_5:
    v265 = *(v257 + 8);
    v266 = v904;
    v265(v807, v904);
    result = (v265)(v254, v266);
    goto LABEL_6;
  }

  v486 = v257;
  v487 = sub_22C389190(v257);
  v488(v487);
  sub_22C3722F4(v883);
  v489 = v854;
  v490(v854, v254, v856);
  sub_22C90710C();
  sub_22C730080();
  v491 = sub_22C901F6C();
  sub_22C3701E0();
  v492(v485, v897);
  if ((v491 & 1) == 0)
  {
    sub_22C36FB04(v883);
    v507(v489, v856);
    goto LABEL_65;
  }

  v493 = sub_22C9087DC();
  v913 = v493;
  v494 = v847;
  sub_22C9070FC();
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C72FF0C(&qword_27D9BA9F8);
  sub_22C374490(&v879);
  sub_22C907F7C();
  sub_22C36FB04(v877);
  v495(v494, v849);

  v496 = sub_22C3A5908(&qword_27D9BEED0, &unk_22C922F60);
  sub_22C36D0A8(v254, 1, v496);
  if (v579)
  {
    v497 = sub_22C36D9F4();
    v498(v497);
    v499 = sub_22C36C238();
    v500(v499);
    v501 = &qword_27D9BEEA8;
    v502 = &qword_22C9214D0;
    v503 = v254;
LABEL_56:
    result = sub_22C376B84(v503, v501, v502);
    goto LABEL_6;
  }

  v257 = v254 + *(v496 + 48);
  sub_22C370208(&v875);
  sub_22C9089EC();
  v510 = sub_22C908A0C();
  sub_22C36BBA8(v510);
  (*(v511 + 8))(v257);
  v512 = (v258)(v493, v904);
  if (v512 != v334)
  {
    v545 = sub_22C36D9F4();
    v546(v545);
    v547 = sub_22C730068();
    v258(v547);
    v506 = v846;
    goto LABEL_90;
  }

  v513 = *(v486 + 8);
  v859[0] = v486 + 8;
  v898 = v513;
  v514 = (v513)(v846, v904);
  v515 = MEMORY[0x2318B45C0](v514);
  v902 = *(v515 + 16);
  v903 = v515;
  if (!v902)
  {

    v267 = MEMORY[0x277D84F90];
LABEL_97:
    v562 = sub_22C36D9F4();
    v563(v562);
    result = (v898)(v807, v904);
    goto LABEL_7;
  }

  sub_22C72FFEC(&v885);
  v900 = (v903 + v517);
  v899 = v518 + 16;
  v908 = v862 + 8;
  v909 = (v862 + 16);
  v901 = v518 + 8;
  v254 = MEMORY[0x277D84F90];
  v258 = v853;
  v519 = v852;
  v520 = v859[1];
  while (1)
  {
    if (v516 >= *(v903 + 16))
    {
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    v906 = v254;
    v521 = *(v857[0] + 72);
    v907 = v516;
    v522 = (*(v857[0] + 16))(v519, v900 + v521 * v516, v258);
    v523 = MEMORY[0x2318B3D10](v522);
    v524 = v523[2];
    if (v524)
    {
      v913 = MEMORY[0x277D84F90];
      sub_22C3B7BF0(0, v524, 0);
      v257 = v913;
      sub_22C72FFEC(&v892);
      v905 = v523;
      v526 = v523 + v525;
      v528 = *(v527 + 72);
      v529 = *(v527 + 16);
      v530 = v851;
      do
      {
        v531 = v873;
        v529(v520, v526, v873);
        v529(v530, v520, v531);
        sub_22C36B4D8();
        sub_22C4E9D34(&qword_2814357B0);
        v532 = sub_22C909F0C();
        (*v908)(v520, v531);
        sub_22C72FFBC();
        *(v530 + v533) = v532;
        v913 = v257;
        v535 = *(v257 + 16);
        v534 = *(v257 + 24);
        v334 = v535 + 1;
        if (v535 >= v534 >> 1)
        {
          sub_22C3B7BF0(v534 > 1, v535 + 1, 1);
          v530 = v851;
          v257 = v913;
        }

        *(v257 + 16) = v334;
        sub_22C72FFEC(&v913);
        sub_22C72FD68(v530, v257 + v536 + *(v537 + 72) * v535);
        v526 += v528;
        --v524;
      }

      while (v524);
      v519 = v852;
      v258 = v853;
      (*v901)(v852, v853);
    }

    else
    {

      (*v901)(v519, v258);
      v257 = MEMORY[0x277D84F90];
    }

    v538 = *(v257 + 16);
    v254 = v906;
    v539 = v906[2];
    v485 = v539 + v538;
    if (__OFADD__(v539, v538))
    {
      goto LABEL_121;
    }

    LODWORD(v260) = swift_isUniquelyReferenced_nonNull_native();
    if (!v260 || v485 > v254[3] >> 1)
    {
      sub_22C595AD0();
      v254 = v260;
    }

    if (!*(v257 + 16))
    {

      if (v538)
      {
        goto LABEL_122;
      }

      goto LABEL_87;
    }

    if ((v254[3] >> 1) - v254[2] < v538)
    {
      __break(1u);
      goto LABEL_126;
    }

    v540 = (*(v882 + 80) + 32) & ~*(v882 + 80);
    v541 = *(v882 + 72);
    swift_arrayInitWithCopy();

    if (v538)
    {
      break;
    }

LABEL_87:
    v516 = v907 + 1;
    if ((v907 + 1) == v902)
    {
      v267 = v254;

      goto LABEL_97;
    }
  }

  v542 = v254[2];
  v543 = __OFADD__(v542, v538);
  v544 = v542 + v538;
  if (!v543)
  {
    v254[2] = v544;
    goto LABEL_87;
  }

  __break(1u);
LABEL_135:
  sub_22C36FB04(&v839);
  v632 = sub_22C36EDCC();
LABEL_113:
  v633(v632, *(v634 - 256));
LABEL_65:
  v508 = sub_22C36C238();
  result = v509(v508);
LABEL_6:
  v267 = 0;
LABEL_7:
  *v910 = v267;
  return result;
}

uint64_t sub_22C72E460(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C72E4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v67 = a2;
  v2 = sub_22C9025EC();
  v75 = *(v2 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x28223BE20](v2);
  v73 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v66 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - v9;
  v11 = sub_22C9093BC();
  v68 = *(v11 - 8);
  v12 = *(v68 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v62 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&v59 - v15);
  v17 = sub_22C3A5908(&qword_27D9BF610, &qword_22C922B50);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v59 - v22;
  v24 = sub_22C90952C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v69 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v59 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = (&v59 - v32);
  sub_22C58B57C(v70, v23);
  v34 = sub_22C370B74(v23, 1, v2);
  v74 = v11;
  if (v34 == 1)
  {
    sub_22C376B84(v23, &qword_27D9BF610, &qword_22C922B50);
    v35 = sub_22C9094EC();
    v36 = swift_allocBox();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D72CC8], v35);
    *v33 = v36;
    (*(v25 + 104))(v33, *MEMORY[0x277D72D50], v24);
  }

  else
  {
    sub_22C90207C();
    (*(v75 + 8))(v23, v2);
    sub_22C90935C();
    (*(v68 + 8))(v16, v11);
    (*(v25 + 32))(v33, v31, v24);
  }

  v38 = v25;
  v39 = v70;
  sub_22C58B57C(v70, v21);
  if (sub_22C370B74(v21, 1, v2) == 1)
  {
    sub_22C376B84(v21, &qword_27D9BF610, &qword_22C922B50);
    v40 = sub_22C901ECC();
    sub_22C36C640(v10, 1, 1, v40);
    v41 = v75;
  }

  else
  {
    sub_22C9025BC();
    v41 = v75;
    (*(v75 + 8))(v21, v2);
  }

  v63 = v33;
  v64 = v38;
  v42 = *(v38 + 16);
  v65 = v24;
  v42(v69, v33, v24);
  v43 = *(v39 + 16);
  if (v43)
  {
    v60 = v16;
    v61 = v10;
    v72 = v2;
    v76 = MEMORY[0x277D84F90];
    sub_22C3B74E0(0, v43, 0);
    v44 = v76;
    v45 = *(v41 + 16);
    v46 = v39 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v70 = *(v41 + 72);
    v71 = v45;
    v75 = v41 + 16;
    v47 = (v41 + 8);
    v48 = v68;
    v49 = v62;
    do
    {
      v51 = v72;
      v50 = v73;
      v71(v73, v46, v72);
      sub_22C90207C();
      (*v47)(v50, v51);
      v76 = v44;
      v53 = *(v44 + 16);
      v52 = *(v44 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_22C3B74E0(v52 > 1, v53 + 1, 1);
        v44 = v76;
      }

      *(v44 + 16) = v53 + 1;
      (*(v48 + 32))(v44 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v53, v49, v74);
      v46 += v70;
      --v43;
    }

    while (v43);
    v54 = v66;
    v55 = v74;
    v56 = v48;
    v16 = v60;
    v10 = v61;
  }

  else
  {
    v54 = v66;
    v55 = v74;
    v56 = v68;
  }

  sub_22C90906C();
  v57 = swift_allocBox();
  sub_22C90903C();
  *v16 = v57;
  (*(v56 + 104))(v16, *MEMORY[0x277D729E0], v55);
  sub_22C72E460(v10, v54);
  sub_22C9025CC();
  sub_22C376B84(v10, &qword_27D9BF318, &qword_22C9225A0);
  return (*(v64 + 8))(v63, v65);
}

uint64_t sub_22C72EB9C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v22[2] = a1;
  v23 = a2;
  v2 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v22[1] = v22 - v4;
  v5 = sub_22C901FAC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v22[0] = sub_22C908C3C();
  v7 = *(v22[0] - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v22[0]);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C9093BC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_22C908C5C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C906D1C();
  (*(v7 + 104))(v10, *MEMORY[0x277D1E930], v22[0]);
  sub_22C9068FC();
  sub_22C906CEC();
  sub_22C908BFC();
  v18 = v23;
  v19 = (*(v14 + 16))(v23, v17, v13);
  v20 = MEMORY[0x2318B41E0](v19);
  (*(v14 + 8))(v17, v13);
  result = type metadata accessor for CandidateWithDependencies(0);
  *(v18 + *(result + 20)) = v20;
  return result;
}

uint64_t sub_22C72EE70(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = sub_22C901FAC();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  a3();
  LOBYTE(a3) = sub_22C901F6C();
  v10 = *(v7 + 8);
  v11 = sub_22C371510();
  v12(v11);
  return a3 & 1;
}

uint64_t sub_22C72EF54(uint64_t a1)
{
  v2 = sub_22C9028FC();
  v70 = *(v2 - 8);
  v71 = v2;
  v3 = *(v70 + 64);
  MEMORY[0x28223BE20](v2);
  v69 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C902A4C();
  v73 = *(v5 - 8);
  v74 = v5;
  v6 = *(v73 + 64);
  MEMORY[0x28223BE20](v5);
  v72 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C9029AC();
  v76 = *(v8 - 8);
  v77 = v8;
  v9 = *(v76 + 64);
  MEMORY[0x28223BE20](v8);
  v75 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C90216C();
  v79 = *(v11 - 8);
  v80 = v11;
  v12 = *(v79 + 64);
  MEMORY[0x28223BE20](v11);
  v78 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C901FAC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v83 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v69 - v19;
  v21 = sub_22C9093BC();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = sub_22C9020CC();
  v81 = *(v23 - 8);
  v82 = v23;
  v24 = *(v81 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22C9026BC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_22C907DEC();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v69 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a1;
  sub_22C906EBC();
  sub_22C907DAC();
  (*(v33 + 8))(v36, v32);
  v37 = (*(v28 + 88))(v31, v27);
  if (v37 == *MEMORY[0x277D1CBF0])
  {
    (*(v28 + 96))(v31, v27);
    v39 = v81;
    v38 = v82;
    (*(v81 + 32))(v26, v31, v82);
    sub_22C3A5908(&qword_27D9BACF8, &qword_22C91DA30);
    v40 = *(sub_22C9025EC() - 8);
    v41 = *(v40 + 72);
    v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_22C90F800;
    sub_22C90207C();
    sub_22C906E1C();
    sub_22C901EAC();
    v44 = sub_22C901ECC();
    sub_22C36C640(v20, 0, 1, v44);
    sub_22C9025CC();
    (*(v39 + 8))(v26, v38);
    return v43;
  }

  if (v37 == *MEMORY[0x277D1CB98])
  {
    (*(v28 + 96))(v31, v27);
    v46 = v78;
    v45 = v79;
    v47 = v80;
    (*(v79 + 32))(v78, v31, v80);
    sub_22C3A5908(&qword_27D9BACF8, &qword_22C91DA30);
    v48 = *(sub_22C9025EC() - 8);
    v49 = *(v48 + 72);
    v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_22C90F800;
    sub_22C90207C();
    v51 = sub_22C901ECC();
    sub_22C36C640(v20, 1, 1, v51);
    sub_22C9025CC();
    (*(v45 + 8))(v46, v47);
    return v43;
  }

  if (v37 == *MEMORY[0x277D1CBA8] || v37 == *MEMORY[0x277D1CBB0] || v37 == *MEMORY[0x277D1CBB8])
  {
    goto LABEL_13;
  }

  if (v37 == *MEMORY[0x277D1CBD0])
  {
    (*(v28 + 96))(v31, v27);
    v55 = v75;
    v54 = v76;
    v56 = v77;
    (*(v76 + 32))(v75, v31, v77);
    sub_22C3A5908(&qword_27D9BACF8, &qword_22C91DA30);
    v57 = *(sub_22C9025EC() - 8);
    v58 = *(v57 + 72);
    v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_22C90F800;
    sub_22C90298C();
    (*(v54 + 8))(v55, v56);
    return v43;
  }

  if (v37 == *MEMORY[0x277D1CBD8])
  {
    (*(v28 + 96))(v31, v27);
    v60 = v72;
    v61 = v73;
    v62 = v74;
    v63 = (*(v73 + 32))(v72, v31, v74);
    v64 = MEMORY[0x2318AFF00](v63);
LABEL_18:
    v43 = v64;
    (*(v61 + 8))(v60, v62);
    return v43;
  }

  v66 = v37 == *MEMORY[0x277D1CBC0] || v37 == *MEMORY[0x277D1CBE0];
  if (v66 || v37 == *MEMORY[0x277D1CBA0])
  {
    goto LABEL_13;
  }

  if (v37 == *MEMORY[0x277D1CBC8])
  {
    (*(v28 + 96))(v31, v27);
    v60 = v69;
    v61 = v70;
    v62 = v71;
    v68 = (*(v70 + 32))(v69, v31, v71);
    v64 = MEMORY[0x2318AFDA0](v68);
    goto LABEL_18;
  }

  if (v37 == *MEMORY[0x277D1CBE8])
  {
LABEL_13:
    (*(v28 + 8))(v31, v27);
    return 0;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C72F900@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v41 = a2;
  v38 = a1;
  v2 = sub_22C908C3C();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v34 = &v31 - v9;
  v10 = sub_22C901FAC();
  v35 = *(v10 - 8);
  v11 = v35;
  v12 = *(v35 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v33 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  v42 = sub_22C9093BC();
  v32 = *(v42 - 8);
  v17 = v32;
  v18 = *(v32 + 64);
  v19 = MEMORY[0x28223BE20](v42);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  sub_22C90207C();
  v24 = *(v11 + 16);
  v24(v16, v38, v10);
  v25 = v34;
  sub_22C9025BC();
  (*(v17 + 16))(v21, v23, v42);
  (*(v39 + 104))(v36, *MEMORY[0x277D1E930], v40);
  v24(v33, v16, v10);
  v26 = v25;
  sub_22C72E460(v25, v37);
  v27 = v41;
  sub_22C908BFC();
  sub_22C4E9D34(&qword_2814357B0);
  v28 = v42;
  v29 = sub_22C909F0C();
  sub_22C376B84(v26, &qword_27D9BF318, &qword_22C9225A0);
  (*(v35 + 8))(v16, v10);
  (*(v32 + 8))(v23, v28);
  result = type metadata accessor for CandidateWithDependencies(0);
  *(v27 + *(result + 20)) = v29;
  return result;
}

uint64_t sub_22C72FD68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CandidateWithDependencies(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C72FE4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CandidateWithDependencies(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C72FEB0(uint64_t a1)
{
  v2 = type metadata accessor for CandidateWithDependencies(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C72FF0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(&qword_27D9BA9F0, &qword_22C912420);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C72FF8C()
{
  v2 = *(*(v1 - 536) + 96);
  result = v0;
  v4 = *(v1 - 152);
  return result;
}

uint64_t sub_22C73000C()
{

  return sub_22C908BFC();
}

uint64_t sub_22C730068()
{
  v2 = *(v0 + 8);
  result = *(v1 - 1064);
  v4 = *(v1 - 152);
  return result;
}

uint64_t sub_22C730080()
{
  result = v0;
  v3 = *(v1 - 112);
  return result;
}

uint64_t sub_22C73008C()
{
  *(v1 - 96) = v0;
}

uint64_t sub_22C7300A4()
{
  v2 = *(v0 - 240);

  return sub_22C909F0C();
}

uint64_t sub_22C7300BC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (v7 < result)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_22C730100(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v122 = a2;
  v127 = a1;
  v8 = sub_22C9063DC();
  v9 = sub_22C369824(v8);
  v129 = v10;
  v130 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v15 = v14 - v13;
  v16 = sub_22C3A5908(&qword_27D9BF9D0, &qword_22C923A18);
  v17 = sub_22C369824(v16);
  v120 = v18;
  v121 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v119 = &v118 - v21;
  v22 = sub_22C90931C();
  v125 = sub_22C369824(v22);
  v126 = v23;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v125);
  v123 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v124 = &v118 - v28;
  v29 = sub_22C9093BC();
  v30 = sub_22C369824(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C369838();
  v37 = (v36 - v35);
  v38 = sub_22C90906C();
  v39 = sub_22C369824(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22C369838();
  v45 = v44 - v43;
  v128 = a4;
  if (a5 >= a4)
  {
    v50 = v42;
    v49 = a3;
    if (sub_22C8B5564(a3, &unk_283FAFCF8))
    {
      return v49;
    }

    v52 = v127;
    (*(v32 + 16))(v37, v127, v29);
    v53 = *(v32 + 88);
    v54 = sub_22C512158();
    v56 = v55(v54);
    v57 = v131;
    if (v56 == *MEMORY[0x277D72A58])
    {
      v58 = *(v32 + 96);
      v59 = sub_22C512158();
      v60(v59);
      v61 = *v37;
      v62 = swift_projectBox();
      v64 = v125;
      v63 = v126;
      v65 = (v126 + 16);
      v66 = *(v126 + 16);
      v67 = v124;
      v66(v124, v62, v125);
      v66(v123, v67, v64);
      v68 = *(v63 + 88);
      v69 = sub_22C37493C();
      v71 = v70(v69);
      if (v71 == *MEMORY[0x277D72988] || v71 == *MEMORY[0x277D72978] || v71 == *MEMORY[0x277D729A8] || v71 == *MEMORY[0x277D729C0])
      {
LABEL_12:
        (*(v63 + 8))(v67, v64);
LABEL_13:

        return 3;
      }

      if (v71 == *MEMORY[0x277D729B8])
      {
        goto LABEL_42;
      }

      if (v71 == *MEMORY[0x277D72990] || v71 == *MEMORY[0x277D72958])
      {
LABEL_49:
        v101 = sub_22C37381C();
        v65(v101);
        v102 = sub_22C37493C();
        v65(v102);
        goto LABEL_13;
      }

      if (v71 != *MEMORY[0x277D72980] && v71 != *MEMORY[0x277D72968])
      {
        if (v71 == *MEMORY[0x277D72940])
        {
          goto LABEL_49;
        }

        if (v71 != *MEMORY[0x277D72950] && v71 != *MEMORY[0x277D72948] && v71 != *MEMORY[0x277D729D0])
        {
          if (v71 == *MEMORY[0x277D729B0] || v71 == *MEMORY[0x277D72998])
          {
            goto LABEL_67;
          }

          v65 = v61;
          if (v71 == *MEMORY[0x277D72970])
          {
            v109 = v125;
            v110 = *(v126 + 8);
            v110(v124, v125);
            v110(v123, v109);

            return 3;
          }

          if (v71 == *MEMORY[0x277D72960])
          {
            v112 = v125;
            v111 = v126;
            v113 = v123;
            (*(v126 + 96))(v123, v125);
            v115 = v119;
            v114 = v120;
            v116 = v121;
            (*(v120 + 32))(v119, v113, v121);
            v117 = sub_22C90945C();
            v49 = sub_22C730AD8(v117);

            (*(v114 + 8))(v115, v116);
            (*(v111 + 8))(v124, v112);

            return v49;
          }

          v64 = v125;
          v63 = v126;
          v67 = v124;
          if (v71 == *MEMORY[0x277D72938])
          {
LABEL_67:
            v107 = sub_22C37381C();
            v65(v107);
            v108 = sub_22C37493C();
            v65(v108);

            return 1;
          }

          if (v71 == *MEMORY[0x277D729A0])
          {
            goto LABEL_12;
          }
        }
      }

LABEL_42:
      v96 = sub_22C37381C();
      v65(v96);
      v97 = sub_22C37493C();
      v65(v97);

      return 2;
    }

    if (v56 != *MEMORY[0x277D729E8] && v56 != *MEMORY[0x277D72A38])
    {
      if (v56 == *MEMORY[0x277D729E0])
      {
        v77 = *(v32 + 96);
        v78 = sub_22C512158();
        v79(v78);
        v80 = *v37;
        v81 = swift_projectBox();
        (*(v50 + 16))(v45, v81, v38);

        v82 = sub_22C90905C();
        v83 = (*(v50 + 8))(v45, v38);
        MEMORY[0x28223BE20](v83);
        *(&v118 - 4) = v122;
        *(&v118 - 24) = v49;
        *(&v118 - 2) = v128;
        v84 = sub_22C3B4248(sub_22C731504, (&v118 - 6), v82);

        if (v57)
        {
          return v49;
        }

        v91 = *(v84 + 16);
        if (v91)
        {
          v132 = MEMORY[0x277D84F90];
          sub_22C3B7698();
          v92 = v132;
          v93 = v132[2];
          v94 = 32;
          do
          {
            v95 = *(v84 + v94);
            v132 = v92;
            if (v93 >= v92[3] >> 1)
            {
              sub_22C3B7698();
              v92 = v132;
            }

            v92[2] = v93 + 1;
            v92[v93 + 4] = v95;
            ++v94;
            ++v93;
            --v91;
          }

          while (v91);
        }

        else
        {

          v92 = MEMORY[0x277D84F90];
        }

        v98 = sub_22C7300BC(v92);
        v100 = v99;

        if (v100)
        {
          return 2;
        }

        v76 = sub_22C74C7C4(v98);
        if (v76 == 6)
        {
          return 2;
        }

        return v76;
      }

      if (v56 != *MEMORY[0x277D72A30] && v56 != *MEMORY[0x277D72A40] && v56 != *MEMORY[0x277D729F8] && v56 != *MEMORY[0x277D72A60])
      {
        v88 = *(v32 + 8);
        v89 = sub_22C512158();
        v90(v89);
        return 2;
      }
    }

    v73 = *(v32 + 8);
    v74 = sub_22C512158();
    v75(v74);
    v76 = sub_22C730DE4(v122, v52);
    if (v57)
    {
      return v49;
    }

    return v76;
  }

  sub_22C903FAC();
  v46 = sub_22C9063CC();
  v47 = sub_22C90AADC();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 134218240;
    *(v48 + 4) = v128;
    *(v48 + 12) = 2048;
    *(v48 + 14) = a5;
    _os_log_impl(&dword_22C366000, v46, v47, "entityRiskLevel: recursive exhaustion riskLevel - depth:%ld, maxDepth:%ld", v48, 0x16u);
    MEMORY[0x2318B9880](v48, -1, -1);
  }

  (*(v129 + 8))(v15, v130);
  return 2;
}

uint64_t sub_22C730AD8(void *a1)
{
  v2 = sub_22C9063DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9BB638, &unk_22C9150C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - v9;
  v11 = sub_22C90430C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C731784([a1 attributeSet]);
  if (v16)
  {
    sub_22C90431C();
    if (sub_22C370B74(v10, 1, v11) != 1)
    {
      (*(v12 + 32))(v15, v10, v11);
      v19 = sub_22C73152C();
      (*(v12 + 8))(v15, v11);
      return v19;
    }

    sub_22C7317F4(v10);
  }

  sub_22C903FAC();
  v17 = sub_22C9063CC();
  v18 = sub_22C90AADC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = 2;
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_22C366000, v17, v18, "entityRiskLevel: encountered unknown uttype for parameter", v20, 2u);
    MEMORY[0x2318B9880](v20, -1, -1);

    (*(v3 + 8))(v6, v2);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
    return 2;
  }

  return v19;
}

uint64_t sub_22C730D98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, _BYTE *a6@<X8>)
{
  v7 = __OFADD__(a4, 1);
  v8 = a4 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    result = sub_22C730100(result, a2, a3, v8, 1);
    if (v6)
    {
      *a5 = v6;
    }

    else
    {
      *a6 = result;
    }
  }

  return result;
}

uint64_t sub_22C730DE4(void *a1, unint64_t a2)
{
  v5 = sub_22C90430C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v70 = v66 - v11;
  v12 = sub_22C9063DC();
  v71 = *(v12 - 8);
  v13 = *(v71 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v66 - v17;
  v19 = sub_22C374168(a1, a1[3]);
  v20 = sub_22C5F5A9C(v19);
  if (v2)
  {
    return a2;
  }

  v21 = v20;
  v69 = v12;
  v66[2] = 0;
  if (!v20)
  {
    sub_22C903FAC();
    v51 = sub_22C9063CC();
    v52 = sub_22C90AADC();
    v53 = os_log_type_enabled(v51, v52);
    v54 = v69;
    v55 = v71;
    if (v53)
    {
      a2 = 2;
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_22C366000, v51, v52, "entityRiskLevel: error getting supportedTypesForExport", v56, 2u);
      MEMORY[0x2318B9880](v56, -1, -1);

      (*(v55 + 8))(v18, v54);
      return a2;
    }

    (*(v55 + 8))(v18, v54);
    return 2;
  }

  v22 = v16;
  sub_22C903FAC();

  v23 = sub_22C9063CC();
  v24 = sub_22C90AABC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v72 = v68;
    *v25 = 136315138;
    v26 = MEMORY[0x2318B7AD0](v21, v5);
    LODWORD(v67) = v24;
    v28 = sub_22C36F9F4(v26, v27, &v72);

    *(v25 + 4) = v28;
    _os_log_impl(&dword_22C366000, v23, v67, "entityRiskLevel: retrieved value types: %s", v25, 0xCu);
    v29 = v68;
    sub_22C36FF94(v68);
    MEMORY[0x2318B9880](v29, -1, -1);
    MEMORY[0x2318B9880](v25, -1, -1);
  }

  (*(v71 + 8))(v22, v69);
  v30 = *(v21 + 16);
  v31 = MEMORY[0x277D84F90];
  if (v30)
  {
    v72 = MEMORY[0x277D84F90];
    sub_22C3B7908();
    v32 = v72;
    v34 = *(v6 + 16);
    v33 = v6 + 16;
    v35 = *(v33 + 64);
    v66[1] = v21;
    v36 = v21 + ((v35 + 32) & ~v35);
    v67 = *(v33 + 56);
    v68 = v34;
    v37 = (v33 - 8);
    v71 = v5;
    v38 = v70;
    v69 = v33;
    do
    {
      (v68)(v38, v36, v5);
      sub_22C90423C();
      v39 = sub_22C9042DC();
      v40 = *v37;
      (*v37)(v10, v5);
      if (v39)
      {
        goto LABEL_15;
      }

      sub_22C9042FC();
      v41 = sub_22C9042DC();
      v40(v10, v5);
      if (v41)
      {
        goto LABEL_15;
      }

      sub_22C90428C();
      v42 = sub_22C9042DC();
      v40(v10, v5);
      if (v42)
      {
        goto LABEL_15;
      }

      sub_22C90429C();
      v43 = sub_22C9042DC();
      v40(v10, v5);
      if (v43)
      {
        goto LABEL_15;
      }

      sub_22C9042AC();
      v44 = sub_22C9042DC();
      v40(v10, v5);
      if (v44)
      {
        goto LABEL_15;
      }

      sub_22C90424C();
      v45 = sub_22C9042DC();
      v40(v10, v5);
      if (v45 & 1) != 0 || (sub_22C9042CC(), v46 = sub_22C9042DC(), v40(v10, v5), (v46) || (sub_22C9042BC(), v47 = sub_22C9042DC(), v40(v10, v5), (v47))
      {
LABEL_15:
        v48 = 1;
      }

      else
      {
        sub_22C9042EC();
        v50 = sub_22C9042DC();
        v40(v10, v5);
        if (v50)
        {
          v48 = 1;
        }

        else
        {
          v48 = 2;
        }
      }

      v38 = v70;
      v40(v70, v71);
      v72 = v32;
      v49 = v32[2];
      if (v49 >= v32[3] >> 1)
      {
        sub_22C3B7908();
        v38 = v70;
        v32 = v72;
      }

      v32[2] = v49 + 1;
      *(v32 + v49 + 32) = v48;
      v36 += v67;
      --v30;
      v5 = v71;
    }

    while (v30);

    v31 = MEMORY[0x277D84F90];
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v57 = v32[2];
  if (v57)
  {
    v72 = v31;
    sub_22C3B7698();
    v58 = v72;
    v59 = v72[2];
    v60 = 32;
    do
    {
      v61 = *(v32 + v60);
      v72 = v58;
      if (v59 >= v58[3] >> 1)
      {
        sub_22C3B7698();
        v58 = v72;
      }

      v58[2] = v59 + 1;
      v58[v59 + 4] = v61;
      ++v60;
      ++v59;
      --v57;
    }

    while (v57);
  }

  else
  {

    v58 = MEMORY[0x277D84F90];
  }

  v62 = sub_22C7300BC(v58);
  v64 = v63;

  if (v64)
  {
    return 2;
  }

  a2 = sub_22C74C7C4(v62);
  if (a2 == 6)
  {
    return 2;
  }

  return a2;
}

uint64_t sub_22C73152C()
{
  v0 = sub_22C90430C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90423C();
  v5 = sub_22C9042DC();
  v6 = *(v1 + 8);
  v6(v4, v0);
  if (v5)
  {
    return 1;
  }

  sub_22C9042FC();
  v7 = sub_22C9042DC();
  v6(v4, v0);
  if (v7)
  {
    return 1;
  }

  sub_22C90428C();
  v8 = sub_22C9042DC();
  v6(v4, v0);
  if (v8)
  {
    return 1;
  }

  sub_22C90429C();
  v9 = sub_22C9042DC();
  v6(v4, v0);
  if (v9)
  {
    return 1;
  }

  sub_22C9042AC();
  v10 = sub_22C9042DC();
  v6(v4, v0);
  if (v10)
  {
    return 1;
  }

  sub_22C90424C();
  v11 = sub_22C9042DC();
  v6(v4, v0);
  if (v11)
  {
    return 1;
  }

  sub_22C9042CC();
  v12 = sub_22C9042DC();
  v6(v4, v0);
  if (v12)
  {
    return 1;
  }

  sub_22C9042BC();
  v15 = sub_22C9042DC();
  v6(v4, v0);
  v13 = 1;
  if ((v15 & 1) == 0)
  {
    sub_22C9042EC();
    v16 = sub_22C9042DC();
    v6(v4, v0);
    if (v16)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return v13;
}

uint64_t sub_22C731784(void *a1)
{
  v2 = [a1 contentType];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22C90A11C();

  return v3;
}

uint64_t sub_22C7317F4(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BB638, &unk_22C9150C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C7318A4()
{
  result = sub_22C9087BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C731910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = a3(0);
  v9 = v8;
  v10 = 1;
  if ((a1 & 0x8000000000000000) == 0 && v7 > a1)
  {
    sub_22C36BBA8(v8);
    (*(v11 + 16))(a4, a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * a1, v9);
    v10 = 0;
  }

  return sub_22C36C640(a4, v10, 1, v9);
}

void sub_22C7319D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v24;
  a20 = v25;
  v147 = v26;
  v27 = sub_22C9026BC();
  v28 = sub_22C36A7A4(v27, &v172);
  v151 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C3698A8();
  sub_22C3698F8(v32);
  v33 = sub_22C901FAC();
  v34 = sub_22C36A7A4(v33, &v170);
  v148 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C3698A8();
  sub_22C36D234(v38);
  v39 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  sub_22C369914(v39);
  v41 = *(v40 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v42);
  sub_22C36D5B4();
  sub_22C36D234(v43);
  v44 = sub_22C3A5908(&qword_27D9BD7C8, &unk_22C922F50);
  v45 = sub_22C369914(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v48);
  sub_22C36BA64();
  sub_22C3698F8(v49);
  v50 = sub_22C902B3C();
  v51 = sub_22C36A7A4(v50, &a12);
  v156 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22C3698A8();
  sub_22C3698F8(v55);
  v56 = sub_22C9089DC();
  v57 = sub_22C36A7A4(v56, &a16);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22C3698A8();
  sub_22C3698F8(v60);
  v61 = sub_22C90069C();
  v62 = sub_22C369824(v61);
  v163 = v63;
  v164 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  sub_22C369838();
  sub_22C37A2CC();
  v162 = sub_22C90880C();
  v66 = sub_22C369824(v162);
  v68 = v67;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v66);
  sub_22C369838();
  v73 = v72 - v71;
  v74 = sub_22C3A5908(&qword_27D9BEEA8, &qword_22C9214D0);
  v75 = sub_22C369914(v74);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  sub_22C3698E4();
  v161 = v78;
  sub_22C369930();
  MEMORY[0x28223BE20](v79);
  sub_22C387B64();
  v80 = sub_22C3A5908(&qword_27D9BEED0, &unk_22C922F60);
  sub_22C36985C(v80);
  v82 = *(v81 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v83);
  sub_22C36D5B4();
  sub_22C3698F8(v84);
  v85 = sub_22C9025AC();
  v86 = sub_22C36A7A4(v85, &a11);
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v86);
  sub_22C3698A8();
  sub_22C3698F8(v89);
  v90 = sub_22C906BEC();
  v91 = sub_22C369914(v90);
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v91);
  sub_22C369838();
  sub_22C37FDDC();
  v94 = type metadata accessor for UserPromptResolver.Resolution(0);
  v95 = sub_22C369914(v94);
  v97 = *(v96 + 64);
  MEMORY[0x28223BE20](v95);
  sub_22C369838();
  v100 = (v99 - v98);
  sub_22C906BFC();
  sub_22C73396C(v21, v100);
  sub_22C90878C();
  v101 = sub_22C9087DC();
  (*(v68 + 8))(v73, v162);
  a10 = v101;
  sub_22C906C1C();
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C38895C(&qword_27D9BA9F8);
  sub_22C907F7C();
  (*(v163 + 8))(v23, v164);

  sub_22C379DF8(v22, v161, &qword_27D9BEEA8, &qword_22C9214D0);
  sub_22C36D0A8(v161, 1, v80);
  if (!v102)
  {
    sub_22C36DD28(v22, &qword_27D9BEEA8, &qword_22C9214D0);
    sub_22C733D4C(v161, v159);
    v106 = *(v80 + 48);
    sub_22C374490(&a14);
    sub_22C9089EC();
    v107 = sub_22C908A0C();
    sub_22C36985C(v107);
    (*(v108 + 8))(v106 + v159);
    sub_22C36D818(&a18);
    sub_22C733DBC(v109);
    if (v20)
    {
      sub_22C36FB04(&a15);
      v111 = v100;
      v112 = &a16;
LABEL_10:
      v110(v111, *(v112 - 32));
      goto LABEL_11;
    }

    sub_22C36FB04(&a15);
    v113(v100);
    sub_22C90259C();
    sub_22C37443C(&a9);
    sub_22C58B0B0(v114, v115);

    sub_22C379DF8(v22, v157, &qword_27D9BD7C8, &unk_22C922F50);
    sub_22C36D0A8(v157, 1, v158);
    if (v102)
    {
      sub_22C36DD28(v157, &qword_27D9BD7C8, &unk_22C922F50);
      sub_22C38C474();
      sub_22C90735C();
      sub_22C3A5F00();
      sub_22C36FBE4();
      sub_22C377534(v116, v170, v169, v168);
      v117 = sub_22C379ED8();
      sub_22C36DD28(v117, v118, &unk_22C922F50);
      sub_22C36FB04(&a10);
      v111 = v106;
    }

    else
    {
      sub_22C36DD28(v22, &qword_27D9BD7C8, &unk_22C922F50);
      sub_22C37443C(&v173);
      v121 = *(v120 + 32);
      v122 = sub_22C36CC9C();
      v123(v122);
      sub_22C902B1C();
      if (!v124)
      {
        v127 = 1;
        v125 = v154;
        goto LABEL_17;
      }

      sub_22C902B1C();
      v125 = v154;
      if (v126)
      {
        MEMORY[0x2318B4B50]();
        sub_22C36BA00();
        sub_22C90766C();
        v127 = 0;
LABEL_17:
        v128 = sub_22C90769C();
        sub_22C36C640(v125, v127, 1, v128);
        sub_22C36D2E8(&v168);
        sub_22C902AEC();
        sub_22C36D818(&v168.n128_i64[1]);
        sub_22C902B2C();
        v119 = v100;
        sub_22C7323BC("ptResolver.swift", v125, v100, v127, v129, v130, v131, v132, v144, v145, v146, v147, v148, v149, v151, v152, v154, v155, v156, v157);
        sub_22C36FB04(&v171);
        v133(v127, v153);
        sub_22C36FB04(&v169.n128_i64[1]);
        v134("ptResolver.swift", v150);
        sub_22C36DD28(v125, &qword_27D9BF330, &unk_22C923250);
        v135 = *(v22 + 8);
        v136 = sub_22C37FE24();
        v137(v136);
        sub_22C36FB04(&a10);
        v138();
        goto LABEL_12;
      }

      sub_22C7395C8();
      sub_22C38C474();
      sub_22C90735C();
      sub_22C3A5F00();
      v139 = sub_22C36FBE4();
      sub_22C372BFC(v139, v140);
      v141 = *(v22 + 8);
      v142 = sub_22C37FE24();
      v143(v142);
      sub_22C36FB04(&a10);
      v111 = v160;
    }

    v112 = &a11;
    goto LABEL_10;
  }

  sub_22C37BF28(v161);
  sub_22C38C474();
  sub_22C90735C();
  sub_22C3A5F00();
  sub_22C36FBE4();
  sub_22C377534(v103, v167, v166, v165);
  v104 = sub_22C379ED8();
  sub_22C36DD28(v104, v105, &qword_22C9214D0);
LABEL_11:
  v119 = v100;
LABEL_12:
  sub_22C733CF0(v119);
  sub_22C37B304();
  sub_22C36FB20();
}

void sub_22C7323BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v23;
  a20 = v24;
  v397 = v25;
  v398 = v21;
  v396[0] = v20;
  v396[1] = v26;
  v28 = v27;
  v400 = v29;
  v383 = v30;
  v31 = sub_22C9063DC();
  v32 = sub_22C369824(v31);
  v385 = v33;
  v386 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C3698A8();
  v384 = v36;
  sub_22C36BA0C();
  v37 = sub_22C908BBC();
  v38 = sub_22C36A7A4(v37, &v390);
  v366 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22C3698A8();
  sub_22C3698F8(v42);
  v43 = sub_22C9069BC();
  v44 = sub_22C36A7A4(v43, &v387);
  v363 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22C3698A8();
  sub_22C3698F8(v48);
  v49 = sub_22C9093BC();
  v50 = sub_22C369824(v49);
  v391 = v51;
  v392 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22C3698A8();
  sub_22C3698F8(v54);
  v55 = sub_22C90286C();
  v56 = sub_22C36A7A4(v55, &a10);
  v378 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22C3698A8();
  v390 = v60;
  sub_22C36BA0C();
  v61 = sub_22C9028FC();
  v62 = sub_22C36A7A4(v61, &v385);
  v361 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  sub_22C3698A8();
  sub_22C3698F8(v66);
  v67 = sub_22C90281C();
  v68 = sub_22C36A7A4(v67, &v401);
  v376 = v69;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v68);
  sub_22C3698A8();
  v73 = sub_22C3698F8(v72);
  v399 = type metadata accessor for UserPromptResolver.Resolution(v73);
  v74 = sub_22C36985C(v399);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  sub_22C3698E4();
  v389 = v77;
  sub_22C369930();
  MEMORY[0x28223BE20](v78);
  sub_22C36BA64();
  v388 = v79;
  sub_22C36BA0C();
  v80 = sub_22C902A4C();
  v81 = sub_22C36A7A4(v80, &v394);
  v369 = v82;
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v81);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v85);
  sub_22C36BA64();
  sub_22C36D234(v86);
  v87 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v87);
  v89 = *(v88 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v90);
  sub_22C36D5B4();
  sub_22C3698F8(v91);
  v92 = sub_22C901FBC();
  v93 = sub_22C36A7A4(v92, &a14);
  v380 = v94;
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v93);
  sub_22C3698A8();
  sub_22C3698F8(v97);
  v98 = sub_22C907DEC();
  v99 = sub_22C369914(v98);
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v99);
  sub_22C3698A8();
  v382 = v102;
  v103 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  sub_22C369914(v103);
  v105 = *(v104 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v106);
  sub_22C36D5B4();
  sub_22C36D234(v107);
  v108 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v108);
  v110 = *(v109 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v111);
  sub_22C36D5B4();
  sub_22C3698F8(v112);
  v113 = sub_22C901FAC();
  v114 = sub_22C369824(v113);
  v393 = v115;
  v394 = v114;
  v117 = *(v116 + 64);
  MEMORY[0x28223BE20](v114);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v118);
  sub_22C36BA64();
  v395 = v119;
  v120 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  sub_22C369914(v120);
  v122 = *(v121 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v123);
  sub_22C36D5B4();
  v387 = v124;
  sub_22C36BA0C();
  v125 = sub_22C9029AC();
  v126 = sub_22C36A7A4(v125, v396);
  v371 = v127;
  v129 = *(v128 + 64);
  MEMORY[0x28223BE20](v126);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v130);
  sub_22C36BA64();
  sub_22C3698F8(v131);
  v132 = sub_22C9026BC();
  v133 = sub_22C369824(v132);
  v135 = v134;
  v137 = *(v136 + 64);
  MEMORY[0x28223BE20](v133);
  sub_22C3698E4();
  sub_22C3698D4();
  v139 = MEMORY[0x28223BE20](v138);
  v141 = &v357 - v140;
  MEMORY[0x28223BE20](v139);
  sub_22C36BA64();
  sub_22C3698F8(v142);
  v143 = sub_22C9078FC();
  v144 = sub_22C36A7A4(v143, &v397);
  v373 = v145;
  v147 = *(v146 + 64);
  MEMORY[0x28223BE20](v144);
  sub_22C369ABC();
  v150 = v148 - v149;
  MEMORY[0x28223BE20](v151);
  v153 = &v357 - v152;
  v154 = sub_22C3A5908(&qword_27D9BF9E8, &qword_22C923A38);
  sub_22C369914(v154);
  v156 = *(v155 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v157);
  sub_22C37FDDC();
  v159 = *(v158 + 56);
  a10 = v135;
  v160 = v135[2];
  v161 = v28;
  v162 = v132;
  v160(v22, v161, v132);
  sub_22C7340B8(v400, v22 + v159);
  v163 = v22;
  v401 = v159;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v217 = v401;
      v218 = v388;
      sub_22C7340B8(v22 + v401, v388);
      v219 = *v218;
      v220 = sub_22C37098C();
      v222 = v221(v220, v162);
      if (v222 == *MEMORY[0x277D1CBB0])
      {
        v223 = *(v159 + 96);
        v224 = sub_22C36CC9C();
        v225(v224);
        sub_22C3701F8(&v400);
        sub_22C37ED4C();
        sub_22C557F60();
        v226();
        sub_22C3833C4();
        sub_22C7372FC();
      }

      else if (v222 == *MEMORY[0x277D1CBD8])
      {
        v263 = *(v159 + 96);
        v264 = sub_22C36CC9C();
        v265(v264);
        sub_22C3701F8(&v393);
        sub_22C37ED4C();
        sub_22C557F60();
        v266();
        v267 = sub_22C3833C4();
        sub_22C7376C0(v267, v268, v269, v270, v271, v272, v273, v274, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368);
      }

      else
      {
        if (v222 != *MEMORY[0x277D1CBC8])
        {
          goto LABEL_22;
        }

        v306 = *(v159 + 96);
        v307 = sub_22C36CC9C();
        v308(v307);
        sub_22C3701F8(&v384);
        sub_22C37ED4C();
        sub_22C557F60();
        v309();
        sub_22C3833C4();
        sub_22C738354();
      }

      v310 = *(v153 + 1);
      v311 = sub_22C37493C();
      v312(v311);
      goto LABEL_37;
    case 2u:
      v196 = sub_22C37098C();
      v198 = v197(v196, v162);
      if (v198 != *MEMORY[0x277D1CBA8])
      {
        if (v198 == *MEMORY[0x277D1CBD0])
        {
          v160(v141, v22, v162);
          (*(v159 + 96))(v141, v162);
          v235 = v371;
          v236 = v368;
          v237 = v372;
          (*(v371 + 32))();
          sub_22C375AD8();
          sub_22C7354EC();
          v238 = v401;
          (*(v235 + 8))(v236, v237);
          sub_22C733CF0(v22 + v238);
          (*(v159 + 8))(v22, v162);
          goto LABEL_41;
        }

        v275 = v401;
        if (v198 == *MEMORY[0x277D1CBA0])
        {
          v276 = v359;
          v160(v359, v163, v162);
          (*(v159 + 96))(v276, v162);
          v277 = *(sub_22C9026DC() - 8);
          v278 = v277[11];
          v279 = sub_22C372280();
          if (v280(v279) == *MEMORY[0x277D1CC20])
          {
            v281 = v277[12];
            v282 = sub_22C372280();
            v283(v282);
            v284 = *(sub_22C9027BC() - 8);
            v285 = *(v284 + 88);
            v286 = sub_22C372280();
            v288 = v287(v286);
            if (v288 == *MEMORY[0x277D1CD18])
            {
              sub_22C375AD8();
              sub_22C73411C();
LABEL_31:
              v289 = *(v284 + 8);
              v290 = sub_22C372280();
              v291(v290);
              sub_22C733CF0(v163 + v275);
              v292 = a10[1];
              v293 = sub_22C36CC9C();
              v294(v293);
              goto LABEL_41;
            }

            if (v288 == *MEMORY[0x277D1CD10])
            {
              v338 = *(v284 + 8);
              v339 = sub_22C372280();
              v340(v339);
              v341 = a10;
              goto LABEL_50;
            }

            if (v288 == *MEMORY[0x277D1CCB8])
            {
              sub_22C375AD8();
              sub_22C7343BC(v345, v346, v347, v348, v349, v350, v351, v352, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368);
              goto LABEL_31;
            }

            v353 = v288 == *MEMORY[0x277D1CCE8] || v288 == *MEMORY[0x277D1CD00];
            v341 = a10;
            if (v353)
            {
LABEL_50:
              sub_22C733CF0(v163 + v275);
              v342 = v341[1];
              v343 = sub_22C36CC9C();
              v344(v343);
              sub_22C375AD8();
              sub_22C7388DC();
              goto LABEL_41;
            }

            v354 = *(v284 + 8);
            v355 = sub_22C372280();
            v356(v355);
          }

          else
          {
            v332 = v277[1];
            v333 = sub_22C372280();
            v334(v333);
          }
        }

LABEL_22:
        v256 = v384;
        sub_22C903F8C();
        v257 = sub_22C9063CC();
        v258 = sub_22C90AADC();
        if (sub_22C36FBB4(v258))
        {
          *swift_slowAlloc() = 0;
          sub_22C36AD70(&dword_22C366000, v259, v260, "prompt cannot be resolved");
          sub_22C3699EC();
        }

        (*(v385 + 8))(v256, v386);
        type metadata accessor for InterpreterError();
        sub_22C37BBF0();
        sub_22C739510(v261, v262);
        sub_22C376858();
        sub_22C36FBE4();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_22C36DD28(v163, &qword_27D9BF9E8, &qword_22C923A38);
        goto LABEL_41;
      }

      v199 = v398;
      sub_22C738B88(v153);
      if (!v199)
      {
        sub_22C90777C();
        v200 = sub_22C375FB0();
        v201(v200, v153, v374);
        type metadata accessor for StepResolution();
        sub_22C376858();
        swift_storeEnumTagMultiPayload();
      }

      v202 = sub_22C386D70();
      sub_22C733CF0(v202);
      v203 = a10[1];
      v204 = sub_22C36CC9C();
      v205(v204);
LABEL_41:
      sub_22C37B304();
      sub_22C36FB20();
      return;
    case 3u:
      v206 = sub_22C37098C();
      v208 = v207(v206, v162);
      if (v208 == *MEMORY[0x277D1CBA8])
      {
        sub_22C36A748();
        v209 = v394;
        sub_22C36C640(v210, v211, v212, v394);
        (*(v393 + 16))(v395, v397, v209);
        sub_22C7395FC();
        sub_22C90737C();
        type metadata accessor for StepResolution();
        sub_22C376858();
        swift_storeEnumTagMultiPayload();
        v213 = *(v159 + 8);
        v214 = sub_22C37FE24();
        v215(v214);
        goto LABEL_13;
      }

      v217 = v401;
      if (v208 == *MEMORY[0x277D1CBB0])
      {
        v239 = *(v159 + 8);
        v240 = sub_22C37FE24();
        v241(v240);
        sub_22C90069C();
        sub_22C36A748();
        sub_22C36C640(v242, v243, v244, v245);
        sub_22C379DF8(v383, v381, &qword_27D9BF330, &unk_22C923250);
        v246 = *MEMORY[0x277D1C418];
        v247 = sub_22C36FDF8();
        v248(v247);
        sub_22C36D2E8(&a11);
        sub_22C901FFC();
        (*(v159 + 104))(v217, *MEMORY[0x277D1CBE8], v162);
        sub_22C9026AC();
        sub_22C36A748();
        sub_22C36C640(v249, v250, v251, v252);
        sub_22C907DCC();
        sub_22C9087AC();
        sub_22C90882C();

        v253 = sub_22C7395D4();
        v254(v253);
        sub_22C7395FC();
        sub_22C37BD80();
        sub_22C906E7C();
        type metadata accessor for StepResolution();
        sub_22C376858();
        swift_storeEnumTagMultiPayload();
        v255 = sub_22C386D70();
        goto LABEL_40;
      }

      if (v208 == *MEMORY[0x277D1CBD0])
      {
        v295 = a10[12];
        v296 = sub_22C37FE24();
        v297(v296);
        v298 = v371;
        v299 = v358;
        (*(v371 + 32))(v358, v163, v372);
        sub_22C7357D0(v299, v397, v300, v301, v302, v303, v304, v305, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368);
      }

      else
      {
        if (v208 != *MEMORY[0x277D1CBD8])
        {
          if (v208 != *MEMORY[0x277D1CBC8])
          {
            goto LABEL_22;
          }

          sub_22C375AD8();
          sub_22C736F58();
          v335 = a10[1];
          v336 = sub_22C37FE24();
          v337(v336);
LABEL_37:
          v255 = v163 + v217;
          goto LABEL_40;
        }

        v320 = a10[12];
        v321 = sub_22C37FE24();
        v322(v321);
        v298 = v369;
        v323 = v357;
        (*(v369 + 32))(v357, v163, v370);
        sub_22C736848(v323, v397, v383, v324, v325, v326, v327, v328, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368);
      }

      v329 = *(v298 + 8);
      v330 = sub_22C36FCCC();
      v331(v330);
      goto LABEL_37;
    case 4u:
      v178 = sub_22C37098C();
      if (v179(v178, v162) == *MEMORY[0x277D1CBB0])
      {
        v180 = *(v159 + 8);
        v181 = sub_22C36CC9C();
        v182(v181);
        sub_22C90069C();
        sub_22C36A748();
        sub_22C36C640(v183, v184, v185, v186);
        sub_22C379DF8(v383, v381, &qword_27D9BF330, &unk_22C923250);
        v187 = *MEMORY[0x277D1C418];
        v188 = sub_22C36FDF8();
        v189(v188);
        sub_22C374490(&a11);
        sub_22C901FFC();
        (*(v159 + 104))(v153, *MEMORY[0x277D1CBE8], v162);
        sub_22C9026AC();
        sub_22C36A748();
        sub_22C36C640(v190, v191, v192, v193);
        sub_22C36FCCC();
        sub_22C907DCC();
        sub_22C9087AC();
        sub_22C90882C();

        v194 = sub_22C7395D4();
        v195(v194);
        sub_22C7395FC();
        sub_22C37493C();
        sub_22C906E7C();
        type metadata accessor for StepResolution();
        sub_22C376858();
        swift_storeEnumTagMultiPayload();
LABEL_13:
        v216 = sub_22C386D70();
        sub_22C733CF0(v216);
      }

      else
      {
        sub_22C36A748();
        v227 = v394;
        sub_22C36C640(v228, v229, v230, v394);
        (*(v393 + 16))(v395, v397, v227);
        sub_22C7395FC();
        sub_22C90737C();
        type metadata accessor for StepResolution();
        sub_22C376858();
        swift_storeEnumTagMultiPayload();
        v231 = sub_22C386D70();
        sub_22C733CF0(v231);
        v232 = *(v159 + 8);
        v233 = sub_22C36CC9C();
        v234(v233);
      }

      goto LABEL_41;
    default:
      v164 = v389;
      sub_22C7340B8(v22 + v401, v389);
      v165 = a10;
      v166 = a10[11];
      v167 = sub_22C36CC9C();
      if (v168(v167) != *MEMORY[0x277D1CBB8])
      {
        (*(v391 + 8))(v164, v392);
        goto LABEL_22;
      }

      v169 = v165[12];
      v170 = sub_22C36CC9C();
      v171(v170);
      sub_22C3701F8(&a9);
      v172 = v379;
      v173(v390, v22, v379);
      a10 = v22;
      v175 = v391;
      v174 = v392;
      v176 = v377;
      (*(v391 + 32))(v377, v164, v392);
      v177 = v398;
      sub_22C738B88(v150);
      if (v177)
      {
        (*(v175 + 8))(v176, v174);
        (*(v153 + 1))(v390, v172);
      }

      else
      {
        sub_22C90283C();
        sub_22C37A078(&v398);
        sub_22C90699C();
        v313 = v366;
        (*(v366 + 104))(v365, *MEMORY[0x277D1E910], v367);
        sub_22C372FA4();
        sub_22C627194();
        v314 = *(v313 + 8);
        v315 = sub_22C37BD80();
        v316(v315);
        sub_22C36FB04(&v386);
        v317(v375, v364);
        (*(v391 + 8))(v176, v392);
        (*(v153 + 1))(v390, v379);
        v318 = sub_22C375FB0();
        v319(v318, v150, v374);
        type metadata accessor for StepResolution();
        sub_22C376858();
        swift_storeEnumTagMultiPayload();
      }

      v255 = a10 + v401;
LABEL_40:
      sub_22C733CF0(v255);
      goto LABEL_41;
  }
}

uint64_t sub_22C73396C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_22C906BBC();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C37FDDC();
  v11 = sub_22C906BEC();
  v12 = sub_22C369824(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v19 = (v18 - v17);
  (*(v14 + 16))(v18 - v17, a1, v11);
  v20 = *(v14 + 88);
  v21 = sub_22C37170C();
  v23 = v22(v21);
  if (v23 == *MEMORY[0x277D1DD98])
  {
    goto LABEL_2;
  }

  if (v23 == *MEMORY[0x277D1DDB0])
  {
    v30 = sub_22C379AA8();
    v31(v30);
    v32 = *(v14 + 96);
    v33 = sub_22C37170C();
    v34(v33);
    v35 = sub_22C9093BC();
    sub_22C36985C(v35);
    v37 = *(v36 + 32);
    v38 = sub_22C36BA00();
    v39(v38);
    type metadata accessor for UserPromptResolver.Resolution(0);
    sub_22C376858();
    return swift_storeEnumTagMultiPayload();
  }

  if (v23 == *MEMORY[0x277D1DDA0])
  {
LABEL_2:
    v24 = sub_22C379AA8();
    v25(v24);
    v26 = *(v14 + 96);
    v27 = sub_22C37170C();
    v28(v27);
    v29 = *v19;
    type metadata accessor for UserPromptResolver.Resolution(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v23 == *MEMORY[0x277D1DDB8])
  {
    v40 = sub_22C379AA8();
    v41(v40);
    v42 = *(v14 + 96);
    v43 = sub_22C37170C();
    v44(v43);
    *a2 = *v19;
    type metadata accessor for UserPromptResolver.Resolution(0);
    sub_22C376858();
    return swift_storeEnumTagMultiPayload();
  }

  if (v23 == *MEMORY[0x277D1DDA8])
  {
    v45 = *(v14 + 96);
    v46 = sub_22C37170C();
    v47(v46);
    (*(v8 + 32))(v2, v19, v5);
    sub_22C906BAC();
    (*(v14 + 8))(a1, v11);
    (*(v8 + 8))(v2, v5);
    type metadata accessor for UserPromptResolver.Resolution(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v23 == *MEMORY[0x277D1DD90])
  {
    v49 = *(v14 + 8);
    v49(a1, v11);
    type metadata accessor for UserPromptResolver.Resolution(0);
    sub_22C376858();
    swift_storeEnumTagMultiPayload();
    v50 = sub_22C37170C();
    return (v49)(v50);
  }

  else
  {
    result = sub_22C90B4EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22C733CF0(uint64_t a1)
{
  v2 = type metadata accessor for UserPromptResolver.Resolution(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C733D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BEED0, &unk_22C922F60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C733DBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22C9063DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C9089DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v2, v9);
  if ((*(v10 + 88))(v13, v9) == *MEMORY[0x277D1E820])
  {
    (*(v10 + 96))(v13, v9);
    v14 = sub_22C9025AC();
    return (*(*(v14 - 8) + 32))(a1, v13, v14);
  }

  else
  {
    sub_22C903F8C();
    v16 = sub_22C9063CC();
    v17 = sub_22C90AAEC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22C366000, v16, v17, "payload cannot be coerced to SystemResponse", v18, 2u);
      MEMORY[0x2318B9880](v18, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    type metadata accessor for InterpreterError();
    sub_22C739510(&qword_27D9BAA40, type metadata accessor for InterpreterError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_22C7340B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserPromptResolver.Resolution(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22C73411C()
{
  sub_22C370030();
  v2 = v1;
  v26 = v3;
  v4 = sub_22C90880C();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C387210();
  v10 = sub_22C3A5908(&qword_27D9BF568, &qword_22C9228C8);
  v11 = sub_22C369914(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369ABC();
  sub_22C3804A4();
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  sub_22C90878C();
  sub_22C9087DC();
  v17 = *(v7 + 8);
  v18 = sub_22C36DA14();
  v19(v18);
  v27 = v2;
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  v20 = type metadata accessor for StepResolution();
  sub_22C73940C(&qword_27D9BC090);
  sub_22C907D9C();

  sub_22C379DF8(v16, v0, &qword_27D9BF568, &qword_22C9228C8);
  sub_22C36D0A8(v0, 1, v20);
  if (v21)
  {
    v22 = sub_22C372280();
    sub_22C36DD28(v22, v23, &qword_22C9228C8);
    sub_22C90735C();
    sub_22C3A5F00();
    sub_22C36FBE4();
    sub_22C377534(v24, v30, v29, v28);
    sub_22C36DD28(v16, &qword_27D9BF568, &qword_22C9228C8);
  }

  else
  {
    sub_22C36DD28(v16, &qword_27D9BF568, &qword_22C9228C8);
    sub_22C739458(v0, v26);
  }

  sub_22C36FB20();
}

void sub_22C7343BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v23;
  a20 = v24;
  v270 = v25;
  v271 = v22;
  v278 = v26;
  v27 = sub_22C901FAC();
  v28 = sub_22C36A7A4(v27, &a15);
  v262 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C3698A8();
  sub_22C3698F8(v32);
  v33 = sub_22C9063DC();
  v34 = sub_22C369824(v33);
  v268 = v35;
  v269 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v38);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v39);
  sub_22C36BA64();
  sub_22C36D234(v40);
  v41 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  sub_22C369914(v41);
  v43 = *(v42 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v44);
  sub_22C36D5B4();
  sub_22C3698F8(v45);
  v46 = sub_22C90952C();
  v47 = sub_22C369914(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22C3698A8();
  sub_22C3698F8(v50);
  v51 = sub_22C9093BC();
  v52 = sub_22C36A7A4(v51, &a17);
  v259 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v56);
  sub_22C36BA64();
  sub_22C36D234(v57);
  v58 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v59 = sub_22C369914(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v62);
  sub_22C36BA64();
  sub_22C3698F8(v63);
  v64 = sub_22C90919C();
  v65 = sub_22C36A7A4(v64, &a9);
  v258 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v69);
  sub_22C36BA64();
  sub_22C3698F8(v70);
  v71 = sub_22C90682C();
  v72 = sub_22C369824(v71);
  v275 = v73;
  v276 = v72;
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v72);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v76);
  sub_22C36BA64();
  v272 = v77;
  sub_22C36BA0C();
  v78 = sub_22C9067CC();
  v79 = sub_22C369824(v78);
  v273 = v80;
  v274 = v79;
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v79);
  sub_22C3698A8();
  v267 = v83;
  sub_22C36BA0C();
  v84 = sub_22C90880C();
  v85 = sub_22C369824(v84);
  v87 = v86;
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v85);
  sub_22C369838();
  v92 = v91 - v90;
  v93 = sub_22C3A5908(&qword_27D9BF740, &unk_22C923A40);
  v94 = sub_22C369914(v93);
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v94);
  sub_22C369ABC();
  v99 = v97 - v98;
  MEMORY[0x28223BE20](v100);
  v102 = &v245 - v101;
  v103 = sub_22C908CEC();
  v104 = sub_22C369824(v103);
  v106 = v105;
  v108 = *(v107 + 64);
  MEMORY[0x28223BE20](v104);
  sub_22C369838();
  sub_22C387210();
  v255 = v21;
  sub_22C90878C();
  sub_22C6A3CBC();
  v109 = *(v87 + 8);
  v254 = v84;
  v253 = (v87 + 8);
  v109(v92, v84);
  sub_22C379DF8(v102, v99, &qword_27D9BF740, &unk_22C923A40);
  v277 = v103;
  sub_22C36D0A8(v99, 1, v103);
  if (v110)
  {
    sub_22C37BF28(v99);
    sub_22C7395C8();
    sub_22C7395F0();
    sub_22C90735C();
    sub_22C3A5F00();
    v111 = sub_22C36FBE4();
    sub_22C372BFC(v111, v112);
    v113 = sub_22C36FCCC();
    sub_22C36DD28(v113, v114, &unk_22C923A40);
    goto LABEL_21;
  }

  v245 = v109;
  sub_22C36DD28(v102, &qword_27D9BF740, &unk_22C923A40);
  v115 = v106[4];
  v116 = sub_22C36DA14();
  v115(v116);
  v117 = v272;
  sub_22C908CCC();
  v119 = v275;
  v118 = v276;
  v120 = *(v275 + 88);
  v121 = sub_22C36A10C();
  v123 = v122(v121);
  v110 = v123 == *MEMORY[0x277D1DBF0];
  v246 = v20;
  if (!v110)
  {
    v264 = v115;
    v133 = *(v119 + 8);
    v134 = sub_22C36A10C();
    v135(v134);
    sub_22C37A078(&a18);
    sub_22C903F8C();
    v136 = v262;
    v137 = v262[2];
    v138 = sub_22C37AD24();
    v139 = v263;
    v140(v138, v278, v263);
    v141 = sub_22C9063CC();
    v142 = sub_22C90AADC();
    if (sub_22C36FBB4(v142))
    {
      v144 = swift_slowAlloc();
      v278 = v106 + 4;
      v145 = v144;
      v146 = v92;
      v147 = swift_slowAlloc();
      v279[0] = v147;
      *v145 = 136315138;
      sub_22C37F9C0();
      sub_22C739510(v148, v149);
      v150 = sub_22C90B47C();
      v152 = v151;
      (v136[1])(v146, v139);
      v153 = sub_22C36F9F4(v150, v152, v279);

      *(v145 + 4) = v153;
      _os_log_impl(&dword_22C366000, v141, v142, "Ignoring location approval for non-Search Tool call: %s", v145, 0xCu);
      sub_22C36FF94(v147);
      sub_22C3699EC();
      sub_22C3699EC();

      sub_22C3838A0();
      v155 = v266;
    }

    else
    {

      (v136[1])(v92, v139);
      sub_22C3838A0();
      v155 = v118;
    }

    v154(v155, v269);
    v220 = sub_22C388394();
    v264(v220);
    type metadata accessor for StepResolution();
    sub_22C376858();
    swift_storeEnumTagMultiPayload();
    goto LABEL_21;
  }

  v124 = v123;
  v278 = v106;
  v125 = *(v119 + 96);
  v126 = sub_22C36A10C();
  v127(v126);
  v128 = v267;
  v129 = (*(v273 + 32))(v267, v117, v274);
  v130 = MEMORY[0x2318B3C90](v129);
  sub_22C36D2E8(&a12);
  sub_22C6053C8(v130, v131);

  v132 = v265;
  sub_22C36D0A8(v106, 1, v265);
  if (v110)
  {
    sub_22C36DD28(v106, &qword_27D9BB908, &qword_22C910960);
LABEL_17:
    v223 = v115;
    sub_22C37A078(&a16);
    sub_22C903F8C();
    v224 = sub_22C9063CC();
    v225 = sub_22C90AADC();
    if (sub_22C36FBB4(v225))
    {
      v226 = swift_slowAlloc();
      v227 = swift_slowAlloc();
      a10 = v227;
      *v226 = 136315138;
      v228 = swift_beginAccess();
      MEMORY[0x2318B3C90](v228);
      swift_endAccess();
      v229 = sub_22C909EDC();
      v231 = v230;

      v232 = v229;
      v128 = v267;
      v233 = sub_22C36F9F4(v232, v231, &a10);

      *(v226 + 4) = v233;
      _os_log_impl(&dword_22C366000, v224, v225, "Expected SearchContext in previous search tool call: %s", v226, 0xCu);
      sub_22C36FF94(v227);
      sub_22C3699EC();
      sub_22C3699EC();

      sub_22C3838A0();
      v235 = v264;
    }

    else
    {

      sub_22C3838A0();
      v235 = v130;
    }

    v234(v235, v269);
    v236 = sub_22C388394();
    v223(v236);
    type metadata accessor for StepResolution();
    sub_22C376858();
    swift_storeEnumTagMultiPayload();
    (*(v273 + 8))(v128, v274);
    goto LABEL_21;
  }

  sub_22C36D818(&a11);
  v157 = *(v156 + 88);
  v158 = sub_22C3863FC();
  v160 = v159(v158);
  if (v160 != *MEMORY[0x277D72A38])
  {
    v221 = sub_22C3863FC();
    v222(v221);
    goto LABEL_17;
  }

  LODWORD(v266) = v160;
  LODWORD(v272) = v124;
  v161 = sub_22C3863FC();
  v162(v161);
  v163 = *v106;
  v164 = swift_projectBox();
  v165 = *(v258 + 16);
  v166 = v256;
  v263 = v258 + 16;
  v262 = v165;
  (v165)(v256, v164, v257);

  sub_22C90878C();
  v167 = sub_22C9087DC();
  v245(v92, v254);
  v279[0] = v167;
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C38895C(&qword_27D9BA9F8);
  v168 = sub_22C907E5C();

  if (v168)
  {
    v169 = v166;
    sub_22C90914C();
    sub_22C369A48();
    v170 = sub_22C90931C();
    v278 = v106 + 4;
    v171 = v132;
    v172 = v170;
    v173 = swift_allocBox();
    v175 = v174;
    [v168 coordinate];
    *v175 = v176;
    v260 = *MEMORY[0x277D729A8];
    sub_22C36BBA8(v172);
    v255 = *(v177 + 104);
    v264 = v115;
    v268 = v177 + 104;
    v255(v175);
    v178 = v248;
    *v248 = v173;
    LODWORD(v254) = *MEMORY[0x277D72A58];
    v179 = v259;
    v180 = v259 + 104;
    v253 = *(v259 + 104);
    v253(v178);
    v269 = v180;
    v259 = *(v179 + 32);
    v181 = v250;
    (v259)(v250, v178, v171);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v279[0] = v169;
    sub_22C62EC0C(v181, 0x656475746974616CLL, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v183, v184, v185, v186, v245, v246, v247, v248, v249, v250);
    v187 = v279[0];
    v188 = swift_allocBox();
    v189 = v168;
    v261 = v168;
    v190 = v256;
    v192 = v191;
    [v189 coordinate];
    *v192 = v193;
    (v255)(v192, v260, v172);
    *v178 = v188;
    v194 = v265;
    v195 = v253;
    (v253)(v178, v254, v265);
    (v259)(v181, v178, v194);
    v196 = swift_isUniquelyReferenced_nonNull_native();
    v279[0] = v187;
    sub_22C62EC0C(v181, 0x64757469676E6F6CLL, 0xE900000000000065, v196, v197, v198, v199, v200, v245, v246, v247, v248, v249, v250);
    sub_22C9090AC();
    sub_22C90908C();
    sub_22C90915C();
    sub_22C37A078(v279);
    sub_22C50B648();
    sub_22C90917C();
    v201 = v258;
    v202 = *(v258 + 8);
    v203 = v257;
    v202(v190, v257);
    v204 = *(v201 + 32);
    v205 = sub_22C36BA00();
    v206(v205);
    v207 = swift_allocBox();
    (v262)(v208, v190, v203);
    v209 = v252;
    *v252 = v207;
    (v195)(v209, v266, v194);
    sub_22C36C640(v209, 0, 1, v194);
    v210 = v267;
    v211 = sub_22C9067AC();
    sub_22C603E9C(v209, 0x747865746E6F63, 0xE700000000000000);
    v211(v279, 0);
    v213 = v273;
    v212 = v274;
    v214 = *(v273 + 16);
    v215 = v251;
    v216 = sub_22C372FA4();
    v217(v216);
    (*(v275 + 104))(v215, v272, v276);
    sub_22C908CDC();

    v218 = sub_22C36DA14();
    (v202)(v218);
    v219 = sub_22C36BA00();
    v264(v219);
    type metadata accessor for StepResolution();
    sub_22C376858();
    swift_storeEnumTagMultiPayload();
    (*(v213 + 8))(v210, v212);
  }

  else
  {
    sub_22C36D2E8(&v277);
    sub_22C903F8C();
    v237 = sub_22C9063CC();
    v238 = sub_22C90AADC();
    if (sub_22C36FBB4(v238))
    {
      *swift_slowAlloc() = 0;
      sub_22C36AD70(&dword_22C366000, v239, v240, "Search Tool indicated that it requires location for this query but location is still missing.");
      sub_22C3699EC();
    }

    (*(v268 + 8))(v132, v269);
    type metadata accessor for InterpreterError();
    sub_22C37BBF0();
    sub_22C739510(v241, v242);
    sub_22C376858();
    sub_22C36FBE4();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22C36FB04(&a10);
    v243 = sub_22C37BD80();
    v244(v243);
    (v278[1])(v246, v277);
    (*(v273 + 8))(v267, v274);
  }

LABEL_21:
  sub_22C37B304();
  sub_22C36FB20();
}

void sub_22C7354EC()
{
  sub_22C370030();
  v36 = sub_22C908BBC();
  v3 = sub_22C369824(v36);
  v35 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v9 = v8 - v7;
  v34 = sub_22C9093BC();
  v10 = sub_22C369824(v34);
  v33 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  sub_22C37A2CC();
  v14 = sub_22C9069BC();
  v15 = sub_22C369824(v14);
  v31 = v16;
  v32 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v21 = v20 - v19;
  v22 = sub_22C9078FC();
  v23 = sub_22C369824(v22);
  v30 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  sub_22C37FDDC();
  sub_22C738B88(v1);
  if (!v0)
  {
    sub_22C90283C();
    MEMORY[0x2318AFE50]();
    sub_22C90699C();
    sub_22C90299C();
    (*(v35 + 104))(v9, *MEMORY[0x277D1E910], v36);
    sub_22C627194();
    (*(v35 + 8))(v9, v36);
    (*(v33 + 8))(v2, v34);
    (*(v31 + 8))(v21, v32);
    v27 = *(v30 + 32);
    v28 = sub_22C372FA4();
    v29(v28);
    type metadata accessor for StepResolution();
    sub_22C37FDE8();
    swift_storeEnumTagMultiPayload();
  }

  sub_22C37B304();
  sub_22C36FB20();
}

void sub_22C7357D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v23;
  a20 = v24;
  a10 = v21;
  v26 = v25;
  v230[1] = v27;
  v231 = v28;
  v29 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v29);
  v31 = *(v30 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v32);
  sub_22C36D5B4();
  sub_22C36D234(v33);
  v34 = sub_22C3A5908(&qword_27D9BF4D8, &unk_22C923A50);
  sub_22C369914(v34);
  v36 = *(v35 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v37);
  sub_22C36D5B4();
  sub_22C3698F8(v38);
  v39 = sub_22C90941C();
  v40 = sub_22C36A7A4(v39, &v246);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22C3698A8();
  sub_22C3698F8(v43);
  v44 = sub_22C9026BC();
  v45 = sub_22C36A7A4(v44, &a12);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  sub_22C3698A8();
  sub_22C3698F8(v48);
  v49 = sub_22C907DEC();
  v50 = sub_22C369914(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22C3698A8();
  sub_22C36D234(v53);
  v54 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v54);
  v56 = *(v55 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v57);
  sub_22C36D5B4();
  v235 = v58;
  sub_22C36BA0C();
  v59 = sub_22C908BBC();
  v60 = sub_22C36A7A4(v59, v242);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22C3698A8();
  sub_22C3698F8(v63);
  v64 = sub_22C9069BC();
  v65 = sub_22C36A7A4(v64, &v240);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  sub_22C3698A8();
  sub_22C3698F8(v68);
  v69 = sub_22C90931C();
  v70 = sub_22C36A7A4(v69, &v243);
  v234 = v71;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v70);
  sub_22C3698A8();
  sub_22C3698F8(v74);
  v75 = sub_22C9093BC();
  v76 = sub_22C36A7A4(v75, &a16);
  v230[0] = v77;
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v76);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v80);
  sub_22C36BA64();
  sub_22C36D234(v81);
  v82 = sub_22C3A5908(&qword_27D9BF308, &qword_22C922570);
  sub_22C369914(v82);
  v84 = *(v83 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v85);
  sub_22C36D5B4();
  sub_22C3698F8(v86);
  v87 = sub_22C9074CC();
  v88 = sub_22C36A7A4(v87, &v234);
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v88);
  sub_22C3698A8();
  sub_22C36D234(v91);
  v92 = sub_22C3A5908(&qword_27D9BF430, &unk_22C9226F0);
  sub_22C369914(v92);
  v94 = *(v93 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v95);
  sub_22C36D5B4();
  sub_22C36D234(v96);
  v97 = sub_22C3A5908(&qword_27D9BF9F0, &unk_22C92DAD0);
  v98 = sub_22C369914(v97);
  v100 = *(v99 + 64);
  MEMORY[0x28223BE20](v98);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v101);
  sub_22C36BA64();
  sub_22C3698F8(v102);
  v103 = sub_22C9086FC();
  v104 = sub_22C36A7A4(v103, &v244);
  v224 = v105;
  v107 = *(v106 + 64);
  MEMORY[0x28223BE20](v104);
  sub_22C3698A8();
  sub_22C3698F8(v108);
  v238 = sub_22C901FAC();
  v109 = sub_22C369824(v238);
  v236 = v110;
  v112 = *(v111 + 64);
  MEMORY[0x28223BE20](v109);
  sub_22C369ABC();
  sub_22C3804A4();
  MEMORY[0x28223BE20](v113);
  sub_22C36BA64();
  v237 = v114;
  sub_22C36BA0C();
  v233 = sub_22C90880C();
  v115 = sub_22C369824(v233);
  v117 = v116;
  v119 = *(v118 + 64);
  MEMORY[0x28223BE20](v115);
  sub_22C369838();
  v122 = v121 - v120;
  v123 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v123);
  v125 = *(v124 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v126);
  sub_22C36D5B4();
  v232 = v127;
  sub_22C36BA0C();
  v128 = sub_22C9078FC();
  v129 = sub_22C369824(v128);
  v131 = v130;
  v133 = *(v132 + 64);
  MEMORY[0x28223BE20](v129);
  sub_22C369838();
  v136 = v135 - v134;
  v137 = a10;
  sub_22C738B88(v135 - v134);
  if (v137)
  {
    goto LABEL_18;
  }

  v222 = v131;
  v223 = v128;
  a10 = v20;
  sub_22C90878C();
  v138 = sub_22C9087DC();
  v220 = *(v117 + 8);
  v220(v122, v233);
  v239 = v138;
  v139 = v237;
  v221 = v136;
  sub_22C9068FC();
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C38895C(&qword_27D9BA9F8);
  sub_22C907F1C();
  v140 = v236 + 8;
  v141 = v238;
  v219 = *(v236 + 8);
  v219(v139, v238);

  v142 = sub_22C908A0C();
  sub_22C36D0A8(v232, 1, v142);
  if (v143)
  {
    sub_22C36DD28(v232, &qword_27D9BA808, &qword_22C90C6E0);
    v144 = 0;
    v146 = 0;
  }

  else
  {
    v144 = sub_22C90897C();
    v146 = v145;
    sub_22C36BBA8(v142);
    (*(v147 + 8))(v232, v142);
  }

  v148 = sub_22C9069CC();
  if (!v146)
  {

    v151 = v234;
LABEL_11:
    sub_22C36D2E8(&a17);
    sub_22C90299C();
    v162 = v230[0];
    v163 = (*(v230[0] + 88))(v142);
    if (v163 == *MEMORY[0x277D72A58])
    {
      v164 = v163;
      (*(v230[0] + 96))(v142);
      v165 = *v142;
      swift_projectBox();
      v166 = *(v151 + 16);
      sub_22C37AD24();
      sub_22C557F60();
      v167();
      v168 = (*(v151 + 88))(v140, v122);
      if (v168 == *MEMORY[0x277D72988])
      {
        v169 = v168;

        sub_22C90283C();
        MEMORY[0x2318AFE50]();
        sub_22C90699C();
        v170 = swift_allocBox();
        *v171 = 0;
        (*(v151 + 104))(v171, v169, v122);
        *v229 = v170;
        (*(v162 + 104))(v229, v164);
        v172 = *MEMORY[0x277D1E910];
        sub_22C37443C(&v241);
        v174 = *(v173 + 104);
        v175 = sub_22C37AD24();
        v176(v175);
        sub_22C627194();
        (*(v122 + 8))(v169);
        v177 = *(v162 + 8);
        v178 = sub_22C36CA88();
        v179(v178);
        sub_22C36FB04(&v239);
        v180();
        (*(v222 + 32))(v231, v221, v223);
        goto LABEL_17;
      }

      (*(v151 + 8))(v140, v122);
    }

    else
    {
      (*(v230[0] + 8))(v142);
    }

    sub_22C90069C();
    sub_22C36A748();
    sub_22C36C640(v181, v182, v183, v184);
    sub_22C90283C();
    sub_22C90952C();
    v185 = swift_allocBox();
    sub_22C37443C(&a18);
    sub_22C90299C();
    sub_22C90935C();
    v186 = *(v230[0] + 8);
    v187 = sub_22C37493C();
    v188(v187);
    *v228 = v185;
    v189 = *MEMORY[0x277D72AD0];
    sub_22C7395BC(&v245);
    v190();
    sub_22C90285C();
    sub_22C36A748();
    sub_22C36C640(v191, v192, v193, v194);
    sub_22C36D2E8(&a11);
    sub_22C36DA14();
    sub_22C90282C();
    v195 = *MEMORY[0x277D1CBB8];
    sub_22C7395BC(&a9);
    v196(v185);
    sub_22C9026AC();
    sub_22C36A748();
    sub_22C36C640(v197, v198, v199, v200);
    sub_22C36D818(&a13);
    sub_22C907DCC();
    sub_22C9087AC();
    sub_22C90882C();

    (*(v236 + 16))(v22, v26, v238);
    sub_22C906E4C();
    sub_22C36FB04(v230);
    v201(v221, v223);
    goto LABEL_17;
  }

  v239 = v144;
  v240 = v146;
  v242[1] = v148;
  v242[2] = v149;
  sub_22C7394BC();
  v150 = sub_22C90A0BC();

  v151 = v234;
  if ((v150 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_22C90878C();
  v152 = sub_22C9087DC();
  v153 = sub_22C36CA88();
  (v220)(v153);
  v239 = v152;
  sub_22C9068FC();
  sub_22C907E7C();
  v219(v139, v141);

  sub_22C379DF8(v226, v225, &qword_27D9BF9F0, &unk_22C92DAD0);
  sub_22C36D0A8(v225, 1, v227);
  if (!v143)
  {
    sub_22C36DD28(v226, &qword_27D9BF9F0, &unk_22C92DAD0);
    a10 = *(v224 + 32);
    v202 = sub_22C36CA88();
    v203(v202);
    sub_22C90283C();
    v238 = v204;
    sub_22C37443C(&v235);
    sub_22C90299C();
    v205 = *MEMORY[0x277D1E040];
    sub_22C7395BC(&v232);
    v206(v223);
    v207 = *MEMORY[0x277D1CAF8];
    v208 = sub_22C90260C();
    sub_22C36985C(v208);
    v210 = *(v209 + 104);
    v211 = sub_22C37AD24();
    v212(v211, v207, v208);
    sub_22C36C640(v140, 0, 1, v208);
    sub_22C374490(&v236);
    sub_22C90869C();
    v213 = sub_22C9086BC();
    sub_22C36C640(v225, 0, 1, v213);
    v214 = sub_22C9086CC();
    v215 = sub_22C36FCCC();
    sub_22C603BA0(v215, v216, v238);
    v214(&v239, 0);
    sub_22C36FB04(v230);
    v217(v221, v223);
    v218 = sub_22C372FA4();
    a10(v218);
LABEL_17:
    type metadata accessor for StepResolution();
    sub_22C37FDE8();
    swift_storeEnumTagMultiPayload();
    goto LABEL_18;
  }

  v154 = sub_22C36FCCC();
  sub_22C36DD28(v154, v155, &unk_22C92DAD0);
  sub_22C7395C8();
  sub_22C7395F0();
  sub_22C90735C();
  sub_22C3A5F00();
  v156 = sub_22C36FBE4();
  sub_22C372BFC(v156, v157);
  v158 = sub_22C372280();
  sub_22C36DD28(v158, v159, &unk_22C92DAD0);
  sub_22C36FB04(v230);
  v160 = sub_22C37BD80();
  v161(v160);
LABEL_18:
  sub_22C36FB20();
}

void sub_22C736848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v23;
  a20 = v24;
  v146 = v25;
  v147 = v21;
  v141 = v20;
  v138 = v26;
  v145 = v27;
  sub_22C369A48();
  v28 = sub_22C901FAC();
  v29 = sub_22C369824(v28);
  v143 = v30;
  v144 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22C3698E4();
  v142 = v33;
  sub_22C369930();
  v35 = MEMORY[0x28223BE20](v34);
  sub_22C3891A0(v35, v36, v37, v38, v39, v40, v41, v42, v132[0]);
  v43 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v43);
  v45 = *(v44 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v46);
  sub_22C36D5B4();
  v140 = v47;
  v48 = sub_22C3A5908(&qword_27D9BF4D8, &unk_22C923A50);
  sub_22C369914(v48);
  v50 = *(v49 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v51);
  sub_22C36D5B4();
  v137 = v52;
  sub_22C36BA0C();
  v53 = sub_22C90941C();
  v54 = sub_22C36A7A4(v53, &a18);
  v132[2] = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  sub_22C369838();
  v60 = (v59 - v58);
  v135 = sub_22C9026BC();
  v61 = sub_22C369824(v135);
  v133 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  sub_22C3698A8();
  v134 = v65;
  sub_22C36BA0C();
  v66 = sub_22C907DEC();
  v67 = sub_22C369914(v66);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  sub_22C3698A8();
  v136 = v70;
  v71 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  sub_22C369914(v71);
  v73 = *(v72 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v74);
  sub_22C36D5B4();
  sub_22C36D234(v75);
  v76 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v76);
  v78 = *(v77 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v79);
  sub_22C36D5B4();
  v80 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v80);
  v82 = *(v81 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v83);
  v85 = v132 - v84;
  v86 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v87 = sub_22C369914(v86);
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v87);
  sub_22C369ABC();
  v92 = v90 - v91;
  MEMORY[0x28223BE20](v93);
  sub_22C387B64();
  v94 = sub_22C90952C();
  v95 = sub_22C369824(v94);
  v97 = v96;
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v95);
  sub_22C369838();
  v102 = v101 - v100;
  v139 = v20;
  v103 = sub_22C902A3C();
  sub_22C58B008(v103, v85);

  v104 = sub_22C9093BC();
  sub_22C36D0A8(v85, 1, v104);
  if (v105)
  {
    sub_22C36DD28(v85, &qword_27D9BB908, &qword_22C910960);
    v107 = 1;
  }

  else
  {
    sub_22C90935C();
    sub_22C36BBA8(v104);
    (*(v106 + 8))(v85, v104);
    v107 = 0;
  }

  sub_22C36C640(v22, v107, 1, v94);
  sub_22C379DF8(v22, v92, &qword_27D9BB0C0, &qword_22C90D960);
  sub_22C36D0A8(v92, 1, v94);
  if (v105)
  {
    sub_22C37BF28(v92);
    sub_22C7395C8();
    sub_22C90735C();
    sub_22C3A5F00();
    v108 = sub_22C36FBE4();
    sub_22C372BFC(v108, v109);
    v110 = sub_22C379ED8();
    sub_22C36DD28(v110, v111, &qword_22C90D960);
  }

  else
  {
    sub_22C36DD28(v22, &qword_27D9BB0C0, &qword_22C90D960);
    (*(v97 + 32))(v102, v92, v94);
    sub_22C90069C();
    sub_22C36A748();
    sub_22C36C640(v112, v113, v114, v115);
    sub_22C379DF8(v138, v132[1], &qword_27D9BF330, &unk_22C923250);
    sub_22C902A0C();
    v116 = swift_allocBox();
    (*(v97 + 16))(v117, v102, v94);
    *v60 = v116;
    v118 = *MEMORY[0x277D72AD0];
    sub_22C7395BC(&a17);
    v119(v60);
    sub_22C90285C();
    sub_22C36A748();
    sub_22C36C640(v120, v121, v122, v123);
    v124 = v134;
    sub_22C90282C();
    (*(v133 + 104))(v124, *MEMORY[0x277D1CBB8], v135);
    sub_22C9026AC();
    sub_22C36A748();
    sub_22C36C640(v125, v126, v127, v128);
    sub_22C36A10C();
    sub_22C907DCC();
    sub_22C9087AC();
    sub_22C90882C();

    (*(v143 + 16))(v142, v145, v144);
    sub_22C906E7C();
    v129 = *(v97 + 8);
    v130 = sub_22C50B648();
    v131(v130);
    type metadata accessor for StepResolution();
    sub_22C37FDE8();
    swift_storeEnumTagMultiPayload();
  }

  sub_22C37B304();
  sub_22C36FB20();
}

void sub_22C736F58()
{
  sub_22C370030();
  v51 = v1;
  v55 = v2;
  v54 = sub_22C901FAC();
  v3 = sub_22C369824(v54);
  v53 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C3698E4();
  v52 = v7;
  sub_22C369930();
  MEMORY[0x28223BE20](v8);
  sub_22C36BA64();
  v9 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v9);
  v11 = *(v10 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  sub_22C37A2CC();
  v50 = sub_22C901FBC();
  v13 = sub_22C369824(v50);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v20 = v19 - v18;
  v21 = sub_22C9026BC();
  v22 = sub_22C369824(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C369838();
  v29 = v28 - v27;
  v30 = sub_22C907DEC();
  v31 = sub_22C369914(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22C369838();
  sub_22C387210();
  v34 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  sub_22C369914(v34);
  v36 = *(v35 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v37);
  sub_22C37FDDC();
  v38 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v38);
  v40 = *(v39 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v41);
  sub_22C90069C();
  sub_22C36A748();
  sub_22C36C640(v42, v43, v44, v45);
  sub_22C379DF8(v51, v0, &qword_27D9BF330, &unk_22C923250);
  (*(v15 + 104))(v20, *MEMORY[0x277D1C418], v50);
  sub_22C901FFC();
  (*(v24 + 104))(v29, *MEMORY[0x277D1CBE8], v21);
  sub_22C9026AC();
  sub_22C36A748();
  sub_22C36C640(v46, v47, v48, v49);
  sub_22C907DCC();
  sub_22C9087AC();
  sub_22C90882C();

  (*(v53 + 16))(v52, v55, v54);
  sub_22C906E7C();
  type metadata accessor for StepResolution();
  sub_22C37FDE8();
  swift_storeEnumTagMultiPayload();
  sub_22C36FB20();
}

void sub_22C7372FC()
{
  sub_22C370030();
  v56 = v3;
  v57 = v1;
  v53 = v0;
  v54 = v4;
  v61 = v5;
  sub_22C369A48();
  v52 = sub_22C901FAC();
  v6 = sub_22C369824(v52);
  v55 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  v51 = v10;
  sub_22C369930();
  MEMORY[0x28223BE20](v11);
  v50 = &v47 - v12;
  sub_22C369930();
  MEMORY[0x28223BE20](v13);
  sub_22C36BA64();
  v15 = v14;
  v16 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v17 = sub_22C369914(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  sub_22C3813A4();
  v24 = sub_22C908EAC();
  v25 = sub_22C369824(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22C3698E4();
  v31 = v30;
  sub_22C369930();
  MEMORY[0x28223BE20](v32);
  sub_22C36BA64();
  v34 = v33;
  v35 = MEMORY[0x2318AFCE0]();
  sub_22C731910(v61, v35, MEMORY[0x277D72238], v2);

  v36 = sub_22C50B648();
  sub_22C379DF8(v36, v37, &qword_27D9BC1E8, &qword_22C9123B0);
  sub_22C36D0A8(v22, 1, v24);
  if (v38)
  {
    v39 = sub_22C36FCCC();
    sub_22C36DD28(v39, v40, &qword_22C9123B0);
    sub_22C7395F0();
    sub_22C90735C();
    sub_22C3A5F00();
    sub_22C36FBE4();
    sub_22C377534(v41, v60, v59, v58);
    sub_22C37BF28(v2);
  }

  else
  {
    sub_22C36DD28(v2, &qword_27D9BC1E8, &qword_22C9123B0);
    v42 = *(v27 + 32);
    v48 = v24;
    v49 = v34;
    v42(v34, v22, v24);
    sub_22C9087AC();
    sub_22C90882C();

    (*(v27 + 16))(v31, v34, v24);
    v43 = v55;
    v44 = *(v55 + 16);
    v45 = sub_22C379ED8();
    v46 = v52;
    v44(v45);
    (v44)(v51, v54, v46);
    sub_22C906C9C();
    (*(v43 + 8))(v15, v46);
    (*(v27 + 8))(v49, v48);
    type metadata accessor for StepResolution();
    sub_22C37FDE8();
    swift_storeEnumTagMultiPayload();
  }

  sub_22C37B304();
  sub_22C36FB20();
}

void sub_22C7376C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v209 = v28;
  v210 = v29;
  v203 = v30;
  v31 = sub_22C908BBC();
  v32 = sub_22C36A7A4(v31, &v221);
  v191 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C3698A8();
  sub_22C3698F8(v36);
  v37 = sub_22C9069BC();
  v38 = sub_22C36A7A4(v37, &v219.n128_i64[1]);
  v188 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22C3698A8();
  sub_22C36D234(v42);
  v43 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v44 = sub_22C369914(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22C3698E4();
  *&v213 = v47;
  sub_22C369930();
  MEMORY[0x28223BE20](v48);
  sub_22C36BA64();
  v214 = v49;
  sub_22C36BA0C();
  v50 = sub_22C9078FC();
  v51 = sub_22C36A7A4(v50, &a18);
  v201 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22C3698A8();
  v215 = v55;
  v56 = sub_22C3A5908(&qword_27D9BF318, &qword_22C9225A0);
  sub_22C369914(v56);
  v58 = *(v57 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v59);
  sub_22C36D5B4();
  sub_22C3698F8(v60);
  v61 = sub_22C901FAC();
  v62 = sub_22C36A7A4(v61, &a12);
  v195 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  sub_22C3698E4();
  v204 = v66;
  sub_22C369930();
  MEMORY[0x28223BE20](v67);
  sub_22C36BA64();
  v211 = v68;
  sub_22C36BA0C();
  v69 = sub_22C9093BC();
  v70 = sub_22C369824(v69);
  v216 = v71;
  v217 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v70);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v74);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v75);
  sub_22C36BA64();
  v205 = v76;
  sub_22C36BA0C();
  v77 = sub_22C9063DC();
  v78 = sub_22C36A7A4(v77, &a15);
  v198 = v79;
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v78);
  sub_22C3698A8();
  sub_22C3698F8(v82);
  v83 = sub_22C90880C();
  v84 = sub_22C369824(v83);
  v86 = v85;
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v84);
  sub_22C369838();
  sub_22C37FDDC();
  v89 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  sub_22C369914(v89);
  v91 = *(v90 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v92);
  v94 = &v187 - v93;
  v95 = sub_22C90654C();
  v96 = sub_22C369824(v95);
  v98 = v97;
  v100 = *(v99 + 64);
  MEMORY[0x28223BE20](v96);
  sub_22C369838();
  sub_22C37A2CC();
  v101 = sub_22C90731C();
  v102 = sub_22C369824(v101);
  v207 = v103;
  v208 = v102;
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](v102);
  sub_22C3698A8();
  v206 = v106;
  v212 = v20;
  sub_22C90878C();
  sub_22C646D68(v27, v107, v108, v109, v110, v111, v112, v113, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198);
  (*(v86 + 8))(v22, v83);
  v114 = sub_22C9070DC();
  sub_22C36D0A8(v94, 1, v114);
  if (v115)
  {
    sub_22C36DD28(v94, &qword_27D9BAA18, &qword_22C911C40);
    goto LABEL_16;
  }

  sub_22C90702C();
  sub_22C36BBA8(v114);
  (*(v116 + 8))(v94, v114);
  v117 = v98[11];
  v118 = sub_22C37A06C();
  v120 = v119(v118);
  if (v120 != *MEMORY[0x277D1DAE0])
  {
    v158 = v98[1];
    v159 = sub_22C37A06C();
    v160(v159);
LABEL_16:
    v161 = v215;
    sub_22C738B88(v215);
    v162 = v214;
    v163 = v213;
    if (!v21)
    {
      sub_22C902A3C();
      sub_22C38577C();
      v164 = v210;
      v165 = sub_22C379ED8();
      sub_22C731910(v165, v166, v167, v168);

      v169 = sub_22C36CA88();
      sub_22C379DF8(v169, v170, v171, v172);
      v173 = v217;
      sub_22C36D0A8(v163, 1, v217);
      if (!v115)
      {
        sub_22C36DD28(v162, &qword_27D9BB908, &qword_22C910960);
        (*(v216 + 32))(v200, v163, v173);
        sub_22C902A0C();
        MEMORY[0x2318AFEF0]();
        sub_22C374490(&v218);
        sub_22C90699C();
        v180 = v189;
        *v189 = v164;
        v181 = v191;
        (*(v191 + 104))(v180, *MEMORY[0x277D1E908], v192);
        v182 = v200;
        sub_22C627194();
        v183 = *(v181 + 8);
        v184 = sub_22C372280();
        v185(v184);
        sub_22C36FB04(&v218.n128_i64[1]);
        v186(v163, v190);
        (*(v216 + 8))(v182, v217);
        (*(v201 + 32))(v203, v161, v202);
        goto LABEL_20;
      }

      v174 = sub_22C36FCCC();
      sub_22C36DD28(v174, v175, &qword_22C910960);
      sub_22C7395C8();
      sub_22C7395F0();
      sub_22C90735C();
      sub_22C3A5F00();
      sub_22C36FBE4();
      sub_22C377534(v176, v220, v219, v218);
      v177 = sub_22C372280();
      sub_22C36DD28(v177, v178, &qword_22C910960);
      sub_22C36FB04(&a17);
      v179(v161, v202);
    }

LABEL_21:
    sub_22C36FB20();
    return;
  }

  v121 = v98[12];
  v122 = sub_22C37A06C();
  v123(v122);
  (*(v207 + 32))(v206, v23, v208);
  sub_22C36D818(&a13);
  sub_22C903F8C();
  v124 = sub_22C9063CC();
  v125 = sub_22C90AAFC();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    *v126 = 0;
    _os_log_impl(&dword_22C366000, v124, v125, "UserPromptResolver: Parameter disambiguation is for a payload expression. Producing a variable step with the selection.", v126, 2u);
    sub_22C3699EC();
  }

  sub_22C36FB04(&a14);
  v127(v27, v199);
  v128 = sub_22C902A3C();
  if ((v210 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (*(v128 + 16) <= v210)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v129 = *(v216 + 16);
  v129(v205, v128 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v210, v217);

  v131 = MEMORY[0x2318B47E0](v130);
  v132 = MEMORY[0x2318AFEF0]();
  if (v133)
  {
    v134 = 0;
  }

  else
  {
    v134 = v132;
  }

  if ((v134 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

  if (v134 < *(v131 + 16))
  {
    v135 = v195;
    v136 = *(v195 + 16);
    v137 = v211;
    v138 = v196;
    v136(v211, v131 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v195 + 72) * v134, v196);

    v136(v204, v137, v138);
    sub_22C3A5908(&qword_27D9BAD08, &unk_22C91D9F0);
    v139 = *(sub_22C906D2C() - 8);
    v140 = *(v139 + 72);
    v215 = (*(v139 + 80) + 32) & ~*(v139 + 80);
    v214 = swift_allocObject();
    v213 = xmmword_22C90F800;
    *(v214 + 16) = xmmword_22C90F800;
    sub_22C3A5908(&qword_27D9BFA00, &qword_22C923A60);
    v141 = (sub_22C3A5908(&qword_27D9BFA08, &qword_22C923A68) - 8);
    v142 = *(*v141 + 72);
    v143 = v129;
    v144 = (*(*v141 + 80) + 32) & ~*(*v141 + 80);
    v145 = swift_allocObject();
    *(v145 + 16) = v213;
    v146 = v145 + v144;
    v147 = v141[14];
    v136(v146, v211, v138);
    v148 = v146 + v147;
    v149 = v205;
    v150 = v217;
    v143(v148, v205, v217);
    sub_22C37F9C0();
    sub_22C739510(v151, v152);
    sub_22C909F0C();
    v153 = sub_22C37A06C();
    (v143)(v153);
    sub_22C901ECC();
    sub_22C36A748();
    sub_22C36C640(v154, v155, v156, v157);
    sub_22C906CFC();
    sub_22C90690C();
    (*(v135 + 8))(v211, v138);
    (*(v216 + 8))(v149, v150);
    (*(v207 + 8))(v206, v208);
LABEL_20:
    type metadata accessor for StepResolution();
    sub_22C37FDE8();
    swift_storeEnumTagMultiPayload();
    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
}

void sub_22C738354()
{
  sub_22C370030();
  v98 = v3;
  v99 = v4;
  sub_22C369A48();
  v5 = sub_22C901FAC();
  v6 = sub_22C369824(v5);
  v96 = v7;
  v97 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C3698E4();
  v95 = v10;
  sub_22C369930();
  v12 = MEMORY[0x28223BE20](v11);
  sub_22C3891A0(v12, v13, v14, v15, v16, v17, v18, v19, v90);
  v20 = sub_22C3A5908(&qword_27D9BF328, &qword_22C9225C0);
  sub_22C369914(v20);
  v22 = *(v21 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v23);
  sub_22C36D5B4();
  v24 = sub_22C3A5908(&qword_27D9BF7B8, &unk_22C923070);
  sub_22C369914(v24);
  v26 = *(v25 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v27);
  sub_22C36D5B4();
  v92 = v28;
  sub_22C36BA0C();
  v94 = sub_22C9026BC();
  v29 = sub_22C369824(v94);
  v91 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22C3698A8();
  v93 = v33;
  sub_22C36BA0C();
  v34 = sub_22C907DEC();
  v35 = sub_22C369914(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C3698A8();
  v38 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  sub_22C369914(v38);
  v40 = *(v39 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v41);
  sub_22C36D5B4();
  v42 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C369914(v42);
  v44 = *(v43 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v45);
  sub_22C36D5B4();
  v46 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v47 = sub_22C369914(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22C369ABC();
  sub_22C3804A4();
  MEMORY[0x28223BE20](v50);
  sub_22C3813A4();
  v51 = sub_22C9093BC();
  v52 = sub_22C369824(v51);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v52);
  sub_22C369ABC();
  v59 = v57 - v58;
  MEMORY[0x28223BE20](v60);
  sub_22C387B64();
  v61 = sub_22C9028EC();
  sub_22C38577C();
  sub_22C731910(v99, v61, v62, v2);

  sub_22C379DF8(v2, v0, &qword_27D9BB908, &qword_22C910960);
  sub_22C36D0A8(v0, 1, v51);
  if (v63)
  {
    v64 = sub_22C372280();
    sub_22C36DD28(v64, v65, &qword_22C910960);
    sub_22C7395C8();
    sub_22C7395F0();
    sub_22C90735C();
    sub_22C3A5F00();
    v66 = sub_22C36FBE4();
    sub_22C372BFC(v66, v67);
    sub_22C37BF28(v2);
  }

  else
  {
    sub_22C36DD28(v2, &qword_27D9BB908, &qword_22C910960);
    v68 = *(v54 + 32);
    v69 = sub_22C37493C();
    v70(v69);
    sub_22C90069C();
    sub_22C36A748();
    sub_22C36C640(v71, v72, v73, v74);
    sub_22C90769C();
    sub_22C36A748();
    sub_22C36C640(v75, v76, v77, v78);
    v79 = *(v54 + 16);
    v80 = sub_22C3863FC();
    v81(v80);
    sub_22C90205C();
    sub_22C36A748();
    sub_22C36C640(v82, v83, v84, v85);
    MEMORY[0x2318AF540](v59, 0, v92);
    (*(v91 + 104))(v93, *MEMORY[0x277D1CBF0], v94);
    sub_22C9026AC();
    sub_22C36A748();
    sub_22C36C640(v86, v87, v88, v89);
    sub_22C907DCC();
    sub_22C9087AC();
    sub_22C90882C();

    (*(v96 + 16))(v95, v98, v97);
    sub_22C50B648();
    sub_22C906E7C();
    (*(v54 + 8))(v1, v51);
    type metadata accessor for StepResolution();
    sub_22C376858();
    swift_storeEnumTagMultiPayload();
  }

  sub_22C37B304();
  sub_22C36FB20();
}

void sub_22C7388DC()
{
  sub_22C370030();
  v35 = v3;
  v4 = sub_22C9078FC();
  v5 = sub_22C369824(v4);
  v32 = v6;
  v33 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  v34 = v9;
  sub_22C36BA0C();
  v10 = sub_22C90880C();
  v11 = sub_22C369824(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v18 = v17 - v16;
  v19 = sub_22C3A5908(&qword_27D9BF740, &unk_22C923A40);
  sub_22C369914(v19);
  v21 = *(v20 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v22);
  sub_22C37A2CC();
  v23 = sub_22C908CEC();
  v24 = sub_22C369824(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C369838();
  sub_22C387210();
  sub_22C90878C();
  sub_22C6A3CBC();
  (*(v13 + 8))(v18, v10);
  sub_22C36D0A8(v2, 1, v23);
  if (!v29)
  {
    v30 = *(v26 + 32);
    v31 = sub_22C36DA14();
    v30(v31);
    sub_22C908C9C();
    (v30)(v35, v0, v23);
LABEL_5:
    type metadata accessor for StepResolution();
    sub_22C37FDE8();
    swift_storeEnumTagMultiPayload();
    goto LABEL_6;
  }

  sub_22C36DD28(v2, &qword_27D9BF740, &unk_22C923A40);
  sub_22C738B88(v34);
  if (!v1)
  {
    sub_22C90784C();
    (*(v32 + 32))(v35, v34, v33);
    goto LABEL_5;
  }

LABEL_6:
  sub_22C37B304();
  sub_22C36FB20();
}

uint64_t sub_22C738B88@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_22C90880C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C3A5908(&qword_27D9BF778, &qword_22C923030);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  sub_22C90878C();
  sub_22C690EE8();
  (*(v2 + 8))(v5, v1);
  sub_22C379DF8(v12, v10, &qword_27D9BF778, &qword_22C923030);
  v13 = sub_22C9078FC();
  if (sub_22C370B74(v10, 1, v13) == 1)
  {
    sub_22C36DD28(v10, &qword_27D9BF778, &qword_22C923030);
    sub_22C90735C();
    sub_22C3A5F00();
    swift_allocError();
    v14 = v21;
    v15 = v20;
    *v16 = v19;
    *(v16 + 16) = v15;
    *(v16 + 32) = v14;
    swift_willThrow();
    return sub_22C36DD28(v12, &qword_27D9BF778, &qword_22C923030);
  }

  else
  {
    sub_22C36DD28(v12, &qword_27D9BF778, &qword_22C923030);
    return (*(*(v13 - 8) + 32))(v18, v10, v13);
  }
}

uint64_t sub_22C738E2C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v53 = a1;
  v54 = a2;
  v2 = sub_22C907CCC();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C908CEC();
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_22C901FAC();
  v9 = *(v52 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v52);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C9078FC();
  v49 = *(v13 - 8);
  v14 = *(v49 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22C9089DC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9089EC();
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 != *MEMORY[0x277D1E730])
  {
    if (v22 == *MEMORY[0x277D1E830])
    {
      (*(v18 + 96))(v21, v17);
      v30 = v49;
      v31 = v21;
      v32 = *(v49 + 32);
      v32(v16, v31, v13);
      sub_22C9068FC();
      v33 = sub_22C901F6C();
      (*(v9 + 8))(v12, v52);
      if (v33)
      {
        v28 = v54;
        v32(v54, v16, v13);
        v29 = type metadata accessor for StepResolution();
        goto LABEL_12;
      }

      (*(v30 + 8))(v16, v13);
    }

    else
    {
      if (v22 != *MEMORY[0x277D1E810])
      {
        v44 = type metadata accessor for StepResolution();
        sub_22C36C640(v54, 1, 1, v44);
        return (*(v18 + 8))(v21, v17);
      }

      (*(v18 + 96))(v21, v17);
      v35 = v46;
      v34 = v47;
      v36 = *(v47 + 32);
      v37 = v21;
      v38 = v48;
      v36(v46, v37, v48);
      sub_22C907C9C();
      v39 = sub_22C901F6C();
      (*(v9 + 8))(v12, v52);
      if (v39)
      {
        v28 = v54;
        v36(v54, v35, v38);
        v29 = type metadata accessor for StepResolution();
        goto LABEL_12;
      }

      (*(v34 + 8))(v35, v38);
    }

LABEL_14:
    v42 = type metadata accessor for StepResolution();
    v40 = v54;
    v41 = 1;
    return sub_22C36C640(v40, v41, 1, v42);
  }

  (*(v18 + 96))(v21, v17);
  v23 = v50;
  v24 = *(v50 + 32);
  v25 = v21;
  v26 = v51;
  v24(v8, v25, v51);
  sub_22C9068FC();
  v27 = sub_22C901F6C();
  (*(v9 + 8))(v12, v52);
  if ((v27 & 1) == 0)
  {
    (*(v23 + 8))(v8, v26);
    goto LABEL_14;
  }

  v28 = v54;
  v24(v54, v8, v26);
  v29 = type metadata accessor for StepResolution();
LABEL_12:
  swift_storeEnumTagMultiPayload();
  v40 = v28;
  v41 = 0;
  v42 = v29;
  return sub_22C36C640(v40, v41, 1, v42);
}

uint64_t sub_22C73940C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(&qword_27D9BA9F0, &qword_22C912420);
    sub_22C37FDE8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C739458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StepResolution();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C7394BC()
{
  result = qword_27D9BF9F8;
  if (!qword_27D9BF9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BF9F8);
  }

  return result;
}

uint64_t sub_22C739510(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_22C37FDE8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C739554()
{
  result = sub_22C9093BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C7395D4()
{
  v1 = *(v0 - 160);
  v2 = *(*(v0 - 168) + 16);
  result = *(v0 - 288);
  v4 = *(v0 - 128);
  return result;
}

uint64_t type metadata accessor for UTTypeValueConverter()
{
  result = qword_27D9BFA20;
  if (!qword_27D9BFA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22C73967C()
{
  v1 = [*(v0 + 16) modelDescription];
  v2 = [v1 metadata];

  type metadata accessor for MLModelMetadataKey(0);
  sub_22C739784();
  v3 = sub_22C909ECC();

  sub_22C605C48(*MEMORY[0x277CBFE98], v3);

  if (v7)
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_22C4C75A8(v6);
  }

  return 0xD000000000000022;
}

unint64_t sub_22C739784()
{
  result = qword_28142F9A0;
  if (!qword_28142F9A0)
  {
    type metadata accessor for MLModelMetadataKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28142F9A0);
  }

  return result;
}

uint64_t sub_22C7397DC()
{
  v0 = sub_22C3A5908(&qword_27D9BFA40, &qword_22C923B08);
  sub_22C3F0160(v0, qword_27D9E4000);
  sub_22C37AA60(v0, qword_27D9E4000);
  sub_22C3A5908(&qword_27D9BFA48, &unk_22C923B10);
  return sub_22C90306C();
}

uint64_t sub_22C73986C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C90B69C();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C3A5908(&qword_27D9BFA30, &qword_22C923AF8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v67 - v14;
  v16 = sub_22C3A5908(&qword_27D9BFA38, &qword_22C923B00);
  v17 = sub_22C369824(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v23 = &v67 - v22;
  if (qword_27D9BA710 != -1)
  {
    swift_once();
  }

  v24 = sub_22C3A5908(&qword_27D9BFA40, &qword_22C923B08);
  sub_22C37AA60(v24, qword_27D9E4000);
  sub_22C739E64();
  if (sub_22C370B74(v15, 1, v16) != 1)
  {
    v77 = a2;
    (*(v19 + 32))(v23, v15, v16);
    v79 = sub_22C3A5908(&qword_27D9BFA48, &unk_22C923B10);
    v78 = swift_allocObject();
    sub_22C9030CC();
    sub_22C90B67C();
    sub_22C90B68C();
    (*(v7 + 8))(v11, v4);
    v27 = sub_22C90B14C();

    if (v27 != 5)
    {
      sub_22C37382C();
      sub_22C90AF5C();
      sub_22C372C24();
      MEMORY[0x2318B7850](a1, v77);

      sub_22C5F2300();
      v40 = swift_allocError();
      sub_22C3785EC(v40, v41);
      a2 = v19 + 8;
      (*(v19 + 8))(v23, v16);
      return a2;
    }

    v70 = a1;
    sub_22C9030CC();
    v28 = v80;
    v29 = v81;
    v73 = v82;
    v72 = v83;
    v71 = v84;
    v76 = v85;
    v68 = v86;
    a2 = v88;
    v69 = v87;
    v74 = v89;

    v75 = v19;
    if (!((v29 ^ v28) >> 14))
    {

      goto LABEL_12;
    }

    v67 = a2;
    v30 = sub_22C73A628();
    v31 = v90;
    v36 = sub_22C73A0AC(v30, v32, v33, v34, v35);
    v90 = v31;
    if ((v37 & 0x100) != 0)
    {
      sub_22C73A628();
      sub_22C8A4410();
      a2 = v42;
      v44 = v43;

      sub_22C36B4F0();
      if (v44)
      {
        goto LABEL_12;
      }
    }

    else
    {
      a2 = v36;
      v38 = v37;

      sub_22C36B4F0();
      if (v38)
      {
        goto LABEL_12;
      }
    }

    if ((v28 ^ v39) >= 0x4000)
    {
      sub_22C371BF4();
      v45 = v90;
      sub_22C73A0AC(v46, v47, v48, v49, v50);
      v90 = v45;
      if ((v51 & 0x100) != 0)
      {
        sub_22C371BF4();
        sub_22C8A4410();
      }

      v52 = v51;

      if ((v52 & 1) == 0 && (v69 ^ v68) >= 0x4000)
      {
        sub_22C36C24C();
        sub_22C73A0AC(v58, v59, v60, v61, v62);
        if ((v63 & 0x100) != 0)
        {
          sub_22C36C24C();
          sub_22C8A4410();
        }

        v64 = v63;

        if ((v64 & 1) == 0)
        {

          v65 = sub_22C36A25C();
          v66(v65);
          return a2;
        }

        goto LABEL_18;
      }

LABEL_17:

LABEL_18:
      sub_22C37382C();
      sub_22C90AF5C();
      MEMORY[0x2318B7850](0xD000000000000046, 0x800000022C933FF0);
      MEMORY[0x2318B7850](v70, v77);

      sub_22C5F2300();
      v53 = swift_allocError();
      sub_22C3785EC(v53, v54);
      v55 = sub_22C36A25C();
      v56(v55);
      return a2;
    }

LABEL_12:

    goto LABEL_17;
  }

  sub_22C73A044(v15);
  sub_22C37382C();
  sub_22C90AF5C();
  sub_22C372C24();
  MEMORY[0x2318B7850](a1, a2);

  sub_22C5F2300();
  v25 = swift_allocError();
  sub_22C3785EC(v25, v26);
  return a2;
}

uint64_t sub_22C739E64()
{
  v0 = sub_22C3A5908(&qword_27D9BFA40, &qword_22C923B08);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  sub_22C87FAE0();
  sub_22C73A5C4();
  sub_22C90305C();
  sub_22C90307C();
  (*(v1 + 8))(v4, v0);
}

uint64_t sub_22C73A020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = a3 < 0;
  }

  v4 = !v3;
  if (a2 <= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  if (a1 == 9)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C73A044(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BFA30, &qword_22C923AF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C73A0AC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_22C90AFCC();
  }

  result = sub_22C73A188(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_22C73A188(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_22C8A3F0C(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_22C90A3EC();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_22C8A3F0C(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_22C8A3F0C(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_22C90A3EC();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

unint64_t sub_22C73A5C4()
{
  result = qword_27D9BFA50;
  if (!qword_27D9BFA50)
  {
    sub_22C3AC1A0(&qword_27D9BFA40, &qword_22C923B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BFA50);
  }

  return result;
}

id sub_22C73A640()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
  [v0 setComputeUnits_];
  return v0;
}

id sub_22C73A68C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22C9063DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 directoryValue];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v10 = sub_22C73A88C(result);
  if (v11)
  {
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      sub_22C90038C();

      v13 = sub_22C90046C();

      return sub_22C36C640(a1, 0, 1, v13);
    }
  }

  sub_22C903FAC();
  v14 = sub_22C9063CC();
  v15 = sub_22C90AABC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_22C366000, v14, v15, "TRILevel#directoryURL: Invoked on TRILevel that is not a directory", v16, 2u);
    MEMORY[0x2318B9880](v16, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v17 = sub_22C90046C();
  return sub_22C36C640(a1, 1, 1, v17);
}

uint64_t sub_22C73A88C(void *a1)
{
  v2 = [a1 path];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22C90A11C();

  return v3;
}

void sub_22C73A8FC(uint64_t a1@<X8>)
{
  v3 = sub_22C9063DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  v11 = v1 + 24;
  v9 = *(v1 + 24);
  v10 = *(v11 + 8);
  swift_beginAccess();
  v12 = sub_22C633A20(v8, v9, *(v10 + 72));
  swift_endAccess();
  if (v12)
  {
    sub_22C73A68C(a1);
  }

  else
  {
    sub_22C903FAC();
    v13 = sub_22C9063CC();
    v14 = sub_22C90AABC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22C366000, v13, v14, "TrialModelManaging#trialCompiledModelUrl: No trial model URL available", v15, 2u);
      MEMORY[0x2318B9880](v15, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    v16 = sub_22C90046C();
    sub_22C36C640(a1, 1, 1, v16);
  }
}

void sub_22C73AAB0(uint64_t *a1@<X8>)
{
  v91 = a1;
  v2 = sub_22C9063DC();
  v89 = *(v2 - 8);
  v90 = v2;
  v3 = *(v89 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v87 = (v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v84 = v83 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v85 = v83 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = v83 - v10;
  v12 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v83 - v14;
  v16 = sub_22C90046C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v83 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v83 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = v83 - v28;
  sub_22C73A8FC(v15);
  if (sub_22C370B74(v15, 1, v16) == 1)
  {
    sub_22C3AC228(v15, &qword_27D9BB138, &qword_22C90DB70);
    sub_22C903FAC();
    v30 = sub_22C9063CC();
    v31 = sub_22C90AABC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_22C366000, v30, v31, "TrialModelManaging#model: No Trial override, using default compiled model", v32, 2u);
      MEMORY[0x2318B9880](v32, -1, -1);
    }

    (*(v89 + 8))(v11, v90);
    sub_22C73BB88(v91);
    return;
  }

  (*(v17 + 32))(v29, v15, v16);
  v83[1] = v1;
  sub_22C73C300(v29, &v92);
  v86 = v29;
  if (v93)
  {
    sub_22C36C730(&v92, &v94);
    v33 = *sub_22C374168(&v94, v95);
    v34 = sub_22C73967C();
    v35 = v88;
    v37 = sub_22C73986C(v34, v36);
    if (v35)
    {

      v40 = v17;
      v41 = v16;
      v42 = v87;
LABEL_13:
      sub_22C903FAC();
      (*(v40 + 16))(v21, v86, v41);
      sub_22C378A4C(&v94, &v92);
      v67 = sub_22C9063CC();
      v68 = sub_22C90AADC();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        LODWORD(v85) = v68;
        v70 = v69;
        v88 = swift_slowAlloc();
        v96 = v88;
        *v70 = 136315394;
        sub_22C73D398(&qword_281435848, 255, MEMORY[0x277CC9260]);
        v71 = sub_22C90B47C();
        v73 = v72;
        v84 = *(v17 + 8);
        (v84)(v21, v41);
        v74 = sub_22C36F9F4(v71, v73, &v96);

        *(v70 + 4) = v74;
        *(v70 + 12) = 2080;
        v75 = *sub_22C374168(&v92, v93);
        v76 = sub_22C73967C();
        v78 = v77;
        sub_22C36FF94(&v92);
        v79 = sub_22C36F9F4(v76, v78, &v96);

        *(v70 + 14) = v79;
        _os_log_impl(&dword_22C366000, v67, v85, "TrialModelManaging#model: Failed to load Trial-overridden model from %s, reverting to default model as trial model version is not compatible %s", v70, 0x16u);
        v80 = v88;
        swift_arrayDestroy();
        MEMORY[0x2318B9880](v80, -1, -1);
        MEMORY[0x2318B9880](v70, -1, -1);

        v81 = v84;
        (*(v89 + 8))(v87, v90);
      }

      else
      {

        v81 = *(v40 + 8);
        (v81)(v21, v41);
        (*(v89 + 8))(v42, v90);
        sub_22C36FF94(&v92);
      }

      sub_22C73BB88(v91);
      (v81)(v86, v41);
      sub_22C36FF94(&v94);
      return;
    }

    v54 = sub_22C73A020(v37, v38, v39);
    v40 = v17;
    v41 = v16;
    v42 = v87;
    if ((v54 & 1) == 0)
    {
      goto LABEL_13;
    }

    v55 = v84;
    sub_22C903FAC();
    v56 = v86;
    (*(v17 + 16))(v24, v86, v16);
    v57 = sub_22C9063CC();
    v58 = sub_22C90AABC();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v87 = v59;
      v88 = swift_slowAlloc();
      *&v92 = v88;
      *v59 = 136315138;
      sub_22C73D398(&qword_281435848, 255, MEMORY[0x277CC9260]);
      v60 = sub_22C90B47C();
      v62 = v61;
      v63 = *(v17 + 8);
      v63(v24, v41);
      v64 = sub_22C36F9F4(v60, v62, &v92);

      v65 = v87;
      *(v87 + 4) = v64;
      _os_log_impl(&dword_22C366000, v57, v58, "TrialModelManaging#model: Loaded model from Trial-override; %s", v65, 0xCu);
      v66 = v88;
      sub_22C36FF94(v88);
      MEMORY[0x2318B9880](v66, -1, -1);
      MEMORY[0x2318B9880](v65, -1, -1);

      (*(v89 + 8))(v84, v90);
      v63(v86, v41);
    }

    else
    {

      v82 = *(v17 + 8);
      v82(v24, v41);
      (*(v89 + 8))(v55, v90);
      v82(v56, v41);
    }

    sub_22C36C730(&v94, v91);
  }

  else
  {
    sub_22C3AC228(&v92, &qword_27D9BFA60, &unk_22C923C80);
    v43 = v85;
    sub_22C903FAC();
    (*(v17 + 16))(v27, v29, v16);
    v44 = sub_22C9063CC();
    v45 = sub_22C90AADC();
    v46 = v16;
    if (os_log_type_enabled(v44, v45))
    {
      v47 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *&v94 = v87;
      *v47 = 136315138;
      sub_22C73D398(&qword_281435848, 255, MEMORY[0x277CC9260]);
      v48 = sub_22C90B47C();
      v50 = v49;
      v51 = *(v17 + 8);
      v51(v27, v46);
      v52 = sub_22C36F9F4(v48, v50, &v94);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_22C366000, v44, v45, "TrialModelManaging#model: Failed to load Trial-overridden model from %s, reverting to default model", v47, 0xCu);
      v53 = v87;
      sub_22C36FF94(v87);
      MEMORY[0x2318B9880](v53, -1, -1);
      MEMORY[0x2318B9880](v47, -1, -1);

      (*(v89 + 8))(v85, v90);
    }

    else
    {

      v51 = *(v17 + 8);
      v51(v27, v16);
      (*(v89 + 8))(v43, v90);
    }

    sub_22C73BB88(v91);
    v51(v86, v46);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PlanResolutionCachableModel.prewarm()()
{
  v0 = sub_22C9063DC();
  v1 = sub_22C369824(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v8 = v7 - v6;
  sub_22C9040BC();
  v9 = sub_22C9063CC();
  v10 = sub_22C90AADC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22C366000, v9, v10, "Default implementation of PlanResolutionCachableModel.prewarm called. This has no effect.", v11, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v3 + 8))(v8, v0);
}

uint64_t PlanResolutionCachableModel.__allocating_init(parameters:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PlanResolutionCachableModel.init(parameters:)(a1);
  return v2;
}

void *PlanResolutionCachableModel.init(parameters:)(uint64_t a1)
{
  v3 = v1;
  v5 = *v1;
  swift_defaultActor_initialize();
  v6 = [objc_opt_self() clientWithIdentifier_];
  type metadata accessor for TrialManager();
  v7 = swift_allocObject();
  v8 = sub_22C73D0DC(v6, 0xD000000000000021, 0x800000022C933280, v7);
  type metadata accessor for PlanResolutionCachableModel.ModelInitaliser();
  inited = swift_initStackObject();
  inited[2] = 0xD00000000000001BLL;
  inited[3] = 0x800000022C9342B0;
  inited[4] = v8;
  if (v2)
  {
    swift_defaultActor_destroy();
    v10 = sub_22C9040FC();
    sub_22C369848(v10);
    (*(v11 + 8))(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = sub_22C73B814();
    v14 = sub_22C9040FC();
    sub_22C369848(v14);
    (*(v15 + 8))(a1);

    v3[14] = v13;
  }

  return v3;
}

uint64_t sub_22C73B814()
{
  v1 = v0;
  v38 = sub_22C90634C();
  v2 = sub_22C369824(v38);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v2);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = sub_22C90636C();
  v13 = sub_22C369824(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - v21;
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v36 = *(v15 + 8);
  v37 = v12;
  v36(v20, v12);
  v23 = sub_22C90635C();
  v24 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v25 = swift_slowAlloc();
    v35 = v0;
    v26 = v25;
    *v25 = 0;
    v27 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v23, v24, v27, "PlanResolutionModelManager.modelLoad", "", v26, 2u);
    v1 = v35;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  v28 = v38;
  (*(v4 + 16))(v9, v11, v38);
  v29 = sub_22C9063AC();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_22C90639C();
  (*(v4 + 8))(v11, v28);
  v36(v22, v37);
  v32 = v39;
  sub_22C73AAB0(v40);
  if (v1)
  {
    goto LABEL_7;
  }

  sub_22C3A5908(&qword_27D9BFA58, &unk_22C923C70);
  type metadata accessor for PlanResolutionModel();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v32 = 0x800000022C934170;
    sub_22C5F2300();
    swift_allocError();
    *v33 = 0xD000000000000055;
    v33[1] = 0x800000022C934170;
    swift_willThrow();
LABEL_7:
    sub_22C73CA78();

    return v32;
  }

  v32 = v40[6];
  sub_22C73CA78();

  return v32;
}

void sub_22C73BB88(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_22C9063DC();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v12 = v11 - v10;
  sub_22C903FAC();
  v13 = sub_22C9063CC();
  v14 = sub_22C90AABC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22C366000, v13, v14, "PlanResolutionModelManager#defaultModel: Loading default plan resolution model", v15, 2u);
    sub_22C369B50();
    MEMORY[0x2318B9880]();
  }

  (*(v7 + 8))(v12, v4);
  sub_22C36E278(0, &qword_28142F980, 0x277CCA8D8);
  v16 = sub_22C47A5B8();
  v17 = objc_autoreleasePoolPush();
  sub_22C73BD60(v16, &v18, a1);
  objc_autoreleasePoolPop(v17);
}

void sub_22C73BD60(void *a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_22C9063DC();
  v65 = *(v6 - 8);
  v7 = *(v65 + 64);
  MEMORY[0x28223BE20](v6);
  v64 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C90046C();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v57 - v16;
  MEMORY[0x28223BE20](v15);
  v69 = &v57 - v18;
  if (!a1)
  {
    sub_22C5F2300();
    v28 = swift_allocError();
    *v30 = 0xD000000000000039;
    v30[1] = 0x800000022C934240;
    swift_willThrow();
LABEL_8:
    *a2 = v28;
    return;
  }

  v60 = v6;
  v61 = a3;
  v63 = a2;
  v19 = a1;
  v20 = sub_22C90A0EC();
  v21 = sub_22C8B39AC(v20, 0x636C65646F6D6C6DLL, 0xE800000000000000, v19);

  if (!v21)
  {
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_22C90AF5C();
    MEMORY[0x2318B7850](0xD000000000000029, 0x800000022C934280);
    MEMORY[0x2318B7850](0xD000000000000013, 0x800000022C934070);
    MEMORY[0x2318B7850](0x756F6620746F6E20, 0xEE00206E6920646ELL);
    v31 = [v19 description];
    v32 = sub_22C90A11C();
    v34 = v33;

    MEMORY[0x2318B7850](v32, v34);

    v35 = v67;
    v36 = v68;
    sub_22C5F2300();
    v28 = swift_allocError();
    *v37 = v35;
    v37[1] = v36;
    swift_willThrow();

    goto LABEL_7;
  }

  v62 = v19;
  v22 = v9;
  v23 = v69;
  sub_22C9003DC();

  v24 = v10[2];
  v24(v17, v23, v22);
  v25 = sub_22C73A640();
  sub_22C36E278(0, &qword_28142F988, 0x277CBFF20);
  v24(v14, v17, v22);
  v26 = v66;
  v27 = sub_22C73CF74(v14, v25);
  v28 = v26;
  if (v26)
  {
    v29 = v10[1];
    v29(v17, v22);
    v29(v23, v22);

LABEL_7:
    a2 = v63;
    goto LABEL_8;
  }

  v38 = v27;
  v39 = v10[1];
  v66 = v10 + 1;
  v39(v17, v22);
  v40 = type metadata accessor for PlanResolutionModel();
  v41 = swift_allocObject();
  *(v41 + 16) = v38;
  v42 = v64;
  sub_22C903FAC();

  v43 = sub_22C9063CC();
  v44 = sub_22C90AABC();

  v45 = v22;
  if (os_log_type_enabled(v43, v44))
  {
    v46 = swift_slowAlloc();
    v63 = v40;
    v47 = v46;
    v58 = swift_slowAlloc();
    v67 = v58;
    *v47 = 136315138;
    v59 = v22;
    v48 = sub_22C73967C();
    v50 = v39;
    v51 = sub_22C36F9F4(v48, v49, &v67);

    *(v47 + 4) = v51;
    v39 = v50;
    v45 = v59;
    _os_log_impl(&dword_22C366000, v43, v44, "PlanResolutionModelManager#defaultModel returning model: %s", v47, 0xCu);
    v52 = v58;
    sub_22C36FF94(v58);
    MEMORY[0x2318B9880](v52, -1, -1);
    v53 = v47;
    v40 = v63;
    MEMORY[0x2318B9880](v53, -1, -1);
  }

  (*(v65 + 8))(v42, v60);
  v54 = v61;
  v55 = v62;
  v56 = v69;
  v61[3] = v40;
  v54[4] = &off_283FBEC80;

  *v54 = v41;
  v39(v56, v45);
}

void sub_22C73C300(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = *v2;
  v5 = sub_22C90046C();
  v6 = sub_22C369824(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = sub_22C9063DC();
  v15 = sub_22C369824(v14);
  v34 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v21 = v20 - v19;
  sub_22C903FAC();
  (*(v8 + 16))(v13, a1, v5);
  v22 = sub_22C9063CC();
  v23 = sub_22C90AABC();
  if (os_log_type_enabled(v22, v23))
  {
    v32 = a2;
    v24 = swift_slowAlloc();
    v33 = a1;
    v25 = swift_slowAlloc();
    v36 = v25;
    *v24 = 136315138;
    v26 = sub_22C90034C();
    v31 = v14;
    v28 = v27;
    (*(v8 + 8))(v13, v5);
    v29 = sub_22C36F9F4(v26, v28, &v36);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_22C366000, v22, v23, "PlanResolutionModelManager#compiledModel Loading compiled plan resolution model from url: %s", v24, 0xCu);
    sub_22C36FF94(v25);
    a1 = v33;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    a2 = v32;
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    (*(v34 + 8))(v21, v31);
  }

  else
  {

    (*(v8 + 8))(v13, v5);
    (*(v34 + 8))(v21, v14);
  }

  v30 = objc_autoreleasePoolPush();
  sub_22C73C5CC(a1, a2);
  objc_autoreleasePoolPop(v30);
}

uint64_t sub_22C73C5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_22C9063DC();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = &v42 - v8;
  v9 = sub_22C90046C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  v17 = *(v10 + 16);
  v17(&v42 - v15, a1, v9);
  v18 = sub_22C73A640();
  sub_22C36E278(0, &qword_28142F988, 0x277CBFF20);
  v17(v14, v16, v9);
  v19 = v44;
  v20 = sub_22C73CF74(v14, v18);
  if (v19)
  {
    (*(v10 + 8))(v16, v9);
    sub_22C903FAC();
    v21 = v19;
    v22 = sub_22C9063CC();
    v23 = sub_22C90AADC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v19;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_22C366000, v22, v23, "PlanResolutionModelManager#compiledModel: Error loading the compiled model: %@", v24, 0xCu);
      sub_22C3AC228(v25, &qword_27D9BB158, qword_22C910FD0);
      MEMORY[0x2318B9880](v25, -1, -1);
      MEMORY[0x2318B9880](v24, -1, -1);
    }

    else
    {
    }

    result = (*(v45 + 8))(v7, v46);
    v40 = v47;
    *(v47 + 32) = 0;
    *v40 = 0u;
    v40[1] = 0u;
  }

  else
  {
    v28 = v20;
    (*(v10 + 8))(v16, v9);
    v29 = type metadata accessor for PlanResolutionModel();
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    v31 = v43;
    sub_22C903FAC();

    v32 = sub_22C9063CC();
    v33 = sub_22C90AABC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48 = v35;
      *v34 = 136315138;
      v36 = sub_22C73967C();
      v38 = sub_22C36F9F4(v36, v37, &v48);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_22C366000, v32, v33, "PlanResolutionModelManager#compiledModel returning model: %s", v34, 0xCu);
      sub_22C36FF94(v35);
      MEMORY[0x2318B9880](v35, -1, -1);
      MEMORY[0x2318B9880](v34, -1, -1);

      result = (*(v45 + 8))(v43, v46);
    }

    else
    {

      result = (*(v45 + 8))(v31, v46);
    }

    v41 = v47;
    *(v47 + 24) = v29;
    v41[4] = &off_283FBEC80;
    *v41 = v30;
  }

  return result;
}

uint64_t sub_22C73CA78()
{
  v31 = sub_22C90637C();
  v29 = *(v31 - 1);
  v0 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22C90634C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C90636C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90365C();
  v13 = sub_22C90635C();
  sub_22C90638C();
  v30 = sub_22C90AB5C();
  if (sub_22C90AC5C())
  {
    v26 = v9;
    v27 = v8;
    v28 = v3;

    sub_22C9063BC();

    v14 = v29;
    v15 = v31;
    if ((*(v29 + 88))(v2, v31) == *MEMORY[0x277D85B00])
    {
      v16 = 0;
      v17 = 0;
      v31 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v2, v15);
      v31 = "%s";
      v17 = 2;
      v16 = 1;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = v17;
    *(v19 + 1) = v16;
    *(v19 + 2) = 2080;
    sub_22C90366C();
    v21 = sub_22C90AF7C();
    v23 = sub_22C36F9F4(v21, v22, &v32);

    *(v19 + 4) = v23;
    v24 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v13, v30, v24, "PlanResolutionModelManager.modelLoad", v31, v19, 0xCu);
    sub_22C36FF94(v20);
    MEMORY[0x2318B9880](v20, -1, -1);
    MEMORY[0x2318B9880](v19, -1, -1);

    (*(v4 + 8))(v7, v28);
    return (*(v26 + 8))(v12, v27);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_22C73CE1C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_22C73CE44()
{
  sub_22C73CE1C();

  return swift_deallocClassInstance();
}

uint64_t PlanResolutionCachableModel.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PlanResolutionCachableModel.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22C73CF14(uint64_t a1, void *a2)
{
  result = PlanResolutionCachableModel.__allocating_init(parameters:)(a1);
  if (v2)
  {
    *a2 = v2;
  }

  return result;
}

void sub_22C73CF44(void *a1)
{
  PlanResolutionCachableModel.prewarm()();
  if (v2)
  {
    *a1 = v2;
  }
}

id sub_22C73CF74(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22C9003AC();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_22C90046C();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_22C90030C();

    swift_willThrow();
    v11 = sub_22C90046C();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_22C73D0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[3] = sub_22C36E278(0, &qword_28142F960, 0x277D73660);
  v19[4] = &off_283FC3D68;
  v19[0] = a1;
  sub_22C36E278(0, &qword_28142F968, 0x277D73B18);
  *(a4 + 72) = sub_22C909F0C();
  *(a4 + 80) = xmmword_22C9114A0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  sub_22C378A4C(v19, a4 + 32);
  v8 = *(a4 + 56);
  v9 = *(a4 + 64);
  sub_22C374168((a4 + 32), v8);
  (*(v9 + 16))(v8, v9);
  v10 = sub_22C36E2E8();
  swift_beginAccess();
  v11 = *(a4 + 72);
  *(a4 + 72) = v10;

  sub_22C8FA744(v20);
  v12 = *(a4 + 96);
  v21[0] = *(a4 + 80);
  v21[1] = v12;
  v13 = *(a4 + 128);
  v21[2] = *(a4 + 112);
  v21[3] = v13;
  v14 = v20[1];
  *(a4 + 80) = v20[0];
  *(a4 + 96) = v14;
  v15 = v20[3];
  *(a4 + 112) = v20[2];
  *(a4 + 128) = v15;
  sub_22C3AC228(v21, &qword_27D9BFA68, &unk_22C923C90);
  v16 = *(a4 + 72);

  sub_22C36E7C4(v17);

  sub_22C36FF94(v19);
  return a4;
}

uint64_t sub_22C73D398(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_22C73D3E0()
{
  sub_22C36BA7C();
  v1 = v0;
  v2 = sub_22C9063DC();
  v3 = sub_22C369824(v2);
  v83 = v4;
  v84 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  v81 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v78 - v10;
  v12 = sub_22C3A5908(&qword_27D9BFAA0, &qword_22C923D98);
  v13 = sub_22C369914(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v82 = &v78 - v16;
  v17 = sub_22C90363C();
  v18 = sub_22C369824(v17);
  v89 = v19;
  v90 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v88 = v23 - v22;
  v87 = sub_22C90634C();
  v24 = sub_22C369824(v87);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22C369ABC();
  v86 = v29 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v78 - v32;
  v34 = sub_22C90636C();
  v35 = sub_22C369824(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C369ABC();
  v42 = v40 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v78 - v44;
  v80 = type metadata accessor for PersonIdentifierView();
  v46 = swift_allocObject();
  v91 = v1;
  *(v1 + 24) = 0u;
  v47 = (v1 + 24);
  *(v46 + 16) = 0;
  *(v47 - 1) = v46;
  v47[1] = 0u;
  v47[2] = 0u;
  v47[3] = 0u;
  v47[4] = 0u;
  sub_22C90365C();
  sub_22C90365C();
  sub_22C90635C();
  sub_22C90631C();
  v48 = *(v37 + 8);
  v85 = v34;
  v48(v42, v34);
  v49 = sub_22C90635C();
  v50 = sub_22C90AB6C();
  if (sub_22C90AC5C())
  {
    v51 = sub_22C36D240();
    v79 = v11;
    v52 = v51;
    *v51 = 0;
    v53 = sub_22C90632C();
    _os_signpost_emit_with_name_impl(&dword_22C366000, v49, v50, v53, "CandidateSimilarityClientV2.init", "", v52, 2u);
    v11 = v79;
    sub_22C3699EC();
  }

  v54 = v87;
  (*(v26 + 16))(v86, v33, v87);
  v55 = sub_22C9063AC();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  sub_22C90639C();
  (*(v26 + 8))(v33, v54);
  v48(v45, v85);
  v59 = v88;
  v58 = v89;
  v60 = v90;
  (*(v89 + 104))(v88, *MEMORY[0x277D1EBB8], v90);
  v61 = sub_22C90362C();
  (*(v58 + 8))(v59, v60);
  if (v61)
  {
    sub_22C9033EC();
    sub_22C36A748();
    sub_22C36C640(v62, v63, v64, v65);
    sub_22C90337C();
    sub_22C90336C();
    v66 = sub_22C90340C();
    v67 = *(v66 + 48);
    v68 = *(v66 + 52);
    swift_allocObject();
    v69 = sub_22C9033FC();
    v70 = v91;
    v93 = v66;
    v94 = &off_283FBECF8;
    v92[0] = v69;
    swift_beginAccess();
    sub_22C381470(v92, v47 + 40, &qword_27D9BFA90, &unk_22C923D88);
    swift_endAccess();
    v71 = sub_22C90336C();
    v75 = sub_22C90326C();
    v76 = swift_allocObject();
    *(v76 + 16) = v75;
    v77 = *(v70 + 16);
    *(v70 + 16) = v76;
    swift_unknownObjectRetain();

    v93 = sub_22C9033CC();
    v94 = &off_283FBECE8;
    sub_22C36D548(v92);
    sub_22C90327C();

    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_22C381470(v92, v47, &qword_27D9BFA70, &qword_22C923D68);
    swift_endAccess();
  }

  else
  {
    sub_22C903FAC();
    v72 = sub_22C9063CC();
    v73 = sub_22C90AABC();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = sub_22C36D240();
      *v74 = 0;
      _os_log_impl(&dword_22C366000, v72, v73, "entitySimilarity feature flag is disabled", v74, 2u);
      sub_22C3699EC();
    }

    (*(v83 + 8))(v11, v84);
  }

  sub_22C73F49C();

  sub_22C36CC48();
}