uint64_t sub_1DF541F38()
{
  v1 = *(*(v0 + 224) + 112);
  *(v0 + 352) = v1;
  v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DF541FAC, 0, 0);
}

uint64_t sub_1DF541FAC()
{
  v1 = v0[44];
  v2 = v0[36];
  v3 = v0[32];
  v4 = [v1 aa_primaryAppleAccount];

  sub_1DF4FEF1C(v4, v3, v2);

  v5 = swift_task_alloc();
  v0[45] = v5;
  *v5 = v0;
  v5[1] = sub_1DF542094;
  v6 = v0[43];
  v7 = v0[36];

  return sub_1DF4C6F60(v7);
}

uint64_t sub_1DF542094()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 288);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF5421AC, 0, 0);
}

uint64_t sub_1DF5421AC()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = (*(v0 + 136) + OBJC_IVAR___DaemonController_configStore);
  v5 = *v4;
  v6 = v4[1];
  ObjectType = swift_getObjectType();
  (*(v6 + 8))(0x726665527478656ELL, 0xEF65746144687365, ObjectType, v6);
  v8 = *(v2 + 48);
  if (v8(v3, 1, v1) == 1)
  {
    v9 = *(v0 + 176);
    v10 = *(v0 + 144);
    v11 = *(v0 + 152);
    sub_1DF5643A4();
    if (v8(v10, 1, v11) != 1)
    {
      sub_1DF47E5B4(*(v0 + 144), &qword_1ECE37A10, &qword_1DF567C00);
    }
  }

  else
  {
    v12 = *(v0 + 336);
    (*(v0 + 376))(*(v0 + 176), *(v0 + 144), *(v0 + 152));
  }

  v13 = *(v0 + 216);
  v14 = *(v0 + 176);
  v15 = *(v0 + 152);
  sub_1DF484F10(&qword_1ED954CC0, MEMORY[0x1E6969530]);
  if (sub_1DF5648E4())
  {
    v16 = *(v0 + 336);
    (*(v0 + 376))(*(v0 + 184), *(v0 + 176), *(v0 + 152));
  }

  else
  {
    v18 = *(v0 + 320);
    v17 = *(v0 + 328);
    v19 = *(v0 + 312);
    v20 = *(v0 + 216);
    v21 = *(v0 + 184);
    v22 = *(v0 + 152);
    (*(v0 + 368))(*(v0 + 176), v22);
    v19(v21, v20, v22);
  }

  v23 = *(v0 + 368);
  v24 = *(v0 + 328);
  v25 = *(v0 + 184);
  v26 = *(v0 + 168);
  v27 = *(v0 + 152);
  sub_1DF5643B4();
  LOBYTE(v25) = sub_1DF564404();
  v23(v26, v27);
  if (v25)
  {
    v28 = *(v0 + 376);
    v29 = *(v0 + 328);
    v30 = *(v0 + 336);
    v31 = *(v0 + 304);
    v32 = *(v0 + 272);
    v33 = *(v0 + 208);
    v56 = *(v0 + 200);
    v57 = *(v0 + 192);
    v34 = *(v0 + 176);
    v35 = *(v0 + 184);
    v58 = *(v0 + 168);
    v36 = *(v0 + 152);
    v37 = *(v0 + 128);
    (*(v0 + 368))(*(v0 + 216), v36);

    sub_1DF543D88(v0 + 16);
    v28(v37, v35, v36);
  }

  else
  {
    v39 = *(v0 + 368);
    v40 = *(v0 + 328);
    v41 = *(v0 + 304);
    v42 = *(v0 + 272);
    v43 = *(v0 + 216);
    v44 = *(v0 + 184);
    v45 = *(v0 + 152);
    sub_1DF5448BC();
    swift_allocError();
    *v46 = 0;
    swift_willThrow();

    v39(v44, v45);
    v39(v43, v45);
    sub_1DF543D88(v0 + 16);
    v48 = *(v0 + 208);
    v47 = *(v0 + 216);
    v50 = *(v0 + 192);
    v49 = *(v0 + 200);
    v52 = *(v0 + 176);
    v51 = *(v0 + 184);
    v53 = *(v0 + 168);
    v54 = *(v0 + 144);
  }

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1DF54255C()
{
  v1 = v0[34];

  v2 = v0[37];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[21];
  v10 = v0[18];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DF542628(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DF5426D4;

  return sub_1DF4B8748(0, 0);
}

uint64_t sub_1DF5426D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DF542820, 0, 0);
  }
}

uint64_t sub_1DF542844@<X0>(uint64_t a1@<X0>, char **a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a1;
  v38 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v36 - v6;
  v8 = sub_1DF564494();
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  if (qword_1ED955FF0 != -1)
  {
    swift_once();
  }

  v13 = sub_1DF481988();
  v14 = [v13 aa_primaryAppleAccount];
  if (v14 && (v15 = v14, v16 = [v14 aa_altDSID], v15, v16))
  {
    v17 = sub_1DF564944();
    v19 = v18;
  }

  else
  {

    v17 = 0;
    v19 = 0;
  }

  v20 = sub_1DF5642D4();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_1DF5642C4();
  sub_1DF4FDDA0(v12, v23, v17, v19);

  v24 = OBJC_IVAR___CloudFeature_ttl;
  swift_beginAccess();
  sub_1DF4952D8(&v12[v24], v7);
  v25 = v36;
  if ((*(v36 + 48))(v7, 1, v8) == 1)
  {
    sub_1DF47E5B4(v7, &qword_1ECE37A10, &qword_1DF567C00);
    if (qword_1ED956258 != -1)
    {
      swift_once();
    }

    v26 = sub_1DF5647B4();
    __swift_project_value_buffer(v26, qword_1ED956260);
    v27 = v12;
    v28 = sub_1DF564794();
    v29 = sub_1DF564C24();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138543362;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&dword_1DF47C000, v28, v29, "feature fetched without TTL: %{public}@", v30, 0xCu);
      sub_1DF47E5B4(v31, &unk_1ECE37F10, &qword_1DF567510);
      MEMORY[0x1E12D75F0](v31, -1, -1);
      MEMORY[0x1E12D75F0](v30, -1, -1);
    }

    return (*(v25 + 16))(v38, v37, v8);
  }

  else
  {
    v34 = *(v25 + 32);
    v34(v11, v7, v8);
    sub_1DF484F10(&qword_1ED954CC0, MEMORY[0x1E6969530]);
    v35 = v37;
    if (sub_1DF5648D4())
    {
      return (v34)(v38, v11, v8);
    }

    else
    {
      (*(v25 + 8))(v11, v8);
      return (*(v25 + 16))(v38, v35, v8);
    }
  }
}

void sub_1DF542C9C(_xpc_activity_s *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v100 = a1;
  v102 = a2;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE38420, &unk_1DF56CEA0);
  v4 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v104 = (&v93 - v5);
  v109 = sub_1DF564494();
  v6 = *(v109 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v109);
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v101 = &v93 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v107 = &v93 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v96 = &v93 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v95 = &v93 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v93 - v19;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v21 = *(*(v97 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v97);
  v24 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v93 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v93 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v93 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v93 - v34;
  if (qword_1ED955FF0 != -1)
  {
    swift_once();
  }

  sub_1DF4FCF04(v35);
  v36 = *(v2 + OBJC_IVAR___DaemonController_configStore);
  v37 = *(v3 + OBJC_IVAR___DaemonController_configStore + 8);
  ObjectType = swift_getObjectType();
  (*(v37 + 8))(0x726665527478656ELL, 0xEF65746144687365, ObjectType, v37);
  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v99 = v10;
  v39 = sub_1DF5647B4();
  v40 = __swift_project_value_buffer(v39, qword_1ED956260);
  v108 = v35;
  sub_1DF4952D8(v35, v30);
  sub_1DF4952D8(v33, v27);
  v98 = v40;
  v41 = sub_1DF564794();
  v42 = sub_1DF564C44();
  v43 = os_log_type_enabled(v41, v42);
  v105 = v33;
  v106 = v20;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v110 = v94;
    *v44 = 136315394;
    sub_1DF4952D8(v30, v24);
    v45 = v6;
    v46 = sub_1DF564994();
    v48 = v47;
    sub_1DF47E5B4(v30, &qword_1ECE37A10, &qword_1DF567C00);
    v49 = v46;
    v6 = v45;
    v50 = sub_1DF47EF6C(v49, v48, &v110);

    *(v44 + 4) = v50;
    *(v44 + 12) = 2080;
    sub_1DF4952D8(v27, v24);
    v51 = sub_1DF564994();
    v53 = v52;
    sub_1DF47E5B4(v27, &qword_1ECE37A10, &qword_1DF567C00);
    v54 = sub_1DF47EF6C(v51, v53, &v110);

    *(v44 + 14) = v54;
    _os_log_impl(&dword_1DF47C000, v41, v42, "existing cache first feature expiry: %s next allowed retry: %s", v44, 0x16u);
    v55 = v94;
    swift_arrayDestroy();
    v20 = v106;
    MEMORY[0x1E12D75F0](v55, -1, -1);
    v56 = v44;
    v33 = v105;
    MEMORY[0x1E12D75F0](v56, -1, -1);
  }

  else
  {

    sub_1DF47E5B4(v27, &qword_1ECE37A10, &qword_1DF567C00);
    sub_1DF47E5B4(v30, &qword_1ECE37A10, &qword_1DF567C00);
  }

  v57 = v104;
  v58 = *(v103 + 48);
  sub_1DF4952D8(v108, v104);
  sub_1DF4952D8(v33, v57 + v58);
  v59 = *(v6 + 48);
  v60 = v109;
  v61 = v59(v57, 1, v109);
  v62 = v59(v57 + v58, 1, v60);
  if (v61 != 1)
  {
    v65 = *(v6 + 32);
    if (v62 != 1)
    {
      v66 = v95;
      v65(v95, v57, v60);
      v67 = v57 + v58;
      v57 = v96;
      v65(v96, v67, v60);
      sub_1DF484F10(&qword_1ED954CC0, MEMORY[0x1E6969530]);
      v68 = sub_1DF5648E4();
      v69 = *(v6 + 8);
      if ((v68 & 1) == 0)
      {
        v69(v57, v60);
        v70 = v20;
        v71 = v66;
        goto LABEL_17;
      }

      v69(v66, v60);
    }

    v70 = v20;
    v71 = v57;
LABEL_17:
    v65(v70, v71, v60);
    goto LABEL_18;
  }

  if (v62 == 1)
  {
    sub_1DF47E5B4(v33, &qword_1ECE37A10, &qword_1DF567C00);
    sub_1DF47E5B4(v108, &qword_1ECE37A10, &qword_1DF567C00);
    v63 = 1;
    v64 = v102;
LABEL_28:
    (*(v6 + 56))(v64, v63, 1, v60);
    return;
  }

  v65 = *(v6 + 32);
  v65(v20, v57 + v58, v60);
LABEL_18:
  empty = xpc_activity_copy_criteria(v100);
  v73 = v101;
  if (!empty)
  {
    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_string(empty, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D78]);
    xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9C40], 1);
    xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9D88], 0);
    if (!*MEMORY[0x1E69E9DB8])
    {
      goto LABEL_30;
    }

    xpc_dictionary_set_BOOL(empty, *MEMORY[0x1E69E9DB8], 1);
  }

  int64 = xpc_dictionary_get_int64(empty, *MEMORY[0x1E69E9C68]);
  if (!__OFADD__(int64, xpc_dictionary_get_int64(empty, *MEMORY[0x1E69E9C98])))
  {
    v104 = v65;
    v75 = v107;
    sub_1DF564414();
    (*(v6 + 16))(v73, v75, v60);
    v76 = sub_1DF564794();
    v77 = sub_1DF564C44();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v110 = v79;
      *v78 = 136315138;
      sub_1DF484F10(&qword_1ED954CB0, MEMORY[0x1E6969530]);
      v80 = sub_1DF5650A4();
      v81 = v73;
      v83 = v82;
      v84 = v6;
      v85 = *(v6 + 8);
      v85(v81, v109);
      v86 = sub_1DF47EF6C(v80, v83, &v110);

      *(v78 + 4) = v86;
      _os_log_impl(&dword_1DF47C000, v76, v77, "earliest allowed time to rebuild cache: %s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v79);
      v87 = v79;
      v60 = v109;
      MEMORY[0x1E12D75F0](v87, -1, -1);
      MEMORY[0x1E12D75F0](v78, -1, -1);
    }

    else
    {

      v84 = v6;
      v85 = *(v6 + 8);
      v85(v73, v60);
    }

    v88 = v99;
    v89 = v104;
    sub_1DF564474();
    v90 = v107;
    v91 = sub_1DF5643F4();
    swift_unknownObjectRelease();
    v85(v88, v60);
    v85(v90, v60);
    sub_1DF47E5B4(v105, &qword_1ECE37A10, &qword_1DF567C00);
    sub_1DF47E5B4(v108, &qword_1ECE37A10, &qword_1DF567C00);
    if (v91)
    {
      v6 = v84;
      v92 = v102;
      v89(v102, v106, v60);
      v64 = v92;
      v63 = 0;
    }

    else
    {
      v85(v106, v60);
      v63 = 1;
      v64 = v102;
      v6 = v84;
    }

    goto LABEL_28;
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

id DaemonController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DaemonController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1DF5437E0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E12D66D0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1DF543860;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF543868(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 24) = a1;
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 32) = v6;
  *v6 = v4;
  v6[1] = sub_1DF5473EC;

  return v8(v4 + 16);
}

uint64_t sub_1DF54395C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_1DF5473F0;

  return sub_1DF536C60(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1DF543A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_1DF5473F0;

  return sub_1DF536D40(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1DF543B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_1DF5473F0;

  return sub_1DF536E20(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1DF543C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_1DF5473F0;

  return sub_1DF536F00(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1DF543DDC()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF48D3C0;

  return sub_1DF53DE90();
}

uint64_t sub_1DF543E88()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF48D3C0;

  return sub_1DF52EC1C();
}

uint64_t sub_1DF543F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF543F60, a5, 0);
}

uint64_t sub_1DF543F60()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v10 = *(v0 + 56);
  *(v5 + 16) = *(v0 + 24);
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 48) = v10;
  *(v5 + 64) = v1;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B08, &unk_1DF567DB0);
  *v7 = v0;
  v7[1] = sub_1DF5440D0;

  return MEMORY[0x1EEE6DE38](v0 + 16, v10, v4, 0xD00000000000001ELL, 0x80000001DF574CB0, sub_1DF544C00, v5, v8);
}

uint64_t sub_1DF5440D0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_1DF5473E8;
  }

  else
  {
    v6 = *(v2 + 80);
    v7 = *(v2 + 56);

    v5 = sub_1DF48EC1C;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF544214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF544240, a5, 0);
}

uint64_t sub_1DF544240()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v10 = *(v0 + 56);
  *(v5 + 16) = *(v0 + 24);
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 48) = v10;
  *(v5 + 64) = v1;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  v8 = type metadata accessor for GeoClassificationInfo();
  *v7 = v0;
  v7[1] = sub_1DF5440D0;

  return MEMORY[0x1EEE6DE38](v0 + 16, v10, v4, 0xD00000000000001ELL, 0x80000001DF574CB0, sub_1DF546B1C, v5, v8);
}

uint64_t sub_1DF5443A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF5443D0, a5, 0);
}

uint64_t sub_1DF5443D0()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v10 = *(v0 + 56);
  *(v5 + 16) = *(v0 + 24);
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 48) = v10;
  *(v5 + 64) = v1;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  v8 = type metadata accessor for Ticket();
  *v7 = v0;
  v7[1] = sub_1DF5440D0;

  return MEMORY[0x1EEE6DE38](v0 + 16, v10, v4, 0xD00000000000001ELL, 0x80000001DF574CB0, sub_1DF546408, v5, v8);
}

uint64_t sub_1DF544534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF544560, a5, 0);
}

uint64_t sub_1DF544560()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = sub_1DF484F10(&unk_1ED956008, type metadata accessor for TaskLimiter);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v10 = *(v0 + 56);
  *(v5 + 16) = *(v0 + 24);
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  *(v5 + 48) = v10;
  *(v5 + 64) = v1;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  v8 = type metadata accessor for WaitlistResult();
  *v7 = v0;
  v7[1] = sub_1DF5440D0;

  return MEMORY[0x1EEE6DE38](v0 + 16, v10, v4, 0xD00000000000001ELL, 0x80000001DF574CB0, sub_1DF545CF4, v5, v8);
}

void sub_1DF5446C4(void *a1, int64_t a2, int64_t a3)
{
  xpc_dictionary_set_int64(a1, *MEMORY[0x1E69E9C98], a3);
  xpc_dictionary_set_int64(a1, *MEMORY[0x1E69E9C68], a2);
  if (qword_1ED956258 != -1)
  {
    swift_once();
  }

  v6 = sub_1DF5647B4();
  __swift_project_value_buffer(v6, qword_1ED956260);
  oslog = sub_1DF564794();
  v7 = sub_1DF564C44();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_1DF47EF6C(0xD00000000000001ELL, 0x80000001DF574CD0, &v11);
    *(v8 + 12) = 2050;
    *(v8 + 14) = a2;
    *(v8 + 22) = 2050;
    *(v8 + 24) = a3;
    _os_log_impl(&dword_1DF47C000, oslog, v7, "activity %s, delay: %{public}lld, grace: %{public}lld", v8, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1E12D75F0](v9, -1, -1);
    MEMORY[0x1E12D75F0](v8, -1, -1);
  }
}

unint64_t sub_1DF5448BC()
{
  result = qword_1ECE38430;
  if (!qword_1ECE38430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38430);
  }

  return result;
}

uint64_t sub_1DF544910(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF543868(a1, v4, v5, v7);
}

uint64_t sub_1DF5449DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF535644(a1, v4, v5, v7, v6);
}

void sub_1DF544A9C()
{
  v2 = *(sub_1DF564494() - 8);
  v3 = v0[3];
  v11 = v0[2];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = *(v0 + ((*(v2 + 64) + ((*(v2 + 80) + 72) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1DF48D3C0;

  JUMPOUT(0x1DF54395CLL);
}

uint64_t sub_1DF544C18(uint64_t a1)
{
  v3 = *(sub_1DF564494() - 8);
  v4 = ((*(v3 + 80) + 80) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38458, &qword_1DF56CF18) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v16 = v1[3];
  v17 = v1[2];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v12 = v1[8];
  v11 = v1[9];
  v13 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1DF48D3C0;

  return sub_1DF538E84(a1, v17, v16, v7, v8, v9, v10, v12);
}

uint64_t sub_1DF544DD8(uint64_t a1)
{
  v3 = *(sub_1DF564494() - 8);
  v4 = ((*(v3 + 80) + 80) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38458, &qword_1DF56CF18) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v16 = v1[3];
  v17 = v1[2];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v12 = v1[8];
  v11 = v1[9];
  v13 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1DF48D3C0;

  return sub_1DF53AF74(a1, v17, v16, v7, v8, v9, v10, v12);
}

unint64_t sub_1DF544FD4()
{
  result = qword_1ECE38468;
  if (!qword_1ECE38468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38468);
  }

  return result;
}

uint64_t sub_1DF5450D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF48D3C0;

  return sub_1DF53D3E0(a1, v4, v5, v6);
}

uint64_t sub_1DF545184(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF48D3C0;

  return sub_1DF53D8B4(a1, v4, v5, v6);
}

uint64_t sub_1DF545238(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF53554C(a1, v4, v5, v7);
}

uint64_t sub_1DF545304(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF536890(a1, v4, v5, v7, v6);
}

uint64_t sub_1DF5453C4(uint64_t a1)
{
  v3 = *(sub_1DF564494() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 72) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1DF48D3C0;

  return sub_1DF536FE0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DF545530(uint64_t a1)
{
  v3 = *(sub_1DF564494() - 8);
  v4 = ((*(v3 + 80) + 80) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v16 = v1[3];
  v17 = v1[2];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v12 = v1[8];
  v11 = v1[9];
  v13 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1DF48D3C0;

  return sub_1DF53A0F4(a1, v17, v16, v7, v8, v9, v10, v12);
}

uint64_t sub_1DF5456F0(uint64_t a1)
{
  v3 = *(sub_1DF564494() - 8);
  v4 = ((*(v3 + 80) + 80) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38480, &qword_1DF56B9C8) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v16 = v1[3];
  v17 = v1[2];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v12 = v1[8];
  v11 = v1[9];
  v13 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1DF48D3C0;

  return sub_1DF53BF30(a1, v17, v16, v7, v8, v9, v10, v12);
}

uint64_t sub_1DF545944(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF53ED2C(a1, v4, v5, v7, v6);
}

uint64_t sub_1DF545A04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF543868(a1, v4, v5, v7);
}

uint64_t sub_1DF545AD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF536408(a1, v4, v5, v7, v6);
}

void sub_1DF545B90()
{
  v2 = *(sub_1DF564494() - 8);
  v3 = v0[3];
  v11 = v0[2];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = *(v0 + ((*(v2 + 64) + ((*(v2 + 80) + 72) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1DF48D3C0;

  JUMPOUT(0x1DF543C38);
}

uint64_t sub_1DF545D0C(uint64_t a1)
{
  v3 = *(sub_1DF564494() - 8);
  v4 = ((*(v3 + 80) + 80) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38490, qword_1DF56CDB0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v16 = v1[3];
  v17 = v1[2];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v12 = v1[8];
  v11 = v1[9];
  v13 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1DF48D3C0;

  return sub_1DF539BEC(a1, v17, v16, v7, v8, v9, v10, v12);
}

uint64_t sub_1DF545ECC(uint64_t a1)
{
  v3 = *(sub_1DF564494() - 8);
  v4 = ((*(v3 + 80) + 80) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38490, qword_1DF56CDB0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v16 = v1[3];
  v17 = v1[2];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v12 = v1[8];
  v11 = v1[9];
  v13 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1DF48D3C0;

  return sub_1DF53BB00(a1, v17, v16, v7, v8, v9, v10, v12);
}

uint64_t sub_1DF546118(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF543868(a1, v4, v5, v7);
}

uint64_t sub_1DF5461E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF53602C(a1, v4, v5, v7, v6);
}

void sub_1DF5462A4()
{
  v2 = *(sub_1DF564494() - 8);
  v3 = v0[3];
  v11 = v0[2];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = *(v0 + ((*(v2 + 64) + ((*(v2 + 80) + 72) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1DF48D3C0;

  JUMPOUT(0x1DF543B44);
}

uint64_t sub_1DF546420(uint64_t a1)
{
  v3 = *(sub_1DF564494() - 8);
  v4 = ((*(v3 + 80) + 80) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE384A0, &qword_1DF56BA00) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v16 = v1[3];
  v17 = v1[2];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v12 = v1[8];
  v11 = v1[9];
  v13 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1DF48D3C0;

  return sub_1DF5397D0(a1, v17, v16, v7, v8, v9, v10, v12);
}

uint64_t sub_1DF5465E0(uint64_t a1)
{
  v3 = *(sub_1DF564494() - 8);
  v4 = ((*(v3 + 80) + 80) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE384A0, &qword_1DF56BA00) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v16 = v1[3];
  v17 = v1[2];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v12 = v1[8];
  v11 = v1[9];
  v13 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1DF48D3C0;

  return sub_1DF53B7E0(a1, v17, v16, v7, v8, v9, v10, v12);
}

uint64_t sub_1DF54682C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF543868(a1, v4, v5, v7);
}

uint64_t sub_1DF5468F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF535C50(a1, v4, v5, v7, v6);
}

void sub_1DF5469B8()
{
  v2 = *(sub_1DF564494() - 8);
  v3 = v0[3];
  v11 = v0[2];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = *(v0 + ((*(v2 + 64) + ((*(v2 + 80) + 72) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1DF48D3C0;

  JUMPOUT(0x1DF543A50);
}

uint64_t sub_1DF546B34(uint64_t a1)
{
  v3 = *(sub_1DF564494() - 8);
  v4 = ((*(v3 + 80) + 80) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE384B0, &qword_1DF56D138) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v16 = v1[3];
  v17 = v1[2];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v12 = v1[8];
  v11 = v1[9];
  v13 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1DF48D3C0;

  return sub_1DF5393B4(a1, v17, v16, v7, v8, v9, v10, v12);
}

uint64_t sub_1DF546CF4(uint64_t a1)
{
  v3 = *(sub_1DF564494() - 8);
  v4 = ((*(v3 + 80) + 80) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE384B0, &qword_1DF56D138) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v16 = v1[3];
  v17 = v1[2];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v12 = v1[8];
  v11 = v1[9];
  v13 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1DF48D3C0;

  return sub_1DF53B4C0(a1, v17, v16, v7, v8, v9, v10, v12);
}

uint64_t objectdestroy_34Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_38Tm()
{
  v1 = sub_1DF564494();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  v9 = *(v0 + 7);

  v10 = *(v0 + 8);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t objectdestroy_51Tm(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1DF564494();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 80) & ~v7;
  v9 = *(v6 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = v7 | v12;
  v15 = (*(v11 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v2 + 2);
  swift_unknownObjectRelease();
  v17 = *(v2 + 4);

  v18 = *(v2 + 5);

  v19 = *(v2 + 6);

  v20 = *(v2 + 8);

  v21 = *(v2 + 9);

  (*(v6 + 8))(&v2[v8], v5);
  (*(v11 + 8))(&v2[v13], v10);

  return MEMORY[0x1EEE6BDD0](v2, v15 + 8, v14 | 7);
}

unint64_t sub_1DF547394()
{
  result = qword_1ECE38528;
  if (!qword_1ECE38528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38528);
  }

  return result;
}

uint64_t sub_1DF547430(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      return 0x6165627472616568;
    case 1:
      return 0x656C436568636163;
    case 2:
      return 0x6E776F6E6B6E75;
  }

  sub_1DF564DF4();

  MEMORY[0x1E12D62C0](a1, a2);
  return 0x5265727574616566;
}

uint64_t sub_1DF547520(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF54757C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_1DF5475CC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DF547604(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v9 = a1;
  if (a2 && (a1 == a4 && a5 == a2 || (sub_1DF5650D4() & 1) != 0))
  {
    return 1;
  }

  if (qword_1ED956080 != -1)
  {
    swift_once();
  }

  v11 = sub_1DF5647B4();
  __swift_project_value_buffer(v11, qword_1ED956088);

  v12 = a3;

  v13 = sub_1DF564794();
  v14 = sub_1DF564C44();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1DF47EF6C(a4, a5, &v19);
    *(v15 + 12) = 2080;
    if (a2)
    {
      v17 = a2;
    }

    else
    {
      v9 = 7104878;
      v17 = 0xE300000000000000;
    }

    v18 = sub_1DF47EF6C(v9, v17, &v19);

    *(v15 + 14) = v18;
    _os_log_impl(&dword_1DF47C000, v13, v14, "invalid geoclassification cache, altDSID changed. Cache altDSID: %s, currentAltDSID: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v16, -1, -1);
    MEMORY[0x1E12D75F0](v15, -1, -1);
  }

  return 0;
}

void sub_1DF547814(uint64_t *a1, void *a2, void *a3, uint64_t a4, unint64_t a5)
{
  v55 = a1;
  v56 = a2;
  v8 = sub_1DF564184();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DF564494();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC25CloudSubscriptionFeatures21GeoClassificationInfo_cacheTill;
  sub_1DF564484();
  v58 = v18;
  LOBYTE(v18) = sub_1DF5643F4();
  v19 = *(v14 + 8);
  v57 = v13;
  v19(v17, v13);
  if (v18)
  {
    v20 = sub_1DF5641C4();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_1DF5641B4();
    (*(v9 + 104))(v12, *MEMORY[0x1E6967FC8], v8);
    sub_1DF564194();
    v59 = a3;
    v60 = a4;
    v61 = a5;
    sub_1DF548318();
    v32 = sub_1DF5641A4();
    v34 = v33;
    v35 = a4;

    v36 = sub_1DF564354();
    v37 = v55;
    v38 = v55[1];
    v59 = *v55;
    v60 = v38;

    MEMORY[0x1E12D62C0](45, 0xE100000000000000);
    MEMORY[0x1E12D62C0](v37[2], v37[3]);
    MEMORY[0x1E12D62C0](45, 0xE100000000000000);
    MEMORY[0x1E12D62C0](v37[4], v37[5]);
    v39 = sub_1DF564914();

    [v56 setObject:v36 forKey:v39];

    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v40 = sub_1DF5647B4();
    __swift_project_value_buffer(v40, qword_1ED956088);
    v41 = a3;

    v25 = sub_1DF564794();
    v42 = sub_1DF564C44();

    if (os_log_type_enabled(v25, v42))
    {
      v43 = swift_slowAlloc();
      v56 = v32;
      v44 = v43;
      v45 = swift_slowAlloc();
      v55 = v34;
      v46 = v45;
      v54 = swift_slowAlloc();
      v59 = v54;
      *v44 = 138412802;
      *(v44 + 4) = v41;
      *v46 = v41;
      *(v44 + 12) = 2080;
      v47 = v41;
      *(v44 + 14) = sub_1DF47EF6C(v35, a5, &v59);
      *(v44 + 22) = 2082;
      sub_1DF5488F4(&qword_1ED954CB0, MEMORY[0x1E6969530]);
      v48 = sub_1DF5650A4();
      v50 = sub_1DF47EF6C(v48, v49, &v59);

      *(v44 + 24) = v50;
      _os_log_impl(&dword_1DF47C000, v25, v42, "updating geoclassification cache with info: %@, altDSID: %s, ttl:%{public}s", v44, 0x20u);
      sub_1DF484888(v46);
      MEMORY[0x1E12D75F0](v46, -1, -1);
      v51 = v54;
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v51, -1, -1);
      MEMORY[0x1E12D75F0](v44, -1, -1);
      v53 = v55;
      v52 = v56;
    }

    else
    {
      v52 = v32;
      v53 = v34;
    }

    sub_1DF48C308(v52, v53);
  }

  else
  {
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v23 = sub_1DF5647B4();
    __swift_project_value_buffer(v23, qword_1ED956088);
    v24 = a3;

    v25 = sub_1DF564794();
    v26 = sub_1DF564C24();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v59 = v28;
      *v27 = 136315138;
      sub_1DF5488F4(&qword_1ED954CB0, MEMORY[0x1E6969530]);
      v29 = sub_1DF5650A4();
      v31 = sub_1DF47EF6C(v29, v30, &v59);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1DF47C000, v25, v26, "cacheTill value is in the past: %s, will not cache this geoclassification", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x1E12D75F0](v28, -1, -1);
      MEMORY[0x1E12D75F0](v27, -1, -1);
    }
  }
}

uint64_t sub_1DF547F60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38538, &qword_1DF56D488);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF54867C();
  sub_1DF5652A4();
  v17 = a2;
  v16 = 0;
  type metadata accessor for GeoClassificationInfo();
  sub_1DF5488F4(&unk_1ECE37650, type metadata accessor for GeoClassificationInfo);
  sub_1DF565074();
  if (!v4)
  {
    v15 = 1;
    sub_1DF565054();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1DF548140()
{
  if (*v0)
  {
    return 0x44495344746C61;
  }

  else
  {
    return 0x6F666E496F6567;
  }
}

uint64_t sub_1DF548174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F666E496F6567 && a2 == 0xE700000000000000;
  if (v6 || (sub_1DF5650D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF5650D4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DF548250(uint64_t a1)
{
  v2 = sub_1DF54867C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF54828C(uint64_t a1)
{
  v2 = sub_1DF54867C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF5482C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DF5486D0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1DF548318()
{
  result = qword_1ECE37790;
  if (!qword_1ECE37790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37790);
  }

  return result;
}

uint64_t sub_1DF54836C(uint64_t *a1, void *a2)
{
  v4 = sub_1DF564104();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  v20 = *a1;
  v21 = v9;

  MEMORY[0x1E12D62C0](45, 0xE100000000000000);
  MEMORY[0x1E12D62C0](a1[2], a1[3]);
  MEMORY[0x1E12D62C0](45, 0xE100000000000000);
  MEMORY[0x1E12D62C0](a1[4], a1[5]);
  v10 = sub_1DF564914();

  v11 = [a2 dataForKey_];

  if (!v11)
  {
    return 0;
  }

  v12 = sub_1DF564374();
  v14 = v13;

  v15 = sub_1DF564144();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_1DF4AD474(v12, v14);
  sub_1DF564134();
  (*(v5 + 104))(v8, *MEMORY[0x1E6967F30], v4);
  sub_1DF564114();
  sub_1DF548590();
  sub_1DF564124();
  sub_1DF48C308(v12, v14);

  sub_1DF48C308(v12, v14);
  return v20;
}

unint64_t sub_1DF548590()
{
  result = qword_1ECE38530;
  if (!qword_1ECE38530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38530);
  }

  return result;
}

uint64_t sub_1DF5485E4(uint64_t *a1, int a2)
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

uint64_t sub_1DF54862C(uint64_t result, int a2, int a3)
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

unint64_t sub_1DF54867C()
{
  result = qword_1ECE377A8;
  if (!qword_1ECE377A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE377A8);
  }

  return result;
}

uint64_t sub_1DF5486D0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38540, &qword_1DF56D490);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_0(a1, v8);
  sub_1DF54867C();
  sub_1DF565284();
  if (!v1)
  {
    type metadata accessor for GeoClassificationInfo();
    v10[7] = 0;
    sub_1DF5488F4(&qword_1ECE37648, type metadata accessor for GeoClassificationInfo);
    sub_1DF564FE4();
    v8 = v11;
    v10[6] = 1;
    sub_1DF564FC4();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t sub_1DF5488F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DF548950()
{
  result = qword_1ECE38548;
  if (!qword_1ECE38548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38548);
  }

  return result;
}

unint64_t sub_1DF5489A8()
{
  result = qword_1ECE37798;
  if (!qword_1ECE37798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37798);
  }

  return result;
}

unint64_t sub_1DF548A00()
{
  result = qword_1ECE377A0;
  if (!qword_1ECE377A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE377A0);
  }

  return result;
}

id static GMEligibilityBypass.bypass.getter()
{
  if ((sub_1DF548FD8() & 1) == 0)
  {
    return 0;
  }

  if (qword_1ED955308 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED955310;
  v1 = sub_1DF564914();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_1DF548AF8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DF564914();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  qword_1ED955310 = v2;
}

void sub_1DF548B94(unsigned __int8 *a1@<X8>)
{
  if (sub_1DF548FD8())
  {
    if (qword_1ED955308 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED955310;
    v3 = sub_1DF564914();
    v4 = [v2 BOOLForKey_];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
}

void sub_1DF548C44(unsigned __int8 *a1)
{
  v1 = *a1;
  if (sub_1DF548FD8())
  {
    if (qword_1ED955308 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED955310;
    v3 = sub_1DF564914();
    [v2 setBool:v1 forKey:v3];
  }
}

void static GMEligibilityBypass.bypass.setter(char a1)
{
  if (sub_1DF548FD8())
  {
    if (qword_1ED955308 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED955310;
    v3 = sub_1DF564914();
    [v2 setBool:a1 & 1 forKey:v3];
  }
}

void (*static GMEligibilityBypass.bypass.modify(unsigned __int8 *a1))(unsigned __int8 *a1)
{
  if (sub_1DF548FD8())
  {
    if (qword_1ED955308 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED955310;
    v3 = sub_1DF564914();
    v4 = [v2 BOOLForKey_];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return sub_1DF548E98;
}

void sub_1DF548E98(unsigned __int8 *a1)
{
  v1 = *a1;
  if (sub_1DF548FD8())
  {
    if (qword_1ED955308 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED955310;
    v3 = sub_1DF564914();
    [v2 setBool:v1 forKey:v3];
  }
}

id GMEligibilityBypass.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMEligibilityBypass();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DF548FD8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1DF564944();

    sub_1DF5649B4();
  }

  has_internal_ui = os_variant_has_internal_ui();
  swift_unknownObjectRelease();
  return has_internal_ui;
}

uint64_t sub_1DF5490B0(unint64_t a1)
{
  v13 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DF564F04())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1E12D66D0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = &v5[OBJC_IVAR___CloudFeature_featureID];
      v9 = *&v5[OBJC_IVAR___CloudFeature_featureID];
      v10 = *&v5[OBJC_IVAR___CloudFeature_featureID + 8];
      if (sub_1DF564A24() & 1) != 0 || (*v8 == 0x6C6C2E64756F6C63 ? (v11 = *(v8 + 1) == 0xE90000000000006DLL) : (v11 = 0), v11 || (sub_1DF5650D4()))
      {
        sub_1DF564E64();
        v4 = *(v13 + 16);
        sub_1DF564E94();
        sub_1DF564EA4();
        sub_1DF564E74();
      }

      else
      {
      }

      if (v7 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1DF54924C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DF564914();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  qword_1ED954EE8 = v2;
}

id static GMAssetsBypass.gmAssetsBypass()()
{
  if ((sub_1DF548FD8() & 1) == 0)
  {
    return 0;
  }

  if (qword_1ED954EE0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED954EE8;
  v1 = sub_1DF564914();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void static GMAssetsBypass.setGMEligibilityBypass(_:)(char a1)
{
  if (sub_1DF548FD8())
  {
    if (qword_1ED954EE0 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED954EE8;
    v3 = sub_1DF564914();
    [v2 setBool:a1 & 1 forKey:v3];
  }
}

id GMAssetsBypass.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMAssetsBypass();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1DF54975C()
{
  sub_1DF564DF4();

  if (*(v0 + OBJC_IVAR___CSFEligibility_regionEligible))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CSFEligibility_regionEligible))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E12D62C0](v1, v2);

  MEMORY[0x1E12D62C0](0x6175676E616C202CLL, 0xEC000000203A6567);
  if (*(v0 + OBJC_IVAR___CSFEligibility_languageEligible))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CSFEligibility_languageEligible))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E12D62C0](v3, v4);

  MEMORY[0x1E12D62C0](0x656369766564202CLL, 0xEA0000000000203ALL);
  if (*(v0 + OBJC_IVAR___CSFEligibility_deviceEligibile))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CSFEligibility_deviceEligibile))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1E12D62C0](v5, v6);

  MEMORY[0x1E12D62C0](62, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t sub_1DF5498CC(uint64_t a1)
{
  sub_1DF4EC8F4(a1, v6);
  if (v7)
  {
    type metadata accessor for Eligibility();
    if (swift_dynamicCast())
    {
      if (v5[OBJC_IVAR___CSFEligibility_regionEligible] == *(v1 + OBJC_IVAR___CSFEligibility_regionEligible) && v5[OBJC_IVAR___CSFEligibility_languageEligible] == *(v1 + OBJC_IVAR___CSFEligibility_languageEligible) && v5[OBJC_IVAR___CSFEligibility_siriLanguageEligible] == *(v1 + OBJC_IVAR___CSFEligibility_siriLanguageEligible) && v5[OBJC_IVAR___CSFEligibility_locationEligible] == *(v1 + OBJC_IVAR___CSFEligibility_locationEligible))
      {
        v4 = v5[OBJC_IVAR___CSFEligibility_deviceEligibile];

        v2 = v4 ^ *(v1 + OBJC_IVAR___CSFEligibility_deviceEligibile) ^ 1;
        return v2 & 1;
      }
    }
  }

  else
  {
    sub_1DF4A7D80(v6);
  }

  v2 = 0;
  return v2 & 1;
}

id Eligibility.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Eligibility.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Eligibility();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1DF549BC4(char *a1@<X8>)
{
  v3 = [v1 domain];
  v4 = sub_1DF564944();
  v6 = v5;

  if (v4 == sub_1DF564944() && v6 == v7)
  {

    v10 = 3;
  }

  else
  {
    v9 = sub_1DF5650D4();

    if (v9)
    {
      v10 = 3;
    }

    else
    {
      if (qword_1ED956390 != -1)
      {
        swift_once();
      }

      v11 = sub_1DF5647B4();
      __swift_project_value_buffer(v11, qword_1ED956398);
      v12 = v1;
      v13 = sub_1DF564794();
      v14 = sub_1DF564C24();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        *(v15 + 4) = v12;
        *v16 = v12;
        v17 = v12;
        _os_log_impl(&dword_1DF47C000, v13, v14, "Unhandled NSError to TicketManagerError: %@", v15, 0xCu);
        sub_1DF47E5B4(v16, &unk_1ECE37F10, &qword_1DF567510);
        MEMORY[0x1E12D75F0](v16, -1, -1);
        MEMORY[0x1E12D75F0](v15, -1, -1);
      }

      v10 = 0;
    }
  }

  *a1 = v10;
}

id sub_1DF549DA8()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  qword_1ECE422C0 = result;
  return result;
}

id sub_1DF549DDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38578, qword_1DF56D6B8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_1DF564504();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v10 = [objc_opt_self() currentLocale];
  sub_1DF5644F4();

  v11 = sub_1DF5644E4();
  (*(v5 + 8))(v8, v4);
  [v9 setLocale_];

  sub_1DF564564();
  v12 = sub_1DF564594();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v3, 1, v12) != 1)
  {
    v14 = sub_1DF564574();
    (*(v13 + 8))(v3, v12);
  }

  [v9 setTimeZone_];

  v15 = sub_1DF564914();
  [v9 setDateFormat_];

  return v9;
}

uint64_t sub_1DF54A038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1DF48D4B0;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_1DF54A1A4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3)
  {
    v8 = sub_1DF564AA4();
  }

  else
  {
    v8 = 0;
  }

  v9 = a2;
  v10 = a4;
  v7(a2, v8, a4);
}

void sub_1DF54A258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_1DF564864();
  }

  else
  {
    v6 = 0;
  }

  v8[4] = a3;
  v8[5] = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1DF54A1A4;
  v8[3] = &block_descriptor_10;
  v7 = _Block_copy(v8);

  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v7);
}

uint64_t sub_1DF54A354(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A18, qword_1DF56B370) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF54A3F4, 0, 0);
}

uint64_t sub_1DF54A3F4()
{
  v1 = v0[11];
  v2 = v0[9];
  sub_1DF5640A4();
  v3 = sub_1DF564344();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[11];
  if (v5 == 1)
  {
    sub_1DF47E5B4(v0[11], &qword_1ECE37A18, qword_1DF56B370);
    if (qword_1ED954C48 != -1)
    {
      swift_once();
    }

    v7 = sub_1DF5647B4();
    __swift_project_value_buffer(v7, qword_1ED954C50);
    v8 = sub_1DF564794();
    v9 = sub_1DF564C24();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DF47C000, v8, v9, "Attempted to BAA sign request with no path", v10, 2u);
      MEMORY[0x1E12D75F0](v10, -1, -1);
    }

    sub_1DF54AB9C();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    v12 = v0[11];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v16 = v0[8];
    v15 = v0[9];
    v17 = sub_1DF564324();
    v19 = v18;
    v0[12] = v18;
    (*(v4 + 8))(v6, v3);
    v20 = sub_1DF5640F4();
    v0[13] = v20;
    v21 = *(v20 - 8);
    v0[14] = v21;
    (*(v21 + 16))(v16, v15, v20);
    if (qword_1ED954C48 != -1)
    {
      swift_once();
    }

    v22 = sub_1DF5647B4();
    __swift_project_value_buffer(v22, qword_1ED954C50);
    v23 = sub_1DF564794();
    v24 = sub_1DF564C14();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1DF47C000, v23, v24, "Fetching BAA signing credentials", v25, 2u);
      MEMORY[0x1E12D75F0](v25, -1, -1);
    }

    v26 = v0[10];

    v27 = v26 + *(type metadata accessor for BAARequestSigner() + 20);
    v28 = swift_task_alloc();
    v0[15] = v28;
    v28[2] = v27;
    v28[3] = v26;
    v28[4] = v17;
    v28[5] = v19;
    v29 = *(MEMORY[0x1E69E8920] + 4);
    v30 = swift_task_alloc();
    v0[16] = v30;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38580, &unk_1DF56D738);
    *v30 = v0;
    v30[1] = sub_1DF54A800;

    return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000002ELL, 0x80000001DF575020, sub_1DF54C088, v28, v31);
  }
}

uint64_t sub_1DF54A800()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v8 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_1DF54AB00;
  }

  else
  {
    v5 = *(v2 + 120);
    v6 = *(v2 + 96);

    v4 = sub_1DF54A928;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DF54A928()
{
  v1 = v0[7];
  v2 = v0[8];
  v18 = v0[2];
  v19 = v0[11];
  v3 = v0[4];
  v16 = v3;
  v17 = v0[3];
  v15 = v0[5];
  v4 = v0[6];
  sub_1DF564364();
  sub_1DF5640C4();

  sub_1DF564364();
  sub_1DF5640C4();

  v5 = SecCertificateCopyData(v4);
  v6 = sub_1DF564374();
  v8 = v7;

  v20 = v6;
  v21 = v8;
  v9 = SecCertificateCopyData(v1);
  v10 = sub_1DF564374();
  v12 = v11;

  sub_1DF564384();
  sub_1DF564364();
  sub_1DF5640C4();

  sub_1DF48C308(v10, v12);

  sub_1DF48C308(v16, v15);
  sub_1DF48C308(v18, v17);
  sub_1DF48C308(v20, v21);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DF54AB00()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[8];

  (*(v2 + 8))(v5, v4);
  v6 = v0[17];
  v7 = v0[11];

  v8 = v0[1];

  return v8();
}

unint64_t sub_1DF54AB9C()
{
  result = qword_1ECE37680;
  if (!qword_1ECE37680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37680);
  }

  return result;
}

uint64_t sub_1DF54ABF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a4;
  v50 = a5;
  v47 = a1;
  v48 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v46 = *(v6 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = v40 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38588, &qword_1DF56D748);
  v8 = *(v43 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = v40 - v10;
  v11 = sub_1DF564834();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38590, &unk_1DF56D750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56B0F0;
  v17 = *MEMORY[0x1E6999EB8];
  v51 = sub_1DF564944();
  v52 = v18;
  v19 = MEMORY[0x1E69E6158];
  sub_1DF564D94();
  *(inited + 96) = v19;
  *(inited + 72) = 4608835;
  *(inited + 80) = 0xE300000000000000;
  v20 = *MEMORY[0x1E6999F28];
  v51 = sub_1DF564944();
  v52 = v21;
  sub_1DF564D94();
  *(inited + 168) = MEMORY[0x1E69E6530];
  *(inited + 144) = 129600;
  v22 = *MEMORY[0x1E6999F00];
  v51 = sub_1DF564944();
  v52 = v23;
  sub_1DF564D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37AC0, &qword_1DF567A60);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1DF566E40;
  v25 = *MEMORY[0x1E6999F08];
  *(v24 + 32) = sub_1DF564944();
  *(v24 + 40) = v26;
  v27 = *MEMORY[0x1E6999EE8];
  *(v24 + 48) = sub_1DF564944();
  *(v24 + 56) = v28;
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A30, &qword_1DF5676D0);
  *(inited + 216) = v24;
  v41 = sub_1DF4C30D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CA8, &qword_1DF568868);
  swift_arrayDestroy();
  v40[1] = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_1DF4AB608();
  (*(v12 + 104))(v15, *MEMORY[0x1E69E7F98], v11);
  v29 = sub_1DF564C84();
  (*(v12 + 8))(v15, v11);
  v31 = v42;
  v30 = v43;
  (*(v8 + 16))(v42, v47, v43);
  v32 = v44;
  sub_1DF4952D8(v48, v44);
  v33 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v34 = (v9 + *(v46 + 80) + v33) & ~*(v46 + 80);
  v35 = (v45 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v8 + 32))(v36 + v33, v31, v30);
  sub_1DF48C284(v32, v36 + v34);
  v37 = (v36 + v35);
  v38 = v50;
  *v37 = v49;
  v37[1] = v38;

  sub_1DF54A258(v29, v41, sub_1DF54C094, v36);
}

void sub_1DF54B0BC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v113 = a7;
  v112 = a6;
  v116 = a4;
  error[1] = *MEMORY[0x1E69E9840];
  v11 = sub_1DF564984();
  v114 = *(v11 - 8);
  v12 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DF564494();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v111 - v22;
  v115 = a1;
  if (a1)
  {
    if (a3)
    {
      v24 = v115;
      v25 = v115;
      v26 = a3;
      if (qword_1ED954C48 != -1)
      {
        swift_once();
      }

      v27 = sub_1DF5647B4();
      __swift_project_value_buffer(v27, qword_1ED954C50);
      v28 = a3;
      v29 = sub_1DF564794();
      v30 = sub_1DF564C24();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v118 = v32;
        *v31 = 136315138;
        swift_getErrorValue();
        v33 = sub_1DF5651B4();
        v35 = sub_1DF47EF6C(v33, v34, &v118);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_1DF47C000, v29, v30, "Unable to get BAA certificates. Error: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x1E12D75F0](v32, -1, -1);
        MEMORY[0x1E12D75F0](v31, -1, -1);
      }

      sub_1DF54AB9C();
      v36 = swift_allocError();
      *v37 = 1;
      v118 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38588, &qword_1DF56D748);
      sub_1DF564B14();

      goto LABEL_30;
    }

    if (!a2)
    {
      v59 = v115;
      goto LABEL_25;
    }

    Signature = v115;
    v51 = sub_1DF54BEBC(a2);
    if (!v51)
    {
LABEL_25:
      if (qword_1ED954C48 != -1)
      {
        swift_once();
      }

      v60 = sub_1DF5647B4();
      __swift_project_value_buffer(v60, qword_1ED954C50);
      v61 = sub_1DF564794();
      v62 = sub_1DF564C24();
      v63 = os_log_type_enabled(v61, v62);
      v24 = v115;
      if (v63)
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_1DF47C000, v61, v62, "Unable to get BAA certificates. Unknown error.", v64, 2u);
        MEMORY[0x1E12D75F0](v64, -1, -1);
      }

      sub_1DF54AB9C();
      v65 = swift_allocError();
      *v66 = 1;
      v118 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38588, &qword_1DF56D748);
      sub_1DF564B14();
      goto LABEL_30;
    }

    v52 = v51 & 0xFFFFFFFFFFFFFF8;
    if (v51 >> 62)
    {
      v68 = v51;
      v69 = sub_1DF564F04();
      v51 = v68;
      if (v69 < 2)
      {
        goto LABEL_18;
      }
    }

    else if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
LABEL_18:

      goto LABEL_25;
    }

    v111 = v51;
    sub_1DF4952D8(a5, v23);
    if ((*(v16 + 48))(v23, 1, v15) == 1)
    {
      sub_1DF47E5B4(v23, &qword_1ECE37A10, &qword_1DF567C00);
      sub_1DF564474();
      v23 = v19;
    }

    sub_1DF564444();
    v71 = v70;
    v73 = *(v16 + 8);
    v72 = v16 + 8;
    v73(v23, v15);
    v74 = v71 * 1000.0;
    if (COERCE__INT64(fabs(v71 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v74 > -1.0)
    {
      if (v74 < 1.84467441e19)
      {
        v118 = v74;
        v118 = sub_1DF5650A4();
        v119 = v75;

        MEMORY[0x1E12D62C0](59, 0xE100000000000000);

        MEMORY[0x1E12D62C0](v112, v113);

        sub_1DF564974();
        v72 = sub_1DF564954();
        v19 = v76;

        (*(v114 + 8))(v14, v11);
        if (v19 >> 60 == 15)
        {

          sub_1DF54AB9C();
          v77 = swift_allocError();
          *v78 = 4;
          v118 = v77;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38588, &qword_1DF56D748);
          sub_1DF564B14();

          goto LABEL_31;
        }

        error[0] = 0;
        v79 = *MEMORY[0x1E697B128];
        v80 = sub_1DF564354();
        Signature = SecKeyCreateSignature(Signature, v79, v80, error);

        if (!Signature)
        {

          v86 = error[0];
          if (!error[0])
          {
            if (qword_1ED954C48 != -1)
            {
              swift_once();
            }

            v105 = sub_1DF5647B4();
            __swift_project_value_buffer(v105, qword_1ED954C50);
            v106 = sub_1DF564794();
            v107 = sub_1DF564C24();
            if (os_log_type_enabled(v106, v107))
            {
              v108 = swift_slowAlloc();
              *v108 = 0;
              _os_log_impl(&dword_1DF47C000, v106, v107, "BAA signature was empty", v108, 2u);
              MEMORY[0x1E12D75F0](v108, -1, -1);
            }

            sub_1DF54AB9C();
            v109 = swift_allocError();
            *v110 = 3;
            v118 = v109;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38588, &qword_1DF56D748);
            sub_1DF564B14();
            sub_1DF48C2F4(v72, v19);
            v24 = v115;
            goto LABEL_30;
          }

          if (qword_1ED954C48 == -1)
          {
            goto LABEL_51;
          }

          goto LABEL_67;
        }

        if (qword_1ED954C48 == -1)
        {
LABEL_42:
          v81 = sub_1DF5647B4();
          __swift_project_value_buffer(v81, qword_1ED954C50);
          v82 = sub_1DF564794();
          v83 = sub_1DF564C14();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            *v84 = 0;
            _os_log_impl(&dword_1DF47C000, v82, v83, "Successfully fetched BAA signing credentials", v84, 2u);
            MEMORY[0x1E12D75F0](v84, -1, -1);
          }

          sub_1DF4EF5A8(v72, v19);
          v85 = Signature;
          v86 = sub_1DF564374();
          v88 = v87;

          v89 = v111;
          if ((v111 & 0xC000000000000001) != 0)
          {
            v92 = MEMORY[0x1E12D66D0](0, v111);
            v93 = MEMORY[0x1E12D66D0](1, v89);
            goto LABEL_48;
          }

          v90 = *(v52 + 16);
          if (v90)
          {
            if (v90 != 1)
            {
              v91 = *(v111 + 40);
              v92 = *(v111 + 32);
              v93 = v91;
LABEL_48:
              v94 = v93;

              v118 = v72;
              v119 = v19;
              v120 = v86;
              v121 = v88;
              v122 = v92;
              v123 = v94;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38588, &qword_1DF56D748);
              sub_1DF564B24();
LABEL_54:
              sub_1DF48C2F4(v72, v19);

              v24 = v115;
LABEL_30:

              goto LABEL_31;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_67:
          swift_once();
LABEL_51:
          v95 = sub_1DF5647B4();
          __swift_project_value_buffer(v95, qword_1ED954C50);
          v85 = v86;
          v96 = sub_1DF564794();
          v97 = sub_1DF564C24();

          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            v118 = v99;
            *v98 = 136315138;
            v117 = v85;
            type metadata accessor for CFError(0);
            sub_1DF54C1C8();
            v100 = sub_1DF5651B4();
            v102 = sub_1DF47EF6C(v100, v101, &v118);

            *(v98 + 4) = v102;
            _os_log_impl(&dword_1DF47C000, v96, v97, "Unable to create BAA signature: %s", v98, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v99);
            MEMORY[0x1E12D75F0](v99, -1, -1);
            MEMORY[0x1E12D75F0](v98, -1, -1);
          }

          sub_1DF54AB9C();
          v103 = swift_allocError();
          *v104 = 5;
          v118 = v103;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38588, &qword_1DF56D748);
          sub_1DF564B14();
          goto LABEL_54;
        }

LABEL_63:
        swift_once();
        goto LABEL_42;
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    __break(1u);
    goto LABEL_62;
  }

  if (a3)
  {
    v38 = a3;
    if (qword_1ED954C48 != -1)
    {
      swift_once();
    }

    v39 = sub_1DF5647B4();
    __swift_project_value_buffer(v39, qword_1ED954C50);
    v40 = a3;
    v41 = sub_1DF564794();
    v42 = sub_1DF564C24();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v118 = v44;
      *v43 = 136315138;
      swift_getErrorValue();
      v45 = sub_1DF5651B4();
      v47 = sub_1DF47EF6C(v45, v46, &v118);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_1DF47C000, v41, v42, "Unable to get BAA signing keys. Error: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x1E12D75F0](v44, -1, -1);
      MEMORY[0x1E12D75F0](v43, -1, -1);
    }

    sub_1DF54AB9C();
    v48 = swift_allocError();
    *v49 = 2;
    v118 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38588, &qword_1DF56D748);
    sub_1DF564B14();
  }

  else
  {
    if (qword_1ED954C48 != -1)
    {
      swift_once();
    }

    v53 = sub_1DF5647B4();
    __swift_project_value_buffer(v53, qword_1ED954C50);
    v54 = sub_1DF564794();
    v55 = sub_1DF564C24();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1DF47C000, v54, v55, "Unable to get BAA signing keys. Unknown error.", v56, 2u);
      MEMORY[0x1E12D75F0](v56, -1, -1);
    }

    sub_1DF54AB9C();
    v57 = swift_allocError();
    *v58 = 2;
    v118 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38588, &qword_1DF56D748);
    sub_1DF564B14();
  }

LABEL_31:
  v67 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DF54BEBC(uint64_t a1)
{
  v7 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1DF564E84();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1DF47F24C(i, v6);
    type metadata accessor for SecCertificate(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1DF564E64();
    v4 = *(v7 + 16);
    sub_1DF564E94();
    sub_1DF564EA4();
    sub_1DF564E74();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

unint64_t sub_1DF54BFA8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DF54C550(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DF54BFF0(uint64_t a1)
{
  v2 = sub_1DF54C3FC();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DF54C02C(uint64_t a1)
{
  v2 = sub_1DF54C3FC();
  v3 = sub_1DF54C4FC();
  v4 = sub_1DF4995C8();

  return MEMORY[0x1EEDC6AB0](a1, v2, v3, v4);
}

void sub_1DF54C094(void *a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38588, &qword_1DF56D748) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (v3 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  sub_1DF54B0BC(a1, a2, a3, v3 + v8, v3 + v11, v13, v14);
}

unint64_t sub_1DF54C1C8()
{
  result = qword_1ECE38598;
  if (!qword_1ECE38598)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38598);
  }

  return result;
}

void sub_1DF54C278()
{
  sub_1DF4820E4();
  if (v0 <= 0x3F)
  {
    sub_1DF54C2FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1DF54C2FC()
{
  result = qword_1ED9548C8;
  if (!qword_1ED9548C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED9548C8);
  }

  return result;
}

unint64_t sub_1DF54C364()
{
  result = qword_1ECE385A0;
  if (!qword_1ECE385A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE385A8, &qword_1DF56D7E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE385A0);
  }

  return result;
}

unint64_t sub_1DF54C3CC(uint64_t a1)
{
  *(a1 + 8) = sub_1DF54C3FC();
  result = sub_1DF54C450();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DF54C3FC()
{
  result = qword_1ECE385B0;
  if (!qword_1ECE385B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE385B0);
  }

  return result;
}

unint64_t sub_1DF54C450()
{
  result = qword_1ECE385B8;
  if (!qword_1ECE385B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE385B8);
  }

  return result;
}

unint64_t sub_1DF54C4A8()
{
  result = qword_1ECE385C0;
  if (!qword_1ECE385C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE385C0);
  }

  return result;
}

unint64_t sub_1DF54C4FC()
{
  result = qword_1ECE385C8;
  if (!qword_1ECE385C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE385C8);
  }

  return result;
}

unint64_t sub_1DF54C550(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

uint64_t SiriAssistantLocale.current.getter()
{
  if (qword_1ED9556F8 != -1)
  {
    swift_once();
  }

  v0 = sub_1DF5647B4();
  __swift_project_value_buffer(v0, qword_1ED955700);
  v1 = sub_1DF564794();
  v2 = sub_1DF564C44();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DF47C000, v1, v2, "Attempting to get locale from CFPreferences.", v3, 2u);
    MEMORY[0x1E12D75F0](v3, -1, -1);
  }

  v4 = sub_1DF564914();
  CFPreferencesSynchronize(v4, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);

  v5 = sub_1DF564914();
  v6 = sub_1DF564914();
  v7 = CFPreferencesCopyAppValue(v5, v6);

  if (!v7)
  {
    v16 = sub_1DF564794();
    v17 = sub_1DF564C24();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DF47C000, v16, v17, "SiriAssistantLocale.current - Unable to get locale from CFPreferences", v18, 2u);
      MEMORY[0x1E12D75F0](v18, -1, -1);
    }

    return 0;
  }

  v8 = CFGetTypeID(v7);
  if (v8 != CFStringGetTypeID())
  {
    swift_unknownObjectRetain();
    v19 = sub_1DF564794();
    v20 = sub_1DF564C24();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36[0] = v22;
      *v21 = 136315394;
      swift_getObjectType();
      v23 = sub_1DF5652D4();
      v25 = sub_1DF47EF6C(v23, v24, v36);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v37 = v7;
      swift_unknownObjectRetain();
      v26 = sub_1DF564994();
      v28 = sub_1DF47EF6C(v26, v27, v36);

      *(v21 + 14) = v28;
      v29 = "SiriAssistantLocale.current - Value from preferences is not expected type CFString. Type is: %s - %s";
LABEL_18:
      _os_log_impl(&dword_1DF47C000, v19, v20, v29, v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v22, -1, -1);
      MEMORY[0x1E12D75F0](v21, -1, -1);

      swift_unknownObjectRelease();
      return 0;
    }

LABEL_19:
    swift_unknownObjectRelease();

    return 0;
  }

  v37 = v7;
  swift_unknownObjectRetain();
  if (!swift_dynamicCast())
  {
    swift_unknownObjectRetain();
    v19 = sub_1DF564794();
    v20 = sub_1DF564C24();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36[0] = v22;
      *v21 = 136315394;
      swift_getObjectType();
      v30 = sub_1DF5652D4();
      v32 = sub_1DF47EF6C(v30, v31, v36);

      *(v21 + 4) = v32;
      *(v21 + 12) = 2080;
      v37 = v7;
      swift_unknownObjectRetain();
      v33 = sub_1DF564994();
      v35 = sub_1DF47EF6C(v33, v34, v36);

      *(v21 + 14) = v35;
      v29 = "SiriAssistantLocale.current - Unable to downcast to String: %s - %s";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v9 = v36[0];

  v10 = sub_1DF564794();
  v11 = sub_1DF564C44();
  v12 = v36[1];

  if (os_log_type_enabled(v10, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1DF47EF6C(v9, v12, v36);
    _os_log_impl(&dword_1DF47C000, v10, v11, "SiriAssistantLocale.current - Resolved, returning locale: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1E12D75F0](v14, -1, -1);
    MEMORY[0x1E12D75F0](v13, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v9;
}

void sub_1DF54CB34()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DF564914();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  qword_1ED9562C0 = v2;
}

uint64_t static GMBypass.setGMEligibilityBypass(_:)(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - v6;
  v8 = sub_1DF5647B4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1DF548FD8();
  if (result)
  {

    sub_1DF5647A4();
    v14 = sub_1DF564794();
    v15 = sub_1DF564C44();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136446466;
      *(v16 + 4) = sub_1DF47EF6C(0xD00000000000001ALL, 0x80000001DF5750F0, &v25);
      *(v16 + 12) = 1026;
      *(v16 + 14) = a1 & 1;
      _os_log_impl(&dword_1DF47C000, v14, v15, "%{public}s Setting AFM bypass to %{BOOL,public}d.", v16, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1E12D75F0](v17, -1, -1);
      MEMORY[0x1E12D75F0](v16, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    if (qword_1ED9562B0 != -1)
    {
      swift_once();
    }

    v18 = qword_1ED9562C0;
    v19 = a1 & 1;
    v20 = sub_1DF564AF4();
    v21 = sub_1DF564914();
    [v18 setValue:v20 forKey:v21];

    v22 = sub_1DF564B44();
    (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = v2;
    *(v23 + 40) = v19;
    sub_1DF515B98(0, 0, v7, &unk_1DF56DA20, v23);
  }

  return result;
}

uint64_t sub_1DF54CF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1DF48D3C0;

  return sub_1DF54DDB8(a5);
}

uint64_t static GMBypass.setGMEligibilityBypassAndWait(_:)(char a1)
{
  *(v1 + 48) = a1;
  v2 = sub_1DF5647B4();
  *(v1 + 16) = v2;
  v3 = *(v2 - 8);
  *(v1 + 24) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF54D0B8, 0, 0);
}

uint64_t sub_1DF54D0B8()
{
  v22 = v0;
  v1 = sub_1DF548FD8();
  v2 = *(v0 + 32);
  if (v1)
  {

    sub_1DF5647A4();
    v3 = sub_1DF564794();
    v4 = sub_1DF564C44();
    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 24);
    v6 = *(v0 + 32);
    v8 = *(v0 + 16);
    if (v5)
    {
      v9 = *(v0 + 48);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136446466;
      *(v10 + 4) = sub_1DF47EF6C(0xD000000000000021, 0x80000001DF575110, &v21);
      *(v10 + 12) = 1026;
      *(v10 + 14) = v9;
      _os_log_impl(&dword_1DF47C000, v3, v4, "%{public}s Setting AFM bypass to %{BOOL,public}d.", v10, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1E12D75F0](v11, -1, -1);
      MEMORY[0x1E12D75F0](v10, -1, -1);
    }

    (*(v7 + 8))(v6, v8);
    if (qword_1ED9562B0 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 48);
    v13 = qword_1ED9562C0;
    v14 = sub_1DF564AF4();
    v15 = sub_1DF564914();
    [v13 setValue:v14 forKey:v15];

    v16 = swift_task_alloc();
    *(v0 + 40) = v16;
    *v16 = v0;
    v16[1] = sub_1DF550780;
    v17 = *(v0 + 48);

    return sub_1DF54DDB8(v17);
  }

  else
  {
    v19 = *(v0 + 32);

    v20 = *(v0 + 8);

    return v20();
  }
}

id sub_1DF54D390()
{
  if ((sub_1DF548FD8() & 1) == 0)
  {
    return 0;
  }

  if (qword_1ED9562B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED9562C0;
  v1 = sub_1DF564914();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t static GMBypass.setADMBypass(_:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  result = sub_1DF548FD8();
  if (result)
  {
    if (qword_1ED9562B0 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED9562C0;
    v9 = sub_1DF564914();
    v10 = a1 & 1;
    [v8 setBool:v10 forKey:v9];

    v11 = sub_1DF564B44();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v1;
    *(v12 + 40) = v10;
    sub_1DF515B98(0, 0, v6, &unk_1DF56DA40, v12);
  }

  return result;
}

{
  *(v1 + 48) = a1;
  v2 = sub_1DF5647B4();
  *(v1 + 16) = v2;
  v3 = *(v2 - 8);
  *(v1 + 24) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF54D8AC, 0, 0);
}

uint64_t sub_1DF54D5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1DF48D4B0;

  return sub_1DF54F6A4(a5);
}

uint64_t sub_1DF54D8AC()
{
  v21 = v0;
  v1 = sub_1DF548FD8();
  v2 = *(v0 + 32);
  if (v1)
  {

    sub_1DF5647A4();
    v3 = sub_1DF564794();
    v4 = sub_1DF564C44();
    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 24);
    v6 = *(v0 + 32);
    v8 = *(v0 + 16);
    if (v5)
    {
      v9 = *(v0 + 48);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136446466;
      *(v10 + 4) = sub_1DF47EF6C(0xD000000000000010, 0x80000001DF575140, &v20);
      *(v10 + 12) = 1026;
      *(v10 + 14) = v9;
      _os_log_impl(&dword_1DF47C000, v3, v4, "%{public}s Setting ADM bypass to %{BOOL,public}d.", v10, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1E12D75F0](v11, -1, -1);
      MEMORY[0x1E12D75F0](v10, -1, -1);
    }

    (*(v7 + 8))(v6, v8);
    if (qword_1ED9562B0 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 48);
    v13 = qword_1ED9562C0;
    v14 = sub_1DF564914();
    [v13 setBool:v12 forKey:v14];

    v15 = swift_task_alloc();
    *(v0 + 40) = v15;
    *v15 = v0;
    v15[1] = sub_1DF54DB64;
    v16 = *(v0 + 48);

    return sub_1DF54F6A4(v16);
  }

  else
  {
    v18 = *(v0 + 32);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1DF54DB64()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v6 = *v0;

  v3 = *(v1 + 32);

  v4 = *(v6 + 8);

  return v4();
}

id GMBypass.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMBypass();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DF54DCF4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF54CF34(a1, v4, v5, v6, v7);
}

uint64_t sub_1DF54DDD8()
{
  v23 = v0;
  v1 = *(v0 + 360);
  v2 = sub_1DF5646D4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 160) = sub_1DF5646C4();
  if (v1 == 1)
  {
    if (qword_1ED9545D8 != -1)
    {
      swift_once();
    }

    v5 = sub_1DF5647B4();
    __swift_project_value_buffer(v5, qword_1ED9545E0);
    v6 = sub_1DF564794();
    v7 = sub_1DF564C04();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1DF47EF6C(0xD00000000000001ELL, 0x80000001DF5751C0, &v22);
      _os_log_impl(&dword_1DF47C000, v6, v7, "%{public}s Updating availability with bypass enabled.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1E12D75F0](v9, -1, -1);
      MEMORY[0x1E12D75F0](v8, -1, -1);
    }

    v10 = sub_1DF564654();
    *(v0 + 168) = v10;
    v11 = *(v10 - 8);
    *(v0 + 176) = v11;
    v12 = *(v11 + 64) + 15;
    v13 = swift_task_alloc();
    *(v0 + 184) = v13;
    v14 = *(sub_1DF564634() - 8);
    v15 = *(v14 + 64) + 15;
    swift_task_alloc();
    v16 = *MEMORY[0x1E69A1450];
    (*(v14 + 104))();
    sub_1DF564644();

    v17 = *(MEMORY[0x1E69A1458] + 4);
    v18 = swift_task_alloc();
    *(v0 + 192) = v18;
    *v18 = v0;
    v18[1] = sub_1DF54E1AC;

    return MEMORY[0x1EEE0B5B8](v13);
  }

  else
  {
    v19 = objc_opt_self();
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1DF54E7FC;
    v20 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D50, qword_1DF569370);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1DF4E5758;
    *(v0 + 104) = &block_descriptor_11;
    *(v0 + 112) = v20;
    [v19 currentAvailabilityWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1DF54E1AC()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  v2[25] = v0;

  v5 = v2[22];
  if (v0)
  {
    (*(v5 + 8))(v2[23], v2[21]);

    return MEMORY[0x1EEE6DFA0](sub_1DF54F26C, 0, 0);
  }

  else
  {
    v6 = v2[23];
    (*(v5 + 8))();

    v7 = *(MEMORY[0x1E69A1460] + 4);
    v8 = swift_task_alloc();
    v2[26] = v8;
    *v8 = v4;
    v8[1] = sub_1DF54E39C;
    v9 = v2[20];
    v10 = MEMORY[0x1E69E7CD0];

    return MEMORY[0x1EEE0B5C0](v10);
  }
}

uint64_t sub_1DF54E39C()
{
  v2 = *(*v1 + 208);
  v3 = *v1;
  v3[27] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF54F2DC, 0, 0);
  }

  else
  {
    v4 = *(MEMORY[0x1E69A1468] + 4);
    v5 = swift_task_alloc();
    v3[28] = v5;
    *v5 = v3;
    v5[1] = sub_1DF54E510;
    v6 = v3[20];

    return MEMORY[0x1EEE0B5C8](1);
  }
}

uint64_t sub_1DF54E510()
{
  v2 = *(*v1 + 224);
  v3 = *v1;
  v3[29] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF54F340, 0, 0);
  }

  else
  {
    v4 = *(MEMORY[0x1E69A1470] + 4);
    v5 = swift_task_alloc();
    v3[30] = v5;
    *v5 = v3;
    v5[1] = sub_1DF54E684;
    v6 = v3[20];

    return MEMORY[0x1EEE0B5D0](1);
  }
}

uint64_t sub_1DF54E684()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_1DF54F3A4;
  }

  else
  {
    v3 = sub_1DF54E798;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF54E798()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF54E7FC()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF54E8DC, 0, 0);
}

uint64_t sub_1DF54E8DC()
{
  v0[32] = v0[18];
  v1 = sub_1DF564654();
  v0[33] = v1;
  v2 = *(v1 - 8);
  v0[34] = v2;
  v3 = *(v2 + 64) + 15;
  v4 = swift_task_alloc();
  v0[35] = v4;
  sub_1DF4F396C();
  v5 = *(MEMORY[0x1E69A1458] + 4);
  v6 = swift_task_alloc();
  v0[36] = v6;
  *v6 = v0;
  v6[1] = sub_1DF54E9E4;
  v7 = v0[20];

  return MEMORY[0x1EEE0B5B8](v4);
}

uint64_t sub_1DF54E9E4()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 272);
  v6 = *(*v1 + 264);
  v10 = *v1;
  *(*v1 + 296) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_1DF54F408;
  }

  else
  {
    v8 = *(v2 + 280);

    v7 = sub_1DF54EB64;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DF54EB64()
{
  v13 = v0;
  if (qword_1ED954D60 != -1)
  {
    swift_once();
  }

  if (qword_1ED955730 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  __swift_project_value_buffer(v1, qword_1ED955738);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1DF47EF6C(0xD000000000000010, 0x80000001DF572630, &v12);
    _os_log_impl(&dword_1DF47C000, v2, v3, "%{public}s is deprecated, returning empty set.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1E12D75F0](v5, -1, -1);
    MEMORY[0x1E12D75F0](v4, -1, -1);
  }

  v0[19] = 0;
  v7 = sub_1DF4F6300(v6);
  v0[38] = v7;
  v8 = *(MEMORY[0x1E69A1460] + 4);
  v9 = swift_task_alloc();
  v0[39] = v9;
  *v9 = v0;
  v9[1] = sub_1DF54ED5C;
  v10 = v0[20];

  return MEMORY[0x1EEE0B5C0](v7);
}

uint64_t sub_1DF54ED5C()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v7 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = sub_1DF54F484;
  }

  else
  {
    v5 = *(v2 + 304);

    v4 = sub_1DF54EE78;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DF54EE78()
{
  v1 = _s25CloudSubscriptionFeatures7GMOptInC7currentACSgvgZ_0();
  v2 = sub_1DF4BFA44();

  v3 = *(MEMORY[0x1E69A1468] + 4);
  v4 = swift_task_alloc();
  *(v0 + 328) = v4;
  *v4 = v0;
  v4[1] = sub_1DF54EF28;
  v5 = *(v0 + 160);

  return MEMORY[0x1EEE0B5C8](v2 & 1);
}

uint64_t sub_1DF54EF28()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_1DF54F500;
  }

  else
  {
    v3 = sub_1DF54F03C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF54F03C()
{
  v1 = [*(v0 + 256) status] == 0;
  v2 = *(MEMORY[0x1E69A1470] + 4);
  v3 = swift_task_alloc();
  *(v0 + 344) = v3;
  *v3 = v0;
  v3[1] = sub_1DF54F0EC;
  v4 = *(v0 + 160);

  return MEMORY[0x1EEE0B5D0](v1);
}

uint64_t sub_1DF54F0EC()
{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_1DF54F570;
  }

  else
  {
    v3 = sub_1DF54F200;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF54F200()
{
  v1 = v0[32];
  v2 = v0[20];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DF54F26C()
{
  v1 = v0[23];
  v2 = v0[20];

  v3 = v0[25];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1DF54F2DC()
{
  v1 = v0[20];

  v2 = v0[27];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DF54F340()
{
  v1 = v0[20];

  v2 = v0[29];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DF54F3A4()
{
  v1 = v0[20];

  v2 = v0[31];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DF54F408()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 160);

  v3 = *(v0 + 296);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DF54F484()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 160);

  v3 = *(v0 + 320);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DF54F500()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 336);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DF54F570()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 352);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DF54F5E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF54D5C0(a1, v4, v5, v6, v7);
}

uint64_t sub_1DF54F6C4()
{
  v93 = v0;
  if (qword_1ED956390 != -1)
  {
LABEL_54:
    swift_once();
  }

  v1 = sub_1DF5647B4();
  *(v0 + 5) = __swift_project_value_buffer(v1, qword_1ED956398);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C04();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v92[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1DF47EF6C(0xD00000000000001ELL, 0x80000001DF5751A0, v92);
    _os_log_impl(&dword_1DF47C000, v2, v3, "%s Updating availability.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1E12D75F0](v5, -1, -1);
    MEMORY[0x1E12D75F0](v4, -1, -1);
  }

  v6 = v0[104];
  v7 = sub_1DF5646D4();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v0 + 6) = sub_1DF5646C4();
  v10 = MEMORY[0x1E69E7CC0];
  if (v6 != 1)
  {
    v46 = sub_1DF481988();
    v47 = [v46 aa_primaryAppleAccount];
    v89 = v0;
    if (v47 && (v48 = v47, v49 = [v47 aa_altDSID], v48, v49))
    {
      v50 = sub_1DF564944();
      v91 = v51;
    }

    else
    {

      v50 = 0;
      v91 = 0;
    }

    v52 = 0;
    v92[0] = v10;
    v90 = v10;
LABEL_21:
    v53 = 4;
    if (v52 > 4)
    {
      v53 = v52;
    }

    v0 = &unk_1F5A88670 + 16 * v52 + 40;
    v54 = v53 + 1;
    while (v52 != 4)
    {
      if (v54 == ++v52)
      {
        __break(1u);
        goto LABEL_54;
      }

      v55 = *(v0 - 1);
      v56 = *v0;
      v57 = qword_1ED955FF0;

      if (v57 != -1)
      {
        swift_once();
      }

      v0 += 16;
      v58 = FeatureCache.cachedFeature(identifier:altDSID:allowAnySession:ignoreTTL:)(v55, v56, v50, v91, 0, 0);

      if (v58)
      {
        MEMORY[0x1E12D6340](v59);
        if (*((v92[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v60 = *((v92[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1DF564AC4();
        }

        sub_1DF564AE4();
        v90 = v92[0];
        goto LABEL_21;
      }
    }

    v61 = v90;
    if (v90 >> 62)
    {
      v62 = sub_1DF564F04();
      v61 = v90;
    }

    else
    {
      v62 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v62)
    {
      v63 = v61;
      v92[0] = MEMORY[0x1E69E7CC0];
      v64 = sub_1DF4BCE90(0, v62 & ~(v62 >> 63), 0);
      if (v62 < 0)
      {
        __break(1u);
        return MEMORY[0x1EEE0B5D8](v64);
      }

      v65 = 0;
      v66 = v92[0];
      v67 = v63;
      v68 = v63 & 0xC000000000000001;
      do
      {
        if (v68)
        {
          v69 = MEMORY[0x1E12D66D0](v65, v67);
        }

        else
        {
          v69 = *(v67 + 8 * v65 + 32);
        }

        v70 = v69;
        v71 = *&v69[OBJC_IVAR___CloudFeature_featureID];
        v72 = *&v69[OBJC_IVAR___CloudFeature_featureID + 8];
        v73 = OBJC_IVAR___CloudFeature_canUse;
        swift_beginAccess();
        v74 = v70[v73];

        v92[0] = v66;
        v76 = *(v66 + 16);
        v75 = *(v66 + 24);
        if (v76 >= v75 >> 1)
        {
          sub_1DF4BCE90((v75 > 1), v76 + 1, 1);
          v66 = v92[0];
        }

        ++v65;
        *(v66 + 16) = v76 + 1;
        v77 = v66 + 24 * v76;
        *(v77 + 32) = v71;
        *(v77 + 40) = v72;
        *(v77 + 48) = v74;
        v67 = v90;
      }

      while (v62 != v65);

      if (*(v66 + 16))
      {
        goto LABEL_44;
      }
    }

    else
    {

      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
LABEL_44:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CD0, &unk_1DF56A380);
        v78 = sub_1DF564F34();
LABEL_47:
        v92[0] = v78;

        sub_1DF4E9C6C(v79, 1, v92);

        v34 = v92[0];
        *(v89 + 10) = v92[0];

        v80 = sub_1DF564794();
        v81 = sub_1DF564C04();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v92[0] = v83;
          *v82 = 136315394;
          *(v82 + 4) = sub_1DF47EF6C(0xD00000000000001ELL, 0x80000001DF5751A0, v92);
          *(v82 + 12) = 2080;
          v84 = sub_1DF564884();
          v86 = sub_1DF47EF6C(v84, v85, v92);

          *(v82 + 14) = v86;
          _os_log_impl(&dword_1DF47C000, v80, v81, "%s Updating access cache with cached features: %s", v82, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12D75F0](v83, -1, -1);
          MEMORY[0x1E12D75F0](v82, -1, -1);
        }

        v87 = *(MEMORY[0x1E69A1478] + 4);
        v44 = swift_task_alloc();
        *(v89 + 11) = v44;
        *v44 = v89;
        v45 = sub_1DF550360;
        goto LABEL_50;
      }
    }

    v78 = MEMORY[0x1E69E7CC8];
    goto LABEL_47;
  }

  v11 = v0;
  v92[0] = MEMORY[0x1E69E7CC0];
  sub_1DF4BCE90(0, 4, 0);
  v12 = v92[0];
  v13 = qword_1F5A88690;
  v14 = off_1F5A88698;
  v16 = *(v92[0] + 16);
  v15 = *(v92[0] + 24);
  v17 = v15 >> 1;
  v18 = v16 + 1;

  if (v15 >> 1 <= v16)
  {
    sub_1DF4BCE90((v15 > 1), v16 + 1, 1);
    v12 = v92[0];
    v15 = *(v92[0] + 24);
    v17 = v15 >> 1;
  }

  *(v12 + 16) = v18;
  v19 = v12 + 24 * v16;
  *(v19 + 32) = v13;
  *(v19 + 40) = v14;
  *(v19 + 48) = 1;
  v21 = qword_1F5A886A0;
  v20 = off_1F5A886A8;
  v92[0] = v12;

  if (v17 <= v18)
  {
    sub_1DF4BCE90((v15 > 1), v16 + 2, 1);
    v12 = v92[0];
  }

  *(v12 + 16) = v16 + 2;
  v22 = v12 + 24 * v18;
  *(v22 + 32) = v21;
  *(v22 + 40) = v20;
  *(v22 + 48) = 1;
  v23 = qword_1F5A886B0;
  v24 = off_1F5A886B8;
  v92[0] = v12;
  v26 = *(v12 + 16);
  v25 = *(v12 + 24);
  v27 = v25 >> 1;
  v28 = v26 + 1;

  if (v25 >> 1 <= v26)
  {
    sub_1DF4BCE90((v25 > 1), v26 + 1, 1);
    v12 = v92[0];
    v25 = *(v92[0] + 24);
    v27 = v25 >> 1;
  }

  *(v12 + 16) = v28;
  v29 = v12 + 24 * v26;
  *(v29 + 32) = v23;
  *(v29 + 40) = v24;
  *(v29 + 48) = 1;
  v31 = aCloudLlm_0[0];
  v30 = aCloudLlm_0[1];
  v92[0] = v12;

  if (v27 <= v28)
  {
    sub_1DF4BCE90((v25 > 1), v26 + 2, 1);
    v12 = v92[0];
  }

  *(v12 + 16) = v26 + 2;
  v32 = v12 + 24 * v28;
  *(v32 + 32) = v31;
  *(v32 + 40) = v30;
  *(v32 + 48) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CD0, &unk_1DF56A380);
  v92[0] = sub_1DF564F34();

  sub_1DF4E9C6C(v33, 1, v92);

  v34 = v92[0];
  v35 = v11;
  *(v11 + 7) = v92[0];

  v36 = sub_1DF564794();
  v37 = sub_1DF564C04();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v92[0] = v39;
    *v38 = 136315394;
    *(v38 + 4) = sub_1DF47EF6C(0xD00000000000001ELL, 0x80000001DF5751A0, v92);
    *(v38 + 12) = 2080;
    v40 = sub_1DF564884();
    v42 = sub_1DF47EF6C(v40, v41, v92);

    *(v38 + 14) = v42;
    _os_log_impl(&dword_1DF47C000, v36, v37, "%s Updating access cache with bypassed features: %s", v38, 0x16u);
    swift_arrayDestroy();
    v35 = v11;
    MEMORY[0x1E12D75F0](v39, -1, -1);
    MEMORY[0x1E12D75F0](v38, -1, -1);
  }

  v43 = *(MEMORY[0x1E69A1478] + 4);
  v44 = swift_task_alloc();
  *(v35 + 8) = v44;
  *v44 = v35;
  v45 = sub_1DF550104;
LABEL_50:
  v44[1] = v45;
  v64 = v34;

  return MEMORY[0x1EEE0B5D8](v64);
}

uint64_t sub_1DF550104()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1DF5505BC;
  }

  else
  {
    v3 = sub_1DF550218;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF550218()
{
  v12 = v0;
  v1 = v0[7];

  v2 = v0[5];
  v3 = sub_1DF564794();
  v4 = sub_1DF564C04();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1DF47EF6C(0xD00000000000001ELL, 0x80000001DF5751A0, &v11);
    _os_log_impl(&dword_1DF47C000, v3, v4, "%s Finished updating availability.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DF550360()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1DF550628;
  }

  else
  {
    v3 = sub_1DF550474;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF550474()
{
  v12 = v0;
  v1 = v0[10];

  v2 = v0[5];
  v3 = sub_1DF564794();
  v4 = sub_1DF564C04();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1DF47EF6C(0xD00000000000001ELL, 0x80000001DF5751A0, &v11);
    _os_log_impl(&dword_1DF47C000, v3, v4, "%s Finished updating availability.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1E12D75F0](v8, -1, -1);
    MEMORY[0x1E12D75F0](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DF5505BC()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[9];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1DF550628()
{
  v1 = v0[10];
  v2 = v0[6];

  v3 = v0[12];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1DF5506BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D4B0;

  return sub_1DF54D5C0(a1, v4, v5, v6, v7);
}

uint64_t sub_1DF550784()
{
  v1 = v0[2];
  v2 = v0[3];
  MEMORY[0x1E12D62C0](*v0, v0[1]);
  MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
  MEMORY[0x1E12D62C0](v1, v2);
  MEMORY[0x1E12D62C0](93, 0xE100000000000000);
  return 91;
}

id NotificationObservation.addTicketObserver(change:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() defaultCenter];
  v6 = *(v2 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v13[4] = sub_1DF5510CC;
  v13[5] = v7;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DF550D18;
  v13[3] = &block_descriptor_6;
  v8 = _Block_copy(v13);

  v9 = [v5 addObserverForName:v6 object:0 queue:0 usingBlock:v8];
  _Block_release(v8);

  if ((*(v2 + 33) & 1) == 0)
  {
    v10 = sub_1DF564944();
    sub_1DF47E1B8(v10, v11);

    *(v2 + 33) = 1;
  }

  return v9;
}

void sub_1DF550968(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    swift_unknownObjectRetain();
    v7 = a3;
    v8 = a5;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      if (v7)
      {
        v9 = sub_1DF564944();
        v11 = v10;
      }

      else
      {
        v9 = 0;
        v11 = 0;
      }

      sub_1DF551144(v9, v11);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_1DF550A5C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1ED955E08 != -1)
  {
    swift_once();
  }

  v6 = sub_1DF5647B4();
  __swift_project_value_buffer(v6, qword_1ED955E10);

  v7 = sub_1DF564794();
  v8 = sub_1DF564C44();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1DF47EF6C(a1, a2, &v13);
    _os_log_impl(&dword_1DF47C000, v7, v8, "deregistering darwin observer for name: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1E12D75F0](v10, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  v11 = CFNotificationCenterGetDarwinNotifyCenter();
  v12 = sub_1DF564914();
  CFNotificationCenterRemoveObserver(v11, v3, v12, 0);
}

uint64_t NotificationObservation.deinit()
{
  v1 = sub_1DF564944();
  sub_1DF550A5C(v1, v2);

  v3 = sub_1DF564944();
  sub_1DF550A5C(v3, v4);

  return v0;
}

uint64_t NotificationObservation.__deallocating_deinit()
{
  v1 = sub_1DF564944();
  sub_1DF550A5C(v1, v2);

  v3 = sub_1DF564944();
  sub_1DF550A5C(v3, v4);

  return MEMORY[0x1EEE6BDC0](v0, 34, 7);
}

uint64_t sub_1DF550D18(uint64_t a1)
{
  v2 = sub_1DF5641E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1DF5641D4();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1DF550E0C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, const char *a4)
{
  if (qword_1ED955E08 != -1)
  {
    swift_once();
  }

  v6 = sub_1DF5647B4();
  __swift_project_value_buffer(v6, qword_1ED955E10);
  v7 = sub_1DF564794();
  v8 = sub_1DF564C44();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DF47C000, v7, v8, a4, v9, 2u);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  return a2();
}

void _s25CloudSubscriptionFeatures23NotificationObservationC14removeObserver5tokenySo8NSObject_p_tF_0(void *a1)
{
  if (qword_1ED955E08 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED955E10);
  swift_unknownObjectRetain();
  v3 = sub_1DF564794();
  v4 = sub_1DF564C44();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = [a1 description];
    v8 = sub_1DF564944();
    v10 = v9;

    v11 = sub_1DF47EF6C(v8, v10, &v13);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1DF47C000, v3, v4, "removing observer for token: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1E12D75F0](v6, -1, -1);
    MEMORY[0x1E12D75F0](v5, -1, -1);
  }

  v12 = [objc_opt_self() defaultCenter];
  [v12 removeObserver_];
}

void sub_1DF551144(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v3 = v2;
  if (sub_1DF564944() == a1 && v6 == a2)
  {
  }

  else
  {
    v8 = sub_1DF5650D4();

    if ((v8 & 1) == 0)
    {
      if (sub_1DF564944() == a1 && v9 == a2)
      {
      }

      else
      {
        v11 = sub_1DF5650D4();

        if ((v11 & 1) == 0)
        {
          return;
        }
      }

      if (qword_1ED955E08 != -1)
      {
        swift_once();
      }

      v18 = sub_1DF5647B4();
      __swift_project_value_buffer(v18, qword_1ED955E10);

      v19 = sub_1DF564794();
      v20 = sub_1DF564C44();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v24 = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_1DF47EF6C(a1, a2, &v24);
        _os_log_impl(&dword_1DF47C000, v19, v20, "Receieved Ticket darwin notification %s, posting new local notification.", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x1E12D75F0](v22, -1, -1);
        MEMORY[0x1E12D75F0](v21, -1, -1);
      }

      v17 = 24;
      goto LABEL_19;
    }
  }

  if (qword_1ED955E08 != -1)
  {
    swift_once();
  }

  v12 = sub_1DF5647B4();
  __swift_project_value_buffer(v12, qword_1ED955E10);

  v13 = sub_1DF564794();
  v14 = sub_1DF564C44();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1DF47EF6C(a1, a2, &v24);
    _os_log_impl(&dword_1DF47C000, v13, v14, "Received Feature darwin notification %s, posting new local notification.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1E12D75F0](v16, -1, -1);
    MEMORY[0x1E12D75F0](v15, -1, -1);
  }

  v17 = 16;
LABEL_19:
  v23 = [objc_opt_self() defaultCenter];
  [v23 postNotificationName:*(v3 + v17) object:0];
}

id sub_1DF551510(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for TicketStatus());
  result = TicketStatus.init(rawValue:)(a1, a2);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1DF55161C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = objc_allocWithZone(type metadata accessor for TicketStatus());
  result = TicketStatus.init(rawValue:)(a3, a4);
  if (result)
  {

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF5516F0()
{
  v1 = (v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1DF5517B4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1DF551814(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1DF5518E4()
{
  v0 = type metadata accessor for TicketStatus();
  v1 = objc_allocWithZone(v0);
  result = TicketStatus.init(rawValue:)(0x7551746559746F6ELL, 0xEC00000064657565);
  if (!result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = sub_1DF564CD4();

  if (v4)
  {
    return 0;
  }

  v5 = objc_allocWithZone(v0);
  result = TicketStatus.init(rawValue:)(0x6465756575716E65, 0xE800000000000000);
  if (!result)
  {
    goto LABEL_12;
  }

  v6 = result;
  v7 = sub_1DF564CD4();

  if (v7)
  {
    return 1;
  }

  v8 = objc_allocWithZone(v0);
  result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
  if (!result)
  {
    goto LABEL_13;
  }

  v9 = result;
  v10 = sub_1DF564CD4();

  if (v10)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1DF551AD4()
{
  strcpy(v5, "TicketStatus.");
  HIWORD(v5[1]) = -4864;
  v1 = (v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  MEMORY[0x1E12D62C0](v3, v2);

  return v5[0];
}

id TicketStatus.init(rawValue:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_allowedValues;
  v7 = sub_1DF552A0C(&unk_1F5A88418);
  swift_arrayDestroy();
  *&v2[v6] = v7;

  v8 = sub_1DF4BEB48(a1, a2, v7);

  if (v8)
  {
    v9 = &v3[OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue];
    *v9 = a1;
    v9[1] = a2;
    v18.receiver = v3;
    v18.super_class = type metadata accessor for TicketStatus();
    return objc_msgSendSuper2(&v18, sel_init);
  }

  else
  {
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v11 = sub_1DF5647B4();
    __swift_project_value_buffer(v11, qword_1ED956088);

    v12 = sub_1DF564794();
    v13 = sub_1DF564C24();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315138;
      v16 = sub_1DF47EF6C(a1, a2, &v19);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_1DF47C000, v12, v13, "Decoded ticket with non-allowed value: %s. Will return nil.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1E12D75F0](v15, -1, -1);
      MEMORY[0x1E12D75F0](v14, -1, -1);
    }

    else
    {
    }

    v17 = *&v3[v6];

    type metadata accessor for TicketStatus();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

char *TicketStatus.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_allowedValues;
  v6 = sub_1DF552A0C(&unk_1F5A88B48);
  swift_arrayDestroy();
  *&v1[v5] = v6;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF565274();
  if (v2)
  {
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(a1);
    v21 = *&v3[v5];

    type metadata accessor for TicketStatus();
    swift_deallocPartialClassInstance();
    return v3;
  }

  __swift_project_boxed_opaque_existential_0(v24, v24[3]);
  v8 = sub_1DF5650E4();
  v10 = v9;
  __swift_destroy_boxed_opaque_existential_0(v24);
  v11 = *&v1[v5];

  v12 = sub_1DF4BEB48(v8, v10, v11);

  if ((v12 & 1) == 0)
  {
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v14 = sub_1DF5647B4();
    __swift_project_value_buffer(v14, qword_1ED956088);

    v15 = sub_1DF564794();
    v16 = sub_1DF564C24();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24[0] = v18;
      *v17 = 136315138;
      v19 = sub_1DF47EF6C(v8, v10, v24);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_1DF47C000, v15, v16, "Decoded ticket with non-allowed value: %s. Will return nil.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1E12D75F0](v18, -1, -1);
      MEMORY[0x1E12D75F0](v17, -1, -1);
    }

    else
    {
    }

    sub_1DF498474();
    swift_allocError();
    *v20 = 4;
    swift_willThrow();
    goto LABEL_10;
  }

  v13 = &v3[OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue];
  *v13 = v8;
  v13[1] = v10;
  v23.receiver = v3;
  v23.super_class = type metadata accessor for TicketStatus();
  v3 = objc_msgSendSuper2(&v23, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t TicketStatus.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_allowedValues;
  v5 = sub_1DF552A0C(&unk_1F5A88B98);
  swift_arrayDestroy();
  *(v1 + v4) = v5;
  sub_1DF4BC0E0();
  v6 = sub_1DF564CB4();
  if (v6)
  {
    v10 = 0;
    v11 = 0;
    v7 = v6;
    sub_1DF564934();
  }

  v8 = *(v2 + v4);

  type metadata accessor for TicketStatus();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1DF552380(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF565294();
  v3 = (v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);

  sub_1DF5650F4();

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

void sub_1DF55244C(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = sub_1DF564914();

  v7 = sub_1DF564914();
  [a1 encodeObject:v6 forKey:v7];
}

uint64_t sub_1DF5525C0(uint64_t a1)
{
  sub_1DF4EC8F4(a1, v10);
  if (!v11)
  {
    sub_1DF4A7D80(v10);
    goto LABEL_9;
  }

  type metadata accessor for TicketStatus();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v7 = 0;
    return v7 & 1;
  }

  v2 = &v9[OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue];
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 1);
  v5 = (v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue);
  swift_beginAccess();
  if (v3 == *v5 && v4 == v5[1])
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_1DF5650D4();
  }

  return v7 & 1;
}

id TicketStatus.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TicketStatus.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TicketStatus();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1DF552848@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = objc_allocWithZone(type metadata accessor for TicketStatus());
  result = TicketStatus.init(rawValue:)(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1DF552894@<X0>(void *a1@<X8>)
{
  v3 = (*v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue);
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

char *sub_1DF5528EC@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for TicketStatus());
  result = TicketStatus.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DF552940(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF565294();
  v4 = (v2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  __swift_mutable_project_boxed_opaque_existential_1(v8, v8[3]);

  sub_1DF5650F4();

  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t sub_1DF552A0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE37F30, &unk_1DF56A3A0);
    v3 = sub_1DF564DC4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1DF565234();

      sub_1DF5649E4();
      result = sub_1DF565264();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1DF5650D4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1DF552D04@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1DF4A4DFC();

  *a1 = v2;
  return result;
}

unint64_t sub_1DF552D48()
{
  result = qword_1ECE38640;
  if (!qword_1ECE38640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38640);
  }

  return result;
}

unint64_t sub_1DF552DA0()
{
  result = qword_1ECE38648;
  if (!qword_1ECE38648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38648);
  }

  return result;
}

unint64_t sub_1DF552DF8()
{
  result = qword_1ECE38650;
  if (!qword_1ECE38650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38650);
  }

  return result;
}

unint64_t sub_1DF552E50()
{
  result = qword_1ECE38658;
  if (!qword_1ECE38658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38658);
  }

  return result;
}

unint64_t sub_1DF552EB4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DF552F38(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1DF552EE4()
{
  result = qword_1ECE38660;
  if (!qword_1ECE38660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38660);
  }

  return result;
}

unint64_t sub_1DF552F38(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_1DF552F48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38688, &qword_1DF56E110);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF554430();
  sub_1DF5652A4();
  v16 = 0;
  sub_1DF565054();
  if (!v5)
  {
    v15 = 1;
    sub_1DF565054();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1DF5530DC()
{
  if (*v0)
  {
    result = 0x707954726F727265;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_1DF553120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001DF5753D0 == a2 || (sub_1DF5650D4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x707954726F727265 && a2 == 0xE900000000000065)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1DF5650D4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1DF553210(uint64_t a1)
{
  v2 = sub_1DF554430();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF55324C(uint64_t a1)
{
  v2 = sub_1DF554430();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF553288@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DF554040(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1DF5532D8()
{
  v1 = *v0;
  v2 = 0x72656767697274;
  v3 = 0x6E45737361707962;
  v4 = 0x52657361656C6572;
  if (v1 != 4)
  {
    v4 = 0x726F727265;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1702125924;
  if (v1 != 1)
  {
    v5 = 0x636F725074736F68;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DF5533A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF554224(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF5533DC(uint64_t a1)
{
  v2 = sub_1DF5536D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF553418(uint64_t a1)
{
  v2 = sub_1DF5536D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetDiagnostics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38668, &qword_1DF56DEE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF5536D0();
  sub_1DF5652A4();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v26) = 0;
  sub_1DF565024();
  if (!v2)
  {
    v13 = type metadata accessor for AssetDiagnostics();
    v14 = v13[5];
    LOBYTE(v26) = 1;
    sub_1DF564494();
    sub_1DF484ECC(&qword_1ED955120);
    sub_1DF565074();
    v15 = (v3 + v13[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v26) = 2;
    sub_1DF565054();
    v18 = *(v3 + v13[7]);
    LOBYTE(v26) = 3;
    sub_1DF565064();
    v19 = (v3 + v13[8]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v26) = 4;
    sub_1DF565024();
    v22 = (v3 + v13[9]);
    v23 = v22[1];
    v26 = *v22;
    v27 = v23;
    v25[15] = 5;
    sub_1DF553770();
    sub_1DF565044();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1DF5536D0()
{
  result = qword_1ED954A10;
  if (!qword_1ED954A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954A10);
  }

  return result;
}

uint64_t type metadata accessor for AssetDiagnostics()
{
  result = qword_1ED954ED0;
  if (!qword_1ED954ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DF553770()
{
  result = qword_1ED9549F8;
  if (!qword_1ED9549F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9549F8);
  }

  return result;
}

uint64_t AssetDiagnostics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_1DF564494();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38670, &qword_1DF56DEE8);
  v33 = *(v35 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v30 - v8;
  v10 = type metadata accessor for AssetDiagnostics();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF5536D0();
  v36 = v9;
  v15 = v37;
  sub_1DF565284();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v37 = a1;
  v16 = v13;
  v17 = v34;
  LOBYTE(v38) = 0;
  *v16 = sub_1DF564F84();
  v16[1] = v18;
  v31 = v16;
  LOBYTE(v38) = 1;
  sub_1DF484ECC(&qword_1ED955C88);
  sub_1DF564FE4();
  (*(v17 + 32))(v31 + v10[5], v6, v3);
  LOBYTE(v38) = 2;
  v19 = sub_1DF564FC4();
  v20 = v31;
  v21 = (v31 + v10[6]);
  *v21 = v19;
  v21[1] = v22;
  LOBYTE(v38) = 3;
  *(v20 + v10[7]) = sub_1DF564FD4() & 1;
  LOBYTE(v38) = 4;
  v23 = sub_1DF564F84();
  v24 = v37;
  v25 = (v20 + v10[8]);
  *v25 = v23;
  v25[1] = v26;
  v40 = 5;
  sub_1DF553C88();
  sub_1DF564FB4();
  MEMORY[8](v36, v35);
  v27 = (v20 + v10[9]);
  v28 = v39;
  *v27 = v38;
  v27[1] = v28;
  sub_1DF553CDC(v20, v32);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return sub_1DF553D40(v20);
}

unint64_t sub_1DF553C88()
{
  result = qword_1ECE38678;
  if (!qword_1ECE38678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38678);
  }

  return result;
}

uint64_t sub_1DF553CDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetDiagnostics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF553D40(uint64_t a1)
{
  v2 = type metadata accessor for AssetDiagnostics();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DF553DF4()
{
  sub_1DF553ECC(319, qword_1ED955E88);
  if (v0 <= 0x3F)
  {
    sub_1DF564494();
    if (v1 <= 0x3F)
    {
      sub_1DF553ECC(319, &qword_1ED9549F0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DF553ECC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1DF564D04();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1DF553F3C()
{
  result = qword_1ECE38680;
  if (!qword_1ECE38680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38680);
  }

  return result;
}

unint64_t sub_1DF553F94()
{
  result = qword_1ED954A00;
  if (!qword_1ED954A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954A00);
  }

  return result;
}

unint64_t sub_1DF553FEC()
{
  result = qword_1ED954A08;
  if (!qword_1ED954A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954A08);
  }

  return result;
}

uint64_t sub_1DF554040(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38698, &qword_1DF56E118);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF554430();
  sub_1DF565284();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_1DF564FC4();
    v11 = 1;
    sub_1DF564FC4();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t sub_1DF554224(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DF5650D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636F725074736F68 && a2 == 0xEB00000000737365 || (sub_1DF5650D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E45737361707962 && a2 == 0xED000064656C6261 || (sub_1DF5650D4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x52657361656C6572 && a2 == 0xED00006E6F736165 || (sub_1DF5650D4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DF5650D4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1DF554430()
{
  result = qword_1ECE38690;
  if (!qword_1ECE38690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38690);
  }

  return result;
}

unint64_t sub_1DF554498()
{
  result = qword_1ECE386A0;
  if (!qword_1ECE386A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE386A0);
  }

  return result;
}

unint64_t sub_1DF5544F0()
{
  result = qword_1ECE386A8;
  if (!qword_1ECE386A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE386A8);
  }

  return result;
}

unint64_t sub_1DF554548()
{
  result = qword_1ECE386B0;
  if (!qword_1ECE386B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE386B0);
  }

  return result;
}

uint64_t sub_1DF55459C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386E0, &qword_1DF56E4C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF55612C();
  sub_1DF5652A4();
  v13[15] = 0;
  sub_1DF564494();
  sub_1DF5557A0(&qword_1ED955120, MEMORY[0x1E6969530]);
  sub_1DF565074();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for CoreTelephonyDiagnostic.LastResponse(0) + 20));
    v13[14] = 1;
    sub_1DF565064();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DF554754@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1DF564494();
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386F0, &qword_1DF56E4D8);
  v25 = *(v28 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v23 - v9;
  Response = type metadata accessor for CoreTelephonyDiagnostic.LastResponse(0);
  v12 = *(*(Response - 8) + 64);
  MEMORY[0x1EEE9AC00](Response);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF55612C();
  sub_1DF565284();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = v14;
  v16 = v25;
  v17 = v26;
  v30 = 0;
  sub_1DF5557A0(&qword_1ED955C88, MEMORY[0x1E6969530]);
  v18 = v27;
  sub_1DF564FE4();
  (*(v17 + 32))(v23, v7, v18);
  v29 = 1;
  v19 = sub_1DF564FD4();
  (*(v16 + 8))(v10, v28);
  v21 = v23;
  v20 = v24;
  v23[*(Response + 20)] = v19 & 1;
  sub_1DF5561D4(v21, v20, type metadata accessor for CoreTelephonyDiagnostic.LastResponse);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1DF55623C(v21, type metadata accessor for CoreTelephonyDiagnostic.LastResponse);
}

uint64_t sub_1DF554A9C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386E8, &qword_1DF56E4D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF556180();
  sub_1DF5652A4();
  v19[15] = 0;
  sub_1DF564494();
  sub_1DF5557A0(&qword_1ED955120, MEMORY[0x1E6969530]);
  sub_1DF565074();
  if (!v2)
  {
    v11 = type metadata accessor for CoreTelephonyDiagnostic.SanitizedError(0);
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    v19[14] = 1;
    sub_1DF565054();
    v15 = (v3 + *(v11 + 24));
    v16 = *v15;
    v17 = v15[1];
    v19[13] = 2;
    sub_1DF565054();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DF554C8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_1DF564494();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386F8, &unk_1DF56E4E0);
  v32 = *(v35 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v28 - v8;
  v10 = type metadata accessor for CoreTelephonyDiagnostic.SanitizedError(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF556180();
  sub_1DF565284();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = v32;
  v15 = v33;
  v29 = v10;
  v30 = v13;
  v38 = 0;
  sub_1DF5557A0(&qword_1ED955C88, MEMORY[0x1E6969530]);
  v18 = v34;
  v17 = v35;
  sub_1DF564FE4();
  (*(v15 + 32))(v30, v18, v4);
  v37 = 1;
  v19 = sub_1DF564FC4();
  v20 = &v30[*(v29 + 20)];
  *v20 = v19;
  v20[1] = v21;
  v36 = 2;
  v22 = sub_1DF564FC4();
  v24 = v23;
  (*(v16 + 8))(v9, v17);
  v25 = v30;
  v26 = &v30[*(v29 + 24)];
  *v26 = v22;
  v26[1] = v24;
  sub_1DF5561D4(v25, v31, type metadata accessor for CoreTelephonyDiagnostic.SanitizedError);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1DF55623C(v25, type metadata accessor for CoreTelephonyDiagnostic.SanitizedError);
}

uint64_t sub_1DF555058()
{
  if (*v0)
  {
    result = 0x7365636341736168;
  }

  else
  {
    result = 1702125924;
  }

  *v0;
  return result;
}

uint64_t sub_1DF555090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DF5650D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7365636341736168 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF5650D4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DF555174(uint64_t a1)
{
  v2 = sub_1DF55612C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF5551B0(uint64_t a1)
{
  v2 = sub_1DF55612C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF55521C()
{
  v1 = 0x6E69616D6F64;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_1DF555270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF556F28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF555298(uint64_t a1)
{
  v2 = sub_1DF556180();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF5552D4(uint64_t a1)
{
  v2 = sub_1DF556180();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF555340()
{
  if (*v0)
  {
    result = 0x73756F6976657270;
  }

  else
  {
    result = 0x707365527473616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1DF555390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x707365527473616CLL && a2 == 0xEC00000065736E6FLL;
  if (v6 || (sub_1DF5650D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73756F6976657270 && a2 == 0xEE0073726F727245)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF5650D4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DF555478(uint64_t a1)
{
  v2 = sub_1DF55570C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF5554B4(uint64_t a1)
{
  v2 = sub_1DF55570C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreTelephonyDiagnostic.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386B8, &qword_1DF56E230);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF55570C();
  sub_1DF5652A4();
  v14 = 0;
  type metadata accessor for CoreTelephonyDiagnostic.LastResponse(0);
  sub_1DF5557A0(&qword_1ED9548A8, type metadata accessor for CoreTelephonyDiagnostic.LastResponse);
  sub_1DF565044();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for CoreTelephonyDiagnostic(0) + 20));
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386C0, &qword_1DF56E238);
    sub_1DF555C14(&qword_1ED954688, &qword_1ED954810);
    sub_1DF565074();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1DF55570C()
{
  result = qword_1ED9548C0;
  if (!qword_1ED9548C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9548C0);
  }

  return result;
}

uint64_t sub_1DF5557A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DF555808(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CoreTelephonyDiagnostic.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386C8, &qword_1DF56E240);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386D0, &qword_1DF56E248);
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for CoreTelephonyDiagnostic(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF55570C();
  sub_1DF565284();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = v12;
  v17 = v15;
  v18 = v25;
  type metadata accessor for CoreTelephonyDiagnostic.LastResponse(0);
  v29 = 0;
  sub_1DF5557A0(&qword_1ED9548A0, type metadata accessor for CoreTelephonyDiagnostic.LastResponse);
  v19 = v26;
  sub_1DF564FB4();
  sub_1DF555BA4(v7, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386C0, &qword_1DF56E238);
  v28 = 1;
  sub_1DF555C14(&qword_1ED954680, &qword_1ED954808);
  sub_1DF564FE4();
  (*(v18 + 8))(v11, v19);
  v20 = v24;
  *(v17 + *(v23 + 20)) = v27;
  sub_1DF5561D4(v17, v20, type metadata accessor for CoreTelephonyDiagnostic);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1DF55623C(v17, type metadata accessor for CoreTelephonyDiagnostic);
}

uint64_t sub_1DF555BA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386C8, &qword_1DF56E240);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF555C14(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE386C0, &qword_1DF56E238);
    sub_1DF5557A0(a2, type metadata accessor for CoreTelephonyDiagnostic.SanitizedError);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF555CB0(uint64_t a1)
{
  *(a1 + 8) = sub_1DF5557A0(&qword_1ED954790, type metadata accessor for CoreTelephonyDiagnostic);
  result = sub_1DF5557A0(&qword_1ED954798, type metadata accessor for CoreTelephonyDiagnostic);
  *(a1 + 16) = result;
  return result;
}

void sub_1DF555D8C()
{
  sub_1DF555E70(319, &qword_1ED954888, type metadata accessor for CoreTelephonyDiagnostic.LastResponse, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1DF555E70(319, &qword_1ED954690, type metadata accessor for CoreTelephonyDiagnostic.SanitizedError, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DF555E70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DF555EFC()
{
  result = sub_1DF564494();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DF555FA0()
{
  result = sub_1DF564494();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DF556028()
{
  result = qword_1ECE386D8;
  if (!qword_1ECE386D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE386D8);
  }

  return result;
}

unint64_t sub_1DF556080()
{
  result = qword_1ED9548B0;
  if (!qword_1ED9548B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9548B0);
  }

  return result;
}

unint64_t sub_1DF5560D8()
{
  result = qword_1ED9548B8;
  if (!qword_1ED9548B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9548B8);
  }

  return result;
}

unint64_t sub_1DF55612C()
{
  result = qword_1ECE37640;
  if (!qword_1ECE37640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37640);
  }

  return result;
}

unint64_t sub_1DF556180()
{
  result = qword_1ED954828[0];
  if (!qword_1ED954828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED954828);
  }

  return result;
}

uint64_t sub_1DF5561D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF55623C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DF55629C(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386C8, &qword_1DF56E240);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v22 - v4;
  v6 = type metadata accessor for CoreTelephonyDiagnostic(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B40, &qword_1DF567E88);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v22 - v16;
  sub_1DF4B578C();
  sub_1DF564474();
  Response = type metadata accessor for CoreTelephonyDiagnostic.LastResponse(0);
  v5[*(Response + 20)] = a1 & 1;
  (*(*(Response - 8) + 56))(v5, 0, 1, Response);
  sub_1DF47E4CC(v17, v15, &qword_1ECE37B40, &qword_1DF567E88);
  if ((*(v7 + 48))(v15, 1, v6) == 1)
  {
    sub_1DF47E5B4(v15, &qword_1ECE37B40, &qword_1DF567E88);
    v19 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v19 = *&v15[*(v6 + 20)];

    sub_1DF55623C(v15, type metadata accessor for CoreTelephonyDiagnostic);
  }

  sub_1DF555BA4(v5, v10);
  *&v10[*(v6 + 20)] = v19;
  v23[0] = 4;
  v22[3] = v6;
  v22[4] = sub_1DF5557A0(&qword_1ED954790, type metadata accessor for CoreTelephonyDiagnostic);
  v22[5] = sub_1DF5557A0(&qword_1ED954798, type metadata accessor for CoreTelephonyDiagnostic);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  sub_1DF5561D4(v10, boxed_opaque_existential_1, type metadata accessor for CoreTelephonyDiagnostic);
  sub_1DF55D5F0(v23, v22);
  sub_1DF55623C(v10, type metadata accessor for CoreTelephonyDiagnostic);
  sub_1DF47E5B4(v17, &qword_1ECE37B40, &qword_1DF567E88);
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t sub_1DF556638(uint64_t a1)
{
  v58 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386C8, &qword_1DF56E240);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v50 - v3;
  v5 = type metadata accessor for CoreTelephonyDiagnostic(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CoreTelephonyDiagnostic.SanitizedError(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B40, &qword_1DF567E88);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v50 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v50 - v23;
  result = os_variant_has_internal_ui();
  if (result)
  {
    v57 = v4;
    sub_1DF4B578C();
    v55 = 0;
    sub_1DF47E4CC(v24, v22, &qword_1ECE37B40, &qword_1DF567E88);
    v26 = *(v6 + 48);
    v54 = v6 + 48;
    v51 = v26;
    v27 = v26(v22, 1, v5);
    v56 = v24;
    v53 = v11;
    v52 = v9;
    if (v27 == 1)
    {
      sub_1DF47E5B4(v22, &qword_1ECE37B40, &qword_1DF567E88);
      v28 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v28 = *&v22[*(v5 + 20)];

      sub_1DF55623C(v22, type metadata accessor for CoreTelephonyDiagnostic);
    }

    sub_1DF564474();
    swift_getErrorValue();
    v29 = sub_1DF49A0C0(v61);
    v30 = [v29 domain];

    v31 = sub_1DF564944();
    v33 = v32;

    swift_getErrorValue();
    v34 = sub_1DF5651B4();
    v35 = &v14[*(v10 + 20)];
    *v35 = v31;
    v35[1] = v33;
    v36 = &v14[*(v10 + 24)];
    *v36 = v34;
    v36[1] = v37;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1DF4A9EE0(0, v28[2] + 1, 1, v28);
    }

    v39 = v28[2];
    v38 = v28[3];
    v40 = v39 + 1;
    v41 = v52;
    v42 = v56;
    if (v39 >= v38 >> 1)
    {
      v28 = sub_1DF4A9EE0(v38 > 1, v39 + 1, 1, v28);
    }

    v43 = v57;
    v28[2] = v40;
    v44 = v28 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
    sub_1DF556C94(v14, v44 + *(v53 + 72) * v39);
    if (v39 >= 5)
    {
      sub_1DF4B6AF8(v28, v44, v39 - 4, (2 * v40) | 1);
      v49 = v48;

      v28 = v49;
    }

    sub_1DF47E4CC(v42, v19, &qword_1ECE37B40, &qword_1DF567E88);
    if (v51(v19, 1, v5) == 1)
    {
      sub_1DF47E5B4(v19, &qword_1ECE37B40, &qword_1DF567E88);
      Response = type metadata accessor for CoreTelephonyDiagnostic.LastResponse(0);
      (*(*(Response - 8) + 56))(v43, 1, 1, Response);
    }

    else
    {
      sub_1DF47E4CC(v19, v43, &qword_1ECE386C8, &qword_1DF56E240);
      sub_1DF55623C(v19, type metadata accessor for CoreTelephonyDiagnostic);
    }

    sub_1DF555BA4(v43, v41);
    *(v41 + *(v5 + 20)) = v28;
    v60 = 4;
    v59[3] = v5;
    v59[4] = sub_1DF5557A0(&qword_1ED954790, type metadata accessor for CoreTelephonyDiagnostic);
    v59[5] = sub_1DF5557A0(&qword_1ED954798, type metadata accessor for CoreTelephonyDiagnostic);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
    sub_1DF5561D4(v41, boxed_opaque_existential_1, type metadata accessor for CoreTelephonyDiagnostic);
    v47 = v55;
    sub_1DF55D5F0(&v60, v59);
    if (v47)
    {
    }

    sub_1DF55623C(v41, type metadata accessor for CoreTelephonyDiagnostic);
    sub_1DF47E5B4(v42, &qword_1ECE37B40, &qword_1DF567E88);
    return __swift_destroy_boxed_opaque_existential_0(v59);
  }

  return result;
}

uint64_t sub_1DF556C94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreTelephonyDiagnostic.SanitizedError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DF556D1C()
{
  result = qword_1ECE38700;
  if (!qword_1ECE38700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38700);
  }

  return result;
}

unint64_t sub_1DF556D74()
{
  result = qword_1ECE38708;
  if (!qword_1ECE38708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38708);
  }

  return result;
}

unint64_t sub_1DF556DCC()
{
  result = qword_1ED954818;
  if (!qword_1ED954818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954818);
  }

  return result;
}

unint64_t sub_1DF556E24()
{
  result = qword_1ED954820;
  if (!qword_1ED954820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954820);
  }

  return result;
}

unint64_t sub_1DF556E7C()
{
  result = qword_1ECE37630;
  if (!qword_1ECE37630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37630);
  }

  return result;
}

unint64_t sub_1DF556ED4()
{
  result = qword_1ECE37638;
  if (!qword_1ECE37638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37638);
  }

  return result;
}

uint64_t sub_1DF556F28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DF5650D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DF5753D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DF5650D4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DF557058(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = sub_1DF564494();
  v7 = *(*(v40 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x1E69E7CC0];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DF4BCE30(0, *(v24 + 16) + 1, 1);
          v24 = v41;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1DF4BCE30(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
LABEL_14:

    return v38;
  }

  return result;
}

uint64_t sub_1DF557328(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x1E69E7CC0];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1DF4BCB24(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_1DF4BCB24((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_16:

    return v8;
  }

  return result;
}

uint64_t sub_1DF5574A0()
{
  v1 = v0;
  v2 = type metadata accessor for ExcessiveRequestDetector();
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DF564534();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DF564544();
  v62 = *(v11 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v57 - v17;
  v19 = sub_1DF564494();
  v20 = *(v19 - 8);
  v63 = v19;
  v64 = v20;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v65 = &v57 - v25;
  if (*(v1 + v2[9]) == 1)
  {
    v59 = v11;
    v61 = v5;
    if (qword_1ED956018 != -1)
    {
      swift_once();
    }

    v26 = sub_1DF5647B4();
    v60 = __swift_project_value_buffer(v26, qword_1ED956020);
    v27 = sub_1DF564794();
    v28 = sub_1DF564C14();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v58 = v2;
      v30 = v1;
      v31 = v29;
      *v29 = 0;
      _os_log_impl(&dword_1DF47C000, v27, v28, "Checking for excessive /features requests", v29, 2u);
      v32 = v31;
      v1 = v30;
      v2 = v58;
      MEMORY[0x1E12D75F0](v32, -1, -1);
    }

    sub_1DF564524();
    (*(v7 + 104))(v10, *MEMORY[0x1E6969A48], v6);
    v33 = v2[5];
    sub_1DF564514();
    (*(v7 + 8))(v10, v6);
    (*(v62 + 8))(v14, v59);
    v35 = v63;
    v34 = v64;
    if ((*(v64 + 48))(v18, 1, v63) == 1)
    {
      sub_1DF4C46C4(v18);
      v36 = v65;
      sub_1DF5643D4();
    }

    else
    {
      v37 = *(v34 + 32);
      v37(v24, v18, v35);
      v36 = v65;
      v37(v65, v24, v35);
    }

    v38 = sub_1DF557C44();
    MEMORY[0x1EEE9AC00](v38);
    *(&v57 - 2) = v36;
    v40 = sub_1DF557058(sub_1DF557F9C, (&v57 - 4), v39);

    v41 = sub_1DF564794();
    v42 = sub_1DF564C14();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134217984;
      *(v43 + 4) = *(v40 + 16);

      _os_log_impl(&dword_1DF47C000, v41, v42, "Found %ld recent requests.", v43, 0xCu);
      MEMORY[0x1E12D75F0](v43, -1, -1);
    }

    else
    {
    }

    v44 = v61;
    v45 = *(v40 + 16);
    if (v45 >= *(v1 + v2[6]))
    {
      sub_1DF557FCC(v1, v61, type metadata accessor for ExcessiveRequestDetector);

      v49 = sub_1DF564794();
      v50 = sub_1DF564C44();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 134349312;
        v52 = *(v40 + 16);

        *(v51 + 4) = v52;
        v34 = v64;

        *(v51 + 12) = 2050;
        v53 = *(v44 + v2[6]);
        sub_1DF558034(v44, type metadata accessor for ExcessiveRequestDetector);
        *(v51 + 14) = v53;
        _os_log_impl(&dword_1DF47C000, v49, v50, "Excessive requests detected (%{public}ld exceeded %{public}ld. Sending CA event.", v51, 0x16u);
        MEMORY[0x1E12D75F0](v51, -1, -1);
      }

      else
      {
        sub_1DF558034(v44, type metadata accessor for ExcessiveRequestDetector);

        swift_bridgeObjectRelease_n();
      }

      v36 = v65;
      v54 = v1 + v2[8];
      v55 = *(v54 + 8);
      sub_1DF4E1D9C(v45, *v54);
    }

    else
    {

      v46 = sub_1DF564794();
      v47 = sub_1DF564C14();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_1DF47C000, v46, v47, "No excessive requests detected. Not posting TTR.", v48, 2u);
        MEMORY[0x1E12D75F0](v48, -1, -1);
      }
    }

    (*(v34 + 8))(v36, v35);
  }

  return 0;
}

uint64_t type metadata accessor for ExcessiveRequestDetector()
{
  result = qword_1ECE37608;
  if (!qword_1ECE37608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DF557C14@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1DF557C44()
{
  v0 = type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DF564494();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF4B5FB4(&v24);
  v16 = v24;
  if (!v24)
  {
    if (qword_1ED956018 != -1)
    {
      swift_once();
    }

    v10 = sub_1DF5647B4();
    __swift_project_value_buffer(v10, qword_1ED956020);
    v11 = sub_1DF564794();
    v12 = sub_1DF564C14();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DF47C000, v11, v12, "No diagnostics found, will return empty array.", v13, 2u);
      MEMORY[0x1E12D75F0](v13, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v17 = *(v24 + 16);
  if (!v17)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v23 = v0;
  v24 = MEMORY[0x1E69E7CC0];
  sub_1DF4BCE30(0, v17, 0);
  v14 = v24;
  v18 = v16 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v22 = *(v1 + 72);
  v21[0] = v16;
  v21[1] = v6 + 32;
  do
  {
    sub_1DF557FCC(v18, v4, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
    (*(v6 + 16))(v9, &v4[*(v23 + 20)], v5);
    sub_1DF558034(v4, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
    v24 = v14;
    v20 = *(v14 + 16);
    v19 = *(v14 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1DF4BCE30(v19 > 1, v20 + 1, 1);
      v14 = v24;
    }

    *(v14 + 16) = v20 + 1;
    (*(v6 + 32))(v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20, v9, v5);
    v18 += v22;
    --v17;
  }

  while (v17);

  return v14;
}

uint64_t sub_1DF557FCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF558034(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DF5580CC()
{
  result = sub_1DF4AD70C(319, &qword_1ECE37678);
  if (v1 <= 0x3F)
  {
    result = sub_1DF564494();
    if (v2 <= 0x3F)
    {
      result = sub_1DF4AD70C(319, &qword_1ECE376C0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DF5581A8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38750, &qword_1DF56EA90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF559E08();
  sub_1DF5652A4();
  v11 = *v3;
  v12 = v3[1];
  v16[15] = 0;
  sub_1DF565054();
  if (!v2)
  {
    v14 = *(v3 + 16);
    v16[14] = 1;
    sub_1DF565064();
    v15 = *(type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent.FeatureDiagnostic(0) + 24);
    v16[13] = 2;
    sub_1DF564494();
    sub_1DF5597C4(&qword_1ED955120, MEMORY[0x1E6969530]);
    sub_1DF565044();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DF5583C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38748, &qword_1DF56EA88);
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent.FeatureDiagnostic(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF559E08();
  sub_1DF565284();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = v12;
  v17 = v22;
  v26 = 0;
  *v15 = sub_1DF564FC4();
  *(v15 + 1) = v18;
  v25 = 1;
  v15[16] = sub_1DF564FD4() & 1;
  sub_1DF564494();
  v24 = 2;
  sub_1DF5597C4(&qword_1ED955C88, MEMORY[0x1E6969530]);
  sub_1DF564FB4();
  (*(v17 + 8))(v11, v23);
  sub_1DF48C284(v7, &v15[*(v20 + 24)]);
  sub_1DF559E5C(v15, v21, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent.FeatureDiagnostic);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1DF499688(v15, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent.FeatureDiagnostic);
}

uint64_t sub_1DF5586F0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38738, &qword_1DF56EA78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF559C70();
  sub_1DF5652A4();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v21[0]) = 0;
  sub_1DF565054();
  if (!v2)
  {
    v13 = type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent(0);
    v14 = v13[5];
    LOBYTE(v21[0]) = 1;
    sub_1DF564494();
    sub_1DF5597C4(&qword_1ED955120, MEMORY[0x1E6969530]);
    sub_1DF565074();
    v15 = v3 + v13[6];
    v16 = *(v15 + 4);
    v17 = v15[40];
    v18 = *(v15 + 1);
    v21[0] = *v15;
    v21[1] = v18;
    v22 = v16;
    v23 = v17;
    v24 = 2;
    sub_1DF559CC4();
    sub_1DF565044();
    *&v21[0] = *(v3 + v13[7]);
    v24 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38728, &unk_1DF56E8A0);
    sub_1DF559D18(&qword_1ECE37498, &qword_1ECE37570);
    sub_1DF565044();
    v19 = v13[8];
    LOBYTE(v21[0]) = 4;
    sub_1DF565074();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DF5589D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_1DF564494();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38740, &qword_1DF56EA80);
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - v12;
  v14 = type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF559C70();
  v51 = v13;
  v19 = v52;
  sub_1DF565284();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v44 = v7;
  v45 = v14;
  v52 = a1;
  LOBYTE(v53) = 0;
  v21 = v49;
  v20 = v50;
  v22 = v17;
  *v17 = sub_1DF564FC4();
  v17[1] = v23;
  v43 = v23;
  LOBYTE(v53) = 1;
  v24 = sub_1DF5597C4(&qword_1ED955C88, MEMORY[0x1E6969530]);
  v25 = v9;
  v26 = v48;
  sub_1DF564FE4();
  v27 = v21;
  v41 = v24;
  v28 = v45;
  v29 = v25;
  v30 = *(v47 + 32);
  v30(v22 + v45[5], v29, v26);
  v57 = 2;
  sub_1DF559DB4();
  v42 = 0;
  sub_1DF564FB4();
  v31 = v22;
  v32 = v55;
  v33 = v56;
  v34 = v22 + v28[6];
  v35 = v54;
  *v34 = v53;
  *(v34 + 1) = v35;
  *(v34 + 4) = v32;
  v34[40] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38728, &unk_1DF56E8A0);
  v57 = 3;
  sub_1DF559D18(&qword_1ECE37490, &qword_1ECE37568);
  sub_1DF564FB4();
  v40 = v30;
  *(v22 + v28[7]) = v53;
  LOBYTE(v53) = 4;
  v36 = v44;
  v37 = v48;
  sub_1DF564FE4();
  (*(v27 + 8))(v51, v20);
  v40(v31 + v28[8], v36, v37);
  sub_1DF559E5C(v31, v46, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
  __swift_destroy_boxed_opaque_existential_0(v52);
  return sub_1DF499688(v31, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
}

uint64_t sub_1DF558F98()
{
  v1 = 0x6573556E6163;
  if (*v0 != 1)
  {
    v1 = 7107700;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4965727574616566;
  }
}

uint64_t sub_1DF558FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF55A54C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF559014(uint64_t a1)
{
  v2 = sub_1DF559E08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF559050(uint64_t a1)
{
  v2 = sub_1DF559E08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF5590BC()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x74736575716572;
  v4 = 0x7365727574616566;
  if (v1 != 3)
  {
    v4 = 0x6974656C706D6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4472656767697274;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DF559170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF55A668(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF559198(uint64_t a1)
{
  v2 = sub_1DF559C70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF5591D4(uint64_t a1)
{
  v2 = sub_1DF559C70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF559254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF5650D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF5592D8(uint64_t a1)
{
  v2 = sub_1DF5594FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF559314(uint64_t a1)
{
  v2 = sub_1DF5594FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeatureRequestFinishDiagnostic.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38710, &qword_1DF56E7A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF5594FC();

  sub_1DF5652A4();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38718, &qword_1DF56E7A8);
  sub_1DF559728(&qword_1ECE37480, &qword_1ECE37538);
  sub_1DF565074();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF5594FC()
{
  result = qword_1ECE37518;
  if (!qword_1ECE37518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37518);
  }

  return result;
}

uint64_t FeatureRequestFinishDiagnostic.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38720, qword_1DF56E7B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF5594FC();
  sub_1DF565284();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38718, &qword_1DF56E7A8);
    sub_1DF559728(&qword_1ECE37478, &qword_1ECE37530);
    sub_1DF564FE4();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1DF559728(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE38718, &qword_1DF56E7A8);
    sub_1DF5597C4(a2, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF5597C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DF55980C(uint64_t a1)
{
  *(a1 + 8) = sub_1DF4B9780();
  result = sub_1DF4B97D4();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DF55986C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1DF5598B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DF559928()
{
  sub_1DF564494();
  if (v0 <= 0x3F)
  {
    sub_1DF5599D8();
    if (v1 <= 0x3F)
    {
      sub_1DF559A28();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DF5599D8()
{
  if (!qword_1ED9546D8)
  {
    v0 = sub_1DF564D04();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9546D8);
    }
  }
}

void sub_1DF559A28()
{
  if (!qword_1ECE37488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE38728, &unk_1DF56E8A0);
    v0 = sub_1DF564D04();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE37488);
    }
  }
}

void sub_1DF559AD4()
{
  sub_1DF4820E4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1DF559B6C()
{
  result = qword_1ECE38730;
  if (!qword_1ECE38730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38730);
  }

  return result;
}

unint64_t sub_1DF559BC4()
{
  result = qword_1ECE37508;
  if (!qword_1ECE37508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37508);
  }

  return result;
}

unint64_t sub_1DF559C1C()
{
  result = qword_1ECE37510;
  if (!qword_1ECE37510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37510);
  }

  return result;
}

unint64_t sub_1DF559C70()
{
  result = qword_1ECE37550;
  if (!qword_1ECE37550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37550);
  }

  return result;
}

unint64_t sub_1DF559CC4()
{
  result = qword_1ED9546E0;
  if (!qword_1ED9546E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9546E0);
  }

  return result;
}

uint64_t sub_1DF559D18(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE38728, &unk_1DF56E8A0);
    sub_1DF5597C4(a2, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent.FeatureDiagnostic);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF559DB4()
{
  result = qword_1ECE375F8;
  if (!qword_1ECE375F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE375F8);
  }

  return result;
}

unint64_t sub_1DF559E08()
{
  result = qword_1ECE37588;
  if (!qword_1ECE37588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37588);
  }

  return result;
}

uint64_t sub_1DF559E5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1DF559EC4()
{
  v0 = sub_1DF564494();
  v42 = *(v0 - 8);
  v1 = *(v42 + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v37 - v5;
  v7 = type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  sub_1DF4B5BBC(&v43);
  v39 = v21;
  v40 = v6;
  v41 = v4;
  v22 = v43;
  v23 = *(v43 + 16);
  if (v23)
  {
    v38 = v0;
    v24 = v43 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    while (v23 <= *(v22 + 16))
    {
      --v23;
      v25 = v24 + *(v8 + 72) * v23;
      sub_1DF559E5C(v25, v12, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      v26 = &v12[*(v7 + 24)];
      if (!*(v26 + 1) || (v26[40] & 1) != 0)
      {
        sub_1DF499688(v12, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      }

      else
      {
        v27 = *(v26 + 4);
        sub_1DF499688(v12, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
        if (v27 == 200)
        {
          v28 = v14;
          sub_1DF559E5C(v25, v14, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);

          v29 = v42;
          v30 = &v14[*(v7 + 32)];
          v0 = v38;
          v31 = v39;
          (*(v42 + 16))(v39, v30, v38);
          sub_1DF499688(v28, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
          v32 = 0;
          goto LABEL_13;
        }
      }

      if (!v23)
      {

        v32 = 1;
        v0 = v38;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

    v32 = 1;
LABEL_12:
    v29 = v42;
    v31 = v39;
LABEL_13:
    (*(v29 + 56))(v31, v32, 1, v0);
    sub_1DF4952D8(v31, v19);
    v33 = (*(v29 + 48))(v19, 1, v0);
    v35 = v40;
    v34 = v41;
    if (v33 == 1)
    {
      sub_1DF4C46C4(v31);
      sub_1DF4C46C4(v19);
    }

    else
    {
      (*(v29 + 32))(v40, v19, v0);
      sub_1DF564474();
      sub_1DF5643C4();
      v36 = *(v29 + 8);
      v36(v34, v0);
      v36(v35, v0);
      sub_1DF4C46C4(v31);
    }
  }
}

unint64_t sub_1DF55A340()
{
  result = qword_1ECE38758;
  if (!qword_1ECE38758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38758);
  }

  return result;
}

unint64_t sub_1DF55A398()
{
  result = qword_1ECE38760;
  if (!qword_1ECE38760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38760);
  }

  return result;
}

unint64_t sub_1DF55A3F0()
{
  result = qword_1ECE37578;
  if (!qword_1ECE37578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37578);
  }

  return result;
}

unint64_t sub_1DF55A448()
{
  result = qword_1ECE37580;
  if (!qword_1ECE37580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37580);
  }

  return result;
}

unint64_t sub_1DF55A4A0()
{
  result = qword_1ECE37540;
  if (!qword_1ECE37540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37540);
  }

  return result;
}

unint64_t sub_1DF55A4F8()
{
  result = qword_1ECE37548;
  if (!qword_1ECE37548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37548);
  }

  return result;
}

uint64_t sub_1DF55A54C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4965727574616566 && a2 == 0xE900000000000044;
  if (v4 || (sub_1DF5650D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573556E6163 && a2 == 0xE600000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107700 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DF5650D4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1DF55A668(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1DF5650D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4472656767697274 && a2 == 0xEB00000000657461 || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6974656C706D6F63 && a2 == 0xEE00657461446E6FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DF5650D4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1DF55A82C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38788, &qword_1DF56EF18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF55B710();
  sub_1DF5652A4();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_1DF565054();
  if (!v2)
  {
    v13 = *(type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart() + 20);
    v15[14] = 1;
    sub_1DF564494();
    sub_1DF55B764(&qword_1ED955120, MEMORY[0x1E6969530]);
    sub_1DF565074();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DF55A9E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_1DF564494();
  v20 = *(v23 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38790, &qword_1DF56EF20);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v19 - v8;
  started = type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart();
  v11 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF55B710();
  sub_1DF565284();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = started;
  v16 = v22;
  v15 = v23;
  v26 = 0;
  *v13 = sub_1DF564FC4();
  v13[1] = v17;
  v25 = 1;
  sub_1DF55B764(&qword_1ED955C88, MEMORY[0x1E6969530]);
  sub_1DF564FE4();
  (*(v16 + 8))(v9, v24);
  (*(v20 + 32))(v13 + *(v19 + 20), v6, v15);
  sub_1DF55B7AC(v13, v21);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1DF55B810(v13);
}

uint64_t sub_1DF55AD08()
{
  if (*v0)
  {
    result = 0x4472656767697274;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_1DF55AD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1DF5650D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4472656767697274 && a2 == 0xEB00000000657461)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF5650D4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DF55AE38(uint64_t a1)
{
  v2 = sub_1DF55B710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF55AE74(uint64_t a1)
{
  v2 = sub_1DF55B710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF55AEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737472617473 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF5650D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF55AF78(uint64_t a1)
{
  v2 = sub_1DF55B19C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF55AFB4(uint64_t a1)
{
  v2 = sub_1DF55B19C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeatureRequestStartDiagnostic.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38768, &qword_1DF56ECB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF55B19C();

  sub_1DF5652A4();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38770, &qword_1DF56ECB8);
  sub_1DF55B3F4(&qword_1ECE374A8, &qword_1ECE375D8);
  sub_1DF565074();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF55B19C()
{
  result = qword_1ECE375B8;
  if (!qword_1ECE375B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE375B8);
  }

  return result;
}

uint64_t type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart()
{
  result = qword_1ECE375C0;
  if (!qword_1ECE375C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FeatureRequestStartDiagnostic.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38778, &qword_1DF56ECC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF55B19C();
  sub_1DF565284();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38770, &qword_1DF56ECB8);
    sub_1DF55B3F4(&qword_1ECE374A0, &qword_1ECE375D0);
    sub_1DF564FE4();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1DF55B3F4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE38770, &qword_1DF56ECB8);
    sub_1DF55B764(a2, type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF55B490(uint64_t a1)
{
  *(a1 + 8) = sub_1DF4B9B20();
  result = sub_1DF55B4C0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DF55B4C0()
{
  result = qword_1ECE375A0;
  if (!qword_1ECE375A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE375A0);
  }

  return result;
}

uint64_t sub_1DF55B57C()
{
  result = sub_1DF564494();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DF55B60C()
{
  result = qword_1ECE38780;
  if (!qword_1ECE38780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38780);
  }

  return result;
}

unint64_t sub_1DF55B664()
{
  result = qword_1ECE375A8;
  if (!qword_1ECE375A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE375A8);
  }

  return result;
}

unint64_t sub_1DF55B6BC()
{
  result = qword_1ECE375B0;
  if (!qword_1ECE375B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE375B0);
  }

  return result;
}

unint64_t sub_1DF55B710()
{
  result = qword_1ECE375F0;
  if (!qword_1ECE375F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE375F0);
  }

  return result;
}

uint64_t sub_1DF55B764(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DF55B7AC(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart();
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_1DF55B810(uint64_t a1)
{
  started = type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart();
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_1DF55B86C(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DF565094();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart();
        v6 = sub_1DF564AD4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DF55BB98(v8, v9, a1, v4);
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
    return sub_1DF55B998(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DF55B998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  started = type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart();
  v9 = *(*(started - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](started);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v29 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v19 = &v29 - v18;
  v31 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v36 = v20;
    v30 = v21;
    v25 = v20 + v21 * a3;
LABEL_5:
    v34 = v22;
    v35 = a3;
    v32 = v25;
    v33 = v24;
    while (1)
    {
      sub_1DF55B7AC(v25, v19);
      sub_1DF55B7AC(v22, v15);
      v26 = *(started + 20);
      v27 = sub_1DF564404();
      sub_1DF55B810(v15);
      result = sub_1DF55B810(v19);
      if ((v27 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v22 = v34 + v30;
        v24 = v33 - 1;
        v25 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      sub_1DF55CA9C(v25, v12);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1DF55CA9C(v12, v22);
      v22 += v23;
      v25 += v23;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DF55BB98(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v106 = a1;
  started = type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart();
  v114 = *(started - 8);
  v10 = *(v114 + 64);
  v11 = MEMORY[0x1EEE9AC00](started);
  v108 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v117 = &v103 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v103 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v20 = &v103 - v19;
  v116 = a3;
  v21 = a3[1];
  if (v21 < 1)
  {
    v23 = MEMORY[0x1E69E7CC0];
LABEL_97:
    v5 = *v106;
    if (!*v106)
    {
      goto LABEL_136;
    }

    a4 = v23;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_100:
      v119 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v116)
        {
          v99 = *(result + 16 * a4);
          v100 = result;
          v101 = *(result + 16 * (a4 - 1) + 40);
          sub_1DF55C3F8(*v116 + *(v114 + 72) * v99, *v116 + *(v114 + 72) * *(result + 16 * (a4 - 1) + 32), *v116 + *(v114 + 72) * v101, v5);
          if (v6)
          {
          }

          if (v101 < v99)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v100 = sub_1DF4B8128(v100);
          }

          if (a4 - 2 >= *(v100 + 2))
          {
            goto LABEL_124;
          }

          v102 = &v100[16 * a4];
          *v102 = v99;
          *(v102 + 1) = v101;
          v119 = v100;
          sub_1DF4B809C(a4 - 1);
          result = v119;
          a4 = *(v119 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_134;
      }
    }

LABEL_130:
    result = sub_1DF4B8128(a4);
    goto LABEL_100;
  }

  v22 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  v105 = a4;
  v118 = started;
  while (1)
  {
    v24 = v22;
    v25 = v22 + 1;
    v109 = v23;
    if (v25 >= v21)
    {
      v21 = v25;
    }

    else
    {
      v26 = *v116;
      v27 = v24;
      v28 = *(v114 + 72);
      v5 = *v116 + v28 * v25;
      sub_1DF55B7AC(v5, v20);
      sub_1DF55B7AC(v26 + v28 * v27, v17);
      v29 = *(started + 20);
      LODWORD(v113) = sub_1DF564404();
      sub_1DF55B810(v17);
      result = sub_1DF55B810(v20);
      v104 = v27;
      v30 = v27 + 2;
      v115 = v28;
      v31 = v26 + v28 * v30;
      v32 = v113;
      while (v21 != v30)
      {
        sub_1DF55B7AC(v31, v20);
        sub_1DF55B7AC(v5, v17);
        v33 = *(v118 + 20);
        v34 = sub_1DF564404() & 1;
        sub_1DF55B810(v17);
        result = sub_1DF55B810(v20);
        ++v30;
        v31 += v115;
        v5 += v115;
        if ((v32 & 1) != v34)
        {
          v35 = v32;
          v21 = v30 - 1;
          goto LABEL_11;
        }
      }

      v35 = v32;
LABEL_11:
      v24 = v104;
      a4 = v105;
      started = v118;
      if (v35)
      {
        if (v21 < v104)
        {
          goto LABEL_127;
        }

        if (v104 < v21)
        {
          v103 = v6;
          v36 = v115 * (v21 - 1);
          v37 = v21 * v115;
          v113 = v21;
          v38 = v21;
          v39 = v104;
          v40 = v104 * v115;
          do
          {
            if (v39 != --v38)
            {
              v41 = *v116;
              if (!*v116)
              {
                goto LABEL_133;
              }

              v5 = v41 + v40;
              sub_1DF55CA9C(v41 + v40, v108);
              if (v40 < v36 || v5 >= v41 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v40 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1DF55CA9C(v108, v41 + v36);
            }

            ++v39;
            v36 -= v115;
            v37 -= v115;
            v40 += v115;
          }

          while (v39 < v38);
          v6 = v103;
          v24 = v104;
          a4 = v105;
          started = v118;
          v21 = v113;
        }
      }
    }

    v42 = v116[1];
    if (v21 >= v42)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v21, v24))
    {
      goto LABEL_126;
    }

    if (v21 - v24 >= a4)
    {
LABEL_34:
      v44 = v21;
      if (v21 < v24)
      {
        goto LABEL_125;
      }

      goto LABEL_35;
    }

    if (__OFADD__(v24, a4))
    {
      goto LABEL_128;
    }

    if ((v24 + a4) >= v42)
    {
      v43 = v116[1];
    }

    else
    {
      v43 = v24 + a4;
    }

    if (v43 < v24)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v21 == v43)
    {
      goto LABEL_34;
    }

    v103 = v6;
    v104 = v24;
    a4 = *v116;
    v89 = *(v114 + 72);
    v90 = *v116 + v89 * (v21 - 1);
    v91 = v21;
    v92 = -v89;
    v93 = v24 - v91;
    v113 = v91;
    v107 = v89;
    v5 = a4 + v91 * v89;
    v110 = v43;
LABEL_87:
    v111 = v5;
    v112 = v93;
    v115 = v90;
    v94 = v90;
LABEL_88:
    sub_1DF55B7AC(v5, v20);
    sub_1DF55B7AC(v94, v17);
    v95 = *(started + 20);
    v96 = sub_1DF564404();
    sub_1DF55B810(v17);
    result = sub_1DF55B810(v20);
    if (v96)
    {
      break;
    }

    started = v118;
LABEL_86:
    v90 = v115 + v107;
    v93 = v112 - 1;
    v44 = v110;
    v5 = v111 + v107;
    if (++v113 != v110)
    {
      goto LABEL_87;
    }

    v6 = v103;
    v24 = v104;
    if (v110 < v104)
    {
      goto LABEL_125;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v23 = v109;
    }

    else
    {
      result = sub_1DF4A9F30(0, *(v109 + 2) + 1, 1, v109);
      v23 = result;
    }

    a4 = *(v23 + 2);
    v45 = *(v23 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_1DF4A9F30((v45 > 1), a4 + 1, 1, v23);
      v23 = result;
    }

    *(v23 + 2) = v5;
    v46 = &v23[16 * a4];
    *(v46 + 4) = v24;
    *(v46 + 5) = v44;
    v47 = *v106;
    if (!*v106)
    {
      goto LABEL_135;
    }

    v110 = v44;
    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v23[16 * v5 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_112;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_113;
          }

          v60 = &v23[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_115;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v64 >= v56)
          {
            v82 = &v23[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_122;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_54:
            if (v52)
            {
              goto LABEL_114;
            }

            v65 = &v23[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_117;
            }

            v71 = &v23[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_121;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_68;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v23 + 4);
            v50 = *(v23 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_54;
          }

          v75 = &v23[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_68:
          if (v70)
          {
            goto LABEL_116;
          }

          v78 = &v23[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_119;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
          goto LABEL_129;
        }

        if (!*v116)
        {
          goto LABEL_132;
        }

        v86 = v23;
        v87 = *&v23[16 * a4 + 32];
        v5 = *&v23[16 * v48 + 40];
        sub_1DF55C3F8(*v116 + *(v114 + 72) * v87, *v116 + *(v114 + 72) * *&v23[16 * v48 + 32], *v116 + *(v114 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_1DF4B8128(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_111;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v119 = v86;
        result = sub_1DF4B809C(v48);
        v23 = v119;
        v5 = *(v119 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v21 = v116[1];
    v22 = v110;
    a4 = v105;
    started = v118;
    if (v110 >= v21)
    {
      goto LABEL_97;
    }
  }

  if (a4)
  {
    v97 = v117;
    sub_1DF55CA9C(v5, v117);
    started = v118;
    swift_arrayInitWithTakeFrontToBack();
    sub_1DF55CA9C(v97, v94);
    v94 += v92;
    v5 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_86;
    }

    goto LABEL_88;
  }

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
  return result;
}

uint64_t sub_1DF55C3F8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = a3;
  started = type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart();
  v8 = *(*(started - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](started);
  v45 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = v41 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = v47 - a2;
  if (v47 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v17 = (a2 - a1) / v15;
  v50 = a1;
  v49 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41[1] = v4;
    v25 = a4 + v19;
    if (v19 < 1)
    {
      v28 = a4 + v19;
    }

    else
    {
      v26 = -v15;
      v27 = a4 + v19;
      v28 = v25;
      v43 = v26;
      v44 = a4;
      do
      {
        v41[0] = v28;
        v29 = a2;
        v30 = a2 + v26;
        while (1)
        {
          v32 = v47;
          if (v29 <= a1)
          {
            v50 = v29;
            v48 = v41[0];
            goto LABEL_59;
          }

          v42 = v28;
          v47 += v26;
          v33 = v27 + v26;
          sub_1DF55B7AC(v33, v13);
          v34 = v30;
          v35 = v30;
          v36 = v13;
          v37 = v45;
          sub_1DF55B7AC(v35, v45);
          v38 = *(started + 20);
          v39 = sub_1DF564404();
          v40 = v37;
          v13 = v36;
          sub_1DF55B810(v40);
          sub_1DF55B810(v36);
          if (v39)
          {
            break;
          }

          v28 = v33;
          if (v32 < v27 || v47 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v34;
          }

          else
          {
            v30 = v34;
            if (v32 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v31 = v33 > v44;
          v26 = v43;
          if (!v31)
          {
            a2 = v29;
            goto LABEL_58;
          }
        }

        if (v32 < v29 || v47 >= v29)
        {
          a2 = v34;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v42;
          v26 = v43;
        }

        else
        {
          v28 = v42;
          v26 = v43;
          a2 = v34;
          if (v32 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v44);
    }

LABEL_58:
    v50 = a2;
    v48 = v28;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v20 = a4 + v18;
    v48 = a4 + v18;
    if (v18 >= 1 && a2 < v47)
    {
      do
      {
        sub_1DF55B7AC(a2, v13);
        v22 = v45;
        sub_1DF55B7AC(a4, v45);
        v23 = *(started + 20);
        v24 = sub_1DF564404();
        sub_1DF55B810(v22);
        sub_1DF55B810(v13);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v15;
          a4 += v15;
        }

        a1 += v15;
        v50 = a1;
      }

      while (a4 < v20 && a2 < v47);
    }
  }

LABEL_59:
  sub_1DF4B813C(&v50, &v49, &v48);
  return 1;
}

uint64_t sub_1DF55C880(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart();
  v5 = *(started - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](started);
  v8 = (v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DF4B5B78(v18);
  if (v18[0])
  {
    v9 = v18[0];
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(started + 20);

  sub_1DF564474();
  *v8 = a1;
  v8[1] = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1DF4A9F08(0, v9[2] + 1, 1, v9);
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1DF4A9F08(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  v13 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  sub_1DF55CA9C(v8, v13 + *(v5 + 72) * v12);
  v18[0] = v13;
  v18[1] = v12 + 1;
  sub_1DF55B86C(v18);
  v14 = v9[2];
  if (v14 >= 0x65)
  {
    sub_1DF4B6C98(v9, v13, v14 - 100, (2 * v14) | 1);
    v17 = v16;

    v9 = v17;
  }

  v19[0] = 0;
  v18[3] = &type metadata for FeatureRequestStartDiagnostic;
  v18[4] = sub_1DF4B9B20();
  v18[5] = sub_1DF55B4C0();
  v18[0] = v9;
  sub_1DF55D5F0(v19, v18);
  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t sub_1DF55CA9C(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart();
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

unint64_t sub_1DF55CB14()
{
  result = qword_1ECE38798;
  if (!qword_1ECE38798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38798);
  }

  return result;
}

unint64_t sub_1DF55CB6C()
{
  result = qword_1ECE375E0;
  if (!qword_1ECE375E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE375E0);
  }

  return result;
}

unint64_t sub_1DF55CBC4()
{
  result = qword_1ECE375E8;
  if (!qword_1ECE375E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE375E8);
  }

  return result;
}

void static FrameworkDiagnostics.fetchDiagnostic<A>(forKey:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v27 = a3;
  v28 = a2;
  v4 = sub_1DF564104();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v11 = sub_1DF564914();
  v12 = [v10 initWithSuiteName_];

  if (v12)
  {

    v13 = sub_1DF564914();

    v14 = [v12 dataForKey_];

    if (v14)
    {
      v15 = sub_1DF564374();
      v17 = v16;

      v18 = sub_1DF564144();
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      swift_allocObject();
      sub_1DF564134();
      (*(v5 + 104))(v8, *MEMORY[0x1E6967F30], v4);
      sub_1DF564114();
      sub_1DF564124();

      sub_1DF48C308(v15, v17);
    }

    else
    {
      sub_1DF4B9828();
      swift_allocError();
      *v26 = 1;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_1ED9550D0 != -1)
    {
      swift_once();
    }

    v21 = sub_1DF5647B4();
    __swift_project_value_buffer(v21, qword_1ED9550D8);
    v22 = sub_1DF564794();
    v23 = sub_1DF564C34();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DF47C000, v22, v23, "Failed to initialize diagnostics default. Diagnostics can not be saved.", v24, 2u);
      MEMORY[0x1E12D75F0](v24, -1, -1);
    }

    sub_1DF4B9828();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
  }
}

CloudSubscriptionFeatures::FrameworkDiagnostics::DiagnosticKey_optional __swiftcall FrameworkDiagnostics.DiagnosticKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF564F54();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FrameworkDiagnostics.DiagnosticKey.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x5265727574616566;
  v3 = 0x74657373416D6661;
  v4 = 0x74657373416D6461;
  if (v1 != 3)
  {
    v4 = 0x656C655465726F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DF55D11C()
{
  v1 = *v0;
  sub_1DF565234();
  sub_1DF5649E4();

  return sub_1DF565264();
}

uint64_t sub_1DF55D228()
{
  *v0;
  *v0;
  sub_1DF5649E4();
}

uint64_t sub_1DF55D320()
{
  v1 = *v0;
  sub_1DF565234();
  sub_1DF5649E4();

  return sub_1DF565264();
}

void sub_1DF55D434(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00747365757165;
  v4 = 0x5265727574616566;
  v5 = 0x74657373416D6661;
  v6 = 0xE900000000000073;
  v7 = 0x74657373416D6461;
  v8 = 0xE900000000000073;
  if (v2 != 3)
  {
    v7 = 0x656C655465726F63;
    v8 = 0xED0000796E6F6870;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v6 = v8;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000001DF570B60;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1DF55D500()
{
  result = qword_1ECE387A0;
  if (!qword_1ECE387A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE387A0);
  }

  return result;
}

unint64_t sub_1DF55D59C()
{
  result = qword_1ECE387A8;
  if (!qword_1ECE387A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE387A8);
  }

  return result;
}

uint64_t sub_1DF55D5F0(unsigned __int8 *a1, void *a2)
{
  v56 = a2;
  v55 = sub_1DF564184();
  v4 = *(v55 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DF564164();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = *a1;
  v11 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v12 = sub_1DF564914();
  v13 = [v11 initWithSuiteName_];

  if (v13)
  {
    v54 = v10;

    if (qword_1ED9550D0 != -1)
    {
      swift_once();
    }

    v53 = v2;
    v14 = sub_1DF5647B4();
    v51 = __swift_project_value_buffer(v14, qword_1ED9550D8);
    v15 = sub_1DF564794();
    v16 = sub_1DF564C44();
    if (os_log_type_enabled(v15, v16))
    {
      v52 = v13;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v57 = v18;
      *v17 = 136315138;
      v19 = 0xEE00747365757165;
      v20 = 0x74657373416D6661;
      v21 = 0xE900000000000073;
      v22 = 0x74657373416D6461;
      v23 = 0xE900000000000073;
      if (v54 != 3)
      {
        v22 = 0x656C655465726F63;
        v23 = 0xED0000796E6F6870;
      }

      if (v54 != 2)
      {
        v20 = v22;
        v21 = v23;
      }

      if (v54)
      {
        v24 = 0x5265727574616566;
      }

      else
      {
        v24 = 0xD000000000000013;
      }

      if (!v54)
      {
        v19 = 0x80000001DF570B60;
      }

      if (v54 <= 1)
      {
        v25 = v24;
      }

      else
      {
        v25 = v20;
      }

      if (v54 <= 1)
      {
        v26 = v19;
      }

      else
      {
        v26 = v21;
      }

      v27 = sub_1DF47EF6C(v25, v26, &v57);

      *(v17 + 4) = v27;
      _os_log_impl(&dword_1DF47C000, v15, v16, "Attempting to save diagnostics for %s to user defaults.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1E12D75F0](v18, -1, -1);
      MEMORY[0x1E12D75F0](v17, -1, -1);

      v13 = v52;
    }

    else
    {
    }

    v34 = sub_1DF5641C4();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    sub_1DF5641B4();
    sub_1DF564154();
    sub_1DF564174();
    (*(v4 + 104))(v7, *MEMORY[0x1E6967FC8], v55);
    sub_1DF564194();
    v37 = v56[5];
    __swift_project_boxed_opaque_existential_0(v56, v56[3]);
    v38 = v53;
    v39 = sub_1DF5641A4();
    if (v38)
    {
    }

    v55 = v39;
    v56 = v40;
    v41 = sub_1DF564354();
    v42 = sub_1DF564914();

    [v13 setObject:v41 forKey:v42];

    v43 = sub_1DF564794();
    v44 = v13;
    v45 = sub_1DF564C44();
    if (!os_log_type_enabled(v43, v45))
    {
      sub_1DF48C308(v55, v56);
    }

    v52 = v44;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v57 = v47;
    *v46 = 136315138;
    if (v54 <= 1)
    {
      if (v54)
      {
        v48 = 0x5265727574616566;
      }

      else
      {
        v48 = 0xD000000000000013;
      }

      if (v54)
      {
        v49 = 0xEE00747365757165;
      }

      else
      {
        v49 = 0x80000001DF570B60;
      }

      goto LABEL_44;
    }

    if (v54 == 2)
    {
      v48 = 0x74657373416D6661;
    }

    else
    {
      if (v54 != 3)
      {
        v48 = 0x656C655465726F63;
        v49 = 0xED0000796E6F6870;
        goto LABEL_44;
      }

      v48 = 0x74657373416D6461;
    }

    v49 = 0xE900000000000073;
LABEL_44:
    v50 = sub_1DF47EF6C(v48, v49, &v57);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_1DF47C000, v43, v45, "Saved diagnostics for %s to user defaults.", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x1E12D75F0](v47, -1, -1);
    MEMORY[0x1E12D75F0](v46, -1, -1);
    sub_1DF48C308(v55, v56);
  }

  if (qword_1ED9550D0 != -1)
  {
    swift_once();
  }

  v28 = sub_1DF5647B4();
  __swift_project_value_buffer(v28, qword_1ED9550D8);
  v29 = sub_1DF564794();
  v30 = sub_1DF564C34();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1DF47C000, v29, v30, "Failed to initialize diagnostics defaults. Diagnostics can not be saved.", v31, 2u);
    MEMORY[0x1E12D75F0](v31, -1, -1);
  }

  sub_1DF4B9828();
  swift_allocError();
  *v32 = 0;
  return swift_willThrow();
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

uint64_t sub_1DF55DD60(uint64_t a1, int a2)
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

uint64_t sub_1DF55DDA8(uint64_t result, int a2, int a3)
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

uint64_t sub_1DF55DE04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE387D0, &qword_1DF56F498);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF55EB4C();
  sub_1DF5652A4();
  v16 = 0;
  sub_1DF565054();
  if (!v5)
  {
    v15 = 1;
    sub_1DF565054();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1DF55DF98(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE387B8, &qword_1DF56F2D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF55E928();
  sub_1DF5652A4();
  v11 = v3[1];
  v16 = *v3;
  v17 = v11;
  v15[15] = 0;
  sub_1DF55E9D0();
  sub_1DF565074();
  if (!v2)
  {
    v13 = *(v3 + 4);
    v14 = *(v3 + 40);
    LOBYTE(v16) = 1;
    sub_1DF565034();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DF55E164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x80000001DF575410 == a2 || (sub_1DF5650D4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DF575430 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1DF5650D4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1DF55E24C(uint64_t a1)
{
  v2 = sub_1DF55EB4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF55E288(uint64_t a1)
{
  v2 = sub_1DF55EB4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF55E2C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DF55E524(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_1DF55E314()
{
  if (*v0)
  {
    result = 0x7461745370747468;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_1DF55E360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001DF5753F0 == a2 || (sub_1DF5650D4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7461745370747468 && a2 == 0xEE0065646F437375)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1DF5650D4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1DF55E450(uint64_t a1)
{
  v2 = sub_1DF55E928();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF55E48C(uint64_t a1)
{
  v2 = sub_1DF55E928();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DF55E4C8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DF55E708(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1DF55E524(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE387C8, &qword_1DF56F490);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF55EB4C();
  sub_1DF565284();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_1DF564FC4();
    v11 = 1;
    sub_1DF564FC4();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t sub_1DF55E708@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE387B0, &qword_1DF56F2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF55E928();
  sub_1DF565284();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = 0;
  sub_1DF55E97C();
  sub_1DF564FE4();
  v19 = v21;
  v20 = v22;
  v11 = v24;
  v18 = v23;
  LOBYTE(v21) = 1;
  v12 = sub_1DF564FA4();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v16 = v20;
  *a2 = v19;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14 & 1;
  return result;
}

unint64_t sub_1DF55E928()
{
  result = qword_1ED954718[0];
  if (!qword_1ED954718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED954718);
  }

  return result;
}

unint64_t sub_1DF55E97C()
{
  result = qword_1ECE37600;
  if (!qword_1ECE37600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37600);
  }

  return result;
}

unint64_t sub_1DF55E9D0()
{
  result = qword_1ED9546E8;
  if (!qword_1ED9546E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9546E8);
  }

  return result;
}

unint64_t sub_1DF55EA48()
{
  result = qword_1ECE387C0;
  if (!qword_1ECE387C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE387C0);
  }

  return result;
}

unint64_t sub_1DF55EAA0()
{
  result = qword_1ED954708;
  if (!qword_1ED954708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954708);
  }

  return result;
}

unint64_t sub_1DF55EAF8()
{
  result = qword_1ED954710;
  if (!qword_1ED954710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954710);
  }

  return result;
}

unint64_t sub_1DF55EB4C()
{
  result = qword_1ED954700;
  if (!qword_1ED954700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954700);
  }

  return result;
}

unint64_t sub_1DF55EBB4()
{
  result = qword_1ECE387D8;
  if (!qword_1ECE387D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE387D8);
  }

  return result;
}

unint64_t sub_1DF55EC0C()
{
  result = qword_1ED9546F0;
  if (!qword_1ED9546F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9546F0);
  }

  return result;
}

unint64_t sub_1DF55EC64()
{
  result = qword_1ED9546F8;
  if (!qword_1ED9546F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9546F8);
  }

  return result;
}

Swift::Void __swiftcall TapToRadarPoster.postTTR(configuration:)(CloudSubscriptionFeatures::TapToRadarConfiguration *configuration)
{
  countAndFlagsBits = configuration->title._countAndFlagsBits;
  object = configuration->title._object;
  v3 = configuration->message._object;
  v4 = configuration->reason._object;
  if (configuration->enabled)
  {
    v5 = configuration->reason._countAndFlagsBits;
    v6 = configuration->message._countAndFlagsBits;
    v7 = objc_opt_self();
    v8 = sub_1DF564914();
    v9 = sub_1DF564914();
    oslog = sub_1DF564914();
    [v7 tapToRadar:v8 withMessage:v9 withReason:oslog];
  }

  else
  {
    if (qword_1ECE37858 != -1)
    {
      swift_once();
    }

    v10 = sub_1DF5647B4();
    __swift_project_value_buffer(v10, qword_1ECE37FD0);

    oslog = sub_1DF564794();
    v11 = sub_1DF564C44();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_1DF47EF6C(countAndFlagsBits, object, &v15);
      _os_log_impl(&dword_1DF47C000, oslog, v11, "Attempted to post TTR %{public}s but it is disabled.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1E12D75F0](v13, -1, -1);
      MEMORY[0x1E12D75F0](v12, -1, -1);
    }
  }
}

void static TapToRadarConfiguration.noJWT(feature:)(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000014;
  *(a1 + 8) = 0x80000001DF571B70;
  *(a1 + 16) = 0xD00000000000003BLL;
  *(a1 + 24) = 0x80000001DF571B90;
  *(a1 + 32) = 0xD00000000000001CLL;
  *(a1 + 40) = 0x80000001DF571BD0;
  *(a1 + 48) = 1;
}

void static TapToRadarConfiguration.expiredJWT(feature:)(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000022;
  *(a1 + 8) = 0x80000001DF575450;
  *(a1 + 16) = 0xD000000000000039;
  *(a1 + 24) = 0x80000001DF575480;
  *(a1 + 32) = 0xD00000000000001DLL;
  *(a1 + 40) = 0x80000001DF5754C0;
  *(a1 + 48) = 0;
}

uint64_t static TapToRadarConfiguration.excessiveRequests(numberOfRequestsInLast24Hours:)@<X0>(uint64_t a1@<X8>)
{
  sub_1DF564DF4();
  MEMORY[0x1E12D62C0](0xD000000000000071, 0x80000001DF575510);
  v2 = sub_1DF5650A4();
  MEMORY[0x1E12D62C0](v2);

  result = MEMORY[0x1E12D62C0](46, 0xE100000000000000);
  *a1 = 0xD000000000000029;
  *(a1 + 8) = 0x80000001DF5754E0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0xD00000000000003ELL;
  *(a1 + 40) = 0x80000001DF575590;
  *(a1 + 48) = 0;
  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DF55F0B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1DF55F0F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DF55F158()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56B0F0;
  *(inited + 32) = 0x4364656863746566;
  *(inited + 40) = 0xEF61697265746972;
  v3 = *v0;
  *(inited + 48) = sub_1DF564AF4();
  *(inited + 56) = 0xD00000000000001ELL;
  *(inited + 64) = 0x80000001DF5755D0;
  v4 = *(v0 + 3);
  *(inited + 72) = sub_1DF564B74();
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x80000001DF5755F0;
  v5 = v0[41];
  *(inited + 96) = sub_1DF564AF4();
  v6 = sub_1DF480040(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC8, &unk_1DF5692B0);
  swift_arrayDestroy();
  if ((v1[16] & 1) == 0)
  {
    v7 = *(v1 + 1);
    v8 = sub_1DF565214();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v8, 0x79616C6564, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  }

  if ((v1[40] & 1) == 0)
  {
    v10 = *(v1 + 4);
    v11 = sub_1DF564B74();
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v11, 0xD000000000000023, 0x80000001DF575610, v12);
  }

  return v6;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DF55F33C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[42])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1DF55F390(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1DF55F3F0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DF55FA00(*a1);
  *a2 = result;
  return result;
}

id sub_1DF55F41C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56B0F0;
  *(inited + 32) = 0x656D6F6374756FLL;
  *(inited + 40) = 0xE700000000000000;
  v3 = *v0;
  *(inited + 48) = sub_1DF564BD4();
  *(inited + 56) = 0xD00000000000001ELL;
  *(inited + 64) = 0x80000001DF5755D0;
  v4 = *(v0 + 6);
  *(inited + 72) = sub_1DF564B74();
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x80000001DF5755F0;
  v5 = v0[65];
  *(inited + 96) = sub_1DF564AF4();
  v6 = sub_1DF480040(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC8, &unk_1DF5692B0);
  swift_arrayDestroy();
  if (*(v1 + 1) != 2)
  {
    v7 = sub_1DF564AF4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30[0] = v6;
    sub_1DF502218(v7, 0x6C61727265666564, 0xEE00746C75736552, isUniquelyReferenced_nonNull_native);
  }

  if (*(v1 + 2) == 2)
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v16 = sub_1DF564AF4();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v30[0] = v6;
    sub_1DF502218(v16, 0xD00000000000001FLL, 0x80000001DF575670, v17);
    if (*(v1 + 16))
    {
LABEL_5:
      if (!*(v1 + 24))
      {
        goto LABEL_6;
      }

LABEL_13:
      swift_getErrorValue();
      v30[9] = swift_getDynamicType();
      v30[10] = v30[13];
      sub_1DF4E50D4(v1, v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE387E0, &qword_1DF56F710);
      sub_1DF564994();
      v21 = sub_1DF564914();

      v22 = swift_isUniquelyReferenced_nonNull_native();
      v30[0] = v6;
      sub_1DF502218(v21, 0x7245664F65707974, 0xEB00000000726F72, v22);
      v23 = v30[0];
      v24 = sub_1DF5642E4();
      result = [v24 domain];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v25 = result;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v30[0] = v23;
      sub_1DF502218(v25, 0x6D6F44726F727265, 0xEB000000006E6961, v26);
      v27 = v30[0];
      [v24 code];
      v28 = sub_1DF564BD4();
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v30[0] = v27;
      sub_1DF502218(v28, 0x646F43726F727265, 0xE900000000000065, v29);
      sub_1DF54507C(v1);

      v6 = v30[0];
      if ((*(v1 + 40) & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }
  }

  v18 = *(v1 + 8);
  v19 = sub_1DF564B74();
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30[0] = v6;
  sub_1DF502218(v19, 0xD00000000000002BLL, 0x80000001DF575640, v20);
  if (*(v1 + 24))
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((*(v1 + 40) & 1) == 0)
  {
LABEL_7:
    v9 = *(v1 + 32);
    v10 = sub_1DF565214();
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v30[0] = v6;
    sub_1DF502218(v10, 0xD000000000000017, 0x80000001DF574C80, v11);
    v6 = v30[0];
  }

LABEL_8:
  if ((*(v1 + 64) & 1) == 0)
  {
    v12 = *(v1 + 56);
    v13 = sub_1DF564B74();
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v30[0] = v6;
    sub_1DF502218(v13, 0xD000000000000023, 0x80000001DF575610, v14);
    return v30[0];
  }

  return v6;
}

id sub_1DF55F85C()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 32);
  v2 = *v0;
  v3 = v0[1];
  return sub_1DF55F41C();
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DF55F8C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 66))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DF55F920(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_1DF55F9AC()
{
  result = qword_1ECE387E8;
  if (!qword_1ECE387E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE387E8);
  }

  return result;
}

unint64_t sub_1DF55FA00(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_1DF55FA10(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 > 2)
  {
    if (a1 == 5)
    {
      v1 = 0xD000000000000017;
    }

    if (a1 == 4)
    {
      v1 = 0xD00000000000001BLL;
    }

    if (a1 == 3)
    {
      return 0xD000000000000018;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v1 = 0xD000000000000016;
    }

    if (a1 == 1)
    {
      v1 = 0xD000000000000017;
    }

    if (a1)
    {
      return v1;
    }

    else
    {
      return 0xD00000000000001BLL;
    }
  }
}

unint64_t sub_1DF55FB08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56CE10;
  strcpy((inited + 32), "activityState");
  *(inited + 46) = -4864;
  v2 = *v0;
  *(inited + 48) = sub_1DF564BD4();
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x80000001DF575690;
  sub_1DF55FA10(v2);
  v3 = sub_1DF564914();

  *(inited + 72) = v3;
  *(inited + 80) = 0x64656C646E6168;
  *(inited + 88) = 0xE700000000000000;
  v4 = *(v0 + 8);
  *(inited + 96) = sub_1DF564AF4();
  *(inited + 104) = 0xD000000000000026;
  *(inited + 112) = 0x80000001DF5756B0;
  v5 = *(v0 + 16);
  *(inited + 120) = sub_1DF564B74();
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x80000001DF5755F0;
  v6 = *(v0 + 33);
  *(inited + 144) = sub_1DF564AF4();
  v7 = sub_1DF480040(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC8, &unk_1DF5692B0);
  swift_arrayDestroy();
  if ((*(v0 + 32) & 1) == 0)
  {
    v8 = *(v0 + 24);
    v9 = sub_1DF564B74();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v9, 0xD000000000000023, 0x80000001DF575610, isUniquelyReferenced_nonNull_native);
  }

  return v7;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DF55FD04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1DF55FD58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1DF55FDB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56B0F0;
  *(inited + 32) = 0x6C61767265746E69;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_1DF565214();
  strcpy((inited + 56), "criteriaDelay");
  *(inited + 70) = -4864;
  *(inited + 72) = sub_1DF565214();
  strcpy((inited + 80), "criteriaGrace");
  *(inited + 94) = -4864;
  *(inited + 96) = sub_1DF565214();
  v1 = sub_1DF480040(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC8, &unk_1DF5692B0);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_1DF55FEF0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_1DF55FDB0();
}

uint64_t getEnumTagSinglePayload for DaemonControllerScheduleRebuildEvent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DaemonControllerScheduleRebuildEvent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

id sub_1DF55FF58(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF566E40;
  *(inited + 32) = 0x73736563637573;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_1DF564AF4();
  *(inited + 56) = 0x6C62617061437369;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = sub_1DF564AF4();
  v4 = sub_1DF480040(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC8, &unk_1DF5692B0);
  swift_arrayDestroy();
  if (!a2)
  {
    return v4;
  }

  swift_getErrorValue();
  v5 = a2;
  sub_1DF5651B4();
  v6 = sub_1DF564914();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF502218(v6, 0xD000000000000010, 0x80000001DF5757A0, isUniquelyReferenced_nonNull_native);
  swift_getErrorValue();
  v8 = sub_1DF49A0C0(v16);
  result = [v8 domain];
  if (result)
  {
    v10 = result;

    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v10, 0x6D6F44726F727265, 0xEB000000006E6961, v11);
    swift_getErrorValue();
    v12 = sub_1DF49A0C0(v15);
    [v12 code];

    v13 = sub_1DF564BD4();
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v13, 0x646F43726F727265, 0xE900000000000065, v14);

    return v4;
  }

  __break(1u);
  return result;
}

id sub_1DF5601F4()
{
  if (*(v0 + 1))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_1DF55FF58(v1 | *v0, v0[1]);
}

uint64_t sub_1DF560214(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DF560270(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1DF5602EC()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF567CF0;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x80000001DF572220;
  *(inited + 48) = sub_1DF564BD4();
  v3 = sub_1DF480040(inited);
  swift_setDeallocating();
  sub_1DF483E24(inited + 32);
  return v3;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1DF5603F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1DF560440(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1DF5604A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56FA80;
  strcpy((inited + 32), "requestReason");
  *(inited + 46) = -4864;
  v3 = *v0;
  v4 = v0[1];
  *(inited + 48) = sub_1DF564BD4();
  *(inited + 56) = 0xD000000000000018;
  *(inited + 64) = 0x80000001DF575410;
  v5 = v0[2];
  v6 = v0[3];
  *(inited + 72) = sub_1DF564914();
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x80000001DF575430;
  v7 = v0[4];
  v8 = v0[5];
  *(inited + 96) = sub_1DF564914();
  *(inited + 104) = 0xD000000000000026;
  *(inited + 112) = 0x80000001DF5756B0;
  v9 = v0[8];
  *(inited + 120) = sub_1DF564B74();
  v10 = sub_1DF480040(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC8, &unk_1DF5692B0);
  swift_arrayDestroy();
  v11 = v1[9];
  if (v11)
  {
    v12 = v11;
    [v12 code];
    v13 = sub_1DF564BD4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v13, 0x646F43726F727265, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
    result = [v12 domain];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v16 = result;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v16, 0x6D6F44726F727265, 0xEB000000006E6961, v17);
  }

  if (v4 >= 3)
  {
    v18 = sub_1DF564914();
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v18, 0xD000000000000012, 0x80000001DF5757C0, v19);
  }

  if ((v1[7] & 1) == 0)
  {
    v20 = v1[6];
    v21 = sub_1DF564BD4();
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v21, 0x65736E6F70736572, 0xEC00000065646F43, v22);
  }

  return v10;
}

unint64_t sub_1DF560774(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF567CF0;
  strcpy((inited + 32), "requestReason");
  *(inited + 46) = -4864;
  *(inited + 48) = sub_1DF564BD4();
  v4 = sub_1DF480040(inited);
  swift_setDeallocating();
  sub_1DF483E24(inited + 32);
  if (a2 >= 3)
  {
    v5 = sub_1DF564914();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v5, 0xD000000000000012, 0x80000001DF5757C0, isUniquelyReferenced_nonNull_native);
  }

  return v4;
}

uint64_t sub_1DF5608AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 3;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DF56090C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *result = a2 - 2147483645;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1DF560974()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56FA80;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x80000001DF575820;
  *(inited + 48) = sub_1DF564AF4();
  *(inited + 56) = 0x756F636341736168;
  *(inited + 64) = 0xEA0000000000746ELL;
  *(inited + 72) = sub_1DF564AF4();
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x80000001DF575840;
  *(inited + 96) = sub_1DF564AF4();
  *(inited + 104) = 0xD000000000000018;
  *(inited + 112) = 0x80000001DF575860;
  *(inited + 120) = sub_1DF564AF4();
  v1 = sub_1DF480040(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC8, &unk_1DF5692B0);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_1DF560AE4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v0[3];
  return sub_1DF560974();
}

uint64_t getEnumTagSinglePayload for GatewayRequestSigningEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for GatewayRequestSigningEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t *sub_1DF560BD8@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DF560BF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56FC40;
  *(inited + 32) = 0x73736563637573;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_1DF564AF4();
  *(inited + 56) = 0x5365727574616566;
  *(inited + 64) = 0xEA00000000007465;
  *(inited + 72) = sub_1DF564BD4();
  *(inited + 80) = 0x6156726576726573;
  *(inited + 88) = 0xEF796C6E4F65756CLL;
  *(inited + 96) = sub_1DF564AF4();
  *(inited + 104) = 0x7373617079427369;
  *(inited + 112) = 0xEF64656C62616E45;
  *(inited + 120) = sub_1DF564AF4();
  *(inited + 128) = 0x7365636341736168;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = sub_1DF564AF4();
  *(inited + 152) = 0xD000000000000012;
  *(inited + 160) = 0x80000001DF575880;
  *(inited + 168) = sub_1DF564AF4();
  v1 = sub_1DF480040(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC8, &unk_1DF5692B0);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_1DF560DC8()
{
  v1 = v0[3];
  v2 = v0[4];
  v0[5];
  v3 = 0x10000;
  if (!v0[2])
  {
    v3 = 0;
  }

  v4 = v3 | *v0 | (v0[1] << 8);
  return sub_1DF560BF0();
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for GetAccessStatusEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[6])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for GetAccessStatusEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1DF560EF8()
{
  result = qword_1ECE387F0;
  if (!qword_1ECE387F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE387F0);
  }

  return result;
}

unint64_t sub_1DF560F4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56FD70;
  strcpy((inited + 32), "deviceEligible");
  *(inited + 47) = -18;
  *(inited + 48) = sub_1DF564AF4();
  strcpy((inited + 56), "receivedValue");
  *(inited + 70) = -4864;
  *(inited + 72) = sub_1DF564AF4();
  *(inited + 80) = 0x7365636341736168;
  *(inited + 88) = 0xE900000000000073;
  *(inited + 96) = sub_1DF564AF4();
  *(inited + 104) = 0xD000000000000012;
  *(inited + 112) = 0x80000001DF575880;
  *(inited + 120) = sub_1DF564AF4();
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x80000001DF5758A0;
  *(inited + 144) = sub_1DF564AF4();
  *(inited + 152) = 0xD000000000000010;
  *(inited + 160) = 0x80000001DF5758C0;
  *(inited + 168) = sub_1DF564AF4();
  *(inited + 176) = 0xD000000000000011;
  *(inited + 184) = 0x80000001DF5758E0;
  *(inited + 192) = sub_1DF564AF4();
  *(inited + 200) = 0x656372756F73;
  *(inited + 208) = 0xE600000000000000;
  *(inited + 216) = sub_1DF564BD4();
  v1 = sub_1DF480040(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC8, &unk_1DF5692B0);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_1DF561178()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  v4 = *(v0 + 16);
  v5 = 256;
  if ((*(v0 + 1) & 1) == 0)
  {
    v5 = 0;
  }

  v6 = v5 & 0xFFFFFFFFFFFFFFFELL | *v0 & 1;
  *(v0 + 2);
  *(v0 + 3);
  return sub_1DF560F4C();
}

uint64_t sub_1DF5611FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 3;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DF56125C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
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

uint64_t sub_1DF5612EC(uint64_t a1, int a2)
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

uint64_t sub_1DF561334(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DF5613F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF561440(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1DF5614A0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

id sub_1DF5614C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56FA80;
  *(inited + 32) = 0x5474736575716572;
  *(inited + 40) = 0xEB00000000657079;
  v2 = *v0;
  *(inited + 48) = sub_1DF564BD4();
  *(inited + 56) = 0x73736563637573;
  *(inited + 64) = 0xE700000000000000;
  v3 = v0[1];
  *(inited + 72) = sub_1DF564AF4();
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x80000001DF5757C0;
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  *(inited + 96) = sub_1DF564914();
  *(inited + 104) = 0xD000000000000012;
  *(inited + 112) = 0x80000001DF575880;
  v6 = v0[56];
  *(inited + 120) = sub_1DF564AF4();
  v7 = sub_1DF480040(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC8, &unk_1DF5692B0);
  swift_arrayDestroy();
  v8 = *(v0 + 3);
  if (v8)
  {
    v9 = v8;
    sub_1DF5518E4();
    v10 = sub_1DF564BD4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v10, 0x64656E7275746572, 0xEE00737574617453, isUniquelyReferenced_nonNull_native);
  }

  if ((v0[40] & 1) == 0)
  {
    v12 = *(v0 + 4);
    v13 = sub_1DF564BD4();
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v13, 0xD000000000000012, 0x80000001DF575920, v14);
  }

  if (v0[41] != 4)
  {
    v15 = sub_1DF564BD4();
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v15, 0x656372756F73, 0xE600000000000000, v16);
  }

  v17 = *(v0 + 6);
  if (!v17)
  {
    return v7;
  }

  swift_getErrorValue();
  v18 = v17;
  v19 = sub_1DF49A0C0(v27);
  result = [v19 domain];
  if (result)
  {
    v21 = result;

    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v21, 0x6D6F44726F727265, 0xEB000000006E6961, v22);
    swift_getErrorValue();
    v23 = sub_1DF49A0C0(v26);
    [v23 code];

    v24 = sub_1DF564BD4();
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v24, 0x646F43726F727265, 0xE900000000000065, v25);

    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1DF561840()
{
  result = qword_1ECE387F8;
  if (!qword_1ECE387F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE387F8);
  }

  return result;
}

BOOL sub_1DF561928(int a1, uint64_t a2, unint64_t a3, char *a4)
{
  v49 = a2;
  v50 = a3;
  LODWORD(v5) = a1;
  v6 = sub_1DF564704();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v52 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v44 - v14;
  v51 = a4;
  sub_1DF564724();
  sub_1DF5646E4();
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v16 = sub_1DF5647B4();
  v17 = __swift_project_value_buffer(v16, qword_1ED956020);
  v47 = v7[2];
  v47(v13, v15, v6);
  v48 = v17;
  v18 = sub_1DF564794();
  v19 = sub_1DF564C04();
  v20 = os_log_type_enabled(v18, v19);
  v53 = v7;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v45 = v6;
    v22 = v21;
    v23 = swift_slowAlloc();
    v46 = v5;
    v5 = v23;
    v55 = v23;
    *v22 = 134349314;
    v24 = sub_1DF5646F4();
    v54 = v7[1];
    v54(v13, v45);
    *(v22 + 4) = v24;
    *(v22 + 12) = 2082;
    sub_1DF48818C(v46);
    v25 = sub_1DF564E04();
    v27 = sub_1DF47EF6C(v25, v26, &v55);

    *(v22 + 14) = v27;
    _os_log_impl(&dword_1DF47C000, v18, v19, "%{public}llu [Start] [Sync] %{public}s", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v5);
    v28 = v5;
    LOBYTE(v5) = v46;
    MEMORY[0x1E12D75F0](v28, -1, -1);
    v29 = v22;
    v6 = v45;
    MEMORY[0x1E12D75F0](v29, -1, -1);
  }

  else
  {
    v54 = v7[1];
    v54(v13, v6);
  }

  v30 = sub_1DF487DC4(v5, v15, v49, v50);
  LODWORD(v50) = MKBDeviceUnlockedSinceBoot();
  v49 = v30;
  sub_1DF48AD44(v5, v30, 0, 0);
  v31 = v52;
  v47(v52, v15, v6);
  v32 = sub_1DF564794();
  v33 = sub_1DF564C04();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v31;
    v35 = swift_slowAlloc();
    v36 = v5;
    v37 = swift_slowAlloc();
    v55 = v37;
    *v35 = 134349314;
    v38 = sub_1DF5646F4();
    v51 = v15;
    v54(v34, v6);
    *(v35 + 4) = v38;
    *(v35 + 12) = 2082;
    sub_1DF48818C(v36);
    v39 = sub_1DF564E04();
    v41 = sub_1DF47EF6C(v39, v40, &v55);

    *(v35 + 14) = v41;
    _os_log_impl(&dword_1DF47C000, v32, v33, "%{public}llu [Finish] [Sync] SUCCESS %{public}s", v35, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x1E12D75F0](v37, -1, -1);
    MEMORY[0x1E12D75F0](v35, -1, -1);

    v54(v51, v6);
  }

  else
  {
    v42 = v54;
    v54(v31, v6);

    v42(v15, v6);
  }

  return v50 == 0;
}

uint64_t sub_1DF561DC0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14[5] = a12;
  v14[6] = a14;
  v14[3] = a6;
  v14[4] = a8;
  v14[2] = a5;
  v18 = swift_task_alloc();
  v14[7] = v18;
  *v18 = v14;
  v18[1] = sub_1DF561EE8;

  return sub_1DF562C9C(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1DF561EE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v4 + 32);

  v13 = *(v10 + 8);
  if (!v1)
  {
    v12 = a1;
  }

  return v13(v12);
}

uint64_t sub_1DF562090(int a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v57 = a6;
  v58 = a7;
  v55 = a3;
  v56 = a5;
  v54 = a2;
  LODWORD(v8) = a1;
  v9 = sub_1DF564704();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v60 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v49 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v49 - v17;
  v59 = a4;
  sub_1DF564724();
  sub_1DF5646E4();
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v19 = sub_1DF5647B4();
  v20 = __swift_project_value_buffer(v19, qword_1ED956020);
  v52 = v10[2];
  v52(v16, v18, v9);
  v53 = v20;
  v21 = sub_1DF564794();
  v22 = sub_1DF564C04();
  v23 = os_log_type_enabled(v21, v22);
  v61 = v10;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v51 = v8;
    v8 = v24;
    v25 = swift_slowAlloc();
    v50 = v9;
    v26 = v25;
    v62 = v25;
    *v8 = 134349314;
    v27 = sub_1DF5646F4();
    v64 = v10[1];
    v64(v16, v50);
    *(v8 + 4) = v27;
    *(v8 + 12) = 2082;
    sub_1DF48818C(v51);
    v28 = sub_1DF564E04();
    v30 = sub_1DF47EF6C(v28, v29, &v62);

    *(v8 + 14) = v30;
    _os_log_impl(&dword_1DF47C000, v21, v22, "%{public}llu [Start] [Sync] %{public}s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v31 = v26;
    v9 = v50;
    MEMORY[0x1E12D75F0](v31, -1, -1);
    v32 = v8;
    LOBYTE(v8) = v51;
    MEMORY[0x1E12D75F0](v32, -1, -1);
  }

  else
  {
    v64 = v10[1];
    v64(v16, v9);
  }

  v33 = sub_1DF487DC4(v8, v18, v54, v55);
  __swift_project_boxed_opaque_existential_0((v56 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_deviceCapabilities), *(v56 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_deviceCapabilities + 24));
  v35 = v57;
  v34 = v58;
  LODWORD(v56) = sub_1DF4AABD8(v57, v58);
  v62 = 4023401;
  v63 = 0xE300000000000000;
  MEMORY[0x1E12D62C0](v35, v34);
  v58 = v33;
  sub_1DF48AD44(v8, v33, v62, v63);

  v36 = v60;
  v52(v60, v18, v9);
  v37 = sub_1DF564794();
  v38 = sub_1DF564C04();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = v36;
    v40 = swift_slowAlloc();
    v41 = v8;
    v42 = swift_slowAlloc();
    v62 = v42;
    *v40 = 134349314;
    v43 = sub_1DF5646F4();
    v59 = v18;
    v64(v39, v9);
    *(v40 + 4) = v43;
    *(v40 + 12) = 2082;
    sub_1DF48818C(v41);
    v44 = sub_1DF564E04();
    v46 = sub_1DF47EF6C(v44, v45, &v62);

    *(v40 + 14) = v46;
    _os_log_impl(&dword_1DF47C000, v37, v38, "%{public}llu [Finish] [Sync] SUCCESS %{public}s", v40, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x1E12D75F0](v42, -1, -1);
    MEMORY[0x1E12D75F0](v40, -1, -1);

    v64(v59, v9);
  }

  else
  {
    v47 = v64;
    v64(v36, v9);

    v47(v18, v9);
  }

  return v56 & 1;
}

uint64_t sub_1DF562588(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 72) = a5;
  *(v6 + 80) = a6;
  *(v6 + 56) = a3;
  *(v6 + 64) = a4;
  *(v6 + 48) = a2;
  *(v6 + 192) = a1;
  v7 = sub_1DF564704();
  *(v6 + 88) = v7;
  v8 = *(v7 - 8);
  *(v6 + 96) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF56266C, 0, 0);
}

uint64_t sub_1DF56266C()
{
  v31 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 64);
  sub_1DF564724();
  sub_1DF5646E4();
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = sub_1DF5647B4();
  *(v0 + 128) = __swift_project_value_buffer(v7, qword_1ED956020);
  v8 = *(v6 + 16);
  *(v0 + 136) = v8;
  *(v0 + 144) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v4, v5);
  v9 = sub_1DF564794();
  v10 = sub_1DF564C04();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 112);
  v13 = *(v0 + 88);
  v14 = *(v0 + 96);
  if (v11)
  {
    v28 = *(v0 + 192);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 134349314;
    v17 = sub_1DF5646F4();
    v18 = *(v14 + 8);
    v18(v12, v13);
    *(v15 + 4) = v17;
    *(v15 + 12) = 2082;
    sub_1DF48818C(v28);
    v19 = sub_1DF564E04();
    v21 = sub_1DF47EF6C(v19, v20, &v30);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_1DF47C000, v9, v10, "%{public}llu [Start] [Async] %{public}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1E12D75F0](v16, -1, -1);
    MEMORY[0x1E12D75F0](v15, -1, -1);
  }

  else
  {
    v18 = *(v14 + 8);
    v18(*(v0 + 112), *(v0 + 88));
  }

  *(v0 + 152) = v18;
  v23 = *(v0 + 64);
  v22 = *(v0 + 72);
  *(v0 + 160) = sub_1DF487DC4(*(v0 + 192), *(v0 + 120), *(v0 + 48), *(v0 + 56));
  v29 = (v22 + *v22);
  v24 = v22[1];
  v25 = swift_task_alloc();
  *(v0 + 168) = v25;
  *v25 = v0;
  v25[1] = sub_1DF562944;
  v26 = *(v0 + 80);

  return v29();
}

uint64_t sub_1DF562944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v6 = v4[21];
  v8 = *v3;
  v5[22] = a2;
  v5[23] = a3;

  return MEMORY[0x1EEE6DFA0](sub_1DF562A4C, 0, 0);
}

uint64_t sub_1DF562A4C()
{
  v32 = v0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);
  sub_1DF48AD44(*(v0 + 192), *(v0 + 160), *(v0 + 176), *(v0 + 184));

  v2(v5, v4, v6);
  v8 = sub_1DF564794();
  v9 = sub_1DF564C04();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 120);
  v15 = *(v0 + 96);
  v14 = *(v0 + 104);
  v16 = *(v0 + 88);
  if (v10)
  {
    v29 = *(v0 + 192);
    v30 = *(v0 + 120);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 134349314;
    v19 = sub_1DF5646F4();
    v11(v14, v16);
    *(v17 + 4) = v19;
    *(v17 + 12) = 2082;
    sub_1DF48818C(v29);
    v20 = sub_1DF564E04();
    v22 = sub_1DF47EF6C(v20, v21, &v31);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_1DF47C000, v8, v9, "%{public}llu [Finish] [Async] SUCCESS %{public}s", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x1E12D75F0](v18, -1, -1);
    MEMORY[0x1E12D75F0](v17, -1, -1);

    v11(v30, v16);
  }

  else
  {
    v11(*(v0 + 104), *(v0 + 88));

    v11(v13, v16);
  }

  v23 = *(v0 + 24);
  v25 = *(v0 + 112);
  v24 = *(v0 + 120);
  v26 = *(v0 + 104);

  v27 = *(v0 + 8);

  return v27(v23);
}

uint64_t sub_1DF562C9C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v17;
  *(v8 + 96) = v15;
  *(v8 + 112) = v16;
  *(v8 + 80) = v14;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 24) = a2;
  *(v8 + 256) = a1;
  v9 = sub_1DF564704();
  *(v8 + 136) = v9;
  v10 = *(v9 - 8);
  *(v8 + 144) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF562DAC, 0, 0);
}

uint64_t sub_1DF562DAC()
{
  v36 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 40);
  sub_1DF564724();
  sub_1DF5646E4();
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  v7 = sub_1DF5647B4();
  *(v0 + 184) = __swift_project_value_buffer(v7, qword_1ED956020);
  v8 = *(v6 + 16);
  *(v0 + 192) = v8;
  *(v0 + 200) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v4, v5);
  v9 = sub_1DF564794();
  v10 = sub_1DF564C04();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 168);
  v13 = *(v0 + 136);
  v14 = *(v0 + 144);
  if (v11)
  {
    v34 = *(v0 + 256);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v35 = v16;
    *v15 = 134349314;
    v17 = sub_1DF5646F4();
    v18 = *(v14 + 8);
    v18(v12, v13);
    *(v15 + 4) = v17;
    *(v15 + 12) = 2082;
    sub_1DF48818C(v34);
    v19 = sub_1DF564E04();
    v21 = sub_1DF47EF6C(v19, v20, &v35);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_1DF47C000, v9, v10, "%{public}llu [Start] [Async] %{public}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1E12D75F0](v16, -1, -1);
    MEMORY[0x1E12D75F0](v15, -1, -1);
  }

  else
  {
    v18 = *(v14 + 8);
    v18(*(v0 + 168), *(v0 + 136));
  }

  *(v0 + 208) = v18;
  v22 = *(v0 + 40);
  *(v0 + 216) = sub_1DF487DC4(*(v0 + 256), *(v0 + 176), *(v0 + 24), *(v0 + 32));
  v23 = swift_task_alloc();
  *(v0 + 224) = v23;
  *v23 = v0;
  v23[1] = sub_1DF563054;
  v24 = *(v0 + 128);
  v25 = *(v0 + 104);
  v26 = *(v0 + 88);
  v27 = *(v0 + 96);
  v28 = *(v0 + 72);
  v29 = *(v0 + 80);
  v30 = *(v0 + 56);
  v31 = *(v0 + 64);
  v32 = *(v0 + 48);
  v39 = *(v0 + 120);
  v40 = v24;
  v38 = v25;

  return sub_1DF4CA1E8(v0 + 16, v32, v30, v31, v28, v29, v26, v27);
}

uint64_t sub_1DF563054(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 224);
  v8 = *v3;
  *(*v3 + 232) = v2;

  if (v2)
  {
    v9 = sub_1DF5633E8;
  }

  else
  {
    *(v6 + 240) = a2;
    *(v6 + 248) = a1;
    v9 = sub_1DF563188;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DF563188()
{
  v35 = v0;
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 136);
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);
  sub_1DF48AD44(*(v0 + 256), *(v0 + 216), *(v0 + 248), *(v0 + 240));

  v2(v5, v4, v6);
  v9 = sub_1DF564794();
  v10 = sub_1DF564C04();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 208);
  v13 = *(v0 + 176);
  v14 = *(v0 + 160);
  v16 = *(v0 + 136);
  v15 = *(v0 + 144);
  if (v11)
  {
    v30 = *(v0 + 256);
    v32 = *(v0 + 216);
    v17 = swift_slowAlloc();
    v33 = v8;
    v34 = swift_slowAlloc();
    v18 = v34;
    *v17 = 134349314;
    v31 = v13;
    v19 = sub_1DF5646F4();
    v12(v14, v16);
    *(v17 + 4) = v19;
    *(v17 + 12) = 2082;
    sub_1DF48818C(v30);
    v20 = sub_1DF564E04();
    v22 = sub_1DF47EF6C(v20, v21, &v34);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_1DF47C000, v9, v10, "%{public}llu [Finish] [Async] SUCCESS %{public}s", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v23 = v18;
    v8 = v33;
    MEMORY[0x1E12D75F0](v23, -1, -1);
    MEMORY[0x1E12D75F0](v17, -1, -1);

    v12(v31, v16);
  }

  else
  {
    v12(*(v0 + 160), *(v0 + 136));

    v12(v13, v16);
  }

  v25 = *(v0 + 168);
  v24 = *(v0 + 176);
  v27 = *(v0 + 152);
  v26 = *(v0 + 160);

  v28 = *(v0 + 8);

  return v28(v8);
}

uint64_t sub_1DF5633E8()
{
  v34 = v0;
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);
  v7 = *(v0 + 40);
  sub_1DF48AD44(*(v0 + 256), *(v0 + 216), 0, 0);
  v2(v5, v4, v6);
  v8 = sub_1DF564794();
  v9 = sub_1DF564C04();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 208);
  v13 = *(v0 + 144);
  v12 = *(v0 + 152);
  v14 = *(v0 + 136);
  if (v10)
  {
    v32 = *(v0 + 256);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 134349314;
    v17 = sub_1DF5646F4();
    v11(v12, v14);
    *(v15 + 4) = v17;
    *(v15 + 12) = 2082;
    sub_1DF48818C(v32);
    v18 = sub_1DF564E04();
    v20 = sub_1DF47EF6C(v18, v19, &v33);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_1DF47C000, v8, v9, "%{public}llu [Finish] [Async] FAILURE %{public}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1E12D75F0](v16, -1, -1);
    MEMORY[0x1E12D75F0](v15, -1, -1);
  }

  else
  {
    v11(*(v0 + 152), *(v0 + 136));
  }

  v21 = *(v0 + 232);
  v23 = *(v0 + 208);
  v22 = *(v0 + 216);
  v25 = *(v0 + 168);
  v24 = *(v0 + 176);
  v27 = *(v0 + 152);
  v26 = *(v0 + 160);
  v28 = *(v0 + 136);
  swift_willThrow();

  v23(v24, v28);

  v29 = *(v0 + 8);
  v30 = *(v0 + 232);

  return v29();
}

uint64_t sub_1DF563648(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1DF563690(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1DF5636DC(uint64_t a1, uint64_t (*a2)(void, void, void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35[3] = a4;
  v35[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v10 = sub_1DF5647B4();
  __swift_project_value_buffer(v10, qword_1ED956020);
  sub_1DF47FCEC(v35, &v33);
  sub_1DF47FCEC(v35, v32);
  v11 = sub_1DF564794();
  v12 = sub_1DF564C14();
  if (os_log_type_enabled(v11, v12))
  {
    v30 = a2;
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v13 = 136315394;
    __swift_project_boxed_opaque_existential_0(&v33, v34);
    v14 = *(a5 + 8);
    v15 = v14(a4, a5);
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_0(&v33);
    v18 = sub_1DF47EF6C(v15, v17, &v31);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    __swift_project_boxed_opaque_existential_0(v32, v32[3]);
    if ((*(a5 + 16))(a4, a5))
    {
      sub_1DF480144();
      v19 = sub_1DF564894();
      v21 = v20;
    }

    else
    {
      v21 = 0xE500000000000000;
      v19 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_0(v32);
    v24 = sub_1DF47EF6C(v19, v21, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1DF47C000, v11, v12, "Sending message %s with body %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v29, -1, -1);
    MEMORY[0x1E12D75F0](v13, -1, -1);

    a2 = v30;
    v22 = v14(a4, a5);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v33);
    __swift_destroy_boxed_opaque_existential_0(v32);
    v22 = (*(a5 + 8))(a4, a5);
  }

  v25 = v22;
  v26 = v23;
  sub_1DF47FCEC(v35, &v33);
  v27 = swift_allocObject();
  sub_1DF47E390(&v33, v27 + 16);
  LOBYTE(v25) = a2(v25, v26, sub_1DF4803C8, v27);

  __swift_destroy_boxed_opaque_existential_0(v35);
  return v25 & 1;
}