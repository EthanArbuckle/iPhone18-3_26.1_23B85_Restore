uint64_t sub_1E5FDC6A4()
{
  v103 = v0;
  v1 = v0[1265];
  v2 = v0[1121];
  v3 = v0[1115];
  v4 = v0[1109];
  v5 = v0[1085];
  v6 = v0[1067];
  v7 = v0[1049];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6338();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[1085];
    v12 = v0[1073];
    v101 = v1;
    v13 = v0[1067];
    v94 = v0[1043];
    v96 = v0[1037];
    v98 = v0[1049];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v102[0] = v15;
    *v14 = 136315394;
    sub_1E5FEDF78(&qword_1EE2D7198, MEMORY[0x1E69695A8]);
    v16 = sub_1E65E6BC8();
    v18 = v17;
    v19 = v13;
    v1 = v101;
    v100 = *(v12 + 8);
    v100(v11, v19);
    v20 = sub_1E5DFD4B0(v16, v18, v102);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[657];
    v22 = v0[658];
    v23 = v0[659];
    v24 = sub_1E65E6C78();
    v26 = sub_1E5DFD4B0(v24, v25, v102);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "forYouRequest end — correlationKey=%s error=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);

    (*(v94 + 8))(v98, v96);
  }

  else
  {
    v27 = v0[1085];
    v28 = v0[1073];
    v29 = v0[1067];
    v30 = v0[1049];
    v31 = v0[1043];
    v32 = v0[1037];

    v100 = *(v28 + 8);
    v100(v27, v29);
    (*(v31 + 8))(v30, v32);
  }

  swift_getErrorValue();
  v33 = v0[681];
  v34 = v0[682];
  v35 = v0[683];
  v36 = sub_1E65D9288();
  v0[650] = v36;
  v0[651] = sub_1E5FEDF78(&qword_1EE2D70A0, MEMORY[0x1E69CBF78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 647);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v36);
  LOBYTE(v33) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 647);
  if (v33)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v38 = v0[673];
  v39 = v0[674];
  v40 = v0[675];
  v41 = sub_1E65E6C98();
  v43 = v42;
  v44 = *MEMORY[0x1E698C548];
  if (v41 == sub_1E65E5C78() && v43 == v45)
  {
  }

  else
  {
    v46 = sub_1E65E6C18();

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  v47 = v0[665];
  v48 = v0[666];
  v49 = v0[667];
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v50 = sub_1E65DC678();
    sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140]);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E699E138], v50);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v52 = v0[1163];
  v53 = v0[1157];
  v54 = v0[1151];
  v55 = v0[1145];
  v56 = v0[1139];
  v57 = v0[1133];
  v58 = v0[1127];
  v59 = v0[1103];
  v63 = v0[1169];
  v64 = v0[1097];
  v65 = v0[1091];
  v66 = v0[1085];
  v67 = v0[1061];
  v68 = v0[1055];
  v69 = v0[1049];
  v70 = v0[1031];
  v71 = v0[1025];
  v72 = v0[1019];
  v73 = v0[1013];
  v74 = v0[1007];
  v75 = v0[1001];
  v76 = v0[983];
  v81 = v0[965];
  v83 = v0[959];
  v85 = v0[953];
  v87 = v0[947];
  v60 = v0[1073] + 8;
  v77 = v0[977];
  v78 = v0[941];
  v79 = v0[971];
  v80 = v0[917];
  v82 = v0[911];
  v84 = v0[893];
  v86 = v0[875];
  v88 = v0[869];
  v89 = v0[863];
  v90 = v0[857];
  v91 = v0[839];
  v92 = v0[833];
  v93 = v0[815];
  v95 = v0[797];
  v97 = v0[779];
  v99 = v0[773];
  v100(v0[1109], v0[1067]);

  v61 = v0[1];

  return v61();
}

uint64_t sub_1E5FDD064()
{
  v103 = v0;
  v1 = v0[1277];
  v2 = v0[1121];
  v3 = v0[1115];
  v4 = v0[1109];
  v5 = v0[1085];
  v6 = v0[1067];
  v7 = v0[1049];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6338();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[1085];
    v12 = v0[1073];
    v101 = v1;
    v13 = v0[1067];
    v94 = v0[1043];
    v96 = v0[1037];
    v98 = v0[1049];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v102[0] = v15;
    *v14 = 136315394;
    sub_1E5FEDF78(&qword_1EE2D7198, MEMORY[0x1E69695A8]);
    v16 = sub_1E65E6BC8();
    v18 = v17;
    v19 = v13;
    v1 = v101;
    v100 = *(v12 + 8);
    v100(v11, v19);
    v20 = sub_1E5DFD4B0(v16, v18, v102);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[657];
    v22 = v0[658];
    v23 = v0[659];
    v24 = sub_1E65E6C78();
    v26 = sub_1E5DFD4B0(v24, v25, v102);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "forYouRequest end — correlationKey=%s error=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);

    (*(v94 + 8))(v98, v96);
  }

  else
  {
    v27 = v0[1085];
    v28 = v0[1073];
    v29 = v0[1067];
    v30 = v0[1049];
    v31 = v0[1043];
    v32 = v0[1037];

    v100 = *(v28 + 8);
    v100(v27, v29);
    (*(v31 + 8))(v30, v32);
  }

  swift_getErrorValue();
  v33 = v0[681];
  v34 = v0[682];
  v35 = v0[683];
  v36 = sub_1E65D9288();
  v0[650] = v36;
  v0[651] = sub_1E5FEDF78(&qword_1EE2D70A0, MEMORY[0x1E69CBF78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 647);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v36);
  LOBYTE(v33) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 647);
  if (v33)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v38 = v0[673];
  v39 = v0[674];
  v40 = v0[675];
  v41 = sub_1E65E6C98();
  v43 = v42;
  v44 = *MEMORY[0x1E698C548];
  if (v41 == sub_1E65E5C78() && v43 == v45)
  {
  }

  else
  {
    v46 = sub_1E65E6C18();

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  v47 = v0[665];
  v48 = v0[666];
  v49 = v0[667];
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v50 = sub_1E65DC678();
    sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140]);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E699E138], v50);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v52 = v0[1163];
  v53 = v0[1157];
  v54 = v0[1151];
  v55 = v0[1145];
  v56 = v0[1139];
  v57 = v0[1133];
  v58 = v0[1127];
  v59 = v0[1103];
  v63 = v0[1169];
  v64 = v0[1097];
  v65 = v0[1091];
  v66 = v0[1085];
  v67 = v0[1061];
  v68 = v0[1055];
  v69 = v0[1049];
  v70 = v0[1031];
  v71 = v0[1025];
  v72 = v0[1019];
  v73 = v0[1013];
  v74 = v0[1007];
  v75 = v0[1001];
  v76 = v0[983];
  v81 = v0[965];
  v83 = v0[959];
  v85 = v0[953];
  v87 = v0[947];
  v60 = v0[1073] + 8;
  v77 = v0[977];
  v78 = v0[941];
  v79 = v0[971];
  v80 = v0[917];
  v82 = v0[911];
  v84 = v0[893];
  v86 = v0[875];
  v88 = v0[869];
  v89 = v0[863];
  v90 = v0[857];
  v91 = v0[839];
  v92 = v0[833];
  v93 = v0[815];
  v95 = v0[797];
  v97 = v0[779];
  v99 = v0[773];
  v100(v0[1109], v0[1067]);

  v61 = v0[1];

  return v61();
}

uint64_t sub_1E5FDDA24()
{
  v103 = v0;
  v1 = v0[1289];
  v2 = v0[1121];
  v3 = v0[1115];
  v4 = v0[1109];
  v5 = v0[1085];
  v6 = v0[1067];
  v7 = v0[1049];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6338();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[1085];
    v12 = v0[1073];
    v101 = v1;
    v13 = v0[1067];
    v94 = v0[1043];
    v96 = v0[1037];
    v98 = v0[1049];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v102[0] = v15;
    *v14 = 136315394;
    sub_1E5FEDF78(&qword_1EE2D7198, MEMORY[0x1E69695A8]);
    v16 = sub_1E65E6BC8();
    v18 = v17;
    v19 = v13;
    v1 = v101;
    v100 = *(v12 + 8);
    v100(v11, v19);
    v20 = sub_1E5DFD4B0(v16, v18, v102);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[657];
    v22 = v0[658];
    v23 = v0[659];
    v24 = sub_1E65E6C78();
    v26 = sub_1E5DFD4B0(v24, v25, v102);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "forYouRequest end — correlationKey=%s error=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);

    (*(v94 + 8))(v98, v96);
  }

  else
  {
    v27 = v0[1085];
    v28 = v0[1073];
    v29 = v0[1067];
    v30 = v0[1049];
    v31 = v0[1043];
    v32 = v0[1037];

    v100 = *(v28 + 8);
    v100(v27, v29);
    (*(v31 + 8))(v30, v32);
  }

  swift_getErrorValue();
  v33 = v0[681];
  v34 = v0[682];
  v35 = v0[683];
  v36 = sub_1E65D9288();
  v0[650] = v36;
  v0[651] = sub_1E5FEDF78(&qword_1EE2D70A0, MEMORY[0x1E69CBF78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 647);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v36);
  LOBYTE(v33) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 647);
  if (v33)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v38 = v0[673];
  v39 = v0[674];
  v40 = v0[675];
  v41 = sub_1E65E6C98();
  v43 = v42;
  v44 = *MEMORY[0x1E698C548];
  if (v41 == sub_1E65E5C78() && v43 == v45)
  {
  }

  else
  {
    v46 = sub_1E65E6C18();

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  v47 = v0[665];
  v48 = v0[666];
  v49 = v0[667];
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v50 = sub_1E65DC678();
    sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140]);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E699E138], v50);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v52 = v0[1163];
  v53 = v0[1157];
  v54 = v0[1151];
  v55 = v0[1145];
  v56 = v0[1139];
  v57 = v0[1133];
  v58 = v0[1127];
  v59 = v0[1103];
  v63 = v0[1169];
  v64 = v0[1097];
  v65 = v0[1091];
  v66 = v0[1085];
  v67 = v0[1061];
  v68 = v0[1055];
  v69 = v0[1049];
  v70 = v0[1031];
  v71 = v0[1025];
  v72 = v0[1019];
  v73 = v0[1013];
  v74 = v0[1007];
  v75 = v0[1001];
  v76 = v0[983];
  v81 = v0[965];
  v83 = v0[959];
  v85 = v0[953];
  v87 = v0[947];
  v60 = v0[1073] + 8;
  v77 = v0[977];
  v78 = v0[941];
  v79 = v0[971];
  v80 = v0[917];
  v82 = v0[911];
  v84 = v0[893];
  v86 = v0[875];
  v88 = v0[869];
  v89 = v0[863];
  v90 = v0[857];
  v91 = v0[839];
  v92 = v0[833];
  v93 = v0[815];
  v95 = v0[797];
  v97 = v0[779];
  v99 = v0[773];
  v100(v0[1109], v0[1067]);

  v61 = v0[1];

  return v61();
}

uint64_t sub_1E5FDE1C8()
{
  v1 = *(v0 + 10360);

  return MEMORY[0x1EEE6DEB0](v0 + 2576, v0 + 5800, sub_1E5FDE23C, v0 + 9840);
}

uint64_t sub_1E5FDE430()
{
  v103 = v0;
  v1 = v0[1301];
  v2 = v0[1121];
  v3 = v0[1115];
  v4 = v0[1109];
  v5 = v0[1085];
  v6 = v0[1067];
  v7 = v0[1049];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6338();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[1085];
    v12 = v0[1073];
    v101 = v1;
    v13 = v0[1067];
    v94 = v0[1043];
    v96 = v0[1037];
    v98 = v0[1049];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v102[0] = v15;
    *v14 = 136315394;
    sub_1E5FEDF78(&qword_1EE2D7198, MEMORY[0x1E69695A8]);
    v16 = sub_1E65E6BC8();
    v18 = v17;
    v19 = v13;
    v1 = v101;
    v100 = *(v12 + 8);
    v100(v11, v19);
    v20 = sub_1E5DFD4B0(v16, v18, v102);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[657];
    v22 = v0[658];
    v23 = v0[659];
    v24 = sub_1E65E6C78();
    v26 = sub_1E5DFD4B0(v24, v25, v102);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "forYouRequest end — correlationKey=%s error=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);

    (*(v94 + 8))(v98, v96);
  }

  else
  {
    v27 = v0[1085];
    v28 = v0[1073];
    v29 = v0[1067];
    v30 = v0[1049];
    v31 = v0[1043];
    v32 = v0[1037];

    v100 = *(v28 + 8);
    v100(v27, v29);
    (*(v31 + 8))(v30, v32);
  }

  swift_getErrorValue();
  v33 = v0[681];
  v34 = v0[682];
  v35 = v0[683];
  v36 = sub_1E65D9288();
  v0[650] = v36;
  v0[651] = sub_1E5FEDF78(&qword_1EE2D70A0, MEMORY[0x1E69CBF78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 647);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v36);
  LOBYTE(v33) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 647);
  if (v33)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v38 = v0[673];
  v39 = v0[674];
  v40 = v0[675];
  v41 = sub_1E65E6C98();
  v43 = v42;
  v44 = *MEMORY[0x1E698C548];
  if (v41 == sub_1E65E5C78() && v43 == v45)
  {
  }

  else
  {
    v46 = sub_1E65E6C18();

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  v47 = v0[665];
  v48 = v0[666];
  v49 = v0[667];
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v50 = sub_1E65DC678();
    sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140]);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E699E138], v50);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v52 = v0[1163];
  v53 = v0[1157];
  v54 = v0[1151];
  v55 = v0[1145];
  v56 = v0[1139];
  v57 = v0[1133];
  v58 = v0[1127];
  v59 = v0[1103];
  v63 = v0[1169];
  v64 = v0[1097];
  v65 = v0[1091];
  v66 = v0[1085];
  v67 = v0[1061];
  v68 = v0[1055];
  v69 = v0[1049];
  v70 = v0[1031];
  v71 = v0[1025];
  v72 = v0[1019];
  v73 = v0[1013];
  v74 = v0[1007];
  v75 = v0[1001];
  v76 = v0[983];
  v81 = v0[965];
  v83 = v0[959];
  v85 = v0[953];
  v87 = v0[947];
  v60 = v0[1073] + 8;
  v77 = v0[977];
  v78 = v0[941];
  v79 = v0[971];
  v80 = v0[917];
  v82 = v0[911];
  v84 = v0[893];
  v86 = v0[875];
  v88 = v0[869];
  v89 = v0[863];
  v90 = v0[857];
  v91 = v0[839];
  v92 = v0[833];
  v93 = v0[815];
  v95 = v0[797];
  v97 = v0[779];
  v99 = v0[773];
  v100(v0[1109], v0[1067]);

  v61 = v0[1];

  return v61();
}

uint64_t sub_1E5FDEDF0()
{
  v103 = v0;
  v1 = v0[1313];
  v2 = v0[1121];
  v3 = v0[1115];
  v4 = v0[1109];
  v5 = v0[1085];
  v6 = v0[1067];
  v7 = v0[1049];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6338();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[1085];
    v12 = v0[1073];
    v101 = v1;
    v13 = v0[1067];
    v94 = v0[1043];
    v96 = v0[1037];
    v98 = v0[1049];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v102[0] = v15;
    *v14 = 136315394;
    sub_1E5FEDF78(&qword_1EE2D7198, MEMORY[0x1E69695A8]);
    v16 = sub_1E65E6BC8();
    v18 = v17;
    v19 = v13;
    v1 = v101;
    v100 = *(v12 + 8);
    v100(v11, v19);
    v20 = sub_1E5DFD4B0(v16, v18, v102);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[657];
    v22 = v0[658];
    v23 = v0[659];
    v24 = sub_1E65E6C78();
    v26 = sub_1E5DFD4B0(v24, v25, v102);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "forYouRequest end — correlationKey=%s error=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);

    (*(v94 + 8))(v98, v96);
  }

  else
  {
    v27 = v0[1085];
    v28 = v0[1073];
    v29 = v0[1067];
    v30 = v0[1049];
    v31 = v0[1043];
    v32 = v0[1037];

    v100 = *(v28 + 8);
    v100(v27, v29);
    (*(v31 + 8))(v30, v32);
  }

  swift_getErrorValue();
  v33 = v0[681];
  v34 = v0[682];
  v35 = v0[683];
  v36 = sub_1E65D9288();
  v0[650] = v36;
  v0[651] = sub_1E5FEDF78(&qword_1EE2D70A0, MEMORY[0x1E69CBF78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 647);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v36);
  LOBYTE(v33) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 647);
  if (v33)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v38 = v0[673];
  v39 = v0[674];
  v40 = v0[675];
  v41 = sub_1E65E6C98();
  v43 = v42;
  v44 = *MEMORY[0x1E698C548];
  if (v41 == sub_1E65E5C78() && v43 == v45)
  {
  }

  else
  {
    v46 = sub_1E65E6C18();

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  v47 = v0[665];
  v48 = v0[666];
  v49 = v0[667];
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v50 = sub_1E65DC678();
    sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140]);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E699E138], v50);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v52 = v0[1163];
  v53 = v0[1157];
  v54 = v0[1151];
  v55 = v0[1145];
  v56 = v0[1139];
  v57 = v0[1133];
  v58 = v0[1127];
  v59 = v0[1103];
  v63 = v0[1169];
  v64 = v0[1097];
  v65 = v0[1091];
  v66 = v0[1085];
  v67 = v0[1061];
  v68 = v0[1055];
  v69 = v0[1049];
  v70 = v0[1031];
  v71 = v0[1025];
  v72 = v0[1019];
  v73 = v0[1013];
  v74 = v0[1007];
  v75 = v0[1001];
  v76 = v0[983];
  v81 = v0[965];
  v83 = v0[959];
  v85 = v0[953];
  v87 = v0[947];
  v60 = v0[1073] + 8;
  v77 = v0[977];
  v78 = v0[941];
  v79 = v0[971];
  v80 = v0[917];
  v82 = v0[911];
  v84 = v0[893];
  v86 = v0[875];
  v88 = v0[869];
  v89 = v0[863];
  v90 = v0[857];
  v91 = v0[839];
  v92 = v0[833];
  v93 = v0[815];
  v95 = v0[797];
  v97 = v0[779];
  v99 = v0[773];
  v100(v0[1109], v0[1067]);

  v61 = v0[1];

  return v61();
}

uint64_t sub_1E5FDF594()
{
  v1 = v0[1325];
  v2 = v0[1307];
  v3 = v0[1295];

  return MEMORY[0x1EEE6DEB0](v0 + 322, v0 + 725, sub_1E5FDF628, v0 + 1338);
}

uint64_t sub_1E5FDF81C()
{
  v103 = v0;
  v1 = v0[1331];
  v2 = v0[1121];
  v3 = v0[1115];
  v4 = v0[1109];
  v5 = v0[1085];
  v6 = v0[1067];
  v7 = v0[1049];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6338();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[1085];
    v12 = v0[1073];
    v101 = v1;
    v13 = v0[1067];
    v94 = v0[1043];
    v96 = v0[1037];
    v98 = v0[1049];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v102[0] = v15;
    *v14 = 136315394;
    sub_1E5FEDF78(&qword_1EE2D7198, MEMORY[0x1E69695A8]);
    v16 = sub_1E65E6BC8();
    v18 = v17;
    v19 = v13;
    v1 = v101;
    v100 = *(v12 + 8);
    v100(v11, v19);
    v20 = sub_1E5DFD4B0(v16, v18, v102);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[657];
    v22 = v0[658];
    v23 = v0[659];
    v24 = sub_1E65E6C78();
    v26 = sub_1E5DFD4B0(v24, v25, v102);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "forYouRequest end — correlationKey=%s error=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);

    (*(v94 + 8))(v98, v96);
  }

  else
  {
    v27 = v0[1085];
    v28 = v0[1073];
    v29 = v0[1067];
    v30 = v0[1049];
    v31 = v0[1043];
    v32 = v0[1037];

    v100 = *(v28 + 8);
    v100(v27, v29);
    (*(v31 + 8))(v30, v32);
  }

  swift_getErrorValue();
  v33 = v0[681];
  v34 = v0[682];
  v35 = v0[683];
  v36 = sub_1E65D9288();
  v0[650] = v36;
  v0[651] = sub_1E5FEDF78(&qword_1EE2D70A0, MEMORY[0x1E69CBF78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 647);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v36);
  LOBYTE(v33) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 647);
  if (v33)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v38 = v0[673];
  v39 = v0[674];
  v40 = v0[675];
  v41 = sub_1E65E6C98();
  v43 = v42;
  v44 = *MEMORY[0x1E698C548];
  if (v41 == sub_1E65E5C78() && v43 == v45)
  {
  }

  else
  {
    v46 = sub_1E65E6C18();

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  v47 = v0[665];
  v48 = v0[666];
  v49 = v0[667];
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v50 = sub_1E65DC678();
    sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140]);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E699E138], v50);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v52 = v0[1163];
  v53 = v0[1157];
  v54 = v0[1151];
  v55 = v0[1145];
  v56 = v0[1139];
  v57 = v0[1133];
  v58 = v0[1127];
  v59 = v0[1103];
  v63 = v0[1169];
  v64 = v0[1097];
  v65 = v0[1091];
  v66 = v0[1085];
  v67 = v0[1061];
  v68 = v0[1055];
  v69 = v0[1049];
  v70 = v0[1031];
  v71 = v0[1025];
  v72 = v0[1019];
  v73 = v0[1013];
  v74 = v0[1007];
  v75 = v0[1001];
  v76 = v0[983];
  v81 = v0[965];
  v83 = v0[959];
  v85 = v0[953];
  v87 = v0[947];
  v60 = v0[1073] + 8;
  v77 = v0[977];
  v78 = v0[941];
  v79 = v0[971];
  v80 = v0[917];
  v82 = v0[911];
  v84 = v0[893];
  v86 = v0[875];
  v88 = v0[869];
  v89 = v0[863];
  v90 = v0[857];
  v91 = v0[839];
  v92 = v0[833];
  v93 = v0[815];
  v95 = v0[797];
  v97 = v0[779];
  v99 = v0[773];
  v100(v0[1109], v0[1067]);

  v61 = v0[1];

  return v61();
}

uint64_t sub_1E5FDFFC0()
{
  v1 = v0[1325];
  v2 = v0[1307];
  v3 = v0[1295];

  return MEMORY[0x1EEE6DEB0](v0 + 322, v0 + 725, sub_1E5FE0054, v0 + 1392);
}

uint64_t sub_1E5FE0248()
{
  v103 = v0;
  v1 = v0[1343];
  v2 = v0[1121];
  v3 = v0[1115];
  v4 = v0[1109];
  v5 = v0[1085];
  v6 = v0[1067];
  v7 = v0[1049];
  sub_1E65DE318();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6338();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[1085];
    v12 = v0[1073];
    v101 = v1;
    v13 = v0[1067];
    v94 = v0[1043];
    v96 = v0[1037];
    v98 = v0[1049];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v102[0] = v15;
    *v14 = 136315394;
    sub_1E5FEDF78(&qword_1EE2D7198, MEMORY[0x1E69695A8]);
    v16 = sub_1E65E6BC8();
    v18 = v17;
    v19 = v13;
    v1 = v101;
    v100 = *(v12 + 8);
    v100(v11, v19);
    v20 = sub_1E5DFD4B0(v16, v18, v102);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[657];
    v22 = v0[658];
    v23 = v0[659];
    v24 = sub_1E65E6C78();
    v26 = sub_1E5DFD4B0(v24, v25, v102);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "forYouRequest end — correlationKey=%s error=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);

    (*(v94 + 8))(v98, v96);
  }

  else
  {
    v27 = v0[1085];
    v28 = v0[1073];
    v29 = v0[1067];
    v30 = v0[1049];
    v31 = v0[1043];
    v32 = v0[1037];

    v100 = *(v28 + 8);
    v100(v27, v29);
    (*(v31 + 8))(v30, v32);
  }

  swift_getErrorValue();
  v33 = v0[681];
  v34 = v0[682];
  v35 = v0[683];
  v36 = sub_1E65D9288();
  v0[650] = v36;
  v0[651] = sub_1E5FEDF78(&qword_1EE2D70A0, MEMORY[0x1E69CBF78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 647);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF50], v36);
  LOBYTE(v33) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 647);
  if (v33)
  {
    goto LABEL_10;
  }

  swift_getErrorValue();
  v38 = v0[673];
  v39 = v0[674];
  v40 = v0[675];
  v41 = sub_1E65E6C98();
  v43 = v42;
  v44 = *MEMORY[0x1E698C548];
  if (v41 == sub_1E65E5C78() && v43 == v45)
  {
  }

  else
  {
    v46 = sub_1E65E6C18();

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_getErrorValue();
  v47 = v0[665];
  v48 = v0[666];
  v49 = v0[667];
  if (sub_1E65E6C88() == 1)
  {
LABEL_10:
    v50 = sub_1E65DC678();
    sub_1E5FEDF78(&qword_1EE2D6B28, MEMORY[0x1E699E140]);
    swift_allocError();
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E699E138], v50);
    swift_willThrow();

    goto LABEL_12;
  }

LABEL_11:
  swift_willThrow();
LABEL_12:
  v52 = v0[1163];
  v53 = v0[1157];
  v54 = v0[1151];
  v55 = v0[1145];
  v56 = v0[1139];
  v57 = v0[1133];
  v58 = v0[1127];
  v59 = v0[1103];
  v63 = v0[1169];
  v64 = v0[1097];
  v65 = v0[1091];
  v66 = v0[1085];
  v67 = v0[1061];
  v68 = v0[1055];
  v69 = v0[1049];
  v70 = v0[1031];
  v71 = v0[1025];
  v72 = v0[1019];
  v73 = v0[1013];
  v74 = v0[1007];
  v75 = v0[1001];
  v76 = v0[983];
  v81 = v0[965];
  v83 = v0[959];
  v85 = v0[953];
  v87 = v0[947];
  v60 = v0[1073] + 8;
  v77 = v0[977];
  v78 = v0[941];
  v79 = v0[971];
  v80 = v0[917];
  v82 = v0[911];
  v84 = v0[893];
  v86 = v0[875];
  v88 = v0[869];
  v89 = v0[863];
  v90 = v0[857];
  v91 = v0[839];
  v92 = v0[833];
  v93 = v0[815];
  v95 = v0[797];
  v97 = v0[779];
  v99 = v0[773];
  v100(v0[1109], v0[1067]);

  v61 = v0[1];

  return v61();
}

uint64_t sub_1E5FE09EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 112) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  v5 = sub_1E65D76F8();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v8 = sub_1E65DAB98();
  *(v4 + 64) = v8;
  v9 = *(v8 - 8);
  *(v4 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE0B10, 0, 0);
}

uint64_t sub_1E5FE0B10()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = *(v0 + 112);
  v8 = v6 + *(type metadata accessor for AppComposer() + 20);
  v9 = v8 + *(type metadata accessor for AppEnvironment() + 84);
  v10 = PersonalizationService.fetchPersonalizationInferenceResponse.getter();
  *(v0 + 88) = v11;
  (*(v3 + 16))(v2, v5, v4);
  sub_1E65DDFC8();
  sub_1E65DAB88();
  v17 = (v10 + *v10);
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  *v13 = v0;
  v13[1] = sub_1E5FE0C9C;
  v14 = *(v0 + 80);
  v15 = *(v0 + 16);

  return v17(v15, v14);
}

uint64_t sub_1E5FE0C9C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 104) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5FE0E84, 0, 0);
  }

  else
  {
    v9 = *(v2 + 80);
    v10 = *(v2 + 56);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_1E5FE0E84()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_1E5FE0EF4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE0F14, 0, 0);
}

uint64_t sub_1E5FE0F14()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 52);
  v4 = ConfigurationService.queryConfiguration.getter();
  v0[4] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FE1030;
  v8 = v0[2];

  return v10(v8);
}

uint64_t sub_1E5FE1030()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1E5FAD050;
  }

  else
  {
    v3 = sub_1E5FAC604;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E5FE1144(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE1164, 0, 0);
}

uint64_t sub_1E5FE1164()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 48);
  v4 = CatalogService.queryAllBodyFocuses.getter();
  v0[4] = v5;
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FE1278;

  return v9();
}

uint64_t sub_1E5FE1278(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_1E5FEE4E8;
  }

  else
  {
    v8 = *(v4 + 32);

    *(v4 + 56) = a1;
    v7 = sub_1E5FEE4D8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E5FE13A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE13C8, 0, 0);
}

uint64_t sub_1E5FE13C8()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 48);
  v4 = CatalogService.queryAllCatalogThemes.getter();
  v0[4] = v5;
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FE1278;

  return v9();
}

uint64_t sub_1E5FE14DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE14FC, 0, 0);
}

uint64_t sub_1E5FE14FC()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 48);
  v4 = CatalogService.queryAllMusicGenres.getter();
  v0[4] = v5;
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FE1610;

  return v9();
}

uint64_t sub_1E5FE1610(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_1E5FEE4E8;
  }

  else
  {
    v8 = *(v4 + 32);

    *(v4 + 56) = a1;
    v7 = sub_1E5FE1740;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E5FE1764(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE1784, 0, 0);
}

uint64_t sub_1E5FE1784()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 48);
  v4 = CatalogService.queryAllSkillLevels.getter();
  v0[4] = v5;
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FE1278;

  return v9();
}

uint64_t sub_1E5FE1898(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE18B8, 0, 0);
}

uint64_t sub_1E5FE18B8()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 48);
  v4 = CatalogService.queryAllTrainerReferences.getter();
  v0[4] = v5;
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FE1278;

  return v9();
}

uint64_t sub_1E5FE19CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE19EC, 0, 0);
}

uint64_t sub_1E5FE19EC()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 48);
  v4 = CatalogService.queryAllCatalogModalityReferences.getter();
  v0[4] = v5;
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FE1278;

  return v9();
}

uint64_t sub_1E5FE1B00(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  sub_1E65E6058();
  v1[5] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE1BD4, v5, v4);
}

uint64_t sub_1E5FE1BD4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  swift_storeEnumTagMultiPayload();
  sub_1E65E4EE8();
  sub_1E5DFE50C(v2, &qword_1ED072828, &qword_1E65EBE20);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5FE1C7C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728B0, &qword_1E65EBF38);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE1D1C, 0, 0);
}

uint64_t sub_1E5FE1D1C()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 40);
  v4 = AwardsService.makeAchievementEnvironmentCacheUpdatedStream.getter();
  v0[6] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FE1E38;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E5FE1E38()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5FE1F50, 0, 0);
}

uint64_t sub_1E5FE1F50()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728B8, &qword_1E65EBF48);
  v3[4] = sub_1E5FED46C(&qword_1EE2D4490, &qword_1ED0728B8, &qword_1E65EBF48);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E65DC9A8();
  sub_1E5FED46C(&qword_1EE2D4780, &qword_1ED0728B0, &qword_1E65EBF38);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5FE20B0()
{
  v1 = *(v0 + 16);
  sub_1E65DC998();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FE2110(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE21B0, 0, 0);
}

uint64_t sub_1E5FE21B0()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 144);
  active = WorkoutPlanService.makeActiveWorkoutPlanUpdatedStream.getter();
  v0[6] = v5;
  v10 = (active + *active);
  v6 = active[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FE22CC;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E5FE22CC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5FE23E4, 0, 0);
}

uint64_t sub_1E5FE23E4()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728A8, &qword_1E65EBF30);
  v3[4] = sub_1E5FED46C(&qword_1EE2D4468, &qword_1ED0728A8, &qword_1E65EBF30);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5FE2520(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C0, &qword_1E65EBA50);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE25C0, 0, 0);
}

uint64_t sub_1E5FE25C0()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 56);
  v4 = ContentAvailabilityService.makeAllowedContentRatingsUpdatedStream.getter();
  v0[6] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FE26DC;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E5FE26DC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5FE27F4, 0, 0);
}

uint64_t sub_1E5FE27F4()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728A0, &qword_1E65EBF20);
  v3[4] = sub_1E5FED46C(&qword_1EE2D4470, &qword_1ED0728A0, &qword_1E65EBF20);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E5FED46C(&qword_1EE2D4748, &qword_1ED0726C0, &qword_1E65EBA50);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5FE2930(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE2950, 0, 0);
}

uint64_t sub_1E5FE2950()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 28);
  active = AppStateService.makeAppDidBecomeActiveStream.getter();
  v0[4] = v6;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v11 = (active + *active);
  v8 = active[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1E5FEE4C4;

  return v11(boxed_opaque_existential_1);
}

uint64_t sub_1E5FE2AD8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721A0, &qword_1E65EA978);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE2B78, 0, 0);
}

uint64_t sub_1E5FE2B78()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 112);
  v4 = SessionService.makeAudioLanguagePreferenceUpdatedStream.getter();
  v0[6] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FE2C94;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E5FE2C94()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1E5FEE4E0;
  }

  else
  {
    v4 = sub_1E5FE2DC4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E5FE2DC4()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072898, &qword_1E65EBF10);
  v3[4] = sub_1E5FED46C(&qword_1EE2D44B8, &qword_1ED072898, &qword_1E65EBF10);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E5FED46C(&qword_1EE2D47A0, &qword_1ED0721A0, &qword_1E65EA978);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5FE2F00(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE2FA0, 0, 0);
}

uint64_t sub_1E5FE2FA0()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 100);
  v4 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[6] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FE30BC;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E5FE30BC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5FE31D4, 0, 0);
}

uint64_t sub_1E5FE31D4()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072888, &qword_1E65EBEF8);
  v3[4] = sub_1E5FED46C(&qword_1EE2D44C8, &qword_1ED072888, &qword_1E65EBEF8);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E5FED46C(&qword_1EE2D47A8, &qword_1ED0721B8, &qword_1E65EA990);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5FE330C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_1E65D99E8() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE339C, 0, 0);
}

uint64_t sub_1E5FE339C()
{
  v1 = *(v0 + 32);
  sub_1E5E1D2E4(*(v0 + 24), v1, MEMORY[0x1E69CC610]);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072890, &qword_1E65EBF00);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  if (v3 != 1)
  {
    v4 = *(v0 + 32);
    v5 = *(v2 + 48);
    v6 = sub_1E65D9FF8();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
    v7 = sub_1E65D8DE8();
    (*(*(v7 - 8) + 8))(v4, v7);
  }

  v8 = *(v0 + 32);
  **(v0 + 16) = v3 != 1;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1E5FE3504(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE3524, 0, 0);
}

uint64_t sub_1E5FE3524()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 48);
  v5 = CatalogService.makeCatalogDeletedStream.getter();
  v0[4] = v6;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v11 = (v5 + *v5);
  v8 = v5[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1E5FE36AC;

  return v11(boxed_opaque_existential_1);
}

uint64_t sub_1E5FE36AC()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1E5FEE4DC;
  }

  else
  {
    v3 = sub_1E5FAC604;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E5FE37C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE37E0, 0, 0);
}

uint64_t sub_1E5FE37E0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 56);
  v5 = ContentAvailabilityService.makeContentAvailabilityUpdatedStream.getter();
  v0[4] = v6;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v11 = (v5 + *v5);
  v8 = v5[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1E5FEE4C4;

  return v11(boxed_opaque_existential_1);
}

uint64_t sub_1E5FE3968(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072878, &qword_1E65EBED8);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE3A08, 0, 0);
}

uint64_t sub_1E5FE3A08()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 56);
  v4 = ContentAvailabilityService.makeNetworkConditionsUpdatedStream.getter();
  v0[6] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FE3B24;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E5FE3B24()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5FE3C3C, 0, 0);
}

uint64_t sub_1E5FE3C3C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072880, &qword_1E65EBEE8);
  v3[4] = sub_1E5FED46C(&qword_1EE2D44D8, &qword_1ED072880, &qword_1E65EBEE8);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E5FED46C(&qword_1EE2D47B8, &qword_1ED072878, &qword_1E65EBED8);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5FE3D74(uint64_t a1, _BYTE *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE3D9C, 0, 0);
}

uint64_t sub_1E5FE3DBC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072868, &qword_1E65EBEC0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE3E5C, 0, 0);
}

uint64_t sub_1E5FE3E5C()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 96);
  v4 = RecommendationService.makeOnboardingSurveyResultsUpdatedStream.getter();
  v0[6] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FE3F78;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E5FE3F78()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5FE4090, 0, 0);
}

uint64_t sub_1E5FE4090()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072870, &qword_1E65EBED0);
  v3[4] = sub_1E5FED46C(&qword_1EE2D44A0, &qword_1ED072870, &qword_1E65EBED0);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E5FED46C(&qword_1EE2D4788, &qword_1ED072868, &qword_1E65EBEC0);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5FE41C8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072858, &qword_1E65EBEA8);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE4268, 0, 0);
}

uint64_t sub_1E5FE4268()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 92);
  v4 = PrivacyPreferenceService.makePersonalizationPrivacyPreferenceUpdatedStream.getter();
  v0[6] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FE4384;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E5FE4384()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1E5FE45F0;
  }

  else
  {
    v4 = sub_1E5FE44B4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E5FE44B4()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072860, &qword_1E65EBEB8);
  v3[4] = sub_1E5FED46C(&qword_1EE2D44B0, &qword_1ED072860, &qword_1E65EBEB8);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E5FED46C(&qword_1EE2D4798, &qword_1ED072858, &qword_1E65EBEA8);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5FE45F0()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1E5FE4654(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE4674, 0, 0);
}

uint64_t sub_1E5FE4674()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 28);
  v5 = AppStateService.makeSignificantTimeChangeStream.getter();
  v0[4] = v6;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v11 = (v5 + *v5);
  v8 = v5[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1E5FE47FC;

  return v11(boxed_opaque_existential_1);
}

uint64_t sub_1E5FE47FC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1E5FE4910(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072848, &qword_1E65EBE90);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE49B0, 0, 0);
}

uint64_t sub_1E5FE49B0()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 108);
  v4 = ServiceSubscriptionService.makeServiceSubscriptionStatusStream.getter();
  v0[6] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FE4ACC;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E5FE4ACC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5FE4BE4, 0, 0);
}

uint64_t sub_1E5FE4BE4()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072850, &qword_1E65EBEA0);
  v3[4] = sub_1E5FED46C(&qword_1EE2D44D0, &qword_1ED072850, &qword_1E65EBEA0);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E5FED46C(&qword_1EE2D47B0, &qword_1ED072848, &qword_1E65EBE90);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5FE4D1C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FE4D3C, 0, 0);
}

uint64_t sub_1E5FE4D3C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 64);
  v5 = HealthDataService.makeWheelchairStatusUpdatedStream.getter();
  v0[4] = v6;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v11 = (v5 + *v5);
  v8 = v5[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1E5FE4EC4;

  return v11(boxed_opaque_existential_1);
}

uint64_t sub_1E5FE4EC4()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1E5FE4FD8;
  }

  else
  {
    v3 = sub_1E5FAC604;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E5FE4FD8()
{
  v1 = v0[4];
  v2 = v0[2];

  __swift_deallocate_boxed_opaque_existential_1(v2);
  v3 = v0[1];
  v4 = v0[6];

  return v3();
}

uint64_t sub_1E5FE5048(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for AppAction();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE50DC, 0, 0);
}

uint64_t sub_1E5FE50DC()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  *(v0 + 40) = **(v0 + 16);
  *v1 = 0;
  v1[1] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1E65E6058();
  *(v0 + 48) = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE518C, v4, v3);
}

uint64_t sub_1E5FE518C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  sub_1E65E4EE8();
  sub_1E5FEE09C(v3, type metadata accessor for AppAction);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5FE521C(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for ToastAction();
  v1[5] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE52B0, 0, 0);
}

uint64_t sub_1E5FE52B0()
{
  v1 = **(v0 + 32);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (v3 <= 2)
  {
    switch(v3)
    {
      case 0:
        goto LABEL_12;
      case 1:
        sub_1E5FED40C(*(v0 + 16), 1uLL);
        sub_1E5E07DA0(0, 1uLL);
        sub_1E5E07DA0(v2, 1uLL);

        sub_1E5E07DA0(v2, 1uLL);
        goto LABEL_18;
      case 2:
        goto LABEL_12;
    }

LABEL_11:
    sub_1E5FED40C(v2, v3);
    MEMORY[0x1E694D7C0](v2, v3);
    goto LABEL_13;
  }

  if (v3 > 5)
  {
    if (v3 == 6)
    {
      sub_1E5E07DA0(*(v0 + 16), 6uLL);
      sub_1E5E07DA0(0, 1uLL);
LABEL_14:
      v5 = *(v0 + 40);
      v6 = *(v0 + 48);
      v7 = *(v0 + 32);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072838, &qword_1E65EBE80);
      v9 = *(v8 + 48);
      v10 = *(v8 + 64);
      *v6 = 0;
      type metadata accessor for ToastResource();
      swift_storeEnumTagMultiPayload();
      v6[v10] = 1;
      swift_storeEnumTagMultiPayload();
      v11 = v7 + *(type metadata accessor for AppComposer() + 20);
      v12 = (v11 + *(type metadata accessor for AppEnvironment() + 128));
      v13 = v12[1];
      v20 = (*v12 + **v12);
      v14 = (*v12)[1];
      v15 = swift_task_alloc();
      *(v0 + 56) = v15;
      *v15 = v0;
      v15[1] = sub_1E5FE5668;
      v16 = *(v0 + 48);

      return v20(v16);
    }

    goto LABEL_11;
  }

LABEL_12:
  sub_1E5FED40C(*(v0 + 16), *(v0 + 24));
LABEL_13:
  v4 = sub_1E65E6C18();
  sub_1E5E07DA0(0, 1uLL);
  sub_1E5E07DA0(v2, v3);

  sub_1E5E07DA0(v2, v3);
  if ((v4 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_18:
  v18 = *(v0 + 48);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1E5FE5668()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5FE5764, 0, 0);
}

uint64_t sub_1E5FE5764()
{
  sub_1E5FEE09C(*(v0 + 48), type metadata accessor for ToastAction);
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FE57E0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1E65D8DE8();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE58A0, 0, 0);
}

uint64_t sub_1E5FE58A0()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 100);
  active = RemoteBrowsingService.requireActiveParticipant.getter();
  v0[6] = v5;
  v10 = (active + *active);
  v6 = active[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FE59BC;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E5FE59BC()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1E5FE45F0;
  }

  else
  {
    v4 = sub_1E5FE5AEC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E5FE5AEC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_1E65D8D88();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1E5FE5B84(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  sub_1E65E6058();
  v1[5] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE5C58, v5, v4);
}

uint64_t sub_1E5FE5C58()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  swift_storeEnumTagMultiPayload();
  sub_1E65E4EE8();
  sub_1E5DFE50C(v2, &qword_1ED072828, &qword_1E65EBE20);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5FE5CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v4[19] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  v4[21] = v7;
  v8 = *(v7 - 8);
  v4[22] = v8;
  v9 = *(v8 + 64) + 15;
  v4[23] = swift_task_alloc();
  v10 = type metadata accessor for ItemContext();
  v4[24] = v10;
  v11 = *(v10 - 8);
  v4[25] = v11;
  v12 = *(v11 + 64) + 15;
  v4[26] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072830, &qword_1E65EBE28);
  v4[27] = v13;
  v14 = *(v13 - 8);
  v4[28] = v14;
  v15 = *(v14 + 64) + 15;
  v4[29] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v4[30] = v16;
  v17 = *(v16 - 8);
  v4[31] = v17;
  v18 = *(v17 + 64) + 15;
  v4[32] = swift_task_alloc();
  sub_1E65E6058();
  v4[33] = sub_1E65E6048();
  v20 = sub_1E65E5FC8();
  v4[34] = v20;
  v4[35] = v19;

  return MEMORY[0x1EEE6DFA0](sub_1E5FE5F68, v20, v19);
}

uint64_t sub_1E5FE5F68()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = **(v0 + 120);
  swift_getKeyPath();
  sub_1E65E4EC8();

  *(v0 + 96) = v4;
  *(v0 + 104) = v3;
  v6 = *(v0 + 112);

  sub_1E65E5B18();
  v8 = *(v0 + 248);
  v7 = *(v0 + 256);
  v9 = *(v0 + 240);
  v10 = *(v0 + 136);

  v11 = sub_1E65DC1A8();
  v13 = v12;
  LODWORD(v2) = v12;
  isUniquelyReferenced_nonNull_native = (*(v8 + 8))(v7, v9);
  if (!v2)
  {
    v79 = v0;
    v27 = MEMORY[0x1E69E7CC0];
    v75 = *(v11 + 16);
    if (v75)
    {
      v28 = 0;
      v29 = *(v0 + 224);
      v80 = *(v0 + 200);
      v73 = v11 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
      v70 = *(v0 + 176);
      v71 = v11;
      v74 = v29;
      v72 = (v29 + 8);
      v30 = MEMORY[0x1E69E7CC0];
      while (v28 < *(v11 + 16))
      {
        (*(v74 + 16))(*(v0 + 232), v73 + *(v74 + 72) * v28, *(v0 + 216));
        v31 = sub_1E65E0518();
        v32 = *(v31 + 16);
        if (v32)
        {
          v76 = v28;
          v77 = v30;
          sub_1E601BFA8(0, v32, 0);
          v33 = v27;
          v34 = v31 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
          v35 = *(v70 + 72);
          v36 = *(v70 + 16);
          do
          {
            v37 = *(v0 + 208);
            v38 = *(v0 + 184);
            v39 = *(v0 + 168);
            v36(v38, v34, v39);
            MEMORY[0x1E6947EA0](v39);
            (*(v70 + 8))(v38, v39);
            v41 = *(v33 + 16);
            v40 = *(v33 + 24);
            if (v41 >= v40 >> 1)
            {
              sub_1E601BFA8(v40 > 1, v41 + 1, 1);
            }

            v42 = *(v0 + 208);
            *(v33 + 16) = v41 + 1;
            sub_1E5E1DF78(v42, v33 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v41, type metadata accessor for ItemContext);
            v34 += v35;
            --v32;
          }

          while (v32);
          (*v72)(*(v0 + 232), *(v0 + 216));

          v30 = v77;
          v11 = v71;
          v27 = MEMORY[0x1E69E7CC0];
          v28 = v76;
        }

        else
        {
          v43 = *(v0 + 232);
          v44 = *(v0 + 216);

          (*v72)(v43, v44);
          v33 = v27;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_1E64F61AC(0, v30[2] + 1, 1, v30);
          v30 = isUniquelyReferenced_nonNull_native;
        }

        v46 = v30[2];
        v45 = v30[3];
        if (v46 >= v45 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_1E64F61AC((v45 > 1), v46 + 1, 1, v30);
          v30 = isUniquelyReferenced_nonNull_native;
        }

        ++v28;
        v30[2] = v46 + 1;
        v30[v46 + 4] = v33;
        v0 = v79;
        if (v28 == v75)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
    }

    else
    {
      v30 = MEMORY[0x1E69E7CC0];
LABEL_22:
      isUniquelyReferenced_nonNull_native = sub_1E5FED3F8(v11, 0);
      v47 = v30[2];
      if (!v47)
      {
        v51 = MEMORY[0x1E69E7CC0];
LABEL_40:
        v81 = *(v0 + 192);

        sub_1E65E0638();
        sub_1E65E0628();
        sub_1E65E0618();

        v78 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
        type metadata accessor for ActionButtonDescriptor(0);
        type metadata accessor for ArtworkDescriptor();
        type metadata accessor for ContextMenu(0);
        type metadata accessor for ItemMetrics();
        type metadata accessor for ViewDescriptor();
        sub_1E5FEDF78(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
        sub_1E5FEDF78(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
        sub_1E5FEDF78(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
        sub_1E5FEDF78(&qword_1EE2DB720, type metadata accessor for ItemContext);
        sub_1E5FEDF78(&qword_1EE2DB738, type metadata accessor for ItemContext);
        sub_1E5FEDF78(&qword_1EE2DB730, type metadata accessor for ItemContext);
        sub_1E5FEDF78(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
        sub_1E5FEDF78(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
        sub_1E65E0608();
        __swift_destroy_boxed_opaque_existential_1((v0 + 56));
        v65 = *(v0 + 40);
        v66 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v65);
        v67 = sub_1E600A878(v51);
        *(v0 + 288) = v67;

        v68 = *(MEMORY[0x1E699D8C0] + 4);
        v69 = swift_task_alloc();
        *(v0 + 296) = v69;
        *v69 = v0;
        v69[1] = sub_1E5FE6858;
        isUniquelyReferenced_nonNull_native = v67;
        v15 = v65;
        v16 = v66;

        return MEMORY[0x1EEE05DC8](isUniquelyReferenced_nonNull_native, v15, v16);
      }

      v48 = 0;
      v49 = *(v0 + 200);
      v50 = v30 + 4;
      v51 = MEMORY[0x1E69E7CC0];
      while (v48 < v30[2])
      {
        v52 = v30;
        v53 = v50[v48];
        v54 = *(v53 + 16);
        v55 = v51[2];
        v56 = v55 + v54;
        if (__OFADD__(v55, v54))
        {
          goto LABEL_45;
        }

        v57 = v50[v48];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v56 > v51[3] >> 1)
        {
          if (v55 <= v56)
          {
            v58 = v55 + v54;
          }

          else
          {
            v58 = v55;
          }

          isUniquelyReferenced_nonNull_native = sub_1E64F6184(isUniquelyReferenced_nonNull_native, v58, 1, v51);
          v51 = isUniquelyReferenced_nonNull_native;
        }

        v30 = v52;
        if (*(v53 + 16))
        {
          v59 = v51[2];
          if ((v51[3] >> 1) - v59 < v54)
          {
            goto LABEL_47;
          }

          v60 = *(v79 + 192);
          v61 = v51 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v59;
          swift_arrayInitWithCopy();

          if (v54)
          {
            v62 = v51[2];
            v63 = __OFADD__(v62, v54);
            v64 = v62 + v54;
            if (v63)
            {
              goto LABEL_48;
            }

            v51[2] = v64;
          }
        }

        else
        {

          if (v54)
          {
            goto LABEL_46;
          }
        }

        ++v48;
        v0 = v79;
        if (v47 == v48)
        {
          goto LABEL_40;
        }
      }
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
    return MEMORY[0x1EEE05DC8](isUniquelyReferenced_nonNull_native, v15, v16);
  }

  v17 = *(v0 + 264);
  sub_1E5FED3F8(v11, v13);

  v18 = *(v0 + 256);
  v19 = *(v0 + 232);
  v20 = *(v0 + 208);
  v21 = *(v0 + 184);
  v22 = *(v0 + 152);
  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  swift_storeEnumTagMultiPayload();
  sub_1E65E4EE8();
  sub_1E5DFE50C(v23, &qword_1ED072828, &qword_1E65EBE20);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1E5FE6858()
{
  v1 = *v0;
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 288);
  v7 = *v0;

  v4 = *(v1 + 280);
  v5 = *(v1 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1E5FE699C, v5, v4);
}

uint64_t sub_1E5FE699C()
{
  v1 = v0[33];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[19];
  v7 = v0[20];
  v8 = v0[18];
  swift_storeEnumTagMultiPayload();
  sub_1E65E4EE8();
  sub_1E5DFE50C(v7, &qword_1ED072828, &qword_1E65EBE20);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E5FE6A80(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for AppState() + 100);
  v4 = *(v3 + 8);

  *(v3 + 8) = v2;
  return result;
}

uint64_t sub_1E5FE6AD4(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1E65D9FF8();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1E65DA2A8();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE6BFC, 0, 0);
}

uint64_t sub_1E5FE6BFC()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  if (*(v2 + 8) >= 3u)
  {
    v8 = v2 + *(type metadata accessor for AppEnvironment() + 100);
    active = RemoteBrowsingService.requireActiveEnvironment.getter();
    v0[10] = v10;
    v14 = (active + *active);
    v11 = active[1];
    v12 = swift_task_alloc();
    v0[11] = v12;
    *v12 = v0;
    v12[1] = sub_1E5FE6D80;
    v13 = v0[5];

    return v14(v13);
  }

  else
  {
    v4 = v0[8];
    v3 = v0[9];
    v5 = v0[5];

    v6 = v0[1];

    return v6(1);
  }
}

uint64_t sub_1E5FE6D80()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1E5FE6FF4;
  }

  else
  {
    v4 = sub_1E5FE6EB0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E5FE6EB0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  sub_1E65D9F98();
  (*(v6 + 8))(v5, v7);
  sub_1E65DA288();
  sub_1E5FEDF78(&qword_1ED071E28, MEMORY[0x1E69CCBE8]);
  v8 = sub_1E65E6718();
  v9 = *(v4 + 8);
  v9(v2, v3);
  v9(v1, v3);
  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[5];

  v13 = v0[1];

  return v13(v8 & 1);
}

uint64_t sub_1E5FE6FF4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[12];

  return v4(0);
}

uint64_t sub_1E5FE7070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v83 = a4;
  v82 = a3;
  v92 = a5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072808, &qword_1E65EBE00);
  v7 = *(*(v90 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v90);
  v91 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v79 - v10;
  v11 = sub_1E65DC638();
  v86 = *(v11 - 8);
  v87 = v11;
  v12 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v98 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E65DC9C8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v97 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v80 = *(v81 - 8);
  v17 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v79 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v79 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v79 - v25;
  v27 = sub_1E65D7848();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v96 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1E65E07B8();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1E65DC778();
  v94 = *(v36 - 8);
  v95 = v36;
  v37 = *(v94 + 64);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v84 = &v79 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v79 - v40;
  v93 = *(a2 + *(type metadata accessor for AppComposer() + 20) + 8);
  if (v93 > 2)
  {
    sub_1E65DC768();
  }

  else
  {
    v42 = *(type metadata accessor for AppState() + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0668();
    sub_1E65E0758();
    sub_1E65E0798();
    sub_1E65E0788();
    sub_1E65E07A8();
    sub_1E65DC768();
    (*(v32 + 8))(v35, v31);
  }

  v43 = v41;
  v44 = type metadata accessor for AppState();
  v45 = v44[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v26);
  sub_1E5DFE50C(v22, &qword_1ED071F78, &unk_1E65EA3F0);
  v46 = *(v28 + 48);
  if (v46(v26, 1, v27) == 1)
  {
    sub_1E65D77C8();
    if (v46(v26, 1, v27) != 1)
    {
      sub_1E5DFE50C(v26, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v28 + 32))(v96, v26, v27);
  }

  v85 = sub_1E640F12C(*(a1 + v44[17] + 8));
  v47 = *(a1 + v44[25] + 8);
  if (*(v47 + 16) && (v48 = sub_1E6215038(v82, v83), (v49 & 1) != 0))
  {
    v50 = v80;
    v51 = v79;
    v52 = v81;
    (*(v80 + 16))(v79, *(v47 + 56) + *(v80 + 72) * v48, v81);
    v53 = sub_1E65DC1A8();
    v55 = v54;
    v56 = v54;
    (*(v50 + 8))(v51, v52);
    LODWORD(v83) = v56 < 2;
    sub_1E5FED3F8(v53, v55);
  }

  else
  {
    LODWORD(v83) = 0;
  }

  v81 = sub_1E65DAE38();
  v80 = sub_1E65DAE38();
  sub_1E65DAE08();
  v57 = a1 + v44[27];
  v58 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0) + 28);
  v59 = sub_1E65E2358();
  (*(v94 + 16))(v84, v43, v95);
  sub_1E65DC9B8();
  v60 = a1 + v44[34];
  v62 = *(v60 + 32);
  v61 = *(v60 + 40);
  v63 = v43;
  v64 = *(v60 + 48);
  v65 = *(v60 + 56);
  v66 = a1 + v44[36];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072800, &qword_1E65EBDF8);
  (*(v86 + 16))(v98, v66 + *(v67 + 28), v87);
  v68 = v44[50];
  v86 = v64;
  v87 = v61;
  LODWORD(v79) = v65;
  sub_1E5FED384(v62, v61, v64, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
  v69 = v89;
  sub_1E65E4C98();
  v70 = v91;
  sub_1E5FAB460(v69, v91, &qword_1ED072808, &qword_1E65EBE00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v88 = v63;
  LODWORD(v82) = v59;
  v84 = v62;
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072820, &qword_1E65EBE18) + 48);
        v73 = *v70;
        v74 = sub_1E65D76A8();
        (*(*(v74 - 8) + 8))(&v70[v72], v74);
      }

      else
      {
        sub_1E5DFE50C(v70, &qword_1ED072808, &qword_1E65EBE00);
      }
    }

    else
    {
      v75 = *v70;
    }
  }

  sub_1E65DAE38();
  sub_1E65DAE38();
  v76 = v44[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  v77 = a1 + v44[73];
  sub_1E6409C44();
  sub_1E65DAE38();
  sub_1E65DAE38();
  sub_1E65DC6B8();
  return (*(v94 + 8))(v88, v95);
}

uint64_t sub_1E5FE7A58(uint64_t a1)
{
  v25 = sub_1E65DC638();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65DC6A8();
  v7 = sub_1E640F9F8(v6);

  v8 = type metadata accessor for AppState();
  v9 = a1 + v8[17];
  v10 = *(v9 + 8);

  *(v9 + 8) = v7;
  sub_1E65DC6C8();
  v11 = a1 + v8[27];
  v12 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0) + 28);
  sub_1E65E2368();
  v13 = sub_1E65DC698();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = a1 + v8[34];
  sub_1E5FED324(*(v20 + 32), *(v20 + 40), *(v20 + 48), *(v20 + 56));
  *(v20 + 32) = v13;
  *(v20 + 40) = v15;
  *(v20 + 48) = v17;
  *(v20 + 56) = v19;
  sub_1E65DC6D8();
  v21 = a1 + v8[36];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072800, &qword_1E65EBDF8);
  return (*(v2 + 40))(v21 + *(v22 + 28), v5, v25);
}

uint64_t sub_1E5FE7C14(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v39 = a3;
  v40 = a2;
  v7 = sub_1E65DC4B8();
  v33 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65DC6E8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v32 - v16;
  v41 = &v32 - v16;
  v18 = a1[1];
  v43 = *a1;
  v44[0] = v18;
  *(v44 + 9) = *(a1 + 25);
  v19 = sub_1E65E60A8();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  (*(v11 + 16))(v13, v39, v10);
  v20 = a5[3];
  v34 = *a5;
  v35 = v20;
  v21 = a5[7];
  v37 = a5[5];
  v38 = v21;
  v39 = a5[9];
  v22 = v36;
  (*(v8 + 16))(v36, v40, v7);
  v23 = (*(v11 + 80) + 73) & ~*(v11 + 80);
  v24 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v8 + 80) + v24 + 80) & ~*(v8 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v27 = v44[0];
  *(v26 + 32) = v43;
  *(v26 + 48) = v27;
  *(v26 + 57) = *(v44 + 9);
  (*(v11 + 32))(v26 + v23, v13, v10);
  v28 = (v26 + v24);
  v29 = *(a5 + 3);
  v28[2] = *(a5 + 2);
  v28[3] = v29;
  v28[4] = *(a5 + 4);
  v30 = *(a5 + 1);
  *v28 = *a5;
  v28[1] = v30;
  (*(v8 + 32))(v26 + v25, v22, v33);
  sub_1E5FED2C8(&v43, v42);
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v41, &unk_1E65EBDE8, v26);
}

uint64_t sub_1E5FE7F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X8>)
{
  v94 = a2;
  v96 = a5;
  v8 = sub_1E65E3C48();
  v81 = *(v8 - 8);
  v9 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v80[1] = v10;
  v93 = v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for AppComposer();
  v11 = *(v86 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v86);
  v97 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v80 - v14;
  v102 = sub_1E65D76F8();
  *&v103 = *(v102 - 8);
  v16 = *(v103 + 64);
  v17 = MEMORY[0x1EEE9AC00](v102);
  v100 = v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v101 = v80 - v19;
  sub_1E65D76E8();
  if (qword_1EE2D4F30 != -1)
  {
    swift_once();
  }

  v80[0] = __swift_project_value_buffer(v8, qword_1EE2D4F38);
  sub_1E5E1D2E4(a1, v15, type metadata accessor for AppComposer);
  sub_1E5DF650C(a3, &v113);
  v95 = v15;
  v20 = *a4;
  v83 = a3;
  v21 = a4[3];
  v88 = a1;
  v22 = a4[5];
  v98 = a4[7];
  v99 = a4[9];
  v23 = *(v11 + 80);
  v84 = ~v23;
  v87 = v8;
  v24 = (v23 + 16) & ~v23;
  v25 = v12 + 7;
  v26 = (v25 + v24) & 0xFFFFFFFFFFFFFFF8;
  v85 = v23 | 7;
  v27 = swift_allocObject();
  sub_1E5E1DF78(v95, v27 + v24, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v113, v27 + v26);
  v95 = v27;
  v28 = (v27 + ((v26 + 47) & 0xFFFFFFFFFFFFFFF8));
  v29 = *(a4 + 3);
  v28[2] = *(a4 + 2);
  v28[3] = v29;
  v28[4] = *(a4 + 4);
  v30 = *(a4 + 1);
  *v28 = *a4;
  v28[1] = v30;
  v90 = v20;
  swift_unknownObjectRetain();
  v91 = v21;

  v92 = v22;
  v31 = v88;

  v82 = sub_1E65E4418();
  v32 = v103;
  if (*(v31 + *(v86 + 20) + 8) >= 3u)
  {
    v52 = v97;
    sub_1E5E1D2E4(v31, v97, type metadata accessor for AppComposer);
    sub_1E5DF650C(v83, &v111);
    (*(v32 + 16))(v100, v101, v102);
    v53 = (v23 + 17) & v84;
    v54 = v32;
    v55 = (v25 + v53) & 0xFFFFFFFFFFFFFFF8;
    v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v56 + 47) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v57 + 87) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v58 + *(v54 + 80) + 16) & ~*(v54 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = v82;
    sub_1E5E1DF78(v52, v60 + v53, type metadata accessor for AppComposer);
    *(v60 + v55) = v94;
    sub_1E5DF599C(&v111, v60 + v56);
    v61 = (v60 + v57);
    v62 = *(a4 + 3);
    v61[2] = *(a4 + 2);
    v61[3] = v62;
    v61[4] = *(a4 + 4);
    v63 = *(a4 + 1);
    *v61 = *a4;
    v61[1] = v63;
    v64 = (v60 + v58);
    v65 = v95;
    *v64 = sub_1E5FEB94C;
    v64[1] = v65;
    v66 = v102;
    (*(v54 + 32))(v60 + v59, v100, v102);
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727B0, &qword_1E65EBC30);
    v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727B8, &qword_1E65EBC38);
    v68 = sub_1E65E0AA8();
    v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727C0, &qword_1E65EBC40);
    v70 = sub_1E5FED46C(&qword_1ED0727C8, &qword_1ED0727C0, &qword_1E65EBC40);
    *&v108 = v69;
    *(&v108 + 1) = v70;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v72 = sub_1E5FEDF78(&qword_1EE2D6550, MEMORY[0x1E699DB08]);
    *&v108 = v67;
    *(&v108 + 1) = v68;
    v109 = OpaqueTypeConformance2;
    v110 = v72;
    swift_getOpaqueTypeConformance2();
    *&v111 = sub_1E65E3E28();
    *(&v111 + 1) = v73;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072758, &qword_1E65EBBF0);
    sub_1E5FED46C(&qword_1ED072750, &qword_1ED072758, &qword_1E65EBBF0);
    v75 = *(*(v74 - 8) + 16);
    v75(&v108, &v111, v74);

    v111 = v108;
    v75(&v106, &v111, v74);
    v104 = v106;
    v105 = v107;

    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072748, &qword_1E65EBBE8);
    sub_1E5FED46C(&qword_1ED072740, &qword_1ED072748, &qword_1E65EBBE8);
    sub_1E62DFB74(&v104, v76, v74);

    (*(v103 + 8))(v101, v66);
  }

  else
  {
    sub_1E5E1D2E4(v31, v97, type metadata accessor for AppComposer);
    sub_1E5DF650C(v83, &v111);
    (*(v32 + 16))(v100, v101, v102);
    v33 = v81;
    (*(v81 + 16))(v93, v80[0], v87);
    v34 = v32;
    v35 = (v23 + 18) & v84;
    v36 = (v25 + v35) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 47) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 87) & 0xFFFFFFFFFFFFFFF8;
    v40 = (v39 + *(v34 + 80) + 16) & ~*(v34 + 80);
    v41 = (v89 + *(v33 + 80) + v40) & ~*(v33 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = v82;
    *(v42 + 17) = 1;
    sub_1E5E1DF78(v97, v42 + v35, type metadata accessor for AppComposer);
    *(v42 + v36) = v94;
    sub_1E5DF599C(&v111, v42 + v37);
    v43 = (v42 + v38);
    v44 = *(a4 + 3);
    v43[2] = *(a4 + 2);
    v43[3] = v44;
    v43[4] = *(a4 + 4);
    v45 = *(a4 + 1);
    *v43 = *a4;
    v43[1] = v45;
    v46 = (v42 + v39);
    v47 = v95;
    *v46 = sub_1E5FEB94C;
    v46[1] = v47;
    v48 = v102;
    (*(v103 + 32))(v42 + v40, v100, v102);
    (*(v33 + 32))(v42 + v41, v93, v87);
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727D0, &qword_1E65EBC48);
    sub_1E5FED46C(&qword_1ED0727D8, &qword_1ED0727D0, &qword_1E65EBC48);
    *&v111 = sub_1E65E3D68();
    *(&v111 + 1) = v49;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072748, &qword_1E65EBBE8);
    sub_1E5FED46C(&qword_1ED072740, &qword_1ED072748, &qword_1E65EBBE8);
    v51 = *(*(v50 - 8) + 16);
    v51(&v108, &v111, v50);

    v111 = v108;
    v51(&v106, &v111, v50);
    v104 = v106;
    v105 = v107;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072758, &qword_1E65EBBF0);
    sub_1E5FED46C(&qword_1ED072750, &qword_1ED072758, &qword_1E65EBBF0);
    sub_1E62DFC6C(&v104, v50);

    (*(v103 + 8))(v101, v48);
  }

  v103 = v111;
  v108 = v111;
  LOBYTE(v109) = v112;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072720, &qword_1E65EBBD0);
  sub_1E5FEAB1C();
  v78 = *(*(v77 - 8) + 16);
  v78(&v111, &v108, v77);
  sub_1E5FEBB58();
  v78(&v113, &v111, v77);
  sub_1E5FEBB58();
  v111 = v113;
  v112 = v114;
  v78(v96, &v111, v77);
  return sub_1E5FEBB58();
}

uint64_t sub_1E5FE8CC8(char *a1, uint64_t a2, char *a3, __int128 *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - v10;
  sub_1E61E66C8(a1, a3, a4, v16 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v13 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
  v16[0] = v12;
  v16[1] = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1E69482C0](v11, v7, OpaqueTypeConformance2);
  return (*(v8 + 8))(v11, v7);
}

__n128 sub_1E5FE8E80@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v7 = type metadata accessor for AppComposer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v35 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072760, &qword_1E65EBBF8);
  v40 = *(v13 - 8);
  v41 = v13;
  v14 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v36 = v34 - v15;
  v16 = sub_1E65E1518();
  v38 = *(v16 - 8);
  v39 = v16;
  v17 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v19;
  sub_1E65E14F8();
  v34[0] = a1;
  v34[6] = sub_1E632B32C(v19);
  sub_1E5E1D2E4(a1, v12, type metadata accessor for AppComposer);
  sub_1E5DF650C(a2, v43);
  v34[1] = *a3;
  v34[2] = *(a3 + 24);
  v34[3] = *(a3 + 40);
  v34[4] = *(a3 + 56);
  v34[5] = *(a3 + 72);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = (v20 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_1E5E1DF78(v12, v22 + v20, type metadata accessor for AppComposer);
  sub_1E5DF599C(v43, v22 + v21);
  v23 = (v22 + ((v21 + 47) & 0xFFFFFFFFFFFFFFF8));
  v24 = *(a3 + 48);
  v23[2] = *(a3 + 32);
  v23[3] = v24;
  v23[4] = *(a3 + 64);
  v25 = *(a3 + 16);
  *v23 = *a3;
  v23[1] = v25;
  v26 = v35;
  sub_1E5E1D2E4(v34[0], v35, type metadata accessor for AppComposer);
  v27 = swift_allocObject();
  sub_1E5E1DF78(v26, v27 + v20, type metadata accessor for AppComposer);

  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072788, &qword_1E65EBC00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  sub_1E5FED46C(&qword_1EE2D6500, &qword_1ED072788, &qword_1E65EBC00);
  sub_1E5FEB2FC();
  v28 = v36;
  sub_1E65E1128();
  sub_1E65E4B88();
  sub_1E65E3E38();

  (*(v38 + 8))(v37, v39);
  v29 = v42;
  (*(v40 + 32))(v42, v28, v41);
  v30 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072728, &qword_1E65EBBD8) + 36);
  v31 = v43[5];
  *(v30 + 64) = v43[4];
  *(v30 + 80) = v31;
  *(v30 + 96) = v43[6];
  v32 = v43[1];
  *v30 = v43[0];
  *(v30 + 16) = v32;
  result = v43[3];
  *(v30 + 32) = v43[2];
  *(v30 + 48) = result;
  return result;
}

uint64_t sub_1E5FE93D4@<X0>(uint64_t a1@<X8>)
{
  sub_1E5FE949C(1, 19, 1);
  sub_1E65DC738();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1E65DB1B8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072730, &qword_1E65EBBE0);
  *(a1 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_1E5FE949C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  v6 = sub_1E5FEB1C4(a1, a2, a3);
  v32 = MEMORY[0x1E69E7CC0];
  result = sub_1E601C0B8(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    goto LABEL_46;
  }

  v8 = v3 >> 63;
  v29 = v3;
  if (!v6)
  {
    v28 = 0;
    v31 = 0;
    v30 = 0;
    goto LABEL_24;
  }

  v28 = 0;
  v31 = 0;
  v30 = 0;
  v25 = v3 >> 63;
  v26 = v8 ^ 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v9 = v5 <= a2;
    if (v3 > 0)
    {
      v9 = v5 >= a2;
    }

    if (v9)
    {
      break;
    }

    v11 = __OFADD__(v5, v3);
    if (v11)
    {
      v10 = v26;
    }

    else
    {
      v10 = v5 + v3;
    }

    v12 = 0x8000000000000000;
    if (!v11)
    {
      v12 = 0;
    }

    v31 = v12;
    v30 = !v11;
LABEL_19:
    sub_1E65E68A8();

    v13 = sub_1E65E6BC8();
    MEMORY[0x1E694D7C0](v13);

    v15 = *(v32 + 16);
    v14 = *(v32 + 24);
    if (v15 >= v14 >> 1)
    {
      result = sub_1E601C0B8((v14 > 1), v15 + 1, 1);
    }

    *(v32 + 16) = v15 + 1;
    v16 = v32 + 16 * v15;
    *(v16 + 32) = 0xD000000000000015;
    *(v16 + 40) = 0x80000001E6610E00;
    v5 = v10;
    --v6;
    v3 = v29;
    if (!v6)
    {
      v5 = v10;
      v8 = v25;
LABEL_24:
      v27 = v8 ^ 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v17 = v5 <= a2;
        if (v3 > 0)
        {
          v17 = v5 >= a2;
        }

        if (v17)
        {
          if ((v5 != a2) | v28 & 1 || !v30 && v31 == 0x8000000000000000)
          {
            return v32;
          }

          v28 = 1;
          v18 = v5;
        }

        else
        {
          v19 = __OFADD__(v5, v3);
          if (v19)
          {
            v18 = v27;
          }

          else
          {
            v18 = v5 + v3;
          }

          v20 = 0x8000000000000000;
          if (!v19)
          {
            v20 = 0;
          }

          v31 = v20;
          v30 = !v19;
        }

        sub_1E65E68A8();

        v21 = sub_1E65E6BC8();
        MEMORY[0x1E694D7C0](v21);

        v23 = *(v32 + 16);
        v22 = *(v32 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1E601C0B8((v22 > 1), v23 + 1, 1);
        }

        *(v32 + 16) = v23 + 1;
        v24 = v32 + 16 * v23;
        *(v24 + 32) = 0xD000000000000015;
        *(v24 + 40) = 0x80000001E6610E00;
        v5 = v18;
        v3 = v29;
      }
    }
  }

  if (!(v28 & 1 | (v5 != a2)))
  {
    if (!v30 && v31 == 0x8000000000000000)
    {
      goto LABEL_45;
    }

    v28 = 1;
    v10 = a2;
    goto LABEL_19;
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

void *sub_1E5FE9818(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for AppComposer() + 20);
  v2 = *(v1 + *(type metadata accessor for AppEnvironment() + 140));
  return WindowSceneObserver.scene.getter();
}

uint64_t sub_1E5FE9864(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E5FD0B34(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E5FE9910(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FE99E8;

  return sub_1E5FD0E7C(a1, v1 + v5);
}

uint64_t sub_1E5FE99E8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1E5FE9AE4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FEE4D4;

  return sub_1E5FD11CC(a1, v1 + v5);
}

BOOL sub_1E5FE9BBC(uint64_t a1)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E5FD3208(a1, v4);
}

uint64_t sub_1E5FE9C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_1E6122F60(a1, v7, v8, v2 + v6, v10, v11, a2);
}

uint64_t sub_1E5FE9CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  LODWORD(v59) = a5;
  v57 = a4;
  v65 = a6;
  v63 = sub_1E65E3B68();
  v61 = *(v63 - 8);
  v9 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v58 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1E65D76A8();
  v66 = *(v64 - 8);
  v11 = *(v66 + 64);
  v12 = MEMORY[0x1EEE9AC00](v64);
  v62 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v55 - v14;
  v15 = sub_1E65E3AF8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E65E3AD8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = sub_1E65DDCC8();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = a2;
  v26 = sub_1E65DDC98();
  sub_1E65DDD38();

  sub_1E65E3AE8();
  sub_1E65E3AC8();
  (*(v16 + 8))(v19, v15);
  sub_1E65DDD38();
  v27 = sub_1E65DE448();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v68 = a1;
  v67 = a3;
  v30 = v58;
  v31 = sub_1E65DE418();
  v70 = v26;
  v32 = sub_1E65E5CE8();
  v34 = v33;
  sub_1E65D7688();
  sub_1E65DDCB8();
  v59 = v31;
  sub_1E65DE438();
  sub_1E65DDD28();

  v35 = sub_1E65E3B48();
  v36 = sub_1E65E6338();

  v37 = os_log_type_enabled(v35, v36);
  v56 = v25;
  v57 = v32;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v70 = v39;
    *v38 = 136446466;
    *(v38 + 4) = sub_1E5DFD4B0(v32, v34, &v70);
    *(v38 + 12) = 2082;
    v40 = sub_1E65E68B8();
    v42 = sub_1E5DFD4B0(v40, v41, &v70);

    *(v38 + 14) = v42;
    _os_log_impl(&dword_1E5DE9000, v35, v36, "[%{public}s] %{public}s begin", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v39, -1, -1);
    MEMORY[0x1E694F1C0](v38, -1, -1);
  }

  (*(v61 + 8))(v30, v63);
  v43 = v66;
  v44 = v62;
  v45 = v69;
  v46 = v64;
  (*(v66 + 16))(v62, v69, v64);
  v47 = (*(v43 + 80) + 49) & ~*(v43 + 80);
  v48 = (v60 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v57;
  *(v49 + 24) = v34;
  v50 = v56;
  *(v49 + 32) = v68;
  *(v49 + 40) = v50;
  *(v49 + 48) = v67;
  (*(v43 + 32))(v49 + v47, v44, v46);
  *(v49 + v48) = v59;
  *(v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v51 = sub_1E65DDD18();
  v52 = MEMORY[0x1E69CAAD0];
  v53 = v65;
  v65[3] = v51;
  v53[4] = v52;
  __swift_allocate_boxed_opaque_existential_1(v53);

  sub_1E65DDD08();
  (*(v43 + 8))(v45, v46);
}

uint64_t sub_1E5FEA280(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v64 = a6;
  v62 = a4;
  v63 = a5;
  v61 = a2;
  v67 = a9;
  v68 = a8;
  v12 = sub_1E65D76A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v60 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v60 - v21;
  v23 = sub_1E65E3B68();
  v65 = *(v23 - 8);
  v66 = v23;
  v24 = *(v65 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v60 - v28;
  if (a1)
  {
    v30 = a1;
    sub_1E65DDD28();
    (*(v13 + 16))(v17, a7, v12);

    v31 = a1;
    v32 = sub_1E65E3B48();
    v33 = sub_1E65E6328();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v70 = v60;
      *v34 = 136446978;
      *(v34 + 4) = sub_1E5DFD4B0(v61, a3, &v70);
      *(v34 + 12) = 2082;
      v35 = sub_1E65E68B8();
      v64 = v33;
      v37 = sub_1E5DFD4B0(v35, v36, &v70);

      *(v34 + 14) = v37;
      *(v34 + 22) = 2048;
      sub_1E65D7688();
      sub_1E65D7628();
      v39 = v38;
      v40 = *(v13 + 8);
      v40(v20, v12);
      v40(v17, v12);
      *(v34 + 24) = v39;
      *(v34 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v42 = *(*(v69 - 8) + 64);
      MEMORY[0x1EEE9AC00](ErrorValue);
      (*(v44 + 16))(&v60 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
      v45 = sub_1E65E5CE8();
      v47 = sub_1E5DFD4B0(v45, v46, &v70);

      *(v34 + 34) = v47;
      _os_log_impl(&dword_1E5DE9000, v32, v64, "[%{public}s] %{public}s ended in %fs -> %{public}s", v34, 0x2Au);
      v48 = v60;
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v48, -1, -1);
      MEMORY[0x1E694F1C0](v34, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v17, v12);
    }

    (*(v65 + 8))(v27, v66);
  }

  else
  {
    sub_1E65DDD28();
    (*(v13 + 16))(v22, a7, v12);

    v49 = sub_1E65E3B48();
    v50 = sub_1E65E6338();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v70 = v60;
      *v51 = 136446722;
      *(v51 + 4) = sub_1E5DFD4B0(v61, a3, &v70);
      *(v51 + 12) = 2082;
      v52 = sub_1E65E68B8();
      v54 = sub_1E5DFD4B0(v52, v53, &v70);

      *(v51 + 14) = v54;
      *(v51 + 22) = 2048;
      sub_1E65D7688();
      sub_1E65D7628();
      v56 = v55;
      v57 = *(v13 + 8);
      v57(v20, v12);
      v57(v22, v12);
      *(v51 + 24) = v56;
      _os_log_impl(&dword_1E5DE9000, v49, v50, "[%{public}s] %{public}s ended in %fs", v51, 0x20u);
      v58 = v60;
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v58, -1, -1);
      MEMORY[0x1E694F1C0](v51, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v22, v12);
    }

    (*(v65 + 8))(v29, v66);
  }

  sub_1E65DE428();
  return sub_1E65DDCA8();
}

uint64_t sub_1E5FEA8EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(a1, a3);
}

uint64_t sub_1E5FEA918()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);

  return sub_1E5FD32A0((v0 + v2), v5, v6, v7, (v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E5FEA9C0@<X0>(__int128 *a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);

  return sub_1E5FE7F74(v1 + v4, v6, v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8), (v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)), a1);
}

double sub_1E5FEAA74@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  *&result = sub_1E5FE8E80(v1 + v4, v1 + v5, v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8), a1).n128_u64[0];
  return result;
}

unint64_t sub_1E5FEAB1C()
{
  result = qword_1ED072738;
  if (!qword_1ED072738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072720, &qword_1E65EBBD0);
    sub_1E5FED46C(&qword_1ED072740, &qword_1ED072748, &qword_1E65EBBE8);
    sub_1E5FED46C(&qword_1ED072750, &qword_1ED072758, &qword_1E65EBBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072738);
  }

  return result;
}

unint64_t sub_1E5FEAC00()
{
  result = qword_1EE2D4EE0;
  if (!qword_1EE2D4EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072728, &qword_1E65EBBD8);
    sub_1E5FED46C(&qword_1EE2D6538, &qword_1ED072760, &qword_1E65EBBF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4EE0);
  }

  return result;
}

unint64_t sub_1E5FEACB8()
{
  result = qword_1EE2D4EE8;
  if (!qword_1EE2D4EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072730, &qword_1E65EBBE0);
    sub_1E5FEDF78(&qword_1EE2D6D98, MEMORY[0x1E699D0D8]);
    sub_1E5FEAD74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4EE8);
  }

  return result;
}

unint64_t sub_1E5FEAD74()
{
  result = qword_1EE2D4DA0;
  if (!qword_1EE2D4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4DA0);
  }

  return result;
}

uint64_t sub_1E5FEADC8()
{
  v0 = *(type metadata accessor for AppComposer() - 8);
  v1 = (*(v0 + 64) + ((*(v0 + 80) + 16) & ~*(v0 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E631700C();
}

unint64_t sub_1E5FEAE50()
{
  result = qword_1EE2D7B00;
  if (!qword_1EE2D7B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7B00);
  }

  return result;
}

unint64_t sub_1E5FEAEA4()
{
  result = qword_1ED072770;
  if (!qword_1ED072770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0726F8, &qword_1E65EBB80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0726F0, &qword_1E65EBB78);
    sub_1E5FED46C(&qword_1ED072768, &qword_1ED0726F0, &qword_1E65EBB78);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072770);
  }

  return result;
}

uint64_t sub_1E5FEAFB8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1E5FEB02C()
{
  result = qword_1ED072778;
  if (!qword_1ED072778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072700, &qword_1E65EBB88);
    sub_1E5FEAEA4();
    sub_1E5FED46C(qword_1EE2D85C0, &unk_1ED07A4B0, &unk_1E65FA7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072778);
  }

  return result;
}

unint64_t sub_1E5FEB0E4()
{
  result = qword_1ED072780;
  if (!qword_1ED072780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072708, &unk_1E65FA530);
    sub_1E5FEB02C();
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072780);
  }

  return result;
}

unint64_t sub_1E5FEB170()
{
  result = qword_1EE2D8840;
  if (!qword_1EE2D8840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D8840);
  }

  return result;
}

uint64_t sub_1E5FEB1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v9 = a1 <= a2;
    if (a3 > 0)
    {
      v9 = a1 >= a2;
    }

    if (v9)
    {
      if ((a1 != a2) | v5 & 1 || !(v7 & 1 | (v6 != 0x8000000000000000)))
      {
        return result;
      }

      v5 = 1;
    }

    else
    {
      v8 = __OFADD__(a1, a3);
      a1 += a3;
      if (v8)
      {
        a1 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        v6 = 0x8000000000000000;
      }

      else
      {
        v6 = 0;
      }

      v7 = !v8;
    }

    v8 = __OFADD__(result++, 1);
  }

  while (!v8);
  __break(1u);
  return result;
}

uint64_t sub_1E5FEB274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for AppComposer() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1E632D0EC(a1, a2, v8, a3);
}

unint64_t sub_1E5FEB2FC()
{
  result = qword_1EE2D4E80;
  if (!qword_1EE2D4E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077870, &unk_1E65FA560);
    sub_1E5FEB3B4();
    sub_1E5FED46C(&qword_1EE2D4DB0, &qword_1ED0727A8, &qword_1E65EBC28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E80);
  }

  return result;
}

unint64_t sub_1E5FEB3B4()
{
  result = qword_1EE2D4BB0;
  if (!qword_1EE2D4BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077880, &unk_1E65FA570);
    sub_1E5FEB438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4BB0);
  }

  return result;
}

unint64_t sub_1E5FEB438()
{
  result = qword_1EE2D4C68;
  if (!qword_1EE2D4C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077890, &qword_1E65EBC08);
    sub_1E5FEB4C4();
    sub_1E5FEB7A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4C68);
  }

  return result;
}

unint64_t sub_1E5FEB4C4()
{
  result = qword_1EE2D4CC0;
  if (!qword_1EE2D4CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0778A0, &unk_1E65FA580);
    sub_1E5FEB550();
    sub_1E5FEB638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4CC0);
  }

  return result;
}

unint64_t sub_1E5FEB550()
{
  result = qword_1EE2D4D68;
  if (!qword_1EE2D4D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0778B0, &qword_1E65EBC10);
    sub_1E5FEDF78(qword_1EE2D6BF8, MEMORY[0x1E699D198]);
    sub_1E5FED46C(qword_1EE2D4F50, &qword_1ED072790, &unk_1E65FA590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D68);
  }

  return result;
}

unint64_t sub_1E5FEB638()
{
  result = qword_1EE2D4D80;
  if (!qword_1EE2D4D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072798, &qword_1E65EBC18);
    sub_1E5FEDF78(&qword_1EE2D6DC0, MEMORY[0x1E699CFB8]);
    sub_1E5FEB6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D80);
  }

  return result;
}

unint64_t sub_1E5FEB6F4()
{
  result = qword_1EE2D4D10;
  if (!qword_1EE2D4D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0778C0, &unk_1E65FA5A0);
    sub_1E5FED46C(qword_1EE2D4F50, &qword_1ED072790, &unk_1E65FA590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D10);
  }

  return result;
}

unint64_t sub_1E5FEB7A4()
{
  result = qword_1EE2D4D70;
  if (!qword_1EE2D4D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0778D0, &qword_1E65EBC20);
    sub_1E5FEDF78(&qword_1EE2D6DA0, MEMORY[0x1E699D070]);
    sub_1E5FEB860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D70);
  }

  return result;
}

unint64_t sub_1E5FEB860()
{
  result = qword_1EE2D4D90;
  if (!qword_1EE2D4D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727A0, &unk_1E65FA5B0);
    sub_1E5FEDF78(&qword_1EE2D49B0, MEMORY[0x1E69CD8A8]);
    sub_1E5FEDF78(qword_1EE2D7828, type metadata accessor for WorkoutPlanArtworkViewRepresentable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D90);
  }

  return result;
}

uint64_t sub_1E5FEB964(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t, unint64_t))
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  return a2(a1, v2 + v5, v2 + v6, v2 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1E5FEBA30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_1E65D76F8() - 8);
  return sub_1E64FE26C(a1, *(v2 + 16), v2 + v6, *(v2 + v7), v2 + v8, v2 + v9, *(v2 + ((v9 + 87) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v9 + 87) & 0xFFFFFFFFFFFFFFF8) + 8), a2, v2 + ((*(v10 + 80) + ((v9 + 87) & 0xFFFFFFFFFFFFFFF8) + 16) & ~*(v10 + 80)));
}

uint64_t sub_1E5FEBB60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 18) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 87) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_1E65D76F8() - 8);
  v12 = (*(v11 + 80) + v10 + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_1E65E3C48() - 8);
  return sub_1E651B5CC(a1, *(v2 + 16), *(v2 + 17), v2 + v6, *(v2 + v7), v2 + v8, (v2 + v9), *(v2 + v10), a2, *(v2 + v10 + 8), v2 + v12, v2 + ((v13 + *(v14 + 80) + v12) & ~*(v14 + 80)));
}

uint64_t sub_1E5FEBCF4(uint64_t a1, char a2)
{
  v6 = *(type metadata accessor for AppComposer() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E5FD4414(a1, a2, v2 + v7);
}

uint64_t sub_1E5FEBDD8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E5FE1B00(v0);
}

uint64_t sub_1E5FEBE68(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE1C7C(a1, v1 + v5);
}

uint64_t sub_1E5FEBF44(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE2110(a1, v1 + v5);
}

uint64_t sub_1E5FEC020(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE2520(a1, v1 + v5);
}

uint64_t sub_1E5FEC0FC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE2930(a1, v1 + v5);
}

uint64_t sub_1E5FEC1D8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE2AD8(a1, v1 + v5);
}

uint64_t sub_1E5FEC2B4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE2F00(a1, v1 + v5);
}

uint64_t sub_1E5FEC390(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE3504(a1, v1 + v5);
}

uint64_t sub_1E5FEC46C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE37C0(a1, v1 + v5);
}

uint64_t sub_1E5FEC548(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE3968(a1, v1 + v5);
}

uint64_t sub_1E5FEC624(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E5FE3DBC(a1, v1 + v5);
}

uint64_t sub_1E5FEC700(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE41C8(a1, v1 + v5);
}

uint64_t sub_1E5FEC7DC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE4654(a1, v1 + v5);
}

uint64_t sub_1E5FEC8B8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE4910(a1, v1 + v5);
}

uint64_t sub_1E5FEC994(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE4D1C(a1, v1 + v5);
}

uint64_t sub_1E5FECA70()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E5FE5048(v0 + v3);
}

uint64_t sub_1E5FECB3C()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E5FE521C(v0 + v3);
}

uint64_t sub_1E5FECC08()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FE99E8;

  return sub_1E5FE57E0(v0 + v3);
}

uint64_t sub_1E5FECCD4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E5FE5B84(v0);
}

uint64_t sub_1E5FECD64()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v5);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E5FE5CFC(v0 + v3, v7, v8, v9);
}

uint64_t sub_1E5FECE88()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FE99E8;

  return sub_1E5FE6AD4(v0 + v3);
}

uint64_t sub_1E5FECF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1E5FE7070(a1, v2 + v6, v8, v9, a2);
}

uint64_t sub_1E5FED004(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for AppComposer() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E5FE7C14(a1, a2, a3, v3 + v8, v9);
}

uint64_t sub_1E5FED0B8(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 3u)
  {
    if (a6 == 4)
    {
LABEL_4:
    }

    if (a6 == 5)
    {
    }
  }

  else if (a6 == 1)
  {

    return sub_1E5FED148(result, a2, a3);
  }

  else if (a6 == 3)
  {
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_1E5FED148(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1E5FED15C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65DC6E8() - 8);
  v6 = (*(v5 + 80) + 73) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1E65DC4B8() - 8);
  v9 = (v7 + *(v8 + 80) + 80) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFA78C;

  return sub_1E607A94C(a1, v10, v11, v1 + 32, v1 + v6, v1 + v7, v1 + v9);
}

uint64_t sub_1E5FED324(uint64_t result, uint64_t a2, char a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {

    return sub_1E5FED148(result, a2, a3);
  }

  return result;
}

uint64_t sub_1E5FED384(uint64_t result, uint64_t a2, char a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {

    return sub_1E5FED3E4(result, a2, a3);
  }

  return result;
}

uint64_t sub_1E5FED3E4(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1E5FED3F8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1E5FED40C(uint64_t a1, unint64_t a2)
{
  if (a2 != 6)
  {
    return sub_1E5E05374(a1, a2);
  }

  return a1;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1E694F1C0);
  }

  return result;
}

uint64_t sub_1E5FED46C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5FED4B4(void *a1)
{
  v3 = *(sub_1E65D76A8() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E5FEA280(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E5FED568(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65D76F8() - 8);
  v9 = v1 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));
  v10 = *(v9 + *(v8 + 64));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1E5DFE6BC;

  return sub_1E5FE09EC(a1, v1 + v6, v9, v10);
}

uint64_t sub_1E5FED6D4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE0EF4(a1, v1 + v5);
}

uint64_t sub_1E5FED7B0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE1144(a1, v1 + v5);
}

uint64_t sub_1E5FED88C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE13A8(a1, v1 + v5);
}

uint64_t sub_1E5FED968(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE14DC(a1, v1 + v5);
}

uint64_t sub_1E5FEDA44(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE1764(a1, v1 + v5);
}

uint64_t sub_1E5FEDB20(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE1898(a1, v1 + v5);
}

uint64_t sub_1E5FEDBFC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FE19CC(a1, v1 + v5);
}

uint64_t sub_1E5FEDCF8@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = type metadata accessor for AppComposer();
  return sub_1E640A330(v4, *(v3 + *(v5 + 20) + 8), a1);
}

uint64_t sub_1E5FEDD5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5FEDDCC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v10);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1E5DFE6BC;

  return sub_1E612C8FC(a1, v12, v13, v1 + v6, v1 + v9, v14, v1 + v11);
}

uint64_t sub_1E5FEDF78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5FEDFC0(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteDestination() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FD0850(a1, v1 + 16, v1 + v5);
}

uint64_t sub_1E5FEE09C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E5FEE0FC()
{
  result = qword_1ED072980;
  if (!qword_1ED072980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072978, &unk_1E65F0E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072980);
  }

  return result;
}

unint64_t sub_1E5FEE178(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v50 = a1;
  v51 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v52 = v8;
  v53 = 0;
  v54 = v11 & v9;
  v55 = a2;
  v56 = a3;

  sub_1E6121040(&v46);
  if (!*(&v48 + 1))
  {
    goto LABEL_25;
  }

  v12 = v46;
  v43 = v47;
  v44 = v48;
  v45 = v49;
  v13 = *a5;
  result = sub_1E641708C(v46);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_1E6419AF8(v19, a4 & 1);
    v21 = *a5;
    result = sub_1E641708C(v12);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1E65E6C68();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v24 = result;
    sub_1E6423608();
    result = v24;
    v23 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v20)
  {
LABEL_11:
    sub_1E5FEE468(&v43, v23[7] + 40 * result);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  *(v23[6] + result) = v12;
  v25 = v23[7] + 40 * result;
  v26 = v43;
  v27 = v44;
  *(v25 + 32) = v45;
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v23[2];
  v18 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v18)
  {
    v23[2] = v29;
LABEL_15:
    sub_1E6121040(&v46);
    if (*(&v48 + 1))
    {
      v20 = 1;
      do
      {
        v12 = v46;
        v43 = v47;
        v44 = v48;
        v45 = v49;
        v30 = *a5;
        result = sub_1E641708C(v46);
        v32 = v30[2];
        v33 = (v31 & 1) == 0;
        v18 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v31;
        if (v30[3] < v34)
        {
          sub_1E6419AF8(v34, 1);
          v35 = *a5;
          result = sub_1E641708C(v12);
          if ((a4 & 1) != (v36 & 1))
          {
            goto LABEL_8;
          }
        }

        v37 = *a5;
        if (a4)
        {
          sub_1E5FEE468(&v43, v37[7] + 40 * result);
        }

        else
        {
          v37[(result >> 6) + 8] |= 1 << result;
          *(v37[6] + result) = v12;
          v38 = v37[7] + 40 * result;
          v39 = v43;
          v40 = v44;
          *(v38 + 32) = v45;
          *v38 = v39;
          *(v38 + 16) = v40;
          v41 = v37[2];
          v18 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v37[2] = v42;
        }

        sub_1E6121040(&v46);
      }

      while (*(&v48 + 1));
    }

LABEL_25:
    sub_1E5E24EE4();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t AppComposer.libraryGalleryViewBuilder(_:currentRoutingContext:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v55 = a1;
  v63 = a3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072998, &qword_1E65EC170);
  v62 = *(v59 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v57 = v50 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729A0, &unk_1E65FA520);
  v7 = *(*(v61 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v61);
  v58 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v60 = v50 - v10;
  v11 = type metadata accessor for AppComposer();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729A8, &qword_1E65EC178);
  v54 = *(v56 - 8);
  v15 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v17 = v50 - v16;
  v18 = sub_1E65DF458();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = sub_1E65DF2D8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v3;
  v53 = *v3;
  sub_1E5DF650C(a2, v72);
  v25 = swift_allocObject();
  sub_1E5DF599C(v72, v25 + 16);
  sub_1E65DF448();
  sub_1E65DF2C8();
  v64 = v14;
  sub_1E5E1DEAC(v3, v14);
  v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v67 = *(v12 + 80);
  v68 = v26;
  v27 = v26 + v13;
  v65 = v26 + v13;
  v28 = swift_allocObject();
  sub_1E5E1FA80(v14, v28 + v26);
  LOBYTE(v12) = v55;
  *(v28 + v27) = v55;
  type metadata accessor for AppFeature();
  sub_1E5FF0644(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E5FF0644(&qword_1ED0729B0, MEMORY[0x1E699E5D0]);
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v50[3] = sub_1E65E4F08();
  (*(v54 + 8))(v17, v56);
  (*(v21 + 8))(v24, v20);
  sub_1E65E5148();
  v56 = sub_1E65E5138();
  LOBYTE(v24) = v12;
  v29 = v51;
  v30 = v66;
  sub_1E5FEF474(v12, v56, v51, v66, v72);
  v31 = v64;
  sub_1E5E1DEAC(v30, v64);
  v53 = *(&v72[0] + 1);
  v54 = *&v72[0];
  v52 = v73;
  v50[1] = v74;
  v50[4] = v75;
  v50[2] = v76;
  sub_1E5DF650C(v29, v71);
  v32 = v65;
  v33 = ((v65 & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  sub_1E5E1FA80(v31, v34 + v68);
  *(v34 + v32) = v24;
  v35 = v34 + (v32 & 0xFFFFFFFFFFFFFFF8);
  v36 = v72[0];
  *(v35 + 24) = v72[1];
  *(v35 + 8) = v36;
  *(v35 + 88) = v76;
  v37 = v74;
  *(v35 + 72) = v75;
  v38 = v73;
  *(v35 + 56) = v37;
  *(v35 + 40) = v38;
  sub_1E5DF599C(v71, v34 + v33);

  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729B8, &qword_1E65EC190);
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0729C0, &qword_1E65EC198);
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0729C8, &qword_1E65EC1A0);
  v41 = sub_1E5FED46C(&qword_1ED0729D0, &qword_1ED0729C8, &qword_1E65EC1A0);
  v69 = v40;
  v70 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v69 = v39;
  v70 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v43 = v57;
  sub_1E65DF278();
  v44 = v64;
  sub_1E5E1DEAC(v66, v64);
  v45 = swift_allocObject();
  sub_1E5E1FA80(v44, v45 + v68);
  sub_1E5FED46C(&qword_1ED0729D8, &qword_1ED072998, &qword_1E65EC170);
  v46 = v58;
  v47 = v59;
  sub_1E6259D5C(sub_1E5FF0278, v45, v59);

  swift_unknownObjectRelease();

  (*(v62 + 8))(v43, v47);
  sub_1E5FF02D8();
  v48 = v60;
  sub_1E5FEE4C8(v46);
  sub_1E5E4ABD8(v46);
  sub_1E5FEE4C8(v48);
  return sub_1E5E4ABD8(v48);
}

uint64_t sub_1E5FEEE24(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 32) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E5FEEE48, 0, 0);
}

uint64_t sub_1E5FEEE48()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 40);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_1E5FEEF74;
  v7 = *(v0 + 32);

  return v9(v7, v2, v3);
}

uint64_t sub_1E5FEEF74()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E5FEF068(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E5FEEE24(a1, v1 + 16);
}

uint64_t sub_1E5FEF100(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E65DF658();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = *(type metadata accessor for AppState() + 24);
  v6 = *(a2 + *(type metadata accessor for AppComposer() + 20) + 8);
  sub_1E6093FD0();
  return sub_1E65DF288();
}

uint64_t sub_1E5FEF1C0(uint64_t a1)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_1E5FEF100(a1, v4);
}

uint64_t sub_1E5FEF260(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729B8, &qword_1E65EC190);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  sub_1E60A2620(a2, a3, a4, v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0729C0, &qword_1E65EC198);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0729C8, &qword_1E65EC1A0);
  v17 = sub_1E5FED46C(&qword_1ED0729D0, &qword_1ED0729C8, &qword_1E65EC1A0);
  v21 = v16;
  v22 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v15;
  v22 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1E5FEE4C8(v12);
  v19 = *(v8 + 8);
  v19(v12, v7);
  sub_1E5FEE4C8(v14);
  return (v19)(v14, v7);
}

double sub_1E5FEF474@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v85 = a3;
  v75 = a5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072710, &qword_1E65EBB90);
  v73 = *(v74 - 8);
  v8 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v71 = v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D10, &unk_1E65FAA50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v65 = v60 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072718, &qword_1E65EBB98);
  v72 = *(v70 - 8);
  v13 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v69 = v60 - v14;
  v15 = type metadata accessor for AppComposer();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15 - 8);
  v68 = v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v60 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = v60 - v24;
  v27 = v26;
  v63 = v26;
  MEMORY[0x1EEE9AC00](v23);
  v29 = v60 - v28;
  sub_1E63AE64C(a1, a2, a4, &v90);
  *&v89 = 0;
  *(&v89 + 1) = 0xE000000000000000;
  sub_1E65E68A8();

  *&v89 = 0xD000000000000015;
  *(&v89 + 1) = 0x80000001E6610EC0;
  v30 = sub_1E65DF568();
  MEMORY[0x1E694D7C0](v30);

  v64 = v89;
  sub_1E5E1DEAC(a4, v29);
  v60[12] = v90;
  v60[13] = *(&v91 + 1);
  v60[14] = *(&v92 + 1);
  v60[15] = *(&v93 + 1);
  v60[16] = *(&v94 + 1);
  v31 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v32 = v31 + v27;
  v33 = *(v16 + 80);
  v34 = swift_allocObject();
  v67 = v34;
  sub_1E5E1FA80(v29, v34 + v31);
  v35 = (v34 + ((v32 + 7) & 0xFFFFFFFFFFFFFFF8));
  v36 = v93;
  v35[2] = v92;
  v35[3] = v36;
  v35[4] = v94;
  v37 = v91;
  *v35 = v90;
  v35[1] = v37;
  sub_1E5DF650C(v85, &v89);
  v38 = swift_allocObject();
  sub_1E5DF599C(&v89, v38 + 16);
  sub_1E5E1DEAC(a4, v25);
  v61 = v33;
  v39 = swift_allocObject();
  v84 = v39;
  sub_1E5E1FA80(v25, v39 + v31);
  *(v39 + v32) = a1;
  v62 = a4;
  sub_1E5E1DEAC(a4, v22);
  v40 = swift_allocObject();
  v82 = v40;
  sub_1E5E1FA80(v22, v40 + v31);
  *(v40 + v32) = a1;
  v66 = *a4;
  v85 = type metadata accessor for ActionButtonDescriptor(0);
  v83 = type metadata accessor for ArtworkDescriptor();
  v81 = type metadata accessor for ContextMenu(0);
  v80 = type metadata accessor for ItemContext();
  v79 = type metadata accessor for ItemMetrics();
  v78 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  v60[10] = type metadata accessor for SectionMetrics();
  v77 = type metadata accessor for ViewDescriptor();
  v60[9] = sub_1E5FF0644(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  v76 = sub_1E5FF0644(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  v60[8] = sub_1E5FF0644(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  v60[7] = sub_1E5FF0644(&qword_1EE2DB720, type metadata accessor for ItemContext);
  v60[6] = sub_1E5FF0644(&qword_1EE2DB738, type metadata accessor for ItemContext);
  v60[5] = sub_1E5FF0644(&qword_1EE2DB730, type metadata accessor for ItemContext);
  v60[4] = sub_1E5FF0644(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  v60[3] = sub_1E5FF0644(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
  v60[2] = sub_1E5FF0644(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
  v60[1] = sub_1E5DF11E0();
  v60[0] = sub_1E5DF1338();
  sub_1E5FF0644(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  swift_unknownObjectRetain();

  v60[11] = v38;

  sub_1E65DC178();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D20, &qword_1E65FAA70);

  v42 = sub_1E65DC168();
  v87 = v41;
  v88 = sub_1E5FED46C(&qword_1EE2D6BA8, &qword_1ED077D20, &qword_1E65FAA70);
  v86 = v42;
  v43 = v69;
  sub_1E65DC248();
  v44 = v68;
  sub_1E5E1DEAC(v62, v68);
  v45 = (v61 + 32) & ~v61;
  v46 = (v63 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v48 = v64;
  *(v47 + 16) = v64;
  sub_1E5E1FA80(v44, v47 + v45);
  v49 = (v47 + v46);
  *v49 = sub_1E5F8AA74;
  v49[1] = 0;
  *(swift_allocObject() + 16) = v48;
  type metadata accessor for AppFeature();
  sub_1E5FF0644(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E5FED46C(&qword_1EE2D6BA0, &qword_1ED072718, &qword_1E65EBB98);

  v50 = v71;
  v51 = v70;
  sub_1E65E4DE8();
  v52 = swift_allocObject();
  v53 = v67;
  *(v52 + 16) = sub_1E5FF0390;
  *(v52 + 24) = v53;

  sub_1E65E4CC8();
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1E5FE9CE8;
  *(v54 + 24) = v52;

  v55 = sub_1E65E4F08();

  (*(v73 + 8))(v50, v74);
  (*(v72 + 8))(v43, v51);
  v56 = v75;
  *v75 = v55;
  v57 = v90;
  *(v56 + 3) = v91;
  v58 = v93;
  *(v56 + 5) = v92;
  *(v56 + 7) = v58;
  result = *&v94;
  *(v56 + 9) = v94;
  *(v56 + 1) = v57;
  return result;
}

uint64_t sub_1E5FF01CC()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + v3);

  return sub_1E5FEF260(v0 + v2, v4, v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8, v0 + (((v3 & 0xFFFFFFFFFFFFFFF8) + 103) & 0xFFFFFFFFFFFFFFF8));
}

void *sub_1E5FF0278()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1E5FE9818(v2);
}

unint64_t sub_1E5FF02D8()
{
  result = qword_1ED0729E0;
  if (!qword_1ED0729E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0729A0, &unk_1E65FA520);
    sub_1E5FED46C(&qword_1ED0729D8, &qword_1ED072998, &qword_1E65EC170);
    sub_1E5FEB170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0729E0);
  }

  return result;
}

uint64_t sub_1E5FF0390(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E60E46CC(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E5FF0444(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  v6 = *(v5 + *(v4 + 64));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5FE99E8;

  return sub_1E60ABAC4(a1, v5, v6);
}

uint64_t sub_1E5FF0544(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  v6 = *(v5 + *(v4 + 64));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5FEE4D4;

  return sub_1E60AC228(a1, v5, v6);
}

uint64_t sub_1E5FF0644(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5FF0694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v5 = v9;
  if (v9 == 6)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v6 = v8;
    *(a2 + 24) = type metadata accessor for NavigationControllerRoutingContext();
    *(a2 + 32) = &off_1F5FA9B10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    sub_1E5E24114(&v8, boxed_opaque_existential_1);
    return sub_1E5E07DA0(v6, v5);
  }

  return result;
}

uint64_t sub_1E5FF075C(_OWORD *a1, uint64_t a2)
{
  *(v2 + 64) = a2;
  v4 = type metadata accessor for AppAction();
  *(v2 + 72) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1E5FF07FC, 0, 0);
}

uint64_t sub_1E5FF07FC()
{
  v42 = v0;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);

  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6338();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 64);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v40 = v7;
    *v6 = 136446210;
    v8 = *(v5 + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer);
    swift_getKeyPath();
    sub_1E65E4EC8();

    *(v0 + 48) = *(v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A08, &qword_1E65EC2A0);
    v9 = sub_1E65E6648();
    v11 = v10;
    sub_1E5E07DA0(*(v0 + 32), *(v0 + 40));
    v12 = sub_1E5DFD4B0(v9, v11, &v40);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_1E5DE9000, v3, v4, "Currently selected item is %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E694F1C0](v7, -1, -1);
    MEMORY[0x1E694F1C0](v6, -1, -1);
  }

  v13 = *(v0 + 96);
  *(v0 + 104) = *(*(v0 + 64) + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v14 = *(v0 + 16);
  v15 = *(v0 + 24);
  if (v15 == 6)
  {
    if (v13 == 6)
    {
      v15 = 6;
      sub_1E5E05374(*(v0 + 88), 6uLL);
LABEL_45:
      sub_1E5E07DA0(v14, v15);
LABEL_46:
      v36 = *(v0 + 80);

      v37 = *(v0 + 8);

      return v37();
    }

    goto LABEL_9;
  }

  if (v13 == 6)
  {
LABEL_9:
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    sub_1E5E05374(v17, v16);
    sub_1E5E07DA0(v14, v15);
    sub_1E5E07DA0(v17, v16);
    goto LABEL_10;
  }

  v24 = 0x65726F6C707865;
  v26 = *(v0 + 88);
  v25 = *(v0 + 96);
  if (v15 > 2)
  {
    switch(v15)
    {
      case 3:
        v27 = 0x686372616573;
        sub_1E5E05374(*(v0 + 88), *(v0 + 96));
        sub_1E5E05374(v26, v25);
        v29 = v14;
        v30 = 3;
        break;
      case 4:
        v27 = 0x7478654E7075;
        sub_1E5E05374(*(v0 + 88), *(v0 + 96));
        sub_1E5E05374(v26, v25);
        v29 = v14;
        v30 = 4;
        break;
      case 5:
        v27 = 0x736E616C70;
        sub_1E5E05374(*(v0 + 88), *(v0 + 96));
        sub_1E5E05374(v26, v25);
        sub_1E5FED40C(v14, 5uLL);
        v28 = 0xE500000000000000;
        goto LABEL_28;
      default:
        goto LABEL_24;
    }
  }

  else
  {
    if (!v15)
    {
      sub_1E5E05374(*(v0 + 88), *(v0 + 96));
      sub_1E5E05374(v26, v25);
      sub_1E5FED40C(v14, 0);
      v28 = 0xE700000000000000;
      v27 = 0x65726F6C707865;
      goto LABEL_28;
    }

    if (v15 != 1)
    {
      if (v15 == 2)
      {
        v27 = 0x7972617262696CLL;
        sub_1E5E05374(*(v0 + 88), *(v0 + 96));
        sub_1E5E05374(v26, v25);
        sub_1E5FED40C(v14, 2uLL);
        v28 = 0xE700000000000000;
        goto LABEL_28;
      }

LABEL_24:
      v40 = 0x7974696C61646F6DLL;
      v41 = 0xE90000000000003ALL;
      sub_1E5E05374(v26, v25);
      sub_1E5E05374(v26, v25);
      sub_1E5FED40C(v14, v15);
      MEMORY[0x1E694D7C0](v14, v15);
      v27 = v40;
      v28 = v41;
      goto LABEL_28;
    }

    v27 = 0x756F59726F66;
    sub_1E5E05374(*(v0 + 88), *(v0 + 96));
    sub_1E5E05374(v26, v25);
    v29 = v14;
    v30 = 1;
  }

  sub_1E5FED40C(v29, v30);
  v28 = 0xE600000000000000;
LABEL_28:
  v31 = *(v0 + 96);
  if (v31 > 2)
  {
    if (v31 == 3)
    {
      v32 = 0xE600000000000000;
      v24 = 0x686372616573;
      goto LABEL_42;
    }

    if (v31 != 4)
    {
      if (v31 == 5)
      {
        v32 = 0xE500000000000000;
        v24 = 0x736E616C70;
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v32 = 0xE600000000000000;
    v24 = 0x7478654E7075;
  }

  else
  {
    if (!v31)
    {
      v32 = 0xE700000000000000;
      goto LABEL_42;
    }

    if (v31 != 1)
    {
      if (v31 == 2)
      {
        v32 = 0xE700000000000000;
        v24 = 0x7972617262696CLL;
        goto LABEL_42;
      }

LABEL_39:
      v33 = *(v0 + 88);
      v40 = 0x7974696C61646F6DLL;
      v41 = 0xE90000000000003ALL;
      MEMORY[0x1E694D7C0](v33);
      v24 = v40;
      v32 = v41;
      goto LABEL_42;
    }

    v32 = 0xE600000000000000;
    v24 = 0x756F59726F66;
  }

LABEL_42:
  v35 = *(v0 + 88);
  v34 = *(v0 + 96);
  if (v27 == v24 && v28 == v32)
  {
    sub_1E5E07DA0(*(v0 + 88), *(v0 + 96));
    sub_1E5E0476C(v35, v34);
    sub_1E5E07DA0(v14, v15);

    goto LABEL_45;
  }

  v38 = sub_1E65E6C18();
  sub_1E5E07DA0(v35, v34);
  sub_1E5E0476C(v35, v34);
  sub_1E5E07DA0(v14, v15);

  sub_1E5E07DA0(v14, v15);
  if (v38)
  {
    goto LABEL_46;
  }

LABEL_10:
  v18 = *(v0 + 88);
  v19 = *(v0 + 96);
  v21 = *(v0 + 72);
  v20 = *(v0 + 80);
  *v20 = v18;
  v20[1] = v19;
  swift_storeEnumTagMultiPayload();
  sub_1E65E6058();
  sub_1E5E05374(v18, v19);
  *(v0 + 112) = sub_1E65E6048();
  v23 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5FF0E8C, v23, v22);
}

uint64_t sub_1E5FF0E8C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[10];

  sub_1E65E4EE8();
  sub_1E5FFF4B8(v3, type metadata accessor for AppAction);
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5FF0F1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v5 + 32) = a5;
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_1E5FF0FD4;

  return sub_1E5FA0B34(a3, a4, (v5 + 32));
}

uint64_t sub_1E5FF0FD4()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5FF1108, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E5FF1120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  *(v7 + 123) = a7;
  *(v7 + 122) = a6;
  *(v7 + 121) = a5;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 16) = a2;
  v8 = type metadata accessor for NavigationControllerRoutingContext();
  *(v7 + 40) = v8;
  v9 = *(v8 - 8);
  *(v7 + 48) = v9;
  *(v7 + 56) = *(v9 + 64);
  *(v7 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FF11F8, 0, 0);
}

uint64_t sub_1E5FF11F8()
{
  sub_1E65E6058();
  v0[9] = sub_1E65E6048();
  v2 = sub_1E65E5FC8();
  v0[10] = v2;
  v0[11] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1E5FF128C, v2, v1);
}

uint64_t sub_1E5FF128C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 123);
  v16 = *(v0 + 122);
  v4 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8 = (v7 + *(*(v0 + 40) + 24));
  v18 = *v8;
  v19 = v8[1];
  v9 = *(v0 + 121);
  ObjectType = swift_getObjectType();
  *(v0 + 120) = v3;
  sub_1E5FFEEF0(v7, v2, type metadata accessor for NavigationControllerRoutingContext);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = v10 + v1;
  v12 = swift_allocObject();
  *(v0 + 96) = v12;
  *(v12 + 16) = v6;
  sub_1E5FFF518(v2, v12 + v10, type metadata accessor for NavigationControllerRoutingContext);
  *(v12 + v11) = v16;
  v13 = v12 + (v11 & 0xFFFFFFFFFFFFFFF8);
  *(v13 + 8) = v5;
  *(v13 + 16) = v9;

  sub_1E5FA9D20(v5, v9);
  v14 = swift_task_alloc();
  *(v0 + 104) = v14;
  *v14 = v0;
  v14[1] = sub_1E5FF1438;

  return sub_1E61261B8((v0 + 120), &unk_1E65EA720, v12, ObjectType, v19);
}

uint64_t sub_1E5FF1438()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_1E5FF15DC;
  }

  else
  {
    v7 = sub_1E5FF1570;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E5FF1570()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5FF15DC()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_1E5FF1648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  *(v7 + 147) = a7;
  *(v7 + 146) = a6;
  *(v7 + 145) = a5;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 16) = a2;
  v8 = *(type metadata accessor for RouteDestination() - 8);
  *(v7 + 40) = v8;
  *(v7 + 48) = *(v8 + 64);
  *(v7 + 56) = swift_task_alloc();
  v9 = type metadata accessor for NavigationControllerRoutingContext();
  *(v7 + 64) = v9;
  v10 = *(v9 - 8);
  *(v7 + 72) = v10;
  *(v7 + 80) = *(v10 + 64);
  *(v7 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FF1780, 0, 0);
}

uint64_t sub_1E5FF1780()
{
  sub_1E65E6058();
  v0[12] = sub_1E65E6048();
  v2 = sub_1E65E5FC8();
  v0[13] = v2;
  v0[14] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1E5FF1814, v2, v1);
}

uint64_t sub_1E5FF1814()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v16 = *(v0 + 48);
  v17 = *(v0 + 80);
  v4 = *(v0 + 147);
  v19 = *(v0 + 146);
  v5 = *(v0 + 40);
  v18 = *(v0 + 32);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = (v6 + *(*(v0 + 64) + 24));
  v21 = *v8;
  v22 = v8[1];
  v9 = *(v0 + 145);
  ObjectType = swift_getObjectType();
  *(v0 + 144) = v4;
  sub_1E5FFEEF0(v6, v1, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5FFEEF0(v7, v3, type metadata accessor for RouteDestination);
  v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v11 = (v17 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v0 + 120) = v12;
  sub_1E5FFF518(v1, v12 + v10, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5FFF518(v3, v12 + v11, type metadata accessor for RouteDestination);
  *(v12 + v11 + v16) = v19;
  v13 = v12 + ((v11 + v16) & 0xFFFFFFFFFFFFFFF8);
  *(v13 + 8) = v18;
  *(v13 + 16) = v9;
  sub_1E5FA9D20(v18, v9);
  v14 = swift_task_alloc();
  *(v0 + 128) = v14;
  *v14 = v0;
  v14[1] = sub_1E5FF1A1C;

  return sub_1E61261B8((v0 + 144), &unk_1E65EA820, v12, ObjectType, v22);
}

uint64_t sub_1E5FF1A1C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 104);
  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = sub_1E5FF1BCC;
  }

  else
  {
    v7 = sub_1E5FF1B54;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E5FF1B54()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5FF1BCC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[17];

  return v4();
}

uint64_t sub_1E5FF1C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1E65D76A8();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_1E65D92D8();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = sub_1E65D74E8();
  v4[13] = v12;
  v13 = *(v12 - 8);
  v4[14] = v13;
  v14 = *(v13 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FF1E10, 0, 0);
}

uint64_t sub_1E5FF1E10()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 32);
  sub_1E5FF3144(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 112);
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    sub_1E5DFE50C(*(v0 + 96), &qword_1ED072340, &qword_1E65EA410);
    (*(v6 + 16))(v8, v7, v5);
    v10 = *(v0 + 128);
    v9 = *(v0 + 136);
    v11 = *(v0 + 120);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v14 = *(v0 + 64);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 136);
    v18 = *(v0 + 104);
    v19 = *(v0 + 112);
    v20 = *(v0 + 96);
    v21 = *(v19 + 32);
    *(v0 + 144) = v21;
    *(v0 + 152) = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v21(v17, v20, v18);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 40);
    v23 = sub_1E65E3B68();
    *(v0 + 160) = __swift_project_value_buffer(v23, qword_1EE2EA2A0);
    sub_1E65E3B18();
    v24 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
    *(v0 + 168) = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
    v25 = *(type metadata accessor for AppComposer() + 20);
    *(v0 + 280) = v25;
    v26 = v22 + v25;
    v27 = type metadata accessor for AppEnvironment();
    *(v0 + 176) = v27;
    v28 = v26 + *(v27 + 108) + v24;
    v29 = ServiceSubscriptionService.fetchServiceSubscription.getter();
    *(v0 + 184) = v30;
    v34 = (v29 + *v29);
    v31 = v29[1];
    v32 = swift_task_alloc();
    *(v0 + 192) = v32;
    *v32 = v0;
    v32[1] = sub_1E5FF20F4;
    v33 = *(v0 + 88);

    return v34(v33, 1);
  }
}

uint64_t sub_1E5FF20F4()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1E5FF299C;
  }

  else
  {
    v3 = sub_1E5FF2208;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E5FF2208()
{
  v42 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 88);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);

  sub_1E65D7698();
  LOBYTE(v2) = sub_1E65D92A8();
  (*(v4 + 8))(v3, v5);
  if (v2)
  {
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = *(v0 + 136);
    v9 = *(v0 + 104);
    v10 = *(v0 + 16);
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    v7(v10, v8, v9);
    v12 = *(v0 + 128);
    v11 = *(v0 + 136);
    v13 = *(v0 + 120);
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 64);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = *(v0 + 160);
    (*(*(v0 + 112) + 16))(*(v0 + 128), *(v0 + 136), *(v0 + 104));
    v20 = sub_1E65E3B48();
    v21 = sub_1E65E6338();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 128);
    v25 = *(v0 + 104);
    v24 = *(v0 + 112);
    if (v22)
    {
      v26 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v41 = v39;
      *v26 = 141558274;
      *(v26 + 4) = 1752392040;
      *(v26 + 12) = 2080;
      sub_1E5FFE9E4();
      v27 = sub_1E65E6BC8();
      v29 = v28;
      v30 = *(v24 + 8);
      v30(v23, v25);
      v31 = sub_1E5DFD4B0(v27, v29, &v41);

      *(v26 + 14) = v31;
      _os_log_impl(&dword_1E5DE9000, v20, v21, "Fetching redirectURL for %{mask.hash}s", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1E694F1C0](v39, -1, -1);
      MEMORY[0x1E694F1C0](v26, -1, -1);
    }

    else
    {

      v30 = *(v24 + 8);
      v30(v23, v25);
    }

    *(v0 + 208) = v30;
    v32 = *(v0 + 40) + *(v0 + 168) + *(v0 + 280) + *(*(v0 + 176) + 60);
    v33 = EngagementService.fetchEngagementRedirectURL.getter();
    *(v0 + 216) = v34;
    v40 = (v33 + *v33);
    v35 = v33[1];
    v36 = swift_task_alloc();
    *(v0 + 224) = v36;
    *v36 = v0;
    v36[1] = sub_1E5FF2588;
    v37 = *(v0 + 136);
    v38 = *(v0 + 16);

    return v40(v38, v37);
  }
}

uint64_t sub_1E5FF2588()
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 216);
  v6 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_1E5FF2CF8;
  }

  else
  {
    v4 = sub_1E5FF26B8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E5FF26B8()
{
  v1 = v0[26];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1(v2, v3);
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E5FF279C()
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 256);
  v6 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = sub_1E5FF3064;
  }

  else
  {
    v4 = sub_1E5FF28CC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E5FF28CC()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 136);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112) + 8;

  v1(v2, v3);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 120);
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  v10 = *(v0 + 64);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1E5FF299C()
{
  v35 = v0;
  v1 = *(v0 + 184);

  v2 = *(v0 + 200);
  *(v0 + 240) = v2;
  *(v0 + 284) = 4;
  sub_1E5FFF464();
  if (sub_1E65D97C8())
  {
    v3 = *(v0 + 160);
    (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 136), *(v0 + 104));
    v4 = sub_1E65E3B48();
    v5 = sub_1E65E6338();
    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = *(v0 + 104);
    if (v6)
    {
      v10 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = v32;
      *v10 = 141558274;
      *(v10 + 4) = 1752392040;
      *(v10 + 12) = 2080;
      sub_1E5FFE9E4();
      v11 = sub_1E65E6BC8();
      v13 = v12;
      v14 = *(v8 + 8);
      v14(v7, v9);
      v15 = sub_1E5DFD4B0(v11, v13, &v34);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_1E5DE9000, v4, v5, "Fetching redirectURL for %{mask.hash}s", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1E694F1C0](v32, -1, -1);
      MEMORY[0x1E694F1C0](v10, -1, -1);
    }

    else
    {

      v14 = *(v8 + 8);
      v14(v7, v9);
    }

    *(v0 + 248) = v14;
    v25 = *(v0 + 40) + *(v0 + 168) + *(v0 + 280) + *(*(v0 + 176) + 60);
    v26 = EngagementService.fetchEngagementRedirectURL.getter();
    *(v0 + 256) = v27;
    v33 = (v26 + *v26);
    v28 = v26[1];
    v29 = swift_task_alloc();
    *(v0 + 264) = v29;
    *v29 = v0;
    v29[1] = sub_1E5FF279C;
    v30 = *(v0 + 136);
    v31 = *(v0 + 16);

    return v33(v31, v30);
  }

  else
  {
    v16 = *(v0 + 152);
    (*(v0 + 144))(*(v0 + 16), *(v0 + 136), *(v0 + 104));

    v18 = *(v0 + 128);
    v17 = *(v0 + 136);
    v19 = *(v0 + 120);
    v21 = *(v0 + 88);
    v20 = *(v0 + 96);
    v22 = *(v0 + 64);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1E5FF2CF8()
{
  v34 = v0;
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  v1 = *(v0 + 232);
  *(v0 + 240) = v1;
  *(v0 + 284) = 4;
  sub_1E5FFF464();
  if (sub_1E65D97C8())
  {
    v2 = *(v0 + 160);
    (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 136), *(v0 + 104));
    v3 = sub_1E65E3B48();
    v4 = sub_1E65E6338();
    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);
    v8 = *(v0 + 104);
    if (v5)
    {
      v9 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = v31;
      *v9 = 141558274;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2080;
      sub_1E5FFE9E4();
      v10 = sub_1E65E6BC8();
      v12 = v11;
      v13 = *(v7 + 8);
      v13(v6, v8);
      v14 = sub_1E5DFD4B0(v10, v12, &v33);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_1E5DE9000, v3, v4, "Fetching redirectURL for %{mask.hash}s", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1E694F1C0](v31, -1, -1);
      MEMORY[0x1E694F1C0](v9, -1, -1);
    }

    else
    {

      v13 = *(v7 + 8);
      v13(v6, v8);
    }

    *(v0 + 248) = v13;
    v24 = *(v0 + 40) + *(v0 + 168) + *(v0 + 280) + *(*(v0 + 176) + 60);
    v25 = EngagementService.fetchEngagementRedirectURL.getter();
    *(v0 + 256) = v26;
    v32 = (v25 + *v25);
    v27 = v25[1];
    v28 = swift_task_alloc();
    *(v0 + 264) = v28;
    *v28 = v0;
    v28[1] = sub_1E5FF279C;
    v29 = *(v0 + 136);
    v30 = *(v0 + 16);

    return v32(v30, v29);
  }

  else
  {
    v15 = *(v0 + 152);
    (*(v0 + 144))(*(v0 + 16), *(v0 + 136), *(v0 + 104));

    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    v18 = *(v0 + 120);
    v20 = *(v0 + 88);
    v19 = *(v0 + 96);
    v21 = *(v0 + 64);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1E5FF3064()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = *(v0 + 88);
  v8 = *(v0 + 64);
  v9 = *(v0 + 112) + 8;

  v1(v3, v5);

  v10 = *(v0 + 8);
  v11 = *(v0 + 272);

  return v10();
}

uint64_t sub_1E5FF3144@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AppLaunchScope(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RouteSource(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URLContext(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - v17;
  sub_1E5FFEEF0(v2, v11, type metadata accessor for RouteSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if ((EnumCaseMultiPayload - 5) >= 5)
    {
      v24 = sub_1E65D8D48();
      (*(*(v24 - 8) + 8))(v11, v24);
    }
  }

  else
  {
    if ((EnumCaseMultiPayload - 1) < 2)
    {
      sub_1E5FFF518(v11, v18, type metadata accessor for URLContext);
      v20 = sub_1E65D74E8();
      v21 = *(v20 - 8);
      (*(v21 + 16))(a1, v18, v20);
      v22 = v18;
LABEL_4:
      sub_1E5FFF4B8(v22, type metadata accessor for URLContext);
      return (*(v21 + 56))(a1, 0, 1, v20);
    }

    if (EnumCaseMultiPayload)
    {
      sub_1E5FFF4B8(v11, type metadata accessor for RouteSource);
    }

    else
    {
      sub_1E5FFF518(v11, v7, type metadata accessor for AppLaunchScope);
      if (swift_getEnumCaseMultiPayload() <= 1)
      {
        sub_1E5FFF518(v7, v16, type metadata accessor for URLContext);
        v20 = sub_1E65D74E8();
        v21 = *(v20 - 8);
        (*(v21 + 16))(a1, v16, v20);
        v22 = v16;
        goto LABEL_4;
      }
    }
  }

  v25 = sub_1E65D74E8();
  return (*(*(v25 - 8) + 56))(a1, 1, 1, v25);
}

uint64_t sub_1E5FF34E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[117] = a5;
  v5[111] = a4;
  v5[105] = a3;
  v5[99] = a2;
  v5[93] = a1;
  v6 = type metadata accessor for RouteResource();
  v5[118] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[119] = swift_task_alloc();
  v8 = sub_1E65DB848();
  v5[120] = v8;
  v9 = *(v8 - 8);
  v5[121] = v9;
  v10 = *(v9 + 64) + 15;
  v5[122] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60) - 8) + 64) + 15;
  v5[123] = swift_task_alloc();
  v12 = sub_1E65DB438();
  v5[124] = v12;
  v13 = *(v12 - 8);
  v5[125] = v13;
  v14 = *(v13 + 64) + 15;
  v5[126] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670) - 8) + 64) + 15;
  v5[127] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70) - 8) + 64) + 15;
  v5[128] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v5[129] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78) - 8) + 64) + 15;
  v5[130] = swift_task_alloc();
  v19 = sub_1E65D7A38();
  v5[131] = v19;
  v20 = *(v19 - 8);
  v5[132] = v20;
  v21 = *(v20 + 64) + 15;
  v5[133] = swift_task_alloc();
  v5[134] = swift_task_alloc();
  v22 = sub_1E65D74E8();
  v5[135] = v22;
  v23 = *(v22 - 8);
  v5[136] = v23;
  v24 = *(v23 + 64) + 15;
  v5[137] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FF3818, 0, 0);
}

uint64_t sub_1E5FF3818()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 936);
  v5 = *(v0 + 792);
  v6 = *(v2 + 16);
  *(v0 + 1104) = v6;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  *(v0 + 1120) = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
  *(v0 + 1216) = *(type metadata accessor for AppComposer() + 20);
  *(v0 + 1220) = *(type metadata accessor for AppEnvironment() + 76);
  v7 = MarketingService.parseMarketingURLType.getter();
  *(v0 + 1128) = v8;
  v13 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 1136) = v10;
  *v10 = v0;
  v10[1] = sub_1E5FF3984;
  v11 = *(v0 + 792);

  return v13(v11);
}

uint64_t sub_1E5FF3984(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1136);
  v6 = *v2;
  *(*v2 + 1144) = v1;

  if (v1)
  {
    v7 = sub_1E5FF4D20;
  }

  else
  {
    v8 = *(v4 + 1128);

    *(v4 + 1152) = a1;
    v7 = sub_1E5FF3AB4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E5FF3AB4()
{
  v22 = *(v0 + 1112);
  v21 = *(v0 + 1104);
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1080);
  v25 = *(v0 + 1072);
  v27 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v28 = *(v0 + 1048);
  v4 = *(v0 + 1040);
  v5 = *(v0 + 1032);
  v23 = *(v0 + 1024);
  v24 = *(v0 + 1016);
  v29 = *(v0 + 1008);
  v26 = *(v0 + 984);
  v6 = *(v0 + 792);
  v30 = *(v0 + 1216) + *(v0 + 1220);
  v31 = *(v0 + 936) + *(v0 + 1120);
  (*(v1 + 8))(*(v0 + 1096), v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A38, &qword_1E65EC320);
  swift_asyncLet_begin();
  v7 = *MEMORY[0x1E69CBDA8];
  v8 = sub_1E65D8F38();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v4, v7, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  v21(v5, v6, v2);
  (*(v1 + 56))(v5, 0, 1, v2);
  v10 = sub_1E65D9908();
  (*(*(v10 - 8) + 56))(v23, 1, 1, v10);
  v11 = sub_1E65D9F88();
  (*(*(v11 - 8) + 56))(v24, 1, 1, v11);
  sub_1E65D7A28();
  (*(v3 + 16))(v27, v25, v28);
  sub_1E65D8CA8();
  v12 = sub_1E65D8CB8();
  (*(*(v12 - 8) + 56))(v26, 0, 1, v12);
  v13 = MEMORY[0x1E69E7CC0];
  sub_1E5FB8458(MEMORY[0x1E69E7CC0]);
  sub_1E5FB8458(v13);
  sub_1E65DB428();
  v14 = MarketingService.makeMarketingMetricConfiguration.getter();
  *(v0 + 1160) = v15;
  v32 = (v14 + *v14);
  v16 = v14[1];
  v17 = swift_task_alloc();
  *(v0 + 1168) = v17;
  *v17 = v0;
  v17[1] = sub_1E5FF3EDC;
  v18 = *(v0 + 1008);
  v19 = *(v0 + 976);

  return (v32)(v19, v18, 0);
}

uint64_t sub_1E5FF3EDC()
{
  v1 = *(*v0 + 1168);
  v2 = *(*v0 + 1160);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5FF3FF4, 0, 0);
}

uint64_t sub_1E5FF3FF4()
{
  v1 = *(v0 + 1152);
  if (v1)
  {
    if (v1 != 2)
    {
      if (v1 == 1)
      {
        v43 = *(v0 + 1104);
        v44 = *(v0 + 1112);
        v50 = *(v0 + 1048);
        v51 = *(v0 + 1072);
        v49 = *(v0 + 1008);
        v2 = *(v0 + 1000);
        v47 = *(v0 + 1056);
        v48 = *(v0 + 992);
        v3 = *(v0 + 976);
        v4 = *(v0 + 968);
        v5 = *(v0 + 960);
        v41 = *(v0 + 944);
        v42 = *(v0 + 1080);
        v45 = *(v0 + 840);
        v46 = *(v0 + 888);
        v40 = *(v0 + 792);
        v6 = *(v0 + 744);
        v52 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729E8, &qword_1E65EC228) + 48));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
        v7 = (type metadata accessor for RouteDestination() - 8);
        v8 = *(*v7 + 72);
        v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1E65EA670;
        v11 = v10 + v9;
        v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720D0, &unk_1E65EA290) + 48);
        (*(v4 + 16))(v11, v3, v5);
        v43(v11 + v12, v40, v42);
        swift_storeEnumTagMultiPayload();
        sub_1E5FFEEF0(v45, v11 + v7[7], type metadata accessor for RouteSource);
        *(v11 + v7[8]) = v46;
        v13 = *(v4 + 8);

        v13(v3, v5);
        (*(v2 + 8))(v49, v48);
        (*(v47 + 8))(v51, v50);
        *v6 = v10;
        *(v6 + 8) = 0;
        *(v6 + 16) = -64;
        *(v6 + 24) = xmmword_1E65EC1C0;
        *(v6 + 40) = 1;
        type metadata accessor for ResolvedURLRoute.Action(0);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for ResolvedURLRoute(0);
        *v52 = 0;
        v52[1] = 0;
        swift_storeEnumTagMultiPayload();
        v14 = sub_1E5FF45AC;
        v15 = v0 + 16;
        v16 = v0 + 696;
        v17 = v0 + 896;
      }

      else
      {
        v53 = *(v0 + 1072);
        v30 = *(v0 + 1056);
        v31 = *(v0 + 1048);
        v32 = *(v0 + 1008);
        v33 = *(v0 + 1000);
        v34 = *(v0 + 992);
        v35 = *(v0 + 976);
        v36 = *(v0 + 968);
        v37 = *(v0 + 960);
        sub_1E5FFEE9C();
        *(v0 + 1208) = swift_allocError();
        *v38 = 1;
        swift_willThrow();
        (*(v36 + 8))(v35, v37);
        (*(v33 + 8))(v32, v34);
        (*(v30 + 8))(v53, v31);
        v14 = sub_1E5FF4BF8;
        v15 = v0 + 16;
        v16 = v0 + 696;
        v17 = v0 + 656;
      }

      return MEMORY[0x1EEE6DEB0](v15, v16, v14, v17);
    }

    *(v0 + 1240) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729E8, &qword_1E65EC228) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
    v18 = type metadata accessor for RouteDestination();
    *(v0 + 1192) = v18;
    v19 = *(*(v18 - 8) + 72);
    *(v0 + 1244) = *(*(v18 - 8) + 80);
    v20 = swift_allocObject();
    *(v0 + 1200) = v20;
    *(v20 + 16) = xmmword_1E65EA670;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
    *(v0 + 1248) = *(v21 + 48);
    *(v0 + 1252) = *(v21 + 64);
    v22 = sub_1E5FF4974;
    v23 = v0 + 16;
    v24 = v0 + 696;
    v25 = v0 + 704;
  }

  else
  {
    *(v0 + 1224) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729E8, &qword_1E65EC228) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
    v26 = type metadata accessor for RouteDestination();
    *(v0 + 1176) = v26;
    v27 = *(*(v26 - 8) + 72);
    *(v0 + 1228) = *(*(v26 - 8) + 80);
    v28 = swift_allocObject();
    *(v0 + 1184) = v28;
    *(v28 + 16) = xmmword_1E65EA670;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
    *(v0 + 1232) = *(v29 + 48);
    *(v0 + 1236) = *(v29 + 64);
    v22 = sub_1E5FF45C8;
    v23 = v0 + 16;
    v24 = v0 + 696;
    v25 = v0 + 800;
  }

  return MEMORY[0x1EEE6DEB8](v23, v24, v22, v25);
}

uint64_t sub_1E5FF45E4()
{
  v1 = *(v0 + 1232);
  v23 = *(v0 + 1184);
  v19 = *(v0 + 1236);
  v20 = *(v0 + 1176);
  v17 = *(v0 + 1112);
  v16 = *(v0 + 1104);
  v15 = *(v0 + 1080);
  v28 = *(v0 + 1072);
  v26 = *(v0 + 1056);
  v27 = *(v0 + 1048);
  v25 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v24 = *(v0 + 992);
  v3 = *(v0 + 968);
  v4 = *(v0 + 960);
  v21 = v4;
  v22 = *(v0 + 976);
  v5 = *(v0 + 952);
  v6 = *(v0 + 944);
  v7 = *(v0 + 888);
  v18 = *(v0 + 840);
  v8 = *(v0 + 792);
  v9 = *(v0 + 744);
  v10 = v23 + ((*(v0 + 1228) + 32) & ~*(v0 + 1228));
  v29 = (v9 + *(v0 + 1224));
  v11 = *(v0 + 696);
  *v5 = v11;
  (*(v3 + 16))(&v5[v1]);
  v16(&v5[v19], v8, v15);
  swift_storeEnumTagMultiPayload();
  sub_1E5FFEEF0(v18, v10 + *(v20 + 20), type metadata accessor for RouteSource);
  sub_1E5FFF518(v5, v10, type metadata accessor for RouteResource);
  *(v10 + *(v20 + 24)) = v7;
  v12 = *(v3 + 8);

  v13 = v11;
  v12(v22, v21);
  (*(v2 + 8))(v25, v24);
  (*(v26 + 8))(v28, v27);
  *v9 = v23;
  *(v9 + 8) = 0;
  *(v9 + 16) = -64;
  *(v9 + 24) = xmmword_1E65EC1C0;
  *(v9 + 40) = 1;
  type metadata accessor for ResolvedURLRoute.Action(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ResolvedURLRoute(0);
  *v29 = 0;
  v29[1] = 0;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 696, sub_1E5FF484C, v0 + 848);
}

uint64_t sub_1E5FF4868()
{
  v1 = v0[137];
  v2 = v0[134];
  v3 = v0[133];
  v4 = v0[130];
  v5 = v0[129];
  v6 = v0[128];
  v7 = v0[127];
  v8 = v0[126];
  v9 = v0[123];
  v13 = v0[122];
  v14 = v0[119];
  v10 = v0[117];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E5FF4990()
{
  v1 = *(v0 + 1248);
  v23 = *(v0 + 1200);
  v19 = *(v0 + 1252);
  v20 = *(v0 + 1192);
  v17 = *(v0 + 1112);
  v16 = *(v0 + 1104);
  v15 = *(v0 + 1080);
  v28 = *(v0 + 1072);
  v26 = *(v0 + 1056);
  v27 = *(v0 + 1048);
  v25 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v24 = *(v0 + 992);
  v3 = *(v0 + 968);
  v4 = *(v0 + 960);
  v21 = v4;
  v22 = *(v0 + 976);
  v5 = *(v0 + 952);
  v6 = *(v0 + 944);
  v7 = *(v0 + 888);
  v18 = *(v0 + 840);
  v8 = *(v0 + 792);
  v9 = *(v0 + 744);
  v10 = v23 + ((*(v0 + 1244) + 32) & ~*(v0 + 1244));
  v29 = (v9 + *(v0 + 1240));
  v11 = *(v0 + 696);
  *v5 = v11;
  (*(v3 + 16))(&v5[v1]);
  v16(&v5[v19], v8, v15);
  swift_storeEnumTagMultiPayload();
  sub_1E5FFEEF0(v18, v10 + *(v20 + 20), type metadata accessor for RouteSource);
  sub_1E5FFF518(v5, v10, type metadata accessor for RouteResource);
  *(v10 + *(v20 + 24)) = v7;
  v12 = *(v3 + 8);

  v13 = v11;
  v12(v22, v21);
  (*(v2 + 8))(v25, v24);
  (*(v26 + 8))(v28, v27);
  *v9 = v23;
  *(v9 + 8) = 0;
  *(v9 + 16) = -64;
  *(v9 + 24) = xmmword_1E65EC1C0;
  *(v9 + 40) = 1;
  type metadata accessor for ResolvedURLRoute.Action(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ResolvedURLRoute(0);
  *v29 = 0;
  v29[1] = 0;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 696, sub_1E5FF45AC, v0 + 752);
}

uint64_t sub_1E5FF4C14()
{
  v1 = v0[117];

  v2 = v0[137];
  v3 = v0[134];
  v4 = v0[133];
  v5 = v0[130];
  v6 = v0[129];
  v7 = v0[128];
  v8 = v0[127];
  v9 = v0[126];
  v10 = v0[123];
  v11 = v0[122];
  v14 = v0[119];
  v15 = v0[151];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E5FF4D20()
{
  v1 = v0[143];
  v2 = v0[141];
  v3 = v0[137];
  v4 = v0[136];
  v5 = v0[135];

  sub_1E5FFE72C(v1, v3, "Failed to parse Marketing URL Type %s: %{public}s");

  (*(v4 + 8))(v3, v5);
  sub_1E5FFEE9C();
  swift_allocError();
  *v6 = 1;
  swift_willThrow();
  v7 = v0[137];
  v8 = v0[134];
  v9 = v0[133];
  v10 = v0[130];
  v11 = v0[129];
  v12 = v0[128];
  v13 = v0[127];
  v14 = v0[126];
  v15 = v0[123];
  v18 = v0[122];
  v19 = v0[119];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1E5FF4E98(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FF4EB8, 0, 0);
}

uint64_t sub_1E5FF4EB8()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
  v3 = v1 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 24) + v2;
  v5 = AccountService.fetchCurrentAccount.getter();
  v0[5] = v6;
  v10 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_1E5FF4FE0;

  return v10();
}

uint64_t sub_1E5FF4FE0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_1E5FF5134;
  }

  else
  {
    v8 = *(v4 + 40);

    *(v4 + 64) = a1;
    v7 = sub_1E5FF5110;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E5FF5134()
{
  v18 = v0;
  v1 = *(v0 + 40);

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 56);
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 56);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    *(v0 + 16) = v8;
    v11 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v12 = sub_1E65E5CE8();
    v14 = sub_1E5DFD4B0(v12, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to fetch current account: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  **(v0 + 24) = 0;
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1E5FF5308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[22] = a2;
  v5[23] = a3;
  v5[21] = a1;
  v6 = type metadata accessor for URLRoute();
  v5[26] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[27] = swift_task_alloc();
  v8 = sub_1E65DB848();
  v5[28] = v8;
  v9 = *(v8 - 8);
  v5[29] = v9;
  v10 = *(v9 + 64) + 15;
  v5[30] = swift_task_alloc();
  v11 = type metadata accessor for AppEnvironment();
  v5[31] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v5[32] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60) - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v14 = sub_1E65DB438();
  v5[34] = v14;
  v15 = *(v14 - 8);
  v5[35] = v15;
  v16 = *(v15 + 64) + 15;
  v5[36] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670) - 8) + 64) + 15;
  v5[37] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70) - 8) + 64) + 15;
  v5[38] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v5[39] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78) - 8) + 64) + 15;
  v5[40] = swift_task_alloc();
  v21 = sub_1E65D7A38();
  v5[41] = v21;
  v22 = *(v21 - 8);
  v5[42] = v22;
  v23 = *(v22 + 64) + 15;
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v24 = sub_1E65D72D8();
  v5[45] = v24;
  v25 = *(v24 - 8);
  v5[46] = v25;
  v26 = *(v25 + 64) + 15;
  v5[47] = swift_task_alloc();
  v27 = sub_1E65D9898();
  v5[48] = v27;
  v28 = *(v27 - 8);
  v5[49] = v28;
  v29 = *(v28 + 64) + 15;
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v30 = type metadata accessor for RouteSource(0);
  v5[52] = v30;
  v31 = *(v30 - 8);
  v5[53] = v31;
  v5[54] = *(v31 + 64);
  v5[55] = swift_task_alloc();
  v32 = sub_1E65D7848();
  v5[56] = v32;
  v33 = *(v32 - 8);
  v5[57] = v33;
  v34 = *(v33 + 64) + 15;
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v35 = sub_1E65D74E8();
  v5[60] = v35;
  v36 = *(v35 - 8);
  v5[61] = v36;
  v5[62] = *(v36 + 64);
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v37 = _s8ResourceOMa();
  v5[67] = v37;
  v38 = *(*(v37 - 8) + 64) + 15;
  v5[68] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FF5854, 0, 0);
}

uint64_t sub_1E5FF5854()
{
  v245 = v0;
  v1 = *(v0 + 536);
  sub_1E5FFEEF0(*(v0 + 176), *(v0 + 544), _s8ResourceOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v3 = *(v0 + 544);
        v4 = *(v0 + 176);
        v5 = *v3;
        v6 = *(v3 + 8);
        v7 = *(v3 + 16);
        v8 = *(v3 + 24);
        v9 = *(*(v0 + 208) + 24);
        if (qword_1EE2D7790 != -1)
        {
          swift_once();
        }

        v10 = sub_1E65E3B68();
        __swift_project_value_buffer(v10, qword_1EE2EA2A0);
        sub_1E65E3B18();
        if (v8 <= 1)
        {
          if (!v8)
          {
            v153 = *(v0 + 184);
            v154 = *(v0 + 192);
            v155 = *(v0 + 168);
            LOBYTE(v244[0]) = v5;
            sub_1E6162540(v6, v7, v4 + v9, v153, v154, v155);
            sub_1E5FFF204(v5, v6, v7, 0);
            goto LABEL_51;
          }

          v186 = *(v0 + 440);
          v187 = *(v0 + 424);
          v188 = *(v0 + 168);
          sub_1E5FFEEF0(*(v0 + 184), v186, type metadata accessor for RouteSource);
          v189 = (*(v187 + 80) + 32) & ~*(v187 + 80);
          v190 = swift_allocObject();
          *(v190 + 16) = v5;
          *(v190 + 24) = v6;
          sub_1E5FFF518(v186, v190 + v189, type metadata accessor for RouteSource);
          *v188 = &unk_1E65EC2F8;
          v188[1] = v190;
          type metadata accessor for ResolvedURLRoute(0);
          goto LABEL_17;
        }

        if (v8 == 2)
        {
          v183 = *(v0 + 168);
          v184 = swift_allocObject();
          *(v184 + 16) = v5;
          *(v184 + 24) = v6;
          *v183 = &unk_1E65EC2F0;
          v183[1] = v184;
          goto LABEL_16;
        }

        if (v8 == 3)
        {
          v12 = *(v0 + 432);
          v11 = *(v0 + 440);
          v13 = *(v0 + 424);
          v14 = *(v0 + 192);
          v15 = *(v0 + 168);
          sub_1E5FFEEF0(*(v0 + 184), v11, type metadata accessor for RouteSource);
          v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
          v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
          v18 = swift_allocObject();
          *(v18 + 16) = v5;
          sub_1E5FFF518(v11, v18 + v16, type metadata accessor for RouteSource);
          *(v18 + v17) = v14;
          *v15 = &unk_1E65EC2E8;
          v15[1] = v18;
          type metadata accessor for ResolvedURLRoute(0);
          swift_storeEnumTagMultiPayload();

LABEL_51:
          v168 = *(v0 + 544);
          v169 = *(v0 + 528);
          v170 = *(v0 + 520);
          v172 = *(v0 + 504);
          v171 = *(v0 + 512);
          v174 = *(v0 + 464);
          v173 = *(v0 + 472);
          v175 = *(v0 + 440);
          v176 = *(v0 + 400);
          v177 = *(v0 + 408);
          v209 = *(v0 + 376);
          v211 = *(v0 + 352);
          v213 = *(v0 + 344);
          v215 = *(v0 + 320);
          v217 = *(v0 + 312);
          v219 = *(v0 + 304);
          v221 = *(v0 + 296);
          v223 = *(v0 + 288);
          v226 = *(v0 + 264);
          v231 = *(v0 + 256);
          v236 = *(v0 + 240);
          v243 = *(v0 + 216);

          v152 = *(v0 + 8);
          goto LABEL_52;
        }

        v185 = v7 | v6;
        if (v7 | v6 | v5)
        {
          if (v5 != 1 || v185)
          {
            if (v5 != 2 || v185)
            {
              if (v5 != 3 || v185)
              {
                v30 = *(v0 + 168);
                if (v5 != 4 || v185)
                {
                  v31 = &unk_1E65F36D0;
                }

                else
                {
                  v31 = &unk_1E65F36C8;
                }
              }

              else
              {
                v30 = *(v0 + 168);
                v31 = &unk_1E65F36C0;
              }
            }

            else
            {
              v30 = *(v0 + 168);
              v31 = &unk_1E65F36B8;
            }
          }

          else
          {
            v30 = *(v0 + 168);
            v31 = &unk_1E65F36B0;
          }
        }

        else
        {
          v30 = *(v0 + 168);
          v31 = &unk_1E65F36A8;
        }

LABEL_15:
        *v30 = v31;
        v30[1] = 0;
LABEL_16:
        type metadata accessor for ResolvedURLRoute(0);
LABEL_17:
        swift_storeEnumTagMultiPayload();
        goto LABEL_51;
      }

      if (qword_1EE2D7790 != -1)
      {
        swift_once();
      }

      v76 = *(v0 + 216);
      v77 = *(v0 + 176);
      v78 = sub_1E65E3B68();
      __swift_project_value_buffer(v78, qword_1EE2EA2A0);
      sub_1E5FFEEF0(v77, v76, type metadata accessor for URLRoute);
      v79 = sub_1E65E3B48();
      v80 = sub_1E65E6328();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = *(v0 + 480);
        v82 = *(v0 + 208);
        v83 = *(v0 + 216);
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v244[0] = v85;
        *v84 = 141558274;
        *(v84 + 4) = 1752392040;
        *(v84 + 12) = 2080;
        v86 = *(v82 + 24);
        sub_1E5FFE9E4();
        v87 = sub_1E65E6BC8();
        v89 = v88;
        sub_1E5FFF4B8(v83, type metadata accessor for URLRoute);
        v90 = sub_1E5DFD4B0(v87, v89, v244);

        *(v84 + 14) = v90;
        _os_log_impl(&dword_1E5DE9000, v79, v80, "Unrecognized URL: %{mask.hash}s", v84, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v85);
        MEMORY[0x1E694F1C0](v85, -1, -1);
        MEMORY[0x1E694F1C0](v84, -1, -1);
      }

      else
      {
        v139 = *(v0 + 216);

        sub_1E5FFF4B8(v139, type metadata accessor for URLRoute);
      }

      v140 = *(v0 + 544);
      sub_1E5FFEE9C();
      swift_allocError();
      *v141 = 0;
      swift_willThrow();
      sub_1E5FFF4B8(v140, _s8ResourceOMa);
LABEL_45:
      v142 = *(v0 + 544);
      v143 = *(v0 + 528);
      v144 = *(v0 + 520);
      v146 = *(v0 + 504);
      v145 = *(v0 + 512);
      v148 = *(v0 + 464);
      v147 = *(v0 + 472);
      v149 = *(v0 + 440);
      v150 = *(v0 + 400);
      v151 = *(v0 + 408);
      v207 = *(v0 + 376);
      v208 = *(v0 + 352);
      v210 = *(v0 + 344);
      v212 = *(v0 + 320);
      v214 = *(v0 + 312);
      v216 = *(v0 + 304);
      v218 = *(v0 + 296);
      v220 = *(v0 + 288);
      v222 = *(v0 + 264);
      v225 = *(v0 + 256);
      v230 = *(v0 + 240);
      v235 = *(v0 + 216);

      v152 = *(v0 + 8);
LABEL_52:

      return v152();
    }

    if (EnumCaseMultiPayload == 5)
    {
      v30 = *(v0 + 168);
      v31 = &unk_1E65EC2E0;
      goto LABEL_15;
    }

    v91 = *(v0 + 248);
    v92 = *(v0 + 200);
    v93 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
    *(v0 + 656) = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
    v94 = *(type metadata accessor for AppComposer() + 20);
    *(v0 + 708) = v94;
    v95 = v92 + v94 + *(v91 + 48) + v93;
    v96 = CatalogService.fetchRemoteExploreTrainerTipShelfLockupDescriptor.getter();
    *(v0 + 664) = v97;
    v239 = (v96 + *v96);
    v98 = v96[1];
    v99 = swift_task_alloc();
    *(v0 + 672) = v99;
    *v99 = v0;
    v99[1] = sub_1E5FF80D8;
    v100 = *(v0 + 400);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = *(v0 + 544);
      v20 = *(v0 + 208);
      v22 = *(v0 + 184);
      v21 = *(v0 + 192);
      v23 = *(v0 + 168);
      v24 = *(v0 + 176);
      v25 = *(v19 + 8);
      v26 = *(v19 + 16);
      v27 = *(v19 + 32);
      v28 = *(v19 + 40);
      v29 = *(v19 + 48);

      LOBYTE(v244[0]) = v26;
      sub_1E6162540(v28, v29, v24 + *(v20 + 24), v22, v21, v23);

      goto LABEL_51;
    }

    v52 = *(v0 + 544);
    v53 = *(v0 + 528);
    v54 = *(v0 + 480);
    v55 = *(v0 + 488);
    v56 = *(v0 + 472);
    v57 = *(v0 + 200);
    v58 = *v52;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A28, &qword_1E6605420);
    v60 = *(v55 + 32);
    v60(v53, &v52[*(v59 + 48)], v54);
    v61 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
    *(v0 + 552) = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
    v62 = v57 + v61;
    v63 = *(v57 + v61);
    swift_getKeyPath();
    sub_1E65E4EC8();

    v64 = *(type metadata accessor for AppComposer() + 20);
    *(v0 + 688) = v64;
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v65 = sub_1E65E3B68();
    __swift_project_value_buffer(v65, qword_1EE2EA2A0);
    sub_1E65E3B18();
    if (v58 <= 1)
    {
      if (v58)
      {
        v156 = *(v0 + 528);
        v157 = *(v0 + 480);
        v158 = *(v0 + 488);
        v160 = *(v0 + 184);
        v159 = *(v0 + 192);
        v161 = *(v0 + 168);
        v162 = (v161 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729E8, &qword_1E65EC228) + 48));
        v163 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F0, &qword_1E65EC238) + 48);
        (*(v158 + 16))(v161, v156, v157);
        type metadata accessor for RouteResource();
        swift_storeEnumTagMultiPayload();
        v164 = type metadata accessor for RouteDestination();
        sub_1E5FFEEF0(v160, v161 + *(v164 + 20), type metadata accessor for RouteSource);
        *(v161 + *(v164 + 24)) = v159;
        *(v161 + v163) = 2;
        type metadata accessor for ResolvedURLRoute.Action(0);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for ResolvedURLRoute(0);
        *v162 = 0;
        v162[1] = 0;
      }

      else
      {
        v66 = *(v0 + 520);
        v67 = *(v0 + 488);
        v68 = *(v0 + 480);
        v69 = *(v0 + 440);
        v227 = *(v0 + 496);
        v70 = *(v0 + 424);
        v224 = *(v0 + 432);
        v71 = *(v0 + 184);
        v238 = *(v0 + 192);
        v72 = *(v0 + 168);
        (*(v67 + 16))(v66, *(v0 + 528), v68);
        sub_1E5FFEEF0(v71, v69, type metadata accessor for RouteSource);
        v73 = (*(v67 + 80) + 16) & ~*(v67 + 80);
        v74 = (v227 + *(v70 + 80) + v73) & ~*(v70 + 80);
        v75 = swift_allocObject();
        v60(v75 + v73, v66, v68);
        sub_1E5FFF518(v69, v75 + v74, type metadata accessor for RouteSource);
        *(v75 + ((v224 + v74 + 7) & 0xFFFFFFFFFFFFFFF8)) = v238;
        *v72 = &unk_1E65EC300;
        v72[1] = v75;
        type metadata accessor for ResolvedURLRoute(0);
      }

      swift_storeEnumTagMultiPayload();

      goto LABEL_50;
    }

    if (v58 != 2)
    {
      v178 = v62 + v64 + *(*(v0 + 248) + 48);
      v179 = CatalogService.fetchRemoteExploreTrainerTipShelfLockupDescriptor.getter();
      *(v0 + 560) = v180;
      v239 = (v179 + *v179);
      v181 = v179[1];
      v182 = swift_task_alloc();
      *(v0 + 568) = v182;
      *v182 = v0;
      v182[1] = sub_1E5FF6ED4;
      v100 = *(v0 + 408);
LABEL_31:

      return v239(v100);
    }

    v117 = *(v0 + 528);
    v118 = sub_1E65D7408();
    if (v119)
    {
      v120 = v118;
      v121 = v119;
      v122 = *(v0 + 528);
      v123 = sub_1E65D7418();
      if ((v124 & 1) == 0)
      {
        v125 = v123;
        v126 = *(v0 + 528);
        v127 = sub_1E65D73F8();
        if (v128)
        {
          v129 = v127;
          v130 = v128;
          v242 = *(v0 + 416);
          v131 = *(v0 + 168);
          v132 = (v131 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729E8, &qword_1E65EC228) + 48));
          v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F8, &unk_1E6602A80);
          v134 = v131 + v133[12];
          v229 = v133[20];
          v234 = v133[16];
          v135 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
          *v131 = v129;
          *(v131 + 8) = v130;
          *(v131 + 16) = v120;
          *(v131 + 24) = v121;
          *(v131 + 32) = v125;
          *(v131 + 40) = 3;
          v136 = sub_1E65D96F8();
          (*(*(v136 - 8) + 56))(v131 + v135, 1, 1, v136);
          *(v131 + 48) = 0;
          type metadata accessor for RouteResource();
          swift_storeEnumTagMultiPayload();
          v137 = type metadata accessor for RouteDestination();
          v138 = *(v137 + 20);
          swift_storeEnumTagMultiPayload();
          *(v131 + *(v137 + 24)) = MEMORY[0x1E69E7CD0];
          *v134 = 0;
          *(v134 + 8) = -64;
          *(v131 + v234) = xmmword_1E65EC1C0;
          *(v131 + v229) = 1;
          type metadata accessor for ResolvedURLRoute.Action(0);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for ResolvedURLRoute(0);
          *v132 = 0;
          v132[1] = 0;
          swift_storeEnumTagMultiPayload();
LABEL_50:
          v165 = *(v0 + 528);
          v166 = *(v0 + 480);
          v167 = *(v0 + 488);
          (*(*(v0 + 456) + 8))(*(v0 + 472), *(v0 + 448));
          (*(v167 + 8))(v165, v166);
          goto LABEL_51;
        }
      }
    }

    (*(*(v0 + 488) + 16))(*(v0 + 512), *(v0 + 528), *(v0 + 480));
    v191 = sub_1E65E3B48();
    v192 = sub_1E65E6328();
    v193 = os_log_type_enabled(v191, v192);
    v194 = *(v0 + 512);
    v195 = *(v0 + 480);
    v196 = *(v0 + 488);
    if (v193)
    {
      v197 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      v244[0] = v198;
      *v197 = 141558274;
      *(v197 + 4) = 1752392040;
      *(v197 + 12) = 2080;
      sub_1E5FFE9E4();
      v199 = sub_1E65E6BC8();
      v201 = v200;
      (*(v196 + 8))(v194, v195);
      v202 = sub_1E5DFD4B0(v199, v201, v244);

      *(v197 + 14) = v202;
      _os_log_impl(&dword_1E5DE9000, v191, v192, "Bad MultiUser URL: %{mask.hash}s", v197, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v198);
      MEMORY[0x1E694F1C0](v198, -1, -1);
      MEMORY[0x1E694F1C0](v197, -1, -1);
    }

    else
    {

      (*(v196 + 8))(v194, v195);
    }

    sub_1E5FAA54C();
    swift_allocError();
    *v203 = 4;
    swift_willThrow();
    v204 = *(v0 + 528);
    v205 = *(v0 + 480);
    v206 = *(v0 + 488);
    (*(*(v0 + 456) + 8))(*(v0 + 472), *(v0 + 448));
    (*(v206 + 8))(v204, v205);
    goto LABEL_45;
  }

  v32 = *(v0 + 504);
  v34 = *(v0 + 480);
  v33 = *(v0 + 488);
  v35 = *(v0 + 312);
  v36 = *(v0 + 320);
  v37 = *(v0 + 296);
  v232 = *(v0 + 304);
  v237 = *(v0 + 352);
  (*(v33 + 32))(v32, *(v0 + 544), v34);
  v38 = *MEMORY[0x1E69CBDD8];
  v39 = sub_1E65D8F38();
  v40 = *(v39 - 8);
  (*(v40 + 104))(v36, v38, v39);
  (*(v40 + 56))(v36, 0, 1, v39);
  v41 = *(v33 + 16);
  *(v0 + 584) = v41;
  *(v0 + 592) = (v33 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v41(v35, v32, v34);
  (*(v33 + 56))(v35, 0, 1, v34);
  v42 = sub_1E65D9908();
  (*(*(v42 - 8) + 56))(v232, 1, 1, v42);
  v43 = sub_1E65D9F88();
  (*(*(v43 - 8) + 56))(v37, 1, 1, v43);
  sub_1E65D7A28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A18, &qword_1E65EC2D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA670;
  *(inited + 32) = sub_1E65D8868();
  *(inited + 40) = v45;
  v46 = sub_1E65D74A8();
  if (v47 && (*(v0 + 136) = v46, *(v0 + 144) = v47, strcpy((v0 + 152), "sharedActivity"), *(v0 + 167) = -18, sub_1E5F9AEA8(), v48 = sub_1E65E66D8(), , (v48 & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072370, &qword_1E65EABA0);
    v49 = swift_initStackObject();
    *(v49 + 16) = xmmword_1E65EA670;
    *(v49 + 32) = sub_1E65D8878();
    *(v49 + 40) = v50;
    *(v49 + 48) = 0xD000000000000014;
    *(v49 + 56) = 0x80000001E6610A70;
    v51 = sub_1E6427498(v49);
    swift_setDeallocating();
    sub_1E5DFE50C(v49 + 32, &qword_1ED072378, &qword_1E65EABA8);
  }

  else
  {
    v51 = 0;
  }

  v102 = *(v0 + 344);
  v103 = *(v0 + 352);
  v105 = *(v0 + 328);
  v104 = *(v0 + 336);
  v106 = *(v0 + 256);
  v107 = *(v0 + 264);
  v240 = *(v0 + 248);
  v228 = *(v0 + 288);
  v233 = *(v0 + 200);
  *(inited + 48) = v51;
  v108 = sub_1E6427B08(inited);
  swift_setDeallocating();
  sub_1E5DFE50C(inited + 32, &qword_1ED072A20, &qword_1E65EC2D8);
  (*(v104 + 16))(v102, v103, v105);
  sub_1E65D8CA8();
  v109 = sub_1E65D8CB8();
  (*(*(v109 - 8) + 56))(v107, 0, 1, v109);
  sub_1E5FF8D10(v108);

  sub_1E5FB8458(MEMORY[0x1E69E7CC0]);
  sub_1E65DB428();
  v110 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
  v111 = type metadata accessor for AppComposer();
  sub_1E5FFEEF0(v233 + *(v111 + 20) + v110, v106, type metadata accessor for AppEnvironment);
  v112 = v106 + *(v240 + 24);
  v113 = AccountService.fetchCurrentAccount.getter();
  *(v0 + 600) = v114;
  v241 = (v113 + *v113);
  v115 = v113[1];
  v116 = swift_task_alloc();
  *(v0 + 608) = v116;
  *v116 = v0;
  v116[1] = sub_1E5FF7700;

  return v241();
}

uint64_t sub_1E5FF6ED4()
{
  v2 = *(*v1 + 568);
  v5 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {
    v3 = sub_1E5FF753C;
  }

  else
  {
    v3 = sub_1E5FF6FE8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E5FF6FE8()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 408);

  v3 = sub_1E65D9848();
  v4 = sub_1E634BE38(v3);
  if (v4 == 36)
  {
    v5 = *(v0 + 408);
    v6 = *(v0 + 384);
    v7 = *(v0 + 392);
    sub_1E5FFEE9C();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
    (*(v7 + 8))(v5, v6);
    v9 = *(v0 + 528);
    v10 = *(v0 + 480);
    v11 = *(v0 + 488);
    (*(*(v0 + 456) + 8))(*(v0 + 472), *(v0 + 448));
    (*(v11 + 8))(v9, v10);
    v12 = *(v0 + 544);
    v13 = *(v0 + 528);
    v14 = *(v0 + 520);
    v16 = *(v0 + 504);
    v15 = *(v0 + 512);
    v18 = *(v0 + 464);
    v17 = *(v0 + 472);
    v19 = *(v0 + 440);
    v20 = *(v0 + 400);
    v21 = *(v0 + 408);
    v50 = *(v0 + 376);
    v51 = *(v0 + 352);
    v53 = *(v0 + 344);
    v55 = *(v0 + 320);
    v57 = *(v0 + 312);
    v60 = *(v0 + 304);
    v63 = *(v0 + 296);
    v66 = *(v0 + 288);
    v69 = *(v0 + 264);
    v72 = *(v0 + 256);
    v75 = *(v0 + 240);
    v78 = *(v0 + 216);
  }

  else
  {
    v23 = v4;
    v24 = *(v0 + 408);
    v76 = *(v0 + 392);
    v79 = *(v0 + 384);
    v25 = *(v0 + 368);
    v58 = *(v0 + 376);
    v61 = *(v0 + 472);
    v64 = *(v0 + 360);
    v26 = *(v0 + 248);
    v73 = *(v0 + 184);
    v27 = *(v0 + 200) + *(v0 + 552) + *(v0 + 688);
    v28 = *(v0 + 168);
    v81 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729E8, &qword_1E65EC228) + 48));
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A00, &qword_1E65EC288);
    v67 = *(v29 + 64);
    v70 = *(v29 + 48);
    v30 = sub_1E65D97F8();
    v32 = v31;
    v33 = sub_1E65D9888();
    sub_1E63C4134(v61, (v27 + *(v26 + 136)), v33, v58);

    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
    *v28 = v30;
    *(v28 + 8) = v32;
    *(v28 + 16) = 1;
    *(v28 + 17) = v23;
    (*(v25 + 16))(v28 + v34, v58, v64);
    type metadata accessor for RouteResource();
    swift_storeEnumTagMultiPayload();
    v35 = type metadata accessor for RouteDestination();
    sub_1E5FFEEF0(v73, v28 + *(v35 + 20), type metadata accessor for RouteSource);
    (*(v25 + 8))(v58, v64);
    (*(v76 + 8))(v24, v79);
    *(v28 + *(v35 + 24)) = MEMORY[0x1E69E7CD0];
    *(v28 + v70) = xmmword_1E65EAE00;
    *(v28 + v67) = 1;
    type metadata accessor for ResolvedURLRoute.Action(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ResolvedURLRoute(0);
    *v81 = 0;
    v81[1] = 0;
    swift_storeEnumTagMultiPayload();
    v36 = *(v0 + 528);
    v37 = *(v0 + 480);
    v38 = *(v0 + 488);
    (*(*(v0 + 456) + 8))(*(v0 + 472), *(v0 + 448));
    (*(v38 + 8))(v36, v37);
    v39 = *(v0 + 544);
    v40 = *(v0 + 528);
    v41 = *(v0 + 520);
    v43 = *(v0 + 504);
    v42 = *(v0 + 512);
    v45 = *(v0 + 464);
    v44 = *(v0 + 472);
    v46 = *(v0 + 440);
    v47 = *(v0 + 400);
    v48 = *(v0 + 408);
    v52 = *(v0 + 376);
    v54 = *(v0 + 352);
    v56 = *(v0 + 344);
    v59 = *(v0 + 320);
    v62 = *(v0 + 312);
    v65 = *(v0 + 304);
    v68 = *(v0 + 296);
    v71 = *(v0 + 288);
    v74 = *(v0 + 264);
    v77 = *(v0 + 256);
    v80 = *(v0 + 240);
    v82 = *(v0 + 216);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1E5FF753C()
{
  v1 = v0[70];

  v29 = v0[72];
  v2 = v0[66];
  v3 = v0[60];
  v4 = v0[61];
  (*(v0[57] + 8))(v0[59], v0[56]);
  (*(v4 + 8))(v2, v3);
  v5 = v0[68];
  v6 = v0[66];
  v7 = v0[65];
  v9 = v0[63];
  v8 = v0[64];
  v11 = v0[58];
  v10 = v0[59];
  v12 = v0[55];
  v14 = v0[50];
  v13 = v0[51];
  v17 = v0[47];
  v18 = v0[44];
  v19 = v0[43];
  v20 = v0[40];
  v21 = v0[39];
  v22 = v0[38];
  v23 = v0[37];
  v24 = v0[36];
  v25 = v0[33];
  v26 = v0[32];
  v27 = v0[30];
  v28 = v0[27];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1E5FF7700(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 608);
  v6 = *v2;
  *(*v2 + 616) = v1;

  if (v1)
  {
    v7 = sub_1E5FF7994;
  }

  else
  {
    v8 = *(v4 + 600);

    *(v4 + 624) = a1;
    v7 = sub_1E5FF7830;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E5FF7830()
{
  v1 = *(v0 + 624);
  *(v0 + 632) = v1;
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = v1;
  *(v0 + 692) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729E8, &qword_1E65EC228) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F8, &unk_1E6602A80);
  *(v0 + 696) = v5[12];
  *(v0 + 700) = v5[16];
  *(v0 + 704) = v5[20];
  v6 = v3 + *(v2 + 76);
  v7 = MarketingService.makeMarketingMetricConfiguration.getter();
  *(v0 + 640) = v8;
  v14 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v0 + 648) = v10;
  *v10 = v0;
  v10[1] = sub_1E5FF7C40;
  v11 = *(v0 + 288);
  v12 = *(v0 + 240);

  return (v14)(v12, v11, 0);
}

uint64_t sub_1E5FF7994()
{
  v1 = *(v0 + 600);

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 616);
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 616);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to fetch current account with error: %{public}@", v9, 0xCu);
    sub_1E5DFE50C(v10, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  else
  {
  }

  *(v0 + 632) = 0;
  v13 = *(v0 + 248);
  v14 = *(v0 + 256);
  *(v0 + 692) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729E8, &qword_1E65EC228) + 48);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F8, &unk_1E6602A80);
  *(v0 + 696) = v15[12];
  *(v0 + 700) = v15[16];
  *(v0 + 704) = v15[20];
  v16 = v14 + *(v13 + 76);
  v17 = MarketingService.makeMarketingMetricConfiguration.getter();
  *(v0 + 640) = v18;
  v24 = (v17 + *v17);
  v19 = v17[1];
  v20 = swift_task_alloc();
  *(v0 + 648) = v20;
  *v20 = v0;
  v20[1] = sub_1E5FF7C40;
  v21 = *(v0 + 288);
  v22 = *(v0 + 240);

  return (v24)(v22, v21, 0);
}

uint64_t sub_1E5FF7C40()
{
  v1 = *(*v0 + 648);
  v2 = *(*v0 + 640);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5FF7D58, 0, 0);
}

uint64_t sub_1E5FF7D58()
{
  v47 = *(v0 + 700);
  v49 = *(v0 + 704);
  v1 = *(v0 + 632);
  v25 = *(v0 + 584);
  v26 = *(v0 + 592);
  v2 = *(v0 + 504);
  v3 = *(v0 + 480);
  v41 = *(v0 + 352);
  v43 = *(v0 + 488);
  v29 = *(v0 + 336);
  v39 = *(v0 + 328);
  v4 = *(v0 + 280);
  v33 = *(v0 + 272);
  v35 = *(v0 + 288);
  v31 = *(v0 + 256);
  v5 = *(v0 + 232);
  v6 = *(v0 + 240);
  v7 = *(v0 + 224);
  v8 = *(v0 + 168);
  v37 = &v8[*(v0 + 696)];
  v45 = &v8[*(v0 + 692)];
  v27 = *(v0 + 184);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 64);
  *v8 = v1;
  (*(v5 + 16))(&v8[v10], v6, v7);
  v25(&v8[v11], v2, v3);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for RouteDestination();
  sub_1E5FFEEF0(v27, &v8[*(v12 + 20)], type metadata accessor for RouteSource);

  (*(v5 + 8))(v6, v7);
  sub_1E5FFF4B8(v31, type metadata accessor for AppEnvironment);
  *&v8[*(v12 + 24)] = MEMORY[0x1E69E7CD0];
  (*(v4 + 8))(v35, v33);
  (*(v29 + 8))(v41, v39);
  (*(v43 + 8))(v2, v3);
  *v37 = 0;
  v37[8] = -64;
  *&v8[v47] = xmmword_1E65EC1C0;
  v8[v49] = 1;
  type metadata accessor for ResolvedURLRoute.Action(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ResolvedURLRoute(0);
  *v45 = 0;
  *(v45 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  v13 = *(v0 + 544);
  v14 = *(v0 + 528);
  v15 = *(v0 + 520);
  v17 = *(v0 + 504);
  v16 = *(v0 + 512);
  v19 = *(v0 + 464);
  v18 = *(v0 + 472);
  v20 = *(v0 + 440);
  v21 = *(v0 + 400);
  v22 = *(v0 + 408);
  v28 = *(v0 + 376);
  v30 = *(v0 + 352);
  v32 = *(v0 + 344);
  v34 = *(v0 + 320);
  v36 = *(v0 + 312);
  v38 = *(v0 + 304);
  v40 = *(v0 + 296);
  v42 = *(v0 + 288);
  v44 = *(v0 + 264);
  v46 = *(v0 + 256);
  v48 = *(v0 + 240);
  v50 = *(v0 + 216);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1E5FF80D8()
{
  v2 = *(*v1 + 672);
  v5 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    v3 = sub_1E5FF8728;
  }

  else
  {
    v3 = sub_1E5FF81EC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E5FF81EC()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 400);

  v3 = sub_1E65D9848();
  v4 = sub_1E634BE38(v3);
  if (v4 == 36)
  {
    v6 = *(v0 + 392);
    v5 = *(v0 + 400);
    v7 = *(v0 + 384);
    sub_1E5FFEE9C();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
    (*(v6 + 8))(v5, v7);
    v9 = *(v0 + 544);
    v10 = *(v0 + 528);
    v11 = *(v0 + 520);
    v13 = *(v0 + 504);
    v12 = *(v0 + 512);
    v15 = *(v0 + 464);
    v14 = *(v0 + 472);
    v16 = *(v0 + 440);
    v18 = *(v0 + 400);
    v17 = *(v0 + 408);
    v45 = *(v0 + 376);
    v47 = *(v0 + 352);
    v50 = *(v0 + 344);
    v53 = *(v0 + 320);
    v56 = *(v0 + 312);
    v59 = *(v0 + 304);
    v62 = *(v0 + 296);
    v65 = *(v0 + 288);
    v68 = *(v0 + 264);
    v71 = *(v0 + 256);
    v74 = *(v0 + 240);
    v77 = *(v0 + 216);
  }

  else
  {
    v20 = v4;
    v21 = *(v0 + 456);
    v22 = *(v0 + 464);
    v23 = *(v0 + 400);
    v75 = *(v0 + 392);
    v78 = *(v0 + 384);
    v24 = *(v0 + 368);
    v54 = *(v0 + 376);
    v57 = *(v0 + 448);
    v60 = *(v0 + 360);
    v51 = *(v0 + 248);
    v72 = *(v0 + 184);
    v25 = (*(v0 + 200) + *(v0 + 656));
    v48 = v25 + *(v0 + 708);
    v26 = *(v0 + 168);
    v80 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729E8, &qword_1E65EC228) + 48));
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A00, &qword_1E65EC288);
    v66 = *(v27 + 64);
    v69 = *(v27 + 48);
    v63 = v23;
    v28 = sub_1E65D97F8();
    v46 = v29;
    v30 = sub_1E65D9888();
    v31 = *v25;
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E63C4134(v22, &v48[*(v51 + 136)], v30, v54);

    (*(v21 + 8))(v22, v57);
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
    *v26 = v28;
    *(v26 + 8) = v46;
    *(v26 + 16) = 1;
    *(v26 + 17) = v20;
    (*(v24 + 16))(v26 + v32, v54, v60);
    type metadata accessor for RouteResource();
    swift_storeEnumTagMultiPayload();
    v33 = type metadata accessor for RouteDestination();
    sub_1E5FFEEF0(v72, v26 + *(v33 + 20), type metadata accessor for RouteSource);
    (*(v24 + 8))(v54, v60);
    (*(v75 + 8))(v63, v78);
    *(v26 + *(v33 + 24)) = MEMORY[0x1E69E7CD0];
    *(v26 + v69) = xmmword_1E65EAE00;
    *(v26 + v66) = 1;
    type metadata accessor for ResolvedURLRoute.Action(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ResolvedURLRoute(0);
    *v80 = 0;
    v80[1] = 0;
    swift_storeEnumTagMultiPayload();
    v34 = *(v0 + 544);
    v35 = *(v0 + 528);
    v36 = *(v0 + 520);
    v38 = *(v0 + 504);
    v37 = *(v0 + 512);
    v40 = *(v0 + 464);
    v39 = *(v0 + 472);
    v41 = *(v0 + 440);
    v42 = *(v0 + 400);
    v43 = *(v0 + 408);
    v49 = *(v0 + 376);
    v52 = *(v0 + 352);
    v55 = *(v0 + 344);
    v58 = *(v0 + 320);
    v61 = *(v0 + 312);
    v64 = *(v0 + 304);
    v67 = *(v0 + 296);
    v70 = *(v0 + 288);
    v73 = *(v0 + 264);
    v76 = *(v0 + 256);
    v79 = *(v0 + 240);
    v81 = *(v0 + 216);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1E5FF8728()
{
  v1 = v0[83];

  v26 = v0[85];
  v2 = v0[68];
  v3 = v0[66];
  v4 = v0[65];
  v6 = v0[63];
  v5 = v0[64];
  v8 = v0[58];
  v7 = v0[59];
  v9 = v0[55];
  v11 = v0[50];
  v10 = v0[51];
  v14 = v0[47];
  v15 = v0[44];
  v16 = v0[43];
  v17 = v0[40];
  v18 = v0[39];
  v19 = v0[38];
  v20 = v0[37];
  v21 = v0[36];
  v22 = v0[33];
  v23 = v0[32];
  v24 = v0[30];
  v25 = v0[27];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E5FF88D4()
{
  v1 = __swift_project_boxed_opaque_existential_1(*(v0 + 72), *(*(v0 + 72) + 24));
  swift_beginAccess();
  v2 = qword_1ED075948;
  v3 = qword_1ED075950;
  *(v0 + 40) = qword_1ED075948;
  *(v0 + 48) = v3;
  v4 = *v1;
  sub_1E5E05374(v2, v3);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1E5FF89B0;

  return sub_1E5FF8FEC((v0 + 40), 0, v4);
}

uint64_t sub_1E5FF89B0()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v4 = *v0;

  sub_1E5FFF3B4(*(v1 + 40), *(v1 + 48));

  return MEMORY[0x1EEE6DFA0](sub_1E5FF8ADC, 0, 0);
}

uint64_t sub_1E5FF8ADC()
{
  v1 = __swift_project_boxed_opaque_existential_1(*(v0 + 72), *(*(v0 + 72) + 24));
  v3 = qword_1ED075948;
  v2 = qword_1ED075950;
  *(v0 + 88) = qword_1ED075948;
  *(v0 + 96) = v2;
  v4 = *v1;
  sub_1E5E05374(v3, v2);
  *(v0 + 56) = v3;
  *(v0 + 64) = v2;
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_1E5FF8BB0;

  return sub_1E5FF075C((v0 + 56), v4);
}

uint64_t sub_1E5FF8BB0()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5FF8CAC, 0, 0);
}

uint64_t sub_1E5FF8CAC()
{
  sub_1E5E0476C(v0[11], v0[12]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1E5FF8D10(uint64_t a1)
{
  v30 = MEMORY[0x1E69E7CC8];
  v37 = MEMORY[0x1E69E7CC8];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = v10 | (v8 << 6);
      v12 = *(a1 + 56);
      v13 = (*(a1 + 48) + 16 * v11);
      v14 = v13[1];
      if (*(v12 + 8 * v11))
      {
        break;
      }

      v33 = 0;
      v31 = 0u;
      v32 = 0u;

LABEL_7:

      result = sub_1E5DFE50C(&v31, &unk_1ED0735E0, &qword_1E65ED680);
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    v15 = *v13;
    *&v34 = *(v12 + 8 * v11);
    swift_bridgeObjectRetain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072380, &qword_1E65EABB0);
    sub_1E5FB9504();
    sub_1E65E6848();

    if (!*(&v32 + 1))
    {
      goto LABEL_7;
    }

    v34 = v31;
    v35 = v32;
    v36 = v33;
    v16 = v30;
    v17 = *(v30 + 16);
    if (*(v30 + 24) <= v17)
    {
      sub_1E6419814(v17 + 1, 1);
      v16 = v37;
    }

    v30 = v16;
    v18 = *(v16 + 40);
    sub_1E65E6D28();
    sub_1E65E5D78();
    result = sub_1E65E6D78();
    v19 = v30 + 64;
    v20 = -1 << *(v30 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v30 + 64 + 8 * (v21 >> 6))) == 0)
    {
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
        v27 = *(v19 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v30 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v30 + 48) + 16 * v23);
    *v28 = v15;
    v28[1] = v14;
    v29 = *(v30 + 56) + 40 * v23;
    *v29 = v34;
    *(v29 + 16) = v35;
    *(v29 + 32) = v36;
    ++*(v30 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v30;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1E5FF8FEC(_OWORD *a1, char a2, uint64_t a3)
{
  *(v3 + 136) = a3;
  *(v3 + 330) = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860) - 8) + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A30, &qword_1E65EEA70) - 8) + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1E5FF90E8, 0, 0);
}

uint64_t sub_1E5FF90E8()
{
  v1 = v0[23];
  if (v1 == 7)
  {
    sub_1E65E6058();
    v0[31] = sub_1E65E6048();
    v4 = sub_1E65E5FC8();
    v6 = v8;
    v7 = sub_1E5FF99F4;
  }

  else if (v1 == 6)
  {
    swift_beginAccess();
    v2 = qword_1ED075958;
    v3 = qword_1ED075960;
    v0[14] = qword_1ED075958;
    v0[15] = v3;
    v0[24] = sub_1E65E6058();
    sub_1E5E05374(v2, v3);
    v0[25] = sub_1E65E6048();
    v4 = sub_1E65E5FC8();
    v6 = v5;
    v7 = sub_1E5FF9260;
  }

  else
  {
    v0[10] = v0[22];
    v0[11] = v1;
    v0[34] = sub_1E65E6058();
    v0[35] = sub_1E65E6048();
    v4 = sub_1E65E5FC8();
    v6 = v9;
    v7 = sub_1E5FF9D44;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1E5FF9260()
{
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[17];

  sub_1E63350F4(v0 + 14, v2);
  sub_1E5E0476C(v0[14], v0[15]);

  return MEMORY[0x1EEE6DFA0](sub_1E5FF92E4, 0, 0);
}

uint64_t sub_1E5FF92E4()
{
  v1 = v0[21];
  v2 = type metadata accessor for NavigationControllerRoutingContext();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1E5DFE50C(v1, &qword_1ED072A30, &qword_1E65EEA70);
    v4 = v0[20];
    v3 = v0[21];
    v6 = v0[18];
    v5 = v0[19];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[24];
    v0[26] = sub_1E65E6048();
    v11 = sub_1E65E5FC8();
    v0[27] = v11;
    v0[28] = v10;

    return MEMORY[0x1EEE6DFA0](sub_1E5FF9430, v11, v10);
  }
}

uint64_t sub_1E5FF9430()
{
  v1 = *(v0 + 152);
  v2 = type metadata accessor for RouteDestination();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  *(v0 + 329) = 0;
  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  *v3 = v0;
  v3[1] = sub_1E5FF9518;
  v4 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = *(v0 + 330);

  return sub_1E5FA1E18(v5, v6, (v0 + 329));
}

uint64_t sub_1E5FF9518()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 152);
  v9 = *v1;
  *(*v1 + 240) = v0;

  sub_1E5DFE50C(v4, &unk_1ED072040, &qword_1E65F0860);
  v5 = *(v2 + 216);
  v6 = *(v2 + 224);
  if (v0)
  {
    v7 = sub_1E5FF970C;
  }

  else
  {
    v7 = sub_1E5FF9660;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E5FF9660()
{
  v1 = v0[26];
  v2 = v0[21];

  sub_1E5FFF4B8(v2, type metadata accessor for NavigationControllerRoutingContext);
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E5FF970C()
{
  v1 = *(v0 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1E5FF9774, 0, 0);
}

uint64_t sub_1E5FF9774()
{
  v26 = v0;
  sub_1E5FFF4B8(v0[21], type metadata accessor for NavigationControllerRoutingContext);
  v1 = v0[30];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v3 = v0[22];
  v2 = v0[23];
  v4 = sub_1E65E3B68();
  __swift_project_value_buffer(v4, qword_1EE2EA2A0);
  sub_1E5FFF3A0(v3, v2);
  v5 = v1;
  v6 = sub_1E65E3B48();
  v7 = sub_1E65E6328();
  sub_1E5FFF3B4(v3, v2);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[22];
    v8 = v0[23];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136446466;
    v0[12] = v9;
    v0[13] = v8;
    sub_1E5FFF3A0(v9, v8);
    v12 = sub_1E65E5CE8();
    v14 = sub_1E5DFD4B0(v12, v13, &v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    v0[16] = v1;
    v15 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v16 = sub_1E65E5CE8();
    v18 = sub_1E5DFD4B0(v16, v17, &v25);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_1E5DE9000, v6, v7, "Unable to reset %{public}s: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v11, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);
  }

  else
  {
  }

  v20 = v0[20];
  v19 = v0[21];
  v22 = v0[18];
  v21 = v0[19];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1E5FF99F4()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 136);

  sub_1E5FF0694(v2, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E5FF9A6C, 0, 0);
}

uint64_t sub_1E5FF9A6C()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v3 = swift_task_alloc();
    *(v0 + 256) = v3;
    *v3 = v0;
    v3[1] = sub_1E5FF9BA4;
    v4 = *(v0 + 330);

    return RoutingContext.reset(animated:)(v4, v1, v2);
  }

  else
  {
    sub_1E5DFE50C(v0 + 16, &unk_1ED074320, &unk_1E65EA730);
    v7 = *(v0 + 160);
    v6 = *(v0 + 168);
    v9 = *(v0 + 144);
    v8 = *(v0 + 152);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1E5FF9BA4()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_1E5FFA4D0;
  }

  else
  {
    v3 = sub_1E5FF9CB8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E5FF9CB8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5FF9D44()
{
  v1 = v0[35];
  v2 = v0[20];
  v3 = v0[17];

  sub_1E63350F4(v0 + 10, v2);

  return MEMORY[0x1EEE6DFA0](sub_1E5FF9DC0, 0, 0);
}

uint64_t sub_1E5FF9DC0()
{
  v1 = v0[20];
  v2 = type metadata accessor for NavigationControllerRoutingContext();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1E5DFE50C(v1, &qword_1ED072A30, &qword_1E65EEA70);
    v4 = v0[20];
    v3 = v0[21];
    v6 = v0[18];
    v5 = v0[19];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[34];
    v0[36] = sub_1E65E6048();
    v11 = sub_1E65E5FC8();
    v0[37] = v11;
    v0[38] = v10;

    return MEMORY[0x1EEE6DFA0](sub_1E5FF9F0C, v11, v10);
  }
}

uint64_t sub_1E5FF9F0C()
{
  v1 = *(v0 + 144);
  v2 = type metadata accessor for RouteDestination();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  *(v0 + 328) = 0;
  v3 = swift_task_alloc();
  *(v0 + 312) = v3;
  *v3 = v0;
  v3[1] = sub_1E5FF9FF4;
  v4 = *(v0 + 160);
  v5 = *(v0 + 144);
  v6 = *(v0 + 330);

  return sub_1E5FA1E18(v5, v6, (v0 + 328));
}

uint64_t sub_1E5FF9FF4()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *(*v1 + 144);
  v9 = *v1;
  *(*v1 + 320) = v0;

  sub_1E5DFE50C(v4, &unk_1ED072040, &qword_1E65F0860);
  v5 = *(v2 + 296);
  v6 = *(v2 + 304);
  if (v0)
  {
    v7 = sub_1E5FFA1E8;
  }

  else
  {
    v7 = sub_1E5FFA13C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E5FFA13C()
{
  v1 = v0[36];
  v2 = v0[20];

  sub_1E5FFF4B8(v2, type metadata accessor for NavigationControllerRoutingContext);
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E5FFA1E8()
{
  v1 = *(v0 + 288);

  return MEMORY[0x1EEE6DFA0](sub_1E5FFA250, 0, 0);
}

uint64_t sub_1E5FFA250()
{
  v26 = v0;
  sub_1E5FFF4B8(v0[20], type metadata accessor for NavigationControllerRoutingContext);
  v1 = v0[40];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v3 = v0[22];
  v2 = v0[23];
  v4 = sub_1E65E3B68();
  __swift_project_value_buffer(v4, qword_1EE2EA2A0);
  sub_1E5FFF3A0(v3, v2);
  v5 = v1;
  v6 = sub_1E65E3B48();
  v7 = sub_1E65E6328();
  sub_1E5FFF3B4(v3, v2);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[22];
    v8 = v0[23];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136446466;
    v0[12] = v9;
    v0[13] = v8;
    sub_1E5FFF3A0(v9, v8);
    v12 = sub_1E65E5CE8();
    v14 = sub_1E5DFD4B0(v12, v13, &v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    v0[16] = v1;
    v15 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v16 = sub_1E65E5CE8();
    v18 = sub_1E5DFD4B0(v16, v17, &v25);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_1E5DE9000, v6, v7, "Unable to reset %{public}s: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v11, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);
  }

  else
  {
  }

  v20 = v0[20];
  v19 = v0[21];
  v22 = v0[18];
  v21 = v0[19];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1E5FFA4D0()
{
  v26 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[33];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v3 = v0[22];
  v2 = v0[23];
  v4 = sub_1E65E3B68();
  __swift_project_value_buffer(v4, qword_1EE2EA2A0);
  sub_1E5FFF3A0(v3, v2);
  v5 = v1;
  v6 = sub_1E65E3B48();
  v7 = sub_1E65E6328();
  sub_1E5FFF3B4(v3, v2);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[22];
    v8 = v0[23];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136446466;
    v0[12] = v9;
    v0[13] = v8;
    sub_1E5FFF3A0(v9, v8);
    v12 = sub_1E65E5CE8();
    v14 = sub_1E5DFD4B0(v12, v13, &v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    v0[16] = v1;
    v15 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v16 = sub_1E65E5CE8();
    v18 = sub_1E5DFD4B0(v16, v17, &v25);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_1E5DE9000, v6, v7, "Unable to reset %{public}s: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v11, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);
  }

  else
  {
  }

  v20 = v0[20];
  v19 = v0[21];
  v22 = v0[18];
  v21 = v0[19];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1E5FFA73C(uint64_t a1, uint64_t a2)
{
  v2[43] = a1;
  v2[44] = a2;
  v3 = *(type metadata accessor for NavigationControllerRoutingContext() - 8);
  v2[45] = v3;
  v2[46] = *(v3 + 64);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v4 = *(type metadata accessor for RouteDestination() - 8);
  v2[51] = v4;
  v2[52] = *(v4 + 64);
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v5 = type metadata accessor for ResolvedURLRoute.Action(0);
  v2[57] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[58] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FFA8D8, 0, 0);
}

uint64_t sub_1E5FFA8D8()
{
  v1 = *(v0 + 456);
  sub_1E5FFEEF0(*(v0 + 344), *(v0 + 464), type metadata accessor for ResolvedURLRoute.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v22 = *(v0 + 464);
      v23 = *(v0 + 424);
      *(v0 + 718) = *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F0, &qword_1E65EC238) + 48));
      sub_1E5FFF518(v22, v23, type metadata accessor for RouteDestination);
      sub_1E65E6058();
      *(v0 + 688) = sub_1E65E6048();
      v24 = sub_1E65E5FC8();
      v26 = v25;
      v27 = sub_1E5FFC32C;
      goto LABEL_26;
    }

    v10 = *(v0 + 464);
    *(v0 + 608) = *v10;
    *(v0 + 616) = *(v10 + 8);
    *(v0 + 716) = *(v10 + 16);
    v12 = *(v10 + 24);
    v11 = *(v10 + 32);
    *(v0 + 717) = *(v10 + 40);
    if (v11 != 6)
    {
      if (v11 != 7)
      {
LABEL_23:
        *(v0 + 632) = v11;
        *(v0 + 624) = v12;
        *(v0 + 200) = v12;
        *(v0 + 208) = v11;
        sub_1E65E6058();
        *(v0 + 640) = sub_1E65E6048();
        v24 = sub_1E65E5FC8();
        v26 = v29;
        v27 = sub_1E5FFBC30;
        goto LABEL_26;
      }

      v13 = *(*(v0 + 352) + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer);
      swift_getKeyPath();
      sub_1E65E4EC8();

      v11 = *(v0 + 240);
      if (v11 != 6)
      {
        v12 = *(v0 + 232);
        goto LABEL_23;
      }
    }

    swift_beginAccess();
    v12 = qword_1ED075958;
    v11 = qword_1ED075960;
    sub_1E5E05374(qword_1ED075958, qword_1ED075960);
    goto LABEL_23;
  }

  if (!EnumCaseMultiPayload)
  {
    v3 = *(v0 + 464);
    v4 = *(v0 + 448);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A00, &qword_1E65EC288);
    v6 = (v3 + *(v5 + 48));
    v8 = *v6;
    v7 = v6[1];
    *(v0 + 713) = *(v3 + *(v5 + 64));
    sub_1E5FFF518(v3, v4, type metadata accessor for RouteDestination);
    if (v7 != 6)
    {
      if (v7 != 7)
      {
LABEL_21:
        *(v0 + 472) = v8;
        *(v0 + 480) = v7;
        *(v0 + 296) = v8;
        *(v0 + 304) = v7;
        sub_1E65E6058();
        *(v0 + 488) = sub_1E65E6048();
        v24 = sub_1E65E5FC8();
        v26 = v28;
        v27 = sub_1E5FFAD90;
        goto LABEL_26;
      }

      v9 = *(*(v0 + 352) + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer);
      swift_getKeyPath();
      sub_1E65E4EC8();

      v7 = *(v0 + 336);
      if (v7 != 6)
      {
        v8 = *(v0 + 328);
        goto LABEL_21;
      }
    }

    swift_beginAccess();
    v8 = qword_1ED075958;
    v7 = qword_1ED075960;
    sub_1E5E05374(qword_1ED075958, qword_1ED075960);
    goto LABEL_21;
  }

  v14 = *(v0 + 464);
  v15 = *(v0 + 432);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F8, &unk_1E6602A80);
  v17 = v14 + v16[12];
  *(v0 + 536) = *v17;
  *(v0 + 714) = *(v17 + 8);
  v18 = (v14 + v16[16]);
  v20 = *v18;
  v19 = v18[1];
  *(v0 + 715) = *(v14 + v16[20]);
  sub_1E5FFF518(v14, v15, type metadata accessor for RouteDestination);
  if (v19 == 6)
  {
LABEL_19:
    swift_beginAccess();
    v20 = qword_1ED075958;
    v19 = qword_1ED075960;
    sub_1E5E05374(qword_1ED075958, qword_1ED075960);
    goto LABEL_25;
  }

  if (v19 == 7)
  {
    v21 = *(*(v0 + 352) + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer);
    swift_getKeyPath();
    sub_1E65E4EC8();

    v19 = *(v0 + 288);
    if (v19 != 6)
    {
      v20 = *(v0 + 280);
      goto LABEL_25;
    }

    goto LABEL_19;
  }

LABEL_25:
  *(v0 + 552) = v19;
  *(v0 + 544) = v20;
  *(v0 + 248) = v20;
  *(v0 + 256) = v19;
  sub_1E65E6058();
  *(v0 + 560) = sub_1E65E6048();
  v24 = sub_1E65E5FC8();
  v26 = v30;
  v27 = sub_1E5FFB4A8;
LABEL_26:

  return MEMORY[0x1EEE6DFA0](v27, v24, v26);
}

uint64_t sub_1E5FFAD90()
{
  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v3 = *(v0 + 472);
  v4 = *(v0 + 400);
  v5 = *(v0 + 352);

  sub_1E5E24114((v0 + 296), v4);
  *(v0 + 312) = v3;
  *(v0 + 320) = v2;
  v6 = swift_task_alloc();
  *(v0 + 496) = v6;
  *v6 = v0;
  v6[1] = sub_1E5FFAE54;
  v7 = *(v0 + 352);

  return sub_1E5FF075C((v0 + 312), v7);
}

uint64_t sub_1E5FFAE54()
{
  v1 = *(*v0 + 496);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5FFAF50, 0, 0);
}

uint64_t sub_1E5FFAF50()
{
  v1 = *(v0 + 713);
  v3 = *(v0 + 440);
  v2 = *(v0 + 448);
  v5 = *(v0 + 408);
  v4 = *(v0 + 416);
  v6 = *(v0 + 392);
  v8 = *(v0 + 360);
  v7 = *(v0 + 368);
  sub_1E5FFEEF0(*(v0 + 400), v6, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5FFEEF0(v2, v3, type metadata accessor for RouteDestination);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v7 + *(v5 + 80) + v9) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v0 + 504) = v11;
  sub_1E5FFF518(v6, v11 + v9, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5FFF518(v3, v11 + v10, type metadata accessor for RouteDestination);
  v12 = (v11 + v10 + v4);
  *v12 = v1;
  v12[1] = 0;
  v13 = swift_task_alloc();
  *(v0 + 512) = v13;
  *(v13 + 16) = &unk_1E65EC298;
  *(v13 + 24) = v11;
  v14 = *(MEMORY[0x1E69E8920] + 4);
  v15 = swift_task_alloc();
  *(v0 + 520) = v15;
  *v15 = v0;
  v15[1] = sub_1E5FFB13C;
  v16 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v15, 0, 0, 0xD000000000000011, 0x80000001E6610F30, sub_1E5FFF594, v13, v16);
}

uint64_t sub_1E5FFB13C()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v8 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v4 = sub_1E5FFB374;
  }

  else
  {
    v5 = *(v2 + 504);
    v6 = *(v2 + 512);

    v4 = sub_1E5FFB260;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E5FFB260()
{
  v1 = v0[56];
  v2 = v0[50];
  sub_1E5E0476C(v0[59], v0[60]);
  sub_1E5FFF4B8(v2, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5FFF4B8(v1, type metadata accessor for RouteDestination);
  v3 = v0[58];
  v4 = v0[55];
  v5 = v0[56];
  v7 = v0[53];
  v6 = v0[54];
  v9 = v0[49];
  v8 = v0[50];
  v11 = v0[47];
  v10 = v0[48];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E5FFB374()
{
  v1 = v0[63];
  v2 = v0[64];
  v4 = v0[59];
  v3 = v0[60];
  v5 = v0[56];
  v6 = v0[50];

  sub_1E5E0476C(v4, v3);
  sub_1E5FFF4B8(v6, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5FFF4B8(v5, type metadata accessor for RouteDestination);
  v7 = v0[66];
  v8 = v0[58];
  v10 = v0[55];
  v9 = v0[56];
  v12 = v0[53];
  v11 = v0[54];
  v14 = v0[49];
  v13 = v0[50];
  v16 = v0[47];
  v15 = v0[48];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1E5FFB4A8()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 384);
  v5 = *(v0 + 352);

  sub_1E5E24114((v0 + 248), v4);
  *(v0 + 264) = v3;
  *(v0 + 272) = v2;
  v6 = swift_task_alloc();
  *(v0 + 568) = v6;
  *v6 = v0;
  v6[1] = sub_1E5FFB570;
  v7 = *(v0 + 352);

  return sub_1E5FF075C((v0 + 264), v7);
}

uint64_t sub_1E5FFB570()
{
  v1 = *(*v0 + 568);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5FFB66C, 0, 0);
}

uint64_t sub_1E5FFB66C()
{
  v19 = *(v0 + 715);
  v1 = *(v0 + 536);
  v3 = *(v0 + 432);
  v2 = *(v0 + 440);
  v5 = *(v0 + 408);
  v4 = *(v0 + 416);
  v6 = *(v0 + 392);
  v7 = *(v0 + 360);
  v8 = *(v0 + 368);
  v9 = *(v0 + 714);
  sub_1E5FFEEF0(*(v0 + 384), v6, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5FFEEF0(v3, v2, type metadata accessor for RouteDestination);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = (v8 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v0 + 576) = v12;
  sub_1E5FFF518(v6, v12 + v10, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5FFF518(v2, v12 + v11, type metadata accessor for RouteDestination);
  v13 = v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v13 = v1;
  *(v13 + 8) = v9;
  *(v13 + 9) = v19;
  *(v13 + 10) = 0;
  sub_1E5FA9D20(v1, v9);
  v14 = swift_task_alloc();
  *(v0 + 584) = v14;
  *(v14 + 16) = &unk_1E65EC280;
  *(v14 + 24) = v12;
  v15 = *(MEMORY[0x1E69E8920] + 4);
  v16 = swift_task_alloc();
  *(v0 + 592) = v16;
  *v16 = v0;
  v16[1] = sub_1E5FFB88C;
  v17 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v16, 0, 0, 0xD000000000000011, 0x80000001E6610F30, sub_1E5FFF594, v14, v17);
}

uint64_t sub_1E5FFB88C()
{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v8 = *v1;
  *(*v1 + 600) = v0;

  if (v0)
  {
    v4 = sub_1E5FFBAE0;
  }

  else
  {
    v5 = *(v2 + 584);
    v6 = *(v2 + 576);

    v4 = sub_1E5FFB9B4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}