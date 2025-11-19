uint64_t sub_1A87E0BA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A8716570;

  return RemoteIntentRequestBroadcasts.perform(using:)(a1);
}

uint64_t sub_1A87E0C48(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A8716570;

  return RemoteIntentRequestAttachmentBroadcasts.perform(using:)(a1);
}

uint64_t sub_1A87E0CEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = sub_1A88C74B8();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a1);

  return sub_1A87E1888(v5, v6, v8, v7, v11, &type metadata for RemoteIntentRequestSetupInfo, sub_1A87A8A70, &unk_1F1BB1420, a2);
}

uint64_t sub_1A87E0E1C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1A8716570;

  return sub_1A877F578(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1A87E0EE4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v38 = a3;
  v6 = sub_1A870CCE0(&qword_1EB3045E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = v35 - v7;
  v8 = sub_1A870CCE0(&qword_1EB305898);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v35 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v35 - v15;
  v17 = sub_1A88C7B88();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v35[1] = v18 + 56;
  v36 = v19;
  v19(v16, 1, 1, v17);
  sub_1A8728D80(v16, v14, &qword_1EB305898);
  sub_1A870CCE0(&qword_1EB3059C0);
  swift_allocObject();
  v40 = sub_1A88C7A88();
  sub_1A87B3A98(v16);
  v43[0] = 0;
  v43[1] = 0;
  sub_1A870CCE0(&qword_1EB3059B8);
  swift_allocObject();
  v39 = sub_1A88C7A88();
  v43[3] = &type metadata for MarkMessageReadClearUnreadCountRequest;
  v43[4] = sub_1A87A8590();
  v20 = swift_allocObject();
  v43[0] = v20;
  v21 = a1[1];
  v20[1] = *a1;
  v20[2] = v21;
  *(v20 + 41) = *(a1 + 25);
  v44 = a2;
  v22 = sub_1A88C7488();
  v24 = v23;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v25 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v25);
  (*(v27 + 104))(v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877B7BC();
  sub_1A88C6E78();
  if (v3)
  {
    v28 = sub_1A88C74B8();
    (*(*(v28 - 8) + 8))(v44, v28);

    sub_1A87B4964(v43);
  }

  else
  {

    v30 = sub_1A88C7D78();
    (*(*(v30 - 8) + 56))(v37, 1, 1, v30);

    sub_1A88C7B38();
    v36(v11, 0, 1, v17);
    sub_1A8728D80(v11, v16, &qword_1EB305898);
    v31 = v40;
    sub_1A88C7AB8();
    sub_1A87B3A98(v11);
    v41 = v22;
    v42 = v24;
    v32 = v39;
    sub_1A88C7AB8();
    v33 = sub_1A88C74B8();
    (*(*(v33 - 8) + 8))(v44, v33);
    result = sub_1A87B4964(v43);
    v34 = v38;
    *v38 = v31;
    v34[1] = v32;
  }

  return result;
}

uint64_t sub_1A87E13A8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v50 = a1;
  v51 = a8;
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v49 = a9;
  v12 = sub_1A870CCE0(&qword_1EB3045E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v48 = &v46 - v13;
  v14 = sub_1A870CCE0(&qword_1EB305898);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v46 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v46 - v21;
  v23 = sub_1A88C7B88();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v46 = v24 + 56;
  v47 = v25;
  v25(v22, 1, 1, v23);
  sub_1A8728D80(v22, v20, &qword_1EB305898);
  sub_1A870CCE0(&qword_1EB3059C0);
  swift_allocObject();
  v26 = a5;
  v27 = sub_1A88C7A88();
  sub_1A87B3A98(v22);
  v57[0] = 0;
  v57[1] = 0;
  sub_1A870CCE0(&qword_1EB3059B8);
  swift_allocObject();
  v28 = sub_1A88C7A88();
  v57[3] = a6;
  v57[4] = a7();
  v29 = swift_allocObject();
  v57[0] = v29;
  *(v29 + 16) = v50;
  *(v29 + 24) = v52;
  v30 = v54;
  *(v29 + 32) = v53;
  *(v29 + 40) = v30;
  v54 = v26;
  v31 = sub_1A88C7488();
  v33 = v32;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v34 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v34);
  (*(v36 + 104))(&v46 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877B7BC();
  v37 = v58;
  sub_1A88C6E78();
  if (v37)
  {
    v38 = sub_1A88C74B8();
    (*(*(v38 - 8) + 8))(v54, v38);

    sub_1A87B4964(v57);
  }

  else
  {
    v58 = v27;

    v40 = sub_1A88C7D78();
    v41 = *(*(v40 - 8) + 56);
    v53 = v28;
    v41(v48, 1, 1, v40);

    sub_1A88C7B38();
    v47(v17, 0, 1, v23);
    sub_1A8728D80(v17, v22, &qword_1EB305898);
    v42 = v58;
    sub_1A88C7AB8();
    sub_1A87B3A98(v17);
    v55 = v31;
    v56 = v33;
    v43 = v53;
    sub_1A88C7AB8();
    v44 = sub_1A88C74B8();
    (*(*(v44 - 8) + 8))(v54, v44);
    result = sub_1A87B4964(v57);
    v45 = v49;
    *v49 = v42;
    v45[1] = v43;
  }

  return result;
}

uint64_t sub_1A87E1888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v53 = a8;
  v54 = a2;
  v55 = a3;
  v56 = a4;
  v51 = a9;
  v52 = a1;
  v12 = sub_1A870CCE0(&qword_1EB3045E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v50 = &v48 - v13;
  v14 = sub_1A870CCE0(&qword_1EB305898);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v48 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v48 - v21;
  v23 = sub_1A88C7B88();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v48 = v24 + 56;
  v49 = v25;
  v25(v22, 1, 1, v23);
  sub_1A8728D80(v22, v20, &qword_1EB305898);
  sub_1A870CCE0(&qword_1EB3059C0);
  swift_allocObject();
  v26 = a5;
  v27 = sub_1A88C7A88();
  sub_1A87B3A98(v22);
  v59[0] = 0;
  v59[1] = 0;
  sub_1A870CCE0(&qword_1EB3059B8);
  swift_allocObject();
  v28 = sub_1A88C7A88();
  v59[3] = a6;
  v59[4] = a7();
  v29 = swift_allocObject();
  v59[0] = v29;
  v30 = v54;
  v31 = v55;
  v29[2] = v52;
  v29[3] = v30;
  v32 = v56;
  v29[4] = v31;
  v29[5] = v32;
  v56 = v26;
  v33 = sub_1A88C7488();
  v35 = v34;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v36 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v36);
  (*(v38 + 104))(&v48 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877B7BC();
  v39 = v60;
  sub_1A88C6E78();
  if (v39)
  {
    v40 = sub_1A88C74B8();
    (*(*(v40 - 8) + 8))(v56, v40);

    sub_1A87B4964(v59);
  }

  else
  {
    v60 = v27;

    v42 = sub_1A88C7D78();
    v43 = *(*(v42 - 8) + 56);
    v55 = v28;
    v43(v50, 1, 1, v42);

    sub_1A88C7B38();
    v49(v17, 0, 1, v23);
    sub_1A8728D80(v17, v22, &qword_1EB305898);
    v44 = v60;
    sub_1A88C7AB8();
    sub_1A87B3A98(v17);
    v57 = v33;
    v58 = v35;
    v45 = v55;
    sub_1A88C7AB8();
    v46 = sub_1A88C74B8();
    (*(*(v46 - 8) + 8))(v56, v46);
    result = sub_1A87B4964(v59);
    v47 = v51;
    *v51 = v44;
    v47[1] = v45;
  }

  return result;
}

uint64_t sub_1A87E1D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v51 = a5;
  v46 = a6;
  v10 = sub_1A870CCE0(&qword_1EB3045E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v44 = v42 - v11;
  v12 = sub_1A870CCE0(&qword_1EB305898);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v45 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v42 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v42 - v18;
  v20 = sub_1A88C7B88();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v42[1] = v21 + 56;
  v43 = v22;
  v22(v19, 1, 1, v20);
  sub_1A8728D80(v19, v17, &qword_1EB305898);
  sub_1A870CCE0(&qword_1EB3059C0);
  swift_allocObject();
  v23 = sub_1A88C7A88();
  sub_1A87B3A98(v19);
  v50[0] = 0;
  v50[1] = 0;
  sub_1A870CCE0(&qword_1EB3059B8);
  swift_allocObject();
  v24 = sub_1A88C7A88();
  v50[3] = a3;
  v50[4] = a4();
  v25 = swift_allocObject();
  v50[0] = v25;
  v26 = *(a1 + 16);
  *(v25 + 16) = *a1;
  *(v25 + 32) = v26;
  *(v25 + 48) = *(a1 + 32);
  v51 = a2;
  v27 = sub_1A88C7488();
  v29 = v28;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v30 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v30);
  (*(v32 + 104))(v42 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877B7BC();
  v33 = v47;
  sub_1A88C6E78();
  if (v33)
  {
    v34 = sub_1A88C74B8();
    (*(*(v34 - 8) + 8))(v51, v34);

    sub_1A87B4964(v50);
  }

  else
  {
    v47 = v23;

    v36 = sub_1A88C7D78();
    (*(*(v36 - 8) + 56))(v44, 1, 1, v36);

    v42[0] = v24;
    v37 = v45;
    sub_1A88C7B38();
    v43(v37, 0, 1, v20);
    sub_1A8728D80(v37, v19, &qword_1EB305898);
    v38 = v47;
    sub_1A88C7AB8();
    sub_1A87B3A98(v37);
    v48 = v27;
    v49 = v29;
    v39 = v42[0];
    sub_1A88C7AB8();
    v40 = sub_1A88C74B8();
    (*(*(v40 - 8) + 8))(v51, v40);
    result = sub_1A87B4964(v50);
    v41 = v46;
    *v46 = v38;
    v41[1] = v39;
  }

  return result;
}

uint64_t sub_1A87E2234@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = a3;
  v6 = sub_1A870CCE0(&qword_1EB3045E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v39 = v37 - v7;
  v8 = sub_1A870CCE0(&qword_1EB305898);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v37 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v37 - v15;
  v17 = sub_1A88C7B88();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v37[1] = v18 + 56;
  v38 = v19;
  v19(v16, 1, 1, v17);
  sub_1A8728D80(v16, v14, &qword_1EB305898);
  sub_1A870CCE0(&qword_1EB3059C0);
  swift_allocObject();
  v42 = sub_1A88C7A88();
  sub_1A87B3A98(v16);
  v45[0] = 0;
  v45[1] = 0;
  sub_1A870CCE0(&qword_1EB3059B8);
  swift_allocObject();
  v41 = sub_1A88C7A88();
  v45[3] = &type metadata for LoadChatHistoryRequest;
  v45[4] = sub_1A87A8440();
  v20 = swift_allocObject();
  v45[0] = v20;
  v21 = a1[3];
  v20[3] = a1[2];
  v20[4] = v21;
  v22 = a1[5];
  v20[5] = a1[4];
  v20[6] = v22;
  v23 = a1[1];
  v20[1] = *a1;
  v20[2] = v23;
  v46 = a2;
  v24 = sub_1A88C7488();
  v26 = v25;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v27 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v27);
  (*(v29 + 104))(v37 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877B7BC();
  sub_1A88C6E78();
  if (v3)
  {
    v30 = sub_1A88C74B8();
    (*(*(v30 - 8) + 8))(v46, v30);

    sub_1A87B4964(v45);
  }

  else
  {

    v32 = sub_1A88C7D78();
    (*(*(v32 - 8) + 56))(v39, 1, 1, v32);

    sub_1A88C7B38();
    v38(v11, 0, 1, v17);
    sub_1A8728D80(v11, v16, &qword_1EB305898);
    v33 = v42;
    sub_1A88C7AB8();
    sub_1A87B3A98(v11);
    v43 = v24;
    v44 = v26;
    v34 = v41;
    sub_1A88C7AB8();
    v35 = sub_1A88C74B8();
    (*(*(v35 - 8) + 8))(v46, v35);
    result = sub_1A87B4964(v45);
    v36 = v40;
    *v40 = v33;
    v36[1] = v34;
  }

  return result;
}

uint64_t sub_1A87E2700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a3;
  v6 = sub_1A870CCE0(&qword_1EB3045E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = v36 - v7;
  v8 = sub_1A870CCE0(&qword_1EB305898);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v36 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v36 - v15;
  v17 = sub_1A88C7B88();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v36[1] = v18 + 56;
  v37 = v19;
  v19(v16, 1, 1, v17);
  sub_1A8728D80(v16, v14, &qword_1EB305898);
  sub_1A870CCE0(&qword_1EB3059C0);
  swift_allocObject();
  v41 = sub_1A88C7A88();
  sub_1A87B3A98(v16);
  v44[0] = 0;
  v44[1] = 0;
  sub_1A870CCE0(&qword_1EB3059B8);
  swift_allocObject();
  v40 = sub_1A88C7A88();
  v44[3] = &type metadata for LoadPagedHistoryAroundMessageRequest;
  v44[4] = sub_1A87A87DC();
  v20 = swift_allocObject();
  v44[0] = v20;
  v21 = *(a1 + 48);
  *(v20 + 48) = *(a1 + 32);
  *(v20 + 64) = v21;
  *(v20 + 80) = *(a1 + 64);
  *(v20 + 96) = *(a1 + 80);
  v22 = *(a1 + 16);
  *(v20 + 16) = *a1;
  *(v20 + 32) = v22;
  v45 = a2;
  v23 = sub_1A88C7488();
  v25 = v24;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v26 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v26);
  (*(v28 + 104))(v36 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877B7BC();
  sub_1A88C6E78();
  if (v3)
  {
    v29 = sub_1A88C74B8();
    (*(*(v29 - 8) + 8))(v45, v29);

    sub_1A87B4964(v44);
  }

  else
  {

    v31 = sub_1A88C7D78();
    (*(*(v31 - 8) + 56))(v38, 1, 1, v31);

    sub_1A88C7B38();
    v37(v11, 0, 1, v17);
    sub_1A8728D80(v11, v16, &qword_1EB305898);
    v32 = v41;
    sub_1A88C7AB8();
    sub_1A87B3A98(v11);
    v42 = v23;
    v43 = v25;
    v33 = v40;
    sub_1A88C7AB8();
    v34 = sub_1A88C74B8();
    (*(*(v34 - 8) + 8))(v45, v34);
    result = sub_1A87B4964(v44);
    v35 = v39;
    *v39 = v32;
    v35[1] = v33;
  }

  return result;
}

uint64_t sub_1A87E2BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v38 = a3;
  v6 = sub_1A870CCE0(&qword_1EB3045E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = v35 - v7;
  v8 = sub_1A870CCE0(&qword_1EB305898);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v35 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v35 - v15;
  v17 = sub_1A88C7B88();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v35[1] = v18 + 56;
  v36 = v19;
  v19(v16, 1, 1, v17);
  sub_1A8728D80(v16, v14, &qword_1EB305898);
  sub_1A870CCE0(&qword_1EB3059C0);
  swift_allocObject();
  v40 = sub_1A88C7A88();
  sub_1A87B3A98(v16);
  v43[0] = 0;
  v43[1] = 0;
  sub_1A870CCE0(&qword_1EB3059B8);
  swift_allocObject();
  v39 = sub_1A88C7A88();
  v43[3] = &type metadata for MarkChatAsSpamRequest;
  v43[4] = sub_1A87A8AC4();
  v20 = swift_allocObject();
  v43[0] = v20;
  v21 = *(a1 + 16);
  *(v20 + 16) = *a1;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(a1 + 32);
  *(v20 + 64) = *(a1 + 48);
  v44 = a2;
  v22 = sub_1A88C7488();
  v24 = v23;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v25 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v25);
  (*(v27 + 104))(v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877B7BC();
  sub_1A88C6E78();
  if (v3)
  {
    v28 = sub_1A88C74B8();
    (*(*(v28 - 8) + 8))(v44, v28);

    sub_1A87B4964(v43);
  }

  else
  {

    v30 = sub_1A88C7D78();
    (*(*(v30 - 8) + 56))(v37, 1, 1, v30);

    sub_1A88C7B38();
    v36(v11, 0, 1, v17);
    sub_1A8728D80(v11, v16, &qword_1EB305898);
    v31 = v40;
    sub_1A88C7AB8();
    sub_1A87B3A98(v11);
    v41 = v22;
    v42 = v24;
    v32 = v39;
    sub_1A88C7AB8();
    v33 = sub_1A88C74B8();
    (*(*(v33 - 8) + 8))(v44, v33);
    result = sub_1A87B4964(v43);
    v34 = v38;
    *v38 = v31;
    v34[1] = v32;
  }

  return result;
}

uint64_t sub_1A87E30A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v51 = a3;
  v40 = a5;
  v8 = sub_1A870CCE0(&qword_1EB3045E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = &v37 - v9;
  v10 = sub_1A870CCE0(&qword_1EB305898);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v37 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - v17;
  v19 = sub_1A88C7B88();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v37 = v20 + 56;
  v38 = v21;
  v21(v18, 1, 1, v19);
  sub_1A8728D80(v18, v16, &qword_1EB305898);
  sub_1A870CCE0(&qword_1EB3059C0);
  swift_allocObject();
  v43 = sub_1A88C7A88();
  sub_1A87B3A98(v18);
  v46 = 0;
  v47 = 0;
  sub_1A870CCE0(&qword_1EB3059B8);
  swift_allocObject();
  v41 = sub_1A88C7A88();
  v49 = &type metadata for RetrieveLocalFileURLForTransferGUIDRequest;
  v22 = sub_1A87A88CC();
  v46 = a1;
  v47 = a2;
  v50 = v22;
  v48 = v51;
  v51 = a4;
  v23 = sub_1A88C7488();
  v25 = v24;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v26 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v26);
  (*(v28 + 104))(&v37 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877B7BC();
  v29 = v42;
  sub_1A88C6E78();
  if (v29)
  {
    v30 = sub_1A88C74B8();
    (*(*(v30 - 8) + 8))(v51, v30);

    sub_1A87B4964(&v46);
  }

  else
  {

    v32 = sub_1A88C7D78();
    (*(*(v32 - 8) + 56))(v39, 1, 1, v32);

    sub_1A88C7B38();
    v38(v13, 0, 1, v19);
    sub_1A8728D80(v13, v18, &qword_1EB305898);
    v33 = v43;
    sub_1A88C7AB8();
    sub_1A87B3A98(v13);
    v44 = v23;
    v45 = v25;
    v34 = v41;
    sub_1A88C7AB8();
    v35 = sub_1A88C74B8();
    (*(*(v35 - 8) + 8))(v51, v35);
    result = sub_1A87B4964(&v46);
    v36 = v40;
    *v40 = v33;
    v36[1] = v34;
  }

  return result;
}

uint64_t sub_1A87E3550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X8>)
{
  v44 = a5;
  v45 = a2;
  v43 = a6;
  v9 = sub_1A870CCE0(&qword_1EB3045E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v42 = v40 - v10;
  v11 = sub_1A870CCE0(&qword_1EB305898);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v40 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v40 - v18;
  v20 = sub_1A88C7B88();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v40[1] = v21 + 56;
  v41 = v22;
  v22(v19, 1, 1, v20);
  sub_1A8728D80(v19, v17, &qword_1EB305898);
  sub_1A870CCE0(&qword_1EB3059C0);
  swift_allocObject();
  v23 = sub_1A88C7A88();
  sub_1A87B3A98(v19);
  v48 = 0;
  v49 = 0;
  sub_1A870CCE0(&qword_1EB3059B8);
  swift_allocObject();
  v24 = sub_1A88C7A88();
  v50 = a4;
  v51 = v44();
  v48 = a1;
  v49 = v45;
  v45 = sub_1A88C7488();
  v26 = v25;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v27 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v27);
  (*(v29 + 104))(v40 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877B7BC();
  v30 = v52;
  sub_1A88C6E78();
  if (v30)
  {
    v31 = sub_1A88C74B8();
    (*(*(v31 - 8) + 8))(a3, v31);

    sub_1A87B4964(&v48);
  }

  else
  {
    v52 = v23;

    v33 = sub_1A88C7D78();
    v34 = *(*(v33 - 8) + 56);
    v44 = v24;
    v34(v42, 1, 1, v33);

    v35 = v45;
    sub_1A88C7B38();
    v41(v14, 0, 1, v20);
    sub_1A8728D80(v14, v19, &qword_1EB305898);
    v36 = v52;
    sub_1A88C7AB8();
    sub_1A87B3A98(v14);
    v46 = v35;
    v47 = v26;
    v37 = v44;
    sub_1A88C7AB8();
    v38 = sub_1A88C74B8();
    (*(*(v38 - 8) + 8))(a3, v38);
    result = sub_1A87B4964(&v48);
    v39 = v43;
    *v43 = v36;
    v39[1] = v37;
  }

  return result;
}

uint64_t sub_1A87E3A04@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, unint64_t *a4@<X3>, void (*a5)(uint64_t)@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t *a7@<X8>)
{
  v53 = a6;
  v49 = a4;
  v44 = a7;
  v11 = sub_1A870CCE0(&qword_1EB3045E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v42 = v40 - v12;
  v13 = sub_1A870CCE0(&qword_1EB305898);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v43 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v40 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v40 - v19;
  v21 = sub_1A88C7B88();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v40[1] = v22 + 56;
  v41 = v23;
  v23(v20, 1, 1, v21);
  sub_1A8728D80(v20, v18, &qword_1EB305898);
  sub_1A870CCE0(&qword_1EB3059C0);
  swift_allocObject();
  v47 = sub_1A88C7A88();
  sub_1A87B3A98(v20);
  v52[0] = 0;
  v52[1] = 0;
  sub_1A870CCE0(&qword_1EB3059B8);
  swift_allocObject();
  v46 = sub_1A88C7A88();
  v52[3] = a3(0);
  v52[4] = sub_1A87A8830(v49, a5);
  v24 = sub_1A871E00C(v52);
  v49 = a1;
  v53 = a5;
  sub_1A87E84A4(a1, v24, a5);
  v48 = a2;
  v25 = sub_1A88C7488();
  v27 = v26;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v28 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v28);
  (*(v30 + 104))(v40 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877B7BC();
  v31 = v45;
  sub_1A88C6E78();
  if (v31)
  {

    v32 = sub_1A88C74B8();
    (*(*(v32 - 8) + 8))(v48, v32);
    sub_1A87E850C(v49, v53);
    sub_1A87B4964(v52);
  }

  else
  {

    v34 = sub_1A88C7D78();
    (*(*(v34 - 8) + 56))(v42, 1, 1, v34);

    v35 = v43;
    sub_1A88C7B38();
    v41(v35, 0, 1, v21);
    sub_1A8728D80(v35, v20, &qword_1EB305898);
    v36 = v47;
    sub_1A88C7AB8();
    sub_1A87B3A98(v35);
    v50 = v25;
    v51 = v27;
    v37 = v46;
    sub_1A88C7AB8();
    v38 = sub_1A88C74B8();
    (*(*(v38 - 8) + 8))(v48, v38);
    sub_1A87E850C(v49, v53);
    result = sub_1A87B4964(v52);
    v39 = v44;
    *v44 = v36;
    v39[1] = v37;
  }

  return result;
}

uint64_t sub_1A87E3EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  v38 = a4;
  v7 = sub_1A870CCE0(&qword_1EB3045E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v35 - v8;
  v9 = sub_1A870CCE0(&qword_1EB305898);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v35 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = sub_1A88C7B88();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v35 = v19 + 56;
  v36 = v20;
  v20(v17, 1, 1, v18);
  sub_1A8728D80(v17, v15, &qword_1EB305898);
  sub_1A870CCE0(&qword_1EB3059C0);
  swift_allocObject();
  v41 = sub_1A88C7A88();
  sub_1A87B3A98(v17);
  v44[0] = 0;
  v44[1] = 0;
  sub_1A870CCE0(&qword_1EB3059B8);
  swift_allocObject();
  v40 = sub_1A88C7A88();
  v44[3] = a2;
  v44[4] = a3();
  v45 = a1;
  v21 = sub_1A88C7488();
  v23 = v22;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v24 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v24);
  (*(v26 + 104))(&v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877B7BC();
  v27 = v39;
  sub_1A88C6E78();
  if (v27)
  {
    v28 = sub_1A88C74B8();
    (*(*(v28 - 8) + 8))(v45, v28);

    sub_1A87B4964(v44);
  }

  else
  {

    v30 = sub_1A88C7D78();
    (*(*(v30 - 8) + 56))(v37, 1, 1, v30);

    sub_1A88C7B38();
    v36(v12, 0, 1, v18);
    sub_1A8728D80(v12, v17, &qword_1EB305898);
    v31 = v41;
    sub_1A88C7AB8();
    sub_1A87B3A98(v12);
    v42 = v21;
    v43 = v23;
    v32 = v40;
    sub_1A88C7AB8();
    v33 = sub_1A88C74B8();
    (*(*(v33 - 8) + 8))(v45, v33);
    result = sub_1A87B4964(v44);
    v34 = v38;
    *v38 = v31;
    v34[1] = v32;
  }

  return result;
}

uint64_t sub_1A87E4394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = a3;
  v6 = sub_1A870CCE0(&qword_1EB3045E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v39 = v37 - v7;
  v8 = sub_1A870CCE0(&qword_1EB305898);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v37 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v37 - v15;
  v17 = sub_1A88C7B88();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v37[1] = v18 + 56;
  v38 = v19;
  v19(v16, 1, 1, v17);
  sub_1A8728D80(v16, v14, &qword_1EB305898);
  sub_1A870CCE0(&qword_1EB3059C0);
  swift_allocObject();
  v42 = sub_1A88C7A88();
  sub_1A87B3A98(v16);
  v45[0] = 0;
  v45[1] = 0;
  sub_1A870CCE0(&qword_1EB3059B8);
  swift_allocObject();
  v41 = sub_1A88C7A88();
  v45[3] = &type metadata for JoinChatRequest;
  v45[4] = sub_1A87A89C8();
  v20 = swift_allocObject();
  v45[0] = v20;
  v21 = *(a1 + 80);
  *(v20 + 80) = *(a1 + 64);
  *(v20 + 96) = v21;
  *(v20 + 112) = *(a1 + 96);
  *(v20 + 128) = *(a1 + 112);
  v22 = *(a1 + 16);
  *(v20 + 16) = *a1;
  *(v20 + 32) = v22;
  v23 = *(a1 + 48);
  *(v20 + 48) = *(a1 + 32);
  *(v20 + 64) = v23;
  v46 = a2;
  v24 = sub_1A88C7488();
  v26 = v25;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v27 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v27);
  (*(v29 + 104))(v37 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877B7BC();
  sub_1A88C6E78();
  if (v3)
  {
    v30 = sub_1A88C74B8();
    (*(*(v30 - 8) + 8))(v46, v30);

    sub_1A87B4964(v45);
  }

  else
  {

    v32 = sub_1A88C7D78();
    (*(*(v32 - 8) + 56))(v39, 1, 1, v32);

    sub_1A88C7B38();
    v38(v11, 0, 1, v17);
    sub_1A8728D80(v11, v16, &qword_1EB305898);
    v33 = v42;
    sub_1A88C7AB8();
    sub_1A87B3A98(v11);
    v43 = v24;
    v44 = v26;
    v34 = v41;
    sub_1A88C7AB8();
    v35 = sub_1A88C74B8();
    (*(*(v35 - 8) + 8))(v46, v35);
    result = sub_1A87B4964(v45);
    v36 = v40;
    *v40 = v33;
    v36[1] = v34;
  }

  return result;
}

uint64_t sub_1A87E4870@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a3;
  v6 = sub_1A870CCE0(&qword_1EB3045E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = v36 - v7;
  v8 = sub_1A870CCE0(&qword_1EB305898);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v36 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v36 - v15;
  v17 = sub_1A88C7B88();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v36[1] = v18 + 56;
  v37 = v19;
  v19(v16, 1, 1, v17);
  sub_1A8728D80(v16, v14, &qword_1EB305898);
  sub_1A870CCE0(&qword_1EB3059C0);
  swift_allocObject();
  v41 = sub_1A88C7A88();
  sub_1A87B3A98(v16);
  v44[0] = 0;
  v44[1] = 0;
  sub_1A870CCE0(&qword_1EB3059B8);
  swift_allocObject();
  v40 = sub_1A88C7A88();
  v44[3] = &type metadata for SendMessageRequest;
  v44[4] = sub_1A87A84E8();
  v20 = swift_allocObject();
  v44[0] = v20;
  v21 = a1[1];
  v20[1] = *a1;
  v20[2] = v21;
  v22 = a1[3];
  v20[3] = a1[2];
  v20[4] = v22;
  v45 = a2;
  v23 = sub_1A88C7488();
  v25 = v24;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v26 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v26);
  (*(v28 + 104))(v36 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877B7BC();
  sub_1A88C6E78();
  if (v3)
  {
    v29 = sub_1A88C74B8();
    (*(*(v29 - 8) + 8))(v45, v29);

    sub_1A87B4964(v44);
  }

  else
  {

    v31 = sub_1A88C7D78();
    (*(*(v31 - 8) + 56))(v38, 1, 1, v31);

    sub_1A88C7B38();
    v37(v11, 0, 1, v17);
    sub_1A8728D80(v11, v16, &qword_1EB305898);
    v32 = v41;
    sub_1A88C7AB8();
    sub_1A87B3A98(v11);
    v42 = v23;
    v43 = v25;
    v33 = v40;
    sub_1A88C7AB8();
    v34 = sub_1A88C74B8();
    (*(*(v34 - 8) + 8))(v45, v34);
    result = sub_1A87B4964(v44);
    v35 = v39;
    *v39 = v32;
    v35[1] = v33;
  }

  return result;
}

uint64_t sub_1A87E4D34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v12[0] = *v2;
  v12[1] = v5;
  v13 = *(v2 + 32);
  v14 = *(v2 + 8);
  v15 = v13;
  v6 = sub_1A88C74B8();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v8, a1);
  sub_1A87E678C(&v14, v11);
  sub_1A8728D80(&v15, v11, &unk_1EB3091D0);
  return sub_1A87E1D60(v12, v8, &type metadata for SetupXPCObjectRequest, sub_1A87A8494, &unk_1F1BB1240, a2);
}

uint64_t sub_1A87E4E78(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v3 + 56) = v7;
  *v7 = v3;
  v7[1] = sub_1A87E8760;

  return sub_1A87B58C0(a1, a2);
}

uint64_t sub_1A87E4F34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v12[0] = *v2;
  v12[1] = v5;
  v13 = *(v2 + 32);
  v14 = v12[0];
  v15 = v5;
  v16 = v13;
  v6 = sub_1A88C74B8();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v8, a1);
  sub_1A87E678C(&v14, v11);
  sub_1A8728D80(&v15, v11, &qword_1EB303100);
  sub_1A8728D80(&v16, v11, &qword_1EB303100);
  return sub_1A87E1D60(v12, v8, &type metadata for MarkUnreadRequest, sub_1A87A8638, &unk_1F1BB1308, a2);
}

uint64_t sub_1A87E50A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v5 + 24);
  v8 = *(v5 + 32);
  *(v6 + 16) = *v5;
  *(v6 + 24) = *(v5 + 8);
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  v11 = (*(a5 + 64) + **(a5 + 64));
  v9 = swift_task_alloc();
  *(v6 + 56) = v9;
  *v9 = v6;
  v9[1] = sub_1A87B65D4;

  return v11();
}

uint64_t sub_1A87E51F0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1A87E8764;

  return sub_1A87E856C();
}

uint64_t RemoteIntentRequest.perform(using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1A87E52BC, 0, 0);
}

uint64_t sub_1A87E52BC()
{
  sub_1A88C8E08();
  MEMORY[0x1AC56ECB0](0xD00000000000003ALL, 0x80000001A891BD80);
  swift_getDynamicType();
  v0 = sub_1A88C96D8();
  MEMORY[0x1AC56ECB0](v0);

  return sub_1A88C8FB8();
}

uint64_t sub_1A87E539C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1A8714B6C;

  return RemoteIntentRequest.perform(using:)(v5, v6, a3);
}

uint64_t sub_1A87E5430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1A8716570;

  return RemoteIntentRequest.perform(using:with:)(a1, a2, v10, a4, a5);
}

uint64_t RemoteIntentRequestFailure.error.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
}

__n128 RemoteIntentRequestFailure.error.setter(__int128 *a1)
{
  v4 = a1[1];
  v5 = *a1;
  v2 = *(a1 + 4);

  result = v4;
  *v1 = v5;
  *(v1 + 16) = v4;
  *(v1 + 32) = v2;
  return result;
}

void RemoteIntentRequestFailure.init(nonCodableError:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A88C7158();
  v5 = [v4 domain];
  v6 = sub_1A88C82E8();
  v8 = v7;

  v9 = [v4 code];
  v10 = [v4 localizedDescription];
  v11 = sub_1A88C82E8();
  v13 = v12;

  *a2 = v6;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v11;
  a2[4] = v13;
}

uint64_t sub_1A87E5694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A88C9398();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A87E5718(uint64_t a1)
{
  v2 = sub_1A87E5924();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A87E5754(uint64_t a1)
{
  v2 = sub_1A87E5924();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteIntentRequestFailure.encode(to:)(void *a1)
{
  v14 = sub_1A870CCE0(&qword_1EB3063A8);
  v3 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v5 = &v12 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v12 = v1[3];
  v13 = v8;
  v9 = v1[4];
  sub_1A870C278(a1, a1[3]);
  sub_1A87E5924();

  sub_1A88C95C8();
  v15 = v6;
  v16 = v7;
  v17 = v13;
  v18 = v12;
  v19 = v9;
  sub_1A8773A98();
  v10 = v14;
  sub_1A88C92C8();

  return (*(v3 + 8))(v5, v10);
}

unint64_t sub_1A87E5924()
{
  result = qword_1EB3063B0;
  if (!qword_1EB3063B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3063B0);
  }

  return result;
}

uint64_t RemoteIntentRequestFailure.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB3063B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A87E5924();
  sub_1A88C95A8();
  if (!v2)
  {
    sub_1A8773A44();
    sub_1A88C9158();
    (*(v6 + 8))(v8, v5);
    v9 = v13[2];
    v10 = v15;
    v11 = v14;
    *a2 = v13[1];
    *(a2 + 8) = v9;
    *(a2 + 16) = v11;
    *(a2 + 32) = v10;
  }

  return sub_1A85F1084(a1);
}

unint64_t sub_1A87E5AF8(uint64_t a1)
{
  result = sub_1A87E5B20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A87E5B20()
{
  result = qword_1EB3063C0;
  if (!qword_1EB3063C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3063C0);
  }

  return result;
}

unint64_t sub_1A87E5B74(uint64_t a1)
{
  *(a1 + 8) = sub_1A877B8B8();
  result = sub_1A877B864();
  *(a1 + 16) = result;
  return result;
}

__n128 _s27DefaultFilterModeControllerV5StateVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A87E5BF4(uint64_t a1, unsigned int a2)
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

uint64_t sub_1A87E5C3C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of RemoteIntentRequestAdapting.generateSafeRenderFiles(for:useOriginalOnFailure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A87C95A0;

  return v11(a1, a2, a3, a4);
}

{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A87C8F78;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of RemoteIntentRequestAdapting.generateSafeRenderFile(for:useOriginalOnFailure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1A8714B6C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of RemoteIntentRequest.perform(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A8714B6C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of RemoteIntentRequest.perform(using:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 72) + **(a5 + 72));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1A8716570;

  return v13(a1, a2, a3, a4, a5);
}

unint64_t sub_1A87E635C()
{
  result = qword_1EB3063C8;
  if (!qword_1EB3063C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3063C8);
  }

  return result;
}

unint64_t sub_1A87E63B4()
{
  result = qword_1EB3063D0;
  if (!qword_1EB3063D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3063D0);
  }

  return result;
}

unint64_t sub_1A87E640C()
{
  result = qword_1EB3063D8;
  if (!qword_1EB3063D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3063D8);
  }

  return result;
}

uint64_t sub_1A87E6460@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[3];
  v14[2] = v2[2];
  v14[3] = v5;
  v6 = v2[5];
  v14[4] = v2[4];
  v14[5] = v6;
  v7 = v2[1];
  v14[0] = *v2;
  v14[1] = v7;
  v8 = sub_1A88C74B8();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v10, a1);
  sub_1A87E6730(v14, v13);
  return sub_1A87E2234(v14, v10, a2);
}

uint64_t sub_1A87E6560(uint64_t a1, uint64_t a2)
{
  *(v3 + 112) = a1;
  v5 = v2[3];
  *(v3 + 48) = v2[2];
  *(v3 + 64) = v5;
  v6 = v2[5];
  *(v3 + 80) = v2[4];
  *(v3 + 96) = v6;
  v7 = v2[1];
  *(v3 + 16) = *v2;
  *(v3 + 32) = v7;
  v8 = swift_task_alloc();
  *(v3 + 120) = v8;
  *v8 = v3;
  v8[1] = sub_1A87E6614;

  return sub_1A8808288(a2);
}

uint64_t sub_1A87E6614(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 112);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1A87E6844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a5 + 64) + **(a5 + 64));
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_1A8716570;

  return v8();
}

uint64_t sub_1A87E69A0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v3[2] = a2;
  v3[3] = v4;
  v3[4] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1A87E69C8, 0, 0);
}

uint64_t sub_1A87E69C8()
{
  v1 = *(v0 + 16);
  v2 = sub_1A88C82A8();
  [v1 loadRecoverableMessagesMetadataWithQueryID_];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A87E6A4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 64);
  v15[3] = *(v2 + 48);
  v15[4] = v6;
  v16 = *(v2 + 80);
  v7 = *(v2 + 16);
  v15[0] = *v2;
  v15[1] = v7;
  v15[2] = v5;
  v8 = sub_1A88C74B8();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v11 + 16))(v10, a1);
  sub_1A87E8448(v15, v14);
  return sub_1A87E2700(v15, v10, a2);
}

uint64_t sub_1A87E6B58(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = *(v2 + 80);
  *(v3 + 104) = a1;
  v6 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  v7 = swift_task_alloc();
  *(v3 + 112) = v7;
  *v7 = v3;
  v7[1] = sub_1A87E6C10;

  return sub_1A880A244(a2);
}

uint64_t sub_1A87E6C10(uint64_t a1, uint64_t a2, __int16 a3)
{
  v8 = *v4;
  v9 = *v4;

  if (!v3)
  {
    v10 = *(v8 + 104);
    *v10 = a1;
    *(v10 + 8) = a2;
    *(v10 + 16) = a3 & 1;
    *(v10 + 17) = HIBYTE(a3) & 1;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_1A87E6D40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v13[0] = *v2;
  v13[1] = v5;
  v13[2] = *(v2 + 32);
  v14 = *(v2 + 48);
  v6 = sub_1A88C74B8();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v9 + 16))(v8, a1);
  sub_1A87E86B0(v13, v12);
  return sub_1A87E2BD4(v13, v8, a2);
}

uint64_t sub_1A87E6E40(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v5;
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = *(v2 + 48);
  *(v3 + 72) = a1;
  v6 = swift_task_alloc();
  *(v3 + 80) = v6;
  *v6 = v3;
  v6[1] = sub_1A87E6EF0;

  return sub_1A8838704(a2);
}

uint64_t sub_1A87E6EF0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 72) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1A87E7000@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = sub_1A88C74B8();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1);

  return sub_1A87E30A0(v5, v6, v7, v10, a2);
}

uint64_t sub_1A87E7100(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = *v2;
  *(v3 + 40) = *(v2 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1A87E7130, 0, 0);
}

uint64_t sub_1A87E7130()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_1A88C82A8();
  [v2 retrieveLocalFileURLForFileTransferWithGUID:v3 options:v1];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A87E71C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = sub_1A88C74B8();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1);

  return sub_1A87E3550(v10, v5, v8, &type metadata for RetrieveLocalFileURLForTransferGUIDsRequest, sub_1A87A8920, a2);
}

uint64_t sub_1A87E72C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5[1];
  v6[2] = *v5;
  v6[3] = v7;
  v10 = (*(a5 + 64) + **(a5 + 64));
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_1A87E7400;

  return v10();
}

uint64_t sub_1A87E7400()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A87E74F4(uint64_t a1)
{
  v1 = *sub_1A870C278((a1 + 32), *(a1 + 56));
  sub_1A870CCE0(&qword_1EB303320);
  **(*(v1 + 64) + 40) = sub_1A88C85F8();

  return swift_continuation_resume();
}

uint64_t sub_1A87E75A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t *a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  v11 = sub_1A88C74B8();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a1);

  return sub_1A87E3550(v10, v9, v13, a2, a3, a4);
}

uint64_t sub_1A87E76B0(uint64_t a1, uint64_t a2)
{
  v3[19] = a1;
  v3[20] = a2;
  v4 = v2[1];
  v3[21] = *v2;
  v3[22] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1A87E76D8, 0, 0);
}

uint64_t sub_1A87E76D8()
{
  v1 = v0[20];
  v2 = sub_1A88C82A8();
  v0[23] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1A87E7810;
  v3 = swift_continuation_init();
  v0[17] = sub_1A870CCE0(&unk_1EB3063E0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A87E74F4;
  v0[13] = &unk_1F1BB1280;
  v0[14] = v3;
  [v1 loadChatsWithIdentifier:v2 reply:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A87E7810()
{

  return MEMORY[0x1EEE6DFA0](sub_1A87E78F0, 0, 0);
}

uint64_t sub_1A87E78F0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A87E79B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A87E8764;

  return sub_1A887C988(a2);
}

uint64_t sub_1A87E7AAC@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X3>, uint64_t (*a3)(void)@<X4>, unint64_t *a4@<X5>, void (*a5)(uint64_t)@<X6>, uint64_t *a6@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v14 = (v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A87E84A4(v6, v14, v15);
  v16 = sub_1A88C74B8();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, a1);
  return sub_1A87E3A04(v14, v18, a3, a4, a2, a5, a6);
}

uint64_t sub_1A87E7C08(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1A87D0A70;

  return sub_1A887D918(a2);
}

uint64_t sub_1A87E7CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t *a4@<X8>)
{
  v8 = sub_1A88C74B8();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1);
  return sub_1A87E3EFC(v10, a2, a3, a4);
}

uint64_t sub_1A87E7DC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A8716570;

  return sub_1A887EA34(a1, a2);
}

uint64_t sub_1A87E7E60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 64);
  v6 = *(v2 + 96);
  v17[5] = *(v2 + 80);
  v17[6] = v6;
  v7 = *(v2 + 16);
  v17[0] = *v2;
  v8 = *(v2 + 32);
  v9 = *(v2 + 48);
  v17[1] = v7;
  v17[2] = v8;
  v18 = *(v2 + 112);
  v17[3] = v9;
  v17[4] = v5;
  v10 = sub_1A88C74B8();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v13 + 16))(v12, a1);
  sub_1A87E8654(v17, v16);
  return sub_1A87E4394(v17, v12, a2);
}

uint64_t sub_1A87E7F7C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v5;
  *(v3 + 112) = *(v2 + 96);
  *(v3 + 128) = *(v2 + 112);
  v6 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  v7 = *(v2 + 48);
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v7;
  v8 = swift_task_alloc();
  *(v3 + 136) = v8;
  *v8 = v3;
  v8[1] = sub_1A87E803C;

  return sub_1A888CE90(a2);
}

uint64_t sub_1A87E803C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A87E8130@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[1];
  v13[0] = *v2;
  v13[1] = v5;
  v6 = v2[3];
  v13[2] = v2[2];
  v13[3] = v6;
  v7 = sub_1A88C74B8();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v9, a1);
  sub_1A87E8350(v13, v12);
  return sub_1A87E4870(v13, v9, a2);
}

uint64_t sub_1A87E8228(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = *v2;
  *(v3 + 40) = *(v2 + 16);
  *(v3 + 48) = *(v2 + 24);
  *(v3 + 80) = *(v2 + 40);
  v4 = *(v2 + 56);
  *(v3 + 64) = *(v2 + 48);
  *(v3 + 72) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1A87E8270, 0, 0);
}

uint64_t sub_1A87E8270()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = sub_1A88C82A8();
  v5 = sub_1A88C82A8();
  v6 = sub_1A88C82A8();
  [v3 sendMessage:v2 toChatID:v4 identifier:v5 style:v1 account:v6];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1A87E83AC(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1A87E8400()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A87E84A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A87E850C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A87E8588()
{
  sub_1A88C8E08();
  MEMORY[0x1AC56ECB0](0xD00000000000003ALL, 0x80000001A891BD80);
  v0 = sub_1A88C96D8();
  MEMORY[0x1AC56ECB0](v0);

  return sub_1A88C8FB8();
}

uint64_t sub_1A87E870C(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

id IMActionOpenWeb.init(dictionary:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1A88C8188();

  v2 = [v0 initWithDictionary_];

  return v2;
}

id IMActionOpenWeb.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16))
  {
    v4 = sub_1A85F5F40(1701080941, 0xE400000000000000);
    if (v5)
    {
      sub_1A85F1028(*(a1 + 56) + 32 * v4, v15);
      if (swift_dynamicCast())
      {
        if (*(a1 + 16))
        {
          v6 = sub_1A85F5F40(7107189, 0xE300000000000000);
          if (v7)
          {
            sub_1A85F1028(*(a1 + 56) + 32 * v6, v15);
            if (swift_dynamicCast())
            {
              if (*(a1 + 16) && (v8 = sub_1A85F5F40(0x6574656D61726170, 0xEA00000000007372), (v9 & 1) != 0))
              {
                sub_1A85F1028(*(a1 + 56) + 32 * v8, v15);

                if (swift_dynamicCast())
                {
                  v10 = sub_1A88C82A8();

                  v11 = sub_1A88C82A8();

                  v12 = [v2 initWithMode:v14 url:v10 parameters:v11];

                  return v12;
                }
              }

              else
              {
              }
            }
          }
        }
      }
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_1A87E8AE8()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E4F70;
  *(inited + 32) = 1701080941;
  *(inited + 40) = 0xE400000000000000;
  v3 = [v1 mode];
  v4 = MEMORY[0x1E69E6530];
  *(inited + 48) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 7107189;
  *(inited + 88) = 0xE300000000000000;
  v5 = [v1 url];
  v6 = sub_1A88C82E8();
  v8 = v7;

  v9 = MEMORY[0x1E69E6158];
  *(inited + 96) = v6;
  *(inited + 104) = v8;
  *(inited + 120) = v9;
  *(inited + 128) = 0x6574656D61726170;
  *(inited + 136) = 0xEA00000000007372;
  v10 = [v1 parameters];
  v11 = sub_1A88C82E8();
  v13 = v12;

  *(inited + 168) = v9;
  *(inited + 144) = v11;
  *(inited + 152) = v13;
  v14 = sub_1A8738AAC(inited);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB303720);
  swift_arrayDestroy();
  return v14;
}

id IMActionOpenWeb.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IMActionOpenWeb()
{
  result = qword_1EB306410;
  if (!qword_1EB306410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB306410);
  }

  return result;
}

uint64_t TypedFastEnumerator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C7198();
  if (v9)
  {
    sub_1A85E99B0(&v8, v10);
    sub_1A85E99B0(v10, &v8);
    swift_dynamicCast();
    (*(v4 + 16))(a2, v6, v3);
    (*(v4 + 56))(a2, 0, 1, v3);
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    sub_1A860169C(&v8);
    return (*(v4 + 56))(a2, 1, 1, v3);
  }
}

uint64_t TypedFastEnumeratorSequence.makeIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A88C71A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  sub_1A88C71B8();
  return (*(v3 + 32))(a1, v5, v2);
}

uint64_t sub_1A87E9068@<X0>(uint64_t a1@<X8>)
{
  TypedFastEnumeratorSequence.makeIterator()(a1);

  return swift_unknownObjectRelease();
}

uint64_t sub_1A87E909C()
{
  v0 = sub_1A88718D0();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1A87E9128()
{
  result = sub_1A88C71A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A87E91D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

IMPersistentMenuItem_optional __swiftcall IMPersistentMenuItem.init(dictionary:)(Swift::OpaquePointer dictionary)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1A88C8188();

  v3 = [v1 initWithDictionary_];

  v7 = v3;
  result.value.content = v5;
  result.value.type = v4;
  result.value.super.isa = v7;
  result.is_nil = v6;
  return result;
}

id IMPersistentMenuItem.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_1A85F5F40(1701869940, 0xE400000000000000), (v5 & 1) != 0) && (sub_1A85F1028(*(a1 + 56) + 32 * v4, v14), (swift_dynamicCast() & 1) != 0) && *(a1 + 16) && (v6 = sub_1A85F5F40(0x746E65746E6F63, 0xE700000000000000), (v7 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v6, v14);

    sub_1A870CCE0(&unk_1EB3091D0);
    if (swift_dynamicCast())
    {
      v8 = objc_opt_self();
      v9 = sub_1A88C8188();

      v10 = [v8 contentWithType:v13 dictionary:v9];

      v11 = [v2 initWithType:v13 content:v10];
      swift_unknownObjectRelease();
      return v11;
    }
  }

  else
  {
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1A87E955C()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303B58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E2770;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  v3 = [v1 type];
  v4 = MEMORY[0x1E69E6530];
  *(inited + 48) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0x746E65746E6F63;
  *(inited + 88) = 0xE700000000000000;
  v5 = [v1 content];
  if (v5)
  {
    v6 = [v5 dictionaryRepresentation];
    swift_unknownObjectRelease();
    v7 = sub_1A88C81A8();

    v5 = sub_1A870CCE0(&unk_1EB3091D0);
  }

  else
  {
    v7 = 0;
    *(inited + 104) = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v7;
  *(inited + 120) = v5;
  v8 = sub_1A8738CF0(inited);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB304A50);
  swift_arrayDestroy();
  v9 = sub_1A8895CC8(v8);

  return v9;
}

IMPersistentMenuItem __swiftcall IMPersistentMenuItem.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.content = v3;
  result.type = v2;
  result.super.isa = v1;
  return result;
}

unint64_t type metadata accessor for IMPersistentMenuItem()
{
  result = qword_1EB306428;
  if (!qword_1EB306428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB306428);
  }

  return result;
}

id sub_1A87E98CC(uint64_t a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      return 0;
    }

    v1 = off_1E7824A68;
  }

  else
  {
    v1 = off_1E7824760;
  }

  v2 = objc_allocWithZone(*v1);
  v3 = sub_1A88C8188();
  v4 = [v2 initWithDictionary_];

  return v4;
}

id sub_1A87E9970()
{
  v9 = *v0;
  v10[0] = v0[1];
  v10[1] = v0[2];
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = [result isInternalInstall];

    if (v3)
    {
      v4 = "com.apple.Messages";
      v5 = 0xD000000000000013;
      if (v9 != 1)
      {
        v5 = 0xD000000000000011;
        v4 = "com.apple.MobileSMS";
      }

      if (v9)
      {
        v6 = v5;
      }

      else
      {
        v6 = 0xD000000000000012;
      }

      if (v9)
      {
        v7 = v4;
      }

      else
      {
        v7 = "";
      }

      (*(v0 + 4))(&v11, v6, v7 | 0x8000000000000000, *(v0 + 1), *(v0 + 2), v10 + 9);

      v8 = v11;
    }

    else
    {
      v8 = *(v0 + 24);
    }

    return (v8 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A87E9A74(void *a1)
{
  v1 = a1;
  if ([v1 __im_isSipHandle])
  {
    v2 = [v1 substringFromIndex_];
    sub_1A88C82E8();
  }

  else
  {
    sub_1A88C82E8();
  }

  v3 = sub_1A88C82A8();

  return v3;
}

uint64_t sub_1A87E9B34()
{
  v0 = sub_1A870CCE0(&qword_1EB3045E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_1A88C7D78();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  sub_1A88C82E8();
  sub_1A88C7CF8();
  sub_1A88C7CA8();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1A85EF638(v2, &qword_1EB3045E0);
    return -1;
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    sub_1A88C7D38();
    v11 = sub_1A88C7D68();
    v12 = *(v4 + 8);
    v12(v7, v3);
    if (v11)
    {
      v12(v9, v3);
      return 0;
    }

    else
    {
      sub_1A88C7D58();
      v13 = sub_1A88C7D68();
      v12(v7, v3);
      if (v13 & 1) != 0 || (sub_1A88C7D48(), v14 = sub_1A88C7D68(), v12(v7, v3), (v14))
      {
        v12(v9, v3);
        return 1;
      }

      else
      {
        sub_1A88C7D18();
        v15 = sub_1A88C7D68();
        v12(v7, v3);
        v12(v9, v3);
        if (v15)
        {
          return 2;
        }

        else
        {
          return -1;
        }
      }
    }
  }
}

uint64_t sub_1A87E9DF0(void *a1)
{
  v1 = a1;
  v2 = sub_1A87E9B34();

  return v2;
}

uint64_t sub_1A87E9E24()
{
  v1 = v0;
  v2 = sub_1A88C8328();
  v35 = 46;
  v36 = 0xE100000000000000;
  v34 = &v35;
  v4 = sub_1A876DA44(0x7FFFFFFFFFFFFFFFLL, 1, sub_1A87C49BC, v33, v2, v3, 0x2EuLL);
  if (!v4[2])
  {
    goto LABEL_8;
  }

  v5 = v4[4];
  v6 = v4[5];
  v7 = v4[6];
  v8 = v4[7];

  v9 = MEMORY[0x1AC56EC30](v5, v6, v7, v8);
  v11 = v10;

  v35 = 95;
  v36 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v12);
  v32[2] = &v35;
  v13 = sub_1A876DA44(0x7FFFFFFFFFFFFFFFLL, 1, sub_1A87C4A70, v32, v9, v11, v33);
  if (v13[2] < 2uLL)
  {
    goto LABEL_8;
  }

  v14 = v13[8];
  v15 = v13[9];
  if ((v15 ^ v14) < 0x4000)
  {
    goto LABEL_8;
  }

  v17 = v13[10];
  v16 = v13[11];
  v18 = v13;
  result = sub_1A87EAB9C(v13[8], v15, v17, v16, 10);
  if ((v20 & 0x100) == 0)
  {
    if ((v20 & 1) == 0)
    {
      v21 = result;
      goto LABEL_10;
    }

LABEL_8:

    return 0;
  }

  v21 = sub_1A87EA20C(v14, v15, v17, v16, 10);
  v23 = v22;

  if (v23)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (!v18[2])
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v24 = v18[4];
  v25 = v18[5];
  v26 = v18[6];
  v27 = v18[7];

  v28 = MEMORY[0x1AC56EC30](v24, v25, v26, v27);
  v30 = v29;

  if (v28 == 0x616964656DLL && v30 == 0xE500000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    result = (v21 + 100);
    if (!__OFADD__(v21, 100))
    {
      return result;
    }

    __break(1u);
  }

  if (v28 == 0x69616E626D756874 && v30 == 0xE90000000000006CLL)
  {
  }

  else
  {
    v31 = sub_1A88C9398();

    if ((v31 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  result = (v21 + 200);
  if (!__OFADD__(v21, 200))
  {
    return result;
  }

  __break(1u);
LABEL_24:
  result = (v21 + 300);
  if (__OFADD__(v21, 300))
  {
    __break(1u);
    goto LABEL_27;
  }

  return result;
}

uint64_t sub_1A87EA0E8(void *a1)
{
  v1 = a1;
  v2 = sub_1A87E9E24();

  return v2;
}

void *sub_1A87EA11C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A870CCE0(&qword_1EB303EC0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1A87EA190(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1A88C8458();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1AC56ECF0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *sub_1A87EA20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1A87EAC68();

  result = sub_1A88C8498();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1A87EA7A4();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1A88C8EB8();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
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

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1A87EA7A4()
{
  v0 = sub_1A88C84A8();
  v4 = sub_1A87EA824(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1A87EA824(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1A88C8C08();
    if (!v9 || (v10 = v9, v11 = sub_1A87EA11C(v9, 0), v12 = sub_1A87EA97C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1A88C8378();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1A88C8378();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1A88C8EB8();
LABEL_4:

  return sub_1A88C8378();
}

unint64_t sub_1A87EA97C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1A87EA190(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1A88C8448();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1A88C8EB8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1A87EA190(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1A88C8418();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1A87EAB9C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1A88C8EB8();
  }

  result = sub_1A87EACBC(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_1A87EAC68()
{
  result = qword_1EB306430;
  if (!qword_1EB306430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306430);
  }

  return result;
}

uint64_t sub_1A87EACBC(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1A87EA190(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1A88C8438();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1A87EA190(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1A87EA190(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_1A88C8438();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
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
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_1A87EB128(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1A88C8488();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A87EB170()
{
  sub_1A870CCE0(&qword_1EB306468);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1EB306440 = result;
  return result;
}

uint64_t Locale.LanguageDisplayNameContext.hashValue.getter()
{
  v1 = *v0;
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](v1);
  return sub_1A88C9578();
}

uint64_t Locale.displayName(context:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_1EB302268 != -1)
  {
    a1 = swift_once();
  }

  v2 = qword_1EB306440;
  MEMORY[0x1EEE9AC00](a1);

  os_unfair_lock_lock((v2 + 24));
  sub_1A87EB7E4((v2 + 16), &v58);
  os_unfair_lock_unlock((v2 + 24));
  v4 = v58;
  v3 = v59;

  if (!v3)
  {
    v5 = sub_1A88C7528();
    v6 = IMLTDisplayNameForContext(v5, v1 != 0);

    if (v6)
    {
      v4 = sub_1A88C82E8();
      v8 = v7;

      if (v1 == 2)
      {
        v51 = 0;
        v9 = sub_1A88C75E8();
        v50[1] = v50;
        v10 = *(v9 - 8);
        MEMORY[0x1EEE9AC00](v9);
        v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_1A88C7598();
        sub_1A88C74D8();
        v13 = sub_1A88C7508();
        v15 = v14;

        (*(v10 + 8))(v12, v9);
        if (v15)
        {
          sub_1A87EB128(v13, v15);
          v17 = v16;

          if (!v17 || (v18 = sub_1A88C8258(), , (v18 & 1) == 0))
          {

            v19 = sub_1A87EBC0C(1);
            v21 = v20;
            v23 = v22;
            v25 = v24;

            v58 = v19;
            v59 = v21;
            v60 = v23;
            v61 = v25;
            sub_1A87EBCA8();
            v26 = sub_1A88C8C48();
            v28 = v27;

            v29 = sub_1A87EBCFC(1uLL, v4, v8);
            v31 = v30;
            v33 = v32;
            v35 = v34;

            v56 = v26;
            v57 = v28;
            v52 = v29;
            v53 = v31;
            v54 = v33;
            v55 = v35;
            sub_1A87EAC68();
            sub_1A88C83C8();

            v4 = v56;
          }
        }
      }
    }

    else
    {
      v51 = 0;
      v36 = sub_1A88C75E8();
      v37 = *(v36 - 8);
      MEMORY[0x1EEE9AC00](v36);
      v39 = v50 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1A88C7598();
      sub_1A88C74D8();
      v40 = sub_1A88C7508();
      v42 = v41;

      (*(v37 + 8))(v39, v36);
      if (v42)
      {
        LOBYTE(v58) = v1;
        v43 = sub_1A87EB804(&v58);
        if (v44)
        {
          v45 = v43;
        }

        else
        {
          v45 = 0;
        }

        if (v44)
        {
          v46 = v44;
        }

        else
        {
          v46 = 0xE000000000000000;
        }

        v58 = v40;
        v59 = v42;

        MEMORY[0x1AC56ECB0](v45, v46);

        v4 = v58;
      }

      else
      {
        v4 = sub_1A88C74D8();
      }
    }

    v48 = qword_1EB306440;
    MEMORY[0x1EEE9AC00](v47);

    os_unfair_lock_lock((v48 + 24));
    sub_1A87EBBE8((v48 + 16));
    os_unfair_lock_unlock((v48 + 24));
  }

  return v4;
}

uint64_t sub_1A87EB6F8@<X0>(uint64_t *a1@<X0>, unsigned __int8 a2@<W2>, void *a3@<X8>)
{
  v6 = sub_1A88C74D8();
  v8 = *a1;
  if (*(*a1 + 16))
  {
    v9 = sub_1A85F5F40(v6, v7);
    v11 = v10;

    if (v11)
    {
      v12 = *(*(v8 + 56) + 8 * v9);

      if (!v12[2])
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  else
  {
  }

  v12 = sub_1A8739398(MEMORY[0x1E69E7CC0]);
  if (!v12[2])
  {
LABEL_9:
    v17 = 0;
    v16 = 0;
    goto LABEL_10;
  }

LABEL_7:
  v13 = sub_1A8716CC4(a2);
  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }

  v15 = (v12[7] + 16 * v13);
  v17 = *v15;
  v16 = v15[1];

LABEL_10:

  *a3 = v17;
  a3[1] = v16;
  return result;
}

uint64_t sub_1A87EB804(_BYTE *a1)
{
  if (*a1)
  {
    return 0;
  }

  v1 = sub_1A870CCE0(&qword_1EB306458);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_1A88C75C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C75D8();
  sub_1A88C75A8();
  (*(v5 + 8))(v7, v4);
  v8 = sub_1A88C74F8();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v3, 1, v8) != 1)
  {
    v11 = sub_1A88C74E8();
    v13 = v12;
    (*(v9 + 8))(v3, v8);
    v14 = sub_1A85EDE50(&unk_1F1BA8D30);
    sub_1A87EBE14(&unk_1F1BA8D50);
    v15 = sub_1A85EDE50(&unk_1F1BA8D60);
    swift_arrayDestroy();
    v16 = sub_1A88BB038(v11, v13, v14);

    if (v16)
    {
    }

    else
    {
      v17 = sub_1A88BB038(v11, v13, v15);

      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }

    return sub_1A87EBE68();
  }

  sub_1A85EF638(v3, &qword_1EB306458);
  return 0;
}

uint64_t sub_1A87EBAA0(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A88C74D8();
  v11 = *a1;
  if (!*(*a1 + 16))
  {

    goto LABEL_5;
  }

  v21 = sub_1A85F5F40(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_5:
    v14 = sub_1A8739398(MEMORY[0x1E69E7CC0]);
    goto LABEL_6;
  }

  v14 = *(*(v11 + 56) + 8 * v21);

LABEL_6:

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1A87AC890(a4, a5, a3, isUniquelyReferenced_nonNull_native);
  v16 = sub_1A88C74D8();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *a1;
  sub_1A87AC850(v14, v16, v18, v19);

  *a1 = v22;
  return result;
}

uint64_t sub_1A87EBC0C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1A88C83B8();

    return sub_1A88C84A8();
  }

  return result;
}

unint64_t sub_1A87EBCA8()
{
  result = qword_1EB306448;
  if (!qword_1EB306448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306448);
  }

  return result;
}

unint64_t sub_1A87EBCFC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1A88C83B8();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1A88C84A8();
}

unint64_t sub_1A87EBDB0()
{
  result = qword_1EB306450;
  if (!qword_1EB306450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306450);
  }

  return result;
}

uint64_t sub_1A87EBE68()
{
  v0 = sub_1A870CCE0(&qword_1EB306460);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v18 - v1;
  v3 = sub_1A88C75C8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C75D8();
  sub_1A88C75B8();
  (*(v4 + 8))(v6, v3);
  v7 = sub_1A88C7578();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_1A85EF638(v2, &qword_1EB306460);
  }

  else
  {
    sub_1A88C74E8();
    (*(v8 + 8))(v2, v7);
    v9 = sub_1A88C75E8();
    v10 = *(v9 - 8);
    MEMORY[0x1EEE9AC00](v9);
    v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1A88C7598();
    v13 = sub_1A88C7528();
    (*(v10 + 8))(v12, v9);
    v14 = sub_1A88C82A8();

    v15 = [v13 localizedStringForRegion:v14 context:3 short:1];

    if (v15)
    {
      v16 = sub_1A88C82E8();

      return v16;
    }
  }

  return 0;
}

id sub_1A87EC14C()
{
  result = [objc_allocWithZone(IMRemoteIntentFileDownloadObserver) init];
  qword_1EB306470 = result;
  return result;
}

id sub_1A87EC1DC()
{
  v0 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v48 = &v34 - v1;
  v45 = sub_1A88C8A28();
  v43 = *(v45 - 8);
  v2 = MEMORY[0x1EEE9AC00](v45);
  v46 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v42 = &v34 - v4;
  v5 = sub_1A88C8A18();
  v44 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v41 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - v8;
  v37 = sub_1A88C7EF8();
  v49 = *(v37 - 8);
  v10 = MEMORY[0x1EEE9AC00](v37);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  v15 = sub_1A88C7ED8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = "";
  v39 = sub_1A85E9718(0, &qword_1ED8C95A0);
  (*(v16 + 104))(v18, *MEMORY[0x1E69E7F98], v15);
  v38 = sub_1A88C8A88();
  (*(v16 + 8))(v18, v15);
  v36 = v14;
  _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
  v51 = MEMORY[0x1E69E7CC0];
  sub_1A87A2044();
  sub_1A870CCE0(&qword_1EB3023F0);
  sub_1A87A209C();
  v34 = v5;
  v35 = v9;
  sub_1A88C8CE8();
  v19 = v42;
  v20 = v43;
  v21 = v45;
  (*(v43 + 104))(v42, *MEMORY[0x1E69E8090], v45);
  sub_1A870CCE0(&qword_1EB306488);
  v22 = swift_allocObject();
  v23 = v37;
  (*(v49 + 16))(v12, v14, v37);
  v24 = v44;
  (*(v44 + 16))(v41, v9, v5);
  (*(v20 + 16))(v46, v19, v21);
  v25 = sub_1A88C8A78();
  (*(v20 + 8))(v19, v21);
  (*(v24 + 8))(v35, v34);
  (*(v49 + 8))(v36, v23);
  v26 = MEMORY[0x1E69E7CD0];
  *(v22 + 16) = v25;
  *(v22 + 24) = v26;
  v27 = v47;
  *&v47[OBJC_IVAR___IMRemoteIntentFileDownloadObserver_stateQueue] = v22;
  v50.receiver = v27;
  v50.super_class = IMRemoteIntentFileDownloadObserver;
  v28 = objc_msgSendSuper2(&v50, sel_init);
  v29 = sub_1A88C87A8();
  v30 = v48;
  (*(*(v29 - 8) + 56))(v48, 1, 1, v29);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v28;
  v32 = v28;
  sub_1A885A178(0, 0, v30, &unk_1A88EDA40, v31);

  return v32;
}

uint64_t sub_1A87EC7D4()
{
  if (qword_1EB302380 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB309050;
  *(v0 + 128) = qword_1EB309050;

  return MEMORY[0x1EEE6DFA0](sub_1A87EC86C, v1, 0);
}

uint64_t sub_1A87EC86C()
{
  if (qword_1EB302388 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1A87EC8FC, v1, 0);
}

uint64_t sub_1A87EC8FC()
{
  v1 = *(v0 + 128);
  *(v0 + 136) = off_1EB309058;
  return MEMORY[0x1EEE6DFA0](sub_1A87EC924, v1, 0);
}

uint64_t sub_1A87EC924(uint64_t a1)
{
  v2 = v1[17];
  v3 = v1[15];
  v1[5] = type metadata accessor for IMRemoteIntentFileDownloadObserver(a1);
  v1[6] = &off_1F1BB15A0;
  v1[2] = v3;
  sub_1A86061B4((v1 + 2), (v1 + 7));
  swift_beginAccess();
  v4 = v3;
  sub_1A87ECE3C((v1 + 7), v2 + 120);
  swift_endAccess();
  sub_1A85F1084((v1 + 2));
  v5 = v1[1];

  return v5();
}

uint64_t sub_1A87ECA94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A88BB038(*(v2 + 16), *(v2 + 24), *a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A87ECB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1A85FB018(&v6, a2, a3);
}

uint64_t sub_1A87ECC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  sub_1A87EE994(a6, v9);
}

uint64_t sub_1A87ECD08@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  swift_beginAccess();
  v3(&v6, v4 + 24);
  result = swift_endAccess();
  *a1 = v6;
  return result;
}

uint64_t sub_1A87ECD88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A8714B6C;

  return sub_1A87EC7B4(a1, v4, v5, v6);
}

uint64_t sub_1A87ECE3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&unk_1EB3090A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A87ECEB0()
{
  sub_1A88999A8(*(v0 + 16), *(v0 + 24));
}

BOOL sub_1A87ECF28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t IMStickerTapback.transferGUID.getter()
{
  v1 = *(v0 + OBJC_IVAR___IMStickerTapback__transferGuid);

  return v1;
}

id IMStickerTapback.counterpart.getter()
{
  v1 = [v0 isRemoved];
  v2 = &selRef_visibleTapbackCounterpart;
  if (!v1)
  {
    v2 = &selRef_removedTapbackCounterpart;
  }

  v3 = [v0 *v2];

  return v3;
}

id IMStickerTapback.removedTapbackCounterpart.getter()
{
  if ([v0 isRemoved])
  {
    return v0;
  }

  v2 = [v0 transferGUID];
  if (!v2)
  {
    sub_1A88C82E8();
    v2 = sub_1A88C82A8();
  }

  v3 = [objc_allocWithZone(IMStickerTapback) initWithTransferGUID:v2 isRemoved:1];

  return v3;
}

id IMStickerTapback.visibleTapbackCounterpart.getter()
{
  if (![v0 isRemoved])
  {
    return v0;
  }

  v1 = [v0 transferGUID];
  if (!v1)
  {
    sub_1A88C82E8();
    v1 = sub_1A88C82A8();
  }

  v2 = [objc_allocWithZone(IMStickerTapback) initWithTransferGUID:v1 isRemoved:0];

  return v2;
}

void __swiftcall IMStickerTapback.init(transferGUID:isRemoved:)(IMStickerTapback_optional *__return_ptr retstr, Swift::String transferGUID, Swift::Bool isRemoved)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1A88C82A8();

  [v4 initWithTransferGUID:v5 isRemoved:isRemoved];
}

id IMStickerTapback.init(transferGUID:isRemoved:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (v3 + OBJC_IVAR___IMStickerTapback__transferGuid);
  *v4 = a1;
  v4[1] = a2;
  if (a3)
  {
    v5 = 3007;
  }

  else
  {
    v5 = 2007;
  }

  v7.super_class = IMStickerTapback;
  return objc_msgSendSuper2(&v7, sel_initWithAssociatedMessageType_, v5);
}

void __swiftcall IMStickerTapback.init(imRemoteObjectSerializedDictionary:)(IMStickerTapback_optional *__return_ptr retstr, Swift::OpaquePointer_optional imRemoteObjectSerializedDictionary)
{
  if (imRemoteObjectSerializedDictionary.value._rawValue)
  {
    v2 = sub_1A88C8188();
  }

  else
  {
    v2 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIMRemoteObjectSerializedDictionary_];
}

IMTapbackSummaryActionStringFormat_optional __swiftcall IMStickerTapback.actionStringFormat(withAdaptiveImageGlyphAvailable:)(Swift::Bool withAdaptiveImageGlyphAvailable)
{
  v3 = [v1 associatedMessageType];
  if (v3 == 3007)
  {
    if (withAdaptiveImageGlyphAvailable)
    {
LABEL_6:
      v7 = objc_allocWithZone(IMTapbackSummaryActionStringFormat);
      v8 = sub_1A88C82A8();
      v9 = [v7 initWithActionStringFormat:v8 requiresReactionReplacment:1];
LABEL_9:
      v10 = v9;

      goto LABEL_10;
    }

LABEL_8:
    v11 = objc_allocWithZone(IMTapbackSummaryActionStringFormat);
    v8 = sub_1A88C82A8();
    v9 = [v11 initWithActionStringFormat:v8 requiresReactionReplacment:0];
    goto LABEL_9;
  }

  if (v3 == 2007)
  {
    if (withAdaptiveImageGlyphAvailable)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  v10 = 0;
LABEL_10:
  v12 = v10;
  result.value._actionStringFormat = v5;
  result.value.super.isa = v12;
  result.is_nil = v6;
  result.value._requiresReactionReplacment = v4;
  return result;
}

id IMStickerTapback.reactionString(with:isCommSafetySensitiveProvider:)(void *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v5 = [v2 transferGUID];
  v6 = sub_1A88C82E8();
  v8 = v7;

  LOBYTE(v5) = a2(v6, v8);

  if (v5)
  {
    v9 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v10 = sub_1A88C82A8();
    v11 = [v9 initWithString_];
  }

  else
  {
    if (!a1)
    {
      return 0;
    }

    v12 = a1;
    sub_1A87394AC(MEMORY[0x1E69E7CC0]);
    type metadata accessor for Key(0);
    sub_1A8750554();
    v10 = sub_1A88C8188();

    v11 = [objc_opt_self() attributedStringWithAdaptiveImageGlyph:v12 attributes:v10];
  }

  return v11;
}

uint64_t IMStickerTapback.adaptiveImageGlyphForPreviewString(adaptiveImageGlyphProvider:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = [v1 transferGUID];
  v4 = sub_1A88C82E8();
  v6 = v5;

  v7 = a1(v4, v6);

  return v7;
}

uint64_t IMStickerTapback.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1A87303E8(a1, v16);
  if (!v17)
  {
    sub_1A860169C(v16);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v12 = 0;
    return v12 & 1;
  }

  v3 = v15;
  v14.receiver = v1;
  v14.super_class = IMStickerTapback;
  if (!objc_msgSendSuper2(&v14, sel_isEqual_, v15))
  {

    goto LABEL_9;
  }

  v4 = [v1 transferGUID];
  v5 = sub_1A88C82E8();
  v7 = v6;

  v8 = [v3 transferGUID];
  v9 = sub_1A88C82E8();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1A88C9398();
  }

  return v12 & 1;
}

id IMStickerTapback.init(associatedMessageType:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithAssociatedMessageType_];
}

unint64_t type metadata accessor for IMStickerTapback()
{
  result = qword_1EB306498;
  if (!qword_1EB306498)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB306498);
  }

  return result;
}

id sub_1A87EDED4(void *a1, id a2, uint64_t a3)
{
  v5 = [a2 transferGUID];
  sub_1A88C82E8();

  v6 = sub_1A88C82A8();
  LODWORD(a3) = (*(a3 + 16))(a3, v6);

  if (a3)
  {
    v7 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v8 = sub_1A88C82A8();
    v9 = [v7 initWithString_];
  }

  else
  {
    if (!a1)
    {
      return 0;
    }

    v10 = a1;
    sub_1A87394AC(MEMORY[0x1E69E7CC0]);
    type metadata accessor for Key(0);
    sub_1A8750554();
    v8 = sub_1A88C8188();

    v9 = [objc_opt_self() attributedStringWithAdaptiveImageGlyph:v10 attributes:v8];
  }

  return v9;
}

void sub_1A87EE2DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = sub_1A88C82A8();
  [a1 *a5];
}

void sub_1A87EE4A0(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 56);
  v7 = sub_1A88C82A8();
  if (v3)
  {
    v8 = sub_1A88C82A8();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1A88C7758();
  [a1 account:v7 chat:v8 style:v4 notifySentMessage:v5 sendTime:v9 isReplicating:v6];
}

void sub_1A87EE574(void *a1)
{
  v3 = *(v1 + 24);
  v4 = sub_1A88C82A8();
  if (v3)
  {
    v5 = sub_1A88C82A8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [a1 account:v4 chat:? style:? messageUpdated:?];
}

void sub_1A87EE620(void *a1)
{
  v3 = *(v1 + 24);
  v4 = sub_1A88C82A8();
  if (v3)
  {
    v5 = sub_1A88C82A8();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1A88C82A8();
  v7 = sub_1A88C82A8();
  [a1 chat:v4 chatPersonCentricID:v5 displayNameUpdated:v6 sender:v7];
}

void sub_1A87EE6F4(void *a1)
{
  v3 = *(v1 + 24);
  v4 = sub_1A88C82A8();
  if (v3)
  {
    v5 = sub_1A88C82A8();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1A88C82A8();
  [a1 chat:v4 chatPersonCentricID:v5 displayNameUpdated:v6];
}

void sub_1A87EE810(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v9 = *(v1 + 40);
  v8 = *(v1 + 48);
  sub_1A87EE928();
  v11[0] = v3;
  v11[1] = v4;
  v12 = v5;
  v13 = v7;
  v14 = v6;
  v15 = v9;
  v16 = v8;

  v10 = IMUnreadCountReportDelta.init(remoteIntentRepresentation:)(v11);
  [a1 unreadCountReportsUpdated_];
}

unint64_t sub_1A87EE928()
{
  result = qword_1ED8C92F8;
  if (!qword_1ED8C92F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8C92F8);
  }

  return result;
}

uint64_t sub_1A87EE9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[0] = a5;
  v9 = sub_1A88C7EC8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A88C7EF8();
  v13 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v5 + 16);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v5;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A85EB8C0;
  aBlock[3] = v19[0];
  v17 = _Block_copy(aBlock);

  _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1A85EE160(&qword_1ED8C9480, MEMORY[0x1E69E7F60]);
  sub_1A870CCE0(&unk_1EB3081F0);
  sub_1A85E8C68(&qword_1ED8C9470, &unk_1EB3081F0);
  sub_1A88C8CE8();
  MEMORY[0x1AC56F330](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v20);
}

uint64_t sub_1A87EEC7C()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB3064A0);
  sub_1A85EF0E4(v0, qword_1EB3064A0);
  return sub_1A88C7E48();
}

id sub_1A87EED10()
{
  result = [objc_allocWithZone(type metadata accessor for IMCTRCSUtilitiesManagerLiveDelegate()) init];
  qword_1EB338DA8 = result;
  return result;
}

char *sub_1A87EED40()
{
  v45 = sub_1A88C8A28();
  v35 = *(v45 - 8);
  v0 = MEMORY[0x1EEE9AC00](v45);
  v46 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v0);
  v40 = &v31 - v2;
  v3 = sub_1A88C8A18();
  v43 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - v6;
  v8 = sub_1A88C7EF8();
  v48 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  v44 = OBJC_IVAR____TtC17IMSharedUtilities35IMCTRCSUtilitiesManagerLiveDelegate_queue;
  v39 = "SatelliteResiliencyPeriod";
  v14 = MEMORY[0x1E69E7CC0];
  v42 = sub_1A85EE060(MEMORY[0x1E69E7CC0]);
  v41 = sub_1A8739288(v14);
  v37 = sub_1A85E9718(0, &qword_1ED8C95A0);
  v15 = sub_1A88C8A38();
  v38 = [objc_allocWithZone(MEMORY[0x1E69650A0]) initWithQueue_];

  type metadata accessor for IMCTRCSUtilitiesManagerLiveDelegate.Token();
  v36 = swift_allocObject();
  *(v36 + 16) = -1;
  v33 = v13;
  _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
  v55 = v14;
  sub_1A85EE160(&qword_1ED8C9580, MEMORY[0x1E69E8030]);
  sub_1A870CCE0(&qword_1EB3023F0);
  sub_1A85E8C68(&qword_1ED8C9590, &qword_1EB3023F0);
  v32 = v7;
  v31 = v3;
  sub_1A88C8CE8();
  v16 = v35;
  v17 = v40;
  v18 = v45;
  (*(v35 + 104))(v40, *MEMORY[0x1E69E8090], v45);
  sub_1A870CCE0(&unk_1EB306570);
  v19 = swift_allocObject();
  (*(v48 + 16))(v11, v13, v8);
  v20 = v43;
  (*(v43 + 16))(v34, v7, v3);
  (*(v16 + 16))(v46, v17, v18);
  v21 = sub_1A88C8A78();
  (*(v16 + 8))(v17, v18);
  (*(v20 + 8))(v32, v31);
  (*(v48 + 8))(v33, v8);
  v23 = v41;
  v22 = v42;
  v19[2] = v21;
  v19[3] = v22;
  v24 = v38;
  v19[4] = v23;
  v19[5] = v24;
  v19[6] = v36;
  v25 = v47;
  *&v47[v44] = v19;
  v26 = type metadata accessor for IMCTRCSUtilitiesManagerLiveDelegate();
  v54.receiver = v25;
  v54.super_class = v26;
  v27 = objc_msgSendSuper2(&v54, sel_init);
  v28 = *&v27[OBJC_IVAR____TtC17IMSharedUtilities35IMCTRCSUtilitiesManagerLiveDelegate_queue];
  v53 = v27;
  v49 = sub_1A87F3870;
  v50 = &v52;
  v51 = v28;
  v29 = v27;

  sub_1A88C8A58();

  return v29;
}

uint64_t sub_1A87EF320(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1A87F35D8(*a1);
  v3 = v2;
  out_token = -1;
  notify_register_check("kRCSEnabledDidChange", &out_token);
  v4 = out_token;
  type metadata accessor for IMCTRCSUtilitiesManagerLiveDelegate.Token();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  a1[3] = v5;
  notify_set_state(v4, v3 & 1);
  return notify_post("kRCSEnabledDidChange");
}

id sub_1A87EF3F0(void *a1)
{
  result = [a1 labelID];
  if (result)
  {
    v2 = result;
    sub_1A88C82E8();

    v4 = MEMORY[0x1EEE9AC00](v3);
    MEMORY[0x1EEE9AC00](v4);
    sub_1A870CCE0(&unk_1EB306560);
    sub_1A88C8A58();

    return v5;
  }

  return result;
}

void sub_1A87EF51C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v10 = *a1;
  if (*(*a1 + 16) && (v11 = sub_1A85F5F40(a2, a3), (v12 & 1) != 0))
  {
    v13 = *(v10[7] + 8 * v11);
    *a5 = v13;

    v14 = v13;
  }

  else
  {
    v15 = a1[2];
    v30[0] = 0;
    v16 = [v15 _getSystemConfiguration_withError_];
    v17 = v30[0];
    if (v16)
    {

      v18 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30[0] = *a1;
      sub_1A87AC9C8(v16, a2, a3, isUniquelyReferenced_nonNull_native);

      *a1 = v30[0];
      *a5 = v16;
    }

    else
    {
      v20 = v17;
      v21 = sub_1A88C7168();

      swift_willThrow();
      if (qword_1EB302278 != -1)
      {
        swift_once();
      }

      v22 = sub_1A88C7E58();
      sub_1A85EF0E4(v22, qword_1EB3064A0);
      v23 = v21;
      v24 = sub_1A88C7E38();
      v25 = sub_1A88C89C8();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        v28 = v21;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v29;
        *v27 = v29;
        _os_log_impl(&dword_1A85E5000, v24, v25, "Error getting system configuration: %@", v26, 0xCu);
        sub_1A85EF638(v27, &qword_1EB306540);
        MEMORY[0x1AC571F20](v27, -1, -1);
        MEMORY[0x1AC571F20](v26, -1, -1);
      }

      else
      {
      }

      *a5 = 0;
    }
  }
}

uint64_t sub_1A87EF7C8(void *a1)
{
  v2 = [a1 labelID];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_1A88C82E8();

  v5 = MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A870CCE0(&unk_1EB306560);
  sub_1A88C8A58();

  v6 = v30;
  if (!v30)
  {
    return 0;
  }

  v7 = [v30 operationStatus];
  if (v7 && (v8 = v7, v9 = [v7 registrationState], v8, v9 == 1))
  {
    v10 = [v30 chatCapabilities];
    if (v10 && (v11 = v10, v12 = [v10 revokeTimer], v11, v12))
    {
      if (qword_1EB302278 != -1)
      {
        swift_once();
      }

      v13 = sub_1A88C7E58();
      sub_1A85EF0E4(v13, qword_1EB3064A0);
      v14 = a1;
      v15 = v12;
      v16 = sub_1A88C7E38();
      v17 = sub_1A88C89A8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412546;
        *(v18 + 4) = v14;
        *(v18 + 12) = 2112;
        *(v18 + 14) = v15;
        *v19 = v14;
        v19[1] = v12;
        v20 = v14;
        v21 = v15;
        _os_log_impl(&dword_1A85E5000, v16, v17, "RCS chat capabilities (%@) has a valid revoke timer :%@. Network doesn't support interworking", v18, 0x16u);
        sub_1A870CCE0(&qword_1EB306540);
        swift_arrayDestroy();
        MEMORY[0x1AC571F20](v19, -1, -1);
        MEMORY[0x1AC571F20](v18, -1, -1);

        v22 = 0;
        v16 = v30;
        v6 = v21;
      }

      else
      {

        v22 = 0;
      }
    }

    else
    {
      if (qword_1EB302278 != -1)
      {
        swift_once();
      }

      v23 = sub_1A88C7E58();
      sub_1A85EF0E4(v23, qword_1EB3064A0);
      v24 = a1;
      v16 = sub_1A88C7E38();
      v25 = sub_1A88C89A8();

      if (os_log_type_enabled(v16, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        *(v26 + 4) = v24;
        *v27 = v24;
        v28 = v24;
        _os_log_impl(&dword_1A85E5000, v16, v25, "RCS chat capabilities (%@) has no valid revoke timer. Network supports interworking", v26, 0xCu);
        sub_1A85EF638(v27, &qword_1EB306540);
        MEMORY[0x1AC571F20](v27, -1, -1);
        MEMORY[0x1AC571F20](v26, -1, -1);
      }

      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

uint64_t sub_1A87EFBF8(void *a1, char a2)
{
  result = [a1 labelID];
  if (result)
  {
    v5 = result;
    sub_1A88C82E8();

    v7 = MEMORY[0x1EEE9AC00](v6);
    MEMORY[0x1EEE9AC00](v7);
    sub_1A870CCE0(&unk_1EB306560);
    sub_1A88C8A58();

    v8 = v41;
    if (v41)
    {
      v9 = [v41 operationStatus];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 registrationState];

        if (v11 == 1)
        {
          if (a2)
          {
            if (qword_1EB302278 != -1)
            {
              swift_once();
            }

            v12 = sub_1A88C7E58();
            sub_1A85EF0E4(v12, qword_1EB3064A0);
            v13 = a1;
            v14 = sub_1A88C7E38();
            v15 = sub_1A88C89A8();

            if (!os_log_type_enabled(v14, v15))
            {
              goto LABEL_26;
            }

            v16 = swift_slowAlloc();
            v17 = swift_slowAlloc();
            *v16 = 138412290;
            *(v16 + 4) = v13;
            *v17 = v13;
            v18 = v13;
            _os_log_impl(&dword_1A85E5000, v14, v15, "RCS chat capabilities (%@), is a chat bot.", v16, 0xCu);
            sub_1A85EF638(v17, &qword_1EB306540);
            MEMORY[0x1AC571F20](v17, -1, -1);
            v19 = v16;
            goto LABEL_16;
          }

          v20 = [v41 chatCapabilities];
          if (v20)
          {
            v21 = v20;
            v22 = [v20 spamReportingUri];

            if (v22)
            {
              v23 = sub_1A88C82E8();
              v25 = v24;

              if (qword_1EB302278 != -1)
              {
                swift_once();
              }

              v26 = sub_1A88C7E58();
              sub_1A85EF0E4(v26, qword_1EB3064A0);
              v27 = a1;

              v14 = sub_1A88C7E38();
              v28 = sub_1A88C89A8();

              if (!os_log_type_enabled(v14, v28))
              {

                goto LABEL_26;
              }

              v29 = swift_slowAlloc();
              v30 = swift_slowAlloc();
              v31 = swift_slowAlloc();
              v41 = v31;
              *v29 = 138412546;
              *(v29 + 4) = v27;
              *v30 = v27;
              *(v29 + 12) = 2080;
              v32 = v27;
              v33 = sub_1A85F0394(v23, v25, &v41);

              *(v29 + 14) = v33;
              _os_log_impl(&dword_1A85E5000, v14, v28, "RCS chat capabilities (%@) has a valid spam reporting URI :%s", v29, 0x16u);
              sub_1A85EF638(v30, &qword_1EB306540);
              MEMORY[0x1AC571F20](v30, -1, -1);
              sub_1A85F1084(v31);
              MEMORY[0x1AC571F20](v31, -1, -1);
              v19 = v29;
LABEL_16:
              MEMORY[0x1AC571F20](v19, -1, -1);
LABEL_26:

              return 1;
            }
          }

          if (qword_1EB302278 != -1)
          {
            swift_once();
          }

          v34 = sub_1A88C7E58();
          sub_1A85EF0E4(v34, qword_1EB3064A0);
          v35 = a1;
          v36 = sub_1A88C7E38();
          v37 = sub_1A88C89A8();

          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            *v38 = 138412290;
            *(v38 + 4) = v35;
            *v39 = v35;
            v40 = v35;
            _os_log_impl(&dword_1A85E5000, v36, v37, "RCS chat capabilities (%@) has no valid spam reporting URI", v38, 0xCu);
            sub_1A85EF638(v39, &qword_1EB306540);
            MEMORY[0x1AC571F20](v39, -1, -1);
            MEMORY[0x1AC571F20](v38, -1, -1);
          }
        }
      }
    }

    return 0;
  }

  return result;
}

id sub_1A87F016C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v4 = sub_1A87F2E88(a3, a4, a1, a2);
  if (!v4)
  {
    if (qword_1EB302278 != -1)
    {
      swift_once();
    }

    v10 = sub_1A88C7E58();
    sub_1A85EF0E4(v10, qword_1EB3064A0);

    v5 = sub_1A88C7E38();
    v11 = sub_1A88C89B8();

    if (os_log_type_enabled(v5, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136315394;

      sub_1A870CCE0(&qword_1EB304068);
      v14 = sub_1A88C8338();
      v16 = sub_1A85F0394(v14, v15, &v24);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;

      v17 = sub_1A88C8338();
      v19 = sub_1A85F0394(v17, v18, &v24);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_1A85E5000, v5, v11, "No subscription found for simID: %s phoneNumber: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC571F20](v13, -1, -1);
      MEMORY[0x1AC571F20](v12, -1, -1);
    }

    goto LABEL_12;
  }

  v5 = v4;
  v6 = sub_1A87EF3F0(v4);
  if (!v6)
  {
LABEL_12:

    return 0;
  }

  v7 = v6;
  if ([v6 respondsToSelector_])
  {
    v8 = [v7 respondsToSelector_];
    v9 = [v7 featureSupported];
    if (v8)
    {
      if (!v9 || ([v7 featureDisabledByProfile] & 1) != 0)
      {

        goto LABEL_12;
      }

      v22 = [v7 featureDisabledStoreDemo];
    }

    else
    {
      if (!v9)
      {

        return 0;
      }

      v22 = [v7 featureDisabledByProfile];
    }

    v23 = v22;

    return (v23 ^ 1);
  }

  else
  {
    v21 = [v7 featureSupported];

    return v21;
  }
}

id sub_1A87F0448(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v4 = sub_1A87F2E88(a3, a4, a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1A87EF3F0(v4);
    if (v6)
    {
      v7 = v6;
      v8 = [v6 chatCapabilities];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 revokeTimer];

        return v10;
      }

      if (qword_1EB302278 != -1)
      {
        swift_once();
      }

      v34 = sub_1A88C7E58();
      sub_1A85EF0E4(v34, qword_1EB3064A0);

      v35 = sub_1A88C7E38();
      v36 = sub_1A88C89B8();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v45 = v44;
        *v37 = 136315394;

        sub_1A870CCE0(&qword_1EB304068);
        v38 = sub_1A88C8338();
        v40 = sub_1A85F0394(v38, v39, &v45);

        *(v37 + 4) = v40;
        *(v37 + 12) = 2080;

        v41 = sub_1A88C8338();
        v43 = sub_1A85F0394(v41, v42, &v45);

        *(v37 + 14) = v43;
        _os_log_impl(&dword_1A85E5000, v35, v36, "No Chat capabilities found in RCS config for simID: %s phoneNumber: %s", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1AC571F20](v44, -1, -1);
        MEMORY[0x1AC571F20](v37, -1, -1);
      }
    }

    else
    {
      if (qword_1EB302278 != -1)
      {
        swift_once();
      }

      v23 = sub_1A88C7E58();
      sub_1A85EF0E4(v23, qword_1EB3064A0);

      v24 = sub_1A88C7E38();
      v25 = sub_1A88C89B8();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v45 = v27;
        *v26 = 136315394;

        sub_1A870CCE0(&qword_1EB304068);
        v28 = sub_1A88C8338();
        v30 = sub_1A85F0394(v28, v29, &v45);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2080;

        v31 = sub_1A88C8338();
        v33 = sub_1A85F0394(v31, v32, &v45);

        *(v26 + 14) = v33;
        _os_log_impl(&dword_1A85E5000, v24, v25, "No RCS config found for simID: %s phoneNumber: %s", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1AC571F20](v27, -1, -1);
        MEMORY[0x1AC571F20](v26, -1, -1);
      }
    }
  }

  else
  {
    if (qword_1EB302278 != -1)
    {
      swift_once();
    }

    v12 = sub_1A88C7E58();
    sub_1A85EF0E4(v12, qword_1EB3064A0);

    v13 = sub_1A88C7E38();
    v14 = sub_1A88C89B8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v45 = v16;
      *v15 = 136315394;

      sub_1A870CCE0(&qword_1EB304068);
      v17 = sub_1A88C8338();
      v19 = sub_1A85F0394(v17, v18, &v45);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;

      v20 = sub_1A88C8338();
      v22 = sub_1A85F0394(v20, v21, &v45);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_1A85E5000, v13, v14, "No subscription found for simID: %s phoneNumber: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC571F20](v16, -1, -1);
      MEMORY[0x1AC571F20](v15, -1, -1);
    }
  }

  return 0;
}

id sub_1A87F0A04(void *a1)
{
  result = [a1 labelID];
  if (result)
  {
    v2 = result;
    sub_1A88C82E8();

    v4 = MEMORY[0x1EEE9AC00](v3);
    MEMORY[0x1EEE9AC00](v4);
    sub_1A870CCE0(&unk_1EB306560);
    sub_1A88C8A58();

    if (v10)
    {
      if ([v10 respondsToSelector:sel_featureEnabledByDefault])
      {
        v5 = [v10 featureEnabledByDefault];
        v6 = v10;
      }

      else
      {
        if (qword_1EB302278 != -1)
        {
          swift_once();
        }

        v7 = sub_1A88C7E58();
        sub_1A85EF0E4(v7, qword_1EB3064A0);
        v6 = sub_1A88C7E38();
        v8 = sub_1A88C89B8();
        if (os_log_type_enabled(v6, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&dword_1A85E5000, v6, v8, "Feature enabled by default is unsupported.", v9, 2u);
          MEMORY[0x1AC571F20](v9, -1, -1);
        }

        v5 = 0;
      }

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A87F0C80(void *a1)
{
  v2 = sub_1A87EF3F0(a1);
  if (!v2)
  {
    if (qword_1EB302278 != -1)
    {
      swift_once();
    }

    v8 = sub_1A88C7E58();
    sub_1A85EF0E4(v8, qword_1EB3064A0);
    v9 = a1;
    v3 = sub_1A88C7E38();
    v10 = sub_1A88C89A8();

    if (os_log_type_enabled(v3, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32 = v12;
      *v11 = 136446466;
      *(v11 + 4) = sub_1A85F0394(0x2864656C62616E65, 0xED0000293A726F66, &v32);
      *(v11 + 12) = 2080;
      v13 = [v9 labelID];
      if (v13)
      {
        v14 = v13;
        v15 = sub_1A88C82E8();
        v17 = v16;
      }

      else
      {
        v15 = 0x3E6C696E3CLL;
        v17 = 0xE500000000000000;
      }

      v30 = sub_1A85F0394(v15, v17, &v32);

      *(v11 + 14) = v30;
      _os_log_impl(&dword_1A85E5000, v3, v10, "%{public}s failed to find system configuration for subscription with ID %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC571F20](v12, -1, -1);
      MEMORY[0x1AC571F20](v11, -1, -1);
    }

    goto LABEL_23;
  }

  v3 = v2;
  v4 = [v2 operationStatus];
  if (!v4)
  {
    if (qword_1EB302278 != -1)
    {
      swift_once();
    }

    v18 = sub_1A88C7E58();
    sub_1A85EF0E4(v18, qword_1EB3064A0);
    v19 = a1;
    v20 = sub_1A88C7E38();
    v21 = sub_1A88C89A8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = v23;
      *v22 = 136446466;
      *(v22 + 4) = sub_1A85F0394(0x2864656C62616E65, 0xED0000293A726F66, &v32);
      *(v22 + 12) = 2080;
      v24 = [v19 labelID];
      if (v24)
      {
        v25 = v24;
        v26 = sub_1A88C82E8();
        v28 = v27;
      }

      else
      {
        v26 = 0x3E6C696E3CLL;
        v28 = 0xE500000000000000;
      }

      v31 = sub_1A85F0394(v26, v28, &v32);

      *(v22 + 14) = v31;
      _os_log_impl(&dword_1A85E5000, v20, v21, "%{public}s failed to find RCS operation status for subscription with ID %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC571F20](v23, -1, -1);
      MEMORY[0x1AC571F20](v22, -1, -1);
    }

LABEL_23:
    return 0;
  }

  v5 = v4;
  v6 = [v4 switchState];
  if (v6 == -1)
  {
    v29 = sub_1A87F0A04(a1);

    return v29 & 1;
  }

  if (v6 <= 1)
  {

    return 1;
  }

  return 0;
}

uint64_t sub_1A87F1080@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38[1] = a2;
  sub_1A870CCE0(&unk_1EB306530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E2770;
  *(inited + 32) = sub_1A88C82E8();
  *(inited + 40) = v4;
  *(inited + 48) = 0xD000000000000019;
  *(inited + 56) = 0x80000001A891C2A0;
  sub_1A8757C74(inited);

  memset(v42, 0, sizeof(v42));
  memset(v41, 0, sizeof(v41));
  v5 = [objc_opt_self() sharedInstance];
  v6 = sub_1A88C85E8();

  sub_1A87303E8(v42, &v43);
  v7 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    v8 = sub_1A870C278(&v43, *(&v44 + 1));
    v9 = *(v7 - 8);
    MEMORY[0x1EEE9AC00](v8);
    v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_1A88C9388();
    (*(v9 + 8))(v11, v7);
    sub_1A85F1084(&v43);
  }

  else
  {
    v12 = 0;
  }

  sub_1A87303E8(v41, &v43);
  v13 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    v14 = sub_1A870C278(&v43, *(&v44 + 1));
    v15 = *(v13 - 8);
    MEMORY[0x1EEE9AC00](v14);
    v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v17);
    v18 = sub_1A88C9388();
    (*(v15 + 8))(v17, v13);
    sub_1A85F1084(&v43);
  }

  else
  {
    v18 = 0;
  }

  v19 = [v5 copyCarrierBundleValueForSubscriptionContext:a1 keyHierarchy:v6 defaultValue:v12 valueIfError:v18];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v19)
  {
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
    sub_1A85EF638(v41, &qword_1EB3057B0);
    sub_1A85EF638(v42, &qword_1EB3057B0);
  }

  else
  {
    sub_1A85EF638(v41, &qword_1EB3057B0);
    sub_1A85EF638(v42, &qword_1EB3057B0);
    v39 = 0u;
    v40 = 0u;
  }

  v43 = v39;
  v44 = v40;
  if (*(&v40 + 1))
  {
    v20 = swift_dynamicCast() ^ 1;
  }

  else
  {
    sub_1A85EF638(&v43, &qword_1EB3057B0);
    LOBYTE(v20) = 1;
  }

  if (qword_1EB302278 != -1)
  {
    swift_once();
  }

  v21 = sub_1A88C7E58();
  sub_1A85EF0E4(v21, qword_1EB3064A0);
  v22 = a1;
  v23 = sub_1A88C7E38();
  v24 = sub_1A88C89D8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v43 = v27;
    *v25 = 136315394;
    if (v20)
    {
      v28 = 0xE500000000000000;
      v29 = 0x3E6C696E3CLL;
    }

    else
    {
      v29 = sub_1A88C88B8();
      v28 = v30;
    }

    v31 = sub_1A85F0394(v29, v28, &v43);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2112;
    *(v25 + 14) = v22;
    *v26 = v22;
    v32 = v22;
    _os_log_impl(&dword_1A85E5000, v23, v24, "Retrieved carrierBundleValue %s from carrier bundle for context %@", v25, 0x16u);
    sub_1A85EF638(v26, &qword_1EB306540);
    MEMORY[0x1AC571F20](v26, -1, -1);
    sub_1A85F1084(v27);
    MEMORY[0x1AC571F20](v27, -1, -1);
    MEMORY[0x1AC571F20](v25, -1, -1);
  }

  v33 = sub_1A88C7478();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = v38 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C7458();
  sub_1A88C73C8();
  return (*(v34 + 8))(v36, v33);
}

uint64_t sub_1A87F16FC(void *a1)
{
  v2 = [a1 labelID];
  if (v2)
  {
    v3 = v2;
    sub_1A88C82E8();

    v5 = MEMORY[0x1EEE9AC00](v4);
    MEMORY[0x1EEE9AC00](v5);
    sub_1A870CCE0(&qword_1EB306558);
    sub_1A88C8A58();

    return v14;
  }

  else
  {
    if (qword_1EB302278 != -1)
    {
      swift_once();
    }

    v7 = sub_1A88C7E58();
    sub_1A85EF0E4(v7, qword_1EB3064A0);
    v8 = a1;
    v9 = sub_1A88C7E38();
    v10 = sub_1A88C89C8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_1A85E5000, v9, v10, "Context %@ is missing a labelID. Cannot determine if retryEnabled for this context.", v11, 0xCu);
      sub_1A85EF638(v12, &qword_1EB306540);
      MEMORY[0x1AC571F20](v12, -1, -1);
      MEMORY[0x1AC571F20](v11, -1, -1);
    }

    return 2;
  }
}

uint64_t sub_1A87F1938(void *a1)
{
  v2 = sub_1A87EF3F0(a1);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 identity];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 impi];

      v7 = sub_1A88C82E8();
      return v7;
    }
  }

  else
  {
    if (qword_1EB302278 != -1)
    {
      swift_once();
    }

    v9 = sub_1A88C7E58();
    sub_1A85EF0E4(v9, qword_1EB3064A0);
    v10 = a1;
    v3 = sub_1A88C7E38();
    v11 = sub_1A88C89A8();

    if (os_log_type_enabled(v3, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_1A85F0394(0xD000000000000015, 0x80000001A891C280, &v20);
      *(v12 + 12) = 2080;
      v14 = [v10 labelID];
      if (v14)
      {
        v15 = v14;
        v16 = sub_1A88C82E8();
        v18 = v17;
      }

      else
      {
        v18 = 0xE500000000000000;
        v16 = 0x3E6C696E3CLL;
      }

      v19 = sub_1A85F0394(v16, v18, &v20);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_1A85E5000, v3, v11, "%{public}s failed to find system configuration for subscription with ID %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC571F20](v13, -1, -1);
      MEMORY[0x1AC571F20](v12, -1, -1);
    }
  }

  return 0;
}

double sub_1A87F1B7C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v8 = [objc_opt_self() sharedInstance];
  v9 = sub_1A88C85E8();
  sub_1A87303E8(a2, v24);
  v10 = v25;
  if (v25)
  {
    v11 = sub_1A870C278(v24, v25);
    v12 = *(v10 - 8);
    MEMORY[0x1EEE9AC00](v11);
    v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v14);
    v15 = sub_1A88C9388();
    (*(v12 + 8))(v14, v10);
    sub_1A85F1084(v24);
  }

  else
  {
    v15 = 0;
  }

  sub_1A87303E8(a3, v24);
  v16 = v25;
  if (v25)
  {
    v17 = sub_1A870C278(v24, v25);
    v18 = *(v16 - 8);
    MEMORY[0x1EEE9AC00](v17);
    v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v20);
    v21 = sub_1A88C9388();
    (*(v18 + 8))(v20, v16);
    sub_1A85F1084(v24);
  }

  else
  {
    v21 = 0;
  }

  v22 = [v8 copyCarrierBundleValueForSubscriptionContext:a1 keyHierarchy:v9 defaultValue:v15 valueIfError:v21];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v22)
  {
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

id sub_1A87F1E48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMCTRCSUtilitiesManagerLiveDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A87F1ED4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 ctSubscriptionInfo];

  return sub_1A87EE9BC(sub_1A87EF320, 0, &unk_1F1BB17B0, sub_1A87F3578, &unk_1F1BB17C8);
}

uint64_t sub_1A87F1FE0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 ctSubscriptionInfo];

  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = [v1 __im_subscriptionsWithRCSSupport];

  sub_1A85E9718(0, &qword_1ED8C8A98);
  v3 = sub_1A88C85F8();

  return v3;
}

uint64_t sub_1A87F20B8(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 copyIsoCountryCodeForSubscriptionContext_];

  v4 = sub_1A88C82E8();
  return v4;
}

id sub_1A87F2138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = [objc_opt_self() sharedInstance];
  v7 = sub_1A88C82A8();
  v8 = sub_1A88C82A8();
  v9 = [v6 getBoolFromDomain:v7 forKey:v8 defaultValue:a5 & 1];

  return v9;
}

void sub_1A87F21EC(char a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = sub_1A88C82A8();
  v4 = sub_1A88C82A8();
  [v2 setBool:a1 & 1 forDomain:v3 forKey:v4];
}

void sub_1A87F22B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 + 64;
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_10:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v13 = (*(v1 + 48) + ((v7 << 10) | (16 * v12)));
    v14 = *v13;
    v15 = v13[1];
    v16 = objc_opt_self();

    v17 = [v16 sharedInstance];
    v18 = [v17 ctSubscriptionInfo];

    if (v18 && (v19 = v1, v20 = sub_1A88C82A8(), v21 = [v18 __im_subscriptionContextForForSimID_], v18, v20, v1 = v19, v21))
    {
    }

    else
    {
      v8 = sub_1A85F5F40(v14, v15);
      v10 = v9;

      if (v10)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *a1;
        v25 = *a1;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1A87B1A94();
          v23 = v25;
        }

        sub_1A87B05BC(v8, v23);
        *a1 = v23;
      }
    }
  }

  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v11);
    ++v7;
    if (v5)
    {
      v7 = v11;
      goto LABEL_10;
    }
  }
}

void sub_1A87F2554(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a1[3];
  sub_1A87F35D8(*a1);
  v10 = v9 & 1;

  v11 = a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *a1;
  sub_1A87AC9C8(a4, a2, a3, isUniquelyReferenced_nonNull_native);

  *a1 = v14;
  sub_1A87F35D8(v14);
  if (v10 != (v13 & 1))
  {
    notify_set_state(*(v8 + 16), v13 & 1);

    notify_post("kRCSEnabledDidChange");
  }
}

void sub_1A87F27BC(void *a1, char a2)
{
  if (a1)
  {
    v4 = [a1 labelID];
    if (v4)
    {
      v5 = v4;
      sub_1A88C82E8();

      if (qword_1EB302278 != -1)
      {
        swift_once();
      }

      v6 = sub_1A88C7E58();
      sub_1A85EF0E4(v6, qword_1EB3064A0);
      v7 = a1;
      v8 = sub_1A88C7E38();
      v9 = sub_1A88C89A8();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 67109378;
        *(v10 + 4) = a2 & 1;
        *(v10 + 8) = 2112;
        *(v10 + 10) = v7;
        *v11 = a1;
        v12 = v7;
        _os_log_impl(&dword_1A85E5000, v8, v9, "requiresResiliency changed to %{BOOL}d (i.e., RCS retryEnabled) for context %@. Enqueueing...", v10, 0x12u);
        sub_1A85EF638(v11, &qword_1EB306540);
        MEMORY[0x1AC571F20](v11, -1, -1);
        MEMORY[0x1AC571F20](v10, -1, -1);
      }

      v14 = MEMORY[0x1EEE9AC00](v13);
      MEMORY[0x1EEE9AC00](v14);
      sub_1A88C8A58();
    }

    else
    {
      if (qword_1EB302278 != -1)
      {
        swift_once();
      }

      v15 = sub_1A88C7E58();
      sub_1A85EF0E4(v15, qword_1EB3064A0);
      v16 = a1;
      v21 = sub_1A88C7E38();
      v17 = sub_1A88C89C8();

      if (os_log_type_enabled(v21, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412546;
        *(v18 + 4) = v16;
        *(v18 + 12) = 2112;
        *(v18 + 14) = v16;
        *v19 = a1;
        v19[1] = a1;
        v20 = v16;
        _os_log_impl(&dword_1A85E5000, v21, v17, "Context %@ is missing a labelID. Ignoring update to requiresResiliency (i.e., RCS retryEnabled) for context %@", v18, 0x16u);
        sub_1A870CCE0(&qword_1EB306540);
        swift_arrayDestroy();
        MEMORY[0x1AC571F20](v19, -1, -1);
        MEMORY[0x1AC571F20](v18, -1, -1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A87F2B64(uint64_t a1, uint64_t a2, unint64_t a3, char a4, void *a5)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(a1 + 8);
  sub_1A87ACB0C(a4, a2, a3, isUniquelyReferenced_nonNull_native);
  *(a1 + 8) = v24;
  if (qword_1EB302278 != -1)
  {
    swift_once();
  }

  v11 = sub_1A88C7E58();
  sub_1A85EF0E4(v11, qword_1EB3064A0);
  v12 = a5;

  oslog = sub_1A88C7E38();
  v13 = sub_1A88C89B8();

  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v14 = 136315906;
    v21 = a2;
    v16 = sub_1A88C81B8();
    v18 = v17;

    v19 = sub_1A85F0394(v16, v18, &v24);

    *(v14 + 4) = v19;
    *(v14 + 12) = 1024;
    *(v14 + 14) = a4 & 1;
    *(v14 + 18) = 2112;
    *(v14 + 20) = v12;
    *v15 = a5;
    *(v14 + 28) = 2080;
    v20 = v12;
    *(v14 + 30) = sub_1A85F0394(v21, a3, &v24);
    _os_log_impl(&dword_1A85E5000, oslog, v13, "Updated state for RCS retryEnabled from %s -> %{BOOL}d for context %@ labelID %s", v14, 0x26u);
    sub_1A85EF638(v15, &qword_1EB306540);
    MEMORY[0x1AC571F20](v15, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v22, -1, -1);
    MEMORY[0x1AC571F20](v14, -1, -1);
  }

  else
  {
  }
}

id sub_1A87F2E88(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 ctSubscriptionInfo];

  if (!v7)
  {
    return 0;
  }

  if (a2)
  {
    a2 = sub_1A88C82A8();
  }

  if (a4)
  {
    a4 = sub_1A88C82A8();
  }

  v8 = [v7 __im_subscriptionContextForForSimID_phoneNumber_];

  return v8;
}

uint64_t sub_1A87F2F6C(void *a1)
{
  sub_1A870CCE0(&unk_1EB306530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E2770;
  *(inited + 32) = sub_1A88C82E8();
  *(inited + 40) = v3;
  *(inited + 48) = 0xD000000000000022;
  *(inited + 56) = 0x80000001A891C250;
  sub_1A8757C74(inited);

  memset(v38, 0, sizeof(v38));
  memset(v37, 0, sizeof(v37));
  v4 = [objc_opt_self() sharedInstance];
  v5 = sub_1A88C85E8();

  sub_1A87303E8(v38, &v39);
  v6 = *(&v40 + 1);
  if (*(&v40 + 1))
  {
    v7 = sub_1A870C278(&v39, *(&v40 + 1));
    v8 = *(v6 - 8);
    MEMORY[0x1EEE9AC00](v7);
    v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_1A88C9388();
    (*(v8 + 8))(v10, v6);
    sub_1A85F1084(&v39);
  }

  else
  {
    v11 = 0;
  }

  sub_1A87303E8(v37, &v39);
  v12 = *(&v40 + 1);
  if (*(&v40 + 1))
  {
    v13 = sub_1A870C278(&v39, *(&v40 + 1));
    v14 = *(v12 - 8);
    MEMORY[0x1EEE9AC00](v13);
    v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v16);
    v17 = sub_1A88C9388();
    (*(v14 + 8))(v16, v12);
    sub_1A85F1084(&v39);
  }

  else
  {
    v17 = 0;
  }

  v18 = [v4 copyCarrierBundleValueForSubscriptionContext:a1 keyHierarchy:v5 defaultValue:v11 valueIfError:v17];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v18)
  {
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
    sub_1A85EF638(v37, &qword_1EB3057B0);
    sub_1A85EF638(v38, &qword_1EB3057B0);
  }

  else
  {
    sub_1A85EF638(v37, &qword_1EB3057B0);
    sub_1A85EF638(v38, &qword_1EB3057B0);
    v35 = 0u;
    v36 = 0u;
  }

  v39 = v35;
  v40 = v36;
  if (*(&v36 + 1))
  {
    v19 = swift_dynamicCast();
    if (v19)
    {
      v20 = *&v38[0];
    }

    else
    {
      v20 = 0;
    }

    v21 = v19 ^ 1;
  }

  else
  {
    sub_1A85EF638(&v39, &qword_1EB3057B0);
    v20 = 0;
    v21 = 1;
  }

  if (qword_1EB302278 != -1)
  {
    swift_once();
  }

  v22 = sub_1A88C7E58();
  sub_1A85EF0E4(v22, qword_1EB3064A0);
  v23 = a1;
  v24 = sub_1A88C7E38();
  v25 = sub_1A88C89D8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v39 = v28;
    *v26 = 136315394;
    if (v21)
    {
      v29 = 0xE500000000000000;
      v30 = 0x3E6C696E3CLL;
    }

    else
    {
      *&v38[0] = v20;
      sub_1A87F3524();
      v30 = sub_1A88C8CA8();
      v29 = v31;
    }

    v32 = sub_1A85F0394(v30, v29, &v39);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2112;
    *(v26 + 14) = v23;
    *v27 = v23;
    v33 = v23;
    _os_log_impl(&dword_1A85E5000, v24, v25, "Retrieved retryInterval %s from carrier bundle for context %@", v26, 0x16u);
    sub_1A85EF638(v27, &qword_1EB306540);
    MEMORY[0x1AC571F20](v27, -1, -1);
    sub_1A85F1084(v28);
    MEMORY[0x1AC571F20](v28, -1, -1);
    MEMORY[0x1AC571F20](v26, -1, -1);
  }

  if (v21)
  {
    return 15;
  }

  else
  {
    return v20;
  }
}

unint64_t sub_1A87F3524()
{
  result = qword_1EB306548;
  if (!qword_1EB306548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB306548);
  }

  return result;
}

uint64_t sub_1A87F3578()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  swift_beginAccess();
  v1(v2 + 24);
  return swift_endAccess();
}

void sub_1A87F35D8(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_11:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(a1 + 56) + ((v7 << 9) | (8 * v9)));
    if (v10)
    {
      v11 = v10;
      v12 = [v11 operationStatus];
      if (v12)
      {
        v13 = v12;
        if (![v12 switchState] || objc_msgSend(v13, sel_switchState) == 1)
        {

LABEL_17:

          return;
        }

        if ([v13 switchState] != -1)
        {

          goto LABEL_5;
        }

        v14 = [v11 featureEnabledByDefault];

        if (v14)
        {
          goto LABEL_17;
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      goto LABEL_17;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_1A87F3780@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v5 = *(result + 8);
  if (*(v5 + 16) && (result = sub_1A85F5F40(*(v3 + 16), *(v3 + 24)), (v6 & 1) != 0))
  {
    v7 = *(*(v5 + 56) + result);
  }

  else
  {
    v7 = 2;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1A87F37F4@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  swift_beginAccess();
  v3(&v6, v4 + 24);
  result = swift_endAccess();
  *a1 = v6;
  return result;
}

uint64_t sub_1A87F3884()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  swift_beginAccess();
  v1(v2 + 24);
  return swift_endAccess();
}

uint64_t sub_1A87F39A8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1A88C7E58();
  sub_1A85EFC04(v3, a2);
  sub_1A85EF0E4(v3, a2);
  return sub_1A88C7E48();
}

uint64_t sub_1A87F3A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1A87AC3E4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1A85F5F40(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1A87B1008();
        v14 = v16;
      }

      result = sub_1A87B32C4(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1A87F3B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1A85E99B0(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1A87AC700(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1A85EF638(a1, &qword_1EB3057B0);
    sub_1A88BF09C(a2, a3, v9);

    return sub_1A85EF638(v9, &qword_1EB3057B0);
  }

  return result;
}

uint64_t sub_1A87F3BE8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A88C72E8();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(a1, 1, v5);
  if (v7 == 1)
  {
    sub_1A85EF638(a1, &unk_1EB309060);
    v8 = sub_1A870CCE0(&unk_1EB309060);
    MEMORY[0x1EEE9AC00](v8 - 8);
    v10 = &v15 - v9;
    sub_1A88BF140(a2, &v15 - v9);
    (*(v6 + 8))(a2, v5);
    return sub_1A85EF638(v10, &unk_1EB309060);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 32))(v13, a1, v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_1A87ACC40(v13, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v6 + 8))(a2, v5);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_1A87F3DD0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = sub_1A87ACE40(a1, a2, a3 & 1, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    result = sub_1A8717F68(a3 & 1);
    if (v10)
    {
      v11 = result;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        sub_1A87B2038();
        v13 = v15;
      }

      result = sub_1A87B0A24(v11, v13);
      *v4 = v13;
    }
  }

  return result;
}

uint64_t sub_1A87F3EA4()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB306580);
  sub_1A85EF0E4(v0, qword_1EB306580);
  return sub_1A88C7E48();
}

id sub_1A87F3F24()
{
  result = [objc_allocWithZone(IMRemoteIntentUserVault) init];
  qword_1EB306598 = result;
  return result;
}

void __swiftcall IMRemoteIntentUserVault.init()(IMRemoteIntentUserVault *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id IMRemoteIntentUserVault.init()()
{
  *(v0 + OBJC_IVAR___IMRemoteIntentUserVault_commonPathsMap) = MEMORY[0x1E69E7CC8];
  v2.super_class = IMRemoteIntentUserVault;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t IMRemoteIntentUserVault.convertedCommonPath(forDirectory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = OBJC_IVAR___IMRemoteIntentUserVault_commonPathsMap;
  swift_beginAccess();
  v7 = *&v2[v6];
  if (*(v7 + 16) && (v8 = sub_1A8716D30(a1), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = sub_1A88C72E8();
    (*(*(v12 - 8) + 16))(a2, v11 + *(*(v12 - 8) + 72) * v10, v12);
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v14 = sub_1A88C72E8();
    v15 = *(v14 - 8);
    v16 = *(v15 + 64);
    MEMORY[0x1EEE9AC00](v14);
    v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
    v18 = &v45 - v17;
    v19 = [v3 baseDirectory];
    if (v19)
    {
      v47 = &v45;
      v48 = v14;
      v49 = a2;
      v20 = v19;
      sub_1A88C7288();

      v46 = &v45;
      MEMORY[0x1EEE9AC00](v21);
      v22 = &v45 - v17;
      sub_1A88C72A8();
      sub_1A88C72A8();
      v23 = sub_1A88C8468();

      if (v23)
      {
        v24 = *(v15 + 16);
        v25 = v48;
        v26 = v24(v22, a1, v48);
      }

      else
      {
        sub_1A88C72A8();
        sub_1A88C7258();

        v24 = *(v15 + 16);
        v25 = v48;
      }

      v48 = &v45;
      MEMORY[0x1EEE9AC00](v26);
      v41 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v24(v41, a1, v25);
      v42 = sub_1A870CCE0(&unk_1EB309060);
      v45 = &v45;
      MEMORY[0x1EEE9AC00](v42 - 8);
      v44 = &v45 - v43;
      v24(&v45 - v43, v22, v25);
      (*(v15 + 56))(v44, 0, 1, v25);
      swift_beginAccess();
      sub_1A87F3BE8(v44, v41);
      swift_endAccess();
      (*(v15 + 8))(v18, v25);
      return (*(v15 + 32))(v49, v22, v25);
    }

    else
    {
      if (qword_1EB302288 != -1)
      {
        swift_once();
      }

      v27 = sub_1A88C7E58();
      v28 = sub_1A85EF0E4(v27, qword_1EB306580);
      MEMORY[0x1EEE9AC00](v28);
      v29 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v48 = *(v15 + 16);
      (v48)(v29, a1, v14);
      v30 = sub_1A88C7E38();
      v31 = sub_1A88C89C8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v47 = &v45;
        v33 = v32;
        v34 = swift_slowAlloc();
        v49 = a2;
        v50[0] = v34;
        v46 = v34;
        *v33 = 136315138;
        sub_1A8746020();
        v35 = sub_1A88C9348();
        v36 = v14;
        v38 = v37;
        (*(v15 + 8))(v29, v36);
        v39 = sub_1A85F0394(v35, v38, v50);
        v14 = v36;

        *(v33 + 4) = v39;
        _os_log_impl(&dword_1A85E5000, v30, v31, "Failed to return a common path for %s because the base user vault directory was not found.", v33, 0xCu);
        v40 = v46;
        sub_1A85F1084(v46);
        a2 = v49;
        MEMORY[0x1AC571F20](v40, -1, -1);
        MEMORY[0x1AC571F20](v33, -1, -1);
      }

      else
      {

        (*(v15 + 8))(v29, v14);
      }

      return (v48)(a2, a1, v14);
    }
  }
}

uint64_t IMRemoteIntentUserVault.convertedPath(forRemoteFile:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A88C72E8();
  v12 = *(v3 - 8);
  v4 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = [v1 baseDirectory];
  v7 = MEMORY[0x1EEE9AC00](v6);
  if (v7)
  {
    v8 = v7;
    sub_1A88C7288();

    (*(v12 + 32))(&v11 - v5, &v11 - v5, v3);
    sub_1A88C72A8();
    sub_1A88C7258();

    (*(v12 + 8))(&v11 - v5, v3);
    return (*(v12 + 56))(a1, 0, 1, v3);
  }

  else
  {
    v10 = *(v12 + 56);

    return v10(a1, 1, 1, v3);
  }
}

unint64_t type metadata accessor for IMRemoteIntentUserVault()
{
  result = qword_1EB3065A8;
  if (!qword_1EB3065A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB3065A8);
  }

  return result;
}

uint64_t sub_1A87F4B3C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = &v6 - v1;
  (*(v3 + 16))(&v6 - v1);
  v4 = type metadata accessor for MainThreadOnly();
  return MainThreadOnly.valueAssertingIfNotMainThread.setter(v2, v4);
}

void (*MainThreadOnly.valueAssertingIfNotMainThread.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  MainThreadOnly.valueAssertingIfNotMainThread.getter(a2, v11);
  return sub_1A87F4D18;
}

void sub_1A87F4D18(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    MainThreadOnly.valueAssertingIfNotMainThread.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    MainThreadOnly.valueAssertingIfNotMainThread.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1A87F4DD8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A87F4E48(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1A87F4F88(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

id sub_1A87F531C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v33 = (v32 + OBJC_IVAR___IMBrandInfo_brandLogoGuid);
  *v33 = 0;
  v33[1] = 0;
  v34 = (v32 + OBJC_IVAR___IMBrandInfo_brandURI);
  *v34 = a1;
  v34[1] = a2;
  v35 = (v32 + OBJC_IVAR___IMBrandInfo_name);
  *v35 = a3;
  v35[1] = a4;
  *(v32 + OBJC_IVAR___IMBrandInfo_categories) = a5;
  v36 = (v32 + OBJC_IVAR___IMBrandInfo_primaryPhoneNumber);
  *v36 = a6;
  v36[1] = a7;
  v37 = (v32 + OBJC_IVAR___IMBrandInfo_primaryBrandColorHexString);
  *v37 = a8;
  v37[1] = a9;
  v38 = (v32 + OBJC_IVAR___IMBrandInfo_secondaryBrandColorHexString);
  *v38 = a10;
  v38[1] = a11;
  *(v32 + OBJC_IVAR___IMBrandInfo_isVerified) = a12;
  v39 = (v32 + OBJC_IVAR___IMBrandInfo_localizedDescription);
  *v39 = a13;
  v39[1] = a14;
  v40 = (v32 + OBJC_IVAR___IMBrandInfo_verifiedBy);
  *v40 = a15;
  v40[1] = a16;
  v41 = (v32 + OBJC_IVAR___IMBrandInfo_website);
  *v41 = a17;
  v41[1] = a18;
  v42 = (v32 + OBJC_IVAR___IMBrandInfo_messageNumber);
  *v42 = a19;
  v42[1] = a20;
  v43 = (v32 + OBJC_IVAR___IMBrandInfo_emailAddress);
  *v43 = a21;
  v43[1] = a22;
  v44 = (v32 + OBJC_IVAR___IMBrandInfo_address);
  *v44 = a23;
  v44[1] = a24;
  v45 = (v32 + OBJC_IVAR___IMBrandInfo_termsAndConditionsURL);
  *v45 = a25;
  v45[1] = a26;
  v46 = (v32 + OBJC_IVAR___IMBrandInfo_localizedResponseTime);
  *v46 = a27;
  v46[1] = a28;
  v47 = (v32 + OBJC_IVAR___IMBrandInfo_genericCSSTemplateURL);
  *v47 = a29;
  v47[1] = a30;
  *v33 = a31;
  v33[1] = a32;
  v49.super_class = IMBrandInfo;
  return objc_msgSendSuper2(&v49, sel_init);
}

id IMBrandInfo.init(dictionary:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1A88C8188();

  v2 = [v0 initWithDictionary_];

  return v2;
}

unint64_t sub_1A87F588C()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303B58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88EDC40;
  *(inited + 32) = 0x495255646E617262;
  *(inited + 40) = 0xE800000000000000;
  v3 = [v1 brandURI];
  v4 = sub_1A88C82E8();
  v6 = v5;

  v7 = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 1701667182;
  *(inited + 88) = 0xE400000000000000;
  v8 = [v1 name];
  v9 = sub_1A88C82E8();
  v11 = v10;

  *(inited + 96) = v9;
  *(inited + 104) = v11;
  *(inited + 120) = v7;
  *(inited + 128) = 0x69726F6765746163;
  *(inited + 136) = 0xEA00000000007365;
  v12 = [v1 categories];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1A88C85F8();

    v12 = sub_1A870CCE0(&qword_1EB303100);
  }

  else
  {
    v14 = 0;
    *(inited + 152) = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v14;
  *(inited + 168) = v12;
  *(inited + 176) = 0xD000000000000012;
  *(inited + 184) = 0x80000001A891C420;
  v15 = [v1 primaryPhoneNumber];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1A88C82E8();
    v19 = v18;

    v20 = MEMORY[0x1E69E6158];
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v20 = 0;
    *(inited + 208) = 0;
  }

  *(inited + 192) = v17;
  *(inited + 200) = v19;
  *(inited + 216) = v20;
  *(inited + 224) = 0xD00000000000001ALL;
  *(inited + 232) = 0x80000001A891C440;
  v21 = [v1 primaryBrandColorHexString];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1A88C82E8();
    v25 = v24;

    v26 = MEMORY[0x1E69E6158];
  }

  else
  {
    v23 = 0;
    v25 = 0;
    v26 = 0;
    *(inited + 256) = 0;
  }

  *(inited + 240) = v23;
  *(inited + 248) = v25;
  *(inited + 264) = v26;
  *(inited + 272) = 0xD00000000000001CLL;
  *(inited + 280) = 0x80000001A891C460;
  v27 = [v1 secondaryBrandColorHexString];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1A88C82E8();
    v31 = v30;

    v32 = MEMORY[0x1E69E6158];
  }

  else
  {
    v29 = 0;
    v31 = 0;
    v32 = 0;
    *(inited + 304) = 0;
  }

  *(inited + 288) = v29;
  *(inited + 296) = v31;
  *(inited + 312) = v32;
  *(inited + 320) = 0x6966697265567369;
  *(inited + 328) = 0xEA00000000006465;
  [v1 isVerified];
  v33 = sub_1A88C86C8();
  v34 = sub_1A85E9718(0, &qword_1ED8C9450);
  *(inited + 336) = v33;
  *(inited + 360) = v34;
  *(inited + 368) = 0xD000000000000014;
  *(inited + 376) = 0x80000001A8918500;
  v35 = [v1 localizedDescription];
  if (v35)
  {
    v36 = v35;
    v37 = sub_1A88C82E8();
    v39 = v38;

    v40 = MEMORY[0x1E69E6158];
  }

  else
  {
    v37 = 0;
    v39 = 0;
    v40 = 0;
    *(inited + 400) = 0;
  }

  *(inited + 384) = v37;
  *(inited + 392) = v39;
  *(inited + 408) = v40;
  *(inited + 416) = 0x6465696669726576;
  *(inited + 424) = 0xEA00000000007942;
  v41 = [v1 verifiedBy];
  if (v41)
  {
    v42 = v41;
    v43 = sub_1A88C82E8();
    v45 = v44;

    v46 = MEMORY[0x1E69E6158];
  }

  else
  {
    v43 = 0;
    v45 = 0;
    v46 = 0;
    *(inited + 448) = 0;
  }

  *(inited + 432) = v43;
  *(inited + 440) = v45;
  *(inited + 456) = v46;
  *(inited + 464) = 0x65746973626577;
  *(inited + 472) = 0xE700000000000000;
  v47 = [v1 website];
  if (v47)
  {
    v48 = v47;
    v49 = sub_1A88C82E8();
    v51 = v50;

    v52 = MEMORY[0x1E69E6158];
  }

  else
  {
    v49 = 0;
    v51 = 0;
    v52 = 0;
    *(inited + 496) = 0;
  }

  *(inited + 480) = v49;
  *(inited + 488) = v51;
  *(inited + 504) = v52;
  strcpy((inited + 512), "messageNumber");
  *(inited + 526) = -4864;
  v53 = [v1 messageNumber];
  if (v53)
  {
    v54 = v53;
    v55 = sub_1A88C82E8();
    v57 = v56;

    v58 = MEMORY[0x1E69E6158];
  }

  else
  {
    v55 = 0;
    v57 = 0;
    v58 = 0;
    *(inited + 544) = 0;
  }

  *(inited + 528) = v55;
  *(inited + 536) = v57;
  *(inited + 552) = v58;
  strcpy((inited + 560), "emailAddress");
  *(inited + 573) = 0;
  *(inited + 574) = -5120;
  v59 = [v1 emailAddress];
  if (v59)
  {
    v60 = v59;
    v61 = sub_1A88C82E8();
    v63 = v62;

    v64 = MEMORY[0x1E69E6158];
  }

  else
  {
    v61 = 0;
    v63 = 0;
    v64 = 0;
    *(inited + 592) = 0;
  }

  *(inited + 576) = v61;
  *(inited + 584) = v63;
  *(inited + 600) = v64;
  *(inited + 608) = 0x73736572646461;
  *(inited + 616) = 0xE700000000000000;
  v65 = [v1 address];
  if (v65)
  {
    v66 = v65;
    v67 = sub_1A88C82E8();
    v69 = v68;

    v70 = MEMORY[0x1E69E6158];
  }

  else
  {
    v67 = 0;
    v69 = 0;
    v70 = 0;
    *(inited + 640) = 0;
  }

  *(inited + 624) = v67;
  *(inited + 632) = v69;
  *(inited + 648) = v70;
  *(inited + 656) = 0xD000000000000015;
  *(inited + 664) = 0x80000001A891C480;
  v71 = [v1 termsAndConditionsURL];
  if (v71)
  {
    v72 = v71;
    v73 = sub_1A88C82E8();
    v75 = v74;

    v76 = MEMORY[0x1E69E6158];
  }

  else
  {
    v73 = 0;
    v75 = 0;
    v76 = 0;
    *(inited + 688) = 0;
  }

  *(inited + 672) = v73;
  *(inited + 680) = v75;
  *(inited + 696) = v76;
  *(inited + 704) = 0xD000000000000015;
  *(inited + 712) = 0x80000001A891C4A0;
  v77 = [v1 localizedResponseTime];
  if (v77)
  {
    v78 = v77;
    v79 = sub_1A88C82E8();
    v81 = v80;

    v82 = MEMORY[0x1E69E6158];
  }

  else
  {
    v79 = 0;
    v81 = 0;
    v82 = 0;
    *(inited + 736) = 0;
  }

  *(inited + 720) = v79;
  *(inited + 728) = v81;
  *(inited + 744) = v82;
  *(inited + 752) = 0xD000000000000015;
  *(inited + 760) = 0x80000001A891C4C0;
  v83 = [v1 genericCSSTemplateURL];
  if (v83)
  {
    v84 = v83;
    v85 = sub_1A88C82E8();
    v87 = v86;

    v88 = MEMORY[0x1E69E6158];
  }

  else
  {
    v85 = 0;
    v87 = 0;
    v88 = 0;
    *(inited + 784) = 0;
  }

  *(inited + 768) = v85;
  *(inited + 776) = v87;
  *(inited + 792) = v88;
  strcpy((inited + 800), "brandLogoGuid");
  *(inited + 814) = -4864;
  v89 = [v1 brandLogoGuid];
  if (v89)
  {
    v90 = v89;
    v91 = sub_1A88C82E8();
    v93 = v92;

    v94 = MEMORY[0x1E69E6158];
  }

  else
  {
    v91 = 0;
    v93 = 0;
    v94 = 0;
    *(inited + 832) = 0;
  }

  *(inited + 816) = v91;
  *(inited + 824) = v93;
  *(inited + 840) = v94;
  v95 = sub_1A8738CF0(inited);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB304A50);
  swift_arrayDestroy();
  v96 = sub_1A8895CC8(v95);

  if (*(v96 + 16))
  {
    sub_1A870CCE0(&qword_1EB303718);
    v97 = swift_initStackObject();
    *(v97 + 16) = xmmword_1A88E14F0;
    *(v97 + 32) = sub_1A88C82E8();
    *(v97 + 40) = v98;
    *(v97 + 72) = sub_1A870CCE0(&unk_1EB3091D0);
    *(v97 + 48) = v96;
    v99 = sub_1A8738AAC(v97);
    swift_setDeallocating();
    sub_1A8723F2C(v97 + 32);
    return v99;
  }

  else
  {

    return sub_1A8738AAC(MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_1A87F6144()
{
  v1 = v0;
  sub_1A870CCE0(&qword_1EB303B58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88EDC40;
  *(inited + 32) = 0x495255646E617262;
  *(inited + 40) = 0xE800000000000000;
  v3 = [v1 brandURI];
  v4 = sub_1A88C82E8();
  v6 = v5;

  v7 = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 1701667182;
  *(inited + 88) = 0xE400000000000000;
  v8 = [v1 name];
  v9 = sub_1A88C82E8();
  v11 = v10;

  *(inited + 96) = v9;
  *(inited + 104) = v11;
  *(inited + 120) = v7;
  *(inited + 128) = 0x69726F6765746163;
  *(inited + 136) = 0xEA00000000007365;
  v12 = [v1 categories];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1A88C85F8();

    v12 = sub_1A870CCE0(&qword_1EB303100);
  }

  else
  {
    v14 = 0;
    *(inited + 152) = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v14;
  *(inited + 168) = v12;
  *(inited + 176) = 0xD000000000000012;
  *(inited + 184) = 0x80000001A891C420;
  v15 = [v1 primaryPhoneNumber];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1A88C82E8();
    v19 = v18;

    v20 = MEMORY[0x1E69E6158];
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v20 = 0;
    *(inited + 208) = 0;
  }

  *(inited + 192) = v17;
  *(inited + 200) = v19;
  *(inited + 216) = v20;
  *(inited + 224) = 0xD00000000000001ALL;
  *(inited + 232) = 0x80000001A891C440;
  v21 = [v1 primaryBrandColorHexString];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1A88C82E8();
    v25 = v24;

    v26 = MEMORY[0x1E69E6158];
  }

  else
  {
    v23 = 0;
    v25 = 0;
    v26 = 0;
    *(inited + 256) = 0;
  }

  *(inited + 240) = v23;
  *(inited + 248) = v25;
  *(inited + 264) = v26;
  *(inited + 272) = 0xD00000000000001CLL;
  *(inited + 280) = 0x80000001A891C460;
  v27 = [v1 secondaryBrandColorHexString];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1A88C82E8();
    v31 = v30;

    v32 = MEMORY[0x1E69E6158];
  }

  else
  {
    v29 = 0;
    v31 = 0;
    v32 = 0;
    *(inited + 304) = 0;
  }

  *(inited + 288) = v29;
  *(inited + 296) = v31;
  *(inited + 312) = v32;
  *(inited + 320) = 0x6966697265567369;
  *(inited + 328) = 0xEA00000000006465;
  [v1 isVerified];
  v33 = sub_1A88C86C8();
  v34 = sub_1A85E9718(0, &qword_1ED8C9450);
  *(inited + 336) = v33;
  *(inited + 360) = v34;
  *(inited + 368) = 0xD000000000000014;
  *(inited + 376) = 0x80000001A8918500;
  v35 = [v1 localizedDescription];
  if (v35)
  {
    v36 = v35;
    v37 = sub_1A88C82E8();
    v39 = v38;

    v40 = MEMORY[0x1E69E6158];
  }

  else
  {
    v37 = 0;
    v39 = 0;
    v40 = 0;
    *(inited + 400) = 0;
  }

  *(inited + 384) = v37;
  *(inited + 392) = v39;
  *(inited + 408) = v40;
  *(inited + 416) = 0x6465696669726576;
  *(inited + 424) = 0xEA00000000007942;
  v41 = [v1 verifiedBy];
  if (v41)
  {
    v42 = v41;
    v43 = sub_1A88C82E8();
    v45 = v44;

    v46 = MEMORY[0x1E69E6158];
  }

  else
  {
    v43 = 0;
    v45 = 0;
    v46 = 0;
    *(inited + 448) = 0;
  }

  *(inited + 432) = v43;
  *(inited + 440) = v45;
  *(inited + 456) = v46;
  *(inited + 464) = 0x65746973626577;
  *(inited + 472) = 0xE700000000000000;
  v47 = [v1 website];
  if (v47)
  {
    v48 = v47;
    v49 = sub_1A88C82E8();
    v51 = v50;

    v52 = MEMORY[0x1E69E6158];
  }

  else
  {
    v49 = 0;
    v51 = 0;
    v52 = 0;
    *(inited + 496) = 0;
  }

  *(inited + 480) = v49;
  *(inited + 488) = v51;
  *(inited + 504) = v52;
  strcpy((inited + 512), "messageNumber");
  *(inited + 526) = -4864;
  v53 = [v1 messageNumber];
  if (v53)
  {
    v54 = v53;
    v55 = sub_1A88C82E8();
    v57 = v56;

    v58 = MEMORY[0x1E69E6158];
  }

  else
  {
    v55 = 0;
    v57 = 0;
    v58 = 0;
    *(inited + 544) = 0;
  }

  *(inited + 528) = v55;
  *(inited + 536) = v57;
  *(inited + 552) = v58;
  strcpy((inited + 560), "emailAddress");
  *(inited + 573) = 0;
  *(inited + 574) = -5120;
  v59 = [v1 emailAddress];
  if (v59)
  {
    v60 = v59;
    v61 = sub_1A88C82E8();
    v63 = v62;

    v64 = MEMORY[0x1E69E6158];
  }

  else
  {
    v61 = 0;
    v63 = 0;
    v64 = 0;
    *(inited + 592) = 0;
  }

  *(inited + 576) = v61;
  *(inited + 584) = v63;
  *(inited + 600) = v64;
  *(inited + 608) = 0x73736572646461;
  *(inited + 616) = 0xE700000000000000;
  v65 = [v1 address];
  if (v65)
  {
    v66 = v65;
    v67 = sub_1A88C82E8();
    v69 = v68;

    v70 = MEMORY[0x1E69E6158];
  }

  else
  {
    v67 = 0;
    v69 = 0;
    v70 = 0;
    *(inited + 640) = 0;
  }

  *(inited + 624) = v67;
  *(inited + 632) = v69;
  *(inited + 648) = v70;
  *(inited + 656) = 0xD000000000000015;
  *(inited + 664) = 0x80000001A891C480;
  v71 = [v1 termsAndConditionsURL];
  if (v71)
  {
    v72 = v71;
    v73 = sub_1A88C82E8();
    v75 = v74;

    v76 = MEMORY[0x1E69E6158];
  }

  else
  {
    v73 = 0;
    v75 = 0;
    v76 = 0;
    *(inited + 688) = 0;
  }

  *(inited + 672) = v73;
  *(inited + 680) = v75;
  *(inited + 696) = v76;
  *(inited + 704) = 0xD000000000000015;
  *(inited + 712) = 0x80000001A891C4A0;
  v77 = [v1 localizedResponseTime];
  if (v77)
  {
    v78 = v77;
    v79 = sub_1A88C82E8();
    v81 = v80;

    v82 = MEMORY[0x1E69E6158];
  }

  else
  {
    v79 = 0;
    v81 = 0;
    v82 = 0;
    *(inited + 736) = 0;
  }

  *(inited + 720) = v79;
  *(inited + 728) = v81;
  *(inited + 744) = v82;
  *(inited + 752) = 0xD000000000000015;
  *(inited + 760) = 0x80000001A891C4C0;
  v83 = [v1 genericCSSTemplateURL];
  if (v83)
  {
    v84 = v83;
    v85 = sub_1A88C82E8();
    v87 = v86;

    v88 = MEMORY[0x1E69E6158];
  }

  else
  {
    v85 = 0;
    v87 = 0;
    v88 = 0;
    *(inited + 784) = 0;
  }

  *(inited + 768) = v85;
  *(inited + 776) = v87;
  *(inited + 792) = v88;
  strcpy((inited + 800), "brandLogoGuid");
  *(inited + 814) = -4864;
  v89 = [v1 brandLogoGuid];
  if (v89)
  {
    v90 = v89;
    v91 = sub_1A88C82E8();
    v93 = v92;

    v94 = MEMORY[0x1E69E6158];
  }

  else
  {
    v91 = 0;
    v93 = 0;
    v94 = 0;
    *(inited + 832) = 0;
  }

  *(inited + 816) = v91;
  *(inited + 824) = v93;
  *(inited + 840) = v94;
  v95 = sub_1A8738CF0(inited);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB304A50);
  swift_arrayDestroy();
  v96 = sub_1A8895CC8(v95);

  return v96;
}

id sub_1A87F695C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1A88C8188();

  return v5;
}

id IMBrandInfo.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id IMChipList.init(dictionary:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1A88C8188();

  v2 = [v0 initWithDictionary_];

  return v2;
}

id IMChipList.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A88C82E8();
  if (!*(a1 + 16))
  {

LABEL_9:

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v6 = sub_1A85F5F40(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v6, v20);
  sub_1A870CCE0(&qword_1EB303B30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v9 = sub_1A88C82E8();
  if (!*(a1 + 16))
  {

    goto LABEL_13;
  }

  v11 = sub_1A85F5F40(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_13:

    goto LABEL_14;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v11, v20);

  sub_1A85E9718(0, &qword_1ED8C9450);
  if (swift_dynamicCast())
  {
    v14 = v19;
    goto LABEL_15;
  }

LABEL_14:
  v14 = 0;
LABEL_15:
  sub_1A870CCE0(&unk_1EB3091D0);
  v16 = sub_1A88C85E8();

  if (v14)
  {
    v17 = [v14 BOOLValue];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v2 initWithChipArray:v16 replied:v17];

  if (v18)
  {

    return v18;
  }

  return 0;
}

id sub_1A87F6E8C(uint64_t a1, char a2)
{
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v5 = *(a1 + 16);
LABEL_2:
  v6 = v3;
  while (v5 != v6)
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_13:
      if (!sub_1A88C8D38())
      {
        goto LABEL_14;
      }

LABEL_11:
      type metadata accessor for IMChip();
      v10 = sub_1A88C85E8();

      v11 = [v14 initWithChipList:v10 replied:a2 & 1];

      return v11;
    }

    v3 = v6 + 1;
    v7 = objc_allocWithZone(IMChip);

    v8 = sub_1A88C8188();

    v9 = [v7 initWithDictionary_];

    v6 = v3;
    if (v9)
    {
      MEMORY[0x1AC56EEA0]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A88C8638();
      }

      sub_1A88C8678();
      v4 = v15;
      goto LABEL_2;
    }
  }

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_14:

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_1A87F70E4()
{
  sub_1A870CCE0(&qword_1EB303718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E2770;
  *(inited + 32) = sub_1A88C82E8();
  v19 = inited;
  *(inited + 40) = v2;
  v3 = [v0 chipList];
  type metadata accessor for IMChip();
  v4 = sub_1A88C85F8();

  if (v4 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A88C8D38())
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1AC56F710](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = [v8 dictionaryRepresentation];
      v12 = sub_1A88C81A8();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1A8735464(0, v7[2] + 1, 1, v7);
      }

      v14 = v7[2];
      v13 = v7[3];
      if (v14 >= v13 >> 1)
      {
        v7 = sub_1A8735464((v13 > 1), v14 + 1, 1, v7);
      }

      v7[2] = v14 + 1;
      v7[v14 + 4] = v12;
      ++v6;
      if (v10 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_19:

  v19[9] = sub_1A870CCE0(&qword_1EB303B30);
  v19[6] = v7;
  v19[10] = sub_1A88C82E8();
  v19[11] = v15;
  [v0 replied];
  v16 = sub_1A88C86C8();
  v19[15] = sub_1A85E9718(0, &qword_1ED8C9450);
  v19[12] = v16;
  v17 = sub_1A8738AAC(v19);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB303720);
  swift_arrayDestroy();
  return v17;
}

uint64_t sub_1A87F73E0()
{
  v1 = [v0 chipList];
  type metadata accessor for IMChip();
  v2 = sub_1A88C85F8();

  v11 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_21:
    v3 = sub_1A88C8D38();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1AC56F710](v6, v2);
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = [v7 chip];

      if (v9)
      {
        break;
      }

LABEL_6:
      ++v6;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    MEMORY[0x1AC56EEA0]();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A88C8638();
    }

    sub_1A88C8678();
    v5 = v11;
  }

  while (v4 != v3);
LABEL_23:

  return v5;
}

id sub_1A87F75DC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = a1;
  sub_1A87F73E0();

  a4(0);
  v6 = sub_1A88C85E8();

  return v6;
}

uint64_t IMChipList.isEqual(_:)(uint64_t a1)
{
  v2 = sub_1A87303E8(a1, v10);
  if (!v11)
  {
    sub_1A860169C(v10);
    goto LABEL_5;
  }

  type metadata accessor for IMChipList(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v3 = [v1 chipList];
  type metadata accessor for IMChip();
  v4 = sub_1A88C85F8();

  v5 = [v9 chipList];
  v6 = sub_1A88C85F8();

  v7 = sub_1A87F7A64(v4, v6, type metadata accessor for IMChip);

  return v7 & 1;
}

uint64_t sub_1A87F7778(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_1A88C9398() & 1) == 0)
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

uint64_t sub_1A87F7808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteIntentMirrorFileRepresentation(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v22 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_1A87601F0(v13, v10);
        sub_1A87601F0(v14, v7);
        if ((sub_1A88C7278() & 1) == 0 || (sub_1A88C7B18() & 1) == 0)
        {
          break;
        }

        v16 = *(v4 + 24);
        v17 = *&v10[v16];
        v18 = *&v10[v16 + 8];
        v19 = &v7[v16];
        v20 = v17 == *v19 && v18 == *(v19 + 1);
        if (!v20 && (sub_1A88C9398() & 1) == 0)
        {
          break;
        }

        v21 = v10[*(v4 + 28)] ^ v7[*(v4 + 28)];
        sub_1A8761CE4(v7);
        sub_1A8761CE4(v10);
        if ((v21 & 1) == 0)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        v22 = v21 ^ 1;
        return v22 & 1;
      }

      sub_1A8761CE4(v7);
      sub_1A8761CE4(v10);
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_1A87F79F0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A87F7A64(unint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = a3(0);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1AC56F710](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x1AC56F710](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_1A88C8BA8();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_1A88C8BA8();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = sub_1A88C8D38();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = sub_1A88C8D38();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

id sub_1A87F7D30()
{
  v1 = v0;
  v2 = sub_1A88C7478();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C7468();
  v6 = objc_allocWithZone(IMMessageItem);
  v7 = sub_1A88C73D8();
  (*(v3 + 8))(v5, v2);
  v8 = sub_1A88C85E8();
  v9 = [v6 initWithSender:0 time:v7 body:0 attributes:0 fileTransferGUIDs:v8 flags:0 error:0 guid:0 threadIdentifier:0];

  v10 = [objc_allocWithZone(IMToSuperParserContext) init];
  [v10 reset];
  v11 = [v1 dictionaryRepresentation];
  v12 = sub_1A88C81A8();

  sub_1A878C804(v12);

  v13 = sub_1A88C8188();

  [v10 appendChipList_];

  [v9 setFlags_];
  v14 = [v10 body];
  [v9 setBody_];

  return v9;
}

unint64_t sub_1A87F8038()
{
  sub_1A870CCE0(&qword_1EB303718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E2770;
  *(inited + 32) = 0x7473694C70696863;
  v18 = inited;
  *(inited + 40) = 0xE800000000000000;
  v2 = [v0 chipList];
  type metadata accessor for IMChip();
  v3 = sub_1A88C85F8();

  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A88C8D38())
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1AC56F710](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = [v7 dictionaryRepresentation];
      v11 = sub_1A88C81A8();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1A8735464(0, v6[2] + 1, 1, v6);
      }

      v13 = v6[2];
      v12 = v6[3];
      if (v13 >= v12 >> 1)
      {
        v6 = sub_1A8735464((v12 > 1), v13 + 1, 1, v6);
      }

      v6[2] = v13 + 1;
      v6[v13 + 4] = v11;
      ++v5;
      if (v9 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_19:

  v14 = sub_1A870CCE0(&qword_1EB303B30);
  v18[6] = v6;
  v18[9] = v14;
  v18[10] = 0x6465696C706572;
  v18[11] = 0xE700000000000000;
  [v0 replied];
  v15 = sub_1A88C86C8();
  v18[15] = sub_1A85E9718(0, &qword_1ED8C9450);
  v18[12] = v15;
  v16 = sub_1A8738AAC(v18);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB303720);
  swift_arrayDestroy();
  return v16;
}

id sub_1A87F8318(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1A88C8188();

  return v5;
}

uint64_t IMChipList.hash.getter()
{
  sub_1A88C9588();
  v1 = [v0 chipList];
  type metadata accessor for IMChip();
  v2 = sub_1A88C85F8();

  sub_1A87F85A8(v4, v2);

  [v0 replied];
  sub_1A88C9548();
  return sub_1A88C9568();
}

id IMChipList.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_1A87F85A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_1A88C8D38();
    MEMORY[0x1AC56FE00](v8);
    v3 = sub_1A88C8D38();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1AC56FE00](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x1AC56F710](i, a2);
      sub_1A88C8BB8();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_1A88C8BB8();

      --v3;
    }

    while (v3);
  }
}

id _sSo10IMChipListC17IMSharedUtilitiesE5merge_4withABSgAF_AFtFZ_0(void *a1, void *a2)
{
  v2 = a2;
  if (!a1)
  {
    v10 = a2;
    return v2;
  }

  if (a2)
  {
    v3 = a1;
    v4 = v2;
    v5 = [v3 chipList];
    type metadata accessor for IMChip();
    sub_1A88C85F8();

    v6 = [v4 chipList];
    v7 = sub_1A88C85F8();

    sub_1A8734CA0(v7);
    v8 = objc_allocWithZone(IMChipList);
    v9 = sub_1A88C85E8();

    v2 = [v8 initWithChipList_];

    return v2;
  }

  v13 = a1;
  return a1;
}

uint64_t sub_1A87F87D0(uint64_t result)
{
  if ((*(result + 8) & 1) == 0)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      v3 = result;
      v4 = qword_1ED8C8B18;
      swift_unknownObjectRetain();
      if (v4 != -1)
      {
        swift_once();
      }

      v5 = sub_1A88C7E58();
      sub_1A85EF0E4(v5, qword_1ED8CA4C0);
      v6 = sub_1A88C7E38();
      v7 = sub_1A88C89B8();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1A85E5000, v6, v7, "Warming up filtering controller for index update", v8, 2u);
        MEMORY[0x1AC571F20](v8, -1, -1);
      }

      [v2 willBeginCalculatingUnreadCount];
      result = swift_unknownObjectRelease();
      *(v3 + 8) = 1;
    }
  }

  return result;
}

uint64_t sub_1A87F88EC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  if (!v3)
  {
    return 0;
  }

  swift_unknownObjectRetain();
  sub_1A87F87D0(a2);
  v6 = [v3 shouldExcludeFilterActionForReport_];
  swift_unknownObjectRelease();
  return v6 ^ 1;
}

uint64_t sub_1A87F895C()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UnreadCountDefaultFilterModeIndex()
{
  result = qword_1ED8C8C70;
  if (!qword_1ED8C8C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnreadCountDefaultFilterModeIndex.ExtraState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1A87F8AD8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v32 = a1;
  v33 = a2;
  v5 = *(a3 + 16);
  v36 = sub_1A88C7478();
  result = MEMORY[0x1EEE9AC00](v36);
  v35 = v8;
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v5;
  if (v5)
  {
    v10 = 0;
    v25 = (v7 + 8);
    v29 = (v7 + 32);
    v30 = v7 + 16;
    v34 = MEMORY[0x1E69E7CC0];
    v24 = v4;
    while (v10 < *(v4 + 16))
    {
      v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v14 = *(v7 + 72);
      v15 = v7;
      (*(v7 + 16))(v9, v4 + v13 + v14 * v10, v36);
      v16 = v32(v9);
      if (v3)
      {
        (*v25)(v9, v36);

        goto LABEL_15;
      }

      if (v16)
      {
        v27 = &v23;
        v28 = &v23;
        MEMORY[0x1EEE9AC00](v16);
        v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
        v26 = *v29;
        v26(v18, v9, v36);
        v19 = v34;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A871D770(0, *(v19 + 16) + 1, 1);
          v19 = v37;
        }

        v22 = *(v19 + 16);
        v21 = *(v19 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1A871D770(v21 > 1, v22 + 1, 1);
          v19 = v37;
        }

        *(v19 + 16) = v22 + 1;
        v34 = v19;
        v11 = (v26)(v19 + v13 + v22 * v14, v18, v36);
        v4 = v24;
      }

      else
      {
        v11 = (*v25)(v9, v36);
      }

      ++v10;
      result = MEMORY[0x1EEE9AC00](v11);
      v9 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = v15;
      if (v31 == v10)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v34;
  }

  return result;
}

void sub_1A87F8DE8()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1A87F9804((v1 + v2));

  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1A87F8E78@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v3 = sub_1A88C7478();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v55 = v5;
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C7458();
  v65 = 0;
  v6 = sub_1A870CCE0(&unk_1EB3052E0);
  v58 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v50 = &v48 - v7;
  v51 = v4;
  v8 = *a1;
  v11 = *(*a1 + 64);
  v10 = *a1 + 64;
  v9 = v11;
  v12 = 1 << *(v8 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v59 = (v4 + 56);
  v56 = v8;
  v57 = (v4 + 48);
  v54 = (v4 + 32);
  result = swift_bridgeObjectRetain_n();
  v17 = 0;
  v61 = MEMORY[0x1E69E7CC0];
  v52 = v10;
  v53 = v3;
  while (v14)
  {
LABEL_11:
    v64 = &v48;
    v19 = MEMORY[0x1EEE9AC00](result);
    v60 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v63 = &v48;
    v21 = v58;
    v22 = MEMORY[0x1EEE9AC00](v19);
    v23 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v62 = &v48;
    MEMORY[0x1EEE9AC00](v22);
    v25 = v24;
    v26 = [v25 timeSensitiveRefreshDate];
    if (MEMORY[0x1EEE9AC00](v26))
    {
      sub_1A88C7448();

      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    v28 = v53;
    (*v59)(&v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v27, 1, v53);
    v3 = v28;
    sub_1A8720F5C(&v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
    sub_1A8720F5C(v23, v23);

    if ((*v57)(v23, 1, v28) == 1)
    {
      result = sub_1A871DF50(v23);
    }

    else
    {
      v29 = *v54;
      v30 = v60;
      (*v54)(v60, v23, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = sub_1A8735BC0(0, v61[2] + 1, 1, v61);
      }

      v32 = v61[2];
      v31 = v61[3];
      if (v32 >= v31 >> 1)
      {
        v61 = sub_1A8735BC0(v31 > 1, v32 + 1, 1, v61);
      }

      v33 = v61;
      v61[2] = v32 + 1;
      result = (v29)(v33 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v32, v30, v3);
    }

    v10 = v52;
    v14 &= v14 - 1;
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      return result;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v10 + 8 * v18);
    ++v17;
    if (v14)
    {
      v17 = v18;
      goto LABEL_11;
    }
  }

  MEMORY[0x1EEE9AC00](v34);
  v35 = v49;
  *(&v48 - 2) = v49;
  *(&v48 - 1) = &v65;
  v36 = sub_1A87F8AD8(sub_1A87FA5DC, (&v48 - 4), v61);
  v37 = v50;
  sub_1A87F9530(v36, v50);

  MEMORY[0x1EEE9AC00](v38);
  v40 = &v48 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A8721348(v37, v40);
  v41 = (*v57)(v40, 1, v3);
  if (v41 == 1)
  {
    sub_1A871DF50(v37);
    (*v59)(v48, 1, 1, v3);
    v42 = v51;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v41);
    v44 = &v48 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*v54)(v44, v40, v3);
    v45 = IMSharedHelperMessagePriorityTimeoutLeeway();
    v42 = v51;
    v46 = v48;
    if (v45 <= 0.0)
    {
      (*(v51 + 16))(v48, v44, v3);
    }

    else
    {
      sub_1A88C7398();
      sub_1A88C7388();
    }

    (*(v42 + 8))(v44, v3);
    sub_1A871DF50(v50);
    (*(v42 + 56))(v46, 0, 1, v3);
  }

  if (v65 == 1)
  {
    v47 = [objc_opt_self() defaultCenter];
    [v47 postNotificationName:IMUnreadCountControllerDetectedExpiredTimeSensitiveMessagesNotification object:0];
  }

  return (*(v42 + 8))(v35, v3);
}

uint64_t sub_1A87F9530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A88C7478();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](*(v4 - 8));
  v7 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v24 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v25 = a2;
    v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v28 = *(v6 + 16);
    v29 = v6;
    v27 = a1 + v10;
    v11 = v28(&v24 - v7);
    MEMORY[0x1EEE9AC00](v11);
    v12 = &v24 - v7;
    if (v9 == 1)
    {
      result = v29;
LABEL_4:
      v14 = v25;
      (*(result + 32))(v25, v8, v4);
      return (*(v29 + 56))(v14, 0, 1, v4);
    }

    else
    {
      result = v29;
      v26 = v29 + 8;
      v16 = (v29 + 32);
      v17 = 1;
      while (1)
      {
        v20 = v9;
        v21 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        (v28)(v12, v27 + *(result + 72) * v17, v4);
        sub_1A873C5DC();
        v22 = sub_1A88C8288();
        v23 = *(v29 + 8);
        if (v22)
        {
          v23(v8, v4);
          v18 = (*v16)(v8, v12, v4);
        }

        else
        {
          v18 = (v23)(v12, v4);
        }

        MEMORY[0x1EEE9AC00](v18);
        v12 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
        ++v17;
        v19 = v21 == v20;
        v9 = v20;
        result = v29;
        if (v19)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v15 = *(v6 + 56);

    return v15(a2, 1, 1, v4);
  }

  return result;
}

id sub_1A87F9804(uint64_t *a1)
{
  v2 = v1;
  v4 = [objc_opt_self() sharedFeatureFlags];
  v5 = [v4 isPriorityMessagesEnabled];

  if (!v5 || (swift_beginAccess(), !*(*(v2 + 24) + 16)) || (sub_1A8717F68(0), (v6 & 1) == 0))
  {
    v16 = 0x80000001A891C6F0;
    v15 = 0xD000000000000015;
    return sub_1A87FA3D8(v15, v16, a1);
  }

  v7 = sub_1A88C7478();
  v58 = &v53;
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v60 = &v53 - v10;
  v11 = sub_1A870CCE0(&unk_1EB3052E0);
  v59 = &v53;
  MEMORY[0x1EEE9AC00](v11 - 8);
  v57 = v12;
  v13 = &v53 - v12;
  sub_1A87F8E78(a1, &v53 - v12);
  v14 = v8[6];
  if (v14(v13, 1, v7) == 1)
  {
    sub_1A871DF50(v13);
    v15 = 0xD000000000000024;
    v16 = 0x80000001A891C710;
    return sub_1A87FA3D8(v15, v16, a1);
  }

  v56 = v8;
  v53 = v8[4];
  v54 = (v8 + 4);
  v18 = v53(v60, v13, v7);
  v59 = &v53;
  v55 = v9;
  MEMORY[0x1EEE9AC00](v18);
  v19 = &v53 - v10;
  v20 = (a1 + *(sub_1A870CCE0(&qword_1EB306658) + 36));
  v21 = type metadata accessor for UnreadCountTimeSensitiveIndex.ExtraState(0);
  v22 = *(v21 + 20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v53 - v57;
  sub_1A8721348(v20 + v22, &v53 - v57);
  if (v14(v23, 1, v7) == 1)
  {
    v57 = v22;
    sub_1A871DF50(v23);
    v24 = v56;
    v25 = v60;
LABEL_17:
    v32 = v55;
    if (qword_1ED8C8B18 != -1)
    {
      swift_once();
    }

    v33 = sub_1A88C7E58();
    v34 = sub_1A85EF0E4(v33, qword_1ED8CA4C0);
    v54 = &v53;
    MEMORY[0x1EEE9AC00](v34);
    v35 = &v53 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = v24[2];
    v59(v35, v25, v7);
    v36 = sub_1A88C7E38();
    v37 = sub_1A88C89A8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = v7;
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      sub_1A88C7408();
      v41 = fabs(v40);
      v42 = v56[1];
      v42(v35, v38);
      *(v39 + 4) = v41;
      v43 = v37;
      v44 = v42;
      _os_log_impl(&dword_1A85E5000, v36, v43, "Scheduling next time sensitive expiration for %f seconds from now", v39, 0xCu);
      v45 = v39;
      v7 = v38;
      v24 = v56;
      MEMORY[0x1AC571F20](v45, -1, -1);
    }

    else
    {

      v44 = v24[1];
      v44(v35, v7);
    }

    sub_1A87FA3D8(0xD000000000000017, 0x80000001A891C740, a1);
    v46 = v57;
    sub_1A871DF50(v20 + v57);
    v47 = v60;
    v59(v20 + v46, v60, v7);
    (v24[7])(v20 + v46, 0, 1, v7);
    v48 = objc_allocWithZone(MEMORY[0x1E695DFF0]);

    v49 = sub_1A88C73D8();
    aBlock[4] = sub_1A87FA5D4;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A87FA370;
    aBlock[3] = &unk_1F1BB1938;
    v50 = _Block_copy(aBlock);
    v51 = [v48 initWithFireDate:v49 interval:0 repeats:v50 block:0.0];
    _Block_release(v50);

    *v20 = v51;
    result = [objc_opt_self() mainRunLoop];
    if (v51)
    {
      v52 = result;
      [result addTimer:v51 forMode:*MEMORY[0x1E695DA28]];

      return (v44)(v47, v7);
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  v53(v19, v23, v7);
  v25 = v60;
  if ((sub_1A88C7438() & 1) == 0)
  {
    v57 = v22;
    v24 = v56;
    (v56[1])(v19, v7);
    goto LABEL_17;
  }

  v26 = v56;
  if (qword_1ED8C8B18 != -1)
  {
    swift_once();
  }

  v27 = sub_1A88C7E58();
  sub_1A85EF0E4(v27, qword_1ED8CA4C0);
  v28 = sub_1A88C7E38();
  v29 = sub_1A88C89B8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1A85E5000, v28, v29, "No change to time sensitive expiration, not rescheduling timer", v30, 2u);
    MEMORY[0x1AC571F20](v30, -1, -1);
  }

  v31 = v26[1];
  v31(v19, v7);
  return (v31)(v25, v7);
}