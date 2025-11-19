uint64_t FBKSInteraction.writeAttachments(baseURL:)(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = sub_1B8C23938();
  v2[17] = v3;
  v4 = *(v3 - 8);
  v2[18] = v4;
  v5 = *(v4 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6280, &unk_1B8C285B0) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v8 = sub_1B8C238B8();
  v2[26] = v8;
  v9 = *(v8 - 8);
  v2[27] = v9;
  v10 = *(v9 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v11 = sub_1B8C23498();
  v2[31] = v11;
  v12 = *(v11 - 8);
  v2[32] = v12;
  v13 = *(v12 + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8B5650C, 0, 0);
}

uint64_t sub_1B8B5650C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 120);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_1B8B5F6B8(MEMORY[0x1E69E7CC0]);
  *(v0 + 280) = v4;
  type metadata accessor for FBKEvaluationController(0);
  sub_1B8BE4CD0(v2, v1);
  v17 = *(v0 + 208);
  v18 = *(v0 + 216);
  v19 = *(v0 + 200);
  v20 = *(v0 + 128);
  (*(*(v0 + 256) + 32))(*(v0 + 272), *(v0 + 264), *(v0 + 248));
  sub_1B8B58E2C();
  sub_1B8B5A21C();
  sub_1B8C238F8();
  v21 = *(v18 + 48);
  *(v0 + 288) = v21;
  *(v0 + 296) = (v18 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v22 = v21(v19, 1, v17);
  if (v22 != 1)
  {
    v46 = *(v0 + 184);
    v47 = *(v0 + 128);
    (*(*(v0 + 216) + 32))(*(v0 + 240), *(v0 + 200), *(v0 + 208));
    sub_1B8C237F8();
    *(v0 + 408) = 0;
    v48 = swift_task_alloc();
    *(v0 + 304) = v48;
    *v48 = v0;
    v48[1] = sub_1B8B56E80;
    v49 = *(v0 + 272);
    v50 = *(v0 + 240);
    v51 = *(v0 + 184);
    v52 = *(v0 + 128);
    v53 = v0 + 96;
    v54 = (v0 + 408);
LABEL_15:

    return sub_1B8B5A7DC(v53, v50, v49, v51, v54);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 136);
  v25 = *(v0 + 144);
  v26 = *(v0 + 128);
  sub_1B8B3433C(*(v0 + 200), &qword_1EBAA6290, &qword_1B8C2F800);
  sub_1B8C237F8();
  if ((*(v25 + 48))(v23, 1, v24) != 1)
  {
    (*(*(v0 + 144) + 32))(*(v0 + 160), *(v0 + 176), *(v0 + 136));
    *(v0 + 407) = 0;
    v55 = swift_task_alloc();
    *(v0 + 312) = v55;
    *v55 = v0;
    v55[1] = sub_1B8B57548;
    v56 = *(v0 + 272);
    v57 = *(v0 + 160);
    v58 = *(v0 + 128);
    v59 = v0 + 80;
    v60 = (v0 + 407);
LABEL_19:

    return sub_1B8B5B200(v59, v57, v56, v60);
  }

  sub_1B8B3433C(*(v0 + 176), &qword_1EBAA6280, &unk_1B8C285B0);
  *(v0 + 320) = v4;
  v28 = *(v0 + 288);
  v27 = *(v0 + 296);
  v29 = *(v0 + 208);
  v30 = *(v0 + 192);
  v31 = *(v0 + 128);
  sub_1B8C23918();
  if (v28(v30, 1, v29) != 1)
  {
    v61 = *(v0 + 184);
    v62 = *(v0 + 128);
    (*(*(v0 + 216) + 32))(*(v0 + 232), *(v0 + 192), *(v0 + 208));
    sub_1B8C238D8();
    *(v0 + 406) = 1;
    v63 = swift_task_alloc();
    *(v0 + 328) = v63;
    *v63 = v0;
    v63[1] = sub_1B8B57BE4;
    v49 = *(v0 + 272);
    v50 = *(v0 + 232);
    v51 = *(v0 + 184);
    v64 = *(v0 + 128);
    v53 = v0 + 64;
    v54 = (v0 + 406);
    goto LABEL_15;
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 136);
  v34 = *(v0 + 144);
  v35 = *(v0 + 128);
  sub_1B8B3433C(*(v0 + 192), &qword_1EBAA6290, &qword_1B8C2F800);
  sub_1B8C238D8();
  if ((*(v34 + 48))(v32, 1, v33) != 1)
  {
    (*(*(v0 + 144) + 32))(*(v0 + 152), *(v0 + 168), *(v0 + 136));
    *(v0 + 405) = 1;
    v65 = swift_task_alloc();
    *(v0 + 336) = v65;
    *v65 = v0;
    v65[1] = sub_1B8B580D8;
    v56 = *(v0 + 272);
    v57 = *(v0 + 152);
    v66 = *(v0 + 128);
    v59 = v0 + 48;
    v60 = (v0 + 405);
    goto LABEL_19;
  }

  sub_1B8B3433C(*(v0 + 168), &qword_1EBAA6280, &unk_1B8C285B0);
  *(v0 + 344) = v4;
  v36 = *(v0 + 128);
  *(v0 + 16) = v3;
  *(v0 + 24) = v3;
  v37 = *(sub_1B8C23768() + 16);

  if (v37)
  {
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 128);
    v39 = sub_1B8C23C38();
    __swift_project_value_buffer(v39, qword_1EBAB3A00);
    v40 = v38;
    v41 = sub_1B8C23C18();
    v42 = sub_1B8C25458();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 128);
      v44 = swift_slowAlloc();
      *v44 = 134217984;
      v45 = *(sub_1B8C23768() + 16);

      *(v44 + 4) = v45;

      _os_log_impl(&dword_1B8B22000, v41, v42, "Will attach [%ld] annotated extra content.", v44, 0xCu);
      MEMORY[0x1B8CCB0E0](v44, -1, -1);
    }

    else
    {

      v41 = *(v0 + 128);
    }
  }

  v67 = *(v0 + 128);
  v68 = sub_1B8C23768();
  *(v0 + 352) = v68;
  v69 = *(v68 + 16);
  *(v0 + 360) = v69;
  if (v69)
  {
    v70 = *(v0 + 208);
    v71 = *(v0 + 216);
    v72 = *(v71 + 16);
    v71 += 16;
    v73 = *(v71 + 64);
    *(v0 + 400) = v73;
    *(v0 + 368) = *(v71 + 56);
    *(v0 + 376) = v72;
    *(v0 + 384) = 0;
    v74 = *(v0 + 184);
    v75 = *(v0 + 136);
    v76 = *(v0 + 144);
    v72(*(v0 + 224), v68 + ((v73 + 32) & ~v73), v70);
    (*(v76 + 56))(v74, 1, 1, v75);
    *(v0 + 404) = 2;
    v77 = swift_task_alloc();
    *(v0 + 392) = v77;
    *v77 = v0;
    v77[1] = sub_1B8B585A0;
    v49 = *(v0 + 272);
    v50 = *(v0 + 224);
    v51 = *(v0 + 184);
    v78 = *(v0 + 128);
    v53 = v0 + 32;
    v54 = (v0 + 404);
    goto LABEL_15;
  }

  v79 = *(v0 + 344);
  v80 = *(v0 + 272);
  v81 = *(v0 + 248);
  v82 = *(v0 + 256);
  v83 = *(v0 + 16);
  v84 = *(v0 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v88 = v79;
  sub_1B8B5EF84(v83, v84, 2, isUniquelyReferenced_nonNull_native);
  (*(v82 + 8))(v80, v81);
  v6 = *(v0 + 264);
  v5 = *(v0 + 272);
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);
  v9 = *(v0 + 224);
  v11 = *(v0 + 192);
  v10 = *(v0 + 200);
  v13 = *(v0 + 176);
  v12 = *(v0 + 184);
  v14 = *(v0 + 168);
  v86 = *(v0 + 160);
  v87 = *(v0 + 152);

  v15 = *(v0 + 8);

  return v15(v88);
}

uint64_t sub_1B8B56E80()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 184);
  v4 = *v0;

  sub_1B8B3433C(v2, &qword_1EBAA6280, &unk_1B8C285B0);

  return MEMORY[0x1EEE6DFA0](sub_1B8B56FA8, 0, 0);
}

uint64_t sub_1B8B56FA8()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 240);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B8B5EF84(v5, v6, 0, isUniquelyReferenced_nonNull_native);
  (*(v4 + 8))(v2, v3);
  v8 = v1;
  *(v0 + 320) = v1;
  v10 = *(v0 + 288);
  v9 = *(v0 + 296);
  v11 = *(v0 + 208);
  v12 = *(v0 + 192);
  v13 = *(v0 + 128);
  sub_1B8C23918();
  if (v10(v12, 1, v11) != 1)
  {
    v29 = *(v0 + 184);
    v30 = *(v0 + 128);
    (*(*(v0 + 216) + 32))(*(v0 + 232), *(v0 + 192), *(v0 + 208));
    sub_1B8C238D8();
    *(v0 + 406) = 1;
    v31 = swift_task_alloc();
    *(v0 + 328) = v31;
    *v31 = v0;
    v31[1] = sub_1B8B57BE4;
    v32 = *(v0 + 272);
    v33 = *(v0 + 232);
    v34 = *(v0 + 184);
    v35 = *(v0 + 128);
    v36 = v0 + 64;
    v37 = (v0 + 406);
LABEL_16:

    return sub_1B8B5A7DC(v36, v33, v32, v34, v37);
  }

  v14 = *(v0 + 168);
  v15 = *(v0 + 136);
  v16 = *(v0 + 144);
  v17 = *(v0 + 128);
  sub_1B8B3433C(*(v0 + 192), &qword_1EBAA6290, &qword_1B8C2F800);
  sub_1B8C238D8();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1B8B3433C(*(v0 + 168), &qword_1EBAA6280, &unk_1B8C285B0);
    *(v0 + 344) = v8;
    v18 = *(v0 + 128);
    v19 = MEMORY[0x1E69E7CC0];
    *(v0 + 16) = MEMORY[0x1E69E7CC0];
    *(v0 + 24) = v19;
    v20 = *(sub_1B8C23768() + 16);

    if (v20)
    {
      if (qword_1EBAA5968 != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 128);
      v22 = sub_1B8C23C38();
      __swift_project_value_buffer(v22, qword_1EBAB3A00);
      v23 = v21;
      v24 = sub_1B8C23C18();
      v25 = sub_1B8C25458();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = *(v0 + 128);
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        v28 = *(sub_1B8C23768() + 16);

        *(v27 + 4) = v28;

        _os_log_impl(&dword_1B8B22000, v24, v25, "Will attach [%ld] annotated extra content.", v27, 0xCu);
        MEMORY[0x1B8CCB0E0](v27, -1, -1);
      }

      else
      {

        v24 = *(v0 + 128);
      }
    }

    v43 = *(v0 + 128);
    v44 = sub_1B8C23768();
    *(v0 + 352) = v44;
    v45 = *(v44 + 16);
    *(v0 + 360) = v45;
    if (v45)
    {
      v46 = *(v0 + 208);
      v47 = *(v0 + 216);
      v48 = *(v47 + 16);
      v47 += 16;
      v49 = *(v47 + 64);
      *(v0 + 400) = v49;
      *(v0 + 368) = *(v47 + 56);
      *(v0 + 376) = v48;
      *(v0 + 384) = 0;
      v50 = *(v0 + 184);
      v51 = *(v0 + 136);
      v52 = *(v0 + 144);
      v48(*(v0 + 224), v44 + ((v49 + 32) & ~v49), v46);
      (*(v52 + 56))(v50, 1, 1, v51);
      *(v0 + 404) = 2;
      v53 = swift_task_alloc();
      *(v0 + 392) = v53;
      *v53 = v0;
      v53[1] = sub_1B8B585A0;
      v32 = *(v0 + 272);
      v33 = *(v0 + 224);
      v34 = *(v0 + 184);
      v54 = *(v0 + 128);
      v36 = v0 + 32;
      v37 = (v0 + 404);
      goto LABEL_16;
    }

    v55 = *(v0 + 344);
    v56 = *(v0 + 272);
    v57 = *(v0 + 248);
    v58 = *(v0 + 256);
    v59 = *(v0 + 16);
    v60 = *(v0 + 24);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v75 = v55;
    sub_1B8B5EF84(v59, v60, 2, v61);
    (*(v58 + 8))(v56, v57);
    v63 = *(v0 + 264);
    v62 = *(v0 + 272);
    v65 = *(v0 + 232);
    v64 = *(v0 + 240);
    v66 = *(v0 + 224);
    v68 = *(v0 + 192);
    v67 = *(v0 + 200);
    v70 = *(v0 + 176);
    v69 = *(v0 + 184);
    v71 = *(v0 + 168);
    v73 = *(v0 + 160);
    v74 = *(v0 + 152);

    v72 = *(v0 + 8);

    return v72(v75);
  }

  else
  {
    (*(*(v0 + 144) + 32))(*(v0 + 152), *(v0 + 168), *(v0 + 136));
    *(v0 + 405) = 1;
    v38 = swift_task_alloc();
    *(v0 + 336) = v38;
    *v38 = v0;
    v38[1] = sub_1B8B580D8;
    v39 = *(v0 + 272);
    v40 = *(v0 + 152);
    v41 = *(v0 + 128);

    return sub_1B8B5B200(v0 + 48, v40, v39, (v0 + 405));
  }
}

uint64_t sub_1B8B57548()
{
  v1 = *(*v0 + 312);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B8B57644, 0, 0);
}

uint64_t sub_1B8B57644()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B8B5EF84(v5, v6, 0, isUniquelyReferenced_nonNull_native);
  (*(v4 + 8))(v2, v3);
  v8 = v1;
  *(v0 + 320) = v1;
  v10 = *(v0 + 288);
  v9 = *(v0 + 296);
  v11 = *(v0 + 208);
  v12 = *(v0 + 192);
  v13 = *(v0 + 128);
  sub_1B8C23918();
  if (v10(v12, 1, v11) != 1)
  {
    v29 = *(v0 + 184);
    v30 = *(v0 + 128);
    (*(*(v0 + 216) + 32))(*(v0 + 232), *(v0 + 192), *(v0 + 208));
    sub_1B8C238D8();
    *(v0 + 406) = 1;
    v31 = swift_task_alloc();
    *(v0 + 328) = v31;
    *v31 = v0;
    v31[1] = sub_1B8B57BE4;
    v32 = *(v0 + 272);
    v33 = *(v0 + 232);
    v34 = *(v0 + 184);
    v35 = *(v0 + 128);
    v36 = v0 + 64;
    v37 = (v0 + 406);
LABEL_16:

    return sub_1B8B5A7DC(v36, v33, v32, v34, v37);
  }

  v14 = *(v0 + 168);
  v15 = *(v0 + 136);
  v16 = *(v0 + 144);
  v17 = *(v0 + 128);
  sub_1B8B3433C(*(v0 + 192), &qword_1EBAA6290, &qword_1B8C2F800);
  sub_1B8C238D8();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1B8B3433C(*(v0 + 168), &qword_1EBAA6280, &unk_1B8C285B0);
    *(v0 + 344) = v8;
    v18 = *(v0 + 128);
    v19 = MEMORY[0x1E69E7CC0];
    *(v0 + 16) = MEMORY[0x1E69E7CC0];
    *(v0 + 24) = v19;
    v20 = *(sub_1B8C23768() + 16);

    if (v20)
    {
      if (qword_1EBAA5968 != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 128);
      v22 = sub_1B8C23C38();
      __swift_project_value_buffer(v22, qword_1EBAB3A00);
      v23 = v21;
      v24 = sub_1B8C23C18();
      v25 = sub_1B8C25458();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = *(v0 + 128);
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        v28 = *(sub_1B8C23768() + 16);

        *(v27 + 4) = v28;

        _os_log_impl(&dword_1B8B22000, v24, v25, "Will attach [%ld] annotated extra content.", v27, 0xCu);
        MEMORY[0x1B8CCB0E0](v27, -1, -1);
      }

      else
      {

        v24 = *(v0 + 128);
      }
    }

    v43 = *(v0 + 128);
    v44 = sub_1B8C23768();
    *(v0 + 352) = v44;
    v45 = *(v44 + 16);
    *(v0 + 360) = v45;
    if (v45)
    {
      v46 = *(v0 + 208);
      v47 = *(v0 + 216);
      v48 = *(v47 + 16);
      v47 += 16;
      v49 = *(v47 + 64);
      *(v0 + 400) = v49;
      *(v0 + 368) = *(v47 + 56);
      *(v0 + 376) = v48;
      *(v0 + 384) = 0;
      v50 = *(v0 + 184);
      v51 = *(v0 + 136);
      v52 = *(v0 + 144);
      v48(*(v0 + 224), v44 + ((v49 + 32) & ~v49), v46);
      (*(v52 + 56))(v50, 1, 1, v51);
      *(v0 + 404) = 2;
      v53 = swift_task_alloc();
      *(v0 + 392) = v53;
      *v53 = v0;
      v53[1] = sub_1B8B585A0;
      v32 = *(v0 + 272);
      v33 = *(v0 + 224);
      v34 = *(v0 + 184);
      v54 = *(v0 + 128);
      v36 = v0 + 32;
      v37 = (v0 + 404);
      goto LABEL_16;
    }

    v55 = *(v0 + 344);
    v56 = *(v0 + 272);
    v57 = *(v0 + 248);
    v58 = *(v0 + 256);
    v59 = *(v0 + 16);
    v60 = *(v0 + 24);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v75 = v55;
    sub_1B8B5EF84(v59, v60, 2, v61);
    (*(v58 + 8))(v56, v57);
    v63 = *(v0 + 264);
    v62 = *(v0 + 272);
    v65 = *(v0 + 232);
    v64 = *(v0 + 240);
    v66 = *(v0 + 224);
    v68 = *(v0 + 192);
    v67 = *(v0 + 200);
    v70 = *(v0 + 176);
    v69 = *(v0 + 184);
    v71 = *(v0 + 168);
    v73 = *(v0 + 160);
    v74 = *(v0 + 152);

    v72 = *(v0 + 8);

    return v72(v75);
  }

  else
  {
    (*(*(v0 + 144) + 32))(*(v0 + 152), *(v0 + 168), *(v0 + 136));
    *(v0 + 405) = 1;
    v38 = swift_task_alloc();
    *(v0 + 336) = v38;
    *v38 = v0;
    v38[1] = sub_1B8B580D8;
    v39 = *(v0 + 272);
    v40 = *(v0 + 152);
    v41 = *(v0 + 128);

    return sub_1B8B5B200(v0 + 48, v40, v39, (v0 + 405));
  }
}

uint64_t sub_1B8B57BE4()
{
  v1 = *(*v0 + 328);
  v2 = *(*v0 + 184);
  v4 = *v0;

  sub_1B8B3433C(v2, &qword_1EBAA6280, &unk_1B8C285B0);

  return MEMORY[0x1EEE6DFA0](sub_1B8B57D0C, 0, 0);
}

uint64_t sub_1B8B57D0C()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B8B5EF84(v5, v6, 1, isUniquelyReferenced_nonNull_native);
  (*(v4 + 8))(v2, v3);
  v8 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 344) = v1;
  v9 = *(v0 + 128);
  *(v0 + 24) = v8;
  v10 = *(sub_1B8C23768() + 16);

  if (v10)
  {
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 128);
    v12 = sub_1B8C23C38();
    __swift_project_value_buffer(v12, qword_1EBAB3A00);
    v13 = v11;
    v14 = sub_1B8C23C18();
    v15 = sub_1B8C25458();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 128);
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      v18 = *(sub_1B8C23768() + 16);

      *(v17 + 4) = v18;

      _os_log_impl(&dword_1B8B22000, v14, v15, "Will attach [%ld] annotated extra content.", v17, 0xCu);
      MEMORY[0x1B8CCB0E0](v17, -1, -1);
    }

    else
    {

      v14 = *(v0 + 128);
    }
  }

  v19 = *(v0 + 128);
  v20 = sub_1B8C23768();
  *(v0 + 352) = v20;
  v21 = *(v20 + 16);
  *(v0 + 360) = v21;
  if (v21)
  {
    v22 = *(v0 + 208);
    v23 = *(v0 + 216);
    v24 = *(v23 + 16);
    v23 += 16;
    v25 = *(v23 + 64);
    *(v0 + 400) = v25;
    *(v0 + 368) = *(v23 + 56);
    *(v0 + 376) = v24;
    *(v0 + 384) = 0;
    v26 = *(v0 + 184);
    v27 = *(v0 + 136);
    v28 = *(v0 + 144);
    v24(*(v0 + 224), v20 + ((v25 + 32) & ~v25), v22);
    (*(v28 + 56))(v26, 1, 1, v27);
    *(v0 + 404) = 2;
    v29 = swift_task_alloc();
    *(v0 + 392) = v29;
    *v29 = v0;
    v29[1] = sub_1B8B585A0;
    v30 = *(v0 + 272);
    v31 = *(v0 + 224);
    v32 = *(v0 + 184);
    v33 = *(v0 + 128);

    return sub_1B8B5A7DC(v0 + 32, v31, v30, v32, (v0 + 404));
  }

  else
  {

    v35 = *(v0 + 344);
    v36 = *(v0 + 272);
    v37 = *(v0 + 248);
    v38 = *(v0 + 256);
    v39 = *(v0 + 16);
    v40 = *(v0 + 24);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v55 = v35;
    sub_1B8B5EF84(v39, v40, 2, v41);
    (*(v38 + 8))(v36, v37);
    v43 = *(v0 + 264);
    v42 = *(v0 + 272);
    v45 = *(v0 + 232);
    v44 = *(v0 + 240);
    v46 = *(v0 + 224);
    v48 = *(v0 + 192);
    v47 = *(v0 + 200);
    v50 = *(v0 + 176);
    v49 = *(v0 + 184);
    v51 = *(v0 + 168);
    v53 = *(v0 + 160);
    v54 = *(v0 + 152);

    v52 = *(v0 + 8);

    return v52(v55);
  }
}

uint64_t sub_1B8B580D8()
{
  v1 = *(*v0 + 336);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B8B581D4, 0, 0);
}

uint64_t sub_1B8B581D4()
{
  v1 = *(v0 + 320);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B8B5EF84(v5, v6, 1, isUniquelyReferenced_nonNull_native);
  (*(v3 + 8))(v2, v4);
  v8 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 344) = v1;
  v9 = *(v0 + 128);
  *(v0 + 24) = v8;
  v10 = *(sub_1B8C23768() + 16);

  if (v10)
  {
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 128);
    v12 = sub_1B8C23C38();
    __swift_project_value_buffer(v12, qword_1EBAB3A00);
    v13 = v11;
    v14 = sub_1B8C23C18();
    v15 = sub_1B8C25458();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 128);
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      v18 = *(sub_1B8C23768() + 16);

      *(v17 + 4) = v18;

      _os_log_impl(&dword_1B8B22000, v14, v15, "Will attach [%ld] annotated extra content.", v17, 0xCu);
      MEMORY[0x1B8CCB0E0](v17, -1, -1);
    }

    else
    {

      v14 = *(v0 + 128);
    }
  }

  v19 = *(v0 + 128);
  v20 = sub_1B8C23768();
  *(v0 + 352) = v20;
  v21 = *(v20 + 16);
  *(v0 + 360) = v21;
  if (v21)
  {
    v22 = *(v0 + 208);
    v23 = *(v0 + 216);
    v24 = *(v23 + 16);
    v23 += 16;
    v25 = *(v23 + 64);
    *(v0 + 400) = v25;
    *(v0 + 368) = *(v23 + 56);
    *(v0 + 376) = v24;
    *(v0 + 384) = 0;
    v26 = *(v0 + 184);
    v27 = *(v0 + 136);
    v28 = *(v0 + 144);
    v24(*(v0 + 224), v20 + ((v25 + 32) & ~v25), v22);
    (*(v28 + 56))(v26, 1, 1, v27);
    *(v0 + 404) = 2;
    v29 = swift_task_alloc();
    *(v0 + 392) = v29;
    *v29 = v0;
    v29[1] = sub_1B8B585A0;
    v30 = *(v0 + 272);
    v31 = *(v0 + 224);
    v32 = *(v0 + 184);
    v33 = *(v0 + 128);

    return sub_1B8B5A7DC(v0 + 32, v31, v30, v32, (v0 + 404));
  }

  else
  {

    v35 = *(v0 + 344);
    v36 = *(v0 + 272);
    v37 = *(v0 + 248);
    v38 = *(v0 + 256);
    v39 = *(v0 + 16);
    v40 = *(v0 + 24);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v55 = v35;
    sub_1B8B5EF84(v39, v40, 2, v41);
    (*(v38 + 8))(v36, v37);
    v43 = *(v0 + 264);
    v42 = *(v0 + 272);
    v45 = *(v0 + 232);
    v44 = *(v0 + 240);
    v46 = *(v0 + 224);
    v48 = *(v0 + 192);
    v47 = *(v0 + 200);
    v50 = *(v0 + 176);
    v49 = *(v0 + 184);
    v51 = *(v0 + 168);
    v53 = *(v0 + 160);
    v54 = *(v0 + 152);

    v52 = *(v0 + 8);

    return v52(v55);
  }
}

uint64_t sub_1B8B585A0()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 208);
  v5 = *(*v0 + 184);
  v7 = *v0;

  sub_1B8B3433C(v5, &qword_1EBAA6280, &unk_1B8C285B0);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1B8B58724, 0, 0);
}

uint64_t sub_1B8B58724()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 360);
  v3 = *(v0 + 384) + 1;
  v4 = *(v0 + 40);

  sub_1B8B58BD8(v5);

  sub_1B8B58A7C(v6, &qword_1EBAA6658, &qword_1B8C29498, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);

  if (v3 == v2)
  {
    v7 = *(v0 + 352);

    v8 = *(v0 + 344);
    v9 = *(v0 + 272);
    v10 = *(v0 + 248);
    v11 = *(v0 + 256);
    v12 = *(v0 + 16);
    v13 = *(v0 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v8;
    sub_1B8B5EF84(v12, v13, 2, isUniquelyReferenced_nonNull_native);
    (*(v11 + 8))(v9, v10);
    v16 = *(v0 + 264);
    v15 = *(v0 + 272);
    v18 = *(v0 + 232);
    v17 = *(v0 + 240);
    v19 = *(v0 + 224);
    v21 = *(v0 + 192);
    v20 = *(v0 + 200);
    v23 = *(v0 + 176);
    v22 = *(v0 + 184);
    v24 = *(v0 + 168);
    v38 = *(v0 + 160);
    v39 = *(v0 + 152);

    v25 = *(v0 + 8);

    return v25(v40);
  }

  else
  {
    v27 = *(v0 + 376);
    v28 = *(v0 + 384) + 1;
    *(v0 + 384) = v28;
    v29 = *(v0 + 184);
    v30 = *(v0 + 136);
    v31 = *(v0 + 144);
    v32 = *(v0 + 216) + 16;
    v27(*(v0 + 224), *(v0 + 352) + ((*(v0 + 400) + 32) & ~*(v0 + 400)) + *(v0 + 368) * v28, *(v0 + 208));
    (*(v31 + 56))(v29, 1, 1, v30);
    *(v0 + 404) = 2;
    v33 = swift_task_alloc();
    *(v0 + 392) = v33;
    *v33 = v0;
    v33[1] = sub_1B8B585A0;
    v34 = *(v0 + 272);
    v35 = *(v0 + 224);
    v36 = *(v0 + 184);
    v37 = *(v0 + 128);

    return sub_1B8B5A7DC(v0 + 32, v35, v34, v36, (v0 + 404));
  }
}

uint64_t sub_1B8B58A7C(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v24 = v8 + v6;
  }

  else
  {
    v24 = v8;
  }

  v7 = sub_1B8B5D9E4(isUniquelyReferenced_nonNull_native, v24, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v17 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  v18 = *(result - 8);
  if (v17 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = *(v18 + 72);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v21 = v7[2];
  v22 = __OFADD__(v21, v6);
  v23 = v21 + v6;
  if (!v22)
  {
    v7[2] = v23;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1B8B58BD8(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B8B5D2B8(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

double FBKSInteraction.idealFeedbackUIHeight.getter()
{
  v0 = sub_1B8C237B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  sub_1B8C237C8();
  (*(v1 + 104))(v5, *MEMORY[0x1E699C338], v0);
  v8 = MEMORY[0x1B8CC8470](v7, v5);
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  result = 700.0;
  if (v8)
  {
    return 800.0;
  }

  return result;
}

uint64_t sub_1B8B58E2C()
{
  v1 = sub_1B8C23888();
  v170 = *(v1 - 8);
  v2 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v175 = &v154 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_1B8C237B8();
  v172 = *(v160 - 8);
  v4 = *(v172 + 64);
  v5 = MEMORY[0x1EEE9AC00](v160);
  v7 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v154 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v163 = &v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v174 = &v154 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v154 - v16;
  v18 = sub_1B8C238B8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v169 = &v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v154 - v23;
  v25 = v0;
  sub_1B8C238F8();
  v26 = *(v19 + 48);
  v177 = v18;
  v161 = v26;
  *&v162 = v19 + 48;
  v27 = v26(v17, 1, v18);
  v28 = MEMORY[0x1E699C2F0];
  v167 = v1;
  v176 = v19;
  v173 = v7;
  v29 = v172;
  if (v27 == 1)
  {
    sub_1B8B3433C(v17, &qword_1EBAA6290, &qword_1B8C2F800);
    v30 = v29;
    v31 = v163;
    v32 = v160;
  }

  else
  {
    v33 = *(v19 + 32);
    v164 = v24;
    v33(v24, v17, v177);
    sub_1B8C237C8();
    v34 = *v28;
    v30 = v29;
    v35 = *(v29 + 104);
    v36 = v160;
    v168 = (v29 + 104);
    v166 = v35;
    v35(v7, v34, v160);
    v37 = MEMORY[0x1B8CC8470](v9, v7);
    v39 = *(v29 + 8);
    v38 = v29 + 8;
    v39(v7, v36);
    v165 = v39;
    v39(v9, v36);
    v40 = v1;
    v32 = v36;
    v41 = v0;
    if (v37)
    {
      v42 = v170;
      v43 = v175;
      (*(v170 + 104))(v175, *MEMORY[0x1E699C448], v40);
      v44 = v174;
      sub_1B8C23818();
      (*(v42 + 8))(v43, v40);
      (*(v176 + 56))(v44, 0, 1, v177);
      v30 = v172;
      sub_1B8C23908();
    }

    sub_1B8C237C8();
    v45 = v173;
    v166(v173, *MEMORY[0x1E699C308], v32);
    v46 = MEMORY[0x1B8CC8470](v9, v45);
    v47 = v45;
    v48 = v165;
    v165(v47, v32);
    v158 = v38;
    v48(v9, v32);
    if (v46)
    {
      v49 = sub_1B8C238A8();
      v50 = v170;
      v51 = MEMORY[0x1E699C458];
      if (v49 <= 1)
      {
        v51 = MEMORY[0x1E699C440];
      }

      v52 = v175;
      (*(v170 + 104))(v175, *v51, v40);
      v53 = v174;
      sub_1B8C23818();
      (*(v50 + 8))(v52, v40);
      (*(v176 + 56))(v53, 0, 1, v177);
      v30 = v172;
      sub_1B8C23908();
    }

    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65E8, &qword_1B8C2AEF0);
    v55 = *(v30 + 72);
    v56 = v41;
    v57 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v157 = v54;
    v155 = v57 + 2 * v55;
    v58 = swift_allocObject();
    v154 = xmmword_1B8C27920;
    *(v58 + 16) = xmmword_1B8C27920;
    v156 = v57;
    v59 = v166;
    v166(v58 + v57, *MEMORY[0x1E699C2E0], v32);
    v60 = *MEMORY[0x1E699C2B0];
    v159 = v55;
    v59(v58 + v57 + v55, v60, v32);
    v25 = v56;
    sub_1B8C237C8();
    LOBYTE(v57) = sub_1B8B54E08(v9, v58);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v165(v9, v32);
    if (v57)
    {
      v61 = sub_1B8C238A8();
      v62 = v170;
      v63 = MEMORY[0x1E699C400];
      if (v61 <= 1)
      {
        v63 = MEMORY[0x1E699C410];
      }

      v64 = v175;
      v65 = v167;
      (*(v170 + 104))(v175, *v63, v167);
      v66 = v174;
      sub_1B8C23818();
      v67 = v64;
      v30 = v172;
      (*(v62 + 8))(v67, v65);
      (*(v176 + 56))(v66, 0, 1, v177);
      sub_1B8C23908();
    }

    v68 = swift_allocObject();
    *(v68 + 16) = v154;
    v69 = v68 + v156;
    v70 = v166;
    v166(v68 + v156, *MEMORY[0x1E699C338], v32);
    v70(v69 + v159, *MEMORY[0x1E699C330], v32);
    sub_1B8C237C8();
    LOBYTE(v70) = sub_1B8B54E08(v9, v68);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v165(v9, v32);
    v71 = v170;
    if (v70)
    {
      v72 = sub_1B8C238A8();
      v73 = MEMORY[0x1E699C438];
      if (v72 <= 1)
      {
        v73 = MEMORY[0x1E699C428];
      }

      v74 = v175;
      v75 = v167;
      (*(v71 + 104))(v175, *v73, v167);
      v76 = v174;
      sub_1B8C23818();
      (*(v71 + 8))(v74, v75);
      (*(v176 + 56))(v76, 0, 1, v177);
      v30 = v172;
      sub_1B8C23908();
    }

    sub_1B8C237C8();
    v77 = v173;
    v166(v173, *MEMORY[0x1E699C270], v32);
    v78 = MEMORY[0x1B8CC8470](v9, v77);
    v79 = v77;
    v80 = v165;
    v165(v79, v32);
    v80(v9, v32);
    if (v78)
    {
      v81 = v175;
      v82 = v167;
      (*(v71 + 104))(v175, *MEMORY[0x1E699C430], v167);
      v83 = v174;
      sub_1B8C23818();
      (*(v71 + 8))(v81, v82);
      (*(v176 + 56))(v83, 0, 1, v177);
      v30 = v172;
      sub_1B8C23908();
    }

    sub_1B8C237C8();
    v84 = v173;
    v166(v173, *MEMORY[0x1E699C2D8], v32);
    v85 = MEMORY[0x1B8CC8470](v9, v84);
    v86 = v84;
    v87 = v165;
    v165(v86, v32);
    v87(v9, v32);
    v31 = v163;
    if (v85)
    {
      v88 = v175;
      v89 = v164;
      v90 = v167;
      (*(v71 + 104))(v175, *MEMORY[0x1E699C418], v167);
      v91 = v174;
      sub_1B8C23818();
      (*(v71 + 8))(v88, v90);
      v19 = v176;
      v92 = v177;
      (*(v176 + 56))(v91, 0, 1, v177);
      sub_1B8C23908();
      v93 = v89;
      v30 = v172;
      (*(v19 + 8))(v93, v92);
    }

    else
    {
      v19 = v176;
      (*(v176 + 8))(v164, v177);
    }

    v7 = v173;
  }

  sub_1B8C23918();
  if (v161(v31, 1, v177) == 1)
  {
    return sub_1B8B3433C(v31, &qword_1EBAA6290, &qword_1B8C2F800);
  }

  (*(v19 + 32))(v169, v31, v177);
  sub_1B8C237C8();
  v95 = *MEMORY[0x1E699C2F0];
  v166 = *(v30 + 104);
  v166(v7, v95, v32);
  v96 = MEMORY[0x1B8CC8470](v9, v7);
  v97 = (v30 + 8);
  v98 = *(v30 + 8);
  v98(v7, v32);
  v168 = v98;
  v98(v9, v32);
  if (v96)
  {
    v99 = *MEMORY[0x1E699C4D8];
    v165 = (v30 + 104);
    v100 = v170;
    v101 = v175;
    v102 = v167;
    (*(v170 + 104))(v175, v99, v167);
    v103 = v174;
    sub_1B8C23818();
    v104 = v101;
    v7 = v173;
    (*(v100 + 8))(v104, v102);
    (*(v176 + 56))(v103, 0, 1, v177);
    v30 = v172;
    sub_1B8C23928();
  }

  sub_1B8C237C8();
  v166(v7, *MEMORY[0x1E699C308], v32);
  v105 = MEMORY[0x1B8CC8470](v9, v7);
  v106 = v168;
  v168(v7, v32);
  v165 = v97;
  v106(v9, v32);
  if (v105)
  {
    v107 = sub_1B8C238A8();
    v108 = v170;
    v109 = MEMORY[0x1E699C4E0];
    if (v107 <= 1)
    {
      v109 = MEMORY[0x1E699C4D0];
    }

    v110 = v175;
    v111 = v167;
    (*(v170 + 104))(v175, *v109, v167);
    v112 = v174;
    sub_1B8C23818();
    (*(v108 + 8))(v110, v111);
    (*(v176 + 56))(v112, 0, 1, v177);
    v30 = v172;
    sub_1B8C23928();
  }

  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65E8, &qword_1B8C2AEF0);
  v114 = *(v30 + 72);
  v115 = *(v30 + 80);
  v116 = (v115 + 32) & ~v115;
  v163 = (v116 + 2 * v114);
  v164 = v113;
  v117 = swift_allocObject();
  v162 = xmmword_1B8C27920;
  *(v117 + 16) = xmmword_1B8C27920;
  v171 = v25;
  v118 = v166;
  v166(v117 + v116, *MEMORY[0x1E699C2E0], v32);
  v119 = *MEMORY[0x1E699C2B0];
  v172 = v114;
  v118(v117 + v116 + v114, v119, v32);
  sub_1B8C237C8();
  LOBYTE(v118) = sub_1B8B54E08(v9, v117);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v168(v9, v32);
  if (v118)
  {
    v120 = sub_1B8C238A8();
    v121 = v170;
    v122 = MEMORY[0x1E699C468];
    if (v120 <= 1)
    {
      v122 = MEMORY[0x1E699C4A0];
    }

    v123 = v175;
    v124 = v167;
    (*(v170 + 104))(v175, *v122, v167);
    v161 = ((v115 + 32) & ~v115);
    v125 = v174;
    sub_1B8C23818();
    (*(v121 + 8))(v123, v124);
    (*(v176 + 56))(v125, 0, 1, v177);
    v116 = v161;
    sub_1B8C23928();
  }

  v126 = swift_allocObject();
  *(v126 + 16) = v162;
  v127 = v166;
  v166(v126 + v116, *MEMORY[0x1E699C338], v32);
  v127(v126 + v116 + v172, *MEMORY[0x1E699C330], v32);
  sub_1B8C237C8();
  v128 = sub_1B8B54E08(v9, v126);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v168(v9, v32);
  v129 = v167;
  v130 = v170;
  if (v128)
  {
    v131 = sub_1B8C238A8();
    v132 = MEMORY[0x1E699C4C8];
    if (v131 <= 1)
    {
      v132 = MEMORY[0x1E699C4B8];
    }

    v133 = v175;
    (*(v130 + 104))(v175, *v132, v129);
    v134 = v174;
    sub_1B8C23818();
    (*(v130 + 8))(v133, v129);
    (*(v176 + 56))(v134, 0, 1, v177);
    sub_1B8C23928();
  }

  sub_1B8C237C8();
  v135 = v173;
  v127(v173, *MEMORY[0x1E699C270], v32);
  v136 = MEMORY[0x1B8CC8470](v9, v135);
  v137 = v168;
  v168(v135, v32);
  v137(v9, v32);
  if (v136)
  {
    v138 = v175;
    (*(v130 + 104))(v175, *MEMORY[0x1E699C490], v129);
    v139 = v174;
    sub_1B8C23818();
    v140 = v138;
    v135 = v173;
    (*(v130 + 8))(v140, v129);
    (*(v176 + 56))(v139, 0, 1, v177);
    sub_1B8C23928();
  }

  sub_1B8C237C8();
  v127(v135, *MEMORY[0x1E699C2D8], v32);
  v141 = MEMORY[0x1B8CC8470](v9, v135);
  v142 = v168;
  v168(v135, v32);
  v142(v9, v32);
  if (v141)
  {
    v143 = v175;
    (*(v130 + 104))(v175, *MEMORY[0x1E699C460], v129);
    v144 = v174;
    sub_1B8C23818();
    v145 = v143;
    v135 = v173;
    (*(v130 + 8))(v145, v129);
    (*(v176 + 56))(v144, 0, 1, v177);
    sub_1B8C23928();
  }

  sub_1B8C237C8();
  v127(v135, *MEMORY[0x1E699C298], v32);
  v146 = MEMORY[0x1B8CC8470](v9, v135);
  v147 = v135;
  v148 = v168;
  v168(v147, v32);
  v148(v9, v32);
  if ((v146 & 1) == 0)
  {
    return (*(v176 + 8))(v169, v177);
  }

  v149 = v175;
  (*(v130 + 104))(v175, *MEMORY[0x1E699C500], v129);
  v150 = v174;
  v151 = v169;
  sub_1B8C23818();
  (*(v130 + 8))(v149, v129);
  v152 = v176;
  v153 = v177;
  (*(v176 + 56))(v150, 0, 1, v177);
  sub_1B8C23928();
  return (*(v152 + 8))(v151, v153);
}

uint64_t sub_1B8B5A21C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v46 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v46 - v9;
  v10 = sub_1B8C238B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v51 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v46 - v15;
  v16 = sub_1B8C237B8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1B8B5B984();
  sub_1B8C237C8();
  v21 = sub_1B8B5C388();
  v55 = *(v17 + 8);
  v56 = v16;
  result = v55(v20, v16);
  if (v21)
  {
    v52 = v11;
    v49 = v10;
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v23 = sub_1B8C23C38();
    __swift_project_value_buffer(v23, qword_1EBAB3A00);
    v24 = v0;
    v25 = sub_1B8C23C18();
    v26 = sub_1B8C25498();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v53;
    v48 = v5;
    if (v27)
    {
      v29 = swift_slowAlloc();
      v47 = v8;
      v30 = v29;
      v46 = swift_slowAlloc();
      v57 = v46;
      *v30 = 136446210;
      sub_1B8C237C8();
      sub_1B8B5FB84(&qword_1EBAA6278, MEMORY[0x1E699C390]);
      v31 = v56;
      v32 = sub_1B8C259E8();
      v34 = v33;
      v55(v20, v31);
      v35 = sub_1B8B5DD48(v32, v34, &v57);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1B8B22000, v25, v26, "Remapping dynamic alert strings for feature: [%{public}s]", v30, 0xCu);
      v36 = v46;
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x1B8CCB0E0](v36, -1, -1);
      v37 = v30;
      v8 = v47;
      MEMORY[0x1B8CCB0E0](v37, -1, -1);
    }

    sub_1B8C238F8();
    v38 = v52;
    v39 = *(v52 + 48);
    v40 = v49;
    if (v39(v28, 1, v49) == 1)
    {
      sub_1B8B3433C(v28, &qword_1EBAA6290, &qword_1B8C2F800);
    }

    else
    {
      v41 = v28;
      v42 = v50;
      (*(v38 + 32))(v50, v41, v40);
      sub_1B8C237C8();
      sub_1B8B5C674(v20, v54 & 1);
      v55(v20, v56);
      (*(v38 + 56))(v8, 0, 1, v40);
      sub_1B8C23908();
      (*(v38 + 8))(v42, v40);
    }

    v43 = v48;
    sub_1B8C23918();
    if (v39(v43, 1, v40) == 1)
    {
      return sub_1B8B3433C(v43, &qword_1EBAA6290, &qword_1B8C2F800);
    }

    else
    {
      v45 = v51;
      v44 = v52;
      (*(v52 + 32))(v51, v43, v40);
      sub_1B8C237C8();
      sub_1B8B5C674(v20, v54 & 1);
      v55(v20, v56);
      (*(v44 + 56))(v8, 0, 1, v40);
      sub_1B8C23928();
      return (*(v44 + 8))(v45, v40);
    }
  }

  return result;
}

uint64_t sub_1B8B5A7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v6 + 64) = a4;
  *(v6 + 72) = v5;
  *(v6 + 48) = a2;
  *(v6 + 56) = a3;
  *(v6 + 40) = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800) - 8) + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  v9 = sub_1B8C237B8();
  *(v6 + 88) = v9;
  v10 = *(v9 - 8);
  *(v6 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  v12 = sub_1B8C23938();
  *(v6 + 112) = v12;
  v13 = *(v12 - 8);
  *(v6 + 120) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 145) = *a5;

  return MEMORY[0x1EEE6DFA0](sub_1B8B5A944, 0, 0);
}

uint64_t sub_1B8B5A944()
{
  v36 = v0;
  if (*(v0 + 145) != 2)
  {
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v1 = sub_1B8C23C38();
    __swift_project_value_buffer(v1, qword_1EBAB3A00);
    v2 = sub_1B8C23C18();
    v3 = sub_1B8C25458();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 145);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v35 = v6;
      *v5 = 136315138;
      if (v4)
      {
        v7 = 0x65746172656E6547;
      }

      else
      {
        v7 = 0x6C616E696769724FLL;
      }

      if (v4)
      {
        v8 = 0xE900000000000064;
      }

      else
      {
        v8 = 0xE800000000000000;
      }

      v9 = sub_1B8B5DD48(v7, v8, &v35);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1B8B22000, v2, v3, "Will attach annotated %s content.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1B8CCB0E0](v6, -1, -1);
      MEMORY[0x1B8CCB0E0](v5, -1, -1);
    }
  }

  if ((*(*(v0 + 120) + 48))(*(v0 + 64), 1, *(v0 + 112)) != 1)
  {
    if (qword_1EBAA5968 != -1)
    {
      swift_once();
    }

    v10 = sub_1B8C23C38();
    __swift_project_value_buffer(v10, qword_1EBAB3A00);
    v11 = sub_1B8C23C18();
    v12 = sub_1B8C25478();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 145);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v35 = v15;
      *v14 = 136315138;
      v16 = 0x65746172656E6547;
      v17 = 0xE900000000000064;
      if (v13 != 1)
      {
        v16 = 0x6172747845;
        v17 = 0xE500000000000000;
      }

      if (v13)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0x6C616E696769724FLL;
      }

      if (v13)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xE800000000000000;
      }

      v20 = sub_1B8B5DD48(v18, v19, &v35);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_1B8B22000, v11, v12, "Ignoring %s content because annotated is present.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B8CCB0E0](v15, -1, -1);
      MEMORY[0x1B8CCB0E0](v14, -1, -1);
    }
  }

  v21 = *(v0 + 145);
  v22 = *(v0 + 128);
  v23 = *(v0 + 104);
  v25 = *(v0 + 72);
  v24 = *(v0 + 80);
  v26 = *(v0 + 48);
  sub_1B8C23878();
  sub_1B8C237C8();
  *(v0 + 144) = v21;
  v27 = sub_1B8C238B8();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v24, v26, v27);
  (*(v28 + 56))(v24, 0, 1, v27);
  v29 = swift_task_alloc();
  *(v0 + 136) = v29;
  *v29 = v0;
  v29[1] = sub_1B8B5AD70;
  v30 = *(v0 + 128);
  v31 = *(v0 + 104);
  v32 = *(v0 + 80);
  v33 = *(v0 + 56);

  return sub_1B8B759CC(v0 + 16, v33, v31, (v0 + 144), v32);
}

uint64_t sub_1B8B5AD70()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 80);
  v7 = *v0;

  sub_1B8B3433C(v5, &qword_1EBAA6290, &qword_1B8C2F800);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1B8B5AEF4, 0, 0);
}

uint64_t sub_1B8B5AEF4()
{
  v31 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v1 + 16);
  if (v3)
  {
    v28 = *(v0 + 16);

    v4 = 32;
    v5 = 0x1EBAA5000uLL;
    do
    {
      v6 = *(v1 + v4);
      v7 = v6;
      if (*(v5 + 2408) != -1)
      {
        swift_once();
      }

      v8 = sub_1B8C23C38();
      __swift_project_value_buffer(v8, qword_1EBAB3A00);
      v9 = v6;
      v10 = sub_1B8C23C18();
      v11 = sub_1B8C25478();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = v1;
        v13 = *(v29 + 145);
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v30 = v15;
        *v14 = 136315394;
        if (v13)
        {
          if (v13 == 1)
          {
            v16 = 0x65746172656E6547;
          }

          else
          {
            v16 = 0x6172747845;
          }

          if (v13 == 1)
          {
            v17 = 0xE900000000000064;
          }

          else
          {
            v17 = 0xE500000000000000;
          }
        }

        else
        {
          v17 = 0xE800000000000000;
          v16 = 0x6C616E696769724FLL;
        }

        v18 = sub_1B8B5DD48(v16, v17, &v30);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2082;
        *(v29 + 32) = v6;
        v19 = v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v20 = sub_1B8C25178();
        v22 = sub_1B8B5DD48(v20, v21, &v30);

        *(v14 + 14) = v22;
        _os_log_impl(&dword_1B8B22000, v10, v11, "Annotated %s content attachments could not be attached: %{public}s)", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8CCB0E0](v15, -1, -1);
        MEMORY[0x1B8CCB0E0](v14, -1, -1);

        v1 = v12;
        v5 = 0x1EBAA5000;
      }

      else
      {
      }

      v4 += 8;
      --v3;
    }

    while (v3);

    v2 = v28;
  }

  v23 = *(v29 + 104);
  v24 = *(v29 + 80);
  v25 = *(v29 + 40);
  (*(*(v29 + 120) + 8))(*(v29 + 128), *(v29 + 112));
  *v25 = v2;
  v25[1] = v1;

  v26 = *(v29 + 8);

  return v26();
}

uint64_t sub_1B8B5B200(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 56) = a3;
  *(v5 + 64) = v4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800) - 8) + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v8 = sub_1B8C237B8();
  *(v5 + 80) = v8;
  v9 = *(v8 - 8);
  *(v5 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 121) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1B8B5B308, 0, 0);
}

uint64_t sub_1B8B5B308()
{
  v24 = v0;
  if (qword_1EBAA5968 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8C23C38();
  *(v0 + 104) = __swift_project_value_buffer(v1, qword_1EBAB3A00);
  v2 = sub_1B8C23C18();
  v3 = sub_1B8C25458();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 121);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    v7 = 0xE900000000000064;
    v8 = 0x65746172656E6547;
    if (v4 != 1)
    {
      v8 = 0x6172747845;
      v7 = 0xE500000000000000;
    }

    if (v4)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x6C616E696769724FLL;
    }

    if (v4)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    v11 = sub_1B8B5DD48(v9, v10, &v23);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1B8B22000, v2, v3, "Will attach %s content.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8CCB0E0](v6, -1, -1);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
  }

  v12 = *(v0 + 121);
  v13 = *(v0 + 96);
  v15 = *(v0 + 64);
  v14 = *(v0 + 72);
  sub_1B8C237C8();
  *(v0 + 120) = v12;
  v16 = sub_1B8C238B8();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = swift_task_alloc();
  *(v0 + 112) = v17;
  *v17 = v0;
  v17[1] = sub_1B8B5B57C;
  v18 = *(v0 + 96);
  v19 = *(v0 + 72);
  v21 = *(v0 + 48);
  v20 = *(v0 + 56);

  return sub_1B8B759CC(v0 + 16, v20, v18, (v0 + 120), v19);
}

uint64_t sub_1B8B5B57C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v7 = *v0;

  sub_1B8B3433C(v5, &qword_1EBAA6290, &qword_1B8C2F800);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1B8B5B700, 0, 0);
}

uint64_t sub_1B8B5B700()
{
  v29 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v26 = *(v0 + 16);

    v4 = 32;
    v27 = v2;
    do
    {
      v5 = *(v0 + 104);
      v6 = *(v2 + v4);
      v7 = v6;
      v8 = v6;
      v9 = sub_1B8C23C18();
      v10 = sub_1B8C25478();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = *(v0 + 121);
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v28 = v13;
        *v12 = 136315394;
        if (v11)
        {
          if (v11 == 1)
          {
            v14 = 0x65746172656E6547;
          }

          else
          {
            v14 = 0x6172747845;
          }

          if (v11 == 1)
          {
            v15 = 0xE900000000000064;
          }

          else
          {
            v15 = 0xE500000000000000;
          }
        }

        else
        {
          v15 = 0xE800000000000000;
          v14 = 0x6C616E696769724FLL;
        }

        v16 = sub_1B8B5DD48(v14, v15, &v28);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2082;
        *(v0 + 32) = v6;
        v17 = v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
        v18 = sub_1B8C25178();
        v20 = sub_1B8B5DD48(v18, v19, &v28);

        *(v12 + 14) = v20;
        _os_log_impl(&dword_1B8B22000, v9, v10, "%s content attachments could not be attached: %{public}s)", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8CCB0E0](v13, -1, -1);
        MEMORY[0x1B8CCB0E0](v12, -1, -1);

        v2 = v27;
      }

      else
      {
      }

      v4 += 8;
      --v3;
    }

    while (v3);

    v1 = v26;
  }

  v21 = *(v0 + 96);
  v22 = *(v0 + 72);
  v23 = *(v0 + 40);
  *v23 = v1;
  v23[1] = v2;

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1B8B5B984()
{
  v0 = sub_1B8C238B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v76 - v6;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6290, &qword_1B8C2F800);
  v8 = *(v83 - 1);
  v9 = v8;
  v10 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v83);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v78 = &v76 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v76 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6668, &qword_1B8C294A0);
  v18 = *(v8 + 72);
  v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v20 = swift_allocObject();
  sub_1B8C238F8();
  sub_1B8C23918();
  v84 = v20 + v19;
  sub_1B8B34450(v20 + v19, v17, &qword_1EBAA6290, &qword_1B8C2F800);
  sub_1B8B3883C(v17, v13, &qword_1EBAA6290, &qword_1B8C2F800);
  v79 = *(v1 + 48);
  v21 = v79(v13, 1, v0);
  v80 = (v1 + 32);
  v81 = v20;
  v82 = v7;
  if (v21 != 1)
  {
    v76 = *(v1 + 32);
    v77 = v0;
    v76(v7, v13, v0);
    v23 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_4;
  }

  sub_1B8B3433C(v13, &qword_1EBAA6290, &qword_1B8C2F800);
  v22 = MEMORY[0x1E69E7CC0];
LABEL_7:
  sub_1B8B34450(v84 + v18, v17, &qword_1EBAA6290, &qword_1B8C2F800);
  sub_1B8B3883C(v17, v13, &qword_1EBAA6290, &qword_1B8C2F800);
  if (v79(v13, 1, v0) == 1)
  {
    sub_1B8B3433C(v13, &qword_1EBAA6290, &qword_1B8C2F800);
    v18 = v0;
    v26 = v22;
    v23 = v83;
  }

  else
  {
    v17 = *v80;
    v27 = v82;
    (*v80)(v82, v13, v0);
    v18 = v0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1B8B5D9E4(0, v22[2] + 1, 1, v22, &qword_1EBAA6670, &qword_1B8C294A8, MEMORY[0x1E699C540]);
    }

    v29 = v22[2];
    v28 = v22[3];
    v30 = v22;
    if (v29 >= v28 >> 1)
    {
      v30 = sub_1B8B5D9E4(v28 > 1, v29 + 1, 1, v22, &qword_1EBAA6670, &qword_1B8C294A8, MEMORY[0x1E699C540]);
    }

    *(v30 + 16) = v29 + 1;
    v31 = v30 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v29;
    v26 = v30;
    (v17)(v31, v27, v0);
    v23 = v83;
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v32 = v26[2];
  if (v32)
  {
    v13 = 0;
    v33 = v26 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v81 = v85 + 1;
    v83 = (v1 + 8);
    v84 = v1 + 16;
    while (1)
    {
      if (v13 >= v26[2])
      {
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
        v23 = sub_1B8B5D9E4(0, *(v23 + 16) + 1, 1, v23, &qword_1EBAA6670, &qword_1B8C294A8, MEMORY[0x1E699C540]);
LABEL_4:
        v25 = *(v23 + 16);
        v24 = *(v23 + 24);
        v22 = v23;
        if (v25 >= v24 >> 1)
        {
          v22 = sub_1B8B5D9E4(v24 > 1, v25 + 1, 1, v23, &qword_1EBAA6670, &qword_1B8C294A8, MEMORY[0x1E699C540]);
        }

        v22[2] = v25 + 1;
        v0 = v77;
        v76(v22 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v25, v82, v77);
        goto LABEL_7;
      }

      (*(v1 + 16))(v5, &v33[*(v1 + 72) * v13], v18);
      v34 = sub_1B8C23828();
      if (!v34)
      {
        goto LABEL_24;
      }

      v17 = v34;
      v35 = sub_1B8C23808();
      if (!*(v17 + 16))
      {
        break;
      }

      v82 = v13;
      v37 = v5;
      v38 = v1;
      v39 = v18;
      v40 = v26;
      v41 = v32;
      v42 = sub_1B8B5E2DC(v35, v36);
      v44 = v43;

      if (v44)
      {
        v45 = (*(v17 + 56) + 16 * v42);
        v23 = *v45;
        v46 = v45[1];

        v47 = v46;
      }

      else
      {

        v47 = 0xE100000000000000;
        v23 = 48;
      }

      v32 = v41;
      v26 = v40;
      v18 = v39;
      v1 = v38;
      v5 = v37;
      v13 = v82;
LABEL_27:
      v48 = (HIBYTE(v47) & 0xF);
      v49 = v23 & 0xFFFFFFFFFFFFLL;
      if ((v47 & 0x2000000000000000) != 0)
      {
        v50 = HIBYTE(v47) & 0xF;
      }

      else
      {
        v50 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (!v50)
      {

        goto LABEL_17;
      }

      if ((v47 & 0x1000000000000000) == 0)
      {
        if ((v47 & 0x2000000000000000) != 0)
        {
          v85[0] = v23;
          v85[1] = v47 & 0xFFFFFFFFFFFFFFLL;
          if (v23 == 43)
          {
            if (!v48)
            {
              goto LABEL_97;
            }

            if (--v48)
            {
              v23 = 0;
              v63 = v81;
              while (1)
              {
                v64 = *v63 - 48;
                if (v64 > 9)
                {
                  break;
                }

                v65 = 10 * v23;
                if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                {
                  break;
                }

                v23 = v65 + v64;
                if (__OFADD__(v65, v64))
                {
                  break;
                }

                ++v63;
                if (!--v48)
                {
                  goto LABEL_88;
                }
              }
            }
          }

          else if (v23 == 45)
          {
            if (!v48)
            {
              goto LABEL_99;
            }

            if (--v48)
            {
              v23 = 0;
              v56 = v81;
              while (1)
              {
                v57 = *v56 - 48;
                if (v57 > 9)
                {
                  break;
                }

                v58 = 10 * v23;
                if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                {
                  break;
                }

                v23 = v58 - v57;
                if (__OFSUB__(v58, v57))
                {
                  break;
                }

                ++v56;
                if (!--v48)
                {
                  goto LABEL_88;
                }
              }
            }
          }

          else if (v48)
          {
            v23 = 0;
            v68 = v85;
            while (1)
            {
              v69 = *v68 - 48;
              if (v69 > 9)
              {
                break;
              }

              v70 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                break;
              }

              v23 = v70 + v69;
              if (__OFADD__(v70, v69))
              {
                break;
              }

              ++v68;
              if (!--v48)
              {
                goto LABEL_88;
              }
            }
          }
        }

        else
        {
          if ((v23 & 0x1000000000000000) != 0)
          {
            v48 = ((v47 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v17 = v47;
            v48 = sub_1B8C25838();
          }

          v51 = *v48;
          if (v51 == 43)
          {
            if (v49 < 1)
            {
              goto LABEL_100;
            }

            v59 = v49 - 1;
            if (v49 != 1)
            {
              v23 = 0;
              if (!v48)
              {
                goto LABEL_88;
              }

              v60 = v48 + 1;
              while (1)
              {
                v61 = *v60 - 48;
                if (v61 > 9)
                {
                  break;
                }

                v62 = 10 * v23;
                if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                {
                  break;
                }

                v23 = v62 + v61;
                if (__OFADD__(v62, v61))
                {
                  break;
                }

                ++v60;
                if (!--v59)
                {
LABEL_79:
                  LOBYTE(v48) = 0;
                  goto LABEL_88;
                }
              }
            }
          }

          else if (v51 == 45)
          {
            if (v49 < 1)
            {
              goto LABEL_98;
            }

            v52 = v49 - 1;
            if (v49 != 1)
            {
              v23 = 0;
              if (v48)
              {
                v53 = v48 + 1;
                while (1)
                {
                  v54 = *v53 - 48;
                  if (v54 > 9)
                  {
                    goto LABEL_87;
                  }

                  v55 = 10 * v23;
                  if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                  {
                    goto LABEL_87;
                  }

                  v23 = v55 - v54;
                  if (__OFSUB__(v55, v54))
                  {
                    goto LABEL_87;
                  }

                  ++v53;
                  if (!--v52)
                  {
                    goto LABEL_79;
                  }
                }
              }

LABEL_88:
              v86 = v48;
              v17 = v48;

              if (v17)
              {
                goto LABEL_17;
              }

              goto LABEL_89;
            }
          }

          else
          {
            if (!v49)
            {
              goto LABEL_87;
            }

            v23 = 0;
            if (!v48)
            {
              goto LABEL_88;
            }

            while (1)
            {
              v66 = *v48 - 48;
              if (v66 > 9)
              {
                break;
              }

              v67 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                break;
              }

              v23 = v67 + v66;
              if (__OFADD__(v67, v66))
              {
                break;
              }

              ++v48;
              if (!--v49)
              {
                goto LABEL_79;
              }
            }
          }
        }

LABEL_87:
        v23 = 0;
        LOBYTE(v48) = 1;
        goto LABEL_88;
      }

      v23 = sub_1B8C023FC(v23, v47, 10);
      v17 = v71;

      if (v17)
      {
        goto LABEL_17;
      }

LABEL_89:
      if (v23 >= 2)
      {

        v72 = v78;
        (*v80)(v78, v5, v18);
        v73 = 0;
        v74 = 1;
        goto LABEL_95;
      }

LABEL_17:
      ++v13;
      (*v83)(v5, v18);
      if (v13 == v32)
      {
        goto LABEL_94;
      }
    }

LABEL_24:
    v47 = 0xE100000000000000;
    v23 = 48;
    goto LABEL_27;
  }

LABEL_94:

  v74 = 0;
  v73 = 1;
  v72 = v78;
LABEL_95:
  (*(v1 + 56))(v72, v73, 1, v18);
  sub_1B8B3433C(v72, &qword_1EBAA6290, &qword_1B8C2F800);
  return v74;
}

uint64_t sub_1B8B5C388()
{
  v1 = sub_1B8C237B8();
  v2 = *(v1 - 8);
  v3 = v2;
  v4 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v19 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65E8, &qword_1B8C2AEF0);
  v7 = *(v2 + 72);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v22 = 3 * v7;
  v23 = v6;
  v9 = swift_allocObject();
  v21 = xmmword_1B8C293F0;
  *(v9 + 16) = xmmword_1B8C293F0;
  v10 = *MEMORY[0x1E699C2E0];
  v20 = v3;
  v11 = *(v3 + 104);
  v11(v9 + v8, v10, v1);
  v11(v9 + v8 + v7, *MEMORY[0x1E699C2B0], v1);
  v11(v9 + v8 + 2 * v7, *MEMORY[0x1E699C308], v1);
  v24 = v0;
  v12 = sub_1B8B54E08(v0, v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v12)
  {
    goto LABEL_3;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v21;
  v11(v13 + v8, *MEMORY[0x1E699C328], v1);
  v11(v13 + v8 + v7, *MEMORY[0x1E699C330], v1);
  v11(v13 + v8 + 2 * v7, *MEMORY[0x1E699C338], v1);
  v14 = v24;
  v15 = sub_1B8B54E08(v24, v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v15)
  {
LABEL_3:
    v16 = 1;
  }

  else
  {
    v17 = v19;
    v11(v19, *MEMORY[0x1E699C290], v1);
    v16 = MEMORY[0x1B8CC8470](v14, v17);
    (*(v20 + 8))(v17, v1);
  }

  return v16 & 1;
}

uint64_t sub_1B8B5C674(uint64_t a1, char a2)
{
  sub_1B8C23828();
  v3 = sub_1B8C23848();
  v5 = v4;
  v6 = sub_1B8B5FBCC();
  sub_1B8B54D00(v6, v7, v3, v5);
  v8 = sub_1B8C23838();
  v10 = v9;
  v11 = sub_1B8B5CA14(a2 & 1);
  v13 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B8B5EE34(v11, v13, v8, v10, isUniquelyReferenced_nonNull_native);

  sub_1B8C23868();
}

uint64_t sub_1B8B5CA14(int a1)
{
  v31 = a1;
  v1 = sub_1B8C237B8();
  v2 = *(v1 - 8);
  v3 = v2;
  v4 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65E8, &qword_1B8C2AEF0);
  v7 = *(v2 + 72);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v26 = 3 * v7;
  v28 = v6;
  v9 = swift_allocObject();
  v25 = xmmword_1B8C293F0;
  *(v9 + 16) = xmmword_1B8C293F0;
  v27 = v8;
  v10 = v9 + v8;
  v11 = *(v3 + 104);
  v11(v10, *MEMORY[0x1E699C2E0], v1);
  v11(v10 + v7, *MEMORY[0x1E699C2B0], v1);
  v12 = *MEMORY[0x1E699C308];
  v29 = 2 * v7;
  v11(v10 + 2 * v7, v12, v1);
  v13 = sub_1B8B54E08(v34, v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v13)
  {
    goto LABEL_3;
  }

  v14 = v30;
  v11(v30, *MEMORY[0x1E699C290], v1);
  v15 = MEMORY[0x1B8CC8470](v34, v14);
  (*(v3 + 8))(v14, v1);
  if (v15)
  {
    goto LABEL_3;
  }

  v20 = v27;
  v21 = swift_allocObject();
  *(v21 + 16) = v25;
  v11(v21 + v20, *MEMORY[0x1E699C328], v1);
  v11(v21 + v20 + v7, *MEMORY[0x1E699C330], v1);
  v11(v21 + v20 + v29, *MEMORY[0x1E699C338], v1);
  LOBYTE(v20) = sub_1B8B54E08(v34, v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v20)
  {
LABEL_3:
    type metadata accessor for FBKFeedbackForm();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass_];
    v18 = sub_1B8C23348();
  }

  else
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1B8C257E8();

    v32 = 0xD00000000000003ALL;
    v33 = 0x80000001B8C32B50;
    sub_1B8B5FB84(&qword_1EBAA6278, MEMORY[0x1E699C390]);
    v22 = sub_1B8C259E8();
    MEMORY[0x1B8CC9EB0](v22);

    v23 = v32;
    v18 = v33;
    sub_1B8B5FD80();
    swift_allocError();
    *v24 = v23;
    v24[1] = v18;
    swift_willThrow();
  }

  return v18;
}

uint64_t sub_1B8B5CF88()
{
  v1 = *v0;
  v2 = v0[1];
  strcpy(v4, "RemapError: ");
  MEMORY[0x1B8CC9EB0](v1, v2);
  return v4[0];
}

uint64_t sub_1B8B5CFDC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_1B8B5D0A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6690, &qword_1B8C29568);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8B5D1AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6630, qword_1B8C2BBF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B8B5D2B8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6678, &qword_1B8C294B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8B5D414(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA66A8, &qword_1B8C29580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8B5D55C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6640, &qword_1B8C29480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8B5D668(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6638, &qword_1B8C29478);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8B5D784(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA66B0, &qword_1B8C2C430);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B8B5D890(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA66A0, &qword_1B8C29578);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_1B8B5D9E4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1B8B5DBC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA8C30, &qword_1B8C29458);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1B8B5DCEC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1B8B5DD48(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1B8B5DD48(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B8B5DE14(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1B8B5FDD4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1B8B5DE14(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B8B5DF20(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1B8C25838();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1B8B5DF20(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B8B5DF6C(a1, a2);
  sub_1B8B5E09C(&unk_1F3754518);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1B8B5DF6C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B8C022E4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1B8C25838();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1B8C25208();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B8C022E4(v10, 0);
        result = sub_1B8C257C8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B8B5E09C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1B8B5E188(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1B8B5E188(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6688, &qword_1B8C294C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

_BYTE **sub_1B8B5E27C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_1B8B5E28C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1B8B5E2AC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_1B8B5E2DC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1B8C25AB8();
  sub_1B8C251B8();
  v6 = sub_1B8C25AF8();

  return sub_1B8B5E604(a1, a2, v6);
}

unint64_t sub_1B8B5E354(uint64_t a1, int64_t a2)
{
  v5 = *(v2 + 40);
  sub_1B8C25AB8();
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v6 = 3;
        goto LABEL_15;
      case 4:
        v6 = 4;
        goto LABEL_15;
      case 5:
        v6 = 5;
        goto LABEL_15;
    }

LABEL_12:
    MEMORY[0x1B8CCA790](6);
    sub_1B8C251B8();
    goto LABEL_16;
  }

  if (!a2)
  {
    v6 = 0;
    goto LABEL_15;
  }

  if (a2 == 1)
  {
    v6 = 1;
    goto LABEL_15;
  }

  if (a2 != 2)
  {
    goto LABEL_12;
  }

  v6 = 2;
LABEL_15:
  MEMORY[0x1B8CCA790](v6);
LABEL_16:
  v7 = sub_1B8C25AF8();

  return sub_1B8B5E6BC(a1, a2, v7);
}

unint64_t sub_1B8B5E458(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1B8C25AB8();
  MEMORY[0x1B8CCA790](a1);
  v4 = sub_1B8C25AF8();

  return sub_1B8B5E950(a1, v4);
}

uint64_t sub_1B8B5E4C4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

unint64_t sub_1B8B5E4D8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1B8C25128();
  sub_1B8C25AB8();
  sub_1B8C251B8();
  v4 = sub_1B8C25AF8();

  return sub_1B8B5E9C0(a1, v4);
}

unint64_t sub_1B8B5E56C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1B8C23A08();
  sub_1B8B5FB84(&qword_1EBAA85E0, MEMORY[0x1E699C658]);
  v5 = sub_1B8C250B8();

  return sub_1B8B5EAC4(a1, v5);
}

unint64_t sub_1B8B5E604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1B8C25A08())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B8B5E6BC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v8 = ~v4;
  while (1)
  {
    v9 = (*(v3 + 48) + 16 * v5);
    v10 = *v9;
    v11 = v9[1];
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          if (a2 == 3)
          {
            v17 = *v9;
            v18 = 3;
            goto LABEL_41;
          }

          sub_1B8B5FB10(a1, a2);
          v12 = 3;
          goto LABEL_24;
        case 4:
          if (a2 == 4)
          {
            v17 = *v9;
            v18 = 4;
            goto LABEL_41;
          }

          sub_1B8B5FB10(a1, a2);
          v12 = 4;
          goto LABEL_24;
        case 5:
          if (a2 == 5)
          {
            v17 = *v9;
            v18 = 5;
            goto LABEL_41;
          }

          sub_1B8B5FB10(a1, a2);
          v12 = 5;
          goto LABEL_24;
      }
    }

    else
    {
      switch(v11)
      {
        case 0:
          if (!a2)
          {
            v17 = *v9;
            v18 = 0;
            goto LABEL_41;
          }

          sub_1B8B5FB10(a1, a2);
          v12 = 0;
          goto LABEL_24;
        case 1:
          if (a2 == 1)
          {
            v17 = *v9;
            v18 = 1;
            goto LABEL_41;
          }

          sub_1B8B5FB10(a1, a2);
          v12 = 1;
          goto LABEL_24;
        case 2:
          if (a2 == 2)
          {
            v17 = *v9;
            v18 = 2;
            goto LABEL_41;
          }

          sub_1B8B5FB10(a1, a2);
          v12 = 2;
          goto LABEL_24;
      }
    }

    if (a2 < 6)
    {
      sub_1B8B5FB10(a1, a2);
      sub_1B8B5FB10(v10, v11);
      v12 = v11;
LABEL_24:
      sub_1B8B5E4C4(v10, v12);
      sub_1B8B5E4C4(a1, a2);
      goto LABEL_25;
    }

    if (v10 == a1 && v11 == a2)
    {
      break;
    }

    v14 = *v9;
    v15 = v9[1];
    v16 = sub_1B8C25A08();
    sub_1B8B5FB10(a1, a2);
    sub_1B8B5FB10(v10, v11);
    sub_1B8B5E4C4(v10, v11);
    sub_1B8B5E4C4(a1, a2);
    if (v16)
    {
      return v5;
    }

LABEL_25:
    v5 = (v5 + 1) & v8;
    if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  sub_1B8B5FB10(a1, a2);
  sub_1B8B5FB10(a1, a2);
  v17 = a1;
  v18 = a2;
LABEL_41:
  sub_1B8B5E4C4(v17, v18);
  sub_1B8B5E4C4(a1, a2);
  return v5;
}

unint64_t sub_1B8B5E950(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1B8B5E9C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1B8C25128();
      v9 = v8;
      if (v7 == sub_1B8C25128() && v9 == v10)
      {
        break;
      }

      v12 = sub_1B8C25A08();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1B8B5EAC4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1B8C23A08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1B8B5FB84(&qword_1EBAA6610, MEMORY[0x1E699C658]);
      v16 = sub_1B8C250E8();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_1B8B5EC84(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B8C256F8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1B8C25AB8();

      sub_1B8C251B8();
      v13 = sub_1B8C25AF8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B8B5EE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1B8B5E2DC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_1B8B94220();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1B8B92AF4(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_1B8B5E2DC(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = sub_1B8C25A58();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  else
  {
    sub_1B8B940E8(v13, a3, a4, a1, a2, v24);
  }
}

unint64_t sub_1B8B5EF84(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B8B5E458(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B8B94398();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B8B92DB4(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1B8B5E458(a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1B8C25A58();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 16 * v11);
    v25 = *v23;
    v24 = v23[1];
    *v23 = a1;
    v23[1] = a2;
  }

  else
  {

    return sub_1B8B94138(v11, a3, a1, a2, v22);
  }
}

uint64_t sub_1B8B5F0C4(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B8B5E354(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B8B94514();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B8B93050(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1B8B5E354(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1B8C25A58();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_1B8B94180(v11, a2, a3, a1, v22);

    return sub_1B8B5FB10(a2, a3);
  }
}

uint64_t sub_1B8B5F210(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B8B5E2DC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B8B94684();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B8B93390(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1B8B5E2DC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1B8C25A58();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_1B8B94180(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1B8B5F358(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B8B5E2DC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B8B94A74();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B8B939B8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1B8B5E2DC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1B8C25A58();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + (v11 << 6);

    return sub_1B8B5FB28(a1, v23);
  }

  else
  {
    sub_1B8B941C8(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_1B8B5F49C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6628, &unk_1B8C2BCB0);
    v3 = sub_1B8C258E8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1B8B5E2DC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8B5F5B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6608, &qword_1B8C2BC60);
    v3 = sub_1B8C258E8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_1B8B5FB10(v5, v6);

      result = sub_1B8B5E354(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8B5F6B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6680, &qword_1B8C294B8);
  v3 = sub_1B8C258E8();
  v4 = *(a1 + 32);
  v14 = *(a1 + 40);
  result = sub_1B8B5E458(v4);
  v6 = v14;
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 16 * result) = v6;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = (v8 + 24);
    v4 = *(v8 - 8);
    v15 = *v8;

    result = sub_1B8B5E458(v4);
    v8 = v12;
    v6 = v15;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B8B5F7EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6648, &qword_1B8C29488);
    v3 = sub_1B8C258E8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1B8B5E4D8(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8B5F8E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7830, &unk_1B8C2C9E0);
    v3 = sub_1B8C258E8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B8B34450(v4, &v11, &qword_1EBAA66C0, qword_1B8C29590);
      v5 = v11;
      result = sub_1B8B5E4D8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1B8B5FE40(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8B5FA0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6600, &qword_1B8C29450);
    v3 = sub_1B8C258E8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1B8B5E2DC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B8B5FB10(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_1B8B5FB84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8B5FBCC()
{
  if (sub_1B8B5C388())
  {
    type metadata accessor for FBKFeedbackForm();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v1 = [objc_opt_self() bundleForClass_];
    v2 = sub_1B8C23348();
  }

  else
  {
    sub_1B8C257E8();

    sub_1B8C237B8();
    sub_1B8B5FB84(&qword_1EBAA6278, MEMORY[0x1E699C390]);
    v3 = sub_1B8C259E8();
    MEMORY[0x1B8CC9EB0](v3);

    v2 = 0xD00000000000003ALL;
    sub_1B8B5FD80();
    swift_allocError();
    *v4 = 0xD00000000000003ALL;
    v4[1] = 0x80000001B8C32F10;
    swift_willThrow();
  }

  return v2;
}

unint64_t sub_1B8B5FD80()
{
  result = qword_1EBAA6660;
  if (!qword_1EBAA6660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6660);
  }

  return result;
}

uint64_t sub_1B8B5FDD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1B8B5FE40(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B8B5FE50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v91 = a2;
  v90 = type metadata accessor for AnalyticsEvent();
  v5 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v79 - v9;
  v11 = sub_1B8C23498();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v85 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v79 - v16;
  v83 = sub_1B8C23568();
  v17 = *(v83 - 1);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6730, &unk_1B8C29638);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v79 - v23;
  v25 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B8B614D8(a1, v28);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B8B615B8(v28, type metadata accessor for FullScreenPreviewController.Content.PreviewType);
    v57 = type metadata accessor for FullScreenPreviewController.Content(0);
    sub_1B8B614D8(a1, &v24[*(v57 + 20)]);
    sub_1B8C23558();
    (*(*(v57 - 8) + 56))(v24, 0, 1, v57);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v79 - 2) = v3;
    *(&v79 - 1) = v24;
    v92[0] = v3;
    sub_1B8B61570(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController);
    sub_1B8C23578();

    sub_1B8B3433C(v24, &qword_1EBAA6730, &unk_1B8C29638);
    (*(v12 + 56))(v10, 1, 1, v11);
    sub_1B8B60D08(v10);
LABEL_7:
    v59 = sub_1B8C237B8();
    v60 = v89;
    (*(*(v59 - 8) + 16))(v89, v91, v59);
    swift_storeEnumTagMultiPayload();
    sub_1B8C03B68();
    return sub_1B8B615B8(v60, type metadata accessor for AnalyticsEvent);
  }

  v81 = v10;
  v87 = v12;
  v88 = v11;
  v86 = *v28;
  v29 = type metadata accessor for FullScreenPreviewController.Content(0);
  (*(*(v29 - 8) + 56))(v24, 1, 1, v29);
  v30 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v30);
  *(&v79 - 2) = v3;
  *(&v79 - 1) = v24;
  v92[0] = v3;
  sub_1B8B61570(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController);
  v82 = v3;
  v31 = 0;
  sub_1B8C23578();

  sub_1B8B3433C(v24, &qword_1EBAA6730, &unk_1B8C29638);
  v32 = NSTemporaryDirectory();
  v33 = sub_1B8C25128();
  v35 = v34;

  sub_1B8C23558();
  v36 = sub_1B8C23538();
  v38 = v37;
  (*(v17 + 8))(v20, v83);
  v92[0] = v33;
  v92[1] = v35;
  MEMORY[0x1B8CC9EB0](v36, v38);

  MEMORY[0x1B8CC9EB0](1735290926, 0xE400000000000000);
  v39 = v84;
  sub_1B8C233C8();

  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v40 = sub_1B8C23C38();
  __swift_project_value_buffer(v40, qword_1EBAB3A30);
  v42 = v87;
  v41 = v88;
  v43 = v85;
  v83 = *(v87 + 16);
  v83(v85, v39, v88);
  v44 = sub_1B8C23C18();
  v45 = sub_1B8C25468();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = v43;
    v80 = 0;
    v48 = v39;
    v49 = v46;
    v50 = swift_slowAlloc();
    v92[0] = v50;
    *v49 = 136315138;
    v51 = sub_1B8C233B8();
    v53 = v52;
    v85 = *(v87 + 8);
    (v85)(v47, v88);
    v54 = sub_1B8B5DD48(v51, v53, v92);
    v42 = v87;

    *(v49 + 4) = v54;
    _os_log_impl(&dword_1B8B22000, v44, v45, "Will store quicklook item in temp location: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    v55 = v50;
    v41 = v88;
    MEMORY[0x1B8CCB0E0](v55, -1, -1);
    v56 = v49;
    v39 = v48;
    v31 = v80;
    MEMORY[0x1B8CCB0E0](v56, -1, -1);
  }

  else
  {

    v85 = *(v42 + 8);
    (v85)(v43, v41);
  }

  v62 = UIImagePNGRepresentation(v86);
  if (!v62)
  {
    v75 = sub_1B8C23C18();
    v76 = sub_1B8C25478();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_1B8B22000, v75, v76, "Failed to generate PNG data", v77, 2u);
      MEMORY[0x1B8CCB0E0](v77, -1, -1);
    }

    return (v85)(v39, v41);
  }

  v63 = v62;
  v64 = sub_1B8C234B8();
  v66 = v65;

  sub_1B8C234C8();
  if (!v31)
  {
    v78 = v81;
    v83(v81, v39, v41);
    (*(v42 + 56))(v78, 0, 1, v41);
    sub_1B8B60D08(v78);
    sub_1B8B4645C(v64, v66);

    (v85)(v39, v41);
    goto LABEL_7;
  }

  v67 = v31;
  v68 = sub_1B8C23C18();
  v69 = sub_1B8C25478();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *v70 = 138543362;
    v72 = v31;
    v73 = _swift_stdlib_bridgeErrorToNSError();
    *(v70 + 4) = v73;
    *v71 = v73;
    _os_log_impl(&dword_1B8B22000, v68, v69, "Failed to write url: %{public}@", v70, 0xCu);
    sub_1B8B3433C(v71, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v71, -1, -1);
    v74 = v70;
    v41 = v88;
    MEMORY[0x1B8CCB0E0](v74, -1, -1);
  }

  sub_1B8B4645C(v64, v66);

  return (v85)(v39, v41);
}

uint64_t sub_1B8B60900(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6730, &unk_1B8C29638);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10[-v6];
  sub_1B8B34450(a1, &v10[-v6], &qword_1EBAA6730, &unk_1B8C29638);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_1B8B61570(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController);
  sub_1B8C23578();

  return sub_1B8B3433C(v7, &qword_1EBAA6730, &unk_1B8C29638);
}

uint64_t sub_1B8B60A74@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v11 = v4;
  sub_1B8B61570(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController);
  sub_1B8C23588();

  v9 = *a1;
  swift_beginAccess();
  return sub_1B8B34450(v11 + v9, a4, a2, a3);
}

uint64_t sub_1B8B60B78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t *a4@<X6>, uint64_t a5@<X8>)
{
  v9 = *a1;
  swift_getKeyPath();
  sub_1B8B61570(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController);
  sub_1B8C23588();

  v10 = *a2;
  swift_beginAccess();
  return sub_1B8B34450(v9 + v10, a5, a3, a4);
}

uint64_t sub_1B8B60C5C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1B8B34450(a1, &v10 - v6, &qword_1EBAA85A0, &qword_1B8C28C20);
  v8 = *a2;
  return sub_1B8B60D08(v7);
}

uint64_t sub_1B8B60D08(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC8Feedback27FullScreenPreviewController__quickLookPreviewURL;
  swift_beginAccess();
  sub_1B8B34450(v1 + v7, v6, &qword_1EBAA85A0, &qword_1B8C28C20);
  v8 = sub_1B8B61618(v6, a1);
  sub_1B8B3433C(v6, &qword_1EBAA85A0, &qword_1B8C28C20);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_1B8B61570(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController);
    sub_1B8C23578();
  }

  else
  {
    swift_beginAccess();
    sub_1B8B6196C(a1, v1 + v7, &qword_1EBAA85A0, &qword_1B8C28C20);
    swift_endAccess();
  }

  return sub_1B8B3433C(a1, &qword_1EBAA85A0, &qword_1B8C28C20);
}

uint64_t sub_1B8B60F04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  swift_beginAccess();
  sub_1B8B6196C(a2, a1 + v9, a4, a5);
  return swift_endAccess();
}

uint64_t sub_1B8B60F84()
{
  sub_1B8B3433C(v0 + OBJC_IVAR____TtC8Feedback27FullScreenPreviewController__content, &qword_1EBAA6730, &unk_1B8C29638);
  sub_1B8B3433C(v0 + OBJC_IVAR____TtC8Feedback27FullScreenPreviewController__quickLookPreviewURL, &qword_1EBAA85A0, &qword_1B8C28C20);
  v1 = OBJC_IVAR____TtC8Feedback27FullScreenPreviewController___observationRegistrar;
  v2 = sub_1B8C235C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1B8B61088()
{
  sub_1B8B6120C(319, &qword_1EBAA66F0, type metadata accessor for FullScreenPreviewController.Content, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B8B6120C(319, &qword_1EBAA66F8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_1B8C235C8();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B8B6120C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B8B612B8()
{
  result = sub_1B8C23568();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FullScreenPreviewController.Content.PreviewType(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B8B6133C()
{
  sub_1B8C23328();
  if (v0 <= 0x3F)
  {
    sub_1B8B61444();
    if (v1 <= 0x3F)
    {
      sub_1B8B6120C(319, &qword_1EBAA6720, type metadata accessor for CatchUpDonationDecoder.Result.Mail, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1B8B6120C(319, &qword_1EBAA6728, type metadata accessor for CatchUpDonationDecoder.Result.Message, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1B8B61444()
{
  result = qword_1EBAA6220;
  if (!qword_1EBAA6220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBAA6220);
  }

  return result;
}

uint64_t sub_1B8B614D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B61570(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8B615B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B8B61618(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C23498();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6738, &qword_1B8C296A0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1B8B34450(a1, &v24 - v16, &qword_1EBAA85A0, &qword_1B8C28C20);
  sub_1B8B34450(a2, &v17[v18], &qword_1EBAA85A0, &qword_1B8C28C20);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1B8B34450(v17, v12, &qword_1EBAA85A0, &qword_1B8C28C20);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1B8B61570(&qword_1EBAA63A0, MEMORY[0x1E6968FB0]);
      v21 = sub_1B8C250E8();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1B8B3433C(v17, &qword_1EBAA85A0, &qword_1B8C28C20);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1B8B3433C(v17, &qword_1EBAA6738, &qword_1B8C296A0);
    v20 = 1;
    return v20 & 1;
  }

  sub_1B8B3433C(v17, &qword_1EBAA85A0, &qword_1B8C28C20);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1B8B6196C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

void sub_1B8B619D4(uint64_t a1)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B8C23498();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  sub_1B8C23458();
  v8 = sub_1B8C250F8();

  v9 = [v7 fileExistsAtPath_];

  if (!v9)
  {
LABEL_11:
    v31 = *MEMORY[0x1E69E9840];
    return;
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v11 = sub_1B8C233E8();
  v33[0] = 0;
  v12 = [v10 removeItemAtURL:v11 error:v33];

  v13 = v33[0];
  if (!v12)
  {
    v32 = v33[0];
    v16 = v33[0];
    v17 = sub_1B8C23368();

    swift_willThrow();
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v18 = sub_1B8C23C38();
    __swift_project_value_buffer(v18, qword_1EBAB3A30);
    (*(v3 + 16))(v6, a1, v2);
    v19 = v17;
    v20 = sub_1B8C23C18();
    v21 = sub_1B8C25478();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33[0] = v32;
      *v22 = 136315394;
      sub_1B8B61570(&qword_1EBAA63C0, MEMORY[0x1E6968FB0]);
      v24 = sub_1B8C259E8();
      v26 = v25;
      (*(v3 + 8))(v6, v2);
      v27 = sub_1B8B5DD48(v24, v26, v33);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2114;
      v28 = v17;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v29;
      *v23 = v29;
      _os_log_impl(&dword_1B8B22000, v20, v21, "Failed to delete file at: %s - %{public}@", v22, 0x16u);
      sub_1B8B3433C(v23, &qword_1EBAA69A0, &qword_1B8C29670);
      MEMORY[0x1B8CCB0E0](v23, -1, -1);
      v30 = v32;
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1B8CCB0E0](v30, -1, -1);
      MEMORY[0x1B8CCB0E0](v22, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    goto LABEL_11;
  }

  v14 = *MEMORY[0x1E69E9840];

  v15 = v13;
}

uint64_t sub_1B8B61E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = sub_1B8C25028();
  v9 = *(v29 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v29);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  v16 = sub_1B8C24FD8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v30 = a2;
  v31 = a3;
  result = sub_1B8C23F08();
  if (a4)
  {
    if (qword_1EBAA6740)
    {
      sub_1B8B247D4(a4);

      sub_1B8C25048();
    }

    else
    {
    }

    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    aBlock[4] = sub_1B8B621CC;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8B8B9F4;
    aBlock[3] = &block_descriptor;
    _Block_copy(aBlock);
    v32 = MEMORY[0x1E69E7CC0];
    sub_1B8B6220C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B62264();
    sub_1B8C256D8();
    v20 = sub_1B8C25058();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v23 = sub_1B8C25038();

    qword_1EBAA6740 = v23;

    sub_1B8B622C8();
    v24 = sub_1B8C25538();
    sub_1B8C25018();
    sub_1B8C25078();
    v25 = *(v9 + 8);
    v26 = v13;
    v27 = v29;
    v25(v26, v29);
    sub_1B8C25508();

    sub_1B8B30A44(a4);
    return (v25)(v15, v27);
  }

  return result;
}

uint64_t sub_1B8B621A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B8B621CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B8B6220C()
{
  result = qword_1EBAA69C0;
  if (!qword_1EBAA69C0)
  {
    sub_1B8C24FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA69C0);
  }

  return result;
}

unint64_t sub_1B8B62264()
{
  result = qword_1EBAA69D0;
  if (!qword_1EBAA69D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA69D0);
  }

  return result;
}

unint64_t sub_1B8B622C8()
{
  result = qword_1EBAA69B0;
  if (!qword_1EBAA69B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBAA69B0);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B8B62328(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1B8B62370(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1B8B623E8@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *a1;
  sub_1B8B34CA8();

  v3 = sub_1B8C249E8();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1B8C24F48();
  sub_1B8C24088();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 96) = v15;
  *(a2 + 112) = v16;
  *(a2 + 128) = v17;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  result = v14;
  *(a2 + 64) = v13;
  *(a2 + 80) = v14;
  return result;
}

uint64_t sub_1B8B624E0@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v68 = sub_1B8C24438();
  v61 = *(v68 - 8);
  v2 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v60 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6748, &qword_1B8C29740);
  v63 = *(v69 - 8);
  v4 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v62 = &v55 - v5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6750, &qword_1B8C29748);
  v6 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v55 - v7;
  v8 = sub_1B8C246F8();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6758, &qword_1B8C29750);
  v12 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v14 = &v55 - v13;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6760, &qword_1B8C29758);
  v56 = *(v57 - 8);
  v15 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v17 = &v55 - v16;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6768, &qword_1B8C29760);
  v18 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v20 = &v55 - v19;
  v21 = *(v1 + 40);
  v23 = *(v1 + 24);
  v22 = *(v1 + 32);
  v71 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6770, &qword_1B8C29768);
  sub_1B8B62D94();
  sub_1B8C24DB8();
  if (v21)
  {
    v24 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6780, &qword_1B8C29770) + 36)];
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6788, &qword_1B8C2FC10) + 28);
    v26 = *MEMORY[0x1E697DC10];
    v27 = sub_1B8C23D88();
    (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
    *v24 = swift_getKeyPath();
    v28 = *(v1 + 16);
    KeyPath = swift_getKeyPath();
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    v31 = v65;
    v32 = &v14[*(v65 + 36)];
    *v32 = KeyPath;
    v32[1] = sub_1B8B38834;
    v32[2] = v30;
    v33 = v60;
    sub_1B8C24428();
    v34 = sub_1B8B62F04();
    v35 = sub_1B8B63290(&qword_1EBAA67C8, MEMORY[0x1E697C540]);
    v36 = v62;
    v37 = v68;
    sub_1B8C24A68();
    (*(v61 + 8))(v33, v37);
    sub_1B8B630A0(v14);
    v38 = v63;
    v39 = v69;
    (*(v63 + 16))(v67, v36, v69);
    swift_storeEnumTagMultiPayload();
    sub_1B8B63108();
    v72 = v31;
    v73 = v37;
    v74 = v34;
    v75 = v35;
    swift_getOpaqueTypeConformance2();
    sub_1B8C24598();
    return (*(v38 + 8))(v36, v39);
  }

  else
  {
    v41 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6780, &qword_1B8C29770) + 36)];
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6788, &qword_1B8C2FC10) + 28);
    v43 = *MEMORY[0x1E697DC10];
    v44 = sub_1B8C23D88();
    (*(*(v44 - 8) + 104))(v41 + v42, v43, v44);
    *v41 = swift_getKeyPath();
    v45 = *(v1 + 16);
    v46 = swift_getKeyPath();
    v47 = swift_allocObject();
    *(v47 + 16) = v45;
    v48 = v65;
    v49 = &v14[*(v65 + 36)];
    *v49 = v46;
    v49[1] = sub_1B8B38AE0;
    v49[2] = v47;
    sub_1B8C246E8();
    v50 = sub_1B8B62F04();
    v51 = sub_1B8B63290(&qword_1EBAA5ED8, MEMORY[0x1E697CB70]);
    v52 = v59;
    sub_1B8C24A68();
    (*(v58 + 8))(v11, v52);
    sub_1B8B630A0(v14);
    v72 = v48;
    v73 = v52;
    v74 = v50;
    v75 = v51;
    swift_getOpaqueTypeConformance2();
    v53 = v57;
    sub_1B8C24BC8();
    (*(v56 + 8))(v17, v53);
    *&v20[*(v64 + 36)] = sub_1B8C24CB8();
    sub_1B8B270D0(v20, v67);
    swift_storeEnumTagMultiPayload();
    sub_1B8B63108();
    v54 = sub_1B8B63290(&qword_1EBAA67C8, MEMORY[0x1E697C540]);
    v72 = v48;
    v73 = v68;
    v74 = v50;
    v75 = v54;
    swift_getOpaqueTypeConformance2();
    sub_1B8C24598();
    return sub_1B8B27140(v20);
  }
}

uint64_t sub_1B8B62D50@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[9] = *(v1 + 25);
  return sub_1B8B624E0(a1);
}

unint64_t sub_1B8B62D94()
{
  result = qword_1EBAA6778;
  if (!qword_1EBAA6778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6770, &qword_1B8C29768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6778);
  }

  return result;
}

uint64_t sub_1B8B62E3C(uint64_t a1)
{
  v2 = sub_1B8C23D88();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return MEMORY[0x1B8CC8DB0](v5);
}

unint64_t sub_1B8B62F04()
{
  result = qword_1EBAA6790;
  if (!qword_1EBAA6790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6758, &qword_1B8C29750);
    sub_1B8B62FBC();
    sub_1B8B34CFC(&qword_1EBAA67B8, &qword_1EBAA67C0, &qword_1B8C297E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6790);
  }

  return result;
}

unint64_t sub_1B8B62FBC()
{
  result = qword_1EBAA6798;
  if (!qword_1EBAA6798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6780, &qword_1B8C29770);
    sub_1B8B34CFC(&qword_1EBAA67A0, &qword_1EBAA67A8, &qword_1B8C297D8);
    sub_1B8B34CFC(&qword_1EBAA67B0, &qword_1EBAA6788, &qword_1B8C2FC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6798);
  }

  return result;
}

uint64_t sub_1B8B630A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6758, &qword_1B8C29750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B8B63108()
{
  result = qword_1EBAA67D0;
  if (!qword_1EBAA67D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6768, &qword_1B8C29760);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6760, &qword_1B8C29758);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6758, &qword_1B8C29750);
    sub_1B8C246F8();
    sub_1B8B62F04();
    sub_1B8B63290(&qword_1EBAA5ED8, MEMORY[0x1E697CB70]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1B8B34CFC(&qword_1EBAA6A40, &qword_1EBAA5F98, qword_1B8C29DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA67D0);
  }

  return result;
}

uint64_t sub_1B8B63290(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B8B632E8()
{
  result = qword_1EBAA67D8;
  if (!qword_1EBAA67D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA67E0, qword_1B8C297F0);
    sub_1B8B63108();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6758, &qword_1B8C29750);
    sub_1B8C24438();
    sub_1B8B62F04();
    sub_1B8B63290(&qword_1EBAA67C8, MEMORY[0x1E697C540]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA67D8);
  }

  return result;
}

unint64_t sub_1B8B6340C()
{
  result = qword_1EBAA67E8;
  if (!qword_1EBAA67E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA67E8);
  }

  return result;
}

uint64_t type metadata accessor for ImageWithPreview()
{
  result = qword_1EBAA67F0;
  if (!qword_1EBAA67F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8B634D8()
{
  sub_1B8B61444();
  if (v0 <= 0x3F)
  {
    sub_1B8C237B8();
    if (v1 <= 0x3F)
    {
      sub_1B8B63574();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8B63574()
{
  if (!qword_1EBAA6800)
  {
    type metadata accessor for FullScreenPreviewController(255);
    v0 = sub_1B8C23D98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBAA6800);
    }
  }
}

uint64_t sub_1B8B635E8(void **a1)
{
  v2 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1B8C242A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ImageWithPreview();
  v12 = a1 + *(v11 + 24);
  v13 = *v12;
  v14 = v12[8];

  if ((v14 & 1) == 0)
  {
    sub_1B8C25488();
    v15 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
  }

  v16 = *a1;
  *v5 = *a1;
  swift_storeEnumTagMultiPayload();
  v17 = *(v11 + 20);
  v18 = v16;
  sub_1B8B5FE50(v5, a1 + v17);

  return sub_1B8B63E2C(v5);
}

double sub_1B8B637D8@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B8C242E8();
  v25 = 1;
  sub_1B8B63964(a1, &v13);
  v34 = v21;
  v35 = v22;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v37[8] = v21;
  v37[9] = v22;
  v37[4] = v17;
  v37[5] = v18;
  v37[6] = v19;
  v37[7] = v20;
  v37[0] = v13;
  v37[1] = v14;
  v36 = v23;
  v38 = v23;
  v37[2] = v15;
  v37[3] = v16;
  sub_1B8B34450(&v26, &v12, &qword_1EBAA6818, &qword_1B8C298E0);
  sub_1B8B3433C(v37, &qword_1EBAA6818, &qword_1B8C298E0);
  *&v24[119] = v33;
  *&v24[135] = v34;
  *&v24[151] = v35;
  *&v24[55] = v29;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[103] = v32;
  *&v24[7] = v26;
  *&v24[23] = v27;
  *&v24[39] = v28;
  v5 = *&v24[96];
  *(a2 + 129) = *&v24[112];
  v6 = *&v24[144];
  *(a2 + 145) = *&v24[128];
  *(a2 + 161) = v6;
  v7 = *&v24[32];
  *(a2 + 65) = *&v24[48];
  v8 = *&v24[80];
  *(a2 + 81) = *&v24[64];
  *(a2 + 97) = v8;
  *(a2 + 113) = v5;
  result = *v24;
  v10 = *&v24[16];
  *(a2 + 17) = *v24;
  *(a2 + 33) = v10;
  v24[167] = v36;
  v11 = v25;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 177) = *&v24[160];
  *(a2 + 49) = v7;
  return result;
}

uint64_t sub_1B8B63964@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1B8C24F48();
  sub_1B8C24088();
  *&v30[54] = v35;
  *&v30[70] = v36;
  *&v30[86] = v37;
  *&v30[102] = v38;
  *&v30[6] = v32;
  *&v30[22] = v33;
  *&v30[38] = v34;
  v19[0] = v3;
  v19[1] = 0;
  *v20 = 1;
  v4 = *&v30[32];
  *&v20[50] = *&v30[48];
  v5 = *&v30[16];
  *&v20[34] = *&v30[32];
  v6 = *v30;
  *&v20[18] = *&v30[16];
  *&v20[2] = *v30;
  *&v20[112] = *(&v38 + 1);
  v7 = *&v30[80];
  *&v20[98] = *&v30[96];
  v8 = *&v30[64];
  *&v20[82] = *&v30[80];
  v9 = *&v30[48];
  *&v20[66] = *&v30[64];
  *&v17[7] = v3;
  *&v17[71] = *&v20[48];
  *&v17[55] = *&v20[32];
  *&v17[39] = *&v20[16];
  *&v17[23] = *v20;
  *&v17[135] = *&v20[112];
  *&v17[119] = *&v20[96];
  *&v17[103] = *&v20[80];
  *&v17[87] = *&v20[64];
  v10 = *&v17[64];
  *(a2 + 89) = *&v17[80];
  v11 = *&v17[112];
  *(a2 + 105) = *&v17[96];
  *(a2 + 121) = v11;
  *(a2 + 136) = *&v17[127];
  v12 = *v17;
  *(a2 + 25) = *&v17[16];
  v13 = *&v17[48];
  *(a2 + 41) = *&v17[32];
  *(a2 + 57) = v13;
  *(a2 + 73) = v10;
  *(a2 + 9) = v12;
  v27 = v8;
  v28 = v7;
  *v29 = *&v30[96];
  v31 = 1;
  v18 = 1;
  v16[136] = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 152) = 0;
  *(a2 + 160) = 1;
  v21[0] = v3;
  v21[1] = 0;
  v22 = 1;
  *&v29[14] = *&v30[110];
  v23 = v6;
  v24 = v5;
  v25 = v4;
  v26 = v9;
  v14 = v3;
  sub_1B8B34450(v19, v16, &qword_1EBAA6820, &qword_1B8C298E8);
  return sub_1B8B3433C(v21, &qword_1EBAA6820, &qword_1B8C298E8);
}

uint64_t sub_1B8B63B94(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1B8B63CFC(v1, &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_1B8B63D60(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4);
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6808, &qword_1B8C298D8);
  sub_1B8B34CFC(&qword_1EBAA6810, &qword_1EBAA6808, &qword_1B8C298D8);
  return sub_1B8C24DB8();
}

uint64_t sub_1B8B63CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageWithPreview();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B63D60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageWithPreview();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B63DC4()
{
  v1 = *(type metadata accessor for ImageWithPreview() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1B8B635E8(v2);
}

uint64_t sub_1B8B63E2C(uint64_t a1)
{
  v2 = type metadata accessor for FullScreenPreviewController.Content.PreviewType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8B63E88@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_1EBAA6838);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B8B621CC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1B8B247D4(v4);
}

uint64_t sub_1B8B63F28(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B8B6487C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_1EBAA6838);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1B8B247D4(v3);
  return sub_1B8B30A44(v8);
}

uint64_t sub_1B8B63FF0()
{
  v1 = (v0 + qword_1EBAA6838);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_1B8B247D4(v3);
  return v3;
}

uint64_t sub_1B8B6404C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EBAA6838);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1B8B30A44(v6);
}

char *BatchEvaluationViewController.__allocating_init(scoreController:useNavigationStack:showsCloseButton:onDismiss:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_allocWithZone(v5);
  v10 = &v9[qword_1EBAA6838];
  v11 = type metadata accessor for BatchController();
  *v10 = 0;
  *(v10 + 1) = 0;
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1B8B504A0(a1);
  sub_1B8C24D58();
  v14 = sub_1B8C244B8();
  v15 = &v14[qword_1EBAA6838];
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];
  *v15 = a4;
  v15[1] = a5;
  v18 = v14;

  sub_1B8B30A44(v16);
  [v18 setModalInPresentation_];

  return v18;
}

char *BatchEvaluationViewController.init(scoreController:useNavigationStack:showsCloseButton:onDismiss:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (v5 + qword_1EBAA6838);
  v10 = type metadata accessor for BatchController();
  *v9 = 0;
  v9[1] = 0;
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1B8B504A0(a1);
  sub_1B8C24D58();
  v13 = sub_1B8C244B8();
  v14 = &v13[qword_1EBAA6838];
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];
  *v14 = a4;
  v14[1] = a5;
  v17 = v13;

  sub_1B8B30A44(v15);
  [v17 setModalInPresentation_];

  return v17;
}

void sub_1B8B64388(uint64_t a1)
{
  v1 = (a1 + qword_1EBAA6838);
  *v1 = 0;
  v1[1] = 0;
  sub_1B8C258A8();
  __break(1u);
}

uint64_t sub_1B8B643F8(int a1, int a2, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  _s8Feedback29BatchEvaluationViewControllerC010shouldShowB2UI10completionyySbc_tFZ_0(sub_1B8B64864, v4);
}

id sub_1B8B6446C(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BatchEvaluationViewController();
  objc_msgSendSuper2(&v8, sel_viewWillDisappear_, a1 & 1);
  result = [v1 isBeingDismissed];
  if (result)
  {
    v4 = &v1[qword_1EBAA6838];
    result = swift_beginAccess();
    v5 = *v4;
    if (*v4)
    {
      v6 = *(v4 + 1);

      v5(v7);
      return sub_1B8B30A44(v5);
    }
  }

  return result;
}

void sub_1B8B64518(void *a1, uint64_t a2, uint64_t a3)
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for BatchEvaluationViewController();
  v4 = v9.receiver;
  objc_msgSendSuper2(&v9, sel_viewWillDisappear_, a3);
  if ([v4 isBeingDismissed] && (v5 = &v4[qword_1EBAA6838], swift_beginAccess(), (v6 = *v5) != 0))
  {
    v7 = *(v5 + 1);

    v6(v8);

    sub_1B8B30A44(v6);
  }

  else
  {
  }
}

id BatchEvaluationViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BatchEvaluationViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for BatchEvaluationViewController()
{
  result = qword_1EBAA6840;
  if (!qword_1EBAA6840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8B6487C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t type metadata accessor for ActionButton()
{
  result = qword_1EBAA6850;
  if (!qword_1EBAA6850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8B64938()
{
  type metadata accessor for BatchInteraction(319);
  if (v0 <= 0x3F)
  {
    sub_1B8B3A760(319, &qword_1EBAA5FB8, type metadata accessor for BatchController);
    if (v1 <= 0x3F)
    {
      sub_1B8B3A760(319, &qword_1EBAA5FC0, type metadata accessor for FBKEvaluationController);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B8B64A38()
{
  v1 = sub_1B8C242A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for ActionButton() + 24));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1B8C25488();
    v9 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

id sub_1B8B64B88()
{
  v1 = sub_1B8C242A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for ActionButton() + 28);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {

    return v7;
  }

  else
  {
    v10[0] = *v6;

    sub_1B8C25488();
    v9 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();
    sub_1B8B3B060(v10[0], 0);
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }
}

uint64_t sub_1B8B64D04()
{
  v1 = *v0;
  v2 = [objc_opt_self() mainBundle];
  v3 = sub_1B8C23348();

  return v3;
}

uint64_t sub_1B8B64E28@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = sub_1B8C23ED8();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B8C24038();
  v40 = *(v5 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActionButton();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6860, &qword_1B8C299B0);
  v39 = *(v12 - 8);
  v13 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - v14;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6868, &qword_1B8C299B8);
  v41 = *(v43 - 8);
  v16 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v18 = &v38 - v17;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6870, &qword_1B8C299C0);
  v44 = *(v46 - 8);
  v19 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v42 = &v38 - v20;
  sub_1B8B65CA4(v1, &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = swift_allocObject();
  sub_1B8B65D08(&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v50 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6878, &qword_1B8C299C8);
  sub_1B8B34CFC(&qword_1EBAA6880, &qword_1EBAA6878, &qword_1B8C299C8);
  v23 = v1;
  sub_1B8C24DB8();
  sub_1B8C24028();
  v24 = sub_1B8B34CFC(&qword_1EBAA6888, &qword_1EBAA6860, &qword_1B8C299B0);
  v25 = sub_1B8B65F8C(&qword_1EBAA59E0, MEMORY[0x1E697C248]);
  sub_1B8C24A68();
  v26 = v5;
  (*(v40 + 8))(v8, v5);
  (*(v39 + 8))(v15, v12);
  v27 = *v23;
  if (*v23)
  {
    v28 = v45;
    if (v27 == 1)
    {
      sub_1B8C23EA8();
    }

    else
    {
      sub_1B8C23EB8();
    }
  }

  else
  {
    v28 = v45;
    sub_1B8C23EC8();
  }

  v29 = v48;
  sub_1B8C23F28();
  v53 = v12;
  v54 = v26;
  v55 = v24;
  v56 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v42;
  v31 = v43;
  sub_1B8C24AF8();
  (*(v47 + 8))(v28, v29);
  (*(v41 + 8))(v18, v31);
  if (v27 > 1)
  {
    v35 = 0xEF65636E65697265;
    v34 = 0x7078652070696B53;
  }

  else
  {
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_1B8C257E8();

    v53 = 0xD000000000000013;
    v54 = 0x80000001B8C330F0;
    v33 = sub_1B8B64D04();
    MEMORY[0x1B8CC9EB0](v33);

    v34 = v53;
    v35 = v54;
  }

  v53 = v34;
  v54 = v35;
  v51 = v31;
  v52 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1B8B34CA8();
  v36 = v46;
  sub_1B8C24B38();

  return (*(v44 + 8))(v32, v36);
}

void sub_1B8B654C4(unsigned __int8 *a1)
{
  sub_1B8B64A38();
  v2 = *a1;
  v3 = *(type metadata accessor for ActionButton() + 20);
  v4 = sub_1B8B64B88();
  sub_1B8B4D64C(v2, &a1[v3], v4);
}

double sub_1B8B65544@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1B8C242E8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6890, &qword_1B8C299D0) + 44);
  *v4 = sub_1B8C24468();
  *(v4 + 8) = 0x4020000000000000;
  *(v4 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6898, &qword_1B8C299D8);
  sub_1B8B65668(a1, v4 + *(v5 + 44));
  sub_1B8C24C68();
  KeyPath = swift_getKeyPath();
  v7 = sub_1B8C23E48();
  v8 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA68A0, &qword_1B8C29A10) + 36));
  *v8 = KeyPath;
  v8[1] = v7;
  LOBYTE(v7) = sub_1B8C24808();
  v9 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA68A8, &qword_1B8C29A18) + 36);
  *v9 = v7;
  result = 0.0;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 1;
  return result;
}

uint64_t sub_1B8B65668@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v50 = a1;
  v54 = a2;
  v53 = sub_1B8C24FB8();
  v52 = *(v53 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1B8C24F98();
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5CD0, &qword_1B8C278C8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA68B0, &qword_1B8C29A20);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v55 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v46 - v19);
  sub_1B8C07640(0, *v2);
  v47 = sub_1B8C24D08();
  v21 = sub_1B8C248C8();
  v22 = *(v21 - 8);
  v48 = *(v22 + 56);
  v49 = v22 + 56;
  v48(v13, 1, 1, v21);
  v46 = sub_1B8C24908();
  sub_1B8B3433C(v13, &qword_1EBAA5CD0, &qword_1B8C278C8);
  KeyPath = swift_getKeyPath();
  sub_1B8C24F88();
  sub_1B8C24FA8();
  v24 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA68B8, &qword_1B8C29A58) + 36));
  LODWORD(v2) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA68C0, &qword_1B8C29A60) + 28);
  sub_1B8B65F8C(&qword_1EBAA68C8, MEMORY[0x1E6982178]);
  v25 = v51;
  sub_1B8C24098();
  (*(v52 + 8))(v5, v53);
  (*(v6 + 8))(v9, v25);
  *v24 = swift_getKeyPath();
  *v20 = v47;
  v20[1] = KeyPath;
  v20[2] = v46;
  *(v20 + *(v15 + 44)) = sub_1B8C24C68();
  v65 = sub_1B8B64D04();
  v66 = v26;
  sub_1B8B34CA8();
  v27 = sub_1B8C249E8();
  v29 = v28;
  LOBYTE(v15) = v30;
  v48(v13, 1, 1, v21);
  sub_1B8C24908();
  sub_1B8B3433C(v13, &qword_1EBAA5CD0, &qword_1B8C278C8);
  v31 = sub_1B8C249B8();
  v33 = v32;
  LOBYTE(v13) = v34;
  v36 = v35;

  sub_1B8B34060(v27, v29, v15 & 1);

  v37 = swift_getKeyPath();
  v38 = sub_1B8C24C68();
  LOBYTE(v13) = v13 & 1;
  v59 = v13;
  v57 = 0;
  v39 = v55;
  sub_1B8B34450(v20, v55, &qword_1EBAA68B0, &qword_1B8C29A20);
  v40 = v39;
  v41 = v54;
  sub_1B8B34450(v40, v54, &qword_1EBAA68B0, &qword_1B8C29A20);
  v42 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA68D0, &qword_1B8C29AC8) + 48);
  *&v60 = v31;
  *(&v60 + 1) = v33;
  LOBYTE(v61) = v13;
  *(&v61 + 1) = *v58;
  DWORD1(v61) = *&v58[3];
  *(&v61 + 1) = v36;
  *&v62 = v37;
  *(&v62 + 1) = 1;
  LOBYTE(v63) = 0;
  *(&v63 + 1) = *v56;
  DWORD1(v63) = *&v56[3];
  *(&v63 + 1) = v38;
  v64 = 1;
  *(v42 + 64) = 1;
  v43 = v61;
  *v42 = v60;
  *(v42 + 16) = v43;
  v44 = v63;
  *(v42 + 32) = v62;
  *(v42 + 48) = v44;
  sub_1B8B34450(&v60, &v65, &qword_1EBAA68D8, &qword_1B8C29AD0);
  sub_1B8B3433C(v20, &qword_1EBAA68B0, &qword_1B8C29A20);
  v65 = v31;
  v66 = v33;
  v67 = v13;
  *v68 = *v58;
  *&v68[3] = *&v58[3];
  v69 = v36;
  v70 = v37;
  v71 = 1;
  v72 = 0;
  *v73 = *v56;
  *&v73[3] = *&v56[3];
  v74 = v38;
  v75 = 1;
  sub_1B8B3433C(&v65, &qword_1EBAA68D8, &qword_1B8C29AD0);
  return sub_1B8B3433C(v55, &qword_1EBAA68B0, &qword_1B8C29A20);
}

uint64_t sub_1B8B65CA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B65D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B8B65D6C()
{
  v1 = *(type metadata accessor for ActionButton() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_1B8B654C4(v2);
}

unint64_t sub_1B8B65DD4()
{
  result = qword_1EBAA68E0;
  if (!qword_1EBAA68E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA68E8, &qword_1B8C29AD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6868, &qword_1B8C299B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6860, &qword_1B8C299B0);
    sub_1B8C24038();
    sub_1B8B34CFC(&qword_1EBAA6888, &qword_1EBAA6860, &qword_1B8C299B0);
    sub_1B8B65F8C(&qword_1EBAA59E0, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1B8B65F8C(&qword_1EBAA5F58, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA68E0);
  }

  return result;
}

uint64_t sub_1B8B65F8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8B65FD4()
{
  swift_getKeyPath();
  sub_1B8B66400();
  sub_1B8C23588();

  return *(v0 + 16);
}

uint64_t sub_1B8B66044(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B66400();
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8B66124()
{
  swift_getKeyPath();
  sub_1B8B66400();
  sub_1B8C23588();

  return *(v0 + 17);
}

uint64_t sub_1B8B66194(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B66400();
    sub_1B8C23578();
  }

  return result;
}

uint64_t sub_1B8B66274()
{
  v1 = OBJC_IVAR____TtC8Feedback15DebugController___observationRegistrar;
  v2 = sub_1B8C235C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugController()
{
  result = qword_1EBAA68F8;
  if (!qword_1EBAA68F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8B66364()
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

unint64_t sub_1B8B66400()
{
  result = qword_1EBAA6908;
  if (!qword_1EBAA6908)
  {
    type metadata accessor for DebugController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6908);
  }

  return result;
}

void sub_1B8B66594(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_1B8B46130(0, &qword_1EBAA69D8, 0x1E69DD190);
  sub_1B8B67F3C();
  sub_1B8C253E8();
  v12 = a1;
  v8 = a4;
  v9 = [v12 nextResponder];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1B8C253C8();

    [v10 *a5];
  }

  else
  {
  }
}

void sub_1B8B6671C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v54 = a4;
  v7 = sub_1B8C24FD8();
  v57 = *(v7 - 8);
  v8 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B8C25008();
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B8C25028();
  v58 = *(v15 - 8);
  v16 = *(v58 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v51 - v20;
  sub_1B8B34450(a1, v73, &unk_1EBAA7DF0, &unk_1B8C2D750);
  if (!v74)
  {
    sub_1B8B3433C(v73, &unk_1EBAA7DF0, &unk_1B8C2D750);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    if (qword_1EBAA5978 != -1)
    {
      swift_once();
    }

    v38 = sub_1B8C23C38();
    __swift_project_value_buffer(v38, qword_1EBAB3A30);
    v39 = a2;
    v40 = sub_1B8C23C18();
    v41 = sub_1B8C25478();

    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_14;
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138412290;
    if (a2)
    {
      v44 = a2;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      v46 = v45;
    }

    else
    {
      v45 = 0;
      v46 = 0;
    }

    *(v42 + 4) = v45;
    *v43 = v46;
    _os_log_impl(&dword_1B8B22000, v40, v41, "Failed to evaluate webview height: %@", v42, 0xCu);
    sub_1B8B3433C(v43, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v43, -1, -1);
    v47 = v42;
    goto LABEL_13;
  }

  v22 = a3 + OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent;
  v23 = *(a3 + OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent + 16);
  v67 = *(a3 + OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent);
  v68 = v23;
  v24 = *(a3 + OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent + 48);
  v69 = *(a3 + OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent + 32);
  v70 = v24;
  v71 = *(a3 + OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent + 64);
  v25 = *(&v67 + 1);
  if (*(&v67 + 1))
  {
    v26 = v68;
    v27 = v67;
    v28 = *(v22 + 40);
    v75 = *(v22 + 24);
    v76 = v28;
    v77 = *(v22 + 56);
    v59 = v67;
    v60 = v68;
    v64[9] = v72;
    v29 = *(v22 + 48);
    v65[2] = *(v22 + 32);
    v65[3] = v29;
    v66 = *(v22 + 64);
    v30 = *(v22 + 16);
    v65[0] = *v22;
    v65[1] = v30;
    sub_1B8B67D9C(v65, v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA69A8, &qword_1B8C29D08);
    sub_1B8C24E48();
    sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
    v52 = sub_1B8C25538();
    sub_1B8C25018();
    sub_1B8C25078();
    v31 = *(v58 + 8);
    v58 += 8;
    v53 = v31;
    v31(v19, v15);
    v32 = swift_allocObject();
    v33 = v54;
    *(v32 + 16) = v54;
    *(v32 + 24) = v27;
    *(v32 + 32) = v25;
    *(v32 + 40) = v26;
    v34 = v76;
    *(v32 + 48) = v75;
    *(v32 + 64) = v34;
    *(v32 + 80) = v77;
    v62 = sub_1B8B67DD4;
    v63 = v32;
    *&v59 = MEMORY[0x1E69E9820];
    *(&v59 + 1) = 1107296256;
    v60 = sub_1B8B8B9F4;
    v61 = &block_descriptor_13;
    v51 = _Block_copy(&v59);
    sub_1B8B34450(&v67, v64, &qword_1EBAA69B8, &unk_1B8C29D10);
    v35 = v33;

    sub_1B8C24FF8();
    v64[0] = MEMORY[0x1E69E7CC0];
    sub_1B8B6220C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8B34CFC(&qword_1EBAA69D0, &qword_1EBAA77D0, &qword_1B8C2B2A0);
    sub_1B8C256D8();
    v37 = v51;
    v36 = v52;
    MEMORY[0x1B8CCA1C0](v21, v14, v10, v51);
    _Block_release(v37);

    sub_1B8B3433C(&v67, &qword_1EBAA69B8, &unk_1B8C29D10);
    (*(v57 + 8))(v10, v7);
    (*(v55 + 8))(v14, v56);
    v53(v21, v15);
    return;
  }

  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v48 = sub_1B8C23C38();
  __swift_project_value_buffer(v48, qword_1EBAB3A30);
  v40 = sub_1B8C23C18();
  v49 = sub_1B8C25478();
  if (os_log_type_enabled(v40, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_1B8B22000, v40, v49, "parent webview is nil", v50, 2u);
    v47 = v50;
LABEL_13:
    MEMORY[0x1B8CCB0E0](v47, -1, -1);
  }

LABEL_14:
}

void sub_1B8B66E14(void *a1, uint64_t a2)
{
  v4 = sub_1B8C250F8();
  v5 = swift_allocObject();
  v6 = *(a2 + 48);
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(a2 + 64);
  v7 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v7;
  aBlock[4] = sub_1B8B67DE0;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B67368;
  aBlock[3] = &block_descriptor_19;
  v8 = _Block_copy(aBlock);
  sub_1B8B67D9C(a2, v9);

  [a1 evaluateJavaScript:v4 completionHandler:v8];
  _Block_release(v8);
}

uint64_t sub_1B8B66F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B8C24FD8();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B8C25008();
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B8C25028();
  v28 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v26 - v18;
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v26 = sub_1B8C25538();
  sub_1B8C25018();
  sub_1B8C25078();
  v27 = *(v13 + 8);
  v27(v17, v12);
  v20 = swift_allocObject();
  v21 = *(a3 + 48);
  *(v20 + 48) = *(a3 + 32);
  *(v20 + 64) = v21;
  *(v20 + 80) = *(a3 + 64);
  v22 = *(a3 + 16);
  *(v20 + 16) = *a3;
  *(v20 + 32) = v22;
  aBlock[4] = sub_1B8B67E48;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_25;
  v23 = _Block_copy(aBlock);
  sub_1B8B67D9C(a3, v32);

  sub_1B8C24FF8();
  v32[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B6220C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B34CFC(&qword_1EBAA69D0, &qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8C256D8();
  v24 = v26;
  MEMORY[0x1B8CCA1C0](v19, v11, v7, v23);
  _Block_release(v23);

  (*(v31 + 8))(v7, v4);
  (*(v29 + 8))(v11, v30);
  return (v27)(v19, v28);
}

uint64_t sub_1B8B672FC()
{
  sub_1B8C24F58();
  sub_1B8C23F08();
}

uint64_t sub_1B8B67368(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v9 = a2;
    sub_1B8B5FE40(&v9, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  swift_unknownObjectRetain();
  v7 = a3;
  v6(v11, a3);

  return sub_1B8B3433C(v11, &unk_1EBAA7DF0, &unk_1B8C2D750);
}

id sub_1B8B675BC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B8B67688(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1B8B676D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1B8B6773C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69853A8]) init];
  [v1 _setColorFilterEnabled_];
  [v1 _setDrawsBackground_];
  v2 = [objc_allocWithZone(type metadata accessor for UnScrollableWebView()) initWithFrame:v1 configuration:{0.0, 0.0, 0.0, 0.0}];

  v3 = v0[6];
  v4 = v0[7];
  v5 = v2;
  v6 = sub_1B8C250F8();

  v7 = sub_1B8C250F8();
  [v5 setNavigationDelegate_];

  return v5;
}

id sub_1B8B67870()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  return sub_1B8B6773C();
}

uint64_t sub_1B8B67908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8B67A50();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1B8B6796C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B8B67A50();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1B8B679D0()
{
  sub_1B8B67A50();
  sub_1B8C24558();
  __break(1u);
}

unint64_t sub_1B8B679FC()
{
  result = qword_1EBAA6988;
  if (!qword_1EBAA6988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6988);
  }

  return result;
}

unint64_t sub_1B8B67A50()
{
  result = qword_1EBAA6990;
  if (!qword_1EBAA6990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6990);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_1B8B67AC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

double sub_1B8B67B00@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = *(v1 + 32);
  __src = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA69E8, &qword_1B8C29DB0);
  sub_1B8C24D88();
  v4 = v31;
  v5 = v32;
  v22[5] = *(v1 + 48);
  __src = *(v1 + 48);
  sub_1B8C24D88();
  v6 = v31;
  v19 = *(&v31 + 1);
  v20 = v31;
  v7 = v32;
  sub_1B8C257E8();

  *&v31 = 0xD000000000000021;
  *(&v31 + 1) = 0x80000001B8C33390;
  MEMORY[0x1B8CC9EB0](*v2, *(v2 + 8));
  MEMORY[0x1B8CC9EB0](0x3E79646F622F3CLL, 0xE700000000000000);
  v8 = [objc_allocWithZone(type metadata accessor for BaseWebView.Controller()) init];
  __src = v4;
  v25 = v32;
  v26 = v6;
  v27 = v32;
  v28 = 0xD000000000000021;
  v29 = 0x80000001B8C33390;
  v30 = v8;
  v10 = *&v8[OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent + 32];
  v9 = *&v8[OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent + 48];
  v11 = *&v8[OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent + 16];
  v35 = *&v8[OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent + 64];
  v33 = v10;
  v34 = v9;
  v32 = v11;
  v31 = *&v8[OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent];
  memmove(&v8[OBJC_IVAR____TtCV8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D11BaseWebView10Controller_parent], &__src, 0x48uLL);
  v12 = v8;
  sub_1B8B67D9C(&__src, v22);
  sub_1B8B3433C(&v31, &qword_1EBAA69B8, &unk_1B8C29D10);

  v13 = *(v2 + 16);
  LOBYTE(v2) = *(v2 + 24);
  v22[0] = v23;
  sub_1B8C24D68();
  sub_1B8C24F48();
  sub_1B8C23E38();
  v14 = sub_1B8C24CB8();
  v15 = sub_1B8C24808();
  v16 = sub_1B8C24CA8();
  sub_1B8C24D68();
  result = v21;
  *a1 = v20;
  *(a1 + 16) = v5;
  *(a1 + 24) = v20;
  *(a1 + 32) = v19;
  *(a1 + 40) = v7;
  *(a1 + 48) = 0xD000000000000021;
  *(a1 + 56) = 0x80000001B8C33390;
  *(a1 + 64) = v12;
  v18 = v22[1];
  *(a1 + 72) = v22[0];
  *(a1 + 88) = v18;
  *(a1 + 104) = v22[2];
  *(a1 + 120) = v14;
  *(a1 + 128) = v15;
  *(a1 + 136) = v16;
  *(a1 + 144) = v21;
  return result;
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1B8B67E50()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA69A8, &qword_1B8C29D08);
  return sub_1B8C24E48();
}

uint64_t sub_1B8B67EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1B8B67F3C()
{
  result = qword_1EBAA69E0;
  if (!qword_1EBAA69E0)
  {
    sub_1B8B46130(255, &qword_1EBAA69D8, 0x1E69DD190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA69E0);
  }

  return result;
}

double sub_1B8B67FA4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_1B8C24D58();
  sub_1B8C24D58();
  result = v11;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  *(a5 + 32) = v11;
  *(a5 + 40) = v12;
  *(a5 + 48) = v11;
  *(a5 + 56) = v12;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B8B68074(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1B8B680BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BatchWebView.SizeMode(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for BatchWebView.SizeMode(uint64_t result, int a2, int a3)
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

uint64_t sub_1B8B6819C(uint64_t a1)
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

uint64_t sub_1B8B681B8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_1B8B681E8()
{
  result = qword_1EBAA69F0;
  if (!qword_1EBAA69F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA69F8, &qword_1B8C29DC8);
    sub_1B8B68274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA69F0);
  }

  return result;
}

unint64_t sub_1B8B68274()
{
  result = qword_1EBAA6A00;
  if (!qword_1EBAA6A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6A08, &qword_1B8C29DD0);
    sub_1B8B6832C();
    sub_1B8B34CFC(&qword_1EBAA6A40, &qword_1EBAA5F98, qword_1B8C29DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6A00);
  }

  return result;
}

unint64_t sub_1B8B6832C()
{
  result = qword_1EBAA6A10;
  if (!qword_1EBAA6A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6A18, &qword_1B8C29DD8);
    sub_1B8B683E4();
    sub_1B8B34CFC(&qword_1EBAA6A30, &qword_1EBAA6A38, &qword_1B8C29DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6A10);
  }

  return result;
}

unint64_t sub_1B8B683E4()
{
  result = qword_1EBAA6A20;
  if (!qword_1EBAA6A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA6A28, &qword_1B8C29DE0);
    sub_1B8B679FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA6A20);
  }

  return result;
}

uint64_t sub_1B8B68488()
{
  v54 = type metadata accessor for BatchInteraction.ContentPolarity(0);
  v1 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6008, &qword_1B8C2A5B0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v52 - v7;
  v8 = sub_1B8C237B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v52 - v14;
  v16 = type metadata accessor for BatchInteraction(0);
  v17 = *(v16 + 20);
  v55 = v0;
  v18 = *(v0 + v17);
  sub_1B8C237C8();
  v19 = *MEMORY[0x1E699C2B8];
  v57 = *(v9 + 104);
  v57(v13, v19, v8);
  v20 = MEMORY[0x1B8CC8470](v15, v13);
  v21 = *(v9 + 8);
  v21(v13, v8);
  v21(v15, v8);
  if (v20)
  {
    goto LABEL_2;
  }

  if (qword_1EBAA5940 != -1)
  {
    swift_once();
  }

  v24 = qword_1EBAB39F0;
  sub_1B8C237C8();
  LOBYTE(v24) = sub_1B8B4E0BC(v15, v24);
  v21(v15, v8);
  if ((v24 & 1) == 0)
  {
    if (qword_1EBAA5938 != -1)
    {
      swift_once();
    }

    v27 = qword_1EBAB39E8;
    sub_1B8C237C8();
    LOBYTE(v27) = sub_1B8B4E0BC(v15, v27);
    v21(v15, v8);
    v28 = v57;
    if ((v27 & 1) == 0)
    {
      sub_1B8C237C8();
      v28(v13, *MEMORY[0x1E699C2C0], v8);
      v33 = MEMORY[0x1B8CC8470](v15, v13);
      v21(v13, v8);
      v21(v15, v8);
      if ((v33 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA65E8, &qword_1B8C2AEF0);
        v43 = v28;
        v44 = *(v9 + 72);
        v45 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v56 = 2 * v44;
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1B8C293F0;
        v47 = v46 + v45;
        v43(v47, *MEMORY[0x1E699C2C8], v8);
        v43((v47 + v44), *MEMORY[0x1E699C320], v8);
        v43((v47 + v56), *MEMORY[0x1E699C258], v8);
        sub_1B8C237C8();
        sub_1B8B54E08(v15, v46);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v21(v15, v8);
        v22 = [objc_opt_self() mainBundle];
        goto LABEL_3;
      }
    }

LABEL_2:
    v22 = [objc_opt_self() mainBundle];
LABEL_3:
    v23 = sub_1B8C23348();
    goto LABEL_32;
  }

  v25 = v56;
  sub_1B8B68D5C(v55 + *(v16 + 28), v56);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B8B68E28(v25, type metadata accessor for BatchInteraction.ContentPolarity);
    v26 = 0;
  }

  else
  {
    v29 = v25;
    v30 = v52;
    sub_1B8B46178(v29, v52);
    v31 = v53;
    sub_1B8B46178(v30, v53);
    v32 = type metadata accessor for BatchInteraction.ContentPreview(0);
    if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
    {
      sub_1B8B68DC0(v31);
    }

    else if (swift_getEnumCaseMultiPayload() == 5)
    {
      v34 = *v31;
      v35 = *(v31 + 8);
      v36 = *(v31 + 16);
      v37 = *(v31 + 24);
      v38 = *(v31 + 32);
      v39 = *(v31 + 40);
      v40 = *(v31 + 48);
      v41 = *(v31 + 56);
      v42 = *(v31 + 64);
      if (*(v31 + 72))
      {
        sub_1B8B3B06C(v34, v35, v36, v37, v38, v39, v40, v41, v42, *(v31 + 72));
      }

      else
      {
        if ((v35 & 1) == 0)
        {
          v51 = v34[2];
          sub_1B8B3B06C(v34, v35, v36, v37, v38, v39, v40, v41, v42, 0);
          v26 = v51 > 1;
          goto LABEL_25;
        }

        sub_1B8B3B06C(v34, v35, v36, v37, v38, v39, v40, v41, v42, 0);
      }
    }

    else
    {
      sub_1B8B68E28(v31, type metadata accessor for BatchInteraction.ContentPreview);
    }

    v26 = 0;
  }

LABEL_25:
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_1B8C257E8();

  v58 = 0xD00000000000001ELL;
  v59 = 0x80000001B8C335A0;
  if (v26)
  {
    v48 = 0x61737265766E6F63;
  }

  else
  {
    v48 = 0x6567617373656DLL;
  }

  if (v26)
  {
    v49 = 0xEC0000006E6F6974;
  }

  else
  {
    v49 = 0xE700000000000000;
  }

  MEMORY[0x1B8CC9EB0](v48, v49);

  MEMORY[0x1B8CC9EB0](63, 0xE100000000000000);
  v22 = [objc_opt_self() mainBundle];
  v23 = sub_1B8C23348();

LABEL_32:

  return v23;
}

uint64_t sub_1B8B68D5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchInteraction.ContentPolarity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B68DC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6008, &qword_1B8C2A5B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8B68E28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B8B68E88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  *a2 = *(v3 + 24);
}

uint64_t sub_1B8B68F34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1B8B4ED2C(v4);
}

uint64_t sub_1B8B68F60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  *a2 = *(v3 + 32);
}

uint64_t sub_1B8B6900C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1B8B4EF04(v4);
}

uint64_t sub_1B8B69038@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  *a2 = *(v3 + 40);
}

uint64_t sub_1B8B690E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1B8B4F0DC(v4);
}

uint64_t sub_1B8B69110@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  *a2 = *(v3 + 48);
}

uint64_t sub_1B8B691BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1B8B4F2B4(v4);
}

uint64_t sub_1B8B691E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B70B14(&qword_1EBAA5F60, type metadata accessor for ScoreController);
  sub_1B8C23588();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1B8B692B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B70B14(&qword_1EBAA5F60, type metadata accessor for ScoreController);
  sub_1B8C23588();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t BatchEvaluationView.init(scoreController:useNavigationStack:showsCloseButton:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for BatchController();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1B8B504A0(a1);

  sub_1B8C24D58();

  *a4 = v12;
  *(a4 + 8) = v13;
  *(a4 + 17) = a3;
  *(a4 + 16) = a2;
  return result;
}

uint64_t sub_1B8B6942C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B8B70B14(&qword_1EBAA6908, type metadata accessor for DebugController);
  sub_1B8C23588();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1B8B6955C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_1B8C245F8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return a3();
}

uint64_t BatchEvaluationView.init(controller:useNavigationStack:showsCloseButton:)@<X0>(char a1@<W1>, char a2@<W2>, uint64_t a3@<X8>)
{
  type metadata accessor for BatchController();
  result = sub_1B8C24D58();
  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = a1;
  *(a3 + 17) = a2;
  return result;
}

uint64_t BatchEvaluationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6A90, &qword_1B8C29E20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v39 - v4;
  v45 = type metadata accessor for BatchEvaluationViewContent();
  v6 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6A98, &qword_1B8C29E28);
  v9 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v39 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AA0, &qword_1B8C29E30);
  v40 = *(v43 - 8);
  v12 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AA8, &qword_1B8C29E38);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v39 - v17;
  v18 = *v1;
  v19 = *(v1 + 8);
  v20 = *(v1 + 16);
  v41 = *(v1 + 17);
  v21 = sub_1B8C23638();
  v50 = v21;
  v51 = sub_1B8B70B14(&unk_1EBAA7810, MEMORY[0x1E699C198]);
  v22 = __swift_allocate_boxed_opaque_existential_1(&v48);
  (*(*(v21 - 8) + 104))(v22, *MEMORY[0x1E699C188], v21);
  LOBYTE(v21) = sub_1B8C235D8();
  v23 = __swift_destroy_boxed_opaque_existential_0(&v48);
  if (v21)
  {
    v39 = v2;
    if (v20)
    {
      MEMORY[0x1EEE9AC00](v23);
      *(&v39 - 4) = v18;
      *(&v39 - 3) = v19;
      *(&v39 - 16) = 1;
      *(&v39 - 15) = v41;
      sub_1B8B70B14(&qword_1EBAA6AC8, type metadata accessor for BatchEvaluationViewContent);
      sub_1B8C24008();
      v24 = v40;
      v25 = v43;
      (*(v40 + 16))(v11, v14, v43);
      swift_storeEnumTagMultiPayload();
      sub_1B8B34CFC(&qword_1EBAA6AC0, &qword_1EBAA6AA0, &qword_1B8C29E30);
      v26 = v44;
      sub_1B8C24598();
      (*(v24 + 8))(v14, v25);
    }

    else
    {
      v48 = v18;
      *&v49 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AD8, &qword_1B8C29E48);
      sub_1B8C24D68();
      v33 = v47;
      *v8 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AE0, &qword_1B8C29E80);
      swift_storeEnumTagMultiPayload();
      v34 = v45;
      v35 = *(v45 + 20);
      *(v8 + v35) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D70, &qword_1B8C27960);
      swift_storeEnumTagMultiPayload();
      *(v8 + v34[7]) = 1;
      v36 = v34[8];
      v37 = (v8 + v34[6]);
      v47 = v33;
      type metadata accessor for BatchController();
      sub_1B8C24D58();
      v38 = v49;
      *v37 = v48;
      v37[1] = v38;
      *(v8 + v36) = v41;
      sub_1B8B70E3C(v8, v11, type metadata accessor for BatchEvaluationViewContent);
      swift_storeEnumTagMultiPayload();
      sub_1B8B34CFC(&qword_1EBAA6AC0, &qword_1EBAA6AA0, &qword_1B8C29E30);
      sub_1B8B70B14(&qword_1EBAA6AC8, type metadata accessor for BatchEvaluationViewContent);
      v26 = v44;
      sub_1B8C24598();
      sub_1B8B70EA4(v8, type metadata accessor for BatchEvaluationViewContent);
    }

    sub_1B8B34450(v26, v5, &qword_1EBAA6AA8, &qword_1B8C29E38);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AB0, &qword_1B8C29E40);
    sub_1B8B6F8C8();
    sub_1B8B34CFC(&qword_1EBAA6AD0, &qword_1EBAA6AB0, &qword_1B8C29E40);
    sub_1B8C24598();
    return sub_1B8B3433C(v26, &qword_1EBAA6AA8, &qword_1B8C29E38);
  }

  else
  {
    v27 = sub_1B8C24468();
    sub_1B8B69FC0(&v48);
    v28 = v48;
    v29 = v50;
    v30 = v51;
    v31 = v49;
    LOBYTE(v48) = 0;
    LOBYTE(v47) = v50;
    *v5 = v27;
    *(v5 + 1) = 0x4020000000000000;
    v5[16] = 0;
    *(v5 + 3) = v28;
    *(v5 + 2) = v31;
    v5[48] = v29;
    *(v5 + 7) = v30;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AB0, &qword_1B8C29E40);
    sub_1B8B6F8C8();
    sub_1B8B34CFC(&qword_1EBAA6AD0, &qword_1EBAA6AB0, &qword_1B8C29E40);
    return sub_1B8C24598();
  }
}

uint64_t sub_1B8B69DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t *a4@<X8>)
{
  v4 = HIBYTE(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AD8, &qword_1B8C29E48);
  sub_1B8C24D68();
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AE0, &qword_1B8C29E80);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for BatchEvaluationViewContent();
  v7 = v6[5];
  *(a4 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D70, &qword_1B8C27960);
  swift_storeEnumTagMultiPayload();
  *(a4 + v6[7]) = 1;
  v8 = v6[8];
  v9 = (a4 + v6[6]);
  type metadata accessor for BatchController();
  result = sub_1B8C24D58();
  *v9 = a1;
  v9[1] = a2;
  *(a4 + v8) = v4 & 1;
  return result;
}

uint64_t BatchEvaluationViewContent.init(controller:showsCloseButton:)@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AE0, &qword_1B8C29E80);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for BatchEvaluationViewContent();
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D70, &qword_1B8C27960);
  swift_storeEnumTagMultiPayload();
  *(a2 + v4[7]) = 1;
  v6 = v4[8];
  v7 = (a2 + v4[6]);
  type metadata accessor for BatchController();
  result = sub_1B8C24D58();
  *v7 = v9;
  v7[1] = v10;
  *(a2 + v6) = a1;
  return result;
}

uint64_t sub_1B8B69FC0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B8C24D08();
  sub_1B8C243A8();
  v3 = sub_1B8C249C8();
  v5 = v4;
  v7 = v6;
  sub_1B8C248D8();
  v8 = sub_1B8C24978();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1B8B34060(v3, v5, v7 & 1);

  *a1 = v2;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v12 & 1;
  *(a1 + 32) = v14;

  sub_1B8B34694(v8, v10, v12 & 1);

  sub_1B8B34060(v8, v10, v12 & 1);
}

uint64_t sub_1B8B6A120@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B8C242A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AE0, &qword_1B8C29E80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v17 - v11);
  sub_1B8B34450(v2, &v17 - v11, &qword_1EBAA6AE0, &qword_1B8C29E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1B8C23D38();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_1B8C25488();
    v16 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1B8B6A320@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B8C242A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D70, &qword_1B8C27960);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for BatchEvaluationViewContent();
  sub_1B8B34450(v1 + *(v12 + 20), v11, &qword_1EBAA5D70, &qword_1B8C27960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1B8C23E78();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1B8C25488();
    v16 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t BatchEvaluationViewContent.body.getter@<X0>(uint64_t a1@<X8>)
{
  v144 = a1;
  v143 = sub_1B8C23D38();
  v145 = *(v143 - 8);
  v2 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v142 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BatchEvaluationViewContent();
  v5 = v4 - 8;
  v141 = *(v4 - 8);
  v140 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v139 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AE8, &qword_1B8C29EC0);
  v7 = *(*(v146 - 8) + 64);
  MEMORY[0x1EEE9AC00](v146);
  v9 = (&v114 - v8);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AF0, &qword_1B8C29EC8);
  v120 = *(v119 - 8);
  v10 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v114 - v11;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AF8, &qword_1B8C29ED0);
  v122 = *(v121 - 8);
  v12 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v148 = &v114 - v13;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B00, &qword_1B8C29ED8);
  v124 = *(v123 - 8);
  v14 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v147 = &v114 - v15;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B08, &qword_1B8C29EE0);
  v126 = *(v125 - 8);
  v16 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v149 = &v114 - v17;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B10, &qword_1B8C29EE8);
  v129 = *(v128 - 8);
  v18 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v150 = (&v114 - v19);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B18, &qword_1B8C29EF0);
  v131 = *(v130 - 8);
  v20 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v127 = &v114 - v21;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B20, &qword_1B8C29EF8);
  v133 = *(v132 - 8);
  v22 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v151 = &v114 - v23;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B28, &qword_1B8C29F00);
  v137 = *(v136 - 8);
  v24 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v152 = &v114 - v25;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B30, &qword_1B8C29F08);
  v26 = *(*(v138 - 8) + 64);
  MEMORY[0x1EEE9AC00](v138);
  v135 = &v114 - v27;
  *v9 = sub_1B8C24F48();
  v9[1] = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B38, &qword_1B8C29F10);
  sub_1B8B6B9D8(v1, v9 + *(v29 + 44));
  v156 = v1;
  v134 = v1;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B40, &qword_1B8C29F18);
  v116 = sub_1B8B34CFC(&qword_1EBAA6B48, &qword_1EBAA6AE8, &qword_1B8C29EC0);
  v30 = sub_1B8B34CFC(&qword_1EBAA6B50, &qword_1EBAA6B40, &qword_1B8C29F18);
  sub_1B8C24C28();
  sub_1B8B3433C(v9, &qword_1EBAA6AE8, &qword_1B8C29EC0);
  v31 = (v1 + *(v5 + 32));
  v33 = *v31;
  v32 = v31[1];
  v153 = v33;
  v155 = v32;
  v167 = v33;
  v168 = v32;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AD8, &qword_1B8C29E48);
  sub_1B8C24D88();
  v34 = v157;
  v35 = v158;
  v36 = v159;
  swift_getKeyPath();
  v167 = v34;
  v168 = v35;
  v169 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B58, &qword_1B8C29F48);
  sub_1B8C24E58();

  v37 = v164;
  v38 = v165;
  v39 = v166;

  swift_getKeyPath();
  v161 = v37;
  v162 = v38;
  v163 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B60, &qword_1B8C29F78);
  sub_1B8C24E58();

  v115 = type metadata accessor for DebugSheet();
  v157 = v146;
  v158 = v117;
  v159 = v116;
  v160 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_1B8B70B14(&qword_1EBAA6B68, type metadata accessor for DebugSheet);
  v42 = v119;
  v43 = v118;
  sub_1B8C24BD8();

  (*(v120 + 8))(v43, v42);
  v167 = v153;
  v168 = v155;
  sub_1B8C24D88();
  v44 = v157;
  v45 = v158;
  v46 = v159;
  swift_getKeyPath();
  v167 = v44;
  v168 = v45;
  v169 = v46;
  sub_1B8C24E58();

  v47 = v164;
  v48 = v165;
  v49 = v166;

  swift_getKeyPath();
  v161 = v47;
  v162 = v48;
  v163 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B70, &qword_1B8C29FD0);
  sub_1B8C24E58();

  v157 = v42;
  v158 = v115;
  v159 = OpaqueTypeConformance2;
  v160 = v41;
  v50 = swift_getOpaqueTypeConformance2();
  v113 = sub_1B8B6F9D8();
  v51 = v121;
  v52 = v148;
  sub_1B8C24BD8();

  v53 = v51;
  (*(v122 + 8))(v52, v51);
  v54 = v153;
  v55 = v155;
  v157 = v153;
  v158 = v155;
  sub_1B8C24D68();
  v56 = type metadata accessor for BatchController();
  v157 = v53;
  v158 = &type metadata for ScoreLevelUp;
  v159 = v50;
  v160 = v113;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  v59 = v123;
  v60 = v147;
  sub_1B8C24A78();

  v61 = v59;
  (*(v124 + 8))(v60, v59);
  v157 = v54;
  v158 = v55;
  sub_1B8C24D68();
  v62 = v167;
  swift_getKeyPath();
  v157 = v62;
  sub_1B8C23588();

  swift_beginAccess();
  v63 = *(v62 + 16);

  v146 = type metadata accessor for DonationController();
  v157 = v61;
  v158 = v56;
  v159 = v57;
  v160 = v58;
  v148 = v58;
  v147 = MEMORY[0x1E69811C8];
  v64 = swift_getOpaqueTypeConformance2();
  v65 = sub_1B8B70B14(&qword_1EBAA5F00, type metadata accessor for DonationController);
  v66 = v125;
  v67 = v149;
  sub_1B8C24A78();

  (*(v126 + 8))(v67, v66);
  v68 = v153;
  v157 = v153;
  v158 = v155;
  sub_1B8C24D68();
  v69 = v164;
  swift_getKeyPath();
  v157 = v69;
  sub_1B8C23588();

  v70 = *(v69 + 24);

  v71 = type metadata accessor for ScoreController();
  v157 = v66;
  v158 = v146;
  v159 = v64;
  v160 = v65;
  v72 = swift_getOpaqueTypeConformance2();
  v73 = sub_1B8B70B14(&qword_1EBAA5F60, type metadata accessor for ScoreController);
  v74 = v127;
  v75 = v128;
  v76 = v150;
  sub_1B8C24A78();

  (*(v129 + 8))(v76, v75);
  v77 = v68;
  v157 = v68;
  v78 = v155;
  v158 = v155;
  sub_1B8C24D68();
  v79 = v164;
  swift_getKeyPath();
  v157 = v79;
  sub_1B8C23588();

  v80 = *(v79 + 40);

  v150 = type metadata accessor for StateController();
  v157 = v75;
  v158 = v71;
  v159 = v72;
  v160 = v73;
  v81 = swift_getOpaqueTypeConformance2();
  v82 = sub_1B8B70B14(&qword_1EBAA64D0, type metadata accessor for StateController);
  v83 = v130;
  sub_1B8C24A78();

  v84 = v74;
  v85 = v83;
  (*(v131 + 8))(v84, v83);
  v157 = v77;
  v158 = v78;
  sub_1B8C24D68();
  v86 = v164;
  swift_getKeyPath();
  v157 = v86;
  sub_1B8C23588();

  v87 = *(v86 + 32);

  v88 = type metadata accessor for OnboardingController();
  v157 = v85;
  v158 = v150;
  v159 = v81;
  v160 = v82;
  v89 = swift_getOpaqueTypeConformance2();
  v90 = sub_1B8B70B14(&qword_1EBAA5AA8, type metadata accessor for OnboardingController);
  v91 = v132;
  v92 = v151;
  sub_1B8C24A78();

  (*(v133 + 8))(v92, v91);
  v157 = v77;
  v158 = v155;
  sub_1B8C24D68();
  v93 = v164;
  swift_getKeyPath();
  v157 = v93;
  sub_1B8C23588();

  v94 = *(v93 + 48);

  type metadata accessor for DebugController();
  v157 = v91;
  v158 = v88;
  v159 = v89;
  v160 = v90;
  swift_getOpaqueTypeConformance2();
  sub_1B8B70B14(&qword_1EBAA6908, type metadata accessor for DebugController);
  v95 = v135;
  v96 = v136;
  v97 = v152;
  sub_1B8C24A78();

  (*(v137 + 8))(v97, v96);
  v98 = sub_1B8C24C68();
  KeyPath = swift_getKeyPath();
  v157 = v98;
  v100 = sub_1B8C23E48();
  v101 = (v95 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B80, &qword_1B8C2A080) + 36));
  *v101 = KeyPath;
  v101[1] = v100;
  v102 = (v95 + *(v138 + 36));
  v103 = v102 + *(sub_1B8C23EE8() + 20);
  sub_1B8C25388();
  v104 = v134;
  v105 = v139;
  sub_1B8B70E3C(v134, v139, type metadata accessor for BatchEvaluationViewContent);
  v106 = (*(v141 + 80) + 16) & ~*(v141 + 80);
  v107 = swift_allocObject();
  sub_1B8B6FA60(v105, v107 + v106);
  *v102 = &unk_1B8C2A090;
  v102[1] = v107;
  v108 = v142;
  sub_1B8B6A120(v142);
  sub_1B8B70E3C(v104, v105, type metadata accessor for BatchEvaluationViewContent);
  v109 = swift_allocObject();
  sub_1B8B6FA60(v105, v109 + v106);
  sub_1B8B6FC10();
  sub_1B8B70B14(&qword_1EBAA6BA0, MEMORY[0x1E697BE48]);
  v110 = v108;
  v111 = v143;
  sub_1B8C24C48();

  (*(v145 + 8))(v110, v111);
  return sub_1B8B3433C(v95, &qword_1EBAA6B30, &qword_1B8C29F08);
}

uint64_t sub_1B8B6B9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6C78, &qword_1B8C2A310);
  v3 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108);
  v100 = &v85 - v4;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6C80, &qword_1B8C2A318);
  v5 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v103 = (&v85 - v6);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6C88, &qword_1B8C2A320);
  v7 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  v97 = (&v85 - v8);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6C90, &qword_1B8C2A328);
  v9 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v85 - v10;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6C98, &qword_1B8C2A330);
  v11 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v85 - v12;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6CA0, &qword_1B8C2A338);
  v13 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v98 = &v85 - v14;
  v92 = type metadata accessor for CardStack();
  v15 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v90 = (&v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6CA8, &qword_1B8C2A340);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v104 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v106 = &v85 - v21;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6CB0, &qword_1B8C2A348);
  v22 = *(*(v109 - 8) + 64);
  MEMORY[0x1EEE9AC00](v109);
  v24 = &v85 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6CB8, &qword_1B8C2A350);
  v99 = *(v25 - 8);
  v26 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v85 - v27;
  v29 = (a1 + *(type metadata accessor for BatchEvaluationViewContent() + 24));
  v30 = *v29;
  v31 = v29[1];
  *&v118 = *v29;
  *(&v118 + 1) = v31;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AD8, &qword_1B8C29E48);
  sub_1B8C24D68();
  v32 = *&v114[0];
  swift_getKeyPath();
  *&v118 = v32;
  v33 = sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  v34 = *(v32 + 32);

  swift_getKeyPath();
  *&v118 = v34;
  sub_1B8B70B14(&qword_1EBAA5AA8, type metadata accessor for OnboardingController);
  sub_1B8C23588();

  LODWORD(a1) = *(v34 + 17);

  if (a1 == 1)
  {
    type metadata accessor for OnboardingController();
    v35 = sub_1B8C23DA8();
    v37 = v36;
    type metadata accessor for BatchController();
    v38 = sub_1B8C23DA8();
    *&v118 = v35;
    BYTE8(v118) = v37 & 1;
    *&v119 = v38;
    BYTE8(v119) = v39 & 1;
    v40 = sub_1B8B70DE8();
    sub_1B8C24BA8();

    v41 = v99;
    (*(v99 + 16))(v24, v28, v25);
    swift_storeEnumTagMultiPayload();
    *&v118 = &type metadata for BatchOnboardingView;
    *(&v118 + 1) = v40;
    swift_getOpaqueTypeConformance2();
    sub_1B8B34CFC(&qword_1EBAA6D50, &qword_1EBAA6C78, &qword_1B8C2A310);
    sub_1B8C24598();
    return (*(v41 + 8))(v28, v25);
  }

  v88 = v24;
  v89 = v25;
  v87 = v30;
  *&v118 = v30;
  *(&v118 + 1) = v31;
  sub_1B8C24D68();
  v43 = *&v114[0];
  swift_getKeyPath();
  *&v118 = v43;
  v99 = v33;
  sub_1B8C23588();

  v44 = *(v43 + 40);

  swift_getKeyPath();
  *&v118 = v44;
  sub_1B8B70B14(&qword_1EBAA64D0, type metadata accessor for StateController);
  sub_1B8C23588();

  v45 = v44[2];
  v118 = v44[1];
  v46 = v44[3];
  v119 = v45;
  *v120 = v46;
  *&v120[9] = *(v44 + 57);
  sub_1B8B50FF8(&v118, v114);

  v47 = v118;
  v121 = v119;
  *v122 = *v120;
  *&v122[9] = *&v120[9];
  v86 = v31;
  if (*(&v118 + 1) > 1)
  {
    if (*(&v118 + 1) == 2)
    {
      v71 = sub_1B8C24808();
      v72 = v93;
      *v93 = v71;
      *(v72 + 8) = 0u;
      *(v72 + 24) = 0u;
      v72[40] = 1;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6CE8, &qword_1B8C2A388);
      sub_1B8B70B14(&qword_1EBAA6CD8, type metadata accessor for CardStack);
      sub_1B8B70B5C(&qword_1EBAA6CE0, &qword_1EBAA6CE8, &qword_1B8C2A388, sub_1B8B70BE0);
      v73 = v94;
      sub_1B8C24598();
      sub_1B8B34450(v73, v97, &qword_1EBAA6C98, &qword_1B8C2A330);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D00, &qword_1B8C2A390);
      sub_1B8B70A2C();
      sub_1B8B70C34();
      v70 = v98;
      sub_1B8C24598();
      sub_1B8B3433C(v73, &qword_1EBAA6C98, &qword_1B8C2A330);
      goto LABEL_14;
    }

    if (*(&v118 + 1) != 3)
    {
      goto LABEL_10;
    }

    LOBYTE(v110) = sub_1B8C24808();
    v110 = v110;
    v111 = 0u;
    v112 = 0u;
    v56 = 1;
LABEL_12:
    v113 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D10, &qword_1B8C2A398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D28, &qword_1B8C2A3A0);
    sub_1B8B70B5C(&qword_1EBAA6D08, &qword_1EBAA6D10, &qword_1B8C2A398, sub_1B8B70D18);
    sub_1B8B70B5C(&qword_1EBAA6D20, &qword_1EBAA6D28, &qword_1B8C2A3A0, sub_1B8B70D6C);
    sub_1B8C24598();
    v65 = v115;
    v66 = v116;
    v67 = v117;
    v68 = v114[1];
    v69 = v97;
    *v97 = v114[0];
    v69[1] = v68;
    *(v69 + 4) = v65;
    *(v69 + 40) = v66;
    *(v69 + 41) = v67;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D00, &qword_1B8C2A390);
    sub_1B8B70A2C();
    sub_1B8B70C34();
    v70 = v98;
    sub_1B8C24598();
LABEL_14:
    sub_1B8B34450(v70, v103, &qword_1EBAA6CA0, &qword_1B8C2A338);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6CC0, &qword_1B8C2A380);
    sub_1B8B709A0();
    sub_1B8B70B5C(&qword_1EBAA6D38, &qword_1EBAA6CC0, &qword_1B8C2A380, sub_1B8B38EB8);
    sub_1B8C24598();
    sub_1B8B3433C(v70, &qword_1EBAA6CA0, &qword_1B8C2A338);
    goto LABEL_15;
  }

  if (!*(&v118 + 1))
  {
    LOBYTE(v110) = sub_1B8C24808();
    v110 = v110;
    v111 = 0u;
    v112 = 0u;
    v56 = 257;
    goto LABEL_12;
  }

  if (*(&v118 + 1) != 1)
  {
LABEL_10:
    type metadata accessor for DonationController();
    sub_1B8B70B14(&qword_1EBAA5F00, type metadata accessor for DonationController);
    v57 = sub_1B8C23DA8();
    v59 = v58;
    LOBYTE(v110) = 0;
    sub_1B8C24D58();
    v60 = v114[0];
    v61 = *(&v114[0] + 1);
    v59 &= 1u;
    LOBYTE(v114[0]) = v59;
    v62 = sub_1B8C24808();
    v63 = v103;
    *v103 = v47;
    v64 = *v122;
    v63[1] = v121;
    v63[2] = v64;
    *(v63 + 41) = *&v122[9];
    *(v63 + 64) = v60;
    *(v63 + 9) = v61;
    *(v63 + 10) = v57;
    *(v63 + 88) = v59;
    *(v63 + 96) = v62;
    *(v63 + 104) = 0u;
    *(v63 + 120) = 0u;
    *(v63 + 136) = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6CC0, &qword_1B8C2A380);
    sub_1B8B709A0();
    sub_1B8B70B5C(&qword_1EBAA6D38, &qword_1EBAA6CC0, &qword_1B8C2A380, sub_1B8B38EB8);
    sub_1B8C24598();
    goto LABEL_15;
  }

  type metadata accessor for BatchController();
  v48 = sub_1B8C23DA8();
  v49 = v90;
  *v90 = v48;
  *(v49 + 8) = v50 & 1;
  type metadata accessor for StateController();
  *(v49 + 16) = sub_1B8C23DA8();
  *(v49 + 24) = v51 & 1;
  type metadata accessor for DonationController();
  sub_1B8B70B14(&qword_1EBAA5F00, type metadata accessor for DonationController);
  *(v49 + 32) = sub_1B8C23DA8();
  *(v49 + 40) = v52 & 1;
  v53 = *(v92 + 28);
  *(v49 + v53) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D58, &qword_1B8C31BB0);
  swift_storeEnumTagMultiPayload();
  sub_1B8B70E3C(v49, v93, type metadata accessor for CardStack);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6CE8, &qword_1B8C2A388);
  sub_1B8B70B14(&qword_1EBAA6CD8, type metadata accessor for CardStack);
  sub_1B8B70B5C(&qword_1EBAA6CE0, &qword_1EBAA6CE8, &qword_1B8C2A388, sub_1B8B70BE0);
  v54 = v94;
  sub_1B8C24598();
  sub_1B8B34450(v54, v97, &qword_1EBAA6C98, &qword_1B8C2A330);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D00, &qword_1B8C2A390);
  sub_1B8B70A2C();
  sub_1B8B70C34();
  v55 = v98;
  sub_1B8C24598();
  sub_1B8B3433C(v54, &qword_1EBAA6C98, &qword_1B8C2A330);
  sub_1B8B34450(v55, v103, &qword_1EBAA6CA0, &qword_1B8C2A338);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6CC0, &qword_1B8C2A380);
  sub_1B8B709A0();
  sub_1B8B70B5C(&qword_1EBAA6D38, &qword_1EBAA6CC0, &qword_1B8C2A380, sub_1B8B38EB8);
  sub_1B8C24598();
  sub_1B8B3433C(v55, &qword_1EBAA6CA0, &qword_1B8C2A338);
  sub_1B8B70EA4(v49, type metadata accessor for CardStack);
LABEL_15:
  v74 = v104;
  *&v114[0] = v87;
  *(&v114[0] + 1) = v86;
  sub_1B8C24D68();
  v75 = v110;
  swift_getKeyPath();
  *&v114[0] = v75;
  sub_1B8C23588();

  v76 = *(v75 + 48);

  swift_getKeyPath();
  *&v114[0] = v76;
  sub_1B8B70B14(&qword_1EBAA6908, type metadata accessor for DebugController);
  sub_1B8C23588();

  LODWORD(v75) = *(v76 + 17);

  v77 = v88;
  if (v75 == 1)
  {
    type metadata accessor for BatchController();
    v78 = sub_1B8C23DA8();
    v80 = v79 & 1;
  }

  else
  {
    v78 = 0;
    v80 = -1;
  }

  v81 = v106;
  sub_1B8B34450(v106, v74, &qword_1EBAA6CA8, &qword_1B8C2A340);
  v82 = v100;
  sub_1B8B34450(v74, v100, &qword_1EBAA6CA8, &qword_1B8C2A340);
  v83 = v82 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6D40, &qword_1B8C2A3D0) + 48);
  *v83 = v78;
  *(v83 + 8) = v80;
  sub_1B8B70DC0(v78, v80);
  sub_1B8B70DD4(v78, v80);
  sub_1B8B3433C(v74, &qword_1EBAA6CA8, &qword_1B8C2A340);
  sub_1B8B34450(v82, v77, &qword_1EBAA6C78, &qword_1B8C2A310);
  swift_storeEnumTagMultiPayload();
  v84 = sub_1B8B70DE8();
  *&v114[0] = &type metadata for BatchOnboardingView;
  *(&v114[0] + 1) = v84;
  swift_getOpaqueTypeConformance2();
  sub_1B8B34CFC(&qword_1EBAA6D50, &qword_1EBAA6C78, &qword_1B8C2A310);
  sub_1B8C24598();
  sub_1B8B70DD4(v78, v80);
  sub_1B8B3433C(v82, &qword_1EBAA6C78, &qword_1B8C2A310);
  return sub_1B8B3433C(v81, &qword_1EBAA6CA8, &qword_1B8C2A340);
}

uint64_t sub_1B8B6CD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6BE0, &qword_1B8C2A228);
  v3 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v96 - v4;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6BE8, &qword_1B8C2A230);
  v105 = *(v108 - 8);
  v5 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v99 = &v96 - v6;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6BF0, &qword_1B8C2A238);
  v98 = *(v106 - 8);
  v7 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v97 = &v96 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6BF8, &qword_1B8C2A240);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v104 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v107 = &v96 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6C00, &qword_1B8C2A248);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v101 = &v96 - v17;
  v113 = sub_1B8C245F8();
  v18 = *(v113 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6C08, &qword_1B8C2A250);
  v100 = *(v21 - 8);
  v22 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v103 = &v96 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6C10, &qword_1B8C2A258);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v121 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v96 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v120 = &v96 - v31;
  v32 = type metadata accessor for BatchEvaluationViewContent();
  v33 = (a1 + *(v32 + 24));
  v34 = *v33;
  v118 = v33[1];
  v119 = v34;
  v122 = v34;
  v123 = v118;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AD8, &qword_1B8C29E48);
  sub_1B8C24D68();
  v35 = v126;
  swift_getKeyPath();
  v122 = v35;
  v116 = sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  v37 = MEMORY[0x1B8CCA870](v36);
  v115 = a1;
  v102 = v18;
  v112 = v15;
  if (!v37)
  {
    goto LABEL_6;
  }

  if (qword_1EBAA5930 != -1)
  {
    swift_once();
  }

  v38 = qword_1EBAB39E0;
  swift_getKeyPath();
  v122 = v38;
  sub_1B8B70B14(&qword_1EBAA5F10, type metadata accessor for UserDefaultsController);
  sub_1B8C23588();

  v39 = *(v38 + 18);
  a1 = v115;
  if (v39 != 1)
  {
    goto LABEL_6;
  }

  v122 = v119;
  v123 = v118;
  sub_1B8C24D68();
  v40 = v126;
  swift_getKeyPath();
  v122 = v40;
  sub_1B8C23588();

  v41 = *(v40 + 32);

  swift_getKeyPath();
  v122 = v41;
  sub_1B8B70B14(&qword_1EBAA5AA8, type metadata accessor for OnboardingController);
  sub_1B8C23588();

  v42 = *(v41 + 17);

  if ((v42 & 1) == 0)
  {
    if (qword_1EBAA58D0 != -1)
    {
      swift_once();
    }

    v88 = v113;
    v89 = __swift_project_value_buffer(v113, qword_1EBAA6A48);
    v90 = (*(v18 + 16))(v114, v89, v88);
    MEMORY[0x1EEE9AC00](v90);
    *(&v96 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6C30, &qword_1B8C2A2A0);
    sub_1B8B34CFC(&qword_1EBAA6C38, &qword_1EBAA6C30, &qword_1B8C2A2A0);
    v91 = v103;
    a1 = v115;
    sub_1B8C23DC8();
    v18 = v102;
    v92 = sub_1B8B34CFC(&qword_1EBAA6C18, &qword_1EBAA6C08, &qword_1B8C2A250);
    v93 = v101;
    MEMORY[0x1B8CC92F0](v91, v21, v92);
    v94 = v112;
    (*(v112 + 16))(v30, v93, v14);
    v43 = *(v94 + 56);
    v43(v30, 0, 1, v14);
    v122 = v21;
    v123 = v92;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1B8CC9300](v30, v14, OpaqueTypeConformance2);
    sub_1B8B3433C(v30, &qword_1EBAA6C10, &qword_1B8C2A258);
    (*(v94 + 8))(v93, v14);
    (*(v100 + 8))(v103, v21);
  }

  else
  {
LABEL_6:
    v43 = *(v15 + 56);
    v43(v30, 1, 1, v14);
    v44 = sub_1B8B34CFC(&qword_1EBAA6C18, &qword_1EBAA6C08, &qword_1B8C2A250);
    v122 = v21;
    v123 = v44;
    v45 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1B8CC9300](v30, v14, v45);
    sub_1B8B3433C(v30, &qword_1EBAA6C10, &qword_1B8C2A258);
  }

  if (*(a1 + *(v32 + 32)) == 1)
  {
    if (qword_1EBAA58E0 != -1)
    {
      swift_once();
    }

    v46 = v113;
    v47 = __swift_project_value_buffer(v113, qword_1EBAA6A78);
    v48 = (*(v18 + 16))(v114, v47, v46);
    MEMORY[0x1EEE9AC00](v48);
    *(&v96 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6C30, &qword_1B8C2A2A0);
    sub_1B8B34CFC(&qword_1EBAA6C38, &qword_1EBAA6C30, &qword_1B8C2A2A0);
    v49 = v103;
    sub_1B8C23DC8();
    v50 = sub_1B8B34CFC(&qword_1EBAA6C18, &qword_1EBAA6C08, &qword_1B8C2A250);
    v51 = v101;
    MEMORY[0x1B8CC92F0](v49, v21, v50);
    v52 = v112;
    (*(v112 + 16))(v30, v51, v14);
    v43(v30, 0, 1, v14);
    v122 = v21;
    v123 = v50;
    v53 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1B8CC9300](v30, v14, v53);
    sub_1B8B3433C(v30, &qword_1EBAA6C10, &qword_1B8C2A258);
    (*(v52 + 8))(v51, v14);
    v54 = v49;
    a1 = v115;
    (*(v100 + 8))(v54, v21);
  }

  else
  {
    v43(v30, 1, 1, v14);
    v55 = sub_1B8B34CFC(&qword_1EBAA6C18, &qword_1EBAA6C08, &qword_1B8C2A250);
    v122 = v21;
    v123 = v55;
    v56 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1B8CC9300](v30, v14, v56);
    sub_1B8B3433C(v30, &qword_1EBAA6C10, &qword_1B8C2A258);
  }

  v122 = v119;
  v123 = v118;
  sub_1B8C24D68();
  v57 = v126;
  swift_getKeyPath();
  v122 = v57;
  sub_1B8C23588();

  v58 = *(v57 + 32);

  swift_getKeyPath();
  v122 = v58;
  sub_1B8B70B14(&qword_1EBAA5AA8, type metadata accessor for OnboardingController);
  sub_1B8C23588();

  LOBYTE(v57) = *(v58 + 17);

  v59 = v107;
  if (v57)
  {
    v60 = v104;
    v61 = v108;
    (*(v105 + 56))(v104, 1, 1, v108);
    v62 = sub_1B8B34CFC(&qword_1EBAA6C28, &qword_1EBAA6BF0, &qword_1B8C2A238);
    v122 = v106;
    v123 = v62;
    v63 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1B8CC9300](v60, v61, v63);
    sub_1B8B3433C(v60, &qword_1EBAA6BF8, &qword_1B8C2A240);
  }

  else
  {
    if (qword_1EBAA58D8 != -1)
    {
      swift_once();
    }

    v64 = v113;
    v65 = __swift_project_value_buffer(v113, qword_1EBAA6A60);
    v66 = (*(v102 + 16))(v114, v65, v64);
    MEMORY[0x1EEE9AC00](v66);
    *(&v96 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6C20, &qword_1B8C2A288);
    v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA59C8, &unk_1B8C2A290);
    v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA59D0, &qword_1B8C26FB0);
    v69 = sub_1B8C24038();
    v70 = sub_1B8B34CFC(&qword_1EBAA59D8, &qword_1EBAA59D0, &qword_1B8C26FB0);
    v71 = sub_1B8B70B14(&qword_1EBAA59E0, MEMORY[0x1E697C248]);
    v122 = v68;
    v123 = v69;
    v124 = v70;
    v125 = v71;
    v72 = swift_getOpaqueTypeConformance2();
    v73 = sub_1B8B33CCC();
    v122 = v67;
    v123 = &type metadata for ScoreDetail;
    v124 = v72;
    v125 = v73;
    swift_getOpaqueTypeConformance2();
    v74 = v97;
    sub_1B8C23DC8();
    v75 = sub_1B8B34CFC(&qword_1EBAA6C28, &qword_1EBAA6BF0, &qword_1B8C2A238);
    v76 = v99;
    v77 = v106;
    MEMORY[0x1B8CC92F0](v74, v106, v75);
    v78 = v105;
    v79 = v104;
    v80 = v108;
    (*(v105 + 16))(v104, v76, v108);
    (*(v78 + 56))(v79, 0, 1, v80);
    v122 = v77;
    v123 = v75;
    v81 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1B8CC9300](v79, v80, v81);
    sub_1B8B3433C(v79, &qword_1EBAA6BF8, &qword_1B8C2A240);
    (*(v78 + 8))(v76, v80);
    (*(v98 + 8))(v74, v77);
  }

  v82 = v109;
  v83 = *(v110 + 48);
  v84 = *(v110 + 64);
  v85 = v120;
  sub_1B8B34450(v120, v109, &qword_1EBAA6C10, &qword_1B8C2A258);
  v86 = v121;
  sub_1B8B34450(v121, v82 + v83, &qword_1EBAA6C10, &qword_1B8C2A258);
  sub_1B8B34450(v59, v82 + v84, &qword_1EBAA6BF8, &qword_1B8C2A240);
  sub_1B8C244A8();
  sub_1B8B3433C(v59, &qword_1EBAA6BF8, &qword_1B8C2A240);
  sub_1B8B3433C(v86, &qword_1EBAA6C10, &qword_1B8C2A258);
  return sub_1B8B3433C(v85, &qword_1EBAA6C10, &qword_1B8C2A258);
}

uint64_t sub_1B8B6DFB0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for BatchEvaluationViewContent() + 24));
  v6 = *v1;
  v7 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AD8, &qword_1B8C29E48);
  sub_1B8C24D68();
  swift_getKeyPath();
  sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  v2 = *(v5 + 48);

  if (*(v2 + 16) == 1)
  {
    *(v2 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B70B14(&qword_1EBAA6908, type metadata accessor for DebugController);
    sub_1B8C23578();
  }
}

uint64_t sub_1B8B6E190@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B8C24D08();
  *a1 = result;
  return result;
}

uint64_t sub_1B8B6E1C4(uint64_t a1)
{
  v2 = type metadata accessor for BatchEvaluationViewContent();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B8B70E3C(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BatchEvaluationViewContent);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1B8B6FA60(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_1B8C24DB8();
}

uint64_t sub_1B8B6E2F4(uint64_t a1)
{
  v20 = sub_1B8C242A8();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5D70, &qword_1B8C27960);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v19 - v8);
  v10 = sub_1B8C23E78();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BatchEvaluationViewContent();
  sub_1B8B34450(a1 + *(v15 + 20), v9, &qword_1EBAA5D70, &qword_1B8C27960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v16 = *v9;
    sub_1B8C25488();
    v17 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v20);
  }

  sub_1B8C23E68();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1B8B6E57C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B8C24D08();
  *a1 = result;
  return result;
}

uint64_t sub_1B8B6E5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v48 = sub_1B8C24658();
  v47 = *(v48 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v46 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_1B8C24038();
  v43 = *(v50 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BatchEvaluationViewContent();
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA59D0, &qword_1B8C26FB0);
  v12 = *(v41 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v15 = &v41 - v14;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA59C8, &unk_1B8C2A290);
  v45 = *(v44 - 8);
  v16 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v42 = &v41 - v17;
  sub_1B8B70E3C(a1, &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BatchEvaluationViewContent);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_1B8B6FA60(&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v51 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6C40, &qword_1B8C2A2D0);
  sub_1B8B70B5C(&qword_1EBAA6C48, &qword_1EBAA6C40, &qword_1B8C2A2D0, sub_1B8B70894);
  sub_1B8C24DB8();
  sub_1B8C24028();
  v20 = sub_1B8B34CFC(&qword_1EBAA59D8, &qword_1EBAA59D0, &qword_1B8C26FB0);
  v21 = sub_1B8B70B14(&qword_1EBAA59E0, MEMORY[0x1E697C248]);
  v22 = v41;
  v23 = v50;
  sub_1B8C24A68();
  (*(v43 + 8))(v7, v23);
  v24 = v22;
  (*(v12 + 8))(v15, v22);
  v25 = (a1 + *(v9 + 32));
  v27 = *v25;
  v26 = v25[1];
  v62 = v27;
  v63 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AD8, &qword_1B8C29E48);
  sub_1B8C24D88();
  v28 = v52;
  v29 = v53;
  v30 = v54;
  swift_getKeyPath();
  v62 = v28;
  v63 = v29;
  v64 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B58, &qword_1B8C29F48);
  sub_1B8C24E58();

  v31 = v59;
  v32 = v60;
  v33 = v61;

  swift_getKeyPath();
  v56 = v31;
  v57 = v32;
  v58 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6B70, &qword_1B8C29FD0);
  sub_1B8C24E58();

  v34 = sub_1B8C24DA8();
  v35 = v46;
  *v46 = v34;
  v36 = v47;
  v37 = v48;
  (*(v47 + 104))(v35, *MEMORY[0x1E697C8C0], v48);
  v52 = v24;
  v53 = v50;
  v54 = v20;
  v55 = v21;
  swift_getOpaqueTypeConformance2();
  sub_1B8B33CCC();
  v38 = v44;
  v39 = v42;
  sub_1B8C24A88();

  (*(v36 + 8))(v35, v37);
  return (*(v45 + 8))(v39, v38);
}

uint64_t sub_1B8B6EC8C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for BatchEvaluationViewContent() + 24));
  v6 = *v1;
  v7 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6AD8, &qword_1B8C29E48);
  sub_1B8C24D68();
  swift_getKeyPath();
  sub_1B8B70B14(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  sub_1B8C23588();

  v2 = *(v5 + 24);

  if (*(v2 + 16) == 1)
  {
    *(v2 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1B8B70B14(&qword_1EBAA5F60, type metadata accessor for ScoreController);
    sub_1B8C23578();
  }
}