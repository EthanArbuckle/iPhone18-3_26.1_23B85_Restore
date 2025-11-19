uint64_t sub_1C5D18730@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C6015B40();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6014CA0();
  swift_allocObject();
  sub_1C6014C90();
  sub_1C5D2A7A0(&qword_1EC1A8F50, MEMORY[0x1E69C4C88]);
  sub_1C6014C80();

  (*(v3 + 32))(a1, v5, v2);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

uint64_t sub_1C5D18A64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C5C6C678(0, &unk_1EC1A8F80, MEMORY[0x1E69C4BD8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  sub_1C5CB50F4(a1, &selRef_featureName);
  if (v7)
  {
    sub_1C60157D0();

    v8 = sub_1C60157F0();
    if (!__swift_getEnumTagSinglePayload(v6, 1, v8))
    {
      (*(*(v8 - 8) + 32))(a2, v6, v8);
      v10 = a2;
      v11 = 0;
      v9 = v8;
      return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
    }

    sub_1C5D29540();
  }

  else
  {
  }

  v9 = sub_1C60157F0();
  v10 = a2;
  v11 = 1;
  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
}

uint64_t sub_1C5D18BFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a5;
  v43 = a4;
  sub_1C5C6C678(0, &unk_1EC1A8F80, MEMORY[0x1E69C4BD8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v41 = &v33 - v9;
  v10 = sub_1C6015800();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5D29678(a1);
  if (a3)
  {
    v39 = 1;
  }

  else
  {
    v13 = [objc_opt_self() standardUserDefaults];
    v14 = [v13 isPrivateListeningEnabled];

    v39 = [v14 BOOLValue];
  }

  v15 = a1;
  v16 = sub_1C5D296D0(v15);
  if (!v16)
  {
    v46 = 0u;
    v47 = 0u;
    goto LABEL_10;
  }

  v17 = v16;
  strcpy(&v46, "enqueuerDSID");
  BYTE13(v46) = 0;
  HIWORD(v46) = -5120;
  sub_1C60174C0();
  sub_1C5CFF234(&v44, v17, &v46);

  sub_1C5CE3504(&v44);
  if (!*(&v47 + 1))
  {
LABEL_10:
    sub_1C5D29540();
    v38 = 0;
    goto LABEL_11;
  }

  sub_1C5C64D74(0, &qword_1ED7DCCD0);
  v18 = swift_dynamicCast();
  v19 = v44;
  if (!v18)
  {
    v19 = 0;
  }

  v38 = v19;
LABEL_11:
  v20 = v15;
  v21 = sub_1C5D296D0(v20);
  if (!v21)
  {
    v46 = 0u;
    v47 = 0u;
    goto LABEL_21;
  }

  v22 = v21;
  strcpy(&v46, "sharedUserId");
  BYTE13(v46) = 0;
  HIWORD(v46) = -5120;
  sub_1C60174C0();
  sub_1C5CFF234(&v44, v22, &v46);

  sub_1C5CE3504(&v44);
  if (!*(&v47 + 1))
  {
LABEL_21:
    sub_1C5D29540();
    v36 = 0;
    v37 = 0;
    goto LABEL_22;
  }

  v23 = swift_dynamicCast();
  if (v23)
  {
    v24 = v44;
  }

  else
  {
    v24 = 0;
  }

  if (v23)
  {
    v25 = v45;
  }

  else
  {
    v25 = 0;
  }

  v36 = v25;
  v37 = v24;
LABEL_22:
  v26 = v20;
  v27 = sub_1C5D296D0(v26);
  if (!v27)
  {
    v46 = 0u;
    v47 = 0u;
    goto LABEL_32;
  }

  v28 = v27;
  *&v46 = 0x6574736575716572;
  *(&v46 + 1) = 0xEF64497265735572;
  sub_1C60174C0();
  sub_1C5CFF234(&v44, v28, &v46);

  sub_1C5CE3504(&v44);
  if (!*(&v47 + 1))
  {
LABEL_32:
    sub_1C5D29540();
    v34 = 0;
    v35 = 0;
    goto LABEL_33;
  }

  v29 = swift_dynamicCast();
  if (v29)
  {
    v30 = v44;
  }

  else
  {
    v30 = 0;
  }

  if (v29)
  {
    v31 = v45;
  }

  else
  {
    v31 = 0;
  }

  v34 = v31;
  v35 = v30;
LABEL_33:
  sub_1C5CE5E28(v26, &selRef_siriAssetInfo);
  (*(v11 + 16))(v40, a2, v10);
  v33 = a2;
  sub_1C5D29814(v43, v41, &unk_1EC1A8F80, MEMORY[0x1E69C4BD8]);
  sub_1C6015850();

  sub_1C5D29540();
  return (*(v11 + 8))(v33, v10);
}

void sub_1C5D191C4(void *a1, uint64_t a2, void *a3, void *a4, const void *a5)
{
  v43 = a2;
  v44 = sub_1C6015800();
  v9 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5C6C678(0, qword_1ED7DD2D0, MEMORY[0x1E69C4C18], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v40 - v13;
  v15 = sub_1C60158F0();
  v42 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = sub_1C5D2A43C;
  v18[4] = v17;
  v18[5] = a4;
  v48 = a5;
  _Block_copy(a5);
  v19 = qword_1EC1A8EB8;
  v45 = a3;
  v47 = v17;

  v46 = a4;
  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_1C60162D0();
  __swift_project_value_buffer(v20, qword_1EC1BE3A0);
  v21 = a1;
  v22 = sub_1C60162B0();
  v23 = sub_1C6016F30();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&dword_1C5C61000, v22, v23, "Calling perform load for queue: %@", v24, 0xCu);
    sub_1C5D297C4();
    MEMORY[0x1C6956920](v25, -1, -1);
    MEMORY[0x1C6956920](v24, -1, -1);
  }

  v27 = v44;
  (*(v9 + 104))(v11, *MEMORY[0x1E69C4BF8], v44);
  sub_1C5D17D58();
  (*(v9 + 8))(v11, v27);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C5D29540();
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v51 = 2;
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_1C6017540();

    v49 = 0xD000000000000023;
    v50 = 0x80000001C604A800;
    v28 = v21;
    v29 = [v28 description];
    v30 = sub_1C6016940();
    v32 = v31;

    MEMORY[0x1C69534E0](v30, v32);

    sub_1C6016880();
    _s3__C4CodeOMa_3();
    sub_1C5D2A7A0(&qword_1EC1AAF00, _s3__C4CodeOMa_3);
    v33 = sub_1C6017280();

    v34 = v48;
    _Block_copy(v48);
    v35 = v33;
    v36 = sub_1C6014D30();
    (*(v34 + 2))(v34, 0, 0, 0, v36);

    v37 = v46;
    [v46 rollback];
    _Block_release(v34);
  }

  else
  {
    v39 = v41;
    v38 = v42;
    (*(v42 + 32))(v41, v14, v15);
    sub_1C5D1B720();
    (*(v38 + 8))(v39, v15);

    v34 = v48;
    v37 = v46;
  }

  _Block_release(v34);
}

uint64_t sub_1C5D19864(void *a1, uint64_t a2, void *a3, void (*a4)(void, void, void, void, void, void *), uint64_t a5, void *a6)
{
  v43 = a2;
  v45 = sub_1C6015800();
  v11 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5C6C678(0, qword_1ED7DD2D0, MEMORY[0x1E69C4C18], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v40 - v15;
  v17 = sub_1C60158F0();
  v42 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v41 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v44 = a4;
  v19[4] = a5;
  v19[5] = a6;
  v20 = qword_1EC1A8EB8;
  v46 = a3;
  v48 = a5;

  v47 = a6;
  if (v20 != -1)
  {
    swift_once();
  }

  v21 = sub_1C60162D0();
  __swift_project_value_buffer(v21, qword_1EC1BE3A0);
  v22 = a1;
  v23 = sub_1C60162B0();
  v24 = sub_1C6016F30();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&dword_1C5C61000, v23, v24, "Calling perform load for queue: %@", v25, 0xCu);
    sub_1C5D297C4();
    MEMORY[0x1C6956920](v26, -1, -1);
    MEMORY[0x1C6956920](v25, -1, -1);
  }

  v28 = v45;
  (*(v11 + 104))(v13, *MEMORY[0x1E69C4BF8], v45);
  sub_1C5D17D58();
  (*(v11 + 8))(v13, v28);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C5D29540();
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v51 = 2;
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_1C6017540();

    v49 = 0xD000000000000023;
    v50 = 0x80000001C604A800;
    v29 = v22;
    v30 = [v29 description];
    v31 = sub_1C6016940();
    v33 = v32;

    MEMORY[0x1C69534E0](v31, v33);

    sub_1C6016880();
    _s3__C4CodeOMa_3();
    sub_1C5D2A7A0(&qword_1EC1AAF00, _s3__C4CodeOMa_3);
    v34 = sub_1C6017280();

    v35 = v34;
    v44(0, 0, 0, 0, 0, v34);
    v36 = v47;
    [v47 rollback];
  }

  else
  {
    v38 = v41;
    v37 = v42;
    (*(v42 + 32))(v41, v16, v17);
    sub_1C5D1B720();
    (*(v37 + 8))(v38, v17);

    v36 = v47;
  }
}

void sub_1C5D19EA8(void *a1, uint64_t a2, void *a3, void *a4, void (**a5)(const void *, void *))
{
  v36 = a2;
  sub_1C5C6C678(0, qword_1ED7DD2D0, MEMORY[0x1E69C4C18], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36 - v10;
  v12 = sub_1C60158F0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = sub_1C5D2AB78;
  v17[4] = v16;
  v17[5] = a4;
  v40 = a5;
  _Block_copy(a5);
  v18 = qword_1EC1A8EB8;
  v37 = a3;
  v39 = v16;

  v38 = a4;
  if (v18 != -1)
  {
    swift_once();
  }

  v19 = sub_1C60162D0();
  __swift_project_value_buffer(v19, qword_1EC1BE3A0);
  v20 = a1;
  v21 = sub_1C60162B0();
  v22 = sub_1C6016F30();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&dword_1C5C61000, v21, v22, "Calling perform load for event: %@", v23, 0xCu);
    sub_1C5D297C4();
    MEMORY[0x1C6956920](v24, -1, -1);
    MEMORY[0x1C6956920](v23, -1, -1);
  }

  sub_1C5D17AC8();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1C5D29540();
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v43 = 2;
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_1C6017540();

    v41 = 0xD000000000000023;
    v42 = 0x80000001C604A710;
    v26 = v20;
    v27 = [v26 description];
    v28 = sub_1C6016940();
    v30 = v29;

    MEMORY[0x1C69534E0](v28, v30);

    sub_1C6016880();
    _s3__C4CodeOMa_3();
    sub_1C5D2A7A0(&qword_1EC1AAF00, _s3__C4CodeOMa_3);
    v31 = sub_1C6017280();

    v32 = v40;
    _Block_copy(v40);
    v33 = v31;
    v34 = sub_1C6014D30();
    v32[2](v32, v34);

    v35 = v38;
    [v38 rollback];
    _Block_release(v32);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    sub_1C5D1B720();
    (*(v13 + 8))(v15, v12);

    v32 = v40;
    v35 = v38;
  }

  _Block_release(v32);
}

uint64_t sub_1C5D1A470(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v36[1] = a2;
  sub_1C5C6C678(0, qword_1ED7DD2D0, MEMORY[0x1E69C4C18], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v36 - v12;
  v14 = sub_1C60158F0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v36[0] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v19 = qword_1EC1A8EB8;
  v37 = a3;
  v39 = a5;

  v38 = a6;
  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_1C60162D0();
  __swift_project_value_buffer(v20, qword_1EC1BE3A0);
  v21 = a1;
  v22 = sub_1C60162B0();
  v23 = sub_1C6016F30();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&dword_1C5C61000, v22, v23, "Calling perform load for event: %@", v24, 0xCu);
    sub_1C5D297C4();
    MEMORY[0x1C6956920](v25, -1, -1);
    MEMORY[0x1C6956920](v24, -1, -1);
  }

  sub_1C5D17AC8();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1C5D29540();
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v42 = 2;
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1C6017540();

    v40 = 0xD000000000000023;
    v41 = 0x80000001C604A710;
    v27 = v21;
    v28 = [v27 description];
    v29 = sub_1C6016940();
    v31 = v30;

    MEMORY[0x1C69534E0](v29, v31);

    sub_1C6016880();
    _s3__C4CodeOMa_3();
    sub_1C5D2A7A0(&qword_1EC1AAF00, _s3__C4CodeOMa_3);
    v32 = sub_1C6017280();

    v33 = v32;
    (v36[0])(v32);
    v34 = v38;
    [v38 rollback];
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    sub_1C5D1B720();
    (*(v15 + 8))(v17, v14);

    v34 = v38;
  }
}

uint64_t sub_1C5D1A9D4(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7, void (**a8)(void, void))
{
  v47 = a1;
  v48 = a2;
  sub_1C5C6C678(0, qword_1ED7DD2D0, MEMORY[0x1E69C4C18], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v41 - v15;
  v17 = sub_1C60158F0();
  v43 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v42 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a8;
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = sub_1C5D2AB78;
  v20[5] = v19;
  v45 = a5;
  v46 = a6;
  v20[6] = a5;
  v20[7] = a6;
  v20[8] = a7;
  v50 = a8;
  _Block_copy(a8);
  v21 = qword_1EC1A8EB8;
  v49 = a3;

  v44 = a4;
  v22 = a4;

  v51 = a7;

  if (v21 != -1)
  {
    swift_once();
  }

  v23 = sub_1C60162D0();
  __swift_project_value_buffer(v23, qword_1EC1BE3A0);
  v24 = v47;
  v25 = sub_1C60162B0();
  v26 = sub_1C6016F30();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&dword_1C5C61000, v25, v26, "Calling perform load for event: %@", v27, 0xCu);
    sub_1C5D297C4();
    MEMORY[0x1C6956920](v28, -1, -1);
    MEMORY[0x1C6956920](v27, -1, -1);
  }

  sub_1C5D17AC8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C5D29540();
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v54 = 2;
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_1C6017540();

    v52 = 0xD000000000000023;
    v53 = 0x80000001C604A710;
    v30 = v24;
    v31 = [v30 description];
    v32 = sub_1C6016940();
    v34 = v33;

    MEMORY[0x1C69534E0](v32, v34);

    sub_1C6016880();
    _s3__C4CodeOMa_3();
    sub_1C5D2A7A0(&qword_1EC1AAF00, _s3__C4CodeOMa_3);
    v35 = sub_1C6017280();

    v36 = v50;
    _Block_copy(v50);
    v37 = v35;
    sub_1C5D22CA0(v35, 1, v49, v44, v45, v46, v51, v36);
  }

  else
  {
    v39 = v42;
    v38 = v43;
    (*(v43 + 32))(v42, v16, v17);
    sub_1C5D1B720();
    (*(v38 + 8))(v39, v17);

    v36 = v50;
  }

  _Block_release(v36);
}

void sub_1C5D1AFB8(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void *), void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v51 = a2;
  v53 = a1;
  sub_1C5C6C678(0, qword_1ED7DD2D0, MEMORY[0x1E69C4C18], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v48 - v16;
  v18 = sub_1C60158F0();
  v49 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v48 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v50 = a5;
  v20[4] = a5;
  v20[5] = a6;
  v20[6] = a7;
  v20[7] = a8;
  v20[8] = a9;
  v21 = qword_1EC1A8EB8;

  v55 = a4;

  v54 = a9;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_1C60162D0();
  __swift_project_value_buffer(v22, qword_1EC1BE3A0);
  v23 = v53;
  v24 = sub_1C60162B0();
  v25 = sub_1C6016F30();

  v26 = os_log_type_enabled(v24, v25);
  v52 = a3;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = a6;
    v29 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v23;
    *v29 = v23;
    v30 = v23;
    _os_log_impl(&dword_1C5C61000, v24, v25, "Calling perform load for event: %@", v27, 0xCu);
    sub_1C5D297C4();
    v31 = v29;
    a6 = v28;
    MEMORY[0x1C6956920](v31, -1, -1);
    MEMORY[0x1C6956920](v27, -1, -1);
  }

  sub_1C5D17AC8();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    v53 = a6;
    sub_1C5D29540();
    v32 = sub_1C5C64D74(0, &qword_1ED7DCCF0);
    v49 = @"MPCPodcastsBehaviorError";
    v51 = sub_1C6016940();
    v58 = 2;
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_1C6017540();

    v56 = 0xD000000000000023;
    v57 = 0x80000001C604A710;
    v33 = v23;
    v34 = [v33 description];
    v35 = sub_1C6016940();
    v37 = v36;

    MEMORY[0x1C69534E0](v35, v37);

    sub_1C6016880();
    _s3__C4CodeOMa_3();
    sub_1C5D2A7A0(&qword_1EC1AAF00, _s3__C4CodeOMa_3);
    v51 = v32;
    v38 = sub_1C6017280();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v40 = v38;
    [v55 rollback];
    sub_1C6016940();
    v58 = 4;
    if (Strong)
    {
      v41 = sub_1C6014D30();
      sub_1C6016880();
      v42 = sub_1C6017280();

      v43 = v42;
      v50(v42);
    }

    else
    {
      sub_1C6016880();
      v46 = sub_1C6017280();

      v47 = v46;
      v50(v46);
    }
  }

  else
  {
    v45 = v48;
    v44 = v49;
    (v49[1].isa)(v48, v17, v18);
    sub_1C5D1B720();
    (v44->info)(v45, v18);
  }
}

void sub_1C5D1B720()
{
  OUTLINED_FUNCTION_247();
  v2 = v1;
  v19 = v3;
  v5 = v4;
  v6 = sub_1C60158F0();
  OUTLINED_FUNCTION_25();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, v5, v6);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v13, v12, v6);
  *(v15 + v14) = v0;
  v16 = (v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v16 = v19;
  v16[1] = v2;
  v17 = v0;

  sub_1C60157C0();

  OUTLINED_FUNCTION_237();
}

void sub_1C5D1B884(uint64_t a1, uint64_t a2, char *a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  v100 = a5;
  v101 = a4;
  v102 = a3;
  v97 = a2;
  v99 = a1;
  v5 = MEMORY[0x1E69E6720];
  sub_1C5C6C678(0, &qword_1ED7DD2C8, MEMORY[0x1E69C4C60], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v96 = &v84 - v7;
  v98 = sub_1C6015920();
  v94 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v93 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5C6C678(0, qword_1ED7DD2D0, MEMORY[0x1E69C4C18], v5);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v84 - v10;
  v12 = sub_1C6015800();
  v92 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v91 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v90 = &v84 - v15;
  v16 = sub_1C60166C0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_1C60158F0();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v89 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v87 = &v84 - v25;
  v88 = v26;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v84 - v27;
  sub_1C5D2A4FC();
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C5D2A57C(v99, v31, sub_1C5D2A4FC);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v31;
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v20);
    sub_1C5D159F8(v11);
    v33 = v32;
    v101(v32, 1);
  }

  else
  {
    v84 = v11;
    v95 = v21;
    v34 = *(v21 + 32);
    v99 = v28;
    v86 = v21 + 32;
    v85 = v34;
    v34(v28, v31, v20);
    sub_1C5C64D74(0, &qword_1ED7DCE50);
    *v19 = sub_1C6016FD0();
    (*(v17 + 104))(v19, *MEMORY[0x1E69E8020], v16);
    v35 = sub_1C60166F0();
    (*(v17 + 8))(v19, v16);
    if (v35)
    {
      v36 = v20;
      v37 = v90;
      sub_1C6015820();
      v38 = v92;
      v39 = v91;
      (*(v92 + 104))(v91, *MEMORY[0x1E69C4BF0], v12);
      sub_1C5D2A7A0(&unk_1EC1A8F70, MEMORY[0x1E69C4C08]);
      v40 = sub_1C60168F0();
      v41 = *(v38 + 8);
      v41(v39, v12);
      v41(v37, v12);
      v43 = v101;
      v42 = v102;
      v44 = v99;
      v45 = v96;
      if ((v40 & 1) == 0)
      {
        v46 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
        swift_beginAccess();
        v47 = *&v42[v46];
        v48 = v95;
        if (v47)
        {
          v49 = [v47 eventStream];
          sub_1C5C6C678(0, &unk_1ED7DCB20, sub_1C5CC540C, MEMORY[0x1E69E6F90]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1C60311E0;
          *(inited + 32) = @"account-id";
          v51 = @"account-id";
          sub_1C5D1C650();
          if (v52)
          {
            v53 = sub_1C6016900();
          }

          else
          {
            v53 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
          }

          *(inited + 40) = v53;
          type metadata accessor for MPCPlaybackEngineEventPayloadKey();
          sub_1C5D2AA10(0, &qword_1ED7DCD60);
          sub_1C5D2A7A0(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
          sub_1C6016880();
          sub_1C5E372B8();

          v43 = v101;
          v42 = v102;
          v48 = v95;
          v45 = v96;
        }

        v54 = v84;
        (*(v48 + 16))(v84, v44, v36);
        __swift_storeEnumTagSinglePayload(v54, 0, 1, v36);
        sub_1C5D159F8(v54);
      }

      sub_1C60158E0();
      v55 = v98;
      if (__swift_getEnumTagSinglePayload(v45, 1, v98) == 1)
      {
        sub_1C5D29540();
        sub_1C5C64D74(0, &qword_1ED7DCCF0);
        sub_1C6016940();
        v103 = 3;
        sub_1C6016880();
        _s3__C4CodeOMa_3();
        sub_1C5D2A7A0(&qword_1EC1AAF00, _s3__C4CodeOMa_3);
        v56 = sub_1C6017280();

        v57 = v56;
        v43(v56, 1);

        (*(v95 + 8))(v44, v36);
      }

      else
      {
        v58 = v36;
        (*(v94 + 32))(v93, v45, v55);
        sub_1C5D1C78C();
        sub_1C5C64D74(0, &qword_1EC1A92B0);
        v96 = sub_1C5D1CA7C();
        v59 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
        swift_beginAccess();
        v60 = *&v42[v59];
        if (v60)
        {
          v61 = [v60 eventStream];
          sub_1C5C6C678(0, &unk_1ED7DCB20, sub_1C5CC540C, MEMORY[0x1E69E6F90]);
          v62 = swift_initStackObject();
          *(v62 + 16) = xmmword_1C60311E0;
          v63 = v96;
          *(v62 + 32) = @"queue-section-id";
          *(v62 + 40) = v63;
          type metadata accessor for MPCPlaybackEngineEventPayloadKey();
          sub_1C5D2AA10(0, &qword_1ED7DCD60);
          sub_1C5D2A7A0(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
          v64 = @"queue-section-id";
          v65 = v63;
          v42 = v102;
          sub_1C6016880();
          sub_1C5E372B8();
        }

        v66 = v95;
        v67 = *(v95 + 16);
        v68 = v87;
        v69 = v97;
        v67(v87, v97, v36);
        v70 = *(v66 + 80);
        v71 = v88;
        v72 = swift_allocObject();
        v73 = v100;
        *(v72 + 2) = v101;
        *(v72 + 3) = v73;
        v74 = v96;
        *(v72 + 4) = v42;
        *(v72 + 5) = v74;
        v75 = v85;
        v85(&v72[(v70 + 48) & ~v70], v68, v36);
        v101 = *&v42[OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_podcastsMediaLibrary];
        v76 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v67(v68, v69, v36);
        v77 = v89;
        v67(v89, v99, v36);
        v78 = (v70 + 40) & ~v70;
        v79 = (v71 + v70 + v78) & ~v70;
        v80 = swift_allocObject();
        *(v80 + 2) = v76;
        *(v80 + 3) = sub_1C5D2A5D8;
        *(v80 + 4) = v72;
        v75(&v80[v78], v68, v58);
        v75(&v80[v79], v77, v58);
        v81 = v96;

        v82 = v102;

        v83 = v93;
        sub_1C60157A0();

        (*(v94 + 8))(v83, v98);
        (*(v95 + 8))(v99, v58);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1C5D1C650()
{
  v0 = sub_1C60157B0();
  v1 = v0;
  if (!v0)
  {
    return 0;
  }

  v2 = [v0 ams_DSID];

  if (v2)
  {
    v3 = [v2 stringValue];

    sub_1C6016940();
    v4 = [objc_opt_self() sharedManager];
    v5 = sub_1C6016900();

    v2 = [v4 accountForDSID_];

    if (v2)
    {
      v6 = [v2 hashedDSID];

      v2 = sub_1C6016940();
    }
  }

  return v2;
}

void sub_1C5D1C78C()
{
  if (MTPlaybackContinuousPlaybackEnabled())
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  sub_1C5D2A930();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  *(inited + 32) = sub_1C6016940();
  *(inited + 40) = v3;
  *(inited + 48) = v1;
  v4 = sub_1C6016880();
  v5 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_lastEmittedBehaviorMetadata;
  v6 = *(v0 + OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_lastEmittedBehaviorMetadata);
  if (v6)
  {

    v7 = sub_1C5D290E0(v4, v6);

    if (v7)
    {
      swift_bridgeObjectRelease_n();
      return;
    }
  }

  else
  {
  }

  *(v0 + v5) = v4;

  v8 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
  swift_beginAccess();
  v9 = *(v0 + v8);
  if (v9)
  {
    v10 = [v9 eventStream];
    sub_1C5C6C678(0, &unk_1ED7DCB20, sub_1C5CC540C, MEMORY[0x1E69E6F90]);
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_1C6035C00;
    *(v11 + 32) = @"session-id";
    sub_1C5C64D74(0, &qword_1EC1A92B0);
    swift_beginAccess();
    v12 = @"session-id";

    *(v11 + 40) = sub_1C5D1CA7C();
    *(v11 + 48) = @"playback-behavior-metadata";
    v13 = @"playback-behavior-metadata";
    v14 = sub_1C6016840();

    *(v11 + 56) = v14;
    type metadata accessor for MPCPlaybackEngineEventPayloadKey();
    sub_1C5D2AA10(0, &qword_1ED7DCD60);
    sub_1C5D2A7A0(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
    sub_1C6016880();
    sub_1C5E372B8();
  }

  else
  {
  }
}

id sub_1C5D1CA7C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1C6016900();

  v2 = [v0 initWithString_];

  return v2;
}

void sub_1C5D1CAF0(uint64_t a1, char a2, void (*a3)(uint64_t, void), uint64_t a4, uint64_t a5, void *a6)
{
  a3(a1, a2 & 1);
  v8 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
  swift_beginAccess();
  v9 = *(a5 + v8);
  if (v9)
  {
    v10 = [v9 eventStream];
    sub_1C5C6C678(0, &qword_1EC1A88D0, sub_1C5D2A7E4, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C6035CF0;
    *(inited + 32) = @"queue-section-id";
    *(inited + 40) = a6;
    *(inited + 48) = @"queue-section-item-count";
    sub_1C5D2A880();
    v12 = @"queue-section-id";
    v13 = a6;
    v14 = @"queue-section-item-count";
    sub_1C6017A50();
    if (v22)
    {
      sub_1C5C6AA20();
    }

    *(inited + 56) = sub_1C6016DB0();
    *(inited + 64) = @"queue-load-error";
    v15 = @"queue-load-error";
    sub_1C6017A40();
    if (v22 && (sub_1C5C74680(0, &qword_1ED7DCAE0), sub_1C5C64D74(0, &qword_1ED7DCCF0), (swift_dynamicCast() & 1) != 0))
    {
      v16 = v21;
    }

    else
    {
      v16 = 0;
    }

    *(inited + 72) = v16;
    *(inited + 80) = @"queue-rtc-service-id";
    v17 = @"queue-rtc-service-id";
    sub_1C5D1EDF8();
    if (v18)
    {
      v19 = sub_1C6016900();
    }

    else
    {
      v19 = 0;
    }

    *(inited + 88) = v19;
    type metadata accessor for MPCPlaybackEngineEventPayloadKey();
    sub_1C5D29594(0, &qword_1EC1A8AB0, &qword_1ED7DCD60, &protocolRef_MPCPlaybackEngineEventPayloadValue, sub_1C5D2AA10);
    sub_1C5D2A7A0(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
    v20 = sub_1C6016880();
    sub_1C5D15630(v20);

    sub_1C5E372B8();
  }
}

void sub_1C5D1CE04(NSObject *a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, unint64_t a5, uint64_t a6)
{
  v180 = a6;
  v189 = a5;
  v196 = a4;
  v197 = a3;
  v195 = a1;
  v200 = sub_1C6015770();
  v6 = *(v200 - 8);
  v7 = MEMORY[0x1EEE9AC00](v200);
  v190 = &v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v192 = &v175 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v199 = (&v175 - v12);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v179 = &v175 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v202 = &v175 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v178 = &v175 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v182 = &v175 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v175 - v21;
  sub_1C5C6C678(0, &qword_1ED7DD2C8, MEMORY[0x1E69C4C60], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v181 = &v175 - v24;
  v188 = sub_1C6015800();
  isa = v188[-1].isa;
  MEMORY[0x1EEE9AC00](v188);
  v186 = &v175 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1C6015960();
  v193 = *(v26 - 8);
  v194 = v26;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v183 = &v175 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v184 = &v175 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v198 = &v175 - v31;
  v201 = sub_1C6015900();
  v32 = *(v201 - 8);
  v33 = MEMORY[0x1EEE9AC00](v201);
  v185 = &v175 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v191 = &v175 - v35;
  sub_1C5D2A6F4();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v175 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1C60166C0();
  v40 = *(v39 - 1);
  MEMORY[0x1EEE9AC00](v39);
  v42 = (&v175 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C5C64D74(0, &qword_1ED7DCE50);
  *v42 = sub_1C6016FD0();
  (*(v40 + 104))(v42, *MEMORY[0x1E69E8020], v39);
  v43 = sub_1C60166F0();
  (*(v40 + 8))(v42, v39);
  if ((v43 & 1) == 0)
  {
    goto LABEL_94;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v203[0] = 0;
    sub_1C6016880();
    _s3__C4CodeOMa_3();
    sub_1C5D2A7A0(&qword_1EC1AAF00, _s3__C4CodeOMa_3);
    v57 = sub_1C6017280();

    v58 = v57;
    v197(v57, 1);

    return;
  }

  v39 = Strong;
  sub_1C5D2A57C(v195, v38, sub_1C5D2A6F4);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v177 = v39;
    v60 = v193;
    v59 = v194;
    v61 = v198;
    (*(v193 + 32))(v198, v38, v194);
    if (qword_1EC1A8EB8 != -1)
    {
      swift_once();
    }

    v62 = sub_1C60162D0();
    v63 = __swift_project_value_buffer(v62, qword_1EC1BE3A0);
    v64 = *(v60 + 16);
    v65 = v184;
    v185 = v60 + 16;
    v176 = v64;
    v64(v184, v61, v59);
    v195 = v63;
    v66 = sub_1C60162B0();
    v67 = sub_1C6016F30();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 134349056;
      v69 = *(sub_1C6015950() + 16);

      v191 = *(v60 + 8);
      (v191)(v65, v59);
      *(v68 + 4) = v69;
      v70 = v198;
      _os_log_impl(&dword_1C5C61000, v66, v67, "􀡓 Got %{public}ld items from PML", v68, 0xCu);
      MEMORY[0x1C6956920](v68, -1, -1);
    }

    else
    {
      v70 = v61;
      v191 = *(v60 + 8);
      (v191)(v65, v59);
    }

    v38 = v188;
    v72 = isa;

    v73 = v186;
    sub_1C6015820();
    v74 = (*(v72 + 11))(v73, v38);
    v32 = v192;
    v75 = v202;
    v76 = v177;
    if (v74 != *MEMORY[0x1E69C4BF8])
    {
      if (v74 == *MEMORY[0x1E69C4BF0])
      {
LABEL_18:
        v80 = v70;
        v81 = *(sub_1C6015950() + 16);

        if (!v81 && (sub_1C6015940() & 1) == 0)
        {
          v144 = sub_1C60162B0();
          v145 = sub_1C6016F30();
          if (os_log_type_enabled(v144, v145))
          {
            v146 = swift_slowAlloc();
            *v146 = 0;
            _os_log_impl(&dword_1C5C61000, v144, v145, "􀡓 No playable items found", v146, 2u);
            MEMORY[0x1C6956920](v146, -1, -1);
          }

          if (qword_1EC1A9758 != -1)
          {
            swift_once();
          }

          v197(qword_1EC1BE4D0, 1);

          goto LABEL_90;
        }

        v82 = v80;
        if (sub_1C6015940())
        {
          v83 = sub_1C60162B0();
          v84 = sub_1C6016F30();
          if (os_log_type_enabled(v83, v84))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&dword_1C5C61000, v83, v84, "􀢕 Collection has subscription only content", v38, 2u);
            MEMORY[0x1C6956920](v38, -1, -1);
          }

          v85 = sub_1C6015950();
          v86 = 0;
          v39 = *(v85 + 16);
          v201 = v6 + 16;
          v32 = v6 + 8;
          v188 = (v6 + 32);
          v189 = MEMORY[0x1E69E7CC0];
          v87 = v200;
          while (v39 != v86)
          {
            if (v86 >= *(v85 + 16))
            {
              goto LABEL_92;
            }

            v88 = (*(v6 + 80) + 32) & ~*(v6 + 80);
            v38 = *(v6 + 72);
            (*(v6 + 16))(v22, v85 + v88 + v38 * v86, v87);
            if (sub_1C6015610())
            {
              v89 = v188->isa;
              isa = v22;
              v186 = v89;
              (v89)(v182, v22, v87);
              v90 = v189;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v203[0] = v90;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1C5D0F174(0, *(v90 + 16) + 1, 1);
                v87 = v200;
                v90 = v203[0];
              }

              v75 = v202;
              v93 = *(v90 + 16);
              v92 = *(v90 + 24);
              v94 = v93 + 1;
              if (v93 >= v92 >> 1)
              {
                v95 = v93 + 1;
                v189 = v93;
                sub_1C5D0F174(v92 > 1, v93 + 1, 1);
                v94 = v95;
                v93 = v189;
                v87 = v200;
                v90 = v203[0];
              }

              ++v86;
              *(v90 + 16) = v94;
              v189 = v90;
              (v186)(v90 + v88 + v93 * v38, v182, v87);
              v22 = isa;
            }

            else
            {
              (*v32)(v22, v87);
              ++v86;
              v75 = v202;
            }
          }

          v96 = v189;
          v97 = *(v189 + 16);
          v98 = *(sub_1C6015950() + 16);

          if (v97 == v98)
          {

            v99 = sub_1C60162B0();
            v100 = sub_1C6016F30();

            v101 = os_log_type_enabled(v99, v100);
            v102 = v177;
            if (v101)
            {
              v103 = swift_slowAlloc();
              v199 = swift_slowAlloc();
              v203[0] = v199;
              *v103 = 136446210;
              v104 = v96;
              v105 = *(v96 + 16);
              if (v105)
              {
                v190 = v103;
                LODWORD(v192) = v100;
                v195 = v99;
                v106 = v104 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
                v202 = *(v6 + 72);
                v107 = *(v6 + 16);
                v108 = MEMORY[0x1E69E7CC0];
                v109 = v200;
                v110 = v178;
                do
                {
                  v107(v110, v106, v109);
                  v111 = sub_1C60156D0();
                  v113 = v112;
                  (*v32)(v110, v109);
                  if (v113)
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_1C5D0DB30();
                      v108 = v116;
                    }

                    v114 = *(v108 + 16);
                    if (v114 >= *(v108 + 24) >> 1)
                    {
                      sub_1C5D0DB30();
                      v108 = v117;
                    }

                    *(v108 + 16) = v114 + 1;
                    v115 = v108 + 16 * v114;
                    *(v115 + 32) = v111;
                    *(v115 + 40) = v113;
                  }

                  v106 += v202;
                  --v105;
                  v109 = v200;
                }

                while (v105);

                v102 = v177;
                v99 = v195;
                LOBYTE(v100) = v192;
                v103 = v190;
              }

              else
              {

                v108 = MEMORY[0x1E69E7CC0];
              }

              v168 = MEMORY[0x1C6953600](v108, MEMORY[0x1E69E6158]);
              v170 = v169;

              v171 = sub_1C5C6AB10(v168, v170, v203);

              *(v103 + 4) = v171;
              _os_log_impl(&dword_1C5C61000, v99, v100, "􀢕 Found items that require subscription, %{public}s", v103, 0xCu);
              v172 = v199;
              __swift_destroy_boxed_opaque_existential_0(v199);
              MEMORY[0x1C6956920](v172, -1, -1);
              MEMORY[0x1C6956920](v103, -1, -1);
            }

            else
            {
            }

            sub_1C5C64D74(0, &qword_1ED7DCCF0);
            sub_1C6016940();
            v203[0] = 27;
            sub_1C6016880();
            _s3__C4CodeOMa_2();
            sub_1C5D2A7A0(&qword_1EC1AB170, _s3__C4CodeOMa_2);
            v173 = sub_1C6017280();

            v174 = v173;
            v197(v173, 1);

LABEL_90:
            (v191)(v198, v194);
            return;
          }

          v82 = v198;
          v32 = v192;
        }

        v118 = v183;
        v119 = v82;
        v120 = v194;
        v176(v183, v119, v194);
        v121 = sub_1C60162B0();
        v38 = sub_1C6016F30();
        if (os_log_type_enabled(v121, v38))
        {
          LODWORD(isa) = v38;
          v188 = v121;
          v122 = swift_slowAlloc();
          v185 = swift_slowAlloc();
          v203[0] = v185;
          v186 = v122;
          *v122 = 136315138;
          v39 = sub_1C6015950();
          v32 = 0;
          v22 = v39[2];
          v201 = v6 + 32;
          v202 = v6 + 16;
          v123 = (v6 + 8);
          v189 = MEMORY[0x1E69E7CC0];
          v124 = v200;
          while (v22 != v32)
          {
            if (v32 >= v39[2])
            {
              goto LABEL_93;
            }

            v125 = (*(v6 + 80) + 32) & ~*(v6 + 80);
            v126 = *(v6 + 72);
            (*(v6 + 16))(v75, v39 + v125 + v126 * v32, v124);
            v38 = v124;
            if (sub_1C6015610())
            {
              (*v123)(v75, v124);
              ++v32;
            }

            else
            {
              v195 = *v201;
              (v195)(v179, v75, v124);
              v127 = v189;
              v128 = swift_isUniquelyReferenced_nonNull_native();
              v129 = v127;
              v204 = v127;
              if (v128)
              {
                v124 = v38;
              }

              else
              {
                sub_1C5D0F174(0, *(v127 + 16) + 1, 1);
                v124 = v200;
                v129 = v204;
              }

              v38 = *(v129 + 16);
              v130 = *(v129 + 24);
              v131 = v38 + 1;
              if (v38 >= v130 >> 1)
              {
                v189 = v38 + 1;
                sub_1C5D0F174(v130 > 1, v38 + 1, 1);
                v131 = v189;
                v124 = v200;
                v129 = v204;
              }

              ++v32;
              *(v129 + 16) = v131;
              v189 = v129;
              (v195)(v129 + v125 + v38 * v126, v179, v124);
            }
          }

          v132 = *(v189 + 16);
          if (v132)
          {
            v204 = MEMORY[0x1E69E7CC0];
            v133 = v189;
            sub_1C5D0F1D8(0, v132, 0);
            v134 = v200;
            v135 = v204;
            v136 = v133 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
            v201 = *(v6 + 72);
            v195 = *(v6 + 16);
            do
            {
              v137 = v199;
              (v195)(v199, v136, v134);
              v138 = sub_1C60156D0();
              v134 = v200;
              v139 = v138;
              v38 = v140;
              (*v123)(v137, v200);
              v204 = v135;
              v142 = *(v135 + 16);
              v141 = *(v135 + 24);
              if (v142 >= v141 >> 1)
              {
                sub_1C5D0F1D8((v141 > 1), v142 + 1, 1);
                v134 = v200;
                v135 = v204;
              }

              *(v135 + 16) = v142 + 1;
              v143 = v135 + 16 * v142;
              *(v143 + 32) = v139;
              *(v143 + 40) = v38;
              v136 += v201;
              --v132;
            }

            while (v132);
          }

          else
          {

            v135 = MEMORY[0x1E69E7CC0];
          }

          sub_1C5C67530(0, &qword_1EC1A9480, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          v148 = MEMORY[0x1C6953600](v135, v147);
          v150 = v149;

          (v191)(v183, v194);
          v151 = sub_1C5C6AB10(v148, v150, v203);

          v152 = v186;
          *(v186 + 4) = v151;
          v153 = v188;
          _os_log_impl(&dword_1C5C61000, v188, isa, "􀢕 Filtered items: %s", v152, 0xCu);
          v154 = v185;
          __swift_destroy_boxed_opaque_existential_0(v185);
          MEMORY[0x1C6956920](v154, -1, -1);
          MEMORY[0x1C6956920](v152, -1, -1);

          v32 = v192;
        }

        else
        {

          (v191)(v118, v120);
        }

        v155 = sub_1C6015950();
        v156 = 0;
        v22 = *(v155 + 16);
        v201 = v6 + 32;
        v39 = (v6 + 8);
        v202 = MEMORY[0x1E69E7CC0];
        v157 = v200;
        while (1)
        {
          if (v22 == v156)
          {

            v166 = v177;
            v167 = sub_1C5D1E71C(v202, v180);

            v197(v167, 0);

            goto LABEL_90;
          }

          if (v156 >= *(v155 + 16))
          {
            break;
          }

          v38 = (*(v6 + 80) + 32) & ~*(v6 + 80);
          v158 = v32;
          v159 = *(v6 + 72);
          (*(v6 + 16))(v158, v155 + v38 + v159 * v156, v157);
          if (sub_1C6015610())
          {
            (*v39)(v158, v157);
            ++v156;
            v32 = v158;
          }

          else
          {
            v199 = *v201;
            (v199)(v190, v158, v157);
            v160 = v202;
            v161 = swift_isUniquelyReferenced_nonNull_native();
            v203[0] = v160;
            if ((v161 & 1) == 0)
            {
              sub_1C5D0F174(0, *(v160 + 16) + 1, 1);
              v157 = v200;
              v160 = v203[0];
            }

            v163 = *(v160 + 16);
            v162 = *(v160 + 24);
            v164 = v163 + 1;
            if (v163 >= v162 >> 1)
            {
              v165 = v163 + 1;
              v202 = *(v160 + 16);
              sub_1C5D0F174(v162 > 1, v163 + 1, 1);
              v164 = v165;
              v163 = v202;
              v160 = v203[0];
              v157 = v200;
            }

            ++v156;
            *(v160 + 16) = v164;
            v202 = v160;
            (v199)(v160 + v38 + v163 * v159, v190, v157);
            v32 = v192;
          }
        }

        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      if (v74 != *MEMORY[0x1E69C4C00])
      {
        if (v74 != *MEMORY[0x1E69C4BE8])
        {
          (*(v72 + 1))(v73, v38);
        }

        goto LABEL_18;
      }
    }

    v77 = v181;
    sub_1C6015930();
    v78 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_nextRequest;
    swift_beginAccess();
    v79 = v76 + v78;
    v70 = v198;
    sub_1C5D29888(v77, v79);
    swift_endAccess();
    goto LABEL_18;
  }

  v22 = v191;
  v45 = v38;
  v38 = v201;
  (*(v32 + 32))(v191, v45, v201);
  if (qword_1EC1A8EB8 != -1)
  {
LABEL_95:
    swift_once();
  }

  v46 = sub_1C60162D0();
  __swift_project_value_buffer(v46, qword_1EC1BE3A0);
  v47 = *(v32 + 16);
  v48 = v185;
  v47(v185, v22, v38);
  v49 = sub_1C60162B0();
  v50 = sub_1C6016F20();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 138543362;
    sub_1C5D2A7A0(&unk_1EC1A8F60, MEMORY[0x1E69C4C50]);
    swift_allocError();
    v47(v53, v48, v201);
    v54 = _swift_stdlib_bridgeErrorToNSError();
    v55 = *(v32 + 8);
    v55(v48, v201);
    *(v51 + 4) = v54;
    *v52 = v54;
    v38 = v201;
    _os_log_impl(&dword_1C5C61000, v49, v50, "􀃂 Got error from MediaRepository, %{public}@", v51, 0xCu);
    sub_1C5D297C4();
    v56 = v52;
    v22 = v191;
    MEMORY[0x1C6956920](v56, -1, -1);
    MEMORY[0x1C6956920](v51, -1, -1);
  }

  else
  {

    v55 = *(v32 + 8);
    v55(v48, v38);
  }

  v71 = sub_1C5D122FC();
  v197(v71, 1);

  v55(v22, v38);
}

uint64_t sub_1C5D1E71C(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v70 = sub_1C60158F0();
  v4 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6015770();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v71 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v62 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v62 - v13;
  v80 = MEMORY[0x1E69E7CC0];
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v63 = v2;
    v62 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_contentItemIDsMap;
    swift_beginAccess();
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v78 = v18;
    v19 = *(v17 + 56);
    v69 = (v4 + 16);
    v75 = (v17 - 8);
    v76 = v19;
    v67 = MEMORY[0x1E69E7CC0];
    *&v20 = 136315138;
    v64 = v20;
    v66 = v17;
    v77 = v12;
    v74 = v14;
    while (1)
    {
      v78(v14, v16, v6);
      if ((sub_1C6015520() & 1) == 0)
      {
        break;
      }

      if (qword_1EC1A8EB8 != -1)
      {
        swift_once();
      }

      v21 = sub_1C60162D0();
      __swift_project_value_buffer(v21, qword_1EC1BE3A0);
      v78(v12, v14, v6);
      v22 = sub_1C60162B0();
      v23 = sub_1C6016F30();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v79[0] = v25;
        *v24 = v64;
        v26 = sub_1C60156D0();
        if (v27)
        {
          v28 = v26;
        }

        else
        {
          v28 = 0;
        }

        if (v27)
        {
          v29 = v27;
        }

        else
        {
          v29 = 0xE000000000000000;
        }

        v68 = v15;
        v30 = *v75;
        (*v75)(v77, v6);
        v31 = sub_1C5C6AB10(v28, v29, v79);

        *(v24 + 4) = v31;
        _os_log_impl(&dword_1C5C61000, v22, v23, "􀉼 Removing explicit media: '%s'", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x1C6956920](v25, -1, -1);
        v32 = v24;
        v12 = v77;
        MEMORY[0x1C6956920](v32, -1, -1);

        v33 = v74;
        v30(v74, v6);
        v15 = v68;
LABEL_32:
        v14 = v33;
        goto LABEL_33;
      }

      v38 = *v75;
      (*v75)(v12, v6);
      v38(v14, v6);
LABEL_33:
      v16 += v76;
      if (!--v15)
      {
        goto LABEL_36;
      }
    }

    sub_1C60154B0();
    if (v34)
    {

      v35 = sub_1C60154B0();
      v37 = v36;
      v33 = v14;
    }

    else
    {
      v39 = sub_1C6015540();
      if (v40)
      {
        v35 = 0;
        v37 = 0;
      }

      else
      {
        v79[0] = v39;
        sub_1C5CFB1CC();
        v41 = sub_1C6017380();
        v43 = v42;
        v44 = *(v63 + v62);
        if (*(v44 + 16))
        {

          v45 = sub_1C5CE2084(v41, v43);
          if (v46)
          {
            v47 = (*(v44 + 56) + 16 * v45);
            v35 = *v47;
            v37 = v47[1];
          }

          else
          {
            v35 = 0;
            v37 = 0;
          }
        }

        else
        {
          v35 = 0;
          v37 = 0;
        }

        swift_beginAccess();
        sub_1C5D459B0(v41, v43);
        swift_endAccess();
      }

      v33 = v74;
    }

    v48 = v71;
    v78(v71, v33, v6);
    v49 = v72;
    (*v69)(v72, v73, v70);
    LOBYTE(v79[0]) = 1;
    v50 = objc_allocWithZone(type metadata accessor for PodcastAVItem());
    sub_1C5CED1E8(v48, v49, v79, v35, v37, 0, v51, v52, v62, v63, v64, *(&v64 + 1), v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
    if (v53)
    {
      v54 = v53;
      MEMORY[0x1C69535C0]();
      if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C6016B30();
      }

      sub_1C6016B70();

      v14 = v74;
      (*v75)(v74, v6);
      v67 = v80;
      v12 = v77;
      goto LABEL_33;
    }

    (*v75)(v33, v6);
    v12 = v77;
    goto LABEL_32;
  }

  v67 = MEMORY[0x1E69E7CC0];
LABEL_36:
  sub_1C60158A0();
  v55 = v67;
  if (v56)
  {
    return v55;
  }

  result = sub_1C5C8FEE4(v67);
  if (!result)
  {
    return v55;
  }

  if ((v55 & 0xC000000000000001) != 0)
  {
    v58 = MEMORY[0x1C6954040](0, v55);
    goto LABEL_41;
  }

  if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v58 = *(v55 + 32);
LABEL_41:
    v59 = v58;
    sub_1C60158A0();
    if (v60)
    {
      v61 = 0;
    }

    else
    {
      v61 = sub_1C6016D00();
    }

    [v59 setInitialPlaybackStartTimeOverride_];

    return v55;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5D1EDF8()
{
  v1 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  if (!*(v0 + v1))
  {
    return 0;
  }

  v2 = [swift_unknownObjectRetain() playerID];
  if (!v2)
  {
    sub_1C6016940();
    v2 = sub_1C6016900();
  }

  v3 = [objc_opt_self() playerServiceNameWithPlayerID_];

  v4 = sub_1C6016940();
  MEMORY[0x1C69534E0](46, 0xE100000000000000);
  sub_1C5D1EF1C();
  MEMORY[0x1C69534E0](0xD000000000000014);
  swift_unknownObjectRelease();

  return v4;
}

unint64_t sub_1C5D1EF1C()
{
  OUTLINED_FUNCTION_2_18();
  v1 = MEMORY[0x1E69E6720];
  sub_1C5C6C678(0, v2, v3, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v4);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  OUTLINED_FUNCTION_19_11();
  sub_1C5C6C678(0, v8, v9, v1);
  v11 = OUTLINED_FUNCTION_13_3(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_43_4();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  sub_1C60158D0();
  v15 = sub_1C6015B40();
  OUTLINED_FUNCTION_73_0(v7, 1, v15);
  if (v24)
  {
    OUTLINED_FUNCTION_2_18();
    sub_1C5D29540();
    sub_1C6015BF0();
    OUTLINED_FUNCTION_41_0();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  }

  else
  {
    v20 = v7;
    sub_1C6015B30();
    (*(*(v15 - 8) + 8))(v7, v15);
    sub_1C6015BF0();
    v21 = OUTLINED_FUNCTION_73();
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v7);
    sub_1C5D29814(v14, v0, &qword_1EC1A8F40, MEMORY[0x1E69C4CD8]);
    v22 = *(v7 - 1);
    v23 = (*(v22 + 88))(v0, v20);
    v24 = v23 == *MEMORY[0x1E69C4CB8] || v23 == *MEMORY[0x1E69C4CB0];
    v25 = v24 || v23 == *MEMORY[0x1E69C4CC8];
    if (v25 || v23 != *MEMORY[0x1E69C4CC0])
    {
      (*(v22 + 8))(v0, v20);
    }
  }

  OUTLINED_FUNCTION_19_11();
  sub_1C5D29540();
  return 0xD000000000000014;
}

void sub_1C5D1F224(void *a1, char *a2, void *aBlock)
{
  _Block_copy(aBlock);
  if (sub_1C5D0BB50())
  {
    if (qword_1EC1A8EB8 != -1)
    {
      swift_once();
    }

    v6 = sub_1C60162D0();
    __swift_project_value_buffer(v6, qword_1EC1BE3A0);
    v7 = sub_1C60162B0();
    v8 = sub_1C6016F30();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      MEMORY[0x1C6956920](v9, -1, -1);
    }

    v10 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
    swift_beginAccess();
    v11 = *&a2[v10];
    if (v11)
    {
      swift_unknownObjectRetain();
      v12 = sub_1C6016900();
      v13 = [v11 beginEditWithReason_];
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0;
    }

    _Block_copy(aBlock);
    v14 = v13;
    v15 = a2;
    sub_1C5D191C4(a1, v15, v15, v13, aBlock);

    _Block_release(aBlock);
    _Block_release(aBlock);
  }

  else
  {
    (*(aBlock + 2))(aBlock, 0, 0, 0, 0);
    _Block_release(aBlock);

    _Block_release(aBlock);
  }
}

void sub_1C5D1F448()
{
  v2 = v0;
  OUTLINED_FUNCTION_62_3();
  if (sub_1C5D0BB50())
  {
    if (qword_1EC1A8EB8 != -1)
    {
      OUTLINED_FUNCTION_12_5();
    }

    v3 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v3, qword_1EC1BE3A0);
    v4 = sub_1C60162B0();
    v5 = sub_1C6016F30();
    if (OUTLINED_FUNCTION_268(v5))
    {
      *OUTLINED_FUNCTION_42() = 0;
      OUTLINED_FUNCTION_71_1();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_28();
    }

    v11 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
    OUTLINED_FUNCTION_31_2();
    swift_beginAccess();
    v12 = *&v2[v11];
    if (v12)
    {
      swift_unknownObjectRetain();
      v13 = sub_1C6016900();
      v14 = [v12 beginEditWithReason_];
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v16 = v2;
    OUTLINED_FUNCTION_75_2();

    v17 = OUTLINED_FUNCTION_48_2();
    sub_1C5D19864(v17, v18, v19, v20, v21, v22);
  }

  else
  {
    OUTLINED_FUNCTION_31_2();
    v1();
  }
}

id sub_1C5D1F5E4(unint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, unint64_t, unint64_t, unint64_t), uint64_t a5, void *a6)
{
  if (a2)
  {
    a4(0, 0, 0, 0, 0, a1);
    v8 = &selRef_rollback;
  }

  else
  {
    v9 = sub_1C5D1527C(a1);
    sub_1C5D0C1D8(v9);

    v10 = sub_1C5D0BD8C();
    a4(1, v10, v11, 0xD00000000000002BLL, 0x80000001C604A830, 0);

    v8 = &selRef_commit;
  }

  v12 = *v8;

  return [a6 v12];
}

void sub_1C5D1F760(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v9 = a5;
  if (a3)
  {
    v11 = sub_1C6016900();
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = 0;
  if (a5)
  {
LABEL_3:
    v9 = sub_1C6016900();
  }

LABEL_4:
  if (a6)
  {
    v12 = sub_1C6014D30();
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  (*(a7 + 16))(a7, a1 & 1, v11, v9);
}

uint64_t sub_1C5D1F830(void *a1, char *a2, void *aBlock)
{
  _Block_copy(aBlock);
  if (qword_1EC1A8EB8 != -1)
  {
    swift_once();
  }

  v6 = sub_1C60162D0();
  __swift_project_value_buffer(v6, qword_1EC1BE3A0);
  v7 = sub_1C60162B0();
  v8 = sub_1C6016F30();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    MEMORY[0x1C6956920](v9, -1, -1);
  }

  v10 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
  swift_beginAccess();
  v11 = *&a2[v10];
  if (v11)
  {
    swift_unknownObjectRetain();
    v12 = sub_1C6016900();
    v13 = [v11 beginEditWithReason_];
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
  }

  _Block_copy(aBlock);
  v14 = v13;
  v15 = a2;
  sub_1C5D19EA8(a1, v15, v15, v13, aBlock);
  v16 = sub_1C5D0BD8C();

  _Block_release(aBlock);
  _Block_release(aBlock);
  return v16;
}

uint64_t sub_1C5D1FA10()
{
  v1 = v0;
  OUTLINED_FUNCTION_62_3();
  if (qword_1EC1A8EB8 != -1)
  {
    OUTLINED_FUNCTION_12_5();
  }

  v2 = sub_1C60162D0();
  OUTLINED_FUNCTION_144(v2, qword_1EC1BE3A0);
  v3 = sub_1C60162B0();
  v4 = sub_1C6016F30();
  if (OUTLINED_FUNCTION_268(v4))
  {
    *OUTLINED_FUNCTION_42() = 0;
    OUTLINED_FUNCTION_71_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_28();
  }

  v10 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v11 = *&v1[v10];
  if (v11)
  {
    swift_unknownObjectRetain();
    v12 = sub_1C6016900();
    v13 = [v11 beginEditWithReason_];
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = v1;
  OUTLINED_FUNCTION_75_2();

  v16 = OUTLINED_FUNCTION_48_2();
  sub_1C5D1A470(v16, v17, v18, v19, v20, v21);
  sub_1C5D0BD8C();
  OUTLINED_FUNCTION_318();

  return OUTLINED_FUNCTION_255();
}

void sub_1C5D1FB8C(unint64_t a1, char a2, uint64_t a3, void (*a4)(unint64_t), uint64_t a5, void *a6)
{
  v12 = MEMORY[0x1E69E6720];
  sub_1C5C6C678(0, &unk_1EC1A8F80, MEMORY[0x1E69C4BD8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v99 = &v89 - v14;
  v100 = sub_1C60157F0();
  v94 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v93 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C60158F0();
  v102 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v101 = (&v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C5C6C678(0, qword_1ED7DD2D0, MEMORY[0x1E69C4C18], v12);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v98 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v89 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v89 - v24;
  if (a2)
  {
    a4(a1);

    [a6 rollback];
    return;
  }

  v104 = a1;
  v97 = a5;
  v26 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_activePlaybackContext;
  swift_beginAccess();
  v103 = a3;
  sub_1C5D29814(a3 + v26, v25, qword_1ED7DD2D0, MEMORY[0x1E69C4C18]);
  if (__swift_getEnumTagSinglePayload(v25, 1, v16))
  {
    sub_1C5D29540();
  }

  else
  {
    v28 = v101;
    v29 = v102;
    (*(v102 + 16))(v101, v25, v16);
    sub_1C5D29540();
    sub_1C5D1C650();
    v31 = v30;
    (*(v29 + 8))(v28, v16);
    if (v31)
    {
      v27 = sub_1C6016900();

      goto LABEL_10;
    }
  }

  v27 = 0;
LABEL_10:
  v32 = v104;
  if (!sub_1C5C8FEE4(v104))
  {
    goto LABEL_15;
  }

  if ((v32 & 0xC000000000000001) != 0)
  {
    v33 = MEMORY[0x1C6954040](0, v32);
  }

  else
  {
    if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v33 = *(v32 + 32);
  }

  sub_1C5CE5E28(v33, &selRef_queueSectionID);
  if (!v34)
  {
LABEL_15:
  }

  v95 = sub_1C6016900();

  sub_1C5D29814(v103 + v26, v23, qword_1ED7DD2D0, MEMORY[0x1E69C4C18]);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v16);
  v96 = v27;
  v91 = a4;
  v92 = a6;
  if (EnumTagSinglePayload)
  {
    sub_1C5D29540();
  }

  else
  {
    v36 = v101;
    v37 = v102;
    (*(v102 + 16))(v101, v23, v16);
    sub_1C5D29540();
    v38 = sub_1C6015840();
    (*(v37 + 8))(v36, v16);
    if (v38)
    {
      v39 = v16;
      v40 = 1;
      v41 = 3;
      goto LABEL_21;
    }
  }

  v39 = v16;
  v40 = 0;
  v41 = 1;
LABEL_21:
  v90 = v41;
  sub_1C5C6C678(0, &qword_1EC1A88B8, sub_1C5D2A3D0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  *(inited + 32) = @"private-listening-enabled";
  v43 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v44 = @"private-listening-enabled";
  v45 = [v43 initWithBool_];
  *(inited + 64) = sub_1C5C64D74(0, &qword_1ED7DCCD0);
  *(inited + 40) = v45;
  type metadata accessor for MPCPlaybackEngineEventQueueReportingMetadataKey();
  v47 = v46;
  v48 = sub_1C5D2A7A0(qword_1EC1A9300, type metadata accessor for MPCPlaybackEngineEventQueueReportingMetadataKey);
  v49 = sub_1C6016880();
  v50 = v103 + v26;
  v51 = v103;
  v52 = v98;
  sub_1C5D29814(v50, v98, qword_1ED7DD2D0, MEMORY[0x1E69C4C18]);
  v53 = v39;
  if (__swift_getEnumTagSinglePayload(v52, 1, v39))
  {
    sub_1C5D29540();
    __swift_storeEnumTagSinglePayload(v99, 1, 1, v100);
    v54 = v104;
  }

  else
  {
    v55 = v101;
    v56 = v102;
    (*(v102 + 16))(v101, v52, v53);
    sub_1C5D29540();
    v57 = v99;
    sub_1C6015810();
    (*(v56 + 8))(v55, v53);
    v58 = v100;
    v59 = __swift_getEnumTagSinglePayload(v57, 1, v100);
    v54 = v104;
    if (v59 != 1)
    {
      v101 = v48;
      v102 = v47;
      v84 = v93;
      v83 = v94;
      (*(v94 + 32))(v93, v57, v58);
      v85 = @"feature-name";
      v86 = sub_1C60157E0();
      v108 = MEMORY[0x1E69E6158];
      *&v107 = v86;
      *(&v107 + 1) = v87;
      sub_1C5C70758(&v107, v106);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v105 = v49;
      sub_1C5E3686C(v106, v85, isUniquelyReferenced_nonNull_native);

      v49 = v105;
      (*(v83 + 8))(v84, v58);
      goto LABEL_25;
    }
  }

  sub_1C5D29540();
LABEL_25:
  v60 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
  swift_beginAccess();
  v61 = *(v51 + v60);
  if (v61)
  {
    v102 = v49;
    v62 = [v61 eventStream];
    v101 = @"queue-add";
    sub_1C5C6C678(0, &unk_1ED7DCB20, sub_1C5CC540C, MEMORY[0x1E69E6F90]);
    v63 = swift_initStackObject();
    *(v63 + 16) = xmmword_1C6035CF0;
    *(v63 + 32) = @"account-id";
    v64 = v96;
    if (v96)
    {
      v65 = @"account-id";
      v66 = v64;
      v67 = v64;
    }

    else
    {
      v68 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
      v69 = @"account-id";
      v67 = [v68 init];
      v66 = 0;
    }

    *(v63 + 40) = v67;
    *(v63 + 48) = @"queue-section-id";
    v70 = v95;
    *(v63 + 56) = v95;
    *(v63 + 64) = @"private-listening-source";
    v71 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v72 = v66;
    v73 = @"queue-section-id";
    v74 = v70;
    v75 = @"private-listening-source";
    *(v63 + 72) = [v71 initWithInteger_];
    *(v63 + 80) = @"queue-reporting-metadata";
    v76 = @"queue-reporting-metadata";
    v77 = sub_1C6016840();

    *(v63 + 88) = v77;
    type metadata accessor for MPCPlaybackEngineEventPayloadKey();
    sub_1C5D2AA10(0, &qword_1ED7DCD60);
    sub_1C5D2A7A0(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
    sub_1C6016880();
    sub_1C5E372B8();

    v54 = v104;
  }

  else
  {
  }

  v78 = sub_1C5D1527C(v54);
  sub_1C5D0C1D8(v78);

  v91(0);
  sub_1C5D0BD8C();
  v79 = v92;
  v80 = v96;
  if (v81)
  {
    if (v92)
    {
      v82 = sub_1C6016900();

      [v79 setSuggestedContentItemIDForStart_];
    }

    else
    {
    }
  }

  [v79 commit];
}

void sub_1C5D208A8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1C6014D30();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1C5D20910(void *a1, void *a2)
{
  sub_1C5D0BE20(a1, a2, 1, &v21);
  if (!v22)
  {
    OUTLINED_FUNCTION_3_13();
    sub_1C5D297C4();
    return 0;
  }

  sub_1C5C6BEFC(&v21, v23);
  v2 = v25;
  __swift_project_boxed_opaque_existential_0(v23, v24);
  v3 = OUTLINED_FUNCTION_73();
  result = v4(v3, v2);
  if (v6)
  {
    v7 = result;
    v8 = v6;
    v9 = v24;
    v10 = v25;
    __swift_project_boxed_opaque_existential_0(v23, v24);
    result = (*(v10 + 16))(v9, v10);
    if (v11)
    {
      v12 = result;
      v13 = v11;
      v14 = v24;
      v15 = v25;
      __swift_project_boxed_opaque_existential_0(v23, v24);
      v16 = (*(v15 + 24))(v14, v15);
      v18 = v17;
      v19 = objc_allocWithZone(type metadata accessor for QueueControllerBehaviorPodcastsIdentifierComponents());
      v20 = sub_1C5D2B994(v7, v8, v12, v13, v16, v18);
      __swift_destroy_boxed_opaque_existential_0(v23);
      return v20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_1C5D20B0C(void *a1, void *a2)
{
  sub_1C5D0BE20(a1, a2, 1, v4);
  v2 = v4[3] != 0;
  OUTLINED_FUNCTION_3_13();
  sub_1C5D297C4();
  return v2;
}

uint64_t sub_1C5D20C58()
{
  if (MTPlaybackContinuousPlaybackEnabled())
  {
    v0 = 0;
  }

  else
  {
    sub_1C5CFA9D4();
    v0 = sub_1C6015290();
  }

  return v0 & 1;
}

id sub_1C5D20CB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = v4;
  OUTLINED_FUNCTION_62_3();
  if (v9 == 3 && (sub_1C5D20C58() & 1) != 0 || (a4 & 1) != 0)
  {
    sub_1C5C64D74(0, &qword_1EC1A8A10);
    v7 = MEMORY[0x1C6953D30](MEMORY[0x1E69E7CC0]);
    goto LABEL_8;
  }

  if (v5)
  {
    v10 = *&v7[OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_managedQueue];
    v11 = sub_1C5D0B540();
    v12 = sub_1C5D0C9C0(v6, v5, v11);
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      sub_1C5D0B540();

      v7 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        __break(1u);
      }

      else if (*(sub_1C5D0B540() + 16) >= v7)
      {
        v17 = OUTLINED_FUNCTION_75_2();
        sub_1C5D12104(v17);
        OUTLINED_FUNCTION_318();
        v12 = v18;
        v14 = v19;

        if ((v14 & 1) == 0)
        {
LABEL_12:
          v20 = OUTLINED_FUNCTION_255();
          sub_1C5D0FDA8(v20, v21, v12, v14);
          goto LABEL_18;
        }

        sub_1C6017880();
        OUTLINED_FUNCTION_75_2();
        swift_unknownObjectRetain_n();
        v22 = swift_dynamicCastClass();
        if (!v22)
        {
          swift_unknownObjectRelease();
          v22 = MEMORY[0x1E69E7CC0];
        }

        v23 = *(v22 + 16);

        if (!__OFSUB__(v14 >> 1, v12))
        {
          if (v23 == (v14 >> 1) - v12)
          {
            swift_dynamicCastClass();
            OUTLINED_FUNCTION_73();
            swift_unknownObjectRelease_n();
            if (v10)
            {
LABEL_19:
              sub_1C6016AF0();
              OUTLINED_FUNCTION_206();

              goto LABEL_8;
            }

LABEL_18:
            swift_unknownObjectRelease();
            goto LABEL_19;
          }

          goto LABEL_23;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        swift_unknownObjectRelease_n();
        goto LABEL_12;
      }

      __break(1u);
      goto LABEL_22;
    }
  }

  sub_1C5D0B540();
  sub_1C6016AF0();
  OUTLINED_FUNCTION_206();

LABEL_8:
  v15 = [v7 objectEnumerator];

  return v15;
}

uint64_t sub_1C5D20F54()
{
  v1 = v0;
  sub_1C5D295EC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6031150;
  v3 = MEMORY[0x1E69E6158];
  sub_1C60174C0();
  swift_getObjectType();
  v15 = sub_1C6017AD0();
  v16 = v4;
  MEMORY[0x1C69534E0](58, 0xE100000000000000);
  v5 = [v0 description];
  v6 = sub_1C6016940();
  v8 = v7;

  MEMORY[0x1C69534E0](v6, v8);

  *(inited + 96) = v3;
  *(inited + 72) = v15;
  *(inited + 80) = v16;
  OUTLINED_FUNCTION_89();
  sub_1C60174C0();
  v9 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_allowsQueueModifications;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v10 = v1[v9];
  v11 = MEMORY[0x1E69E6370];
  *(inited + 168) = MEMORY[0x1E69E6370];
  *(inited + 144) = v10;
  OUTLINED_FUNCTION_89();
  sub_1C60174C0();
  v12 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_hasUserMutations;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v13 = v1[v12];
  *(inited + 240) = v11;
  *(inited + 216) = v13;
  return sub_1C6016880();
}

void sub_1C5D2119C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v9 = *(v4 + v8);
  if (v9)
  {
    swift_unknownObjectRetain();
    v10 = sub_1C6016900();
    v11 = [v9 beginEditWithReason_];
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
  }

  v12 = OUTLINED_FUNCTION_147();
  sub_1C5D0BE20(v12, v13, 1, v14);
  if (v22)
  {
    sub_1C5C74680(0, &qword_1EC1A9130);
    type metadata accessor for PodcastAVItem();
    if (swift_dynamicCast())
    {
      v15 = *(v5 + v8);
      v16 = v21;
      if (v15)
      {
        v15 = [v15 eventStream];
      }

      [v21 setEventStream_];
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_13();
    sub_1C5D297C4();
  }

  v17 = OUTLINED_FUNCTION_32();
  v19 = sub_1C5D0C490(v17, v18, a3, a4);
  v20 = &selRef_commit;
  if ((v19 & 1) == 0)
  {
    v20 = &selRef_rollback;
  }

  [v11 *v20];
}

void sub_1C5D21418(void *a1, void *a2, char a3)
{
  sub_1C5D0BE20(a1, a2, a3, v20);
  if (v20[3])
  {
    sub_1C5C74680(0, &qword_1EC1A9130);
    sub_1C5C64D74(0, &unk_1EC1A8A00);
    if (swift_dynamicCast())
    {
      if (qword_1EC1A8EB8 != -1)
      {
        OUTLINED_FUNCTION_12_5();
      }

      v3 = sub_1C60162D0();
      OUTLINED_FUNCTION_144(v3, qword_1EC1BE3A0);
      v4 = v19;
      v5 = sub_1C60162B0();
      v6 = sub_1C6016F30();
      if (!OUTLINED_FUNCTION_52_3(v6))
      {

        goto LABEL_11;
      }

      v7 = OUTLINED_FUNCTION_68_0();
      v8 = OUTLINED_FUNCTION_21();
      v20[0] = v8;
      OUTLINED_FUNCTION_51_2(7.2225e-34);
      sub_1C5CB50F4(v4, &selRef_mainTitle);
      v10 = v9;

      if (v10)
      {
        v11 = OUTLINED_FUNCTION_15_1();
        v14 = sub_1C5C6AB10(v11, v12, v13);

        *(v7 + 14) = v14;
        OUTLINED_FUNCTION_50_2();
        _os_log_impl(v15, v16, v17, v18, v7, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v8);
        OUTLINED_FUNCTION_35_1();
        OUTLINED_FUNCTION_11_8();
LABEL_11:

        return;
      }

      __break(1u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_13();
    sub_1C5D297C4();
  }
}

void static QueueControllerBehaviorPodcasts.canLoad(_:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_58_1();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_44_3();
  if (qword_1EC1A8EB8 != -1)
  {
    OUTLINED_FUNCTION_12_5();
  }

  v28 = sub_1C60162D0();
  __swift_project_value_buffer(v28, qword_1EC1BE3A0);
  v29 = sub_1C60162B0();
  v30 = sub_1C6016F30();
  if (OUTLINED_FUNCTION_52_3(v30))
  {
    v31 = OUTLINED_FUNCTION_42();
    *v31 = 0;
    OUTLINED_FUNCTION_50_2();
    _os_log_impl(v32, v33, v34, v35, v31, 2u);
    OUTLINED_FUNCTION_6();
  }

  objc_opt_self();
  OUTLINED_FUNCTION_120();
  v36 = swift_dynamicCastObjCClass();
  if (!v36)
  {
    goto LABEL_12;
  }

  v37 = v36;
  v38 = v25;
  v39 = [v37 identifier];
  v40 = sub_1C6016940();
  v42 = v41;

  if (v40 == 0xD00000000000001BLL && 0x80000001C604A260 == v42)
  {

    goto LABEL_22;
  }

  v44 = sub_1C6017860();

  if (v44)
  {
LABEL_22:
    v71 = sub_1C60162B0();
    v72 = sub_1C6016F30();
    if (OUTLINED_FUNCTION_12_10(v72))
    {
      v73 = OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_33_2(v73);
      OUTLINED_FUNCTION_8_12();
      _os_log_impl(v74, v75, v76, v77, v78, 2u);
      OUTLINED_FUNCTION_11_8();
    }

    goto LABEL_40;
  }

LABEL_12:
  objc_opt_self();
  OUTLINED_FUNCTION_120();
  if (swift_dynamicCastObjCClass() && [objc_opt_self() isSystemPodcasts])
  {
    v45 = sub_1C60162B0();
    v46 = sub_1C6016F30();
    if (OUTLINED_FUNCTION_12_10(v46))
    {
      v47 = OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_33_2(v47);
      OUTLINED_FUNCTION_8_12();
      _os_log_impl(v48, v49, v50, v51, v52, 2u);
      OUTLINED_FUNCTION_11_8();
    }

    goto LABEL_40;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_120();
  v53 = swift_dynamicCastObjCClass();
  v54 = v25;
  v55 = v54;
  if (v53)
  {
    v56 = v54;
    sub_1C5CE5E28(v53, &selRef_siriAssetInfo);
    if (v57)
    {
      v58 = sub_1C60162B0();
      v59 = sub_1C6016F30();
      if (OUTLINED_FUNCTION_268(v59))
      {
        v60 = OUTLINED_FUNCTION_112();
        v107 = v56;
        a10 = OUTLINED_FUNCTION_21();
        v61 = a10;
        *v60 = 136380675;
        v62 = sub_1C60169D0();
        v64 = v63;

        v65 = sub_1C5C6AB10(v62, v64, &a10);

        *(v60 + 4) = v65;
        OUTLINED_FUNCTION_71_1();
        _os_log_impl(v66, v67, v68, v69, v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v61);
        v56 = v107;
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_28();
      }

      else
      {
      }
    }

    v90 = sub_1C5D29678(v53);
    if (v90)
    {
      if (*(v90 + 16))
      {

        OUTLINED_FUNCTION_15_1();
        sub_1C6015890();

        v98 = sub_1C60162B0();
        v99 = sub_1C6016F30();
        if (OUTLINED_FUNCTION_12_10(v99))
        {
          v101 = OUTLINED_FUNCTION_42();
          OUTLINED_FUNCTION_33_2(v101);
          OUTLINED_FUNCTION_8_12();
          _os_log_impl(v102, v103, v104, v105, v106, 2u);
          OUTLINED_FUNCTION_11_8();
        }

LABEL_39:

        goto LABEL_40;
      }
    }

    if (v24)
    {
      sub_1C5C64D74(0, &qword_1EC1A92B0);
      *v24 = sub_1C60172F0();
    }

    v98 = sub_1C60162B0();
    v91 = sub_1C6016F30();
    if (OUTLINED_FUNCTION_12_10(v91))
    {
      v92 = OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_33_2(v92);
      OUTLINED_FUNCTION_8_12();
      _os_log_impl(v93, v94, v95, v96, v97, 2u);
      OUTLINED_FUNCTION_11_8();
    }

    goto LABEL_39;
  }

  v79 = sub_1C60162B0();
  v80 = sub_1C6016F30();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = OUTLINED_FUNCTION_112();
    v82 = swift_slowAlloc();
    *v81 = 138412290;
    *(v81 + 4) = v55;
    *v82 = v55;
    v83 = v55;
    OUTLINED_FUNCTION_50_2();
    _os_log_impl(v84, v85, v86, v87, v81, 0xCu);
    OUTLINED_FUNCTION_20_9();
    sub_1C5D297C4();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_35_1();
  }

  if (v24)
  {
    sub_1C5C64D74(0, &qword_1EC1A92B0);
    v88 = sub_1C60172F0();
    v89 = v88;
    *v24 = v88;
  }

LABEL_40:
  OUTLINED_FUNCTION_57_1();
}

void sub_1C5D21DA4()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = sub_1C6017020();
  [v1 addObserver:v0 selector:sel_perShowSettingsDidChange_ name:v2 object:0];
}

void sub_1C5D21E3C()
{
  OUTLINED_FUNCTION_247();
  v2 = v1;
  v3 = sub_1C6014C70();
  OUTLINED_FUNCTION_25();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_146();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_18_5();
  sub_1C5C6C678(0, v10, v11, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v12);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_69_2();
  v14 = sub_1C6016100();
  OUTLINED_FUNCTION_25();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_146();
  v20 = v19 - v18;
  sub_1C6014C20();
  OUTLINED_FUNCTION_73_0(v0, 1, v14);
  if (!v39)
  {
    (*(v16 + 32))(v20, v0, v14);
    v32 = sub_1C5D0BBCC();
    if (!v32)
    {
      if (qword_1EC1A8EB8 != -1)
      {
        OUTLINED_FUNCTION_12_5();
      }

      v43 = sub_1C60162D0();
      OUTLINED_FUNCTION_144(v43, qword_1EC1BE3A0);
      v44 = sub_1C60162B0();
      v45 = sub_1C6016F20();
      if (OUTLINED_FUNCTION_52_3(v45))
      {
        v46 = OUTLINED_FUNCTION_42();
        *v46 = 0;
        OUTLINED_FUNCTION_50_2();
        _os_log_impl(v47, v48, v49, v50, v46, 2u);
        OUTLINED_FUNCTION_35_1();
      }

      goto LABEL_25;
    }

    v33 = v32;
    v34 = sub_1C5CB50F4(v32, &selRef_podcastUUID);
    v36 = v35;
    v37 = sub_1C60160F0();
    if (v36)
    {
      v39 = v34 == v37 && v36 == v38;
      if (v39)
      {

LABEL_24:
        sub_1C5C6C678(0, &unk_1EC1A88C0, sub_1C5D018E0, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C6035C00;
        *(inited + 32) = @"podcast-preferred-rate";
        v52 = @"podcast-preferred-rate";
        sub_1C60160E0();
        *(inited + 40) = sub_1C6016D20();
        *(inited + 48) = @"podcast-playback-setting-source";
        v53 = @"podcast-playback-setting-source";
        sub_1C60160D0();
        v54 = sub_1C6016900();

        *(inited + 56) = v54;
        type metadata accessor for MPCPlaybackEngineEventItemMetadataKey();
        sub_1C5C64D74(0, &qword_1ED7DCC30);
        sub_1C5D2A7A0(&unk_1ED7DCD50, type metadata accessor for MPCPlaybackEngineEventItemMetadataKey);
        v55 = sub_1C6016880();
        sub_1C5D012B8(v55);

        goto LABEL_25;
      }

      v40 = sub_1C6017860();

      if (v40)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

LABEL_25:
    v56 = OUTLINED_FUNCTION_147();
    v57(v56);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_18_5();
  sub_1C5D29540();
  if (qword_1EC1A8EB8 != -1)
  {
    OUTLINED_FUNCTION_12_5();
  }

  v21 = sub_1C60162D0();
  __swift_project_value_buffer(v21, qword_1EC1BE3A0);
  (*(v5 + 16))(v9, v2, v3);
  v22 = sub_1C60162B0();
  v23 = sub_1C6016F20();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_68_0();
    v25 = OUTLINED_FUNCTION_21();
    v58 = v25;
    OUTLINED_FUNCTION_51_2(7.2225e-34);
    sub_1C6014C60();
    sub_1C5D2A2B4();
    v26 = sub_1C60169A0();
    v28 = v27;
    v29 = OUTLINED_FUNCTION_32();
    v30(v29);
    v31 = sub_1C5C6AB10(v26, v28, &v58);

    *(v24 + 14) = v31;
    _os_log_impl(&dword_1C5C61000, v22, v23, "􀩳 Unexpected notification data for setting change %{private,mask.hash}s.", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_11_8();
  }

  else
  {

    v41 = OUTLINED_FUNCTION_32();
    v42(v41);
  }

LABEL_26:
  OUTLINED_FUNCTION_237();
}

id QueueControllerBehaviorPodcasts.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::String_optional __swiftcall QueueControllerBehaviorPodcasts.tailInsertionContentItemID(forTargetContentItemID:)(Swift::String_optional forTargetContentItemID)
{
  v1 = sub_1C5D0B398();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t QueueControllerBehaviorPodcasts.isSupportedInsertionPosition(_:fromContentItemID:reason:)(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (a1 == 1)
  {
    sub_1C5D0B398();
    if (v1)
    {

      return 1;
    }
  }

  return 0;
}

void sub_1C5D2267C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *aBlock)
{
  v5 = aBlock;
  _Block_copy(aBlock);
  if (qword_1EC1A8EB8 != -1)
  {
    swift_once();
  }

  v10 = sub_1C60162D0();
  __swift_project_value_buffer(v10, qword_1EC1BE3A0);

  v11 = a1;
  v12 = sub_1C60162B0();
  v13 = sub_1C6016F30();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37[0] = v36;
    *v14 = 136446466;
    v15 = [v11 debugDescription];
    v16 = v5;
    v17 = v11;
    v18 = a4;
    v19 = a2;
    v20 = v15;
    v35 = v13;
    v21 = sub_1C6016940();
    v23 = v22;

    a2 = v19;
    a4 = v18;
    v11 = v17;
    v5 = v16;
    v24 = sub_1C5C6AB10(v21, v23, v37);

    *(v14 + 4) = v24;
    *(v14 + 12) = 2082;
    if (a3)
    {
      v25 = a2;
    }

    else
    {
      v25 = 0;
    }

    if (a3)
    {
      v26 = a3;
    }

    else
    {
      v26 = 0xE000000000000000;
    }

    v27 = sub_1C5C6AB10(v25, v26, v37);

    *(v14 + 14) = v27;
    _os_log_impl(&dword_1C5C61000, v12, v35, "􀐇 Inserting: %{public}s - target: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6956920](v36, -1, -1);
    MEMORY[0x1C6956920](v14, -1, -1);
  }

  v28 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
  swift_beginAccess();
  v29 = *(a4 + v28);
  if (v29)
  {
    swift_unknownObjectRetain();
    v30 = sub_1C6016900();
    v31 = [v29 beginEditWithReason_];
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0;
  }

  v32 = [v11 insertionPosition];
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  _Block_copy(v5);
  v34 = v31;

  sub_1C5D1A9D4(v11, a4, v33, v31, v32, a2, a3, v5);

  _Block_release(v5);
  _Block_release(v5);
}

uint64_t QueueControllerBehaviorPodcasts.performInsertCommand(_:targetContentItemID:completion:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), char *a5)
{
  v6 = v5;
  if (qword_1EC1A8EB8 != -1)
  {
    OUTLINED_FUNCTION_12_5();
  }

  v11 = sub_1C60162D0();
  __swift_project_value_buffer(v11, qword_1EC1BE3A0);

  v12 = a1;
  v13 = sub_1C60162B0();
  v14 = sub_1C6016F30();

  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_68_0();
    v35[0] = OUTLINED_FUNCTION_67_1();
    *a5 = 136446466;
    v15 = [v12 debugDescription];
    v16 = sub_1C6016940();

    v17 = OUTLINED_FUNCTION_147();
    sub_1C5C6AB10(v17, v18, v19);
    OUTLINED_FUNCTION_77_2();

    *(a5 + 4) = v16;
    *(a5 + 6) = 2082;
    if (a3)
    {
      v20 = a2;
    }

    else
    {
      v20 = 0;
    }

    if (a3)
    {
      v21 = a3;
    }

    else
    {
      v21 = 0xE000000000000000;
    }

    v22 = sub_1C5C6AB10(v20, v21, v35);

    *(a5 + 14) = v22;
    OUTLINED_FUNCTION_65_2(&dword_1C5C61000, v23, v14, "􀐇 Inserting: %{public}s - target: %{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();
  }

  v24 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v25 = *(v6 + v24);
  if (v25)
  {
    swift_unknownObjectRetain();
    v26 = sub_1C6016900();
    v27 = [v25 beginEditWithReason_];
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0;
  }

  v28 = [v12 insertionPosition];
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = v27;

  v31 = OUTLINED_FUNCTION_68_2();
  sub_1C5D1AFB8(v31, v32, v29, v27, a4, a5, v28, a2, a3);
}

void sub_1C5D22CA0(unint64_t a1, char a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7, void (**a8)(void, void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (a2)
    {
      [a4 rollback];
      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      v17 = sub_1C6014D30();
      sub_1C6016880();
      _s3__C4CodeOMa_3();
      sub_1C5D2A7A0(&qword_1EC1AAF00, _s3__C4CodeOMa_3);
      v18 = sub_1C6017280();

      v19 = v18;
      v20 = sub_1C6014D30();
      a8[2](a8, v20);

LABEL_10:
      v16 = v20;
      goto LABEL_11;
    }

    if (a5 >= 2)
    {
      [a4 rollback];
      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      sub_1C6016880();
      _s3__C4CodeOMa_3();
      sub_1C5D2A7A0(&qword_1EC1AAF00, _s3__C4CodeOMa_3);
      v27 = sub_1C6017280();

      v28 = v27;
      v20 = sub_1C6014D30();
      a8[2](a8, v20);

      goto LABEL_10;
    }

    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = v23;

      v25 = sub_1C5D1527C(a1);
      sub_1C5D0C648(a6, a7, v25, a5);
    }

    [a4 commit];
    v26 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_hasUserMutations;
    swift_beginAccess();
    *(v16 + v26) = 1;
    a8[2](a8, 0);
  }

  else
  {
    [a4 rollback];
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    sub_1C6016880();
    _s3__C4CodeOMa_3();
    sub_1C5D2A7A0(&qword_1EC1AAF00, _s3__C4CodeOMa_3);
    v21 = sub_1C6017280();

    v22 = v21;
    v16 = sub_1C6014D30();
    (a8)[2](a8, v16);
  }

LABEL_11:

  _Block_release(a8);
}

void sub_1C5D231BC(unint64_t a1, char a2, uint64_t a3, void *a4, void (*a5)(void *), uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (a2)
    {
      [a4 rollback];
      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      v17 = sub_1C6014D30();
      sub_1C6016880();
      _s3__C4CodeOMa_3();
      sub_1C5D2A7A0(&qword_1EC1AAF00, _s3__C4CodeOMa_3);
      v18 = sub_1C6017280();

      v19 = v18;
      a5(v18);
    }

    else if (a7 >= 2)
    {
      [a4 rollback];
      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      sub_1C6016880();
      _s3__C4CodeOMa_3();
      sub_1C5D2A7A0(&qword_1EC1AAF00, _s3__C4CodeOMa_3);
      v25 = sub_1C6017280();

      v26 = v25;
      a5(v25);

      v16 = v26;
    }

    else
    {
      swift_beginAccess();
      v21 = swift_unknownObjectWeakLoadStrong();
      if (v21)
      {
        v22 = v21;

        v23 = sub_1C5D1527C(a1);
        sub_1C5D0C648(a8, a9, v23, a7);
      }

      [a4 commit];
      v24 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_hasUserMutations;
      swift_beginAccess();
      *(v16 + v24) = 1;
      a5(0);
    }
  }

  else
  {
    [a4 rollback];
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    sub_1C6016880();
    _s3__C4CodeOMa_3();
    sub_1C5D2A7A0(&qword_1EC1AAF00, _s3__C4CodeOMa_3);
    v20 = sub_1C6017280();

    v16 = v20;
    a5(v20);
  }
}

void sub_1C5D23754(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  if (qword_1EC1A8EB8 != -1)
  {
    swift_once();
  }

  v11 = sub_1C60162D0();
  __swift_project_value_buffer(v11, qword_1EC1BE3A0);

  v12 = sub_1C60162B0();
  v13 = sub_1C6016F30();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = a6;
    v15 = a3;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_1C5C6AB10(a1, a2, v35);
    _os_log_impl(&dword_1C5C61000, v12, v13, "􀄬 Perform move of before target: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1C6956920](v17, -1, -1);
    v18 = v16;
    a3 = v15;
    a6 = v14;
    MEMORY[0x1C6956920](v18, -1, -1);
  }

  v19 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
  swift_beginAccess();
  v20 = *(a5 + v19);
  if (v20)
  {
    swift_unknownObjectRetain();
    v21 = sub_1C6016900();
    v22 = [v20 beginEditWithReason_];
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0;
  }

  if (sub_1C5D0D248(a1, a2, a3, a4))
  {
    [v22 commit];
    v23 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_hasUserMutations;
    swift_beginAccess();
    *(a5 + v23) = 1;
    a6[2](a6, 0);
  }

  else
  {
    [v22 rollback];

    v24 = sub_1C60162B0();
    v25 = sub_1C6016F20();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32 = v27;
      *v26 = 136446466;
      *(v26 + 4) = sub_1C5C6AB10(a1, a2, &v32);
      *(v26 + 12) = 2082;
      *(v26 + 14) = sub_1C5C6AB10(a3, a4, &v32);
      _os_log_impl(&dword_1C5C61000, v24, v25, "􀄬 Unable to move item. Didn't find %{public}s or %{public}s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6956920](v27, -1, -1);
      MEMORY[0x1C6956920](v26, -1, -1);
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v34 = 5;
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1C6017540();

    v32 = 0xD000000000000021;
    v33 = 0x80000001C604A2F0;
    MEMORY[0x1C69534E0](a1, a2);
    MEMORY[0x1C69534E0](544370464, 0xE400000000000000);
    MEMORY[0x1C69534E0](a3, a4);
    sub_1C6016880();
    _s3__C4CodeOMa_3();
    sub_1C5D2A7A0(&qword_1EC1AAF00, _s3__C4CodeOMa_3);
    v28 = sub_1C6017280();

    v29 = v28;
    v30 = sub_1C6014D30();
    a6[2](a6, v30);

    v22 = v30;
  }

  _Block_release(a6);
}

void QueueControllerBehaviorPodcasts.moveContentItemID(_:beforeContentItemID:completion:)()
{
  OUTLINED_FUNCTION_53_1();
  if (qword_1EC1A8EB8 != -1)
  {
    OUTLINED_FUNCTION_12_5();
  }

  v3 = sub_1C60162D0();
  __swift_project_value_buffer(v3, qword_1EC1BE3A0);

  v4 = sub_1C60162B0();
  v5 = sub_1C6016F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_112();
    v7 = OUTLINED_FUNCTION_21();
    *v6 = 136446210;
    v8 = OUTLINED_FUNCTION_15_1();
    *(v6 + 4) = sub_1C5C6AB10(v8, v9, v10);
    OUTLINED_FUNCTION_13_6();
    _os_log_impl(v11, v12, v13, v14, v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_11_8();
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_78_0();
  v15 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v16 = *(v2 + v15);
  if (v16)
  {
    swift_unknownObjectRetain();
    v17 = sub_1C6016900();
    v18 = [v16 beginEditWithReason_];
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0;
  }

  v19 = OUTLINED_FUNCTION_15_1();
  if (sub_1C5D0D248(v19, v20, v1, v0))
  {
    [v18 commit];
    v21 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_hasUserMutations;
    OUTLINED_FUNCTION_45_3();
    *(v2 + v21) = 1;
    v39(0);
  }

  else
  {
    [v18 rollback];

    v22 = sub_1C60162B0();
    v23 = sub_1C6016F20();

    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_68_0();
      OUTLINED_FUNCTION_67_1();
      *v2 = 136446466;
      v24 = OUTLINED_FUNCTION_15_1();
      *(v2 + 4) = sub_1C5C6AB10(v24, v25, v26);
      *(v2 + 12) = 2082;
      v27 = OUTLINED_FUNCTION_32();
      *(v2 + 14) = sub_1C5C6AB10(v27, v28, v29);
      OUTLINED_FUNCTION_65_2(&dword_1C5C61000, v30, v23, "􀄬 Unable to move item. Didn't find %{public}s or %{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_78_0();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_4();
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_39_2();

    OUTLINED_FUNCTION_89();
    v40 = v31;
    v32 = OUTLINED_FUNCTION_15_1();
    MEMORY[0x1C69534E0](v32);
    OUTLINED_FUNCTION_81_1();
    v33 = OUTLINED_FUNCTION_32();
    MEMORY[0x1C69534E0](v33);
    sub_1C6016880();
    _s3__C4CodeOMa_3();
    OUTLINED_FUNCTION_22_9();
    sub_1C5D2A7A0(v34, v35);
    v36 = OUTLINED_FUNCTION_30_6();

    v37 = v36;
    v38 = OUTLINED_FUNCTION_77_2();
    v39(v38);
  }
}

void sub_1C5D24070(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  if (qword_1EC1A8EB8 != -1)
  {
    swift_once();
  }

  v11 = sub_1C60162D0();
  __swift_project_value_buffer(v11, qword_1EC1BE3A0);

  v12 = sub_1C60162B0();
  v13 = sub_1C6016F30();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = a6;
    v15 = a3;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_1C5C6AB10(a1, a2, v35);
    _os_log_impl(&dword_1C5C61000, v12, v13, "􀄬 Perform move of after target: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1C6956920](v17, -1, -1);
    v18 = v16;
    a3 = v15;
    a6 = v14;
    MEMORY[0x1C6956920](v18, -1, -1);
  }

  v19 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
  swift_beginAccess();
  v20 = *(a5 + v19);
  if (v20)
  {
    swift_unknownObjectRetain();
    v21 = sub_1C6016900();
    v22 = [v20 beginEditWithReason_];
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0;
  }

  if (sub_1C5D0D484(a1, a2, a3, a4))
  {
    [v22 commit];
    v23 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_hasUserMutations;
    swift_beginAccess();
    *(a5 + v23) = 1;
    a6[2](a6, 0);
  }

  else
  {
    [v22 rollback];

    v24 = sub_1C60162B0();
    v25 = sub_1C6016F20();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32 = v27;
      *v26 = 136446466;
      *(v26 + 4) = sub_1C5C6AB10(a1, a2, &v32);
      *(v26 + 12) = 2082;
      *(v26 + 14) = sub_1C5C6AB10(a3, a4, &v32);
      _os_log_impl(&dword_1C5C61000, v24, v25, "􀄬 Unable to move item. Didn't find %{public}s or %{public}s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6956920](v27, -1, -1);
      MEMORY[0x1C6956920](v26, -1, -1);
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v34 = 5;
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1C6017540();

    v32 = 0xD000000000000021;
    v33 = 0x80000001C604A2F0;
    MEMORY[0x1C69534E0](a1, a2);
    MEMORY[0x1C69534E0](544370464, 0xE400000000000000);
    MEMORY[0x1C69534E0](a3, a4);
    sub_1C6016880();
    _s3__C4CodeOMa_3();
    sub_1C5D2A7A0(&qword_1EC1AAF00, _s3__C4CodeOMa_3);
    v28 = sub_1C6017280();

    v29 = v28;
    v30 = sub_1C6014D30();
    a6[2](a6, v30);

    v22 = v30;
  }

  _Block_release(a6);
}

void QueueControllerBehaviorPodcasts.moveContentItemID(_:afterContentItemID:completion:)()
{
  OUTLINED_FUNCTION_53_1();
  if (qword_1EC1A8EB8 != -1)
  {
    OUTLINED_FUNCTION_12_5();
  }

  v3 = sub_1C60162D0();
  __swift_project_value_buffer(v3, qword_1EC1BE3A0);

  v4 = sub_1C60162B0();
  v5 = sub_1C6016F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_112();
    v7 = OUTLINED_FUNCTION_21();
    *v6 = 136446210;
    v8 = OUTLINED_FUNCTION_15_1();
    *(v6 + 4) = sub_1C5C6AB10(v8, v9, v10);
    OUTLINED_FUNCTION_13_6();
    _os_log_impl(v11, v12, v13, v14, v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_11_8();
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_78_0();
  v15 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v16 = *(v2 + v15);
  if (v16)
  {
    swift_unknownObjectRetain();
    v17 = sub_1C6016900();
    v18 = [v16 beginEditWithReason_];
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0;
  }

  v19 = OUTLINED_FUNCTION_15_1();
  if (sub_1C5D0D484(v19, v20, v1, v0))
  {
    [v18 commit];
    v21 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_hasUserMutations;
    OUTLINED_FUNCTION_45_3();
    *(v2 + v21) = 1;
    v39(0);
  }

  else
  {
    [v18 rollback];

    v22 = sub_1C60162B0();
    v23 = sub_1C6016F20();

    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_68_0();
      OUTLINED_FUNCTION_67_1();
      *v2 = 136446466;
      v24 = OUTLINED_FUNCTION_15_1();
      *(v2 + 4) = sub_1C5C6AB10(v24, v25, v26);
      *(v2 + 12) = 2082;
      v27 = OUTLINED_FUNCTION_32();
      *(v2 + 14) = sub_1C5C6AB10(v27, v28, v29);
      OUTLINED_FUNCTION_65_2(&dword_1C5C61000, v30, v23, "􀄬 Unable to move item. Didn't find %{public}s or %{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_78_0();
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_4();
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_39_2();

    OUTLINED_FUNCTION_89();
    v40 = v31;
    v32 = OUTLINED_FUNCTION_15_1();
    MEMORY[0x1C69534E0](v32);
    OUTLINED_FUNCTION_81_1();
    v33 = OUTLINED_FUNCTION_32();
    MEMORY[0x1C69534E0](v33);
    sub_1C6016880();
    _s3__C4CodeOMa_3();
    OUTLINED_FUNCTION_22_9();
    sub_1C5D2A7A0(v34, v35);
    v36 = OUTLINED_FUNCTION_30_6();

    v37 = v36;
    v38 = OUTLINED_FUNCTION_77_2();
    v39(v38);
  }
}

uint64_t sub_1C5D2498C(void *a1, int a2, int a3, int a4, void *aBlock, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = sub_1C6016940();
  v11 = v10;
  v12 = sub_1C6016940();
  v14 = v13;
  _Block_copy(v8);
  v15 = a1;
  a6(v9, v11, v12, v14, v15, v8);
  _Block_release(v8);
}

BOOL QueueControllerBehaviorPodcasts.canRemoveContentItemID(_:reason:)()
{
  OUTLINED_FUNCTION_62_3();
  if (qword_1EC1A8EB8 != -1)
  {
    OUTLINED_FUNCTION_12_5();
  }

  v2 = sub_1C60162D0();
  OUTLINED_FUNCTION_144(v2, qword_1EC1BE3A0);

  v3 = sub_1C60162B0();
  v4 = sub_1C6016F30();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_112();
    v6 = OUTLINED_FUNCTION_21();
    v10 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1C5C6AB10(v1, v0, &v10);
    OUTLINED_FUNCTION_82_1(&dword_1C5C61000, v7, v8, "Can remove item: %{public}s");
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_6();
  }

  return sub_1C5D20B0C(v1, v0);
}

uint64_t sub_1C5D24B88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = sub_1C6016940();
  v9 = v8;
  v10 = a1;
  LOBYTE(a5) = a5(v7, v9);

  return a5 & 1;
}

void sub_1C5D24BF0(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  if (qword_1EC1A8EB8 != -1)
  {
    swift_once();
  }

  v8 = sub_1C60162D0();
  __swift_project_value_buffer(v8, qword_1EC1BE3A0);

  v9 = sub_1C60162B0();
  v10 = sub_1C6016F30();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1C5C6AB10(a1, a2, v18);
    _os_log_impl(&dword_1C5C61000, v9, v10, "􀢁 Remove item: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1C6956920](v12, -1, -1);
    MEMORY[0x1C6956920](v11, -1, -1);
  }

  v13 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
  swift_beginAccess();
  v14 = *(a3 + v13);
  if (v14)
  {
    swift_unknownObjectRetain();
    v15 = sub_1C6016900();
    v16 = [v14 beginEditWithReason_];
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
  }

  sub_1C5D0D59C(a1, a2);
  [v16 commit];
  v17 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_hasUserMutations;
  swift_beginAccess();
  *(a3 + v17) = 1;
  a4[2](a4, 0);

  _Block_release(a4);
}

void QueueControllerBehaviorPodcasts.removeContentItemID(_:completion:)(uint64_t a1, unint64_t a2, void (*a3)(void))
{
  v4 = v3;
  if (qword_1EC1A8EB8 != -1)
  {
    OUTLINED_FUNCTION_12_5();
  }

  v8 = sub_1C60162D0();
  OUTLINED_FUNCTION_144(v8, qword_1EC1BE3A0);

  v9 = sub_1C60162B0();
  v10 = sub_1C6016F30();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_112();
    v12 = OUTLINED_FUNCTION_21();
    v18[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1C5C6AB10(a1, a2, v18);
    _os_log_impl(&dword_1C5C61000, v9, v10, "􀢁 Remove item: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();
  }

  v13 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v14 = *(v4 + v13);
  if (v14)
  {
    swift_unknownObjectRetain();
    v15 = sub_1C6016900();
    v16 = [v14 beginEditWithReason_];
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
  }

  sub_1C5D0D59C(a1, a2);
  [v16 commit];
  v17 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_hasUserMutations;
  OUTLINED_FUNCTION_45_3();
  *(v4 + v17) = 1;
  a3(0);
}

Swift::Void __swiftcall QueueControllerBehaviorPodcasts.clearUpNext(afterContentItemID:)(Swift::String afterContentItemID)
{
  v2 = v1;
  OUTLINED_FUNCTION_44_3();
  if (qword_1EC1A8EB8 != -1)
  {
    OUTLINED_FUNCTION_12_5();
  }

  v3 = sub_1C60162D0();
  OUTLINED_FUNCTION_144(v3, qword_1EC1BE3A0);

  v4 = sub_1C60162B0();
  v5 = sub_1C6016F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_112();
    v18 = OUTLINED_FUNCTION_21();
    *v6 = 136446210;
    v7 = OUTLINED_FUNCTION_147();
    *(v6 + 4) = sub_1C5C6AB10(v7, v8, v9);
    OUTLINED_FUNCTION_82_1(&dword_1C5C61000, v10, v11, "Clear up next items after: %{public}s");
    __swift_destroy_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_6();
  }

  v12 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v13 = *(v2 + v12);
  if (v13)
  {
    swift_unknownObjectRetain();
    v14 = sub_1C6016900();
    v15 = [v13 beginEditWithReason_];
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0;
  }

  OUTLINED_FUNCTION_147();
  v16 = sub_1C5D0D618();
  v17 = &selRef_commit;
  if ((v16 & 1) == 0)
  {
    v17 = &selRef_rollback;
  }

  [v15 *v17];
}

Swift::Int __swiftcall QueueControllerBehaviorPodcasts.displayItemCount()()
{
  v0 = *(sub_1C5D0B540() + 16);

  return v0;
}

uint64_t QueueControllerBehaviorPodcasts.preferredUpcomingItemCount.getter()
{
  v1 = MEMORY[0x1E69C4C60];
  sub_1C5C6C678(0, &qword_1ED7DD2C8, MEMORY[0x1E69C4C60], MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v2);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_nextRequest;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  sub_1C5D29814(v0 + v6, v5, &qword_1ED7DD2C8, v1);
  v7 = sub_1C6015920();
  OUTLINED_FUNCTION_73_0(v5, 1, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 5;
  }

  sub_1C5D29540();
  return v9;
}

void sub_1C5D254A4(uint64_t a1, char *a2, const void *a3)
{
  v49 = a1;
  v5 = MEMORY[0x1E69E6720];
  sub_1C5C6C678(0, qword_1ED7DD2D0, MEMORY[0x1E69C4C18], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v47 - v7;
  v9 = sub_1C60158F0();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v48 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v47 - v12;
  sub_1C5C6C678(0, &qword_1ED7DD2C8, MEMORY[0x1E69C4C60], v5);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v47 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - v16;
  v18 = sub_1C6015920();
  v53 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v52 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = swift_allocObject();
  v55 = a3;
  *(v54 + 16) = a3;
  _Block_copy(a3);
  if (qword_1EC1A8EB8 != -1)
  {
    swift_once();
  }

  v20 = sub_1C60162D0();
  __swift_project_value_buffer(v20, qword_1EC1BE3A0);
  v21 = sub_1C60162B0();
  v22 = sub_1C6016F30();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = v49;
    _os_log_impl(&dword_1C5C61000, v21, v22, "􀣬 Load additional items: Count: %ld", v23, 0xCu);
    MEMORY[0x1C6956920](v23, -1, -1);
  }

  v24 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_nextRequest;
  swift_beginAccess();
  sub_1C5D29814(&a2[v24], v17, &qword_1ED7DD2C8, MEMORY[0x1E69C4C60]);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1C5D29540();
    v25 = sub_1C60162B0();
    v26 = sub_1C6016F30();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1C5C61000, v25, v26, "􀡓 Next request is empty", v27, 2u);
      MEMORY[0x1C6956920](v27, -1, -1);
    }

    v28 = v55;
    (*(v55 + 2))(v55, 0);
  }

  else
  {
    (*(v53 + 32))(v52, v17, v18);
    v29 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_activePlaybackContext;
    swift_beginAccess();
    sub_1C5D29814(&a2[v29], v8, qword_1ED7DD2D0, MEMORY[0x1E69C4C18]);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_1C5D29540();
      v30 = sub_1C60162B0();
      v31 = sub_1C6016F30();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1C5C61000, v30, v31, "􀡓 No playback context found for next request. Skipping.", v32, 2u);
        MEMORY[0x1C6956920](v32, -1, -1);
      }

      v33 = v47;
      __swift_storeEnumTagSinglePayload(v47, 1, 1, v18);
      swift_beginAccess();
      sub_1C5D29888(v33, &a2[v24]);
      swift_endAccess();
      v28 = v55;
      (*(v55 + 2))(v55, 0);
      (*(v53 + 8))(v52, v18);
    }

    else
    {
      v49 = v18;
      v47 = *(v50 + 32);
      v47(v51, v8, v9);
      v34 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
      swift_beginAccess();
      v35 = *&a2[v34];
      v36 = v9;
      if (v35)
      {
        swift_unknownObjectRetain();
        v37 = sub_1C6016900();
        v38 = [v35 beginEditWithReason_];
        swift_unknownObjectRelease();
      }

      else
      {
        v38 = 0;
      }

      v39 = v54;
      v54 = *&a2[OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_podcastsMediaLibrary];
      v40 = v50;
      v41 = v48;
      (*(v50 + 16))(v48, v51, v36);
      v42 = (*(v40 + 80) + 48) & ~*(v40 + 80);
      v43 = swift_allocObject();
      v43[2] = a2;
      v43[3] = sub_1C5D2AB78;
      v43[4] = v39;
      v43[5] = v38;
      v47(v43 + v42, v41, v36);
      v44 = v38;
      v45 = a2;

      v46 = v52;
      sub_1C60157A0();

      (*(v40 + 8))(v51, v36);
      (*(v53 + 8))(v46, v49);
      v28 = v55;
    }
  }

  _Block_release(v28);
}

void QueueControllerBehaviorPodcasts.loadAdditionalUpcomingItems(_:completion:)()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v82 = v2;
  v83 = v3;
  v76 = v4;
  OUTLINED_FUNCTION_4_16();
  v5 = MEMORY[0x1E69E6720];
  sub_1C5C6C678(0, v6, v7, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v8);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v75 - v10;
  v12 = sub_1C60158F0();
  OUTLINED_FUNCTION_25();
  v77 = v13;
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v75 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v79 = &v75 - v18;
  OUTLINED_FUNCTION_7_13();
  sub_1C5C6C678(0, v19, v20, v5);
  v22 = OUTLINED_FUNCTION_13_3(v21);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v75 - v26;
  v28 = sub_1C6015920();
  OUTLINED_FUNCTION_25();
  v81 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_146();
  v80 = v32 - v31;
  if (qword_1EC1A8EB8 != -1)
  {
    OUTLINED_FUNCTION_12_5();
  }

  v33 = sub_1C60162D0();
  v78 = __swift_project_value_buffer(v33, qword_1EC1BE3A0);
  v34 = sub_1C60162B0();
  v35 = sub_1C6016F30();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_112();
    *v36 = 134217984;
    *(v36 + 4) = v76;
    _os_log_impl(&dword_1C5C61000, v34, v35, "􀣬 Load additional items: Count: %ld", v36, 0xCu);
    OUTLINED_FUNCTION_4();
  }

  v37 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_nextRequest;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  sub_1C5D29814(&v1[v37], v27, &qword_1ED7DD2C8, MEMORY[0x1E69C4C60]);
  OUTLINED_FUNCTION_73_0(v27, 1, v28);
  if (v48)
  {
    OUTLINED_FUNCTION_7_13();
    sub_1C5D29540();
    v38 = sub_1C60162B0();
    v39 = sub_1C6016F30();
    if (OUTLINED_FUNCTION_12_10(v39))
    {
      v40 = OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_33_2(v40);
      OUTLINED_FUNCTION_8_12();
      _os_log_impl(v41, v42, v43, v44, v45, 2u);
      OUTLINED_FUNCTION_11_8();
    }

    v82(0);
  }

  else
  {
    v46 = *(v81 + 32);
    v76 = v28;
    v46(v80, v27, v28);
    v47 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_activePlaybackContext;
    OUTLINED_FUNCTION_31_2();
    swift_beginAccess();
    sub_1C5D29814(&v1[v47], v11, qword_1ED7DD2D0, MEMORY[0x1E69C4C18]);
    OUTLINED_FUNCTION_73_0(v11, 1, v12);
    if (v48)
    {
      OUTLINED_FUNCTION_4_16();
      sub_1C5D29540();
      v49 = sub_1C60162B0();
      v50 = sub_1C6016F30();
      if (OUTLINED_FUNCTION_12_10(v50))
      {
        v51 = OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_33_2(v51);
        OUTLINED_FUNCTION_8_12();
        _os_log_impl(v52, v53, v54, v55, v56, 2u);
        OUTLINED_FUNCTION_11_8();
      }

      OUTLINED_FUNCTION_41_0();
      v57 = v76;
      __swift_storeEnumTagSinglePayload(v58, v59, v60, v76);
      swift_beginAccess();
      sub_1C5D29888(v25, &v1[v37]);
      swift_endAccess();
      v82(0);
      (*(v81 + 8))(v80, v57);
    }

    else
    {
      v78 = *(v77 + 32);
      v78(v79, v11, v12);
      v61 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
      OUTLINED_FUNCTION_31_2();
      swift_beginAccess();
      v62 = *&v1[v61];
      if (v62)
      {
        v63 = "BehaviorPodcasts-clearUpNext";
        swift_unknownObjectRetain();
        v64 = sub_1C6016900();
        v65 = [v62 beginEditWithReason_];
        OUTLINED_FUNCTION_206();
        swift_unknownObjectRelease();
      }

      else
      {
        v63 = 0;
      }

      v66 = v77;
      v67 = v75;
      (*(v77 + 16))(v75, v79, v12);
      v68 = (*(v66 + 80) + 48) & ~*(v66 + 80);
      v69 = swift_allocObject();
      v70 = v82;
      v71 = v83;
      *(v69 + 2) = v1;
      *(v69 + 3) = v70;
      *(v69 + 4) = v71;
      *(v69 + 5) = v63;
      v78(&v69[v68], v67, v12);
      v72 = v63;
      v73 = v1;

      v74 = v80;
      sub_1C60157A0();

      (*(v66 + 8))(v79, v12);
      (*(v81 + 8))(v74, v76);
    }
  }

  OUTLINED_FUNCTION_237();
}

uint64_t sub_1C5D26344(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, void *a5, uint64_t a6)
{
  v60 = a6;
  v66 = a3;
  v67 = a5;
  v65 = a4;
  v8 = sub_1C6015800();
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v61 = (&v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = sub_1C6015960();
  v64 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5C6C678(0, &qword_1ED7DD2C8, MEMORY[0x1E69C4C60], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v57 - v13;
  v15 = sub_1C6015900();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v57 - v20;
  sub_1C5D2A6F4();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5D2A57C(a1, v24, sub_1C5D2A6F4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v62 = v14;
    v64 = a2;
    (*(v16 + 32))(v21, v24, v15);
    if (qword_1EC1A8EB8 != -1)
    {
      swift_once();
    }

    v25 = sub_1C60162D0();
    __swift_project_value_buffer(v25, qword_1EC1BE3A0);
    v26 = *(v16 + 16);
    v63 = v21;
    v26(v19, v21, v15);
    v27 = sub_1C60162B0();
    v28 = sub_1C6016F20();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v29 = 138543362;
      sub_1C5D2A7A0(&unk_1EC1A8F60, MEMORY[0x1E69C4C50]);
      swift_allocError();
      v26(v30, v19, v15);
      v31 = _swift_stdlib_bridgeErrorToNSError();
      v32 = v19;
      v33 = *(v16 + 8);
      v33(v32, v15);
      *(v29 + 4) = v31;
      v34 = v61;
      *v61 = v31;
      _os_log_impl(&dword_1C5C61000, v27, v28, "􀡓 Got error from PML when loading upcoming items: , %{public}@", v29, 0xCu);
      sub_1C5D297C4();
      MEMORY[0x1C6956920](v34, -1, -1);
      MEMORY[0x1C6956920](v29, -1, -1);
    }

    else
    {

      v48 = v19;
      v33 = *(v16 + 8);
      v33(v48, v15);
    }

    v49 = v62;
    v50 = sub_1C6015920();
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v50);
    v51 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_nextRequest;
    v52 = v64;
    swift_beginAccess();
    sub_1C5D29888(v49, v52 + v51);
    swift_endAccess();
    sub_1C5D2A7A0(&unk_1EC1A8F60, MEMORY[0x1E69C4C50]);
    v53 = swift_allocError();
    v54 = v63;
    v26(v55, v63, v15);
    v66(v53);

    [v67 rollback];
    return (v33)(v54, v15);
  }

  else
  {
    v35 = v59;
    (*(v64 + 32))(v11, v24, v59);
    sub_1C6015930();
    v36 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_nextRequest;
    swift_beginAccess();
    sub_1C5D29888(v14, a2 + v36);
    swift_endAccess();
    v58 = v11;
    v37 = sub_1C6015950();
    v38 = sub_1C5D1E71C(v37, v60);

    v39 = v61;
    sub_1C6015820();
    v41 = v62;
    v40 = v63;
    LODWORD(v36) = (*(v62 + 11))(v39, v63);
    v42 = *MEMORY[0x1E69C4C00];
    v43 = sub_1C5D1527C(v38);

    v44 = v36 == v42;
    v45 = v64;
    if (v44)
    {
      v46 = *(a2 + OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_restorationTailInsertionContentIdentifier);
      v47 = *(a2 + OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_restorationTailInsertionContentIdentifier + 8);

      sub_1C5D0CF58(v43, v46, v47);
    }

    else
    {
      swift_beginAccess();
      sub_1C5D0CC08(v43);
      swift_endAccess();
      (*(v41 + 1))(v39, v40);
    }

    v66(0);
    [v67 commit];
    return (*(v45 + 8))(v58, v35);
  }
}

id sub_1C5D26B4C(uint64_t a1, void *a2)
{
  v3 = v2;
  v45 = a2;
  v40 = a1;
  v4 = MEMORY[0x1E69E6720];
  sub_1C5C6C678(0, &qword_1EC1A8F40, MEMORY[0x1E69C4CD8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v39 - v6;
  v8 = sub_1C6015800();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C60158F0();
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5C6C678(0, &qword_1EC1A8F48, MEMORY[0x1E69C4C88], v4);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v39 - v15;
  v17 = sub_1C6015B40();
  v44 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - v21;
  v23 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
  swift_beginAccess();
  v24 = *(v3 + v23);
  if (!v24 || (v25 = [v24 fallbackPlaybackIntent]) == 0)
  {
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
    goto LABEL_7;
  }

  v26 = v25;
  sub_1C5D270EC(v16);

  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
LABEL_7:
    sub_1C5D29540();
    return [v45 commit];
  }

  v27 = v44;
  (*(v44 + 32))(v22, v16, v17);
  (*(v27 + 16))(v20, v22, v17);
  (*(v9 + 104))(v11, *MEMORY[0x1E69C4BE8], v8);
  if (v40)
  {
    sub_1C5CF86BC();
  }

  else
  {
    v29 = sub_1C6015BF0();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v29);
  }

  v30 = v41;
  sub_1C60158B0();
  if (qword_1EC1A8EB8 != -1)
  {
    swift_once();
  }

  v31 = sub_1C60162D0();
  __swift_project_value_buffer(v31, qword_1EC1BE3A0);
  v32 = sub_1C60162B0();
  v33 = sub_1C6016F30();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    MEMORY[0x1C6956920](v34, -1, -1);
  }

  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  v37 = v45;
  *(v36 + 16) = v35;
  *(v36 + 24) = v37;
  v38 = v37;

  sub_1C5D1B720();

  (*(v42 + 8))(v30, v43);
  (*(v44 + 8))(v22, v17);
}

uint64_t sub_1C5D270EC@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  if ([v1 tracklistToken] && (sub_1C5D2AA10(0, &qword_1EC1A93B8), (swift_dynamicCast() & 1) != 0))
  {
    sub_1C5D18730(a1);
    return sub_1C5C8F8BC(v9, v10);
  }

  else
  {
    if (qword_1EC1A8EB8 != -1)
    {
      swift_once();
    }

    v4 = sub_1C60162D0();
    __swift_project_value_buffer(v4, qword_1EC1BE3A0);
    v5 = sub_1C60162B0();
    v6 = sub_1C6016F30();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1C5C61000, v5, v6, "No tracklist token set on MPC intent", v7, 2u);
      MEMORY[0x1C6956920](v7, -1, -1);
    }

    v8 = sub_1C6015B40();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v8);
  }
}

id sub_1C5D27278(void *a1, char a2, uint64_t a3, void *a4)
{
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;

      v17 = sub_1C5D1527C(a1);
      sub_1C5D0C1D8(v17);
    }

    if (qword_1EC1A8EB8 != -1)
    {
      swift_once();
    }

    v18 = sub_1C60162D0();
    __swift_project_value_buffer(v18, qword_1EC1BE3A0);

    v8 = sub_1C60162B0();
    v19 = sub_1C6016F30();
    if (!os_log_type_enabled(v8, v19))
    {
      sub_1C5D2AA04(a1, 0);
      goto LABEL_14;
    }

    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = sub_1C5C6AA20();
    sub_1C5D2AA04(a1, 0);
    _os_log_impl(&dword_1C5C61000, v8, v19, "End of queue reached. Loaded %ld new item(s) into the player.", v20, 0xCu);
    v14 = v20;
    goto LABEL_12;
  }

  if (qword_1EC1A8EB8 != -1)
  {
    swift_once();
  }

  v6 = sub_1C60162D0();
  __swift_project_value_buffer(v6, qword_1EC1BE3A0);
  v7 = a1;
  v8 = sub_1C60162B0();
  v9 = sub_1C6016F20();
  sub_1C5D2AA04(a1, 1);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = a1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1C5C61000, v8, v9, "Unable to load fallback intent. %@", v10, 0xCu);
    sub_1C5D297C4();
    MEMORY[0x1C6956920](v11, -1, -1);
    v14 = v10;
LABEL_12:
    MEMORY[0x1C6956920](v14, -1, -1);
  }

LABEL_14:

  return [a4 commit];
}

Swift::Void __swiftcall QueueControllerBehaviorPodcasts.didReachEndOfQueue(withReason:)(Swift::String withReason)
{
  v2 = v1;
  if ((sub_1C5D20C58() & 1) != 0 && !sub_1C5D0BB1C())
  {
    v4 = sub_1C5D0BBCC();
    v9 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
    OUTLINED_FUNCTION_31_2();
    swift_beginAccess();
    v10 = *(v1 + v9);
    if (v10)
    {
      swift_unknownObjectRetain();
      v11 = sub_1C6016900();
      v8 = [v10 beginEditWithReason_];
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = 0;
    }

    sub_1C5D0C798();
    if (!sub_1C5D0BB1C())
    {
      [v8 commit];
      goto LABEL_13;
    }
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_managedQueue);
    if (sub_1C5D0BB1C())
    {
      return;
    }

    v4 = sub_1C5D0BBCC();
    v5 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
    OUTLINED_FUNCTION_31_2();
    swift_beginAccess();
    v6 = *(v2 + v5);
    if (v6)
    {
      swift_unknownObjectRetain();
      v7 = sub_1C6016900();
      v8 = [v6 beginEditWithReason_];
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = 0;
    }

    OUTLINED_FUNCTION_45_3();
    *(v3 + 16) = MEMORY[0x1E69E7CC0];
  }

  sub_1C5D26B4C(v4, v8);
LABEL_13:
}

void QueueControllerBehaviorPodcasts.finalizeStateRestoration(withTargetContentItemID:completion:)()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v38 = v2;
  v39 = v3;
  v4 = sub_1C6015800();
  OUTLINED_FUNCTION_25();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_146();
  v10 = v9 - v8;
  v11 = sub_1C60158F0();
  OUTLINED_FUNCTION_25();
  v13 = v12;
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v37 - v19;
  if (*(*&v1[OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_queueRestorationSnapshot] + 16))
  {

    sub_1C6015870();
  }

  else
  {
    (*(v6 + 104))(v10, *MEMORY[0x1E69C4C00], v4);

    OUTLINED_FUNCTION_31_2();
    sub_1C6015860();
  }

  if (qword_1EC1A8EB8 != -1)
  {
    OUTLINED_FUNCTION_12_5();
  }

  v21 = sub_1C60162D0();
  OUTLINED_FUNCTION_144(v21, qword_1EC1BE3A0);
  v22 = sub_1C60162B0();
  v23 = sub_1C6016F30();
  if (OUTLINED_FUNCTION_268(v23))
  {
    v24 = OUTLINED_FUNCTION_42();
    *v24 = 0;
    OUTLINED_FUNCTION_4();
  }

  v25 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v26 = *&v1[v25];
  if (v26)
  {
    swift_unknownObjectRetain();
    v27 = sub_1C6016900();
    v28 = [v26 beginEditWithReason_];
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0;
  }

  v29 = OUTLINED_FUNCTION_15_1();
  v30(v29);
  v31 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v32 = (v15 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = v1;
  (*(v13 + 32))(v33 + v31, v18, v11);
  v34 = (v33 + v32);
  v35 = v39;
  *v34 = v38;
  v34[1] = v35;
  *(v33 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8)) = v28;
  v36 = v28;
  v1;

  sub_1C5D1B720();

  (*(v13 + 8))(v20, v11);
  OUTLINED_FUNCTION_237();
}

void sub_1C5D27B1C(unint64_t a1, char a2, uint64_t a3, char *a4, void (*a5)(unint64_t), uint64_t a6, void *a7)
{
  v129 = a4;
  v13 = MEMORY[0x1E69E6720];
  sub_1C5C6C678(0, &unk_1EC1A8F80, MEMORY[0x1E69C4BD8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v132 = (v120 - v15);
  v133 = sub_1C60157F0();
  v127 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v126 = v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_1C60158F0();
  v136 = *(v138 - 8);
  v17 = MEMORY[0x1EEE9AC00](v138);
  v130 = v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v135 = v120 - v19;
  sub_1C5C6C678(0, qword_1ED7DD2D0, MEMORY[0x1E69C4C18], v13);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = v120 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = v120 - v27;
  if (a2)
  {
    a5(a1);

    [a7 rollback];
    return;
  }

  v124 = a6;
  v125 = a5;
  v131 = a1;
  v29 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_activePlaybackContext;
  swift_beginAccess();
  v137 = a3;
  sub_1C5D29814(a3 + v29, v28, qword_1ED7DD2D0, MEMORY[0x1E69C4C18]);
  if (__swift_getEnumTagSinglePayload(v28, 1, v138))
  {
    sub_1C5D29540();
  }

  else
  {
    v32 = v135;
    v31 = v136;
    v33 = v138;
    v136[2](v135, v28, v138);
    sub_1C5D29540();
    sub_1C5D1C650();
    v35 = v34;
    (v31[1])(v32, v33);
    if (v35)
    {
      v30 = sub_1C6016900();

      goto LABEL_10;
    }
  }

  v30 = 0;
LABEL_10:
  v36 = v131;
  v37 = sub_1C5C8FEE4(v131);
  v38 = v137;
  if (!v37)
  {
    goto LABEL_15;
  }

  if ((v36 & 0xC000000000000001) != 0)
  {
    v39 = MEMORY[0x1C6954040](0, v36);
  }

  else
  {
    if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v39 = *(v36 + 32);
  }

  sub_1C5CE5E28(v39, &selRef_queueSectionID);
  if (!v40)
  {
LABEL_15:
  }

  v122 = sub_1C6016900();

  sub_1C5D29814(v38 + v29, v26, qword_1ED7DD2D0, MEMORY[0x1E69C4C18]);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, v138);
  v134 = v30;
  v123 = a7;
  if (EnumTagSinglePayload)
  {
    sub_1C5D29540();
  }

  else
  {
    v43 = v135;
    v42 = v136;
    v44 = v138;
    v136[2](v135, v26, v138);
    sub_1C5D29540();
    v45 = sub_1C6015840();
    (v42[1])(v43, v44);
    if (v45)
    {
      v46 = 1;
      v47 = 3;
      goto LABEL_21;
    }
  }

  v46 = 0;
  v47 = 1;
LABEL_21:
  v121 = v47;
  sub_1C5C6C678(0, &qword_1EC1A88B8, sub_1C5D2A3D0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  *(inited + 32) = @"private-listening-enabled";
  v49 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v50 = @"private-listening-enabled";
  v51 = [v49 initWithBool_];
  *(inited + 64) = sub_1C5C64D74(0, &qword_1ED7DCCD0);
  *(inited + 40) = v51;
  type metadata accessor for MPCPlaybackEngineEventQueueReportingMetadataKey();
  v53 = v52;
  v120[1] = sub_1C5D2A7A0(qword_1EC1A9300, type metadata accessor for MPCPlaybackEngineEventQueueReportingMetadataKey);
  v120[2] = v53;
  v128 = sub_1C6016880();
  sub_1C5D29814(v137 + v29, v23, qword_1ED7DD2D0, MEMORY[0x1E69C4C18]);
  if (__swift_getEnumTagSinglePayload(v23, 1, v138))
  {
    sub_1C5D29540();
    __swift_storeEnumTagSinglePayload(v132, 1, 1, v133);
    v54 = v136;
    v55 = v134;
  }

  else
  {
    v56 = v135;
    v54 = v136;
    v57 = v138;
    v136[2](v135, v23, v138);
    sub_1C5D29540();
    v58 = v132;
    sub_1C6015810();
    (v54[1])(v56, v57);
    v59 = v133;
    v60 = __swift_getEnumTagSinglePayload(v58, 1, v133);
    v55 = v134;
    if (v60 != 1)
    {
      v114 = v126;
      v113 = v127;
      (*(v127 + 32))(v126, v58, v59);
      v115 = @"feature-name";
      v116 = sub_1C60157E0();
      v142 = MEMORY[0x1E69E6158];
      *&v141 = v116;
      *(&v141 + 1) = v117;
      sub_1C5C70758(&v141, v140);
      v118 = v128;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v139 = v118;
      sub_1C5E3686C(v140, v115, isUniquelyReferenced_nonNull_native);

      v128 = v139;
      (*(v113 + 8))(v114, v59);
      goto LABEL_25;
    }
  }

  sub_1C5D29540();
LABEL_25:
  v62 = v129;
  v61 = v130;
  if (qword_1EC1A8EB8 != -1)
  {
    swift_once();
  }

  v63 = sub_1C60162D0();
  __swift_project_value_buffer(v63, qword_1EC1BE3A0);
  v64 = v54[2];
  v64(v61, v62, v138);
  v65 = v55;
  v66 = sub_1C60162B0();
  v67 = sub_1C6016F30();

  v68 = os_log_type_enabled(v66, v67);
  v136 = v65;
  if (v68)
  {
    v69 = swift_slowAlloc();
    v132 = v66;
    v70 = v138;
    v71 = v61;
    v72 = v69;
    v73 = swift_slowAlloc();
    v130 = v73;
    v133 = swift_slowAlloc();
    *&v141 = v133;
    *v72 = 138412546;
    *(v72 + 4) = v65;
    *v73 = v134;
    *(v72 + 12) = 2080;
    v64(v135, v71, v70);
    v74 = v65;
    v75 = sub_1C60169A0();
    v77 = v76;
    (v54[1])(v71, v70);
    v78 = sub_1C5C6AB10(v75, v77, &v141);

    *(v72 + 14) = v78;
    v79 = v67;
    v80 = v132;
    _os_log_impl(&dword_1C5C61000, v132, v79, "Restoring queue for %@ - context: %s", v72, 0x16u);
    v81 = v130;
    sub_1C5D297C4();
    v82 = v137;
    MEMORY[0x1C6956920](v81, -1, -1);
    v83 = v133;
    __swift_destroy_boxed_opaque_existential_0(v133);
    MEMORY[0x1C6956920](v83, -1, -1);
    MEMORY[0x1C6956920](v72, -1, -1);

    v84 = v123;
  }

  else
  {

    (v54[1])(v61, v138);
    v84 = v123;
    v82 = v137;
  }

  v85 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
  swift_beginAccess();
  v86 = *(v82 + v85);
  v87 = v122;
  if (v86)
  {
    v88 = [v86 eventStream];
    sub_1C5C6C678(0, &unk_1ED7DCB20, sub_1C5CC540C, MEMORY[0x1E69E6F90]);
    v89 = swift_initStackObject();
    *(v89 + 16) = xmmword_1C6035CF0;
    *(v89 + 32) = @"account-id";
    if (v134)
    {
      v90 = @"account-id";
      v91 = v136;
      v92 = v136;
    }

    else
    {
      v93 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
      v94 = @"account-id";
      v92 = [v93 init];
      v91 = v136;
    }

    *(v89 + 40) = v92;
    *(v89 + 48) = @"queue-section-id";
    *(v89 + 56) = v87;
    *(v89 + 64) = @"private-listening-source";
    v95 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v96 = v91;
    v97 = @"queue-section-id";
    v98 = v87;
    v99 = @"private-listening-source";
    *(v89 + 72) = [v95 initWithInteger_];
    *(v89 + 80) = @"queue-reporting-metadata";
    v100 = @"queue-reporting-metadata";
    v101 = sub_1C6016840();

    *(v89 + 88) = v101;
    type metadata accessor for MPCPlaybackEngineEventPayloadKey();
    sub_1C5D2AA10(0, &qword_1ED7DCD60);
    sub_1C5D2A7A0(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
    sub_1C6016880();
    sub_1C5E372B8();

    v82 = v137;
  }

  else
  {
  }

  v102 = sub_1C5D1527C(v131);
  v103 = *(v82 + OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_restorationTailInsertionContentIdentifier);
  v104 = *(v82 + OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_restorationTailInsertionContentIdentifier + 8);

  sub_1C5D0CF58(v102, v103, v104);

  v125(0);
  v105 = sub_1C5D0BD8C();
  v107 = v136;
  if (v106)
  {
    v108 = v105;
    v109 = v106;
    if (v84)
    {
      v110 = sub_1C6016900();
      [v84 setSuggestedContentItemIDForStart_];
    }

    sub_1C5D0BE20(v108, v109, 1, &v141);

    v111 = v142;
    if (v142)
    {
      v112 = v143;
      __swift_project_boxed_opaque_existential_0(&v141, v142);
      (*(v112 + 56))(v111, v112);
      __swift_destroy_boxed_opaque_existential_0(&v141);
    }

    else
    {
      sub_1C5D297C4();
    }
  }

  [v84 commit];
}

Swift::Void __swiftcall QueueControllerBehaviorPodcasts.encode(with:)(NSCoder with)
{
  OUTLINED_FUNCTION_247();
  v3 = v2;
  v55 = sub_1C6015770();
  OUTLINED_FUNCTION_25();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_146();
  v9 = v8 - v7;
  v54 = sub_1C60154A0();
  OUTLINED_FUNCTION_25();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_146();
  v15 = v14 - v13;
  sub_1C5D1771C();
  sub_1C5D1546C(v16);

  sub_1C5C64D74(0, &qword_1EC1A92B0);
  v17 = sub_1C6016AF0();

  v18 = sub_1C6016900();
  [v3 encodeObject:v17 forKey:v18];

  v52 = v1;
  v19 = *(v1 + OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_managedQueue);
  v51 = v19;
  v20 = sub_1C5D0B68C();
  v21 = 0;
  v56 = sub_1C5C8FEE4(v20);
  v22 = (v5 + 16);
  v23 = (v11 + 8);
  v53 = MEMORY[0x1E69E7CC0];
  while (v56 != v21)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v31 = OUTLINED_FUNCTION_68_2();
      v24 = MEMORY[0x1C6954040](v31);
    }

    else
    {
      if (v21 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v24 = *(v20 + 8 * v21 + 32);
    }

    v25 = v24;
    v26 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v27 = OBJC_IVAR____MPCPodcastAVItem_internalItem;
    OUTLINED_FUNCTION_31_2();
    swift_beginAccess();
    (*v22)(v9, &v25[v27], v55);
    sub_1C5CB50F4(v25, &selRef_contentItemID);
    if (!v28)
    {
      __break(1u);
      return;
    }

    sub_1C6015470();
    v19 = sub_1C6015490();

    (*v23)(v15, v54);
    v29 = v53;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_0();
      sub_1C5D0E1FC();
      v29 = v32;
    }

    v30 = *(v29 + 16);
    v53 = v29;
    if (v30 >= *(v29 + 24) >> 1)
    {
      sub_1C5D0E1FC();
      v53 = v33;
    }

    *(v53 + 16) = v30 + 1;
    *(v53 + 8 * v30 + 32) = v19;
    v21 = v26;
  }

  if (qword_1EC1A8EB8 == -1)
  {
    goto LABEL_15;
  }

LABEL_23:
  OUTLINED_FUNCTION_12_5();
LABEL_15:
  v34 = sub_1C60162D0();
  OUTLINED_FUNCTION_144(v34, qword_1EC1BE3A0);

  v35 = sub_1C60162B0();
  v36 = sub_1C6016F30();
  if (OUTLINED_FUNCTION_12_10(v36))
  {
    v37 = OUTLINED_FUNCTION_112();
    *v37 = 134217984;
    *(v37 + 4) = *(v53 + 16);

    OUTLINED_FUNCTION_8_12();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    OUTLINED_FUNCTION_11_8();
  }

  else
  {
  }

  sub_1C5D01EB0(0, &qword_1EC1A9490);
  v43 = sub_1C6016AF0();

  v44 = sub_1C6016900();
  OUTLINED_FUNCTION_66_2(v44);

  v45 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_hasUserMutations;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v46 = *(v52 + v45);
  v47 = OUTLINED_FUNCTION_80_1();
  [v3 encodeBool:v46 forKey:v47];

  v48 = v51;
  sub_1C5D0B398();
  if (v49)
  {
    v48 = v49;
    sub_1C6016900();
    OUTLINED_FUNCTION_206();
  }

  v50 = sub_1C6016900();
  OUTLINED_FUNCTION_66_2(v50);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_237();
}

unint64_t sub_1C5D290BC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C5D290E0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1C5CE2084(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1C5D29214()
{
  OUTLINED_FUNCTION_247();
  if (v2 == v3 || (OUTLINED_FUNCTION_44_3(), *(v4 + 16) != *(v5 + 16)))
  {
LABEL_18:
    OUTLINED_FUNCTION_237();
  }

  else
  {
    v6 = 0;
    v7 = 1 << *(v1 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v1 + 64);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v14 = v11 | (v6 << 6);
      v15 = (*(v1 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(*(v1 + 56) + 8 * v14);

      v19 = v18;
      v20 = sub_1C5CE2084(v16, v17);
      v22 = v21;

      if ((v22 & 1) == 0)
      {

        goto LABEL_18;
      }

      sub_1C5C64D74(0, &qword_1ED7DCCD0);
      v23 = *(*(v0 + 56) + 8 * v20);
      v24 = sub_1C60172D0();

      if ((v24 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_18;
      }

      v13 = *(v1 + 64 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C5D293F8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1C5D294B4(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1C6016B30();
  }

  return result;
}

uint64_t sub_1C5D294F8(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1C5D29540()
{
  v1 = OUTLINED_FUNCTION_68();
  v2(v1);
  OUTLINED_FUNCTION_105();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_1C5D29594(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    OUTLINED_FUNCTION_34_4();
    v6 = sub_1C6017350();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1C5D295EC()
{
  if (!qword_1EC1A9220)
  {
    sub_1C5D2A9A0(255, &qword_1EC1A9270);
    v0 = sub_1C60177E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A9220);
    }
  }
}

uint64_t sub_1C5D29678(void *a1)
{
  v1 = [a1 trackIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C6016B10();

  return v3;
}

uint64_t sub_1C5D296D0(void *a1)
{
  v2 = [a1 userInfo];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C6016860();

  return v3;
}

uint64_t sub_1C5D29748(void *a1)
{
  v1 = [a1 items];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C5C64D74(0, &qword_1EC1A8CB0);
  v3 = sub_1C6016B10();

  return v3;
}

uint64_t sub_1C5D297C4()
{
  v1 = OUTLINED_FUNCTION_68();
  sub_1C5D29594(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_105();
  (*(v6 + 8))(v0);
  return v0;
}

uint64_t sub_1C5D29814(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1C5C6C678(0, a3, a4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_105();
  v5 = OUTLINED_FUNCTION_255();
  v6(v5);
  return a2;
}

uint64_t sub_1C5D29888(uint64_t a1, uint64_t a2)
{
  sub_1C5C6C678(0, &qword_1ED7DD2C8, MEMORY[0x1E69C4C60], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C5D29920(unint64_t a1, char a2)
{
  v5 = sub_1C60158F0();
  OUTLINED_FUNCTION_12(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v2 + 16);
  v14 = v2 + v11;
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v2 + v12);

  sub_1C5D27B1C(a1, a2 & 1, v13, (v2 + v10), v15, v16, v17);
}

uint64_t objectdestroy_3Tm()
{
  sub_1C60158F0();
  OUTLINED_FUNCTION_25();

  v1 = OUTLINED_FUNCTION_55_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1C5D2A1A8()
{
  OUTLINED_FUNCTION_68();
  v2 = sub_1C60158F0();
  OUTLINED_FUNCTION_13_3(v2);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1C5D26344(v0, v4, v5, v6, v7, v8);
}

uint64_t sub_1C5D2A21C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1C5C6BEFC(&v12, v10 + 40 * a1 + 32);
}

void sub_1C5D2A2B4()
{
  if (!qword_1EC1AB160)
  {
    sub_1C5D01EB0(255, &qword_1EC1AAC40);
    v0 = sub_1C6017350();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AB160);
    }
  }
}

uint64_t sub_1C5D2A324(uint64_t a1, uint64_t a2)
{
  sub_1C5C6C678(0, qword_1ED7DD2D0, MEMORY[0x1E69C4C18], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1C5D2A3D0()
{
  if (!qword_1EC1A8A60)
  {
    type metadata accessor for MPCPlaybackEngineEventQueueReportingMetadataKey();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1A8A60);
    }
  }
}

void sub_1C5D2A45C()
{
  OUTLINED_FUNCTION_68();
  v2 = sub_1C60158F0();
  OUTLINED_FUNCTION_12(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v8);
  v10 = v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  sub_1C5D1B884(v0, v1 + v7, v9, v11, v12);
}

void sub_1C5D2A4FC()
{
  if (!qword_1EC1A8890)
  {
    sub_1C60158F0();
    sub_1C5C74680(255, &qword_1ED7DCAE0);
    v0 = sub_1C6017A60();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A8890);
    }
  }
}

uint64_t sub_1C5D2A57C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_105();
  v4 = OUTLINED_FUNCTION_255();
  v5(v4);
  return a2;
}

void sub_1C5D2A5D8(uint64_t a1, char a2)
{
  v5 = sub_1C60158F0();
  OUTLINED_FUNCTION_13_3(v5);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];

  sub_1C5D1CAF0(a1, a2 & 1, v6, v7, v8, v9);
}

void sub_1C5D2A65C()
{
  OUTLINED_FUNCTION_68();
  v2 = sub_1C60158F0();
  OUTLINED_FUNCTION_12(v2);
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  v8 = (v7 + 40) & ~v7;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1 + ((*(v6 + 64) + v7 + v8) & ~v7);

  sub_1C5D1CE04(v0, v9, v10, v11, v1 + v8, v12);
}

void sub_1C5D2A6F4()
{
  if (!qword_1EC1A8888)
  {
    sub_1C6015960();
    sub_1C6015900();
    sub_1C5D2A7A0(&unk_1EC1A8F60, MEMORY[0x1E69C4C50]);
    v0 = sub_1C6017A60();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A8888);
    }
  }
}

uint64_t sub_1C5D2A7A0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_34_4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C5D2A7E4()
{
  if (!qword_1EC1A8AB8)
  {
    type metadata accessor for MPCPlaybackEngineEventPayloadKey();
    sub_1C5D29594(255, &qword_1EC1A8AB0, &qword_1ED7DCD60, &protocolRef_MPCPlaybackEngineEventPayloadValue, sub_1C5D2AA10);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1A8AB8);
    }
  }
}

void sub_1C5D2A880()
{
  if (!qword_1EC1A8878)
  {
    sub_1C5C6C678(255, &qword_1EC1A8DB0, type metadata accessor for PodcastAVItem, MEMORY[0x1E69E62F8]);
    sub_1C5C74680(255, &qword_1ED7DCAE0);
    v0 = sub_1C6017A60();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A8878);
    }
  }
}

void sub_1C5D2A930()
{
  if (!qword_1EC1A88E8)
  {
    sub_1C5D2A9A0(255, &unk_1EC1A8DD0);
    v0 = sub_1C60177E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A88E8);
    }
  }
}

void sub_1C5D2A9A0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1C5D2AA04(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1C5D2AA10(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t objectdestroy_59Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t objectdestroy_66Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void OUTLINED_FUNCTION_51_2(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

id OUTLINED_FUNCTION_66_2(uint64_t a1)
{

  return [v2 (v3 + 3842)];
}

uint64_t OUTLINED_FUNCTION_67_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_80_1()
{

  return sub_1C6016900();
}

void OUTLINED_FUNCTION_81_1()
{

  JUMPOUT(0x1C69534E0);
}

void OUTLINED_FUNCTION_82_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL sub_1C5D2AD44(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_1C60150D0() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

BOOL sub_1C5D2AE18(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

id sub_1C5D2AF40(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_1C6016900();

  return v3;
}

uint64_t sub_1C5D2B070(uint64_t a1)
{
  v3 = OBJC_IVAR____MPCQueueControllerBehaviorPodcastsTransportableExtension_sessionTypesInvalidatable;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id QueueControllerBehaviorPodcastsTransportableExtension.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id QueueControllerBehaviorPodcastsTransportableExtension.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QueueControllerBehaviorPodcastsTransportableExtension();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t QueueControllerBehaviorPodcasts.isExportableSessionType(_:forContentItemID:extension:reason:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  sub_1C5D0BE20(a2, a3, 1, v14);
  if (!v14[3])
  {
    sub_1C5D2B50C(v14);
LABEL_6:
    if (sub_1C6016940() == 0xD000000000000039 && 0x80000001C604A910 == v7)
    {
    }

    else
    {
      v9 = sub_1C6017860();

      if ((v9 & 1) == 0)
      {
        if (a5)
        {
          sub_1C5C64D74(0, &qword_1EC1A92B0);
          v10 = sub_1C60172F0();
          v11 = v10;
          result = 0;
          *a5 = v10;
          return result;
        }

        return 0;
      }
    }

    return 1;
  }

  sub_1C5D2B598();
  sub_1C5C64D74(0, &unk_1EC1A8A00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = [v13 mediaType];

  if (v6 != 1024)
  {
    goto LABEL_6;
  }

  return 0;
}

BOOL QueueControllerBehaviorPodcasts.isOneShotExportableSession(forContentItemID:reason:)(void *a1, void *a2)
{
  sub_1C5D0BE20(a1, a2, 1, v5);
  if (v5[3])
  {
    sub_1C5D2B598();
    sub_1C5C64D74(0, &unk_1EC1A8A00);
    if (swift_dynamicCast())
    {
      v2 = [v4 mediaType];

      return v2 != 1024;
    }
  }

  else
  {
    sub_1C5D2B50C(v5);
  }

  return 1;
}

uint64_t sub_1C5D2B50C(uint64_t a1)
{
  sub_1C5C6EF98(0, qword_1EC1A9120, sub_1C5D2B598, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C5D2B598()
{
  result = qword_1EC1A9130;
  if (!qword_1EC1A9130)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC1A9130);
  }

  return result;
}

id sub_1C5D2B800(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_1C6016900();

  return v3;
}

void sub_1C5D2B898(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1C6016940();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

char *sub_1C5D2B994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = &v6[OBJC_IVAR____MPCQueueControllerBehaviorPodcastsIdentifierComponents_contentItemID];
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = &v6[OBJC_IVAR____MPCQueueControllerBehaviorPodcastsIdentifierComponents_sectionID];
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = &v6[OBJC_IVAR____MPCQueueControllerBehaviorPodcastsIdentifierComponents_itemID];
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v6[OBJC_IVAR____MPCQueueControllerBehaviorPodcastsIdentifierComponents_isPlaceholder] = 0;
  v22.receiver = v6;
  v22.super_class = type metadata accessor for QueueControllerBehaviorPodcastsIdentifierComponents();
  v16 = objc_msgSendSuper2(&v22, sel_init);
  v17 = &v16[OBJC_IVAR____MPCQueueControllerBehaviorPodcastsIdentifierComponents_contentItemID];
  *v17 = a1;
  *(v17 + 1) = a2;
  v18 = v16;

  v19 = &v18[OBJC_IVAR____MPCQueueControllerBehaviorPodcastsIdentifierComponents_sectionID];
  *v19 = a3;
  *(v19 + 1) = a4;

  if (a6)
  {

    a2 = a6;
  }

  else
  {
    a5 = a1;
  }

  v20 = &v18[OBJC_IVAR____MPCQueueControllerBehaviorPodcastsIdentifierComponents_itemID];
  *v20 = a5;
  *(v20 + 1) = a2;

  return v18;
}

id sub_1C5D2BAFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QueueControllerBehaviorPodcastsIdentifierComponents();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C5D2BBF0()
{
  sub_1C5D2C088();
  v1 = v0 + OBJC_IVAR____MPCSleepTimerController_mode;
  *v1 = 1;
  *(v1 + 8) = 1;
}

void sub_1C5D2BC68(double a1)
{
  sub_1C5D2C088();
  v3 = v1 + OBJC_IVAR____MPCSleepTimerController_mode;
  *v3 = a1;
  *(v3 + 8) = 0;

  sub_1C5D2C0E0();
}

uint64_t sub_1C5D2BD08()
{
  sub_1C5D2C088();
  v1 = v0 + OBJC_IVAR____MPCSleepTimerController_mode;
  *v1 = 2;
  *(v1 + 8) = 1;
  sub_1C5D2C508();
  *(v0 + OBJC_IVAR____MPCSleepTimerController_observedChapter) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void sub_1C5D2BDA8()
{
  OUTLINED_FUNCTION_3(OBJC_IVAR____MPCSleepTimerController_mode);
  sub_1C5D2C088();
  v1 = *(v0 + OBJC_IVAR____MPCSleepTimerController_observedChapter);
  *(v0 + OBJC_IVAR____MPCSleepTimerController_observedChapter) = 0;
}

uint64_t sub_1C5D2BE58()
{
  OUTLINED_FUNCTION_4_17();
  if (v1)
  {
    return qword_1C6037078[*v0];
  }

  else
  {
    return 1;
  }
}

double sub_1C5D2BEB8()
{
  result = *(v0 + OBJC_IVAR____MPCSleepTimerController_mode);
  if (*(v0 + OBJC_IVAR____MPCSleepTimerController_mode + 8))
  {
    return 0.0;
  }

  return result;
}

double sub_1C5D2BF18()
{
  v1 = sub_1C6015020();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  OUTLINED_FUNCTION_4_17();
  if (!v9 || (v10 = 0.0, !*v8))
  {
    v11 = *(v0 + OBJC_IVAR____MPCSleepTimerController_timer);
    if (v11)
    {
      v12 = [v11 fireDate];
      sub_1C6014FF0();

      (*(v2 + 32))(v7, v5, v1);
      sub_1C6014F80();
      v10 = v13;
      (*(v2 + 8))(v7, v1);
    }

    else
    {
      return 0.0;
    }
  }

  return v10;
}

void sub_1C5D2C088()
{
  OUTLINED_FUNCTION_3(OBJC_IVAR____MPCSleepTimerController_mode);
  v1 = OBJC_IVAR____MPCSleepTimerController_timer;
  [*(v0 + OBJC_IVAR____MPCSleepTimerController_timer) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;
}

void sub_1C5D2C0E0()
{
  if ((*(v0 + OBJC_IVAR____MPCSleepTimerController_mode + 8) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____MPCSleepTimerController_mode);
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = *(v0 + OBJC_IVAR____MPCSleepTimerController_identifier);
    v4 = *(v0 + OBJC_IVAR____MPCSleepTimerController_identifier + 8);
    v6 = swift_allocObject();
    v6[2] = v3;
    v6[3] = 0x4000000000000000;
    v6[4] = v5;
    v6[5] = v4;
    v10[4] = sub_1C5D2D288;
    v10[5] = v6;
    OUTLINED_FUNCTION_0_25();
    v10[1] = 1107296256;
    v10[2] = sub_1C5D2C4A0;
    v10[3] = &block_descriptor_29;
    v7 = _Block_copy(v10);

    v8 = [v2 scheduledTimerWithTimeInterval:0 repeats:v7 block:v1];
    _Block_release(v7);
    v9 = *(v0 + OBJC_IVAR____MPCSleepTimerController_timer);
    *(v0 + OBJC_IVAR____MPCSleepTimerController_timer) = v8;
  }
}

void sub_1C5D2C23C(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1C5D2C088();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 eventObserver];
      if ([v6 respondsToSelector_])
      {
        [v6 engineDidEndSleepTimer_];
      }
    }

    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = [v7 player];

      [v9 currentRate];
      v11 = v10;

      if (v11 > 0.0)
      {
        v12 = swift_unknownObjectWeakLoadStrong();
        if (v12)
        {
          v13 = v12;
          v14 = [v12 player];

          v15 = sub_1C6016900();
          aBlock[4] = sub_1C5D2D2A0;
          aBlock[5] = 0;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1C5D2C434;
          aBlock[3] = &block_descriptor_32_1;
          v16 = _Block_copy(aBlock);
          [v14 pauseForSleepTimerWithFadeout:v15 identifier:v16 completion:a1];

          _Block_release(v16);
          v3 = v15;
        }
      }
    }
  }
}

void sub_1C5D2C434(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1C5D2C4A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1C5D2C508()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong queueController];

    if (v2)
    {
      v3 = [v2 currentItem];

      if (v3)
      {
        objc_opt_self();
        v4 = swift_dynamicCastObjCClass();
        if (v4 && (v5 = v4, (v6 = swift_unknownObjectWeakLoadStrong()) != 0))
        {
          v7 = v6;
          v8 = [v6 player];

          [v8 currentTime];
          v10 = v9;

          v11 = [v5 chapters];
          sub_1C5C64D74(0, &qword_1EC1A9390);
          v12 = sub_1C6016B10();

          v13 = sub_1C5C6AA20();
          for (i = 0; ; ++i)
          {
            if (v13 == i)
            {

              goto LABEL_17;
            }

            if ((v12 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x1C6954040](i, v12);
            }

            else
            {
              if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_21;
              }

              v15 = *(v12 + 8 * i + 32);
            }

            v16 = v15;
            if (__OFADD__(i, 1))
            {
              break;
            }

            [v15 startTime];
            if (v17 <= v10)
            {
              [v16 startTime];
              v19 = v18;
              [v16 duration];
              if (v10 < v19 + v20)
              {

                return;
              }
            }
          }

          __break(1u);
LABEL_21:
          __break(1u);
        }

        else
        {
LABEL_17:
        }
      }
    }
  }
}

id SleepTimerController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SleepTimerController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepTimerController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall SleepTimerController.didEndPlaybackForCurrentItem()()
{
  OUTLINED_FUNCTION_4_17();
  if (v1)
  {
    if (*v0 == 1)
    {
      sub_1C5D2BDA8();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = Strong;
        v4 = [Strong queueController];

        if (v4)
        {
          v5 = [v4 currentItem];

          if (v5)
          {
            sub_1C5D2CF90(v5);
            if (v6)
            {
              v7 = swift_unknownObjectWeakLoadStrong();
              if (v7 && (v8 = v7, v9 = [v7 queueController], v8, v9))
              {
                v10 = sub_1C6016900();

                v11 = [v9 canNextTrackForContentItemID:v10 reason:0];

                if (v11)
                {
                  v12 = swift_unknownObjectWeakLoadStrong();
                  if (v12)
                  {
                    v13 = v12;
                    v14 = [v12 player];

                    v15 = sub_1C6016900();
                    v18[4] = sub_1C5D2D2A0;
                    v18[5] = 0;
                    OUTLINED_FUNCTION_0_25();
                    v18[1] = 1107296256;
                    OUTLINED_FUNCTION_1_19();
                    v18[2] = v16;
                    v18[3] = &block_descriptor_11;
                    v17 = _Block_copy(v18);
                    [v14 pauseForSleepTimerWithFadeout:v15 identifier:v17 completion:0.0];
                    _Block_release(v17);
                  }
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
}

Swift::Void __swiftcall SleepTimerController.didChangeItemElapsedTime(_:)(Swift::Double a1)
{
  OUTLINED_FUNCTION_4_17();
  if (!v16)
  {
    goto LABEL_27;
  }

  if (*v2 < 2uLL)
  {
    goto LABEL_27;
  }

  v3 = v1;
  sub_1C5D2C508();
  if (!v4)
  {
    goto LABEL_27;
  }

  v5 = v4;
  v6 = OBJC_IVAR____MPCSleepTimerController_observedChapter;
  v7 = *(v1 + OBJC_IVAR____MPCSleepTimerController_observedChapter);
  if (v7)
  {
    v33 = v5;
    v8 = [v7 identifier];
    v9 = sub_1C6016940();
    v11 = v10;

    v12 = [v33 identifier];
    v13 = sub_1C6016940();
    v15 = v14;

    v16 = v13 == v9 && v15 == v11;
    if (!v16)
    {
      v17 = sub_1C6017860();

      if (v17)
      {
        OUTLINED_FUNCTION_5_15();

        return;
      }

      v22 = *(v3 + v6);
      *(v3 + v6) = 0;

      if (qword_1EC1A8EB8 != -1)
      {
        OUTLINED_FUNCTION_12_5();
      }

      v23 = sub_1C60162D0();
      __swift_project_value_buffer(v23, qword_1EC1BE3A0);
      v24 = sub_1C60162B0();
      v25 = sub_1C6016F30();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1C5C61000, v24, v25, "Sleep timer pausing because chapter ended", v26, 2u);
        MEMORY[0x1C6956920](v26, -1, -1);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v28 = Strong;
        v29 = [Strong player];

        v30 = sub_1C6016900();
        aBlock[4] = sub_1C5D2D2A0;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        OUTLINED_FUNCTION_1_19();
        aBlock[2] = v31;
        aBlock[3] = &block_descriptor_3;
        v32 = _Block_copy(aBlock);
        [v29 pauseForSleepTimerWithFadeout:v30 identifier:v32 completion:0.0];
        _Block_release(v32);
      }

      sub_1C5D2BDA8();

LABEL_27:
      OUTLINED_FUNCTION_5_15();
      return;
    }

    OUTLINED_FUNCTION_5_15();
  }

  else
  {
    OUTLINED_FUNCTION_5_15();

    MEMORY[0x1EEE66BB8]();
  }
}

void sub_1C5D2CDB8(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1EC1A8EB8 != -1)
    {
      OUTLINED_FUNCTION_12_5();
    }

    v3 = sub_1C60162D0();
    __swift_project_value_buffer(v3, qword_1EC1BE3A0);
    v4 = a1;
    oslog = sub_1C60162B0();
    v5 = sub_1C6016F20();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_1C5C61000, oslog, v5, "Error pausing player - %@", v6, 0xCu);
      sub_1C5CB5700(v7);
      MEMORY[0x1C6956920](v7, -1, -1);
      MEMORY[0x1C6956920](v6, -1, -1);

      v10 = oslog;
    }

    else
    {

      v10 = a1;
    }
  }
}

uint64_t sub_1C5D2CF90(void *a1)
{
  v2 = [a1 contentItemID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C6016940();

  return v3;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SleepTimerController.StopMode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SleepTimerController.StopMode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C5D2D23C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5D2D258(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

id sub_1C5D2D2B0(void *a1)
{
  v1 = a1;
  MPAVItem.contentIdentifier.getter();

  v2 = v10;
  if (v10)
  {
    v3 = __swift_project_boxed_opaque_existential_0(v9, v10);
    v4 = *(v2 - 8);
    MEMORY[0x1EEE9AC00](v3);
    v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    v7 = sub_1C6017850();
    (*(v4 + 8))(v6, v2);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void MPAVItem.contentIdentifier.getter()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v67 = v2;
  sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v65 = v4;
  v66 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_102();
  v64 = v5 - v6;
  OUTLINED_FUNCTION_8_13();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12_11();
  v63 = v8;
  OUTLINED_FUNCTION_85();
  sub_1C5D2D8C8();
  v10 = v9;
  OUTLINED_FUNCTION_25();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_102();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - v18;
  OUTLINED_FUNCTION_5_16();
  sub_1C5D2F7F8(0, v20, v21);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v62 - v23;
  v25 = sub_1C6014930();
  OUTLINED_FUNCTION_25();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_146();
  v31 = (v30 - v29);
  v32 = [v1 modelGenericObject];
  if (!v32)
  {
    MEMORY[0x1C6952D20]();
    OUTLINED_FUNCTION_1();
    v47 = v64;
    OUTLINED_FUNCTION_18_6();
    sub_1C6016250();
    (*(v12 + 8))(v16, v10);
    v48 = v1;
    v49 = sub_1C60162B0();
    v50 = sub_1C6016F30();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_25_6(v52, 4.8751e-34);
      sub_1C6017650();
      v53 = sub_1C5C6AB10(v68, v69, &v70);

      *(v51 + 4) = v53;
      OUTLINED_FUNCTION_27_8(&dword_1C5C61000, v54, v55, "[SI: %{public}s] - modelGenericObject found to be nil while resolving contentIdentifier");
      __swift_destroy_boxed_opaque_existential_0(v52);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_4();
    }

    OUTLINED_FUNCTION_14_13();
    v57 = v47;
    goto LABEL_11;
  }

  v33 = v32;
  v34 = [v32 identifiers];
  sub_1C5D2D928();

  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    OUTLINED_FUNCTION_5_16();
    v37 = sub_1C5D2F8B0(v24, v35, v36);
    MEMORY[0x1C6952D20](v37);
    OUTLINED_FUNCTION_1();
    v38 = v63;
    sub_1C6016250();
    (*(v12 + 8))(v19, v10);
    v39 = v1;
    v40 = sub_1C60162B0();
    v41 = sub_1C6016F30();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_25_6(v43, 4.8751e-34);
      sub_1C6017650();
      v44 = sub_1C5C6AB10(v68, v69, &v70);

      *(v42 + 4) = v44;
      OUTLINED_FUNCTION_27_8(&dword_1C5C61000, v45, v46, "[SI: %{public}s] - transitionSubscriptionIdentifier found to be nil while resolving contentIdentifier");
      __swift_destroy_boxed_opaque_existential_0(v43);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_4();
    }

    else
    {
    }

    OUTLINED_FUNCTION_14_13();
    v57 = v38;
LABEL_11:
    v56(v57, v66);
    v61 = v67;
    *v67 = 0u;
    *(v61 + 1) = 0u;
    goto LABEL_12;
  }

  v58 = *(v27 + 32);
  v58(v31, v24, v25);
  v59 = v67;
  v67[3] = v25;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v59);
  v58(boxed_opaque_existential_0, v31, v25);

LABEL_12:
  OUTLINED_FUNCTION_237();
}

void sub_1C5D2D8C8()
{
  if (!qword_1EC1A95B0)
  {
    sub_1C60162D0();
    v0 = sub_1C6016260();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A95B0);
    }
  }
}

void sub_1C5D2D928()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v145 = v2;
  sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v143 = v3;
  v144 = v4;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_102();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_173();
  v140 = v9;
  OUTLINED_FUNCTION_8_13();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_173();
  v137 = v11;
  OUTLINED_FUNCTION_8_13();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12_11();
  v138 = v13;
  OUTLINED_FUNCTION_85();
  sub_1C5D2D8C8();
  v15 = v14;
  OUTLINED_FUNCTION_25();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_102();
  v21 = v19 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v129 - v24;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_173();
  v136 = v26;
  OUTLINED_FUNCTION_8_13();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_12_11();
  v135 = v28;
  OUTLINED_FUNCTION_4_18();
  sub_1C5D2F7F8(0, v29, v30);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v133 = &v129 - v32;
  OUTLINED_FUNCTION_85();
  v134 = sub_1C60148D0();
  OUTLINED_FUNCTION_25();
  v131 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_146();
  v130 = v36 - v35;
  OUTLINED_FUNCTION_6_13();
  sub_1C5D2F7F8(0, v37, v38);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v41 = &v129 - v40;
  v142 = sub_1C6014950();
  OUTLINED_FUNCTION_25();
  v139 = v42;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_102();
  v46 = v44 - v45;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_12_11();
  v141 = v48;
  v49 = [objc_opt_self() emptyIdentifierSet];
  sub_1C5C64D74(0, &qword_1ED7DCE70);
  v50 = sub_1C60172D0();

  if (v50)
  {
    MEMORY[0x1C6952D20]();
    OUTLINED_FUNCTION_1();
    sub_1C6016250();
    (*(v17 + 8))(v21, v15);
    v51 = v1;
    v52 = sub_1C60162B0();
    v53 = sub_1C6016F30();

    if (os_log_type_enabled(v52, v53))
    {
      OUTLINED_FUNCTION_68_0();
      v54 = OUTLINED_FUNCTION_10_12();
      v55 = OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_3_14(v55, 4.8752e-34);
      OUTLINED_FUNCTION_22_10();
      v56 = sub_1C5C6AB10(v147, v148, v149);

      *(v7 + 4) = v56;
      OUTLINED_FUNCTION_7_14();
      *v54 = v51;
      v57 = v51;
      OUTLINED_FUNCTION_13_7(&dword_1C5C61000, v58, v53, "[MPIS: %{public}s] - Failed to resolve MusicContent identifier: identifier set is empty | identifiers=%{public}@");
      sub_1C5CB5700(v54);
      OUTLINED_FUNCTION_4();
      __swift_destroy_boxed_opaque_existential_0(v55);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_9_12();
    }

    OUTLINED_FUNCTION_14_13();
    v60 = v7;
    goto LABEL_31;
  }

  v129 = v17;
  v132 = v1;
  v61 = [v1 modelKind];
  if (v61)
  {
    v62 = v61;
    v63 = [v61 identityKind];
  }

  else
  {
    v63 = 0;
  }

  sub_1C5C64D74(0, &qword_1EC1AB3F8);
  v64 = [swift_getObjCClassFromMetadata() identityKind];
  v65 = v64;
  if (!v63)
  {
    v66 = v132;
    if (!v64)
    {
LABEL_13:
      MEMORY[0x1C6952D20]();
      OUTLINED_FUNCTION_1();
      v68 = v140;
      OUTLINED_FUNCTION_18_6();
      sub_1C6016250();
      (*(v129 + 8))(v25, v15);
      v69 = v66;
      v70 = sub_1C60162B0();
      v71 = sub_1C6016F30();

      if (os_log_type_enabled(v70, v71))
      {
        OUTLINED_FUNCTION_68_0();
        v72 = OUTLINED_FUNCTION_10_12();
        v73 = OUTLINED_FUNCTION_21();
        OUTLINED_FUNCTION_3_14(v73, 4.8752e-34);
        OUTLINED_FUNCTION_22_10();
        v74 = sub_1C5C6AB10(v147, v148, v149);

        *(v68 + 4) = v74;
        OUTLINED_FUNCTION_7_14();
        *v72 = v69;
        v75 = v69;
        OUTLINED_FUNCTION_13_7(&dword_1C5C61000, v76, v71, "[MPIS: %{public}s] - Failed to resolve MusicContent identifier: incorrect MPModelKind | identifiers=%{public}@");
        sub_1C5CB5700(v72);
        OUTLINED_FUNCTION_4();
        __swift_destroy_boxed_opaque_existential_0(v73);
LABEL_29:
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_9_12();
      }

LABEL_30:

      OUTLINED_FUNCTION_14_13();
      v60 = v68;
LABEL_31:
      v59(v60, v143);
LABEL_32:
      v93 = 1;
      v82 = v145;
      goto LABEL_33;
    }

LABEL_16:

    goto LABEL_17;
  }

  v66 = v132;
  if (!v64)
  {
    v65 = v63;
    goto LABEL_16;
  }

  sub_1C5C64D74(0, &unk_1EC1A8C90);
  v67 = sub_1C60172D0();

  if (v67)
  {
    goto LABEL_13;
  }

LABEL_17:
  sub_1C5D2E624();
  v77 = v142;
  if (__swift_getEnumTagSinglePayload(v41, 1, v142) == 1)
  {
    OUTLINED_FUNCTION_6_13();
    sub_1C5D2F8B0(v41, v78, v79);
    v80 = sub_1C5D2F84C(v66);
    if (v81)
    {
      v82 = v145;
      sub_1C6014910();

      goto LABEL_26;
    }

    v94 = v136;
    MEMORY[0x1C6952D20](v80);
    OUTLINED_FUNCTION_1();
    v68 = v137;
    OUTLINED_FUNCTION_18_6();
    sub_1C6016250();
    (*(v129 + 8))(v94, v15);
    v95 = v66;
    v70 = sub_1C60162B0();
    v96 = sub_1C6016F30();

    if (os_log_type_enabled(v70, v96))
    {
      OUTLINED_FUNCTION_68_0();
      v97 = OUTLINED_FUNCTION_10_12();
      v98 = OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_3_14(v98, 4.8752e-34);
      OUTLINED_FUNCTION_22_10();
      v99 = sub_1C5C6AB10(v147, v148, v149);

      *(v68 + 4) = v99;
      OUTLINED_FUNCTION_7_14();
      *v97 = v95;
      v100 = v95;
      OUTLINED_FUNCTION_13_7(&dword_1C5C61000, v101, v96, "[MPIS: %{public}s] - Failed to resolve MusicContent identifier: missing mediaAPIContentType and opaqueID | identifiers=%{public}@");
      sub_1C5CB5700(v97);
      OUTLINED_FUNCTION_4();
      __swift_destroy_boxed_opaque_existential_0(v98);
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v83 = v139;
  v84 = v141;
  (*(v139 + 32))(v141, v41, v77);
  v85 = OUTLINED_FUNCTION_29_7();
  if (v85 && (v86 = [v85 globalPlaylistID], swift_unknownObjectRelease(), v86))
  {
    sub_1C6016940();

    (*(v83 + 104))(v46, *MEMORY[0x1E69E3BC8], v77);
    v82 = v145;
    sub_1C6014920();

    v87 = *(v83 + 8);
    v87(v46, v77);
    v87(v84, v77);
  }

  else
  {
    v88 = OUTLINED_FUNCTION_29_7();
    v89 = v15;
    v90 = v129;
    if (!v88 || (v91 = [v88 subscriptionAdamID], swift_unknownObjectRelease(), !v91) && ((v103 = OUTLINED_FUNCTION_29_7()) == 0 || (v91 = objc_msgSend(v103, sel_adamID), swift_unknownObjectRelease(), !v91)))
    {
      v104 = [v66 personalizedStore];
      if (v104)
      {
        v105 = [v104 personID];
        swift_unknownObjectRelease();
        sub_1C6016940();

        v106 = OUTLINED_FUNCTION_29_7();
        if (v106)
        {
          v107 = [v106 universalCloudLibraryID];
          swift_unknownObjectRelease();
          if (v107)
          {
            v108 = sub_1C6016940();

            v109 = v133;
            sub_1C5D2F3F4();
            v110 = v134;
            if (__swift_getEnumTagSinglePayload(v109, 1, v134) != 1)
            {
              v126 = v131;
              v127 = *(v131 + 32);
              v144 = v108;
              v128 = v130;
              v127(v130, v109, v110);
              v82 = v145;
              sub_1C6014900();

              (*(v126 + 8))(v128, v110);
              (*(v83 + 8))(v141, v77);
              goto LABEL_26;
            }

            OUTLINED_FUNCTION_4_18();
            sub_1C5D2F8B0(v109, v111, v112);
            v66 = v132;
          }

          else
          {
          }

          v89 = v15;
          v90 = v129;
        }

        else
        {
        }
      }

      v113 = v135;
      MEMORY[0x1C6952D20]();
      OUTLINED_FUNCTION_1();
      v114 = v138;
      sub_1C6016250();
      (*(v90 + 8))(v113, v89);
      v115 = v114;
      v116 = v66;
      v117 = sub_1C60162B0();
      v118 = sub_1C6016F30();

      if (os_log_type_enabled(v117, v118))
      {
        v119 = OUTLINED_FUNCTION_68_0();
        v120 = swift_slowAlloc();
        v121 = OUTLINED_FUNCTION_21();
        *v119 = 136446466;
        v146 = v116;
        v147 = 0;
        v148 = 0xE000000000000000;
        v149[0] = v121;
        OUTLINED_FUNCTION_22_10();
        v122 = sub_1C5C6AB10(v147, v148, v149);

        *(v119 + 4) = v122;
        *(v119 + 12) = 2114;
        *(v119 + 14) = v116;
        *v120 = v116;
        v123 = v116;
        _os_log_impl(&dword_1C5C61000, v117, v118, "[MPIS: %{public}s] - Failed to resolve MusicContent identifier: No RawIdentifier found | identifiers=%{public}@", v119, 0x16u);
        sub_1C5CB5700(v120);
        OUTLINED_FUNCTION_4();
        __swift_destroy_boxed_opaque_existential_0(v121);
        OUTLINED_FUNCTION_9_12();
        OUTLINED_FUNCTION_4();

        OUTLINED_FUNCTION_14_13();
        v125 = v138;
      }

      else
      {

        OUTLINED_FUNCTION_14_13();
        v125 = v115;
      }

      v124(v125, v143);
      (*(v83 + 8))(v141, v77);
      goto LABEL_32;
    }

    v147 = v91;
    sub_1C60177D0();
    v82 = v145;
    v92 = v141;
    sub_1C6014920();

    (*(v83 + 8))(v92, v77);
  }

LABEL_26:
  v93 = 0;
LABEL_33:
  v102 = sub_1C6014930();
  __swift_storeEnumTagSinglePayload(v82, v93, 1, v102);
  OUTLINED_FUNCTION_237();
}

void sub_1C5D2E624()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v119 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_102();
  v9 = v7 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v106 - v12;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12_11();
  v111 = v14;
  OUTLINED_FUNCTION_85();
  sub_1C5D2D8C8();
  OUTLINED_FUNCTION_25();
  v116 = v16;
  v117 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_102();
  v115 = v17 - v18;
  OUTLINED_FUNCTION_8_13();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_173();
  v108 = v20;
  OUTLINED_FUNCTION_8_13();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_12_11();
  v110 = v22;
  OUTLINED_FUNCTION_85();
  v23 = sub_1C6014950();
  OUTLINED_FUNCTION_25();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_102();
  v109 = v27 - v28;
  OUTLINED_FUNCTION_8_13();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_173();
  v130 = v30;
  OUTLINED_FUNCTION_8_13();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v106 - v32;
  v118 = v1;
  v34 = [v1 modelKind];
  v129 = v9;
  if (v34)
  {
    v35 = v34;
    v106 = v13;
    v112 = v4;
    v113 = v3;
    v36 = sub_1C6014940();
    v37 = 0;
    v123 = (v25 + 88);
    v38 = *(v36 + 16);
    v127 = v25 + 8;
    v128 = v38;
    v126 = *MEMORY[0x1E69E3BB0];
    v121 = *MEMORY[0x1E69E3BA8];
    v120 = *MEMORY[0x1E69E3BB8];
    v114 = *MEMORY[0x1E69E3BC8];
    v39 = &selRef_hasCapability_;
    v107 = *MEMORY[0x1E69E3BC0];
    v124 = v25;
    v125 = v36;
    v122 = v25 + 16;
    while (1)
    {
      if (v128 == v37)
      {

        v3 = v113;
        v4 = v112;
        goto LABEL_21;
      }

      if (v37 >= *(v36 + 16))
      {
        __break(1u);
        return;
      }

      v40 = v36 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
      v41 = *(v25 + 72);
      v131 = v37;
      v42 = *(v25 + 16);
      v42(v33, v40 + v41 * v37, v23);
      sub_1C5C64D74(0, &qword_1ED7DCC30);
      v43 = [v35 v39[70]];
      sub_1C5C64D74(0, &qword_1EC1AB400);
      v44 = v39;
      v45 = [swift_getObjCClassFromMetadata() v39[70]];
      v46 = sub_1C60172D0();

      if (v46)
      {
        v130 = v33;
        v131 = v23;

        MEMORY[0x1C6952D20](v72);
        OUTLINED_FUNCTION_1();
        v73 = v111;
        v74 = v117;
        sub_1C6016250();
        v75 = OUTLINED_FUNCTION_16_7();
        v76(v75, v74);
        v77 = v118;
        v78 = sub_1C60162B0();
        v79 = sub_1C6016F30();

        if (os_log_type_enabled(v78, v79))
        {
          OUTLINED_FUNCTION_68_0();
          v80 = OUTLINED_FUNCTION_10_12();
          v81 = OUTLINED_FUNCTION_21();
          *v73 = 136446466;
          v132 = v77;
          v133 = 0;
          v134 = 0xE000000000000000;
          v135[0] = v81;
          OUTLINED_FUNCTION_22_10();
          v82 = sub_1C5C6AB10(v133, v134, v135);

          *(v73 + 4) = v82;
          *(v73 + 12) = 2114;
          *(v73 + 14) = v77;
          *v80 = v77;
          v83 = v77;
          _os_log_impl(&dword_1C5C61000, v78, v79, "[MPIS: %{public}s] - MusicContent.MediaAPIContentType: MPModelPlaylistEntryKind found; returning .songs type | identifiers=%{public}@", v73, 0x16u);
          sub_1C5CB5700(v80);
          OUTLINED_FUNCTION_4();
          __swift_destroy_boxed_opaque_existential_0(v81);
          OUTLINED_FUNCTION_4();
          OUTLINED_FUNCTION_9_12();
        }

        OUTLINED_FUNCTION_24_8();
        v84(v73, v112);
        OUTLINED_FUNCTION_20_10();
        v23 = v131;
        v85(v130, v131);
        v3 = v113;
        (*(v124 + 104))(v113, v126, v23);
        goto LABEL_32;
      }

      v47 = [v35 v44 + 2903];
      v48 = v130;
      v42(v130, v33, v23);
      v49 = (*v123)(v48, v23);
      v50 = v42;
      if (v49 == v126)
      {
        sub_1C5C64D74(0, &qword_1EC1A9FD0);
        v51 = [swift_getObjCClassFromMetadata() v44 + 2903];
        v36 = v125;
        goto LABEL_17;
      }

      v36 = v125;
      if (v49 == v121)
      {
        break;
      }

      if (v49 == v120)
      {
        sub_1C5C64D74(0, &qword_1EC1A8BF0);
        v52 = [swift_getObjCClassFromMetadata() v44 + 2903];
        goto LABEL_16;
      }

      if (v49 == v114)
      {
        sub_1C5C64D74(0, &qword_1EC1A8B78);
        v52 = [swift_getObjCClassFromMetadata() v44 + 2903];
        goto LABEL_16;
      }

      if (v49 == v107)
      {
        sub_1C5C64D74(0, &unk_1EC1AB408);
        v52 = [swift_getObjCClassFromMetadata() v44 + 2903];
        goto LABEL_16;
      }

      v51 = [objc_opt_self() unknownKind];
      OUTLINED_FUNCTION_20_10();
      v55(v130, v23);
LABEL_17:
      v53 = sub_1C60172D0();

      if (v53)
      {

        MEMORY[0x1C6952D20](v86);
        OUTLINED_FUNCTION_1();
        v87 = v106;
        v88 = v117;
        sub_1C6016250();
        v89 = OUTLINED_FUNCTION_16_7();
        v90(v89, v88);
        v91 = v109;
        v50(v109, v33, v23);
        v92 = v118;
        v93 = sub_1C60162B0();
        v94 = sub_1C6016F30();

        if (os_log_type_enabled(v93, v94))
        {
          v95 = v91;
          v96 = OUTLINED_FUNCTION_21();
          v97 = swift_slowAlloc();
          v131 = v23;
          v98 = v97;
          v99 = OUTLINED_FUNCTION_21();
          v130 = v99;
          *v96 = 136446722;
          v132 = v92;
          v133 = 0;
          v134 = 0xE000000000000000;
          v135[0] = v99;
          OUTLINED_FUNCTION_22_10();
          LODWORD(v129) = v94;
          v100 = sub_1C5C6AB10(v133, v134, v135);

          *(v96 + 4) = v100;
          *(v96 + 12) = 2114;
          v101 = sub_1C5D2F174();
          OUTLINED_FUNCTION_20_10();
          v102(v95, v131);
          *(v96 + 14) = v101;
          *(v96 + 22) = 2114;
          *(v96 + 24) = v92;
          *v98 = v101;
          v98[1] = v92;
          v103 = v92;
          _os_log_impl(&dword_1C5C61000, v93, v129, "[MPIS: %{public}s] - MusicContent.MediaAPIContentType: returning %{public}@ | identifiers=%{public}@", v96, 0x20u);
          sub_1C5CC55A0();
          swift_arrayDestroy();
          v23 = v131;
          OUTLINED_FUNCTION_4();
          __swift_destroy_boxed_opaque_existential_0(v130);
          OUTLINED_FUNCTION_4();
          OUTLINED_FUNCTION_4();
        }

        else
        {

          OUTLINED_FUNCTION_20_10();
          v104(v91, v23);
        }

        OUTLINED_FUNCTION_24_8();
        v105(v87, v112);
        v3 = v113;
        (*(v124 + 32))(v113, v33, v23);
LABEL_32:
        v71 = 0;
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_20_10();
      v54(v33, v23);
      v37 = v131 + 1;
      v25 = v124;
      v9 = v129;
      v39 = &selRef_hasCapability_;
    }

    sub_1C5C64D74(0, &qword_1EC1A9FD0);
    v52 = [swift_getObjCClassFromMetadata() v44 + 2903];
LABEL_16:
    v51 = v52;
    goto LABEL_17;
  }

LABEL_21:
  MEMORY[0x1C6952D20]();
  OUTLINED_FUNCTION_1();
  v56 = v117;
  sub_1C6016250();
  v57 = OUTLINED_FUNCTION_16_7();
  v58(v57, v56);
  v59 = v118;
  v60 = v9;
  v61 = sub_1C60162B0();
  v62 = sub_1C6016F30();

  if (os_log_type_enabled(v61, v62))
  {
    OUTLINED_FUNCTION_68_0();
    v63 = OUTLINED_FUNCTION_10_12();
    v64 = OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_3_14(v64, 4.8752e-34);
    OUTLINED_FUNCTION_22_10();
    v131 = v23;
    v65 = sub_1C5C6AB10(v133, v134, v135);

    *(v60 + 4) = v65;
    OUTLINED_FUNCTION_7_14();
    *v63 = v59;
    v66 = v59;
    OUTLINED_FUNCTION_13_7(&dword_1C5C61000, v67, v62, "[MPIS: %{public}s] - MusicContent.MediaAPIContentType: no type found; returning nil | identifiers=%{public}@");
    sub_1C5CB5700(v63);
    OUTLINED_FUNCTION_4();
    __swift_destroy_boxed_opaque_existential_0(v64);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_9_12();

    OUTLINED_FUNCTION_24_8();
    v69 = v129;
    v70 = v4;
    v23 = v131;
  }

  else
  {

    OUTLINED_FUNCTION_24_8();
    v69 = v9;
    v70 = v4;
  }

  v68(v69, v70);
  v71 = 1;
LABEL_33:
  __swift_storeEnumTagSinglePayload(v3, v71, 1, v23);
  OUTLINED_FUNCTION_237();
}

id sub_1C5D2F174()
{
  v1 = v0;
  v2 = sub_1C6014950();
  OUTLINED_FUNCTION_25();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_146();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1, v2);
  v9 = (*(v4 + 88))(v8, v2);
  if (v9 == *MEMORY[0x1E69E3BB0] || v9 == *MEMORY[0x1E69E3BA8])
  {
    sub_1C5C64D74(0, &qword_1EC1A9FD0);
    v10 = [swift_getObjCClassFromMetadata() identityKind];
  }

  else if (v9 == *MEMORY[0x1E69E3BB8])
  {
    sub_1C5C64D74(0, &qword_1EC1A8BF0);
    v10 = [swift_getObjCClassFromMetadata() identityKind];
  }

  else if (v9 == *MEMORY[0x1E69E3BC8])
  {
    sub_1C5C64D74(0, &qword_1EC1A8B78);
    v10 = [swift_getObjCClassFromMetadata() identityKind];
  }

  else
  {
    if (v9 != *MEMORY[0x1E69E3BC0])
    {
      v12 = [objc_opt_self() unknownKind];
      (*(v4 + 8))(v8, v2);
      return v12;
    }

    sub_1C5C64D74(0, &unk_1EC1AB408);
    v10 = [swift_getObjCClassFromMetadata() identityKind];
  }

  return v10;
}

void sub_1C5D2F3F4()
{
  OUTLINED_FUNCTION_247();
  v2 = v1;
  v3 = sub_1C60148D0();
  OUTLINED_FUNCTION_25();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_102();
  v36 = (v7 - v8);
  OUTLINED_FUNCTION_8_13();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v37 = [v0 modelKind];
  if (v37)
  {
    v12 = sub_1C60148C0();
    v34 = *(v12 + 16);
    if (v34)
    {
      v25 = v2;
      sub_1C5C64D74(0, &qword_1ED7DCC30);
      v13 = 0;
      v33 = v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v31 = v5 + 88;
      v32 = v5 + 16;
      v30 = *MEMORY[0x1E69E3B78];
      v28 = *MEMORY[0x1E69E3B70];
      v14 = *MEMORY[0x1E69E3B80];
      v35 = (v5 + 8);
      v15 = &selRef_hasCapability_;
      v26 = *MEMORY[0x1E69E3B88];
      v27 = v14;
      v29 = v12;
      while (1)
      {
        if (v13 >= *(v12 + 16))
        {
          __break(1u);
          return;
        }

        v16 = *(v5 + 16);
        v16(v11, v33 + *(v5 + 72) * v13, v3);
        v17 = v15;
        v18 = [v37 v15[70]];
        v19 = v36;
        v16(v36, v11, v3);
        v20 = (*(v5 + 88))(v19, v3);
        if (v20 == v30)
        {
          break;
        }

        if (v20 == v28)
        {
          sub_1C5C64D74(0, &qword_1EC1A9FD0);
          v21 = [swift_getObjCClassFromMetadata() identityKind];
          goto LABEL_13;
        }

        if (v20 == v27)
        {
          sub_1C5C64D74(0, &qword_1EC1A8BF0);
          v21 = [swift_getObjCClassFromMetadata() identityKind];
          goto LABEL_13;
        }

        if (v20 == v26)
        {
          sub_1C5C64D74(0, &qword_1EC1A8B78);
          v21 = [swift_getObjCClassFromMetadata() identityKind];
          goto LABEL_13;
        }

        v22 = [objc_opt_self() unknownKind];
        (*v35)(v36, v3);
LABEL_14:
        v23 = sub_1C60172D0();

        if (v23)
        {

          v2 = v25;
          (*(v5 + 32))(v25, v11, v3);
          v24 = 0;
          goto LABEL_21;
        }

        ++v13;
        (*v35)(v11, v3);
        v12 = v29;
        v15 = &selRef_hasCapability_;
        if (v34 == v13)
        {

          v24 = 1;
          v2 = v25;
          goto LABEL_21;
        }
      }

      sub_1C5C64D74(0, &qword_1EC1A9FD0);
      v21 = [swift_getObjCClassFromMetadata() v17 + 2903];
LABEL_13:
      v22 = v21;
      goto LABEL_14;
    }
  }

  v24 = 1;
LABEL_21:
  __swift_storeEnumTagSinglePayload(v2, v24, 1, v3);
  OUTLINED_FUNCTION_237();
}

void sub_1C5D2F7F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6017350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C5D2F84C(void *a1)
{
  v1 = [a1 opaqueID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C6016940();

  return v3;
}

uint64_t sub_1C5D2F8B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C5D2F7F8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void OUTLINED_FUNCTION_27_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

void sub_1C5D2F970(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1C5C66A1C(0, v1, 0);
    v5 = sub_1C5DF4A90();
    v6 = 0;
    v7 = v2 + 56;
    v28 = v2 + 64;
    v29 = v1;
    v30 = v2 + 56;
    v31 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_27;
        }

        v33 = v4;
        v32 = v3;
        v9 = *(*(v2 + 48) + 8 * v5);
        v10 = @"unknown";
        v11 = @"unknown";
        if (v9 <= 4)
        {
          v11 = off_1E8230628[v9];
          v10 = off_1E8230650[v9];
        }

        v12 = v11;
        v13 = v10;
        v14 = sub_1C6016940();
        v16 = v15;

        v18 = *(v34 + 16);
        v17 = *(v34 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1C5C66A1C((v17 > 1), v18 + 1, 1);
        }

        *(v34 + 16) = v18 + 1;
        v19 = v34 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
        if (v33)
        {
          goto LABEL_31;
        }

        v7 = v30;
        v2 = v31;
        v20 = 1 << *(v31 + 32);
        if (v5 >= v20)
        {
          goto LABEL_28;
        }

        v21 = *(v30 + 8 * v8);
        if ((v21 & (1 << v5)) == 0)
        {
          goto LABEL_29;
        }

        if (*(v31 + 36) != v32)
        {
          goto LABEL_30;
        }

        v22 = v21 & (-2 << (v5 & 0x3F));
        if (v22)
        {
          v20 = __clz(__rbit64(v22)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v23 = v8 << 6;
          v24 = v8 + 1;
          v25 = (v28 + 8 * v8);
          while (v24 < (v20 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              sub_1C5D380F8(v5, v32, 0);
              v20 = __clz(__rbit64(v26)) + v23;
              goto LABEL_21;
            }
          }

          sub_1C5D380F8(v5, v32, 0);
        }

LABEL_21:
        if (++v6 == v29)
        {
          return;
        }

        v4 = 0;
        v3 = *(v31 + 36);
        v5 = v20;
        if (v20 < 0)
        {
          break;
        }
      }
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
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }
}

void sub_1C5D2FBF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1C5C66A1C(0, v1, 0);
    v5 = sub_1C5DF4A90();
    v6 = 0;
    v7 = v2 + 56;
    v28 = v2 + 64;
    v29 = v1;
    v30 = v2 + 56;
    v31 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_27;
        }

        v33 = v4;
        v32 = v3;
        v9 = *(*(v2 + 48) + 8 * v5);
        v10 = @"unknown";
        v11 = @"unknown";
        if (v9 <= 4)
        {
          v11 = off_1E8230678[v9];
          v10 = off_1E82306A0[v9];
        }

        v12 = v11;
        v13 = v10;
        v14 = sub_1C6016940();
        v16 = v15;

        v18 = *(v34 + 16);
        v17 = *(v34 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1C5C66A1C((v17 > 1), v18 + 1, 1);
        }

        *(v34 + 16) = v18 + 1;
        v19 = v34 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
        if (v33)
        {
          goto LABEL_31;
        }

        v7 = v30;
        v2 = v31;
        v20 = 1 << *(v31 + 32);
        if (v5 >= v20)
        {
          goto LABEL_28;
        }

        v21 = *(v30 + 8 * v8);
        if ((v21 & (1 << v5)) == 0)
        {
          goto LABEL_29;
        }

        if (*(v31 + 36) != v32)
        {
          goto LABEL_30;
        }

        v22 = v21 & (-2 << (v5 & 0x3F));
        if (v22)
        {
          v20 = __clz(__rbit64(v22)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v23 = v8 << 6;
          v24 = v8 + 1;
          v25 = (v28 + 8 * v8);
          while (v24 < (v20 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              sub_1C5D380F8(v5, v32, 0);
              v20 = __clz(__rbit64(v26)) + v23;
              goto LABEL_21;
            }
          }

          sub_1C5D380F8(v5, v32, 0);
        }

LABEL_21:
        if (++v6 == v29)
        {
          return;
        }

        v4 = 0;
        v3 = *(v31 + 36);
        v5 = v20;
        if (v20 < 0)
        {
          break;
        }
      }
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
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }
}

uint64_t sub_1C5D2FEC8(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v4, a1);
  sub_1C5C8C7F4();
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

void *sub_1C5D2FF68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_1C5D0EA0C(*(a1 + 16), 0);
  sub_1C5D976C8();
  v4 = v3;
  sub_1C5C8C7F4();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1C5D2FFF8(uint64_t a1, void *a2)
{
  result = sub_1C5C6AA20();
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      v9 = 0;
      goto LABEL_12;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v8 = MEMORY[0x1C6954040](v6, a1);
    result = swift_unknownObjectRelease();
    if (v8 == a2)
    {
LABEL_10:
      v9 = v6;
LABEL_12:

      return v9;
    }

LABEL_6:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_14;
    }
  }

  if (v6 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    if (*(a1 + 8 * v6 + 32) == a2)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

BOOL sub_1C5D300CC()
{
  v0 = sub_1C6017720();

  return v0 != 0;
}

BOOL sub_1C5D30124@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1C5D300CC();
  *a1 = result;
  return result;
}

uint64_t sub_1C5D30158@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5D30114();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C5D301DC()
{
  v1 = OBJC_IVAR____TtCE17MediaPlaybackCoreCSo32MPCFairPlayPerformanceControllerP33_EDB7E1B06AEE0CDEB60990C97F802F188_Context__engines;
  sub_1C5C665D4(0, &qword_1EC1A91B0, &unk_1EC1A93A8, off_1E822D750, MEMORY[0x1E69D3908]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1C5D30288()
{
  v0 = sub_1C5D301DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C5D302E4()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;
  *(v6 + 56) = v0;

  v7 = OUTLINED_FUNCTION_252();
  v8(v7);
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C5D30434()
{
  OUTLINED_FUNCTION_248();
  [*(v0 + 40) invalidate];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_172();

  return v1();
}

uint64_t sub_1C5D304AC()
{
  OUTLINED_FUNCTION_248();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_172();

  return v0();
}

id sub_1C5D30510()
{
  v1 = v0;
  v2 = *(*&v0[OBJC_IVAR___MPCFairPlayPerformanceController_context] + OBJC_IVAR____TtCE17MediaPlaybackCoreCSo32MPCFairPlayPerformanceControllerP33_EDB7E1B06AEE0CDEB60990C97F802F188_Context_notifications);
  v3 = sub_1C5C6AA20();

  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      v6 = [objc_opt_self() sharedManager];
      [v6 unregisterObserver_];

      v7 = [objc_opt_self() sharedServerObjectDatabase];
      [v7 unregisterObserver_];

      v8.receiver = v1;
      v8.super_class = MPCFairPlayPerformanceController;
      return objc_msgSendSuper2(&v8, sel_dealloc);
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1C6954040](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1C6016490();
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1C5D306B0(void *a1)
{
  OUTLINED_FUNCTION_24_7();
  v2 = a1;
  OUTLINED_FUNCTION_3_15(v2, &qword_1EC1A91B0, &unk_1EC1A93A8, off_1E822D750);
  v3 = sub_1C6015420();
  sub_1C5D37D7C(v4, v2);
  v6 = v5;
  result = sub_1C5C6AA20();
  if (result < v6)
  {
    __break(1u);
  }

  else
  {
    sub_1C5D105BC(v6, result);
    v3(v8, 0);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1C5D30814(uint64_t a1)
{
  v1[41] = a1;
  sub_1C5C665D4(0, &qword_1EC1A8D68, &unk_1EC1A8BB0, off_1E822D740, MEMORY[0x1E69E8688]);
  v1[42] = v2;
  v1[43] = *(v2 - 8);
  v1[44] = swift_task_alloc();
  sub_1C5C665D4(0, &qword_1EC1A8D60, &unk_1EC1A8BB0, off_1E822D740, MEMORY[0x1E69E8698]);
  v1[45] = v3;
  v1[46] = *(v3 - 8);
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = sub_1C6016C10();
  v1[50] = sub_1C6016C00();
  v5 = sub_1C6016BA0();
  v1[51] = v5;
  v1[52] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C5D309CC, v5, v4);
}

uint64_t sub_1C5D309CC()
{
  OUTLINED_FUNCTION_13();
  v1 = [objc_opt_self() sharedManager];
  v0[53] = v1;
  v0[2] = v0;
  v0[3] = sub_1C5D30AF4;
  v2 = swift_continuation_init();
  sub_1C5CB562C();
  v0[25] = v3;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1C5E22268;
  v0[21] = &block_descriptor_35;
  v0[22] = v2;
  [v1 performAfterLoadingAccounts_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C5D30AF4()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_2();
  *v1 = v0;
  v3 = *(v2 + 416);
  v4 = *(v2 + 408);

  return MEMORY[0x1EEE6DFA0](sub_1C5D30BF0, v4, v3);
}

uint64_t sub_1C5D30BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_35();
  v13 = [*(v12 + 424) accounts];
  sub_1C5C64D74(0, &unk_1EC1A8BB0);
  OUTLINED_FUNCTION_34_4();
  v14 = sub_1C6016B10();

  v52 = MEMORY[0x1E69E7CC0];
  v15 = sub_1C5C6AA20();
  for (i = 0; v15 != i; ++i)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1C6954040](i, v14);
    }

    else
    {
      if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v17 = *(v14 + 8 * i + 32);
    }

    v18 = v17;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      OUTLINED_FUNCTION_0_0();
      swift_once();
LABEL_14:
      v19 = sub_1C60162D0();
      *(v12 + 440) = __swift_project_value_buffer(v19, qword_1ED7E1690);
      v20 = sub_1C60162B0();
      v21 = sub_1C6016F30();
      if (os_log_type_enabled(v20, v21))
      {
        *OUTLINED_FUNCTION_42() = 0;
        OUTLINED_FUNCTION_4_19();
        _os_log_impl(v22, v23, v24, v25, v26, 2u);
        OUTLINED_FUNCTION_35_1();
      }

      *(v12 + 304) = v14;
      v27 = MEMORY[0x1E69E62F8];
      sub_1C5C665D4(0, &qword_1EC1AB500, &unk_1EC1A8BB0, off_1E822D740, MEMORY[0x1E69E62F8]);
      sub_1C5D3831C(&qword_1EC1AB508, &qword_1EC1AB500, v27);
      sub_1C6016AA0();
      OUTLINED_FUNCTION_235();
      OUTLINED_FUNCTION_25_7();

      return MEMORY[0x1EEE6DFA0](v28, v29, v30);
    }

    if ([v17 usesLease])
    {
      sub_1C60175D0();
      sub_1C6017600();
      sub_1C6017610();
      sub_1C60175E0();
    }

    else
    {
    }
  }

  v14 = v52;
  *(v12 + 432) = v52;
  if (sub_1C5C6AA20())
  {
    if (qword_1ED7DD2B0 != -1)
    {
      goto LABEL_28;
    }

    goto LABEL_14;
  }

  if (qword_1ED7DD2B0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v32 = sub_1C60162D0();
  OUTLINED_FUNCTION_144(v32, qword_1ED7E1690);
  v33 = sub_1C60162B0();
  v34 = sub_1C6016F30();
  v35 = OUTLINED_FUNCTION_49_4(v34);
  v36 = *(v12 + 424);
  if (v35)
  {
    v37 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_33_2(v37);
    OUTLINED_FUNCTION_23_0();
    _os_log_impl(v38, v39, v40, v41, v42, 2u);
    OUTLINED_FUNCTION_11_8();
  }

  OUTLINED_FUNCTION_66_3();

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_25_7();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, v52, a10, a11, a12);
}

uint64_t sub_1C5D30F60()
{
  OUTLINED_FUNCTION_13();
  (*(v0[46] + 16))(v0[47], v0[48], v0[45]);
  sub_1C5D3831C(&qword_1EC1AB510, &qword_1EC1A8D60, MEMORY[0x1E69E8698]);
  sub_1C6016CD0();
  OUTLINED_FUNCTION_21_11();
  sub_1C5D3831C(v1, v2, v3);
  v4 = swift_task_alloc();
  v0[56] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_10_13(v4);

  return MEMORY[0x1EEE6D8C8](v5);
}

uint64_t sub_1C5D3107C()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  v3[57] = v0;

  if (v0)
  {
    (*(v3[43] + 8))(v3[44], v3[42]);
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5D31190()
{
  OUTLINED_FUNCTION_13();
  v3 = v2[39];
  v2[58] = v3;
  if (v3)
  {
    v2[59] = sub_1C6016C00();
    v4 = swift_task_alloc();
    v2[60] = v4;
    *v4 = v2;
    v4[1] = sub_1C5D31300;

    return sub_1C5CBC864();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_44_4();
    v7(v6);
    (*(v1 + 8))(v0, 0);
    v8 = v2[51];
    v9 = v2[52];

    return MEMORY[0x1EEE6DFA0](sub_1C5D316D0, v8, v9);
  }
}

uint64_t sub_1C5D3129C()
{
  OUTLINED_FUNCTION_248();
  v1 = OUTLINED_FUNCTION_43_5(*(v0 + 456));
  v2(v1);

  v3 = OUTLINED_FUNCTION_18_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5D31300()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 488) = v0;

  if (v0)
  {
    (*(*(v4 + 344) + 8))(*(v4 + 352), *(v4 + 336));
  }

  else
  {
    *(v4 + 576) = v3 & 1;
  }

  sub_1C6016BA0();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_103();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C5D3148C()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1C5D314EC()
{
  OUTLINED_FUNCTION_13();
  if (*(v3 + 576))
  {
    v4 = OUTLINED_FUNCTION_44_4();
    v5(v4);
    (*(v2 + 8))(v1, v0);
    v6 = *(v3 + 408);
    v7 = *(v3 + 416);

    return MEMORY[0x1EEE6DFA0](sub_1C5D31D1C, v6, v7);
  }

  else
  {

    OUTLINED_FUNCTION_21_11();
    sub_1C5D3831C(v8, v9, v10);
    v11 = swift_task_alloc();
    *(v3 + 448) = v11;
    *v11 = v3;
    v12 = OUTLINED_FUNCTION_10_13();

    return MEMORY[0x1EEE6D8C8](v12);
  }
}

uint64_t sub_1C5D31608()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 464);

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C5D3166C()
{
  OUTLINED_FUNCTION_248();
  v1 = OUTLINED_FUNCTION_43_5(*(v0 + 488));
  v2(v1);

  v3 = OUTLINED_FUNCTION_18_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5D316D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_60_2();
  v17 = (v16 + 432);
  if (sub_1C5C6AA20() >= 1)
  {
    v18 = [*(v16 + 424) fallbackAccount];
    if (v18)
    {
      v19 = v18;
      sub_1C5D0CA4C(v18, *v17);
      if (v21)
      {

        goto LABEL_13;
      }

      v22 = v20;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v24 = *v17;
      if (!isUniquelyReferenced_nonNull_bridgeObject || v24 < 0 || (v24 & 0x4000000000000000) != 0)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1C5D120FC(*v17);
        v24 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22 >= v25)
      {
        __break(1u);
      }

      else
      {
        v17 = (v16 + 296);
        v26 = v25 - 1;
        v27 = v25 - 1 - v22;
        v28 = (v24 & 0xFFFFFFFFFFFFFF8) + 8 * v22;
        v29 = *(v28 + 0x20);
        sub_1C5D0ECB4((v28 + 40), v27, (v28 + 32));
        *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) = v26;

        *(v16 + 296) = v24;
        sub_1C5D85598(0);
        isUniquelyReferenced_nonNull_bridgeObject = sub_1C5C6AA20();
        if ((isUniquelyReferenced_nonNull_bridgeObject & 0x8000000000000000) == 0)
        {
          v30 = sub_1C5C6AA20();
          v31 = __OFADD__(v30, 1);
          isUniquelyReferenced_nonNull_bridgeObject = v30 + 1;
          if (!v31)
          {
            sub_1C5D12108(isUniquelyReferenced_nonNull_bridgeObject, 1);
            v32 = OUTLINED_FUNCTION_62();
            sub_1C5D10B58(v32, v33, 1, v19);
            goto LABEL_13;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }
      }

      __break(1u);
      goto LABEL_38;
    }
  }

LABEL_13:
  *(v16 + 504) = *v17;
  v34 = OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_3_15(v34, &qword_1EC1A91B0, &unk_1EC1A93A8, off_1E822D750);
  v35 = sub_1C6015430();
  swift_endAccess();
  if (!sub_1C5C6AA20())
  {

LABEL_21:

    v41 = sub_1C60162B0();
    v42 = sub_1C6016F20();
    v43 = OUTLINED_FUNCTION_49_4(v42);
    v44 = *(v16 + 424);
    if (v43)
    {
      v45 = OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_33_2(v45);
      OUTLINED_FUNCTION_23_0();
      _os_log_impl(v46, v47, v48, v49, v50, 2u);
      OUTLINED_FUNCTION_11_8();
    }

    OUTLINED_FUNCTION_66_3();

    OUTLINED_FUNCTION_172();
    goto LABEL_24;
  }

  sub_1C5C8CEE0(0, (v35 & 0xC000000000000001) == 0, v35);
  if ((v35 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x1C6954040](0, v35);
  }

  else
  {
    v36 = *(v35 + 32);
  }

  v37 = v36;

  v38 = [v37 leaseManager];
  *(v16 + 512) = v38;

  if (!v38)
  {
    goto LABEL_21;
  }

  isUniquelyReferenced_nonNull_bridgeObject = sub_1C5C6AA20();
  *(v16 + 520) = isUniquelyReferenced_nonNull_bridgeObject;
  if (isUniquelyReferenced_nonNull_bridgeObject)
  {
    *(v16 + 528) = MEMORY[0x1E69E7CC0];
    v39 = *(v16 + 504);
    if ((v39 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x1C6954040](0);
LABEL_30:
      *(v16 + 536) = v40;
      *(v16 + 544) = 1;
      v66 = [v40 shortHashedDSID];
      v67 = sub_1C6016940();
      v69 = v68;

      *(v16 + 552) = v67;
      *(v16 + 560) = v69;

      v70 = sub_1C60162B0();
      v71 = sub_1C6016F30();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = OUTLINED_FUNCTION_112();
        OUTLINED_FUNCTION_21();
        *v72 = 136446210;
        v73 = OUTLINED_FUNCTION_45_0();
        *(v72 + 4) = sub_1C5C6AB10(v73, v74, v75);
        OUTLINED_FUNCTION_34_5(&dword_1C5C61000, v76, v71, "[FPPC] fetchOptimisticLease | fetching optimistic lease [] account=%{public}s");
        OUTLINED_FUNCTION_12_12();
        OUTLINED_FUNCTION_28();
      }

      *(v16 + 80) = v16;
      *(v16 + 88) = sub_1C5D31E80;
      swift_continuation_init();
      sub_1C5D38560(0, &qword_1EC1A9400);
      OUTLINED_FUNCTION_17_7(v77);
      *(v16 + 216) = 1107296256;
      OUTLINED_FUNCTION_16_8(&block_descriptor_40);
      OUTLINED_FUNCTION_50_3(v78, sel_prepareForPlaybackWithAccount_completion_);
      OUTLINED_FUNCTION_14_0();

      return MEMORY[0x1EEE6DEC8](isUniquelyReferenced_nonNull_bridgeObject);
    }

    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v40 = *(v39 + 32);
      goto LABEL_30;
    }

LABEL_39:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](isUniquelyReferenced_nonNull_bridgeObject);
  }

  v60 = *(v16 + 512);
  v61 = *(v16 + 424);

  sub_1C5C64D74(0, &qword_1ED7DCCF0);
  sub_1C6016940();
  *(v16 + 320) = 19;
  sub_1C5D15530();

  sub_1C6016880();
  _s3__C4CodeOMa_2();
  v63 = v62;
  OUTLINED_FUNCTION_20_11();
  a9 = v63;
  a10 = sub_1C5C66260(v64, v65);
  sub_1C6017280();

  swift_willThrow();

  OUTLINED_FUNCTION_172();
LABEL_24:
  OUTLINED_FUNCTION_14_0();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C5D31C90()
{
  OUTLINED_FUNCTION_13();

  OUTLINED_FUNCTION_172();

  return v1();
}

uint64_t sub_1C5D31D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_29_8();
  OUTLINED_FUNCTION_35();
  v13 = *(v12 + 464);

  v14 = v13;
  v15 = sub_1C60162B0();
  sub_1C6016F30();

  v16 = OUTLINED_FUNCTION_48_3();
  v17 = *(v12 + 464);
  v18 = *(v12 + 424);
  if (v16)
  {
    v19 = OUTLINED_FUNCTION_112();
    a9 = OUTLINED_FUNCTION_21();
    *v19 = 136446210;
    v20 = [v17 shortHashedDSID];
    sub_1C6016940();

    v21 = OUTLINED_FUNCTION_88_0();
    v24 = sub_1C5C6AB10(v21, v22, v23);

    *(v19 + 4) = v24;
    OUTLINED_FUNCTION_4_19();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(a9);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_35_1();
  }

  else
  {
  }

  OUTLINED_FUNCTION_66_3();

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_25_7();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_1C5D31E80()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 112);
  v2[71] = v5;
  if (v5)
  {
    v6 = v2[51];
    v7 = v2[52];
    v8 = sub_1C5D320F4;
  }

  else
  {

    v6 = v2[51];
    v7 = v2[52];
    v8 = sub_1C5D31F98;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1C5D31F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29_8();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_35();
  a18 = v20;

  v23 = sub_1C60162B0();
  v24 = sub_1C6016F30();

  v25 = OUTLINED_FUNCTION_48_3();
  v26 = *(v20 + 560);
  if (v25)
  {
    v27 = *(v20 + 552);
    v28 = *(v20 + 536);
    v29 = *(v20 + 512);
    v30 = *(v20 + 424);
    v31 = OUTLINED_FUNCTION_112();
    v32 = OUTLINED_FUNCTION_21();
    a9 = v32;
    *v31 = 136446210;
    v33 = sub_1C5C6AB10(v27, v26, &a9);

    *(v31 + 4) = v33;
    OUTLINED_FUNCTION_52_4(&dword_1C5C61000, v34, v24, "[FPPC] fetchOptimisticLease | success [] account=%{public}s");
    __swift_destroy_boxed_opaque_existential_0(v32);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_6();
  }

  else
  {
    v35 = *(v20 + 536);
    v36 = *(v20 + 512);
  }

  OUTLINED_FUNCTION_66_3();

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_25_7();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

uint64_t sub_1C5D320F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_3();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_60_2();
  a22 = v24;
  v27 = *(v24 + 568);
  swift_willThrow();

  v28 = v27;
  v29 = sub_1C60162B0();
  sub_1C6016F20();

  if (OUTLINED_FUNCTION_67())
  {
    v30 = *(v24 + 568);
    v31 = *(v24 + 560);
    v32 = *(v24 + 552);
    v33 = OUTLINED_FUNCTION_68_0();
    v34 = OUTLINED_FUNCTION_110();
    v35 = OUTLINED_FUNCTION_21();
    a12 = v35;
    *v33 = 136446466;
    v36 = sub_1C5C6AB10(v32, v31, &a12);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2114;
    v37 = v30;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 14) = v38;
    *v34 = v38;
    OUTLINED_FUNCTION_23_0();
    _os_log_impl(v39, v40, v41, v42, v43, 0x16u);
    sub_1C5CB5700(v34);
    OUTLINED_FUNCTION_6();
    __swift_destroy_boxed_opaque_existential_0(v35);
    OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_11_8();
  }

  else
  {
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v24 + 528);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C5D0E308();
    v45 = v82;
  }

  v46 = *(v45 + 16);
  if (v46 >= *(v45 + 24) >> 1)
  {
    sub_1C5D0E308();
    v45 = v83;
  }

  v47 = *(v24 + 568);
  v48 = *(v24 + 544);
  v49 = *(v24 + 520);

  *(v45 + 16) = v46 + 1;
  *(v45 + 8 * v46 + 32) = v47;
  if (v48 != v49)
  {
    v66 = *(v24 + 544);
    *(v24 + 528) = v45;
    v67 = *(v24 + 504);
    if ((v67 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x1C6954040](v66);
    }

    else
    {
      if (v66 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v50 = *(v67 + 8 * v66 + 32);
    }

    *(v24 + 536) = v50;
    *(v24 + 544) = v66 + 1;
    if (!__OFADD__(v66, 1))
    {
      v68 = [v50 shortHashedDSID];
      v69 = sub_1C6016940();
      v71 = v70;

      *(v24 + 552) = v69;
      *(v24 + 560) = v71;

      v72 = sub_1C60162B0();
      v73 = sub_1C6016F30();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = OUTLINED_FUNCTION_112();
        a12 = OUTLINED_FUNCTION_21();
        *v74 = 136446210;
        v75 = OUTLINED_FUNCTION_45_0();
        *(v74 + 4) = sub_1C5C6AB10(v75, v76, v77);
        OUTLINED_FUNCTION_34_5(&dword_1C5C61000, v78, v73, "[FPPC] fetchOptimisticLease | fetching optimistic lease [] account=%{public}s");
        OUTLINED_FUNCTION_12_12();
        OUTLINED_FUNCTION_28();
      }

      *(v24 + 80) = v24;
      *(v24 + 88) = sub_1C5D31E80;
      swift_continuation_init();
      sub_1C5D38560(0, &qword_1EC1A9400);
      OUTLINED_FUNCTION_17_7(v79);
      *(v24 + 216) = 1107296256;
      OUTLINED_FUNCTION_16_8(&block_descriptor_40);
      OUTLINED_FUNCTION_50_3(v80, sel_prepareForPlaybackWithAccount_completion_);
      OUTLINED_FUNCTION_14_0();

      return MEMORY[0x1EEE6DEC8](v50);
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v50);
  }

  v51 = *(v24 + 512);
  v52 = *(v24 + 424);

  sub_1C5C64D74(0, &qword_1ED7DCCF0);
  sub_1C6016940();
  *(v24 + 320) = 19;
  sub_1C5D15530();

  sub_1C6016880();
  _s3__C4CodeOMa_2();
  v54 = v53;
  OUTLINED_FUNCTION_20_11();
  v84 = sub_1C5C66260(v55, v56);
  OUTLINED_FUNCTION_102_0();
  sub_1C6017280();

  swift_willThrow();

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_14_0();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, v54, v84, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1C5D32618()
{
  OUTLINED_FUNCTION_248();
  v1 = OBJC_IVAR____TtCE17MediaPlaybackCoreCSo32MPCFairPlayPerformanceControllerP33_EDB7E1B06AEE0CDEB60990C97F802F188_Context_isAppActive;
  v0[3] = *(v0[2] + OBJC_IVAR___MPCFairPlayPerformanceController_context);
  v0[4] = v1;
  sub_1C6016C10();
  v0[5] = sub_1C6016C00();
  sub_1C6016BA0();
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_103();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C5D326BC()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);

  *(v0 + 64) = *(v2 + v1);
  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C5D32728()
{
  OUTLINED_FUNCTION_13();
  if (*(v0 + 64) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 48) = v1;
    *v1 = v0;
    v1[1] = sub_1C5D32874;
    v2 = *(v0 + 16);

    return sub_1C5D30814(v2);
  }

  else
  {
    if (qword_1ED7DD2B0 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v4 = sub_1C60162D0();
    OUTLINED_FUNCTION_144(v4, qword_1ED7E1690);
    v5 = sub_1C60162B0();
    v6 = sub_1C6016F20();
    if (OUTLINED_FUNCTION_49_4(v6))
    {
      v7 = OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_33_2(v7);
      OUTLINED_FUNCTION_23_0();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_11_8();
    }

    OUTLINED_FUNCTION_172();

    return v13();
  }
}