char *sub_1DB4BD41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = a3;
  v74 = a4;
  v6 = sub_1DB50A280();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DB50A230();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v63 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v63 - v18;
  v20 = *a1;
  if (*(a1 + 16))
  {
    return v20;
  }

  v69 = v4;
  v70 = v17;
  v65 = v7;
  v66 = v6;
  v22 = qword_1EE30EAE8;
  v75 = *(a1 + 8);
  v76 = v20;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = sub_1DB50A270();
  v24 = __swift_project_value_buffer(v23, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v68 = v24;
  v25 = sub_1DB50A250();
  v26 = sub_1DB50B070();
  v27 = sub_1DB50B0E0();
  v71 = v11;
  v64 = v10;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v78 = v12;
    v30 = v29;
    v77.tv_sec = v29;
    *v28 = 136315138;
    sub_1DB4679C8();
    v31 = sub_1DB50BEE0();
    v33 = sub_1DB3D4EE8(v31, v32, &v77.tv_sec);

    *(v28 + 4) = v33;
    v34 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v25, v26, v34, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    v35 = v30;
    v12 = v78;
    v11 = v71;
    MEMORY[0x1E1288220](v35, -1, -1);
    MEMORY[0x1E1288220](v28, -1, -1);
  }

  (*(v12 + 16))(v72, v19, v11);
  v36 = sub_1DB50A2C0();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  sub_1DB50A2B0();
  v39 = *(v12 + 8);
  v78 = v12 + 8;
  v72 = v39;
  (v39)(v19, v11);
  static MonotonicTime.now.getter(&v77);
  tv_sec = v77.tv_sec;
  tv_nsec = v77.tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v41 = v77.tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  v43 = (v42 + 24);
  *(v42 + 16) = 0;
  v77.tv_sec = v42;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
  swift_task_localValuePush();
  v45 = v75;
  v44 = v76;
  v46 = v69;
  v47 = sub_1DB4BA878(v76, v75, v73, v74);
  v74 = v46;
  sub_1DB2FD040(v44, v45, 0);
  *a1 = v47;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v48 = v47;
  static MonotonicTime.now.getter(&v77);
  v49 = v77.tv_sec;
  v50 = v77.tv_nsec;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v51 = v50 / *&qword_1EE30ED50 + v49 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

  v52 = sub_1DB50A250();
  v53 = v70;
  sub_1DB50A2A0();
  v54 = sub_1DB50B060();

  if (sub_1DB50B0E0())
  {
    LODWORD(v69) = v54;
    v73 = v48;

    v55 = v64;
    sub_1DB50A2D0();

    v57 = v65;
    v56 = v66;
    if ((*(v65 + 88))(v55, v66) == *MEMORY[0x1E69E93E8])
    {
      v58 = 0;
      v59 = "[Error] Interval already ended";
    }

    else
    {
      (*(v57 + 8))(v55, v56);
      v59 = "selfTime=%f";
      v58 = 1;
    }

    v60 = swift_slowAlloc();
    *v60 = 0;
    *(v60 + 1) = v58;
    *(v60 + 2) = 2048;
    os_unfair_lock_lock(v43);
    v61 = *(v42 + 16);
    os_unfair_lock_unlock(v43);
    *(v60 + 4) = v51 - v61;
    v53 = v70;
    v62 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v52, v69, v62, "MakeDependency", v59, v60, 0xCu);
    MEMORY[0x1E1288220](v60, -1, -1);
    v48 = v73;
  }

  (v72)(v53, v71);
  os_unfair_lock_lock((v41 + 24));
  *(v41 + 16) = v51 + *(v41 + 16);
  os_unfair_lock_unlock((v41 + 24));
  swift_task_localValuePop();

  sub_1DB2FD040(v76, v75, 0);

  return v48;
}

uint64_t sub_1DB4BDAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v66 = a2;
  v67 = a3;
  v7 = sub_1DB50A280();
  v64 = *(v7 - 8);
  v8 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v57 - v18;
  v70 = *a1;
  if (*(a1 + 16))
  {
    *a4 = v70;
    return swift_unknownObjectRetain();
  }

  else
  {
    v60 = v4;
    v57 = v7;
    v65 = v17;
    v62 = a4;
    v21 = qword_1EE30EAE8;
    v68 = *(a1 + 8);

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = sub_1DB50A270();
    v23 = __swift_project_value_buffer(v22, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v59 = v23;
    v24 = sub_1DB50A250();
    v25 = sub_1DB50B070();
    if (sub_1DB50B0E0())
    {
      v26 = swift_slowAlloc();
      v69 = v11;
      v27 = v26;
      v28 = v10;
      v29 = swift_slowAlloc();
      v71.tv_sec = v29;
      *v27 = 136315138;
      *(v27 + 4) = sub_1DB3D4EE8(6775106, 0xE300000000000000, &v71.tv_sec);
      v30 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v24, v25, v30, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      v31 = v29;
      v10 = v28;
      MEMORY[0x1E1288220](v31, -1, -1);
      v32 = v27;
      v11 = v69;
      MEMORY[0x1E1288220](v32, -1, -1);
    }

    (*(v11 + 16))(v15, v19, v10);
    v33 = sub_1DB50A2C0();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    sub_1DB50A2B0();
    v36 = *(v11 + 8);
    v61 = v10;
    v69 = v11 + 8;
    v58 = v36;
    v36(v19, v10);
    static MonotonicTime.now.getter(&v71);
    tv_sec = v71.tv_sec;
    tv_nsec = v71.tv_nsec;
    v39 = v60;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v40 = v71.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v41 = swift_allocObject();
    *(v41 + 24) = 0;
    v42 = (v41 + 24);
    *(v41 + 16) = 0;
    v71.tv_sec = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    sub_1DB4BA72C(v70, v68, v66, v67);
    v67 = v39;
    sub_1DB4CB894(*a1, *(a1 + 8), *(a1 + 16), MEMORY[0x1E69E7D60]);
    *a1 = v72;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    swift_unknownObjectRetain();
    static MonotonicTime.now.getter(&v71);
    v43 = v71.tv_sec;
    v44 = v71.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    v45 = v44 / *&qword_1EE30ED50 + v43 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v46 = sub_1DB50A250();
    v47 = v65;
    sub_1DB50A2A0();
    v48 = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {
      LODWORD(v66) = v48;

      v49 = v63;
      sub_1DB50A2D0();

      v50 = v64;
      v51 = v57;
      if ((*(v64 + 88))(v49, v57) == *MEMORY[0x1E69E93E8])
      {
        v52 = 0;
        v53 = "[Error] Interval already ended";
      }

      else
      {
        (*(v50 + 8))(v49, v51);
        v53 = "selfTime=%f";
        v52 = 1;
      }

      v54 = swift_slowAlloc();
      *v54 = 0;
      *(v54 + 1) = v52;
      *(v54 + 2) = 2048;
      os_unfair_lock_lock(v42);
      v55 = *(v41 + 16);
      os_unfair_lock_unlock(v42);
      *(v54 + 4) = v45 - v55;
      v47 = v65;
      v56 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v46, v66, v56, "MakeDependency", v53, v54, 0xCu);
      MEMORY[0x1E1288220](v54, -1, -1);
    }

    v58(v47, v61);
    os_unfair_lock_lock((v40 + 24));
    *(v40 + 16) = v45 + *(v40 + 16);
    os_unfair_lock_unlock((v40 + 24));
    *v62 = v72;
    swift_task_localValuePop();
    sub_1DB4CB894(v70, v68, 0, MEMORY[0x1E69E7D60]);
  }
}

char *sub_1DB4BE190(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v67 = a3;
  v68 = a4;
  v6 = sub_1DB50A280();
  v65 = *(v6 - 8);
  v7 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB50A230();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v59 - v17;
  v19 = *a1;
  if (*(a1 + 16))
  {
    v20 = *a1;

    return v19;
  }

  else
  {
    v59 = v6;
    v66 = v16;
    v72 = v4;
    v22 = qword_1EE30EAE8;
    v69 = *(a1 + 8);

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = sub_1DB50A270();
    v24 = __swift_project_value_buffer(v23, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v61 = v24;
    v25 = sub_1DB50A250();
    v26 = sub_1DB50B070();
    if (sub_1DB50B0E0())
    {
      v27 = swift_slowAlloc();
      v70 = v10;
      v28 = v27;
      v29 = swift_slowAlloc();
      v63 = v19;
      v30 = v9;
      v31 = v29;
      v71.tv_sec = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DB3D4EE8(0xD000000000000013, 0x80000001DB530CA0, &v71.tv_sec);
      v32 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v25, v26, v32, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      v33 = v31;
      v9 = v30;
      v19 = v63;
      MEMORY[0x1E1288220](v33, -1, -1);
      v34 = v28;
      v10 = v70;
      MEMORY[0x1E1288220](v34, -1, -1);
    }

    (*(v10 + 16))(v14, v18, v9);
    v35 = sub_1DB50A2C0();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    v38 = sub_1DB50A2B0();
    v62 = v9;
    v63 = v38;
    v39 = *(v10 + 8);
    v70 = v10 + 8;
    v60 = v39;
    v39(v18, v9);
    static MonotonicTime.now.getter(&v71);
    tv_sec = v71.tv_sec;
    tv_nsec = v71.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v42 = v71.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v43 = swift_allocObject();
    *(v43 + 24) = 0;
    v44 = (v43 + 24);
    *(v43 + 16) = 0;
    v71.tv_sec = v43;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v45 = v72;
    v21 = sub_1DB4BA878(v19, v69, v67, v68);
    v72 = v45;
    sub_1DB2FEB54();
    *a1 = v21;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;

    static MonotonicTime.now.getter(&v71);
    v46 = v71.tv_sec;
    v47 = v71.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    v48 = v47 / *&qword_1EE30ED50 + v46 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v49 = sub_1DB50A250();
    v50 = v66;
    sub_1DB50A2A0();
    LODWORD(v68) = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {

      v51 = v64;
      sub_1DB50A2D0();

      v52 = v65;
      v53 = v59;
      if ((*(v65 + 88))(v51, v59) == *MEMORY[0x1E69E93E8])
      {
        v54 = 0;
        v67 = "[Error] Interval already ended";
      }

      else
      {
        (*(v52 + 8))(v51, v53);
        v67 = "selfTime=%f";
        v54 = 1;
      }

      v55 = swift_slowAlloc();
      *v55 = 0;
      *(v55 + 1) = v54;
      *(v55 + 2) = 2048;
      os_unfair_lock_lock(v44);
      v56 = *(v43 + 16);
      os_unfair_lock_unlock(v44);
      *(v55 + 4) = v48 - v56;
      v50 = v66;
      v57 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v49, v68, v57, "MakeDependency", v67, v55, 0xCu);
      MEMORY[0x1E1288220](v55, -1, -1);
    }

    v60(v50, v62);
    os_unfair_lock_lock((v42 + 24));
    *(v42 + 16) = v48 + *(v42 + 16);
    os_unfair_lock_unlock((v42 + 24));
    swift_task_localValuePop();

    sub_1DB2FEB54();
  }

  return v21;
}

uint64_t sub_1DB4BE840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v73 = a2;
  v74 = a3;
  v7 = sub_1DB50A280();
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v76 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for JetPackAsset(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v79 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1DB50A230();
  v82 = *(v78 - 8);
  v13 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v77 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v68 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v68 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D88, &qword_1DB521BF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (v68 - v23);
  v75 = a1;
  sub_1DB30C4B8(a1, v68 - v23, &qword_1ECC46D88, &qword_1DB521BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1DB4CB7C4(v24, a4, type metadata accessor for JetPackAsset);
  }

  v72 = a4;
  v26 = v24[1];
  v69 = *v24;
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v27 = sub_1DB50A270();
  v28 = __swift_project_value_buffer(v27, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v68[1] = v28;
  v29 = sub_1DB50A250();
  v30 = sub_1DB50B070();
  v31 = sub_1DB50B0E0();
  v80 = v4;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v81.tv_sec = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_1DB3D4EE8(0x416B63615074654ALL, 0xEC00000074657373, &v81.tv_sec);
    v34 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v29, v30, v34, "MakeDependency", "object=%s,type=lazy", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x1E1288220](v33, -1, -1);
    MEMORY[0x1E1288220](v32, -1, -1);
  }

  v35 = v82;
  v36 = v78;
  (*(v82 + 16))(v17, v20, v78);
  v37 = sub_1DB50A2C0();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  sub_1DB50A2B0();
  v40 = *(v35 + 8);
  v82 = v35 + 8;
  v68[0] = v40;
  v40(v20, v36);
  static MonotonicTime.now.getter(&v81);
  tv_sec = v81.tv_sec;
  tv_nsec = v81.tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v43 = v81.tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v44 = swift_allocObject();
  *(v44 + 24) = 0;
  v45 = (v44 + 24);
  *(v44 + 16) = 0;
  v81.tv_sec = v44;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
  swift_task_localValuePush();
  v46 = v79;
  v47 = v80;
  v48 = v69;
  v69 = v26;
  sub_1DB4BA72C(v48, v26, v73, v74);
  v80 = v47;
  v49 = v75;
  sub_1DB30623C(v75, &qword_1ECC46D88, &qword_1DB521BF0);
  sub_1DB4CB82C(v46, v49, type metadata accessor for JetPackAsset);
  swift_storeEnumTagMultiPayload();
  static MonotonicTime.now.getter(&v81);
  v50 = v81.tv_sec;
  v51 = v81.tv_nsec;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v52 = v51 / *&qword_1EE30ED50 + v50 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

  v53 = sub_1DB50A250();
  v54 = v77;
  sub_1DB50A2A0();
  v55 = sub_1DB50B060();

  v56 = sub_1DB50B0E0();
  v57 = v72;
  v58 = v76;
  if (v56)
  {

    sub_1DB50A2D0();

    v60 = v70;
    v59 = v71;
    if ((*(v70 + 88))(v58, v71) == *MEMORY[0x1E69E93E8])
    {
      v61 = 0;
      v62 = "[Error] Interval already ended";
    }

    else
    {
      (*(v60 + 8))(v58, v59);
      v62 = "selfTime=%f";
      v61 = 1;
    }

    v63 = swift_slowAlloc();
    *v63 = 0;
    *(v63 + 1) = v61;
    *(v63 + 2) = 2048;
    os_unfair_lock_lock(v45);
    v64 = *(v44 + 16);
    os_unfair_lock_unlock(v45);
    *(v63 + 4) = v52 - v64;
    v65 = v77;
    v66 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v53, v55, v66, "MakeDependency", v62, v63, 0xCu);
    v67 = v63;
    v54 = v65;
    MEMORY[0x1E1288220](v67, -1, -1);
    v57 = v72;
  }

  (v68[0])(v54, v78);
  os_unfair_lock_lock((v43 + 24));
  *(v43 + 16) = v52 + *(v43 + 16);
  os_unfair_lock_unlock((v43 + 24));
  sub_1DB4CB7C4(v79, v57, type metadata accessor for JetPackAsset);
  swift_task_localValuePop();
}

uint64_t sub_1DB4BEFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v68 = a3;
  v67 = a2;
  v64 = sub_1DB50A280();
  v63 = *(v64 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB50A230();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - v18;
  result = sub_1DB30C4B8(a1, v74, &qword_1ECC46DA8, &qword_1DB521C10);
  if (v76)
  {
    v21 = v74[1];
    *a4 = v74[0];
    *(a4 + 16) = v21;
    *(a4 + 32) = v74[2];
    *(a4 + 48) = v75;
  }

  else
  {
    v65 = v13;
    v77 = v4;
    v69 = *(&v74[0] + 1);
    v59 = *&v74[0];
    if (qword_1EE30EAE8 != -1)
    {
      swift_once();
    }

    v22 = sub_1DB50A270();
    v23 = __swift_project_value_buffer(v22, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v61 = v23;
    v24 = sub_1DB50A250();
    v25 = sub_1DB50B070();
    v26 = sub_1DB50B0E0();
    v66 = v9;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v70 = v10;
      v28 = v27;
      v29 = swift_slowAlloc();
      v72[0].tv_sec = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DB3D4EE8(0xD000000000000011, 0x80000001DB52F150, &v72[0].tv_sec);
      v30 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v24, v25, v30, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      v31 = v29;
      v9 = v66;
      MEMORY[0x1E1288220](v31, -1, -1);
      v32 = v28;
      v10 = v70;
      MEMORY[0x1E1288220](v32, -1, -1);
    }

    (*(v10 + 16))(v16, v19, v9);
    v33 = sub_1DB50A2C0();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    sub_1DB50A2B0();
    v36 = *(v10 + 8);
    v70 = v10 + 8;
    v60 = v36;
    v36(v19, v9);
    static MonotonicTime.now.getter(v72);
    v37 = v72[0];
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    tv_sec = v72[0].tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v39 = swift_allocObject();
    *(v39 + 24) = 0;
    v40 = (v39 + 24);
    *(v39 + 16) = 0;
    v72[0].tv_sec = v39;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v41 = v77;
    sub_1DB4BA72C(v59, v69, v67, v68);
    v77 = v41;
    sub_1DB30623C(a1, &qword_1ECC46DA8, &qword_1DB521C10);
    sub_1DB3C17BC(v72, a1);
    *(a1 + 56) = 1;
    static MonotonicTime.now.getter(&v71);
    v42 = v71.tv_sec;
    tv_nsec = v71.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    v44 = tv_nsec / *&qword_1EE30ED50 + v42 - (v37.tv_nsec / *&qword_1EE30ED50 + v37.tv_sec);

    v45 = sub_1DB50A250();
    v46 = v65;
    sub_1DB50A2A0();
    v47 = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {
      LODWORD(v68) = v47;

      v48 = v62;
      sub_1DB50A2D0();

      v49 = v63;
      v50 = v64;
      if ((*(v63 + 88))(v48, v64) == *MEMORY[0x1E69E93E8])
      {
        v51 = 0;
        v52 = "[Error] Interval already ended";
      }

      else
      {
        (*(v49 + 8))(v48, v50);
        v52 = "selfTime=%f";
        v51 = 1;
      }

      v53 = swift_slowAlloc();
      *v53 = 0;
      *(v53 + 1) = v51;
      *(v53 + 2) = 2048;
      os_unfair_lock_lock(v40);
      v54 = *(v39 + 16);
      os_unfair_lock_unlock(v40);
      *(v53 + 4) = v44 - v54;
      v55 = v65;
      v56 = sub_1DB50A210();
      v57 = v52;
      v46 = v55;
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v45, v68, v56, "MakeDependency", v57, v53, 0xCu);
      MEMORY[0x1E1288220](v53, -1, -1);
    }

    v60(v46, v66);
    os_unfair_lock_lock((tv_sec + 24));
    *(tv_sec + 16) = v44 + *(tv_sec + 16);
    os_unfair_lock_unlock((tv_sec + 24));
    v58 = v72[1];
    *a4 = v72[0];
    *(a4 + 16) = v58;
    *(a4 + 32) = v72[2];
    *(a4 + 48) = v73;
    swift_task_localValuePop();
  }

  return result;
}

uint64_t sub_1DB4BF724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v68 = a3;
  v67 = a2;
  v64 = sub_1DB50A280();
  v63 = *(v64 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB50A230();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - v18;
  result = sub_1DB30C4B8(a1, v74, &qword_1ECC46D98, &qword_1DB521C00);
  if (v76)
  {
    v21 = v74[1];
    *a4 = v74[0];
    *(a4 + 16) = v21;
    *(a4 + 32) = v74[2];
    *(a4 + 48) = v75;
  }

  else
  {
    v65 = v13;
    v77 = v4;
    v69 = *(&v74[0] + 1);
    v59 = *&v74[0];
    if (qword_1EE30EAE8 != -1)
    {
      swift_once();
    }

    v22 = sub_1DB50A270();
    v23 = __swift_project_value_buffer(v22, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v61 = v23;
    v24 = sub_1DB50A250();
    v25 = sub_1DB50B070();
    v26 = sub_1DB50B0E0();
    v66 = v9;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v70 = v10;
      v28 = v27;
      v29 = swift_slowAlloc();
      v72[0].tv_sec = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DB3D4EE8(0xD000000000000015, 0x80000001DB52F130, &v72[0].tv_sec);
      v30 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v24, v25, v30, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      v31 = v29;
      v9 = v66;
      MEMORY[0x1E1288220](v31, -1, -1);
      v32 = v28;
      v10 = v70;
      MEMORY[0x1E1288220](v32, -1, -1);
    }

    (*(v10 + 16))(v16, v19, v9);
    v33 = sub_1DB50A2C0();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    sub_1DB50A2B0();
    v36 = *(v10 + 8);
    v70 = v10 + 8;
    v60 = v36;
    v36(v19, v9);
    static MonotonicTime.now.getter(v72);
    v37 = v72[0];
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    tv_sec = v72[0].tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v39 = swift_allocObject();
    *(v39 + 24) = 0;
    v40 = (v39 + 24);
    *(v39 + 16) = 0;
    v72[0].tv_sec = v39;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v41 = v77;
    sub_1DB4BA72C(v59, v69, v67, v68);
    v77 = v41;
    sub_1DB30623C(a1, &qword_1ECC46D98, &qword_1DB521C00);
    sub_1DB3BEB60(v72, a1);
    *(a1 + 56) = 1;
    static MonotonicTime.now.getter(&v71);
    v42 = v71.tv_sec;
    tv_nsec = v71.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    v44 = tv_nsec / *&qword_1EE30ED50 + v42 - (v37.tv_nsec / *&qword_1EE30ED50 + v37.tv_sec);

    v45 = sub_1DB50A250();
    v46 = v65;
    sub_1DB50A2A0();
    v47 = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {
      LODWORD(v68) = v47;

      v48 = v62;
      sub_1DB50A2D0();

      v49 = v63;
      v50 = v64;
      if ((*(v63 + 88))(v48, v64) == *MEMORY[0x1E69E93E8])
      {
        v51 = 0;
        v52 = "[Error] Interval already ended";
      }

      else
      {
        (*(v49 + 8))(v48, v50);
        v52 = "selfTime=%f";
        v51 = 1;
      }

      v53 = swift_slowAlloc();
      *v53 = 0;
      *(v53 + 1) = v51;
      *(v53 + 2) = 2048;
      os_unfair_lock_lock(v40);
      v54 = *(v39 + 16);
      os_unfair_lock_unlock(v40);
      *(v53 + 4) = v44 - v54;
      v55 = v65;
      v56 = sub_1DB50A210();
      v57 = v52;
      v46 = v55;
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v45, v68, v56, "MakeDependency", v57, v53, 0xCu);
      MEMORY[0x1E1288220](v53, -1, -1);
    }

    v60(v46, v66);
    os_unfair_lock_lock((tv_sec + 24));
    *(tv_sec + 16) = v44 + *(tv_sec + 16);
    os_unfair_lock_unlock((tv_sec + 24));
    v58 = v72[1];
    *a4 = v72[0];
    *(a4 + 16) = v58;
    *(a4 + 32) = v72[2];
    *(a4 + 48) = v73;
    swift_task_localValuePop();
  }

  return result;
}

uint64_t sub_1DB4BFE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v65 = a2;
  v66 = a3;
  v7 = sub_1DB50A280();
  v64 = *(v7 - 8);
  v8 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  sub_1DB30C4B8(a1, v72, &qword_1ECC46D78, &qword_1DB521BE0);
  if (v73)
  {
    return sub_1DB2FEA0C(v72, a4);
  }

  v63 = a4;
  v74 = v4;
  v68 = *(&v72[0] + 1);
  v59 = *&v72[0];
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v21 = sub_1DB50A270();
  v22 = __swift_project_value_buffer(v21, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v61 = v22;
  v23 = sub_1DB50A250();
  v24 = sub_1DB50B070();
  v25 = sub_1DB50B0E0();
  v58 = v7;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v62 = v11;
    v28 = v10;
    v29 = v27;
    v71[0].tv_sec = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1DB3D4EE8(0xD000000000000010, 0x80000001DB52CB00, &v71[0].tv_sec);
    v30 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v23, v24, v30, "MakeDependency", "object=%s,type=lazy", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v31 = v29;
    v10 = v28;
    v11 = v62;
    MEMORY[0x1E1288220](v31, -1, -1);
    MEMORY[0x1E1288220](v26, -1, -1);
  }

  (*(v11 + 16))(v16, v19, v10);
  v32 = sub_1DB50A2C0();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  sub_1DB50A2B0();
  v35 = *(v11 + 8);
  v62 = v10;
  v60 = v35;
  v35(v19, v10);
  static MonotonicTime.now.getter(v71);
  tv_sec = v71[0].tv_sec;
  tv_nsec = v71[0].tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v38 = v71[0].tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  v40 = (v39 + 24);
  *(v39 + 16) = 0;
  v71[0].tv_sec = v39;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
  swift_task_localValuePush();
  v41 = v74;
  sub_1DB4BA72C(v59, v68, v65, v66);
  v74 = v41;
  sub_1DB30623C(a1, &qword_1ECC46D78, &qword_1DB521BE0);
  sub_1DB30BE90(v71, a1);
  *(a1 + 40) = 1;
  static MonotonicTime.now.getter(&v70);
  v42 = v70.tv_sec;
  v43 = v70.tv_nsec;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v44 = v43 / *&qword_1EE30ED50 + v42 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

  v45 = sub_1DB50A250();
  v46 = v69;
  sub_1DB50A2A0();
  LODWORD(v66) = sub_1DB50B060();

  v47 = sub_1DB50B0E0();
  v48 = v67;
  if (v47)
  {

    sub_1DB50A2D0();

    v49 = v64;
    v50 = v58;
    if ((*(v64 + 88))(v48, v58) == *MEMORY[0x1E69E93E8])
    {
      v51 = 0;
      v52 = "[Error] Interval already ended";
    }

    else
    {
      (*(v49 + 8))(v48, v50);
      v52 = "selfTime=%f";
      v51 = 1;
    }

    v53 = swift_slowAlloc();
    *v53 = 0;
    *(v53 + 1) = v51;
    *(v53 + 2) = 2048;
    os_unfair_lock_lock(v40);
    v54 = *(v39 + 16);
    os_unfair_lock_unlock(v40);
    *(v53 + 4) = v44 - v54;
    v55 = v69;
    v56 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v45, v66, v56, "MakeDependency", v52, v53, 0xCu);
    v57 = v53;
    v46 = v55;
    MEMORY[0x1E1288220](v57, -1, -1);
  }

  v60(v46, v62);
  os_unfair_lock_lock((v38 + 24));
  *(v38 + 16) = v44 + *(v38 + 16);
  os_unfair_lock_unlock((v38 + 24));
  sub_1DB2FEA0C(&v71[0].tv_sec, v63);
  swift_task_localValuePop();
}

uint64_t sub_1DB4C0550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v66 = a2;
  v67 = a3;
  v7 = sub_1DB50A280();
  v64 = *(v7 - 8);
  v8 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v57 - v18;
  v70 = *a1;
  if (*(a1 + 16))
  {
    *a4 = v70;
  }

  else
  {
    v60 = v4;
    v57 = v7;
    v65 = v17;
    v62 = a4;
    v21 = qword_1EE30EAE8;
    v68 = *(a1 + 8);

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = sub_1DB50A270();
    v23 = __swift_project_value_buffer(v22, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v59 = v23;
    v24 = sub_1DB50A250();
    v25 = sub_1DB50B070();
    if (sub_1DB50B0E0())
    {
      v26 = swift_slowAlloc();
      v69 = v11;
      v27 = v26;
      v28 = v10;
      v29 = swift_slowAlloc();
      v71.tv_sec = v29;
      *v27 = 136315138;
      *(v27 + 4) = sub_1DB3D4EE8(0x746E6F434E4F534ALL, 0xEB00000000747865, &v71.tv_sec);
      v30 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v24, v25, v30, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      v31 = v29;
      v10 = v28;
      MEMORY[0x1E1288220](v31, -1, -1);
      v32 = v27;
      v11 = v69;
      MEMORY[0x1E1288220](v32, -1, -1);
    }

    (*(v11 + 16))(v15, v19, v10);
    v33 = sub_1DB50A2C0();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    sub_1DB50A2B0();
    v36 = *(v11 + 8);
    v61 = v10;
    v69 = v11 + 8;
    v58 = v36;
    v36(v19, v10);
    static MonotonicTime.now.getter(&v71);
    tv_sec = v71.tv_sec;
    tv_nsec = v71.tv_nsec;
    v39 = v60;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v40 = v71.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v41 = swift_allocObject();
    *(v41 + 24) = 0;
    v42 = (v41 + 24);
    *(v41 + 16) = 0;
    v71.tv_sec = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    sub_1DB4BA72C(v70, v68, v66, v67);
    v67 = v39;
    sub_1DB4CB894(*a1, *(a1 + 8), *(a1 + 16), MEMORY[0x1E69E7CF8]);
    *a1 = v72;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;

    static MonotonicTime.now.getter(&v71);
    v43 = v71.tv_sec;
    v44 = v71.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    v45 = v44 / *&qword_1EE30ED50 + v43 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v46 = sub_1DB50A250();
    v47 = v65;
    sub_1DB50A2A0();
    v48 = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {
      LODWORD(v66) = v48;

      v49 = v63;
      sub_1DB50A2D0();

      v50 = v64;
      v51 = v57;
      if ((*(v64 + 88))(v49, v57) == *MEMORY[0x1E69E93E8])
      {
        v52 = 0;
        v53 = "[Error] Interval already ended";
      }

      else
      {
        (*(v50 + 8))(v49, v51);
        v53 = "selfTime=%f";
        v52 = 1;
      }

      v54 = swift_slowAlloc();
      *v54 = 0;
      *(v54 + 1) = v52;
      *(v54 + 2) = 2048;
      os_unfair_lock_lock(v42);
      v55 = *(v41 + 16);
      os_unfair_lock_unlock(v42);
      *(v54 + 4) = v45 - v55;
      v47 = v65;
      v56 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v46, v66, v56, "MakeDependency", v53, v54, 0xCu);
      MEMORY[0x1E1288220](v54, -1, -1);
    }

    v58(v47, v61);
    os_unfair_lock_lock((v40 + 24));
    *(v40 + 16) = v45 + *(v40 + 16);
    os_unfair_lock_unlock((v40 + 24));
    *v62 = v72;
    swift_task_localValuePop();
    sub_1DB4CB894(v70, v68, 0, MEMORY[0x1E69E7CF8]);
  }
}

uint64_t sub_1DB4C0C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v68 = a2;
  v69 = a3;
  v7 = sub_1DB50A280();
  v65 = *(v7 - 8);
  v8 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v60 - v18;
  v21 = *a1;
  result = *(a1 + 8);
  if (*(a1 + 16))
  {
    *a4 = v21;
    *(a4 + 8) = result & 1;
  }

  else
  {
    v60 = v7;
    v66 = v17;
    v70 = v21;
    v71 = result;
    v75 = v4;
    v22 = qword_1EE30EAE8;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = sub_1DB50A270();
    v24 = __swift_project_value_buffer(v23, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v62 = v24;
    v25 = sub_1DB50A250();
    v26 = sub_1DB50B070();
    v27 = sub_1DB50B0E0();
    v63 = a4;
    v67 = v10;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v74.tv_sec = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DB3D4EE8(0xD000000000000015, 0x80000001DB52CAE0, &v74.tv_sec);
      v30 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v25, v26, v30, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x1E1288220](v29, -1, -1);
      v31 = v28;
      v10 = v67;
      MEMORY[0x1E1288220](v31, -1, -1);
    }

    (*(v11 + 16))(v15, v19, v10);
    v32 = sub_1DB50A2C0();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    sub_1DB50A2B0();
    v61 = *(v11 + 8);
    v61(v19, v10);
    static MonotonicTime.now.getter(&v74);
    tv_sec = v74.tv_sec;
    tv_nsec = v74.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v37 = v74.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v38 = swift_allocObject();
    *(v38 + 24) = 0;
    v39 = (v38 + 24);
    *(v38 + 16) = 0;
    v74.tv_sec = v38;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v40 = v75;
    sub_1DB4BA72C(v70, v71, v68, v69);
    v75 = v40;
    sub_1DB2FD030(*a1, *(a1 + 8), *(a1 + 16));
    v41 = v73;
    *a1 = v72;
    *(a1 + 8) = v41;
    *(a1 + 16) = 1;
    static MonotonicTime.now.getter(&v74);
    v42 = v74.tv_sec;
    v43 = v74.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    v44 = v43 / *&qword_1EE30ED50 + v42 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v45 = sub_1DB50A250();
    v46 = v66;
    sub_1DB50A2A0();
    v47 = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {
      LODWORD(v69) = v47;

      v48 = v64;
      sub_1DB50A2D0();

      v49 = v65;
      v50 = v60;
      if ((*(v65 + 88))(v48, v60) == *MEMORY[0x1E69E93E8])
      {
        v51 = 0;
        v52 = "[Error] Interval already ended";
      }

      else
      {
        (*(v49 + 8))(v48, v50);
        v52 = "selfTime=%f";
        v51 = 1;
      }

      v53 = swift_slowAlloc();
      *v53 = 0;
      *(v53 + 1) = v51;
      *(v53 + 2) = 2048;
      os_unfair_lock_lock(v39);
      v54 = *(v38 + 16);
      os_unfair_lock_unlock(v39);
      *(v53 + 4) = v44 - v54;
      v55 = v66;
      v56 = sub_1DB50A210();
      v57 = v52;
      v46 = v55;
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v45, v69, v56, "MakeDependency", v57, v53, 0xCu);
      MEMORY[0x1E1288220](v53, -1, -1);
    }

    v61(v46, v67);
    os_unfair_lock_lock((v37 + 24));
    *(v37 + 16) = v44 + *(v37 + 16);
    os_unfair_lock_unlock((v37 + 24));
    v58 = v73;
    v59 = v63;
    *v63 = v72;
    *(v59 + 8) = v58;
    swift_task_localValuePop();
    sub_1DB2FD030(v70, v71, 0);
  }

  return result;
}

uint64_t sub_1DB4C12BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v73 = a2;
  v74 = a3;
  v7 = sub_1DB50A280();
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v76 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PageIntentInstrumentation();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v79 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1DB50A230();
  v82 = *(v78 - 8);
  v13 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v77 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v68 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v68 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D20, &qword_1DB521B80);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (v68 - v23);
  v75 = a1;
  sub_1DB30C4B8(a1, v68 - v23, &qword_1ECC46D20, &qword_1DB521B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1DB4CB7C4(v24, a4, type metadata accessor for PageIntentInstrumentation);
  }

  v72 = a4;
  v26 = v24[1];
  v69 = *v24;
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v27 = sub_1DB50A270();
  v28 = __swift_project_value_buffer(v27, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v68[1] = v28;
  v29 = sub_1DB50A250();
  v30 = sub_1DB50B070();
  v31 = sub_1DB50B0E0();
  v80 = v4;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v81.tv_sec = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_1DB3D4EE8(0xD000000000000019, 0x80000001DB52CAC0, &v81.tv_sec);
    v34 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v29, v30, v34, "MakeDependency", "object=%s,type=lazy", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x1E1288220](v33, -1, -1);
    MEMORY[0x1E1288220](v32, -1, -1);
  }

  v35 = v82;
  v36 = v78;
  (*(v82 + 16))(v17, v20, v78);
  v37 = sub_1DB50A2C0();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  sub_1DB50A2B0();
  v40 = *(v35 + 8);
  v82 = v35 + 8;
  v68[0] = v40;
  v40(v20, v36);
  static MonotonicTime.now.getter(&v81);
  tv_sec = v81.tv_sec;
  tv_nsec = v81.tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v43 = v81.tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v44 = swift_allocObject();
  *(v44 + 24) = 0;
  v45 = (v44 + 24);
  *(v44 + 16) = 0;
  v81.tv_sec = v44;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
  swift_task_localValuePush();
  v46 = v79;
  v47 = v80;
  v48 = v69;
  v69 = v26;
  sub_1DB4BA72C(v48, v26, v73, v74);
  v80 = v47;
  v49 = v75;
  sub_1DB30623C(v75, &qword_1ECC46D20, &qword_1DB521B80);
  sub_1DB4CB82C(v46, v49, type metadata accessor for PageIntentInstrumentation);
  swift_storeEnumTagMultiPayload();
  static MonotonicTime.now.getter(&v81);
  v50 = v81.tv_sec;
  v51 = v81.tv_nsec;
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v52 = v51 / *&qword_1EE30ED50 + v50 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

  v53 = sub_1DB50A250();
  v54 = v77;
  sub_1DB50A2A0();
  v55 = sub_1DB50B060();

  v56 = sub_1DB50B0E0();
  v57 = v72;
  v58 = v76;
  if (v56)
  {

    sub_1DB50A2D0();

    v60 = v70;
    v59 = v71;
    if ((*(v70 + 88))(v58, v71) == *MEMORY[0x1E69E93E8])
    {
      v61 = 0;
      v62 = "[Error] Interval already ended";
    }

    else
    {
      (*(v60 + 8))(v58, v59);
      v62 = "selfTime=%f";
      v61 = 1;
    }

    v63 = swift_slowAlloc();
    *v63 = 0;
    *(v63 + 1) = v61;
    *(v63 + 2) = 2048;
    os_unfair_lock_lock(v45);
    v64 = *(v44 + 16);
    os_unfair_lock_unlock(v45);
    *(v63 + 4) = v52 - v64;
    v65 = v77;
    v66 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v53, v55, v66, "MakeDependency", v62, v63, 0xCu);
    v67 = v63;
    v54 = v65;
    MEMORY[0x1E1288220](v67, -1, -1);
    v57 = v72;
  }

  (v68[0])(v54, v78);
  os_unfair_lock_lock((v43 + 24));
  *(v43 + 16) = v52 + *(v43 + 16);
  os_unfair_lock_unlock((v43 + 24));
  sub_1DB4CB7C4(v79, v57, type metadata accessor for PageIntentInstrumentation);
  swift_task_localValuePop();
}

uint64_t sub_1DB4C1A7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (*(a1 + 16))
  {
    v7 = sub_1DB30EE50(a2);
    if (v8)
    {
      sub_1DB300B14(*(a1 + 56) + 32 * v7, v19);
      sub_1DB30623C(v19, &qword_1ECC426B0, &qword_1DB50EEB0);
      v9 = 1;
      return v9 & 1;
    }
  }

  memset(v19, 0, sizeof(v19));
  sub_1DB30623C(v19, &qword_1ECC426B0, &qword_1DB50EEB0);
  if (qword_1EE30D3A8 != -1)
  {
    swift_once();
  }

  v10 = off_1EE30D3B0;
  v11 = *(off_1EE30D3B0 + 2);
  v12 = off_1EE30D3B0 + 32;

  if (v11)
  {
    v14 = 0;
    while (1)
    {
      v17 = *&v12[16 * v14];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      result = swift_dynamicCast();
      if (result)
      {
        if (*&v19[0])
        {
          break;
        }
      }

      if (v11 == ++v14)
      {
        goto LABEL_12;
      }
    }

    v11 = v14;
  }

LABEL_12:
  v15 = v10[2];
  if (v11 == v15)
  {

    v9 = 0;
    return v9 & 1;
  }

  if (v11 >= v15)
  {
    __break(1u);
  }

  else
  {
    v18 = *&v12[16 * v11];
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    result = swift_dynamicCast();
    if (result)
    {
      v16 = *&v19[0];
      if (*&v19[0])
      {

        v9 = sub_1DB37D184(v16, a1);
        return v9 & 1;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4C1C98@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1DB30EE50(&type metadata for AsyncObjectGraphMetrics), (v5 & 1) != 0))
  {
    sub_1DB300B14(*(a1 + 56) + 32 * v4, v13);
    sub_1DB30C200(v13, &v14);
    sub_1DB300B14(&v14, v13);
    if (swift_dynamicCast())
    {
      *a2 = v12;
LABEL_25:
      __swift_destroy_boxed_opaque_existential_0(v13);
      return __swift_destroy_boxed_opaque_existential_0(&v14);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CE8, &qword_1DB521B40);
    if (swift_dynamicCast())
    {
      sub_1DB4BB2F0(&type metadata for AsyncObjectGraphMetrics, sub_1DB4BB81C);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF0, &qword_1DB521B48);
    if (swift_dynamicCast())
    {

      sub_1DB3D5598("JetCore/DependencyDictionary.swift", 34, 2, 231, v12);

      sub_1DB4C3E64(&type metadata for AsyncObjectGraphMetrics, sub_1DB4C436C);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44108, &qword_1DB521B50);
    if (swift_dynamicCast())
    {
      sub_1DB3D5E60("JetCore/DependencyDictionary.swift", 34, 2, 239, v12);
      swift_unknownObjectRelease();
      *a2 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v6 = off_1EE30D3B0;
    v7 = *(off_1EE30D3B0 + 2);
    v8 = off_1EE30D3B0 + 32;

    if (v7)
    {
      v9 = 0;
      while (1)
      {
        *v13 = *&v8[16 * v9];
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CE0, &qword_1DB521B38);
        if (swift_dynamicCast())
        {
          if (v14)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          goto LABEL_13;
        }
      }

      v7 = v9;
    }

LABEL_13:
    v10 = v6[2];
    if (v7 == v10)
    {

      *a2 = 0;
      return result;
    }

    if (v7 >= v10)
    {
      __break(1u);
    }

    else
    {
      *v13 = *&v8[16 * v7];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CE0, &qword_1DB521B38);
      if ((swift_dynamicCast() & 1) != 0 && v14)
      {

        return sub_1DB37E0DC(a1, v14, *(&v14 + 1), a2);
      }
    }

    __break(1u);
  }

  sub_1DB50B320();
  MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1(&v14, v15);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB52CA10);
  MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

uint64_t sub_1DB4C2138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CD0, &qword_1DB521A78);
  if (*(a1 + 16) && (v5 = sub_1DB30EE50(v4), (v6 & 1) != 0))
  {
    sub_1DB300B14(*(a1 + 56) + 32 * v5, v14);
    sub_1DB30C200(v14, v16);
    sub_1DB300B14(v16, v15);
    if (swift_dynamicCast())
    {
      sub_1DB2FEA0C(v14, a2);
LABEL_25:
      __swift_destroy_boxed_opaque_existential_0(v15);
      return __swift_destroy_boxed_opaque_existential_0(v16);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D68, &qword_1DB521BD0);
    if (swift_dynamicCast())
    {
      sub_1DB4BB150(&qword_1ECC46CD0, &qword_1DB521A78, sub_1DB4BFE60);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D70, &qword_1DB521BD8);
    if (swift_dynamicCast())
    {
      v13 = *&v14[0];

      sub_1DB3D6E80("JetCore/DependencyDictionary.swift", 34, 2, 231, v13);

      sub_1DB4C3CC8(&qword_1ECC46CD0, &qword_1DB521A78, sub_1DB4C8CEC);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44108, &qword_1DB521B50);
    if (swift_dynamicCast())
    {
      sub_1DB3D774C("JetCore/DependencyDictionary.swift", 34, 2, 239, *&v14[0]);
      swift_unknownObjectRelease();
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v7 = off_1EE30D3B0;
    v8 = *(off_1EE30D3B0 + 2);
    v9 = off_1EE30D3B0 + 32;

    if (v8)
    {
      v10 = 0;
      while (1)
      {
        *v16 = *&v9[16 * v10];
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D60, &qword_1DB521BC8);
        if (swift_dynamicCast())
        {
          if (*&v14[0])
          {
            break;
          }
        }

        if (v8 == ++v10)
        {
          goto LABEL_13;
        }
      }

      v8 = v10;
    }

LABEL_13:
    v11 = v7[2];
    if (v8 == v11)
    {

      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (v8 >= v11)
    {
      __break(1u);
    }

    else
    {
      *v16 = *&v9[16 * v8];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D60, &qword_1DB521BC8);
      if ((swift_dynamicCast() & 1) != 0 && *&v14[0])
      {

        return sub_1DB37E0DC(a1, *&v14[0], *(&v14[0] + 1), a2);
      }
    }

    __break(1u);
  }

  *&v14[0] = 0;
  *(&v14[0] + 1) = 0xE000000000000000;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1E1285C70](0xD000000000000010, 0x80000001DB52CB00);
  MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

uint64_t sub_1DB4C2608@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1DB30EE50(&type metadata for JSONContext), (v5 & 1) != 0))
  {
    sub_1DB300B14(*(a1 + 56) + 32 * v4, v13);
    sub_1DB30C200(v13, &v14);
    sub_1DB300B14(&v14, v13);
    if (swift_dynamicCast())
    {
      *a2 = v12;
LABEL_25:
      __swift_destroy_boxed_opaque_existential_0(v13);
      return __swift_destroy_boxed_opaque_existential_0(&v14);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D50, &qword_1DB521BB8);
    if (swift_dynamicCast())
    {
      sub_1DB4BB2F0(&type metadata for JSONContext, sub_1DB4C0550);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D58, &qword_1DB521BC0);
    if (swift_dynamicCast())
    {

      sub_1DB3D7FF0("JetCore/DependencyDictionary.swift", 34, 2, 231, v12);

      sub_1DB4C3E64(&type metadata for JSONContext, sub_1DB4C9410);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44108, &qword_1DB521B50);
    if (swift_dynamicCast())
    {
      sub_1DB3D88C0("JetCore/DependencyDictionary.swift", 34, 2, 239, v12);
      swift_unknownObjectRelease();
      *a2 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v6 = off_1EE30D3B0;
    v7 = *(off_1EE30D3B0 + 2);
    v8 = off_1EE30D3B0 + 32;

    if (v7)
    {
      v9 = 0;
      while (1)
      {
        *v13 = *&v8[16 * v9];
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D48, &qword_1DB521BB0);
        if (swift_dynamicCast())
        {
          if (v14)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          goto LABEL_13;
        }
      }

      v7 = v9;
    }

LABEL_13:
    v10 = v6[2];
    if (v7 == v10)
    {

      *a2 = 0;
      return result;
    }

    if (v7 >= v10)
    {
      __break(1u);
    }

    else
    {
      *v13 = *&v8[16 * v7];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D48, &qword_1DB521BB0);
      if ((swift_dynamicCast() & 1) != 0 && v14)
      {

        return sub_1DB37E0DC(a1, v14, *(&v14 + 1), a2);
      }
    }

    __break(1u);
  }

  sub_1DB50B320();
  MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1(&v14, v15);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1E1285C70](0x746E6F434E4F534ALL, 0xEB00000000747865);
  MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

uint64_t sub_1DB4C2AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1DB30EE50(&type metadata for IntentDispatchTimeout), (v5 & 1) != 0))
  {
    sub_1DB300B14(*(a1 + 56) + 32 * v4, v14);
    sub_1DB30C200(v14, &v15);
    sub_1DB300B14(&v15, v14);
    if (swift_dynamicCast())
    {
      *a2 = v12;
      *(a2 + 8) = v13;
LABEL_21:
      *(a2 + 9) = 0;
LABEL_26:
      __swift_destroy_boxed_opaque_existential_0(v14);
      return __swift_destroy_boxed_opaque_existential_0(&v15);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D38, &qword_1DB521BA0);
    if (swift_dynamicCast())
    {
      sub_1DB4BB48C(a2);

      goto LABEL_21;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D40, &qword_1DB521BA8);
    if (swift_dynamicCast())
    {

      sub_1DB3D9158("JetCore/DependencyDictionary.swift", 34, 2, 231, v12);

      sub_1DB4C3FF4(a2);
      *(a2 + 9) = 0;

      goto LABEL_26;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44108, &qword_1DB521B50);
    if (swift_dynamicCast())
    {
      sub_1DB3D9A20("JetCore/DependencyDictionary.swift", 34, 2, 239, v12);
      swift_unknownObjectRelease();
      *a2 = 0;
      *(a2 + 8) = 256;
      goto LABEL_26;
    }
  }

  else
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v6 = off_1EE30D3B0;
    v7 = *(off_1EE30D3B0 + 2);
    v8 = off_1EE30D3B0 + 32;

    if (v7)
    {
      v9 = 0;
      while (1)
      {
        *v14 = *&v8[16 * v9];
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D30, &qword_1DB521B98);
        if (swift_dynamicCast())
        {
          if (v15)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          goto LABEL_13;
        }
      }

      v7 = v9;
    }

LABEL_13:
    v10 = v6[2];
    if (v7 == v10)
    {

      *a2 = 0;
      *(a2 + 8) = 256;
      return result;
    }

    if (v7 >= v10)
    {
      __break(1u);
    }

    else
    {
      *v14 = *&v8[16 * v7];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D30, &qword_1DB521B98);
      if ((swift_dynamicCast() & 1) != 0 && v15)
      {

        return sub_1DB37E0DC(a1, v15, *(&v15 + 1), a2);
      }
    }

    __break(1u);
  }

  sub_1DB50B320();
  MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1(&v15, v16);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1E1285C70](0xD000000000000015, 0x80000001DB52CAE0);
  MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

uint64_t sub_1DB4C2F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PageIntentInstrumentation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v9 = sub_1DB30EE50(v4), (v10 & 1) != 0))
  {
    sub_1DB300B14(*(a1 + 56) + 32 * v9, v25);
    sub_1DB30C200(v25, &v26);
    sub_1DB300B14(&v26, v25);
    if (swift_dynamicCast())
    {
      sub_1DB4CB7C4(v8, a2, type metadata accessor for PageIntentInstrumentation);
LABEL_22:
      (*(v5 + 56))(a2, 0, 1, v4);
LABEL_27:
      __swift_destroy_boxed_opaque_existential_0(v25);
      return __swift_destroy_boxed_opaque_existential_0(&v26);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D10, &qword_1DB521B70);
    if (swift_dynamicCast())
    {
      sub_1DB4BB620(type metadata accessor for PageIntentInstrumentation, sub_1DB4C12BC);

      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D18, &qword_1DB521B78);
    if (swift_dynamicCast())
    {
      v19 = v23;

      sub_1DB3DA2B0("JetCore/DependencyDictionary.swift", 34, 2, 231, v19);

      sub_1DB4C4178(type metadata accessor for PageIntentInstrumentation, sub_1DB4CA23C);
      (*(v5 + 56))(a2, 0, 1, v4);

      goto LABEL_27;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44108, &qword_1DB521B50);
    if (swift_dynamicCast())
    {
      sub_1DB3DAB78("JetCore/DependencyDictionary.swift", 34, 2, 239, v23);
      swift_unknownObjectRelease();
      (*(v5 + 56))(a2, 1, 1, v4);
      goto LABEL_27;
    }
  }

  else
  {
    if (qword_1EE30D3A8 != -1)
    {
      swift_once();
    }

    v11 = off_1EE30D3B0;
    v12 = *(off_1EE30D3B0 + 2);
    v13 = off_1EE30D3B0 + 32;

    if (v12)
    {
      v20 = v5;
      v21 = a2;
      v22 = v4;
      v14 = 0;
      while (1)
      {
        *v25 = *&v13[16 * v14];
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D08, &qword_1DB521B68);
        if (swift_dynamicCast())
        {
          if (v26)
          {
            break;
          }
        }

        if (v12 == ++v14)
        {
          goto LABEL_13;
        }
      }

      v12 = v14;
LABEL_13:
      a2 = v21;
      v4 = v22;
      v5 = v20;
    }

    v15 = v11[2];
    if (v12 == v15)
    {

      return (*(v5 + 56))(a2, 1, 1, v4);
    }

    if (v12 >= v15)
    {
      __break(1u);
    }

    else
    {
      *v25 = *&v13[16 * v12];
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43858, &unk_1DB51C760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D08, &qword_1DB521B68);
      if (swift_dynamicCast())
      {
        v17 = v26;
        if (v26)
        {
          v18 = *(&v26 + 1);

          return sub_1DB37E0DC(a1, v17, v18, a2);
        }
      }
    }

    __break(1u);
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1(&v26, v27);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52CAC0);
  MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

void sub_1DB4C3524(timespec *a1@<X8>)
{
  v6.i64[1] = &type metadata for JetPackAssetSession.Configuration;
  sub_1DB330884(&v6);
  if (v2)
  {
    v6.i64[0] = v2;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {
      sub_1DB330A34();
      sub_1DB50BC80();
    }

    else
    {

      v6.i64[0] = 0;
      v6.i64[1] = 0xE000000000000000;
      MEMORY[0x1E1285C70](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1DB50BA00();
    }

    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    os_unfair_lock_lock(v4 + 25);
    sub_1DB4C5190(&v4[4], v1, COERCE_DOUBLE(&type metadata for JetPackAssetSession.Configuration), a1);
    os_unfair_lock_unlock(v4 + 25);
  }
}

void sub_1DB4C3724(void (**a1)(uint64_t)@<X8>)
{
  v6.i64[1] = &type metadata for Bag;
  sub_1DB330884(&v6);
  if (v2)
  {
    v6.i64[0] = v2;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {
      sub_1DB330A34();
      sub_1DB50BC80();
    }

    else
    {

      v6.i64[0] = 0;
      v6.i64[1] = 0xE000000000000000;
      MEMORY[0x1E1285C70](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1DB50BA00();
    }

    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    os_unfair_lock_lock(v4 + 9);
    sub_1DB4C67B4(&v4[4], v1, COERCE_DOUBLE(&type metadata for Bag), a1);
    os_unfair_lock_unlock(v4 + 9);
  }
}

uint64_t sub_1DB4C38E8(uint64_t (*a1)(void), uint64_t (*a2)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1(0);
  v10.i64[0] = v2;
  v10.i64[1] = v5;
  sub_1DB330884(&v10);
  if (v3)
  {
    v10.i64[0] = v3;
    v9 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {
      sub_1DB330A34();
      sub_1DB50BC80();
    }

    else
    {

      v10.i64[0] = 0;
      v10.i64[1] = 0xE000000000000000;
      MEMORY[0x1E1285C70](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1DB50BA00();
    }

    result = sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 16);
    os_unfair_lock_lock(v6 + 9);
    v7 = a2(v6 + 4, v2, v2, v5);
    os_unfair_lock_unlock(v6 + 9);
    return v7;
  }

  return result;
}

void sub_1DB4C3B38(uint64_t a1, void (*a2)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  v8.i64[1] = a1;
  sub_1DB330884(&v8);
  if (v3)
  {
    v8.i64[0] = v3;
    v7 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {
      sub_1DB330A34();
      sub_1DB50BC80();
    }

    else
    {

      v8.i64[0] = 0;
      v8.i64[1] = 0xE000000000000000;
      MEMORY[0x1E1285C70](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1DB50BA00();
    }

    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 16);
    os_unfair_lock_lock(v6 + 19);
    a2(v6 + 4, v2, v2, a1);
    os_unfair_lock_unlock(v6 + 19);
  }
}

void sub_1DB4C3CC8(uint64_t *a1, uint64_t *a2, void (*a3)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9.i64[0] = v3;
  v9.i64[1] = v6;
  sub_1DB330884(&v9);
  if (v4)
  {
    v9.i64[0] = v4;
    v8 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {
      sub_1DB330A34();
      sub_1DB50BC80();
    }

    else
    {

      v9.i64[0] = 0;
      v9.i64[1] = 0xE000000000000000;
      MEMORY[0x1E1285C70](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1DB50BA00();
    }

    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v7 = *(v3 + 16);
    os_unfair_lock_lock(v7 + 15);
    a3(v7 + 4, v3, v3, v6);
    os_unfair_lock_unlock(v7 + 15);
  }
}

void sub_1DB4C3E64(uint64_t a1, void (*a2)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t))
{
  v8.i64[1] = a1;
  sub_1DB330884(&v8);
  if (v3)
  {
    v8.i64[0] = v3;
    v7 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {
      sub_1DB330A34();
      sub_1DB50BC80();
    }

    else
    {

      v8.i64[0] = 0;
      v8.i64[1] = 0xE000000000000000;
      MEMORY[0x1E1285C70](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1DB50BA00();
    }

    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 16);
    os_unfair_lock_lock(v6 + 9);
    a2(v6 + 4, v2, v2, a1);
    os_unfair_lock_unlock(v6 + 9);
  }
}

void sub_1DB4C3FF4(uint64_t a1@<X8>)
{
  v6.i64[1] = &type metadata for IntentDispatchTimeout;
  sub_1DB330884(&v6);
  if (v2)
  {
    v6.i64[0] = v2;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {
      sub_1DB330A34();
      sub_1DB50BC80();
    }

    else
    {

      v6.i64[0] = 0;
      v6.i64[1] = 0xE000000000000000;
      MEMORY[0x1E1285C70](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1DB50BA00();
    }

    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    os_unfair_lock_lock(v4 + 9);
    sub_1DB4C9B48(&v4[4], v1, COERCE_DOUBLE(&type metadata for IntentDispatchTimeout), a1);
    os_unfair_lock_unlock(v4 + 9);
  }
}

void sub_1DB4C4178(uint64_t (*a1)(void), void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a1(0);
  v10.i64[0] = v2;
  v10.i64[1] = v5;
  sub_1DB330884(&v10);
  if (v3)
  {
    v10.i64[0] = v3;
    v9 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    if (swift_dynamicCast())
    {
      sub_1DB330A34();
      sub_1DB50BC80();
    }

    else
    {

      v10.i64[0] = 0;
      v10.i64[1] = 0xE000000000000000;
      MEMORY[0x1E1285C70](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1DB50BA00();
    }

    sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 16);
    v7 = *(*v6 + *MEMORY[0x1E69E6B68] + 16);
    v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v6 + v8));
    a2(v6 + v7, v2, v2, v5);
    os_unfair_lock_unlock((v6 + v8));
  }
}

uint64_t sub_1DB4C436C@<X0>(uint64_t a1@<X0>, const char *a2@<X2>, double a3@<X3>, void (**a4)(uint64_t)@<X8>)
{
  v73 = a2;
  v74 = a3;
  v7 = sub_1DB50A280();
  v69 = *(v7 - 8);
  v8 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v61 - v18;
  v20 = *a1;
  if (*(a1 + 16))
  {
    *a4 = v20;
  }

  else
  {
    v61 = v7;
    v65 = a4;
    v66 = v17;
    v71 = v20;
    v72 = v4;
    v22 = *(a1 + 8);
    v23 = qword_1EE30EAE8;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_1DB50A270();
    v25 = __swift_project_value_buffer(v24, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v63 = v25;
    v26 = sub_1DB50A250();
    v27 = sub_1DB50B070();
    if (sub_1DB50B0E0())
    {
      v28 = swift_slowAlloc();
      v70 = v11;
      v29 = v28;
      v30 = swift_slowAlloc();
      v67 = v22;
      v31 = v10;
      v32 = v30;
      v75.tv_sec = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1DB3D4EE8(0xD000000000000017, 0x80000001DB52CA10, &v75.tv_sec);
      v33 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v26, v27, v33, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      v34 = v32;
      v10 = v31;
      v22 = v67;
      MEMORY[0x1E1288220](v34, -1, -1);
      v35 = v29;
      v11 = v70;
      MEMORY[0x1E1288220](v35, -1, -1);
    }

    (*(v11 + 16))(v15, v19, v10);
    v36 = sub_1DB50A2C0();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    v67 = sub_1DB50A2B0();
    v39 = *(v11 + 8);
    v64 = v10;
    v70 = v11 + 8;
    v62 = v39;
    v39(v19, v10);
    static MonotonicTime.now.getter(&v75);
    tv_sec = v75.tv_sec;
    tv_nsec = v75.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v42 = v75.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v43 = swift_allocObject();
    *(v43 + 24) = 0;
    v44 = (v43 + 24);
    *(v43 + 16) = 0;
    v75.tv_sec = v43;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v46 = v71;
    v45 = v72;
    sub_1DB4BA72C(v71, v22, v73, *&v74);
    if (v45)
    {
      swift_task_localValuePop();
      sub_1DB4CB894(v46, v22, 0, MEMORY[0x1E69E7CF8]);
    }

    else
    {
      v72 = 0;
      sub_1DB4CB894(*a1, *(a1 + 8), *(a1 + 16), MEMORY[0x1E69E7CF8]);
      *a1 = v76;
      *(a1 + 8) = 0;
      *(a1 + 16) = 1;

      static MonotonicTime.now.getter(&v75);
      v47 = v75.tv_sec;
      v48 = v75.tv_nsec;
      if (qword_1EE30ED48 != -1)
      {
        v74 = v75.tv_nsec;
        swift_once();
        v48 = v74;
      }

      v49 = v48 / *&qword_1EE30ED50 + v47 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

      v50 = sub_1DB50A250();
      v51 = v66;
      sub_1DB50A2A0();
      LODWORD(v74) = sub_1DB50B060();

      v52 = sub_1DB50B0E0();
      v53 = v64;
      if (v52)
      {

        v54 = v68;
        sub_1DB50A2D0();

        v55 = v69;
        v56 = v61;
        if ((*(v69 + 88))(v54, v61) == *MEMORY[0x1E69E93E8])
        {
          v57 = 0;
          v73 = "[Error] Interval already ended";
        }

        else
        {
          (*(v55 + 8))(v54, v56);
          v73 = "selfTime=%f";
          v57 = 1;
        }

        v58 = swift_slowAlloc();
        *v58 = 0;
        *(v58 + 1) = v57;
        *(v58 + 2) = 2048;
        os_unfair_lock_lock(v44);
        v59 = *(v43 + 16);
        os_unfair_lock_unlock(v44);
        *(v58 + 4) = v49 - v59;
        v51 = v66;
        v60 = sub_1DB50A210();
        _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v50, LOBYTE(v74), v60, "MakeDependency", v73, v58, 0xCu);
        MEMORY[0x1E1288220](v58, -1, -1);
      }

      v62(v51, v53);
      os_unfair_lock_lock((v42 + 24));
      *(v42 + 16) = v49 + *(v42 + 16);
      os_unfair_lock_unlock((v42 + 24));
      *v65 = v76;
      swift_task_localValuePop();
      sub_1DB4CB894(v71, v22, 0, MEMORY[0x1E69E7CF8]);
    }
  }
}

uint64_t sub_1DB4C4A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = *&a4;
  v74 = a3;
  v6 = sub_1DB50A280();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v61 - v18;
  v20 = *a1;
  if (*(a1 + 16))
  {
  }

  v62 = v7;
  v63 = v6;
  v67 = v17;
  v72 = v20;
  v73 = v4;
  v21 = *(a1 + 8);
  v22 = qword_1EE30EAE8;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = sub_1DB50A270();
  v24 = __swift_project_value_buffer(v23, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v66 = v24;
  v25 = sub_1DB50A250();
  v26 = sub_1DB50B070();
  v27 = sub_1DB50B0E0();
  v69 = v10;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v70 = v21;
    v29 = v28;
    v30 = v11;
    v31 = swift_slowAlloc();
    v75.tv_sec = v31;
    *v29 = 136315138;
    *(v29 + 4) = sub_1DB3D4EE8(0xD000000000000017, 0x80000001DB52F580, &v75.tv_sec);
    v32 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v25, v26, v32, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v33 = v31;
    v11 = v30;
    MEMORY[0x1E1288220](v33, -1, -1);
    v34 = v29;
    v10 = v69;
    v21 = v70;
    MEMORY[0x1E1288220](v34, -1, -1);
  }

  (*(v11 + 16))(v15, v19, v10);
  v35 = sub_1DB50A2C0();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v70 = sub_1DB50A2B0();
  v38 = *(v11 + 8);
  v68 = v11 + 8;
  v65 = v38;
  v38(v19, v10);
  static MonotonicTime.now.getter(&v75);
  tv_sec = v75.tv_sec;
  tv_nsec = v75.tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v40 = v75.tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  v42 = (v41 + 24);
  *(v41 + 16) = 0;
  v75.tv_sec = v41;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
  swift_task_localValuePush();
  v43 = v73;
  v44 = sub_1DB4BA878(v72, v21, v74, *&v76);
  if (v43)
  {
    swift_task_localValuePop();

    sub_1DB2FEB54();
  }

  else
  {
    v19 = v44;
    v73 = 0;
    sub_1DB2FEB54();
    *a1 = v19;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;

    static MonotonicTime.now.getter(&v75);
    v45 = v75.tv_sec;
    v46 = v75.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      v76 = v75.tv_nsec;
      swift_once();
      v46 = v76;
    }

    v47 = v46 / *&qword_1EE30ED50 + v45 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v48 = sub_1DB50A250();
    v49 = v67;
    sub_1DB50A2A0();
    LODWORD(v76) = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {

      v50 = v71;
      sub_1DB50A2D0();

      v52 = v62;
      v51 = v63;
      if ((*(v62 + 88))(v50, v63) == *MEMORY[0x1E69E93E8])
      {
        v53 = 0;
        v54 = "[Error] Interval already ended";
      }

      else
      {
        (*(v52 + 8))(v50, v51);
        v54 = "selfTime=%f";
        v53 = 1;
      }

      v55 = swift_slowAlloc();
      *v55 = 0;
      *(v55 + 1) = v53;
      *(v55 + 2) = 2048;
      os_unfair_lock_lock(v42);
      v56 = *(v41 + 16);
      os_unfair_lock_unlock(v42);
      *(v55 + 4) = v47 - v56;
      v57 = v67;
      v58 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v48, LOBYTE(v76), v58, "MakeDependency", v54, v55, 0xCu);
      v59 = v55;
      v49 = v57;
      MEMORY[0x1E1288220](v59, -1, -1);
    }

    v65(v49, v69);
    os_unfair_lock_lock((v40 + 24));
    *(v40 + 16) = v47 + *(v40 + 16);
    os_unfair_lock_unlock((v40 + 24));
    swift_task_localValuePop();

    sub_1DB2FEB54();
  }

  return v19;
}

uint64_t sub_1DB4C5190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, double a3@<X3>, timespec *a4@<X8>)
{
  v76 = a3;
  v75 = a2;
  v7 = sub_1DB50A280();
  v71 = *(v7 - 8);
  v8 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v81 = *(v10 - 8);
  v11 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v63 - v18;
  v72 = a1;
  result = sub_1DB30C4B8(a1, v79, &qword_1ECC46DC0, &unk_1DB521C28);
  if (v80)
  {
    v21 = v79[3];
    a4[2] = v79[2];
    a4[3] = v21;
    a4[4] = v79[4];
    v22 = v79[1];
    *a4 = v79[0];
    a4[1] = v22;
  }

  else
  {
    v64 = v7;
    v68 = v13;
    v74 = v4;
    v23 = *(&v79[0] + 1);
    v69 = *&v79[0];
    if (qword_1EE30EAE8 != -1)
    {
      swift_once();
    }

    v24 = sub_1DB50A270();
    v25 = __swift_project_value_buffer(v24, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v66 = v25;
    v26 = sub_1DB50A250();
    v27 = sub_1DB50B070();
    v28 = sub_1DB50B0E0();
    v67 = a4;
    v29 = v81;
    v73 = v23;
    if (v28)
    {
      v30 = swift_slowAlloc();
      v31 = v10;
      v32 = swift_slowAlloc();
      v78[0].tv_sec = v32;
      *v30 = 136315138;
      *(v30 + 4) = sub_1DB3D4EE8(0x72756769666E6F43, 0xED00006E6F697461, &v78[0].tv_sec);
      v33 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v26, v27, v33, "MakeDependency", "object=%s,type=lazy", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      v34 = v32;
      v10 = v31;
      v29 = v81;
      MEMORY[0x1E1288220](v34, -1, -1);
      MEMORY[0x1E1288220](v30, -1, -1);
    }

    (*(v29 + 16))(v16, v19, v10);
    v35 = sub_1DB50A2C0();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    sub_1DB50A2B0();
    v38 = *(v29 + 8);
    v81 = v10;
    v65 = v38;
    v38(v19, v10);
    static MonotonicTime.now.getter(v78);
    tv_sec = v78[0].tv_sec;
    tv_nsec = v78[0].tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v41 = v78[0].tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v42 = swift_allocObject();
    *(v42 + 24) = 0;
    v43 = (v42 + 24);
    *(v42 + 16) = 0;
    v78[0].tv_sec = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v44 = v74;
    sub_1DB4BA72C(v69, v73, v75, *&v76);
    if (v44)
    {
      swift_task_localValuePop();
    }

    else
    {
      v74 = 0;
      v45 = v72;
      sub_1DB30623C(v72, &qword_1ECC46DC0, &unk_1DB521C28);
      sub_1DB400AF8(v78, v45);
      *(v45 + 80) = 1;
      static MonotonicTime.now.getter(&v77);
      v46 = v77.tv_sec;
      v47 = v77.tv_nsec;
      if (qword_1EE30ED48 != -1)
      {
        v76 = v77.tv_nsec;
        swift_once();
        v47 = v76;
      }

      v48 = v47 / *&qword_1EE30ED50 + v46 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

      v49 = sub_1DB50A250();
      v50 = v68;
      sub_1DB50A2A0();
      LODWORD(v76) = sub_1DB50B060();

      if (sub_1DB50B0E0())
      {

        v51 = v70;
        sub_1DB50A2D0();

        v52 = v71;
        v53 = v64;
        if ((*(v71 + 88))(v51, v64) == *MEMORY[0x1E69E93E8])
        {
          v54 = 0;
          v55 = "[Error] Interval already ended";
        }

        else
        {
          (*(v52 + 8))(v51, v53);
          v55 = "selfTime=%f";
          v54 = 1;
        }

        v56 = swift_slowAlloc();
        *v56 = 0;
        *(v56 + 1) = v54;
        *(v56 + 2) = 2048;
        os_unfair_lock_lock(v43);
        v57 = *(v42 + 16);
        os_unfair_lock_unlock(v43);
        *(v56 + 4) = v48 - v57;
        v58 = v68;
        v59 = sub_1DB50A210();
        _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v49, LOBYTE(v76), v59, "MakeDependency", v55, v56, 0xCu);
        MEMORY[0x1E1288220](v56, -1, -1);
        v50 = v58;
      }

      v65(v50, v81);
      os_unfair_lock_lock((v41 + 24));
      *(v41 + 16) = v48 + *(v41 + 16);
      os_unfair_lock_unlock((v41 + 24));
      v60 = v78[3];
      v61 = v67;
      v67[2] = v78[2];
      v61[3] = v60;
      v61[4] = v78[4];
      v62 = v78[1];
      *v61 = v78[0];
      v61[1] = v62;
      swift_task_localValuePop();
    }
  }

  return result;
}

uint64_t sub_1DB4C597C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, double a3@<X3>, uint64_t a4@<X8>)
{
  v66 = a2;
  v67 = a3;
  v7 = sub_1DB50A280();
  v62 = *(v7 - 8);
  v8 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1DB50A230();
  v10 = *(v72 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  sub_1DB30C4B8(a1, v70, &qword_1ECC46DD0, &qword_1DB521C40);
  if (v71)
  {
    return sub_1DB2FEA0C(v70, a4);
  }

  v55 = v7;
  v58 = v13;
  v65 = v4;
  v21 = *(&v70[0] + 1);
  v60 = *&v70[0];
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v22 = sub_1DB50A270();
  v23 = __swift_project_value_buffer(v22, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v57 = v23;
  v24 = sub_1DB50A250();
  v25 = sub_1DB50B070();
  v26 = sub_1DB50B0E0();
  v59 = a4;
  v64 = v21;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v69[0].tv_sec = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1DB3D4EE8(0xD000000000000011, 0x80000001DB52F440, &v69[0].tv_sec);
    v29 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v24, v25, v29, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1E1288220](v28, -1, -1);
    MEMORY[0x1E1288220](v27, -1, -1);
  }

  v30 = v72;
  (*(v10 + 16))(v16, v19, v72);
  v31 = sub_1DB50A2C0();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v61 = sub_1DB50A2B0();
  v56 = *(v10 + 8);
  v56(v19, v30);
  static MonotonicTime.now.getter(v69);
  tv_sec = v69[0].tv_sec;
  tv_nsec = v69[0].tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v36 = v69[0].tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  v38 = (v37 + 24);
  *(v37 + 16) = 0;
  v69[0].tv_sec = v37;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
  swift_task_localValuePush();
  v39 = v65;
  sub_1DB4BA72C(v60, v64, v66, *&v67);
  if (v39)
  {
    swift_task_localValuePop();
  }

  else
  {
    v65 = 0;
    sub_1DB30623C(a1, &qword_1ECC46DD0, &qword_1DB521C40);
    sub_1DB30BE90(v69, a1);
    *(a1 + 40) = 1;
    static MonotonicTime.now.getter(&v68);
    v40 = v68.tv_sec;
    v41 = v68.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      v67 = v68.tv_nsec;
      swift_once();
      v41 = v67;
    }

    v42 = v41 / *&qword_1EE30ED50 + v40 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v43 = sub_1DB50A250();
    v44 = v58;
    sub_1DB50A2A0();
    LODWORD(v67) = sub_1DB50B060();

    v45 = sub_1DB50B0E0();
    v46 = v63;
    if (v45)
    {

      sub_1DB50A2D0();

      v47 = v62;
      v48 = v55;
      if ((*(v62 + 88))(v46, v55) == *MEMORY[0x1E69E93E8])
      {
        v49 = 0;
        v50 = "[Error] Interval already ended";
      }

      else
      {
        (*(v47 + 8))(v46, v48);
        v50 = "selfTime=%f";
        v49 = 1;
      }

      v51 = swift_slowAlloc();
      *v51 = 0;
      *(v51 + 1) = v49;
      *(v51 + 2) = 2048;
      os_unfair_lock_lock(v38);
      v52 = *(v37 + 16);
      os_unfair_lock_unlock(v38);
      *(v51 + 4) = v42 - v52;
      v53 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v43, LOBYTE(v67), v53, "MakeDependency", v50, v51, 0xCu);
      MEMORY[0x1E1288220](v51, -1, -1);
    }

    v56(v44, v72);
    os_unfair_lock_lock((v36 + 24));
    *(v36 + 16) = v42 + *(v36 + 16);
    os_unfair_lock_unlock((v36 + 24));
    sub_1DB2FEA0C(&v69[0].tv_sec, v59);
    swift_task_localValuePop();
  }
}

char *sub_1DB4C60A0(void **a1, uint64_t a2, uint64_t a3, char *a4)
{
  v82 = a4;
  v80 = *&a3;
  v6 = sub_1DB50A280();
  v77 = *(v6 - 8);
  v7 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB50A230();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v67 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v67 - v19;
  v21 = *a1;
  if (*(v18 + 16))
  {
    return v21;
  }

  v68 = v6;
  v79 = v4;
  v72 = v18;
  v23 = *(v18 + 8);
  v24 = qword_1EE30EAE8;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = sub_1DB50A270();
  v26 = __swift_project_value_buffer(v25, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v71 = v26;
  v27 = sub_1DB50A250();
  LODWORD(v76) = sub_1DB50B070();
  v28 = sub_1DB50B0E0();
  v75 = v9;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v74 = v21;
    v81.tv_sec = v73;
    *v29 = 136315138;
    sub_1DB4679C8();
    v30 = sub_1DB50BEE0();
    v32 = v13;
    v33 = v10;
    v34 = v23;
    v35 = sub_1DB3D4EE8(v30, v31, &v81.tv_sec);

    *(v29 + 4) = v35;
    v23 = v34;
    v10 = v33;
    v13 = v32;
    v36 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v27, v76, v36, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
    v37 = v73;
    __swift_destroy_boxed_opaque_existential_0(v73);
    v38 = v37;
    v21 = v74;
    MEMORY[0x1E1288220](v38, -1, -1);
    v39 = v29;
    v9 = v75;
    MEMORY[0x1E1288220](v39, -1, -1);
  }

  (*(v10 + 16))(v16, v20, v9);
  v40 = sub_1DB50A2C0();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v76 = sub_1DB50A2B0();
  v43 = *(v10 + 8);
  v73 = (v10 + 8);
  v70 = v43;
  v43(v20, v9);
  static MonotonicTime.now.getter(&v81);
  tv_sec = v81.tv_sec;
  tv_nsec = v81.tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v45 = v81.tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  v47 = (v46 + 24);
  *(v46 + 16) = 0;
  v81.tv_sec = v46;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
  swift_task_localValuePush();
  v48 = v79;
  v49 = sub_1DB4BA878(v21, v23, *&v80, v82);
  if (v48)
  {
    swift_task_localValuePop();

    sub_1DB2FD040(v21, v23, 0);
  }

  else
  {
    v50 = v49;
    v79 = 0;
    v74 = v21;
    v51 = v21;
    v52 = v23;
    sub_1DB2FD040(v51, v23, 0);
    v53 = v72;
    *v72 = v50;
    v53[1] = 0;
    *(v53 + 16) = 1;
    v82 = v50;
    static MonotonicTime.now.getter(&v81);
    v54 = v81.tv_sec;
    v55 = v81.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      v80 = v81.tv_nsec;
      swift_once();
      v55 = v80;
    }

    v56 = v55 / *&qword_1EE30ED50 + v54 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v57 = sub_1DB50A250();
    sub_1DB50A2A0();
    LODWORD(v80) = sub_1DB50B060();

    v58 = sub_1DB50B0E0();
    v59 = v78;
    if (v58)
    {
      v72 = v23;

      sub_1DB50A2D0();

      v60 = v77;
      v61 = v68;
      if ((*(v77 + 88))(v59, v68) == *MEMORY[0x1E69E93E8])
      {
        v62 = 0;
        v63 = "[Error] Interval already ended";
      }

      else
      {
        (*(v60 + 8))(v59, v61);
        v63 = "selfTime=%f";
        v62 = 1;
      }

      v64 = swift_slowAlloc();
      *v64 = 0;
      *(v64 + 1) = v62;
      *(v64 + 2) = 2048;
      os_unfair_lock_lock(v47);
      v65 = *(v46 + 16);
      os_unfair_lock_unlock(v47);
      *(v64 + 4) = v56 - v65;
      v66 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v57, LOBYTE(v80), v66, "MakeDependency", v63, v64, 0xCu);
      MEMORY[0x1E1288220](v64, -1, -1);
      v52 = v72;
    }

    v70(v13, v75);
    os_unfair_lock_lock((v45 + 24));
    *(v45 + 16) = v56 + *(v45 + 16);
    os_unfair_lock_unlock((v45 + 24));
    swift_task_localValuePop();

    sub_1DB2FD040(v74, v52, 0);

    return v82;
  }
}

uint64_t sub_1DB4C67B4@<X0>(uint64_t a1@<X0>, const char *a2@<X2>, double a3@<X3>, void (**a4)(uint64_t)@<X8>)
{
  v71 = a2;
  v72 = a3;
  v7 = sub_1DB50A280();
  v67 = *(v7 - 8);
  v8 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v59 - v18;
  v20 = *a1;
  if (*(a1 + 16))
  {
    *a4 = v20;
    return swift_unknownObjectRetain();
  }

  else
  {
    v59 = v7;
    v63 = a4;
    v64 = v17;
    v69 = v20;
    v70 = v4;
    v22 = *(a1 + 8);
    v23 = qword_1EE30EAE8;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_1DB50A270();
    v25 = __swift_project_value_buffer(v24, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v61 = v25;
    v26 = sub_1DB50A250();
    v27 = sub_1DB50B070();
    if (sub_1DB50B0E0())
    {
      v28 = swift_slowAlloc();
      v68 = v11;
      v29 = v28;
      v30 = swift_slowAlloc();
      v65 = v22;
      v31 = v10;
      v32 = v30;
      v73.tv_sec = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1DB3D4EE8(6775106, 0xE300000000000000, &v73.tv_sec);
      v33 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v26, v27, v33, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      v34 = v32;
      v10 = v31;
      v22 = v65;
      MEMORY[0x1E1288220](v34, -1, -1);
      v35 = v29;
      v11 = v68;
      MEMORY[0x1E1288220](v35, -1, -1);
    }

    (*(v11 + 16))(v15, v19, v10);
    v36 = sub_1DB50A2C0();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    v65 = sub_1DB50A2B0();
    v39 = *(v11 + 8);
    v62 = v10;
    v68 = v11 + 8;
    v60 = v39;
    v39(v19, v10);
    static MonotonicTime.now.getter(&v73);
    tv_sec = v73.tv_sec;
    tv_nsec = v73.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v42 = v73.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v43 = swift_allocObject();
    *(v43 + 24) = 0;
    v44 = (v43 + 24);
    *(v43 + 16) = 0;
    v73.tv_sec = v43;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v46 = v69;
    v45 = v70;
    sub_1DB4BA72C(v69, v22, v71, *&v72);
    if (v45)
    {
      swift_task_localValuePop();
      sub_1DB4CB894(v46, v22, 0, MEMORY[0x1E69E7D60]);
    }

    else
    {
      v70 = 0;
      sub_1DB4CB894(*a1, *(a1 + 8), *(a1 + 16), MEMORY[0x1E69E7D60]);
      *a1 = v74;
      *(a1 + 8) = 0;
      *(a1 + 16) = 1;
      swift_unknownObjectRetain();
      static MonotonicTime.now.getter(&v73);
      v47 = v73.tv_sec;
      v48 = v73.tv_nsec;
      if (qword_1EE30ED48 != -1)
      {
        v72 = v73.tv_nsec;
        swift_once();
        v48 = v72;
      }

      v49 = v48 / *&qword_1EE30ED50 + v47 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

      v50 = sub_1DB50A250();
      v51 = v64;
      sub_1DB50A2A0();
      LODWORD(v72) = sub_1DB50B060();

      if (sub_1DB50B0E0())
      {

        v52 = v66;
        sub_1DB50A2D0();

        v53 = v67;
        v54 = v59;
        if ((*(v67 + 88))(v52, v59) == *MEMORY[0x1E69E93E8])
        {
          v55 = 0;
          v71 = "[Error] Interval already ended";
        }

        else
        {
          (*(v53 + 8))(v52, v54);
          v71 = "selfTime=%f";
          v55 = 1;
        }

        v56 = swift_slowAlloc();
        *v56 = 0;
        *(v56 + 1) = v55;
        *(v56 + 2) = 2048;
        os_unfair_lock_lock(v44);
        v57 = *(v43 + 16);
        os_unfair_lock_unlock(v44);
        *(v56 + 4) = v49 - v57;
        v51 = v64;
        v58 = sub_1DB50A210();
        _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v50, LOBYTE(v72), v58, "MakeDependency", v71, v56, 0xCu);
        MEMORY[0x1E1288220](v56, -1, -1);
      }

      v60(v51, v62);
      os_unfair_lock_lock((v42 + 24));
      *(v42 + 16) = v49 + *(v42 + 16);
      os_unfair_lock_unlock((v42 + 24));
      *v63 = v74;
      swift_task_localValuePop();
      sub_1DB4CB894(v69, v22, 0, MEMORY[0x1E69E7D60]);
    }
  }
}

uint64_t sub_1DB4C6EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = *&a4;
  v74 = a3;
  v6 = sub_1DB50A280();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v61 - v18;
  v20 = *a1;
  if (*(a1 + 16))
  {
  }

  v62 = v7;
  v63 = v6;
  v67 = v17;
  v72 = v20;
  v73 = v4;
  v21 = *(a1 + 8);
  v22 = qword_1EE30EAE8;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = sub_1DB50A270();
  v24 = __swift_project_value_buffer(v23, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v66 = v24;
  v25 = sub_1DB50A250();
  v26 = sub_1DB50B070();
  v27 = sub_1DB50B0E0();
  v69 = v10;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v70 = v21;
    v29 = v28;
    v30 = v11;
    v31 = swift_slowAlloc();
    v75.tv_sec = v31;
    *v29 = 136315138;
    *(v29 + 4) = sub_1DB3D4EE8(0xD000000000000013, 0x80000001DB530CA0, &v75.tv_sec);
    v32 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v25, v26, v32, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v33 = v31;
    v11 = v30;
    MEMORY[0x1E1288220](v33, -1, -1);
    v34 = v29;
    v10 = v69;
    v21 = v70;
    MEMORY[0x1E1288220](v34, -1, -1);
  }

  (*(v11 + 16))(v15, v19, v10);
  v35 = sub_1DB50A2C0();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v70 = sub_1DB50A2B0();
  v38 = *(v11 + 8);
  v68 = v11 + 8;
  v65 = v38;
  v38(v19, v10);
  static MonotonicTime.now.getter(&v75);
  tv_sec = v75.tv_sec;
  tv_nsec = v75.tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v40 = v75.tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  v42 = (v41 + 24);
  *(v41 + 16) = 0;
  v75.tv_sec = v41;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
  swift_task_localValuePush();
  v43 = v73;
  v44 = sub_1DB4BA878(v72, v21, v74, *&v76);
  if (v43)
  {
    swift_task_localValuePop();

    sub_1DB2FEB54();
  }

  else
  {
    v19 = v44;
    v73 = 0;
    sub_1DB2FEB54();
    *a1 = v19;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;

    static MonotonicTime.now.getter(&v75);
    v45 = v75.tv_sec;
    v46 = v75.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      v76 = v75.tv_nsec;
      swift_once();
      v46 = v76;
    }

    v47 = v46 / *&qword_1EE30ED50 + v45 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v48 = sub_1DB50A250();
    v49 = v67;
    sub_1DB50A2A0();
    LODWORD(v76) = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {

      v50 = v71;
      sub_1DB50A2D0();

      v52 = v62;
      v51 = v63;
      if ((*(v62 + 88))(v50, v63) == *MEMORY[0x1E69E93E8])
      {
        v53 = 0;
        v54 = "[Error] Interval already ended";
      }

      else
      {
        (*(v52 + 8))(v50, v51);
        v54 = "selfTime=%f";
        v53 = 1;
      }

      v55 = swift_slowAlloc();
      *v55 = 0;
      *(v55 + 1) = v53;
      *(v55 + 2) = 2048;
      os_unfair_lock_lock(v42);
      v56 = *(v41 + 16);
      os_unfair_lock_unlock(v42);
      *(v55 + 4) = v47 - v56;
      v57 = v67;
      v58 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v48, LOBYTE(v76), v58, "MakeDependency", v54, v55, 0xCu);
      v59 = v55;
      v49 = v57;
      MEMORY[0x1E1288220](v59, -1, -1);
    }

    v65(v49, v69);
    os_unfair_lock_lock((v40 + 24));
    *(v40 + 16) = v47 + *(v40 + 16);
    os_unfair_lock_unlock((v40 + 24));
    swift_task_localValuePop();

    sub_1DB2FEB54();
  }

  return v19;
}

uint64_t sub_1DB4C75D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, uint64_t a5@<X8>)
{
  v81 = a3;
  v82 = a4;
  v80 = a2;
  v8 = sub_1DB50A280();
  v74 = *(v8 - 8);
  v75 = v8;
  v9 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v73 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for JetPackAsset(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v84 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1DB50A230();
  v85 = *(v83 - 8);
  v14 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v79 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v70 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v70 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D90, &qword_1DB521BF8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (v70 - v24);
  v77 = a1;
  sub_1DB30C4B8(a1, v70 - v24, &qword_1ECC46D90, &qword_1DB521BF8);
  v76 = v22;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1DB4CB7C4(v25, a5, type metadata accessor for JetPackAsset);
  }

  v28 = *v25;
  v27 = v25[1];
  v71 = a5;
  v72 = v28;
  v78 = v27;
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v29 = sub_1DB50A270();
  v30 = __swift_project_value_buffer(v29, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v70[1] = v30;
  v31 = sub_1DB50A250();
  v32 = sub_1DB50B070();
  v33 = sub_1DB50B0E0();
  v34 = v85;
  v87 = v5;
  if (v33)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v86.tv_sec = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1DB3D4EE8(0x416B63615074654ALL, 0xEC00000074657373, &v86.tv_sec);
    v37 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v31, v32, v37, "MakeDependency", "object=%s,type=lazy", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x1E1288220](v36, -1, -1);
    MEMORY[0x1E1288220](v35, -1, -1);
  }

  v38 = v78;
  v39 = v83;
  (*(v34 + 16))(v18, v21, v83);
  v40 = sub_1DB50A2C0();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v80 = sub_1DB50A2B0();
  v45 = *(v34 + 8);
  v43 = v34 + 8;
  v44 = v45;
  v45(v21, v39);
  static MonotonicTime.now.getter(&v86);
  tv_sec = v86.tv_sec;
  tv_nsec = v86.tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v48 = v86.tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  v50 = (v49 + 24);
  *(v49 + 16) = 0;
  v86.tv_sec = v49;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
  swift_task_localValuePush();
  v51 = v84;
  v52 = v87;
  sub_1DB4BA72C(v72, v38, v81, *&v82);
  v87 = v52;
  if (v52)
  {
    swift_task_localValuePop();
  }

  else
  {
    v85 = v43;
    v53 = v77;
    sub_1DB30623C(v77, &qword_1ECC46D90, &qword_1DB521BF8);
    sub_1DB4CB82C(v51, v53, type metadata accessor for JetPackAsset);
    swift_storeEnumTagMultiPayload();
    static MonotonicTime.now.getter(&v86);
    v54 = v86.tv_sec;
    v55 = v86.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      v82 = v86.tv_nsec;
      swift_once();
      v55 = v82;
    }

    v56 = v55 / *&qword_1EE30ED50 + v54 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v57 = sub_1DB50A250();
    v58 = v79;
    sub_1DB50A2A0();
    v59 = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {

      v60 = v73;
      sub_1DB50A2D0();

      v62 = v74;
      v61 = v75;
      if ((*(v74 + 88))(v60, v75) == *MEMORY[0x1E69E93E8])
      {
        v63 = 0;
        v64 = "[Error] Interval already ended";
      }

      else
      {
        (*(v62 + 8))(v60, v61);
        v64 = "selfTime=%f";
        v63 = 1;
      }

      v65 = swift_slowAlloc();
      *v65 = 0;
      *(v65 + 1) = v63;
      *(v65 + 2) = 2048;
      os_unfair_lock_lock(v50);
      v66 = *(v49 + 16);
      os_unfair_lock_unlock(v50);
      *(v65 + 4) = v56 - v66;
      v67 = v79;
      v68 = sub_1DB50A210();
      v69 = v64;
      v58 = v67;
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v57, v59, v68, "MakeDependency", v69, v65, 0xCu);
      MEMORY[0x1E1288220](v65, -1, -1);
    }

    v44(v58, v83);
    os_unfair_lock_lock((v48 + 24));
    *(v48 + 16) = v56 + *(v48 + 16);
    os_unfair_lock_unlock((v48 + 24));
    sub_1DB4CB7C4(v84, v71, type metadata accessor for JetPackAsset);
    swift_task_localValuePop();
  }
}

uint64_t sub_1DB4C7DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, double a3@<X3>, _OWORD *a4@<X8>)
{
  v77 = a2;
  v78 = a3;
  v85 = a4;
  v6 = sub_1DB50A280();
  v73 = *(v6 - 8);
  v7 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB50A230();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v65 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v65 - v18;
  v74 = a1;
  result = sub_1DB30C4B8(a1, v82, &qword_1ECC46DB0, &qword_1DB521C18);
  if (v84)
  {
    v21 = v82[1];
    v22 = v85;
    *v85 = v82[0];
    v22[1] = v21;
    v22[2] = v82[2];
    *(v22 + 6) = v83;
  }

  else
  {
    v65 = v6;
    v70 = v13;
    v76 = v4;
    v23 = *(&v82[0] + 1);
    v71 = *&v82[0];
    if (qword_1EE30EAE8 != -1)
    {
      swift_once();
    }

    v24 = sub_1DB50A270();
    v25 = __swift_project_value_buffer(v24, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v67 = v25;
    v26 = sub_1DB50A250();
    v27 = sub_1DB50B070();
    v28 = sub_1DB50B0E0();
    v75 = v23;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v68 = v10;
      v31 = v9;
      v32 = v30;
      v80[0].tv_sec = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1DB3D4EE8(0xD000000000000011, 0x80000001DB52F150, &v80[0].tv_sec);
      v33 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v26, v27, v33, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      v34 = v32;
      v9 = v31;
      v10 = v68;
      MEMORY[0x1E1288220](v34, -1, -1);
      MEMORY[0x1E1288220](v29, -1, -1);
    }

    (*(v10 + 16))(v16, v19, v9);
    v35 = sub_1DB50A2C0();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    sub_1DB50A2B0();
    v39 = *(v10 + 8);
    v38 = v10 + 8;
    v69 = v9;
    v66 = v39;
    v39(v19, v9);
    static MonotonicTime.now.getter(v80);
    v40 = v80[0];
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    tv_sec = v80[0].tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v42 = swift_allocObject();
    *(v42 + 24) = 0;
    v43 = (v42 + 24);
    *(v42 + 16) = 0;
    v80[0].tv_sec = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v44 = v76;
    sub_1DB4BA72C(v71, v75, v77, *&v78);
    if (v44)
    {
      swift_task_localValuePop();
    }

    else
    {
      v76 = 0;
      v45 = v74;
      sub_1DB30623C(v74, &qword_1ECC46DB0, &qword_1DB521C18);
      sub_1DB3C17BC(v80, v45);
      *(v45 + 56) = 1;
      static MonotonicTime.now.getter(&v79);
      v46 = v79.tv_sec;
      tv_nsec = v79.tv_nsec;
      if (qword_1EE30ED48 != -1)
      {
        v78 = v79.tv_nsec;
        swift_once();
        tv_nsec = v78;
      }

      v48 = tv_nsec / *&qword_1EE30ED50 + v46 - (v40.tv_nsec / *&qword_1EE30ED50 + v40.tv_sec);

      v49 = sub_1DB50A250();
      v50 = v70;
      sub_1DB50A2A0();
      LODWORD(v78) = sub_1DB50B060();

      v51 = sub_1DB50B0E0();
      v52 = v69;
      if (v51)
      {
        v68 = v38;

        v53 = v72;
        sub_1DB50A2D0();

        v54 = v73;
        v55 = v65;
        if ((*(v73 + 88))(v53, v65) == *MEMORY[0x1E69E93E8])
        {
          v56 = 0;
          v57 = "[Error] Interval already ended";
        }

        else
        {
          (*(v54 + 8))(v53, v55);
          v57 = "selfTime=%f";
          v56 = 1;
        }

        v58 = swift_slowAlloc();
        *v58 = 0;
        *(v58 + 1) = v56;
        *(v58 + 2) = 2048;
        os_unfair_lock_lock(v43);
        v59 = *(v42 + 16);
        os_unfair_lock_unlock(v43);
        *(v58 + 4) = v48 - v59;
        v60 = v70;
        v61 = sub_1DB50A210();
        _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v49, LOBYTE(v78), v61, "MakeDependency", v57, v58, 0xCu);
        v62 = v58;
        v50 = v60;
        MEMORY[0x1E1288220](v62, -1, -1);
      }

      v66(v50, v52);
      os_unfair_lock_lock((tv_sec + 24));
      *(tv_sec + 16) = v48 + *(tv_sec + 16);
      os_unfair_lock_unlock((tv_sec + 24));
      v63 = v80[1];
      v64 = v85;
      *v85 = v80[0];
      v64[1] = v63;
      v64[2] = v80[2];
      v64[3].tv_sec = v81;
      swift_task_localValuePop();
    }
  }

  return result;
}

uint64_t sub_1DB4C854C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, double a3@<X3>, _OWORD *a4@<X8>)
{
  v77 = a2;
  v78 = a3;
  v85 = a4;
  v6 = sub_1DB50A280();
  v73 = *(v6 - 8);
  v7 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DB50A230();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v65 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v65 - v18;
  v74 = a1;
  result = sub_1DB30C4B8(a1, v82, &qword_1ECC46DA0, &qword_1DB521C08);
  if (v84)
  {
    v21 = v82[1];
    v22 = v85;
    *v85 = v82[0];
    v22[1] = v21;
    v22[2] = v82[2];
    *(v22 + 6) = v83;
  }

  else
  {
    v65 = v6;
    v70 = v13;
    v76 = v4;
    v23 = *(&v82[0] + 1);
    v71 = *&v82[0];
    if (qword_1EE30EAE8 != -1)
    {
      swift_once();
    }

    v24 = sub_1DB50A270();
    v25 = __swift_project_value_buffer(v24, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v67 = v25;
    v26 = sub_1DB50A250();
    v27 = sub_1DB50B070();
    v28 = sub_1DB50B0E0();
    v75 = v23;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v68 = v10;
      v31 = v9;
      v32 = v30;
      v80[0].tv_sec = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1DB3D4EE8(0xD000000000000015, 0x80000001DB52F130, &v80[0].tv_sec);
      v33 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v26, v27, v33, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      v34 = v32;
      v9 = v31;
      v10 = v68;
      MEMORY[0x1E1288220](v34, -1, -1);
      MEMORY[0x1E1288220](v29, -1, -1);
    }

    (*(v10 + 16))(v16, v19, v9);
    v35 = sub_1DB50A2C0();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    sub_1DB50A2B0();
    v39 = *(v10 + 8);
    v38 = v10 + 8;
    v69 = v9;
    v66 = v39;
    v39(v19, v9);
    static MonotonicTime.now.getter(v80);
    v40 = v80[0];
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    tv_sec = v80[0].tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v42 = swift_allocObject();
    *(v42 + 24) = 0;
    v43 = (v42 + 24);
    *(v42 + 16) = 0;
    v80[0].tv_sec = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v44 = v76;
    sub_1DB4BA72C(v71, v75, v77, *&v78);
    if (v44)
    {
      swift_task_localValuePop();
    }

    else
    {
      v76 = 0;
      v45 = v74;
      sub_1DB30623C(v74, &qword_1ECC46DA0, &qword_1DB521C08);
      sub_1DB3BEB60(v80, v45);
      *(v45 + 56) = 1;
      static MonotonicTime.now.getter(&v79);
      v46 = v79.tv_sec;
      tv_nsec = v79.tv_nsec;
      if (qword_1EE30ED48 != -1)
      {
        v78 = v79.tv_nsec;
        swift_once();
        tv_nsec = v78;
      }

      v48 = tv_nsec / *&qword_1EE30ED50 + v46 - (v40.tv_nsec / *&qword_1EE30ED50 + v40.tv_sec);

      v49 = sub_1DB50A250();
      v50 = v70;
      sub_1DB50A2A0();
      LODWORD(v78) = sub_1DB50B060();

      v51 = sub_1DB50B0E0();
      v52 = v69;
      if (v51)
      {
        v68 = v38;

        v53 = v72;
        sub_1DB50A2D0();

        v54 = v73;
        v55 = v65;
        if ((*(v73 + 88))(v53, v65) == *MEMORY[0x1E69E93E8])
        {
          v56 = 0;
          v57 = "[Error] Interval already ended";
        }

        else
        {
          (*(v54 + 8))(v53, v55);
          v57 = "selfTime=%f";
          v56 = 1;
        }

        v58 = swift_slowAlloc();
        *v58 = 0;
        *(v58 + 1) = v56;
        *(v58 + 2) = 2048;
        os_unfair_lock_lock(v43);
        v59 = *(v42 + 16);
        os_unfair_lock_unlock(v43);
        *(v58 + 4) = v48 - v59;
        v60 = v70;
        v61 = sub_1DB50A210();
        _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v49, LOBYTE(v78), v61, "MakeDependency", v57, v58, 0xCu);
        v62 = v58;
        v50 = v60;
        MEMORY[0x1E1288220](v62, -1, -1);
      }

      v66(v50, v52);
      os_unfair_lock_lock((tv_sec + 24));
      *(tv_sec + 16) = v48 + *(tv_sec + 16);
      os_unfair_lock_unlock((tv_sec + 24));
      v63 = v80[1];
      v64 = v85;
      *v85 = v80[0];
      v64[1] = v63;
      v64[2] = v80[2];
      v64[3].tv_sec = v81;
      swift_task_localValuePop();
    }
  }

  return result;
}

uint64_t sub_1DB4C8CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, double a3@<X3>, uint64_t a4@<X8>)
{
  v66 = a2;
  v67 = a3;
  v7 = sub_1DB50A280();
  v62 = *(v7 - 8);
  v8 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1DB50A230();
  v10 = *(v72 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  sub_1DB30C4B8(a1, v70, &qword_1ECC46D80, &qword_1DB521BE8);
  if (v71)
  {
    return sub_1DB2FEA0C(v70, a4);
  }

  v55 = v7;
  v58 = v13;
  v65 = v4;
  v21 = *(&v70[0] + 1);
  v60 = *&v70[0];
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v22 = sub_1DB50A270();
  v23 = __swift_project_value_buffer(v22, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v57 = v23;
  v24 = sub_1DB50A250();
  v25 = sub_1DB50B070();
  v26 = sub_1DB50B0E0();
  v59 = a4;
  v64 = v21;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v69[0].tv_sec = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1DB3D4EE8(0xD000000000000010, 0x80000001DB52CB00, &v69[0].tv_sec);
    v29 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v24, v25, v29, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1E1288220](v28, -1, -1);
    MEMORY[0x1E1288220](v27, -1, -1);
  }

  v30 = v72;
  (*(v10 + 16))(v16, v19, v72);
  v31 = sub_1DB50A2C0();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v61 = sub_1DB50A2B0();
  v56 = *(v10 + 8);
  v56(v19, v30);
  static MonotonicTime.now.getter(v69);
  tv_sec = v69[0].tv_sec;
  tv_nsec = v69[0].tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v36 = v69[0].tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  v38 = (v37 + 24);
  *(v37 + 16) = 0;
  v69[0].tv_sec = v37;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
  swift_task_localValuePush();
  v39 = v65;
  sub_1DB4BA72C(v60, v64, v66, *&v67);
  if (v39)
  {
    swift_task_localValuePop();
  }

  else
  {
    v65 = 0;
    sub_1DB30623C(a1, &qword_1ECC46D80, &qword_1DB521BE8);
    sub_1DB30BE90(v69, a1);
    *(a1 + 40) = 1;
    static MonotonicTime.now.getter(&v68);
    v40 = v68.tv_sec;
    v41 = v68.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      v67 = v68.tv_nsec;
      swift_once();
      v41 = v67;
    }

    v42 = v41 / *&qword_1EE30ED50 + v40 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v43 = sub_1DB50A250();
    v44 = v58;
    sub_1DB50A2A0();
    LODWORD(v67) = sub_1DB50B060();

    v45 = sub_1DB50B0E0();
    v46 = v63;
    if (v45)
    {

      sub_1DB50A2D0();

      v47 = v62;
      v48 = v55;
      if ((*(v62 + 88))(v46, v55) == *MEMORY[0x1E69E93E8])
      {
        v49 = 0;
        v50 = "[Error] Interval already ended";
      }

      else
      {
        (*(v47 + 8))(v46, v48);
        v50 = "selfTime=%f";
        v49 = 1;
      }

      v51 = swift_slowAlloc();
      *v51 = 0;
      *(v51 + 1) = v49;
      *(v51 + 2) = 2048;
      os_unfair_lock_lock(v38);
      v52 = *(v37 + 16);
      os_unfair_lock_unlock(v38);
      *(v51 + 4) = v42 - v52;
      v53 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v43, LOBYTE(v67), v53, "MakeDependency", v50, v51, 0xCu);
      MEMORY[0x1E1288220](v51, -1, -1);
    }

    v56(v44, v72);
    os_unfair_lock_lock((v36 + 24));
    *(v36 + 16) = v42 + *(v36 + 16);
    os_unfair_lock_unlock((v36 + 24));
    sub_1DB2FEA0C(&v69[0].tv_sec, v59);
    swift_task_localValuePop();
  }
}

uint64_t sub_1DB4C9410@<X0>(uint64_t a1@<X0>, const char *a2@<X2>, double a3@<X3>, void (**a4)(uint64_t)@<X8>)
{
  v71 = a2;
  v72 = a3;
  v7 = sub_1DB50A280();
  v67 = *(v7 - 8);
  v8 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v59 - v18;
  v20 = *a1;
  if (*(a1 + 16))
  {
    *a4 = v20;
  }

  else
  {
    v59 = v7;
    v63 = a4;
    v64 = v17;
    v69 = v20;
    v70 = v4;
    v22 = *(a1 + 8);
    v23 = qword_1EE30EAE8;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_1DB50A270();
    v25 = __swift_project_value_buffer(v24, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v61 = v25;
    v26 = sub_1DB50A250();
    v27 = sub_1DB50B070();
    if (sub_1DB50B0E0())
    {
      v28 = swift_slowAlloc();
      v68 = v11;
      v29 = v28;
      v30 = swift_slowAlloc();
      v65 = v22;
      v31 = v10;
      v32 = v30;
      v73.tv_sec = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1DB3D4EE8(0x746E6F434E4F534ALL, 0xEB00000000747865, &v73.tv_sec);
      v33 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v26, v27, v33, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      v34 = v32;
      v10 = v31;
      v22 = v65;
      MEMORY[0x1E1288220](v34, -1, -1);
      v35 = v29;
      v11 = v68;
      MEMORY[0x1E1288220](v35, -1, -1);
    }

    (*(v11 + 16))(v15, v19, v10);
    v36 = sub_1DB50A2C0();
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    swift_allocObject();
    v65 = sub_1DB50A2B0();
    v39 = *(v11 + 8);
    v62 = v10;
    v68 = v11 + 8;
    v60 = v39;
    v39(v19, v10);
    static MonotonicTime.now.getter(&v73);
    tv_sec = v73.tv_sec;
    tv_nsec = v73.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v42 = v73.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v43 = swift_allocObject();
    *(v43 + 24) = 0;
    v44 = (v43 + 24);
    *(v43 + 16) = 0;
    v73.tv_sec = v43;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v46 = v69;
    v45 = v70;
    sub_1DB4BA72C(v69, v22, v71, *&v72);
    if (v45)
    {
      swift_task_localValuePop();
      sub_1DB4CB894(v46, v22, 0, MEMORY[0x1E69E7CF8]);
    }

    else
    {
      v70 = 0;
      sub_1DB4CB894(*a1, *(a1 + 8), *(a1 + 16), MEMORY[0x1E69E7CF8]);
      *a1 = v74;
      *(a1 + 8) = 0;
      *(a1 + 16) = 1;

      static MonotonicTime.now.getter(&v73);
      v47 = v73.tv_sec;
      v48 = v73.tv_nsec;
      if (qword_1EE30ED48 != -1)
      {
        v72 = v73.tv_nsec;
        swift_once();
        v48 = v72;
      }

      v49 = v48 / *&qword_1EE30ED50 + v47 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

      v50 = sub_1DB50A250();
      v51 = v64;
      sub_1DB50A2A0();
      LODWORD(v72) = sub_1DB50B060();

      if (sub_1DB50B0E0())
      {

        v52 = v66;
        sub_1DB50A2D0();

        v53 = v67;
        v54 = v59;
        if ((*(v67 + 88))(v52, v59) == *MEMORY[0x1E69E93E8])
        {
          v55 = 0;
          v71 = "[Error] Interval already ended";
        }

        else
        {
          (*(v53 + 8))(v52, v54);
          v71 = "selfTime=%f";
          v55 = 1;
        }

        v56 = swift_slowAlloc();
        *v56 = 0;
        *(v56 + 1) = v55;
        *(v56 + 2) = 2048;
        os_unfair_lock_lock(v44);
        v57 = *(v43 + 16);
        os_unfair_lock_unlock(v44);
        *(v56 + 4) = v49 - v57;
        v51 = v64;
        v58 = sub_1DB50A210();
        _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v50, LOBYTE(v72), v58, "MakeDependency", v71, v56, 0xCu);
        MEMORY[0x1E1288220](v56, -1, -1);
      }

      v60(v51, v62);
      os_unfair_lock_lock((v42 + 24));
      *(v42 + 16) = v49 + *(v42 + 16);
      os_unfair_lock_unlock((v42 + 24));
      *v63 = v74;
      swift_task_localValuePop();
      sub_1DB4CB894(v69, v22, 0, MEMORY[0x1E69E7CF8]);
    }
  }
}

uint64_t sub_1DB4C9B48@<X0>(uint64_t a1@<X0>, const char *a2@<X2>, double a3@<X3>, uint64_t a4@<X8>)
{
  v80 = a3;
  v76 = a2;
  v7 = sub_1DB50A280();
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A230();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v63 - v18;
  v21 = *a1;
  result = *(a1 + 8);
  if (*(a1 + 16))
  {
    *a4 = v21;
    *(a4 + 8) = result & 1;
  }

  else
  {
    v67 = a4;
    v68 = v17;
    v74 = result;
    v75 = v4;
    v22 = qword_1EE30EAE8;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = sub_1DB50A270();
    v24 = __swift_project_value_buffer(v23, qword_1EE312DE8);
    sub_1DB50A250();

    sub_1DB50A1F0();
    v65 = v24;
    v25 = sub_1DB50A250();
    v26 = sub_1DB50B070();
    if (sub_1DB50B0E0())
    {
      v27 = swift_slowAlloc();
      v73 = v11;
      v28 = v27;
      v29 = swift_slowAlloc();
      v69 = v21;
      v30 = v10;
      v31 = v29;
      v79.tv_sec = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DB3D4EE8(0xD000000000000015, 0x80000001DB52CAE0, &v79.tv_sec);
      v32 = sub_1DB50A210();
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v25, v26, v32, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      v33 = v31;
      v10 = v30;
      v21 = v69;
      MEMORY[0x1E1288220](v33, -1, -1);
      v34 = v28;
      v11 = v73;
      MEMORY[0x1E1288220](v34, -1, -1);
    }

    (*(v11 + 16))(v15, v19, v10);
    v35 = sub_1DB50A2C0();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    v69 = sub_1DB50A2B0();
    v38 = *(v11 + 8);
    v66 = v10;
    v73 = v11 + 8;
    v64 = v38;
    v38(v19, v10);
    static MonotonicTime.now.getter(&v79);
    tv_sec = v79.tv_sec;
    tv_nsec = v79.tv_nsec;
    if (qword_1EE30EAC8 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    v41 = v79.tv_sec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
    v42 = swift_allocObject();
    *(v42 + 24) = 0;
    v43 = (v42 + 24);
    *(v42 + 16) = 0;
    v79.tv_sec = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
    swift_task_localValuePush();
    v45 = v74;
    v44 = v75;
    sub_1DB4BA72C(v21, v74, v76, *&v80);
    if (v44)
    {
      swift_task_localValuePop();
      sub_1DB2FD030(v21, v45, 0);
    }

    else
    {
      v75 = 0;
      sub_1DB2FD030(*a1, *(a1 + 8), *(a1 + 16));
      v46 = v78;
      *a1 = v77;
      *(a1 + 8) = v46;
      *(a1 + 16) = 1;
      static MonotonicTime.now.getter(&v79);
      v47 = v79.tv_sec;
      v48 = v79.tv_nsec;
      if (qword_1EE30ED48 != -1)
      {
        v80 = v79.tv_nsec;
        swift_once();
        v48 = v80;
      }

      v49 = v48 / *&qword_1EE30ED50 + v47 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

      v50 = sub_1DB50A250();
      v51 = v68;
      sub_1DB50A2A0();
      LODWORD(v80) = sub_1DB50B060();

      v52 = sub_1DB50B0E0();
      v53 = v66;
      if (v52)
      {

        v54 = v70;
        sub_1DB50A2D0();

        v56 = v71;
        v55 = v72;
        if ((*(v71 + 88))(v54, v72) == *MEMORY[0x1E69E93E8])
        {
          v57 = 0;
          v76 = "[Error] Interval already ended";
        }

        else
        {
          (*(v56 + 8))(v54, v55);
          v76 = "selfTime=%f";
          v57 = 1;
        }

        v58 = swift_slowAlloc();
        *v58 = 0;
        *(v58 + 1) = v57;
        *(v58 + 2) = 2048;
        os_unfair_lock_lock(v43);
        v59 = *(v42 + 16);
        os_unfair_lock_unlock(v43);
        *(v58 + 4) = v49 - v59;
        v51 = v68;
        v60 = sub_1DB50A210();
        _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v50, LOBYTE(v80), v60, "MakeDependency", v76, v58, 0xCu);
        MEMORY[0x1E1288220](v58, -1, -1);
      }

      v64(v51, v53);
      os_unfair_lock_lock((v41 + 24));
      *(v41 + 16) = v49 + *(v41 + 16);
      os_unfair_lock_unlock((v41 + 24));
      v61 = v78;
      v62 = v67;
      *v67 = v77;
      *(v62 + 8) = v61;
      swift_task_localValuePop();
      sub_1DB2FD030(v21, v74, 0);
    }
  }

  return result;
}

uint64_t sub_1DB4CA23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, uint64_t a5@<X8>)
{
  v81 = a3;
  v82 = a4;
  v80 = a2;
  v8 = sub_1DB50A280();
  v74 = *(v8 - 8);
  v75 = v8;
  v9 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v73 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PageIntentInstrumentation();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v84 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1DB50A230();
  v85 = *(v83 - 8);
  v14 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v79 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v70 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v70 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46D28, &unk_1DB521B88);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (v70 - v24);
  v77 = a1;
  sub_1DB30C4B8(a1, v70 - v24, &qword_1ECC46D28, &unk_1DB521B88);
  v76 = v22;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1DB4CB7C4(v25, a5, type metadata accessor for PageIntentInstrumentation);
  }

  v28 = *v25;
  v27 = v25[1];
  v71 = a5;
  v72 = v28;
  v78 = v27;
  if (qword_1EE30EAE8 != -1)
  {
    swift_once();
  }

  v29 = sub_1DB50A270();
  v30 = __swift_project_value_buffer(v29, qword_1EE312DE8);
  sub_1DB50A250();

  sub_1DB50A1F0();
  v70[1] = v30;
  v31 = sub_1DB50A250();
  v32 = sub_1DB50B070();
  v33 = sub_1DB50B0E0();
  v34 = v85;
  v87 = v5;
  if (v33)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v86.tv_sec = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1DB3D4EE8(0xD000000000000019, 0x80000001DB52CAC0, &v86.tv_sec);
    v37 = sub_1DB50A210();
    _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v31, v32, v37, "MakeDependency", "object=%s,type=lazy", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x1E1288220](v36, -1, -1);
    MEMORY[0x1E1288220](v35, -1, -1);
  }

  v38 = v78;
  v39 = v83;
  (*(v34 + 16))(v18, v21, v83);
  v40 = sub_1DB50A2C0();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v80 = sub_1DB50A2B0();
  v45 = *(v34 + 8);
  v43 = v34 + 8;
  v44 = v45;
  v45(v21, v39);
  static MonotonicTime.now.getter(&v86);
  tv_sec = v86.tv_sec;
  tv_nsec = v86.tv_nsec;
  if (qword_1EE30EAC8 != -1)
  {
    swift_once();
  }

  sub_1DB50BEB0();
  v48 = v86.tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC43810, &qword_1DB5147E0);
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  v50 = (v49 + 24);
  *(v49 + 16) = 0;
  v86.tv_sec = v49;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CF8, &qword_1DB521B58);
  swift_task_localValuePush();
  v51 = v84;
  v52 = v87;
  sub_1DB4BA72C(v72, v38, v81, *&v82);
  v87 = v52;
  if (v52)
  {
    swift_task_localValuePop();
  }

  else
  {
    v85 = v43;
    v53 = v77;
    sub_1DB30623C(v77, &qword_1ECC46D28, &unk_1DB521B88);
    sub_1DB4CB82C(v51, v53, type metadata accessor for PageIntentInstrumentation);
    swift_storeEnumTagMultiPayload();
    static MonotonicTime.now.getter(&v86);
    v54 = v86.tv_sec;
    v55 = v86.tv_nsec;
    if (qword_1EE30ED48 != -1)
    {
      v82 = v86.tv_nsec;
      swift_once();
      v55 = v82;
    }

    v56 = v55 / *&qword_1EE30ED50 + v54 - (tv_nsec / *&qword_1EE30ED50 + tv_sec);

    v57 = sub_1DB50A250();
    v58 = v79;
    sub_1DB50A2A0();
    v59 = sub_1DB50B060();

    if (sub_1DB50B0E0())
    {

      v60 = v73;
      sub_1DB50A2D0();

      v62 = v74;
      v61 = v75;
      if ((*(v74 + 88))(v60, v75) == *MEMORY[0x1E69E93E8])
      {
        v63 = 0;
        v64 = "[Error] Interval already ended";
      }

      else
      {
        (*(v62 + 8))(v60, v61);
        v64 = "selfTime=%f";
        v63 = 1;
      }

      v65 = swift_slowAlloc();
      *v65 = 0;
      *(v65 + 1) = v63;
      *(v65 + 2) = 2048;
      os_unfair_lock_lock(v50);
      v66 = *(v49 + 16);
      os_unfair_lock_unlock(v50);
      *(v65 + 4) = v56 - v66;
      v67 = v79;
      v68 = sub_1DB50A210();
      v69 = v64;
      v58 = v67;
      _os_signpost_emit_with_name_impl(&dword_1DB2F5000, v57, v59, v68, "MakeDependency", v69, v65, 0xCu);
      MEMORY[0x1E1288220](v65, -1, -1);
    }

    v44(v58, v83);
    os_unfair_lock_lock((v48 + 24));
    *(v48 + 16) = v56 + *(v48 + 16);
    os_unfair_lock_unlock((v48 + 24));
    sub_1DB4CB7C4(v84, v71, type metadata accessor for PageIntentInstrumentation);
    swift_task_localValuePop();
  }
}

void *IntentDispatchOptions.__allocating_init(name:dependencies:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = swift_allocObject();
  v7 = *a3;
  result[3] = a1;
  result[4] = a2;
  result[2] = v7;
  return result;
}

void *IntentDispatchOptions.init(name:dependencies:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3[3] = a1;
  v3[4] = a2;
  v3[2] = v4;
  return v3;
}

void *IntentDispatchOptions.__allocating_init(dispatcher:)(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC426F0, &unk_1DB51FC00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CD0, &qword_1DB521A78);
  *(inited + 64) = v3;
  v4 = swift_allocObject();
  *(inited + 40) = v4;
  sub_1DB30BE90(a1, v4 + 16);
  *(inited + 32) = v3;
  v5 = sub_1DB30BC94();
  v7 = MEMORY[0x1E12859D0](1, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v5);
  sub_1DB307C9C(inited);
  swift_setDeallocating();
  sub_1DB30BF1C(inited + 32);
  __swift_destroy_boxed_opaque_existential_0(a1);
  result = swift_allocObject();
  result[3] = 0xD000000000000017;
  result[4] = 0x80000001DB530C50;
  result[2] = v7;
  return result;
}

void *IntentDispatchOptions.__allocating_init()()
{
  v0 = sub_1DB30BC94();
  v2 = MEMORY[0x1E12859D0](0, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v0);
  sub_1DB307C9C(MEMORY[0x1E69E7CC0]);
  result = swift_allocObject();
  result[3] = 0xD000000000000017;
  result[4] = 0x80000001DB530C50;
  result[2] = v2;
  return result;
}

uint64_t sub_1DB4CAC40(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CD8, &qword_1DB521A88);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19[-1] - v6;
  v8 = type metadata accessor for PageIntentInstrumentation();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB30C4B8(a1, v7, &qword_1ECC46CD8, &qword_1DB521A88);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1DB30623C(v7, &qword_1ECC46CD8, &qword_1DB521A88);
    v22 = v1[2];

    DependencyDictionary.remove(dependencyFor:)(v8);
    swift_beginAccess();
    v13 = v1[4];
    v20 = v1[3];
    v21 = v13;

    MEMORY[0x1E1285C70](2108704, 0xE300000000000000);
    v14 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v14);

    return (*(v3 + 96))(v20, v21, &v22);
  }

  else
  {
    sub_1DB4CB7C4(v7, v12, type metadata accessor for PageIntentInstrumentation);
    v19[3] = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
    sub_1DB4CB82C(v12, boxed_opaque_existential_0, type metadata accessor for PageIntentInstrumentation);
    v18 = v8;
    v17 = sub_1DB40D33C(&v18);
    sub_1DB4CB768(v12);
    sub_1DB30BF1C(&v18);
    return v17;
  }
}

uint64_t IntentDispatchOptions.dispatcher.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1DB4C2138(*(v1 + 16), a1);
  return swift_task_localValuePop();
}

uint64_t IntentDispatchOptions.withDispatcher(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CD0, &qword_1DB521A78);
  sub_1DB30C4B8(a1, &v10, &qword_1ECC43570, &qword_1DB521A80);
  if (v11)
  {
    sub_1DB2FEA0C(&v10, v13);
    v12 = v4;
    *(&v10 + 1) = swift_allocObject();
    sub_1DB30BE90(v13, *(&v10 + 1) + 16);
    *&v10 = v4;
    v5 = sub_1DB40D33C(&v10);
    __swift_destroy_boxed_opaque_existential_0(v13);
    sub_1DB30BF1C(&v10);
    return v5;
  }

  else
  {
    sub_1DB30623C(&v10, &qword_1ECC43570, &qword_1DB521A80);
    v9 = v1[2];

    DependencyDictionary.remove(dependencyFor:)(v4);
    swift_beginAccess();
    v7 = v1[4];
    *&v10 = v1[3];
    *(&v10 + 1) = v7;

    MEMORY[0x1E1285C70](2108704, 0xE300000000000000);
    v8 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v8);

    return (*(v3 + 96))(v10, *(&v10 + 1), &v9);
  }
}

uint64_t *IntentDispatchOptions.jsonContext.getter@<X0>(uint64_t **a1@<X8>)
{
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v4 = v1;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1DB4C2608(v1[2], &v4);
  swift_task_localValuePop();
  result = v4;
  if (!v4)
  {
    result = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  }

  *a1 = result;
  return result;
}

uint64_t IntentDispatchOptions.withJSONContext(_:)(uint64_t *a1)
{
  v1 = *a1;
  v4[4] = &type metadata for JSONContext;
  v4[0] = &type metadata for JSONContext;
  v4[1] = v1;

  v2 = sub_1DB40D33C(v4);
  sub_1DB30BF1C(v4);
  return v2;
}

uint64_t IntentDispatchOptions.timeout.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v7 = v1;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1DB4C2AA8(*(v1 + 16), &v7);
  result = swift_task_localValuePop();
  v4 = v9;
  v5 = v8;
  v6 = v7;
  if (v9)
  {
    v6 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = (v4 | v5) & 1;
  return result;
}

uint64_t IntentDispatchOptions.withTimeout(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v7 = &type metadata for IntentDispatchTimeout;
  v6 = v2;
  v5[0] = &type metadata for IntentDispatchTimeout;
  v5[1] = v1;
  v3 = sub_1DB40D33C(v5);
  sub_1DB30BF1C(v5);
  return v3;
}

uint64_t IntentDispatchOptions.withTimeoutDefault(_:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (sub_1DB4C1A7C(*(v1 + 16), &type metadata for IntentDispatchTimeout, &qword_1ECC46D30, &qword_1DB521B98))
  {
  }

  else
  {
    v7 = &type metadata for IntentDispatchTimeout;
    v6 = v3;
    v5[0] = &type metadata for IntentDispatchTimeout;
    v5[1] = v2;
    v1 = sub_1DB40D33C(v5);
    sub_1DB30BF1C(v5);
  }

  return v1;
}

uint64_t IntentDispatchOptions.pageIntentInstrumentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CD8, &qword_1DB521A88);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v11 - v6;
  if (qword_1EE30EAE0 != -1)
  {
    swift_once();
  }

  v11[1] = v2;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1DB4C2F3C(*(v2 + 16), v7);
  swift_task_localValuePop();
  v8 = type metadata accessor for PageIntentInstrumentation();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v7, 1, v8) != 1)
  {
    return sub_1DB4CB7C4(v7, a1, type metadata accessor for PageIntentInstrumentation);
  }

  swift_storeEnumTagMultiPayload();
  result = (v9)(v7, 1, v8);
  if (result != 1)
  {
    return sub_1DB30623C(v7, &qword_1ECC46CD8, &qword_1DB521A88);
  }

  return result;
}

uint64_t IntentDispatchOptions.withPageIntentInstrumentation(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46CD8, &qword_1DB521A88);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  sub_1DB4CB82C(a1, &v9 - v4, type metadata accessor for PageIntentInstrumentation);
  v6 = type metadata accessor for PageIntentInstrumentation();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  sub_1DB4CAC40(v5);
  sub_1DB30623C(v5, &qword_1ECC46CD8, &qword_1DB521A88);
  v7 = sub_1DB40D614(&type metadata for IntentDispatchOptions.BadOrderingCanary);

  return v7;
}

uint64_t IntentDispatchOptions.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t IntentDispatchOptions.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t getEnumTagSinglePayload for IntentDispatchOptions.BadOrderingCanary(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntentDispatchOptions.BadOrderingCanary(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1DB4CB768(uint64_t a1)
{
  v2 = type metadata accessor for PageIntentInstrumentation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB4CB7C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB4CB82C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB4CB894(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  if (a3)
  {
    return a4();
  }

  else
  {
  }
}

__n128 _JSONObjectDecoder.init(wrapping:with:at:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = *a1;
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t _JSONObjectDecoder.container<A>(keyedBy:)()
{
  v2 = v1;
  sub_1DB3171C0(v0, v6);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);

  result = sub_1DB4CB9AC(v6, v3, v4, v7);
  if (!v2)
  {
    type metadata accessor for _JSONObjectKeyedDecodingContainer();
    swift_getWitnessTable();
    return sub_1DB50B7D0();
  }

  return result;
}

uint64_t sub_1DB4CB9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1DB330D60(a1, v17);
  if (v18)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v17, v18);
    sub_1DB300B14(v8, v16);
    sub_1DB336FD4(0, &qword_1ECC45BF0, 0x1E695DF20);
    if (swift_dynamicCast())
    {

      result = __swift_destroy_boxed_opaque_existential_0(v17);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    sub_1DB30623C(v17, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  result = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, a2);
  if (result != 2 && (result & 1) != 0)
  {

    v10 = sub_1DB50B3E0();
    swift_allocError();
    v12 = v11;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
    *v12 = sub_1DB50B7C0();
    sub_1DB50B3C0();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69E6B08], v10);
    swift_willThrow();
    return sub_1DB3151CC(a1);
  }

LABEL_9:
  v14 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v14;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t *_JSONObjectDecoder.unkeyedContainer()@<X0>(uint64_t *a1@<X8>)
{
  sub_1DB3171C0(v1, v19);
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  a1[3] = &type metadata for _JSONObjectUnkeyedDecodingContainer;
  a1[4] = sub_1DB4CBE14();
  v5 = swift_allocObject();
  *a1 = v5;

  v6 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, v4);
  if (v6 == 2 || (v6 & 1) == 0)
  {
    JSONObject.array.getter(&v15);
    v7 = v17;
    if (!v17)
    {
      v12 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43440, &unk_1DB521C50);
      result = sub_1DB3151CC(v19);
      *(&v13 + 1) = 0;
      *&v13 = sub_1DB3A6F38;
      v14 = &off_1F56FB538;
      goto LABEL_8;
    }
  }

  else
  {
    JSONObject.array.getter(&v15);
    v7 = v17;
    if (!v17)
    {

      sub_1DB30623C(&v15, &qword_1ECC42E28, &qword_1DB50FB20);
      v8 = sub_1DB50B3E0();
      swift_allocError();
      v10 = v9;
      sub_1DB50B3C0();
      (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69E6B00], v8);
      swift_willThrow();
      sub_1DB3151CC(v19);
      return __swift_deallocate_boxed_opaque_existential_0(a1);
    }
  }

  result = sub_1DB3151CC(v19);
  v12 = v15;
  v13 = v16;
  v14 = v18;
LABEL_8:
  *(v5 + 16) = v12;
  *(v5 + 24) = v13;
  *(v5 + 40) = v7;
  *(v5 + 48) = v14;
  *(v5 + 56) = v4;
  *(v5 + 64) = v3;
  *(v5 + 72) = 0;
  return result;
}

unint64_t sub_1DB4CBE14()
{
  result = qword_1ECC46DE0;
  if (!qword_1ECC46DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46DE0);
  }

  return result;
}

uint64_t _JSONObjectDecoder.singleValueContainer()@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for _JSONObjectSingleValueDecodingContainer;
  a1[4] = sub_1DB4CBEE8();
  v3 = swift_allocObject();
  *a1 = v3;
  sub_1DB3171C0(v1, v3 + 16);
  v4 = *(v1 + 48);
  *(v3 + 56) = *(v1 + 40);
  *(v3 + 64) = v4;
}

unint64_t sub_1DB4CBEE8()
{
  result = qword_1ECC46DE8[0];
  if (!qword_1ECC46DE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC46DE8);
  }

  return result;
}

uint64_t sub_1DB4CBF6C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for _JSONObjectSingleValueDecodingContainer;
  a1[4] = sub_1DB4CBEE8();
  v3 = swift_allocObject();
  *a1 = v3;
  sub_1DB3171C0(v1, v3 + 16);
  v4 = *(v1 + 48);
  *(v3 + 56) = *(v1 + 40);
  *(v3 + 64) = v4;
}

uint64_t sub_1DB4CC01C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB4CC058(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DB4CC0A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB4CC0EC()
{
  sub_1DB330D60(v0, v6);
  if (v7)
  {
    v1 = __swift_project_boxed_opaque_existential_1(v6, v7);
    sub_1DB300B14(v1, v5);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    v2 = swift_dynamicCast();
    if (v2)
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_1DB30623C(v6, &qword_1ECC42E38, &qword_1DB50FB80);
    return 1;
  }

  return v2;
}

uint64_t sub_1DB4CC1A8()
{
  v1 = v0;
  sub_1DB330D60(v0, v11);
  if (!v12)
  {
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(v11, v12);
  v2 = sub_1DB4088D8();
  __swift_destroy_boxed_opaque_existential_0(v11);
  if (!v2)
  {
LABEL_7:
    v5 = sub_1DB50B3E0();
    swift_allocError();
    v7 = v6;
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
    *v7 = MEMORY[0x1E69E6370];

    sub_1DB50B3C0();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x1E69E6AF8], v5);
    swift_willThrow();
    return v5 & 1;
  }

  sub_1DB330D60(v1, v11);
  if (!v12)
  {
LABEL_6:
    sub_1DB30623C(v11, &qword_1ECC42E38, &qword_1DB50FB80);
    goto LABEL_7;
  }

  v3 = __swift_project_boxed_opaque_existential_1(v11, v12);
  sub_1DB300B14(v3, v10);
  sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
    goto LABEL_7;
  }

  v4 = v13;
  LOBYTE(v5) = [v13 BOOLValue];

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v5 & 1;
}

double sub_1DB4CC38C()
{
  v1 = JSONObject.number.getter();
  if (!v1)
  {
    goto LABEL_8;
  }

  if (v1 == *MEMORY[0x1E695E4D0] || v1 == *MEMORY[0x1E695E4C0])
  {

LABEL_8:
    v3 = sub_1DB50B3E0();
    swift_allocError();
    v5 = v4;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
    *v5 = MEMORY[0x1E69E63B0];

    sub_1DB50B3C0();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v3);
    swift_willThrow();
    return v0;
  }

  v19[0] = v1;
  v8 = v1;
  swift_getAtKeyPath();

  v0 = *&v19[3];
  v9 = sub_1DB50AD80();
  sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  v10 = v8;
  v11 = sub_1DB50B0C0();

  if ((v11 & 1) == 0)
  {
    v12 = sub_1DB50B3E0();
    swift_allocError();
    v14 = v13;

    sub_1DB50B320();

    strcpy(v19, "Parsed number ");
    HIBYTE(v19[1]) = -18;
    v15 = [v10 description];
    v16 = sub_1DB50A650();
    v18 = v17;

    MEMORY[0x1E1285C70](v16, v18);

    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB530DB0);
    MEMORY[0x1E1285C70](0x656C62756F44, 0xE600000000000000);
    sub_1DB50B3C0();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x1E69E6B00], v12);
    swift_willThrow();
  }

  return v0;
}

float sub_1DB4CC69C()
{
  v1 = JSONObject.number.getter();
  if (!v1)
  {
    goto LABEL_8;
  }

  if (v1 == *MEMORY[0x1E695E4D0] || v1 == *MEMORY[0x1E695E4C0])
  {

LABEL_8:
    v3 = sub_1DB50B3E0();
    swift_allocError();
    v5 = v4;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
    *v5 = MEMORY[0x1E69E6448];

    sub_1DB50B3C0();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v3);
    swift_willThrow();
    return v0;
  }

  v19[0] = v1;
  v8 = v1;
  swift_getAtKeyPath();

  v0 = v20;
  v9 = sub_1DB50ADC0();
  sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  v10 = v8;
  v11 = sub_1DB50B0C0();

  if ((v11 & 1) == 0)
  {
    v12 = sub_1DB50B3E0();
    swift_allocError();
    v14 = v13;

    sub_1DB50B320();

    strcpy(v19, "Parsed number ");
    HIBYTE(v19[1]) = -18;
    v15 = [v10 description];
    v16 = sub_1DB50A650();
    v18 = v17;

    MEMORY[0x1E1285C70](v16, v18);

    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB530DB0);
    MEMORY[0x1E1285C70](0x74616F6C46, 0xE500000000000000);
    sub_1DB50B3C0();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x1E69E6B00], v12);
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_1DB4CC9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(), uint64_t a5, uint64_t a6)
{
  v11 = JSONObject.number.getter();
  if (!v11)
  {
    goto LABEL_8;
  }

  if (v11 == *MEMORY[0x1E695E4D0] || v11 == *MEMORY[0x1E695E4C0])
  {

LABEL_8:
    v13 = sub_1DB50B3E0();
    swift_allocError();
    v15 = v14;
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
    *v15 = a3;

    sub_1DB50B3C0();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v13);
    swift_willThrow();
    return a1;
  }

  v18 = v11;
  swift_getAtKeyPath();

  a1 = v28;
  v19 = a4();
  sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  v20 = v18;
  v21 = sub_1DB50B0C0();

  if ((v21 & 1) == 0)
  {
    a1 = sub_1DB50B3E0();
    swift_allocError();
    v27 = v22;

    sub_1DB50B320();

    v23 = [v20 description];
    v24 = sub_1DB50A650();
    v26 = v25;

    MEMORY[0x1E1285C70](v24, v26);

    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB530DB0);
    MEMORY[0x1E1285C70](a5, a6);
    sub_1DB50B3C0();
    (*(*(a1 - 8) + 104))(v27, *MEMORY[0x1E69E6B00], a1);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1DB4CCCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v11 = JSONObject.number.getter();
  if (!v11)
  {
    goto LABEL_8;
  }

  if (v11 == *MEMORY[0x1E695E4D0] || v11 == *MEMORY[0x1E695E4C0])
  {

LABEL_8:
    v13 = sub_1DB50B3E0();
    swift_allocError();
    v15 = v14;
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
    *v15 = a3;

    sub_1DB50B3C0();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v13);
    swift_willThrow();
    return a1;
  }

  v18 = v11;
  swift_getAtKeyPath();

  a1 = v28;
  v19 = a4(v28);
  sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  v20 = v18;
  v21 = sub_1DB50B0C0();

  if ((v21 & 1) == 0)
  {
    a1 = sub_1DB50B3E0();
    swift_allocError();
    v27 = v22;

    sub_1DB50B320();

    v23 = [v20 description];
    v24 = sub_1DB50A650();
    v26 = v25;

    MEMORY[0x1E1285C70](v24, v26);

    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB530DB0);
    MEMORY[0x1E1285C70](a5, a6);
    sub_1DB50B3C0();
    (*(*(a1 - 8) + 104))(v27, *MEMORY[0x1E69E6B00], a1);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1DB4CCFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v11 = JSONObject.number.getter();
  if (!v11)
  {
    goto LABEL_8;
  }

  if (v11 == *MEMORY[0x1E695E4D0] || v11 == *MEMORY[0x1E695E4C0])
  {

LABEL_8:
    v13 = sub_1DB50B3E0();
    swift_allocError();
    v15 = v14;
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
    *v15 = a3;

    sub_1DB50B3C0();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v13);
    swift_willThrow();
    return a1;
  }

  v18 = v11;
  swift_getAtKeyPath();

  a1 = v28;
  v19 = a4(v28);
  sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  v20 = v18;
  v21 = sub_1DB50B0C0();

  if ((v21 & 1) == 0)
  {
    a1 = sub_1DB50B3E0();
    swift_allocError();
    v27 = v22;

    sub_1DB50B320();

    v23 = [v20 description];
    v24 = sub_1DB50A650();
    v26 = v25;

    MEMORY[0x1E1285C70](v24, v26);

    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB530DB0);
    MEMORY[0x1E1285C70](a5, a6);
    sub_1DB50B3C0();
    (*(*(a1 - 8) + 104))(v27, *MEMORY[0x1E69E6B00], a1);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1DB4CD2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v11 = JSONObject.number.getter();
  if (!v11)
  {
    goto LABEL_8;
  }

  if (v11 == *MEMORY[0x1E695E4D0] || v11 == *MEMORY[0x1E695E4C0])
  {

LABEL_8:
    v13 = sub_1DB50B3E0();
    swift_allocError();
    v15 = v14;
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
    *v15 = a3;

    sub_1DB50B3C0();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v13);
    swift_willThrow();
    return a1;
  }

  v18 = v11;
  swift_getAtKeyPath();

  a1 = v28;
  v19 = a4(v28);
  sub_1DB336FD4(0, &qword_1ECC433A0, 0x1E696AD98);
  v20 = v18;
  v21 = sub_1DB50B0C0();

  if ((v21 & 1) == 0)
  {
    a1 = sub_1DB50B3E0();
    swift_allocError();
    v27 = v22;

    sub_1DB50B320();

    v23 = [v20 description];
    v24 = sub_1DB50A650();
    v26 = v25;

    MEMORY[0x1E1285C70](v24, v26);

    MEMORY[0x1E1285C70](0xD000000000000011, 0x80000001DB530DB0);
    MEMORY[0x1E1285C70](a5, a6);
    sub_1DB50B3C0();
    (*(*(a1 - 8) + 104))(v27, *MEMORY[0x1E69E6B00], a1);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1DB4CD60C@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v73 = a3;
  v76 = a1;
  v77 = a4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  v8 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = v67 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v10 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v67[1] = v67 - v11;
  v75 = sub_1DB50B120();
  v78 = *(v75 - 8);
  v12 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v70 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v68 = v67 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v67 - v17;
  v19 = *(a2 - 8);
  v20 = v19[8];
  MEMORY[0x1EEE9AC00](v21);
  v23 = v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v67 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v67 - v28;
  sub_1DB330D60(v6, &v80);
  if (v82)
  {
    v30 = __swift_project_boxed_opaque_existential_1(&v80, v82);
    sub_1DB300B14(v30, v79);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(&v80);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0(&v80);
  }

  else
  {
    sub_1DB30623C(&v80, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v31 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, *(v6 + 40));
  if (v31 == 2 || (v31 & 1) == 0)
  {
LABEL_9:
    v74 = v5;
    sub_1DB3171C0(v6, &v80);
    v38 = swift_dynamicCast();
    v39 = v19[7];
    if (v38)
    {
      v39(v18, 0, 1, a2);
      v40 = v19[4];
      v40(v29, v18, a2);
      v41 = v77;
      v42 = v29;
      return (v40)(v41, v42, a2);
    }

    v39(v18, 1, 1, a2);
    v44 = *(v78 + 8);
    v78 += 8;
    v44(v18, v75);
    v45 = sub_1DB509CA0();
    v46 = v76;
    if (v45 == v76)
    {
      v49 = v45;
      JSONObject.string.getter();
      if (v50)
      {
        v76 = v44;
        sub_1DB509C60();

        v51 = v68;
        if (!swift_dynamicCast())
        {
          v39(v51, 1, 1, a2);
          v76(v51, v75);
          v58 = sub_1DB50B3E0();
          swift_allocError();
          v60 = v59;
          v61 = *(v6 + 48);

          sub_1DB50B3C0();
          (*(*(v58 - 8) + 104))(v60, *MEMORY[0x1E69E6B00], v58);
          return swift_willThrow();
        }

        v39(v51, 0, 1, a2);
        v40 = v19[4];
        v40(v26, v51, a2);
        v41 = v77;
        v42 = v26;
        return (v40)(v41, v42, a2);
      }

      v53 = *(v6 + 48);
      v54 = sub_1DB50B3E0();
      swift_allocError();
      v56 = v55;
      v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
      *v56 = v49;
    }

    else
    {
      v47 = sub_1DB509DD0();
      if (v47 != v46)
      {
        sub_1DB3171C0(v6, &v80);
        v48 = *(v6 + 48);
        v83 = *(v6 + 40);
        v84 = v48;
        v79[3] = &type metadata for _JSONObjectDecoder;
        v79[4] = sub_1DB34A154();
        v79[0] = swift_allocObject();
        sub_1DB34A1A8(&v80, v79[0] + 16);

        sub_1DB50ADB0();
        return sub_1DB34A204(&v80);
      }

      v52 = v47;
      sub_1DB330D60(v6, &v80);
      v69 = v52;
      if (v82)
      {
        __swift_project_boxed_opaque_existential_1(&v80, v82);
        sub_1DB408C04(v71);
        __swift_destroy_boxed_opaque_existential_0(&v80);
      }

      else
      {
        sub_1DB30623C(&v80, &qword_1ECC42E38, &qword_1DB50FB80);
        (*(*(v52 - 8) + 56))(v71, 1, 1, v52);
      }

      v62 = v70;
      if (swift_dynamicCast())
      {
        v39(v62, 0, 1, a2);
        v63 = v19[4];
        v63(v23, v62, a2);
        return (v63)(v77, v23, a2);
      }

      v39(v62, 1, 1, a2);
      v44(v62, v75);
      v64 = *(v6 + 48);
      v54 = sub_1DB50B3E0();
      swift_allocError();
      v56 = v65;
      v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
      *v56 = v69;
    }

    sub_1DB50B3C0();
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8], v54);
    return swift_willThrow();
  }

  v32 = sub_1DB50B3E0();
  swift_allocError();
  v34 = v33;
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
  *v34 = v76;
  v36 = *(v6 + 48);
  v80 = 0;
  v81 = 0xE000000000000000;

  sub_1DB50B320();

  v80 = 0x6465746365707845;
  v81 = 0xE900000000000020;
  v37 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v37);

  MEMORY[0x1E1285C70](0xD000000000000017, 0x80000001DB530DF0);
  sub_1DB50B3C0();
  (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6B08], v32);
  return swift_willThrow();
}

double sub_1DB4CDFE4()
{
  swift_getKeyPath();
  v1 = *(v0 + 48);
  v2 = sub_1DB4CC38C();

  return v2;
}

float sub_1DB4CE040()
{
  swift_getKeyPath();
  v1 = *(v0 + 48);
  v2 = sub_1DB4CC69C();

  return v2;
}

uint64_t sub_1DB4CE09C()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1DB4CC9AC(KeyPath, *(v0 + 48), MEMORY[0x1E69E6530], MEMORY[0x1E6969E50], 7630409, 0xE300000000000000);

  return v2;
}

uint64_t sub_1DB4CE120()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1DB4CCCC4(KeyPath, *(v0 + 48), MEMORY[0x1E69E7230], MEMORY[0x1E696A0C0], 947154505, 0xE400000000000000);

  return v2;
}

uint64_t sub_1DB4CE1A4()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1DB4CCFDC(KeyPath, *(v0 + 48), MEMORY[0x1E69E7290], MEMORY[0x1E696A0C8], 0x3631746E49, 0xE500000000000000);

  return v2;
}

uint64_t sub_1DB4CE22C()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1DB4CD2F4(KeyPath, *(v0 + 48), MEMORY[0x1E69E72F0], MEMORY[0x1E696A0D8], 0x3233746E49, 0xE500000000000000);

  return v2;
}

uint64_t sub_1DB4CE2B4()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1DB4CC9AC(KeyPath, *(v0 + 48), MEMORY[0x1E69E7360], MEMORY[0x1E696A100], 0x3436746E49, 0xE500000000000000);

  return v2;
}

uint64_t sub_1DB4CE354()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1DB4CC9AC(KeyPath, *(v0 + 48), MEMORY[0x1E69E6810], MEMORY[0x1E696A038], 1953384789, 0xE400000000000000);

  return v2;
}

uint64_t sub_1DB4CE3D8()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1DB4CCCC4(KeyPath, *(v0 + 48), MEMORY[0x1E69E7508], MEMORY[0x1E696A120], 0x38746E4955, 0xE500000000000000);

  return v2;
}

uint64_t sub_1DB4CE460()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1DB4CCFDC(KeyPath, *(v0 + 48), MEMORY[0x1E69E75F8], MEMORY[0x1E696A128], 0x3631746E4955, 0xE600000000000000);

  return v2;
}

uint64_t sub_1DB4CE4E8()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1DB4CD2F4(KeyPath, *(v0 + 48), MEMORY[0x1E69E7668], MEMORY[0x1E696A130], 0x3233746E4955, 0xE600000000000000);

  return v2;
}

uint64_t sub_1DB4CE570()
{
  KeyPath = swift_getKeyPath();
  v2 = sub_1DB4CC9AC(KeyPath, *(v0 + 48), MEMORY[0x1E69E76D8], MEMORY[0x1E696A140], 0x3436746E4955, 0xE600000000000000);

  return v2;
}

uint64_t sub_1DB4CE628(uint64_t a1)
{
  sub_1DB330D60(v1, v12);
  if (!v13)
  {
    sub_1DB30623C(v12, &qword_1ECC42E38, &qword_1DB50FB80);
LABEL_7:
    v6 = *(a1 + 16);
    return sub_1DB50A9D0();
  }

  v3 = __swift_project_boxed_opaque_existential_1(v12, v13);
  sub_1DB300B14(v3, v11);
  sub_1DB336FD4(0, &qword_1ECC45BF0, 0x1E695DF20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v12);
    goto LABEL_7;
  }

  __swift_destroy_boxed_opaque_existential_0(v12);
  sub_1DB330D60(v1, v12);
  if (v13)
  {
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v4 = sub_1DB408A14();
    v5 = __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v5 = sub_1DB30623C(v12, &qword_1ECC42E38, &qword_1DB50FB80);
    v4 = MEMORY[0x1E69E7CC0];
  }

  v12[0] = v4;
  MEMORY[0x1EEE9AC00](v5);
  v9 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB4D31FC();
  v8 = sub_1DB50A890();

  return v8;
}

uint64_t sub_1DB4CE7F0(uint64_t a1, void (*a2)(_BYTE *, void *), uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = sub_1DB50BE60();
  JSONObject.subscript.getter(v9, v10, v13);

  v11 = sub_1DB317CE0(a1, *(v4 + 48), v7, v8);
  a2(v13, v11);
  sub_1DB3151CC(v13);
}

uint64_t sub_1DB4CE8C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  v4 = sub_1DB50BE60();
  JSONObject.subscript.getter(v4, v5, v11);

  if (v12)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v11, v12);
    sub_1DB300B14(v6, v10);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    v7 = swift_dynamicCast();
    if (v7)
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v11);
    return v7 ^ 1u;
  }

  else
  {
    sub_1DB30623C(v11, &qword_1ECC42E38, &qword_1DB50FB80);
    return 0;
  }
}

uint64_t sub_1DB4CE9A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  v4 = sub_1DB50BE60();
  JSONObject.subscript.getter(v4, v5, v11);

  if (v12)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v11, v12);
    sub_1DB300B14(v6, v10);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    v7 = swift_dynamicCast();
    if (v7)
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    sub_1DB30623C(v11, &qword_1ECC42E38, &qword_1DB50FB80);
    return 1;
  }

  return v7;
}

uint64_t sub_1DB4CEA90(uint64_t a1, uint64_t a2)
{
  sub_1DB4CE7F0(a1, sub_1DB4CEAE8, 0, a2);
  if (!v2)
  {
    v3 = v5;
  }

  return v3 & 1;
}

uint64_t sub_1DB4CEAE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DB4CC1A8();
  if (!v1)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1DB4CEB20(uint64_t a1, uint64_t a2)
{
  result = sub_1DB4CE7F0(a1, sub_1DB4CEB74, 0, a2);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1DB4CEB74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1DB330D60(a1, v13);
  if (v14)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v13, v14);
    sub_1DB300B14(v3, v12);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_0(v13);
      *a2 = v10;
      a2[1] = v11;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    sub_1DB30623C(v13, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v5 = MEMORY[0x1E69E6158];
  v6 = sub_1DB50B3E0();
  swift_allocError();
  v8 = v7;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
  *v8 = v5;

  sub_1DB50B3C0();
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6AF8], v6);
  return swift_willThrow();
}

double sub_1DB4CECF4(uint64_t a1, uint64_t a2)
{
  sub_1DB4CE7F0(a1, sub_1DB4CED48, 0, a2);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1DB4CED48@<X0>(double *a1@<X8>)
{
  swift_getKeyPath();
  v3 = sub_1DB4CC38C();

  if (!v1)
  {
    *a1 = v3;
  }

  return result;
}

float sub_1DB4CEDC8(uint64_t a1, uint64_t a2)
{
  sub_1DB4CE7F0(a1, sub_1DB4CEE1C, 0, a2);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1DB4CEE1C@<X0>(float *a1@<X8>)
{
  swift_getKeyPath();
  v3 = sub_1DB4CC69C();

  if (!v1)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t sub_1DB4CEE9C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1DB4CC9AC(KeyPath, a1, MEMORY[0x1E69E6530], MEMORY[0x1E6969E50], 7630409, 0xE300000000000000);

  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1DB4CEF3C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1DB4CCCC4(KeyPath, a1, MEMORY[0x1E69E7230], MEMORY[0x1E696A0C0], 947154505, 0xE400000000000000);

  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1DB4CEFDC@<X0>(uint64_t a1@<X1>, _WORD *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1DB4CCFDC(KeyPath, a1, MEMORY[0x1E69E7290], MEMORY[0x1E696A0C8], 0x3631746E49, 0xE500000000000000);

  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1DB4CF080@<X0>(uint64_t a1@<X1>, _DWORD *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1DB4CD2F4(KeyPath, a1, MEMORY[0x1E69E72F0], MEMORY[0x1E696A0D8], 0x3233746E49, 0xE500000000000000);

  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1DB4CF124@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1DB4CC9AC(KeyPath, a1, MEMORY[0x1E69E7360], MEMORY[0x1E696A100], 0x3436746E49, 0xE500000000000000);

  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1DB4CF1C8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1DB4CC9AC(KeyPath, a1, MEMORY[0x1E69E6810], MEMORY[0x1E696A038], 1953384789, 0xE400000000000000);

  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1DB4CF268(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, void *))
{
  result = sub_1DB4CE7F0(a1, a3, 0, a2);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1DB4CF2A8@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1DB4CCCC4(KeyPath, a1, MEMORY[0x1E69E7508], MEMORY[0x1E696A120], 0x38746E4955, 0xE500000000000000);

  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1DB4CF34C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, void *))
{
  result = sub_1DB4CE7F0(a1, a3, 0, a2);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1DB4CF38C@<X0>(uint64_t a1@<X1>, _WORD *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1DB4CCFDC(KeyPath, a1, MEMORY[0x1E69E75F8], MEMORY[0x1E696A128], 0x3631746E4955, 0xE600000000000000);

  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1DB4CF430(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, void *))
{
  result = sub_1DB4CE7F0(a1, a3, 0, a2);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1DB4CF470@<X0>(uint64_t a1@<X1>, _DWORD *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1DB4CD2F4(KeyPath, a1, MEMORY[0x1E69E7668], MEMORY[0x1E696A130], 0x3233746E4955, 0xE600000000000000);

  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1DB4CF514(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, void *))
{
  result = sub_1DB4CE7F0(a1, a3, 0, a2);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1DB4CF554@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = sub_1DB4CC9AC(KeyPath, a1, MEMORY[0x1E69E76D8], MEMORY[0x1E696A140], 0x3436746E4955, 0xE600000000000000);

  if (!v2)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1DB4CF5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 24);
  v7[2] = *(a3 + 16);
  v7[3] = a4;
  v7[4] = v5;
  v7[5] = a5;
  v7[7] = a1;
  return sub_1DB4CE7F0(a2, sub_1DB4D30B0, v7, a3);
}

uint64_t sub_1DB4CF650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v63 = a6;
  v64 = a2;
  v67 = a4;
  v68 = a7;
  v70 = a3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  v10 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v61 = v57 - v11;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v12 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v57[1] = v57 - v13;
  v66 = sub_1DB50B120();
  v69 = *(v66 - 8);
  v14 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v60 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v58 = v57 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v57 - v19;
  v21 = *(a5 - 8);
  v22 = v21[8];
  MEMORY[0x1EEE9AC00](v23);
  v25 = v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v57 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v57 - v30;
  sub_1DB330D60(a1, v72);
  if (v73)
  {
    v32 = __swift_project_boxed_opaque_existential_1(v72, v73);
    sub_1DB300B14(v32, v71);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v72);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0(v72);
  }

  else
  {
    sub_1DB30623C(v72, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v33 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, *(v70 + 40));
  if (v33 != 2 && (v33 & 1) != 0)
  {
    v34 = sub_1DB50B3E0();
    swift_allocError();
    v36 = v35;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
    *v36 = v67;
    v38 = *(v70 + 48);

    sub_1DB50B3C0();
    v39 = MEMORY[0x1E69E6B08];
    goto LABEL_25;
  }

LABEL_9:
  v65 = v7;
  sub_1DB3171C0(a1, v72);
  v40 = swift_dynamicCast();
  v41 = v21[7];
  if (v40)
  {
    v41(v20, 0, 1, a5);
    v42 = v21[4];
    v42(v31, v20, a5);
    return (v42)(v68, v31, a5);
  }

  v41(v20, 1, 1, a5);
  v44 = *(v69 + 8);
  v69 += 8;
  v44(v20, v66);
  v45 = sub_1DB509CA0();
  if (v45 == v67)
  {
    v48 = v45;
    JSONObject.string.getter();
    if (v49)
    {
      sub_1DB509C60();

      v50 = v58;
      if (swift_dynamicCast())
      {
        v41(v50, 0, 1, a5);
        v51 = v21[4];
        v51(v28, v50, a5);
        return (v51)(v68, v28, a5);
      }

      v41(v50, 1, 1, a5);
      v44(v50, v66);
      v34 = sub_1DB50B3E0();
      swift_allocError();
      v36 = v52;

      sub_1DB50B3C0();
      v39 = MEMORY[0x1E69E6B00];
      goto LABEL_25;
    }
  }

  else
  {
    v46 = v67;
    v47 = sub_1DB509DD0();
    if (v47 != v46)
    {
      sub_1DB3171C0(a1, v72);
      v74 = *(v70 + 40);
      v75 = v64;
      v71[3] = &type metadata for _JSONObjectDecoder;
      v71[4] = sub_1DB34A154();
      v71[0] = swift_allocObject();
      sub_1DB34A1A8(v72, v71[0] + 16);

      sub_1DB50ADB0();
      return sub_1DB34A204(v72);
    }

    v48 = v47;
    sub_1DB330D60(a1, v72);
    if (v73)
    {
      __swift_project_boxed_opaque_existential_1(v72, v73);
      sub_1DB408C04(v61);
      __swift_destroy_boxed_opaque_existential_0(v72);
    }

    else
    {
      sub_1DB30623C(v72, &qword_1ECC42E38, &qword_1DB50FB80);
      (*(*(v48 - 8) + 56))(v61, 1, 1, v48);
    }

    v53 = v60;
    if (swift_dynamicCast())
    {
      v41(v53, 0, 1, a5);
      v54 = v21[4];
      v54(v25, v53, a5);
      return (v54)(v68, v25, a5);
    }

    v41(v53, 1, 1, a5);
    v44(v53, v66);
  }

  v34 = sub_1DB50B3E0();
  swift_allocError();
  v36 = v55;
  v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
  *v36 = v48;

  sub_1DB50B3C0();
  v39 = MEMORY[0x1E69E6AF8];
LABEL_25:
  (*(*(v34 - 8) + 104))(v36, *v39, v34);
  return swift_willThrow();
}

uint64_t sub_1DB4CFEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 + 24);
  v9[2] = *(a3 + 16);
  v9[3] = a4;
  v9[4] = v7;
  v9[5] = a5;
  v9[7] = a1;
  sub_1DB50B7C0();
  return sub_1DB4CE7F0(a2, sub_1DB4D3084, v9, a3);
}

uint64_t sub_1DB4CFF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1DB330D60(a1, v21);
  if (v22)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v21, v22);
    sub_1DB300B14(v10, v20);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v21);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0(v21);
  }

  else
  {
    sub_1DB30623C(v21, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v11 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, *(a3 + 40));
  if (v11 != 2 && (v11 & 1) != 0)
  {
    v12 = sub_1DB50B3E0();
    swift_allocError();
    v14 = v13;
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
    *v14 = a4;
    v16 = *(a3 + 48);

    sub_1DB50B3C0();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x1E69E6B08], v12);
    return swift_willThrow();
  }

LABEL_9:
  sub_1DB3171C0(a1, v20);
  v18 = *(a3 + 40);

  result = sub_1DB4CB9AC(v20, v18, a2, v21);
  if (!v5)
  {
    type metadata accessor for _JSONObjectKeyedDecodingContainer();
    swift_getWitnessTable();
    return sub_1DB50B7D0();
  }

  return result;
}

uint64_t sub_1DB4D01D8(uint64_t a1, uint64_t a2)
{
  v5[1] = *(a2 + 16);
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46E70, qword_1DB5221B0);
  return sub_1DB4CE7F0(a1, sub_1DB4D3064, v5, a2);
}

uint64_t *sub_1DB4D0264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  sub_1DB330D60(a1, v37);
  if (v38)
  {
    v14 = __swift_project_boxed_opaque_existential_1(v37, v38);
    sub_1DB300B14(v14, &v33);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v37);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0(v37);
  }

  else
  {
    sub_1DB30623C(v37, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v15 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, *(a3 + 40));
  if (v15 != 2 && (v15 & 1) != 0)
  {
    v16 = sub_1DB50B3E0();
    swift_allocError();
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC434F0, &qword_1DB515DD0) + 48);
    v18[3] = a5;
    v18[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a4, a5);
    v21 = *(a3 + 48);

    sub_1DB50B3C0();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF0], v16);
    return swift_willThrow();
  }

LABEL_9:
  sub_1DB3171C0(a1, v37);
  v23 = *(a3 + 40);
  a7[3] = &type metadata for _JSONObjectUnkeyedDecodingContainer;
  a7[4] = sub_1DB4CBE14();
  v24 = swift_allocObject();
  *a7 = v24;

  v25 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, v23);
  if (v25 == 2 || (v25 & 1) == 0)
  {
    JSONObject.array.getter(&v33);
    v26 = v35;
    if (!v35)
    {
      v30 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43440, &unk_1DB521C50);
      sub_1DB3151CC(v37);
      *(&v31 + 1) = 0;
      *&v31 = sub_1DB3A6F38;
      v32 = &off_1F56FB538;
      goto LABEL_16;
    }
  }

  else
  {
    JSONObject.array.getter(&v33);
    v26 = v35;
    if (!v35)
    {

      sub_1DB30623C(&v33, &qword_1ECC42E28, &qword_1DB50FB20);
      v27 = sub_1DB50B3E0();
      swift_allocError();
      v29 = v28;

      sub_1DB50B3C0();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6B00], v27);
      swift_willThrow();
      sub_1DB3151CC(v37);
      return __swift_deallocate_boxed_opaque_existential_0(a7);
    }
  }

  sub_1DB3151CC(v37);
  v30 = v33;
  v31 = v34;
  v32 = v36;
LABEL_16:
  *(v24 + 16) = v30;
  *(v24 + 24) = v31;
  *(v24 + 40) = v26;
  *(v24 + 48) = v32;
  *(v24 + 56) = v23;
  *(v24 + 64) = a2;
  *(v24 + 72) = 0;
}

uint64_t sub_1DB4D0688@<X0>(uint64_t *a1@<X8>)
{
  JSONObject.subscript.getter(0x7265707573, 0xE500000000000000, v17);
  v3 = sub_1DB324840(0x7265707573, 0xE500000000000000, 1, *(v1 + 48));
  sub_1DB330D60(v17, v15);
  if (v16)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v15, v16);
    sub_1DB300B14(v4, &v14);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v15);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    sub_1DB30623C(v15, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v5 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, *(v1 + 40));
  if (v5 != 2 && (v5 & 1) != 0)
  {
    v6 = sub_1DB50B3E0();
    swift_allocError();
    v8 = v7;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
    *v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44ED0, &unk_1DB518DC0);
    sub_1DB50B3C0();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B08], v6);
    swift_willThrow();
    return sub_1DB3151CC(v17);
  }

LABEL_9:
  a1[3] = &type metadata for _JSONObjectDecoder;
  a1[4] = sub_1DB34A154();
  v11 = swift_allocObject();
  *a1 = v11;
  v12 = v17[1];
  *(v11 + 16) = v17[0];
  *(v11 + 32) = v12;
  v13 = *(v1 + 40);
  *(v11 + 48) = v18;
  *(v11 + 56) = v13;
  *(v11 + 64) = v3;
}

uint64_t sub_1DB4D08E4(uint64_t a1, uint64_t a2)
{
  v5[1] = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44ED0, &unk_1DB518DC0);
  return sub_1DB4CE7F0(a1, sub_1DB4D2FF4, v5, a2);
}

uint64_t sub_1DB4D0970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1DB330D60(a1, v18);
  if (v19)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v18, v19);
    sub_1DB300B14(v8, v17);
    sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v18);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    sub_1DB30623C(v18, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  v9 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, *(a3 + 40));
  if (v9 != 2 && (v9 & 1) != 0)
  {
    v10 = sub_1DB50B3E0();
    swift_allocError();
    v12 = v11;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
    *v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44ED0, &unk_1DB518DC0);

    sub_1DB50B3C0();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x1E69E6B08], v10);
    return swift_willThrow();
  }

LABEL_9:
  a4[3] = &type metadata for _JSONObjectDecoder;
  a4[4] = sub_1DB34A154();
  v15 = swift_allocObject();
  *a4 = v15;
  sub_1DB3171C0(a1, v15 + 16);
  *(v15 + 56) = *(a3 + 40);
  *(v15 + 64) = a2;
}

uint64_t sub_1DB4D0EB4()
{
  result = sub_1DB50BB50();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DB4D0F04()
{
  result = sub_1DB50BB60();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DB4D0FAC()
{
  result = sub_1DB50BB90();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DB4D0FFC()
{
  result = sub_1DB50BB70();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DB4D113C()
{
  result = sub_1DB50BBA0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DB4D118C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

void *sub_1DB4D1254()
{
  v1 = *(v0 + 56);
  v2 = sub_1DB324840(v1, 0, 0, *(v0 + 48));
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(v0, v3);
  if (v1 >= (*(v4 + 16))(v3, v4))
  {
    v7 = sub_1DB50B3E0();
    swift_allocError();
    v9 = v8;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
    *v9 = MEMORY[0x1E69E7CA0] + 8;
    sub_1DB50B3C0();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B08], v7);
    swift_willThrow();
  }

  else
  {
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    __swift_project_boxed_opaque_existential_1(v0, v5);
    (*(v6 + 24))(v1, v5, v6);
  }

  return v2;
}

uint64_t sub_1DB4D13E4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(v0, v2);
  if (v1 >= (*(v3 + 16))(v2, v3))
  {
    sub_1DB324840(v1, 0, 0, *(v0 + 48));
    v7 = sub_1DB50B3E0();
    swift_allocError();
    v9 = v8;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
    *v9 = MEMORY[0x1E69E7CA0] + 8;
    sub_1DB50B3C0();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B08], v7);
    swift_willThrow();
  }

  else
  {
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    __swift_project_boxed_opaque_existential_1(v0, v4);
    (*(v5 + 24))(v15, v1, v4, v5);
    if (v16)
    {
      v6 = __swift_project_boxed_opaque_existential_1(v15, v16);
      sub_1DB300B14(v6, v14);
      sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_0(v15);
        v11 = 0;
        return v11 & 1;
      }

      __swift_destroy_boxed_opaque_existential_0(v15);
    }

    else
    {
      sub_1DB30623C(v15, &qword_1ECC42E38, &qword_1DB50FB80);
    }

    *(v0 + 56) = v1 + 1;
    v11 = 1;
  }

  return v11 & 1;
}

void *sub_1DB4D1610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t)@<X2>, void *a4@<X8>)
{
  v77 = a3;
  v74 = a1;
  v75 = a4;
  v78 = *(a2 - 8);
  v6 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v72 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  v8 = *(*(v76 - 1) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v10 = v65 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v65 - v13;
  v15 = sub_1DB50B120();
  v73 = *(v15 - 8);
  v16 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v65 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v65 - v23;
  v25 = v79;
  result = sub_1DB4D1254();
  if (!v25)
  {
    v70 = v24;
    v65[1] = v14;
    v66 = v21;
    v67 = v18;
    v68 = v10;
    v79 = v4;
    v71 = result;
    v69 = 0;
    sub_1DB330D60(v85, v81);
    if (v82)
    {
      v27 = __swift_project_boxed_opaque_existential_1(v81, v82);
      sub_1DB300B14(v27, v80);
      sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
      v28 = swift_dynamicCast();
      v29 = v79;
      if ((v28 & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_0(v81);
        v31 = v70;
        goto LABEL_10;
      }

      __swift_destroy_boxed_opaque_existential_0(v81);
    }

    else
    {
      sub_1DB30623C(v81, &qword_1ECC42E38, &qword_1DB50FB80);
      v29 = v79;
    }

    v30 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, v29[5]);
    v31 = v70;
    if (v30 != 2 && (v30 & 1) != 0)
    {

      v32 = sub_1DB50B3E0();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
      *v34 = v74;
      v36 = v29[6];

      sub_1DB50B3C0();
      v37 = MEMORY[0x1E69E6B08];
LABEL_27:
      (*(*(v32 - 8) + 104))(v34, *v37, v32);
      swift_willThrow();
      return sub_1DB3151CC(v85);
    }

LABEL_10:
    sub_1DB3171C0(v85, v81);
    if (swift_dynamicCast())
    {
      sub_1DB3151CC(v85);

      v38 = v78;
      (*(v78 + 56))(v31, 0, 1, a2);
      result = (*(v38 + 32))(v75, v31, a2);
      v39 = v29[7];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (!v40)
      {
LABEL_12:
        v29[7] = v41;
        return result;
      }

      __break(1u);
    }

    else
    {
      v77 = *(v78 + 56);
      v77(v31, 1, 1, a2);
      v76 = *(v73 + 8);
      v76(v31, v15);
      v42 = sub_1DB509CA0();
      if (v42 == v74)
      {
        v50 = v42;
        JSONObject.string.getter();
        if (!v51)
        {
          v32 = sub_1DB50B3E0();
          swift_allocError();
          v34 = v56;
          v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
          *v34 = v50;
          sub_1DB50B3C0();
          v37 = MEMORY[0x1E69E6AF8];
          goto LABEL_27;
        }

        sub_1DB509C60();

        v52 = v66;
        if (!swift_dynamicCast())
        {
          v77(v52, 1, 1, a2);
          v76(v52, v15);
          v32 = sub_1DB50B3E0();
          swift_allocError();
          v34 = v58;
          sub_1DB50B3C0();
          v37 = MEMORY[0x1E69E6B00];
          goto LABEL_27;
        }

        sub_1DB3151CC(v85);

        v77(v52, 0, 1, a2);
        result = (*(v78 + 32))(v75, v52, a2);
        v53 = v79[7];
        v40 = __OFADD__(v53, 1);
        v54 = v53 + 1;
        if (!v40)
        {
          v79[7] = v54;
          return result;
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v43 = v74;
      v44 = sub_1DB509DD0();
      if (v44 == v43)
      {
        v55 = v44;
        sub_1DB330D60(v85, v81);
        if (v82)
        {
          __swift_project_boxed_opaque_existential_1(v81, v82);
          sub_1DB408C04(v68);
          v29 = v79;
          __swift_destroy_boxed_opaque_existential_0(v81);
        }

        else
        {
          sub_1DB30623C(v81, &qword_1ECC42E38, &qword_1DB50FB80);
          (*(*(v55 - 8) + 56))(v68, 1, 1, v55);
        }

        v59 = v67;
        if (swift_dynamicCast())
        {
          sub_1DB3151CC(v85);

          v77(v59, 0, 1, a2);
          result = (*(v78 + 32))(v75, v59, a2);
          v60 = v29[7];
          v40 = __OFADD__(v60, 1);
          v41 = v60 + 1;
          if (!v40)
          {
            goto LABEL_12;
          }

          __break(1u);
        }

        v77(v59, 1, 1, a2);
        v76(v59, v15);
        v61 = sub_1DB50B3E0();
        swift_allocError();
        v63 = v62;
        v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
        *v63 = v55;
        sub_1DB50B3C0();
        (*(*(v61 - 8) + 104))(v63, *MEMORY[0x1E69E6AF8], v61);
        swift_willThrow();
        return sub_1DB3151CC(v85);
      }

      sub_1DB3171C0(v85, v81);
      v83 = v29[5];
      v84 = v71;
      v80[3] = &type metadata for _JSONObjectDecoder;
      v80[4] = sub_1DB34A154();
      v80[0] = swift_allocObject();
      sub_1DB34A1A8(v81, v80[0] + 16);

      v45 = v72;
      v46 = v69;
      sub_1DB50ADB0();
      sub_1DB34A204(v81);
      sub_1DB3151CC(v85);
      v47 = v78;
      result = v75;
      if (v46)
      {
        return result;
      }

      v48 = v29[7];
      v40 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (!v40)
      {
        v29[7] = v49;
        return (*(v47 + 32))(result, v45, a2);
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  return result;
}

uint64_t sub_1DB4D206C(uint64_t a1)
{
  result = sub_1DB4D1254();
  if (!v2)
  {
    v5 = result;
    sub_1DB330D60(v20, v18);
    if (v19)
    {
      v6 = __swift_project_boxed_opaque_existential_1(v18, v19);
      sub_1DB300B14(v6, v17);
      sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_0(v18);
LABEL_10:
        sub_1DB3171C0(v20, v17);
        v13 = v1[5];

        sub_1DB4CB9AC(v17, v13, v5, v18);
        type metadata accessor for _JSONObjectKeyedDecodingContainer();
        swift_getWitnessTable();
        sub_1DB50B7D0();
        result = sub_1DB3151CC(v20);
        v14 = v1[7];
        v15 = __OFADD__(v14, 1);
        v16 = v14 + 1;
        if (v15)
        {
          __break(1u);
        }

        else
        {
          v1[7] = v16;
        }

        return result;
      }

      __swift_destroy_boxed_opaque_existential_0(v18);
    }

    else
    {
      sub_1DB30623C(v18, &qword_1ECC42E38, &qword_1DB50FB80);
    }

    v7 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, v1[5]);
    if (v7 != 2 && (v7 & 1) != 0)
    {

      v8 = sub_1DB50B3E0();
      swift_allocError();
      v10 = v9;
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
      *v10 = a1;
      v12 = v1[6];

      sub_1DB50B3C0();
      (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69E6B08], v8);
      swift_willThrow();
      return sub_1DB3151CC(v20);
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1DB4D2314@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  result = sub_1DB4D1254();
  if (!v2)
  {
    v6 = result;
    sub_1DB330D60(v32, v30);
    if (v31)
    {
      v7 = __swift_project_boxed_opaque_existential_1(v30, v31);
      sub_1DB300B14(v7, &v26);
      sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_0(v30);
        goto LABEL_10;
      }

      __swift_destroy_boxed_opaque_existential_0(v30);
    }

    else
    {
      sub_1DB30623C(v30, &qword_1ECC42E38, &qword_1DB50FB80);
    }

    v8 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, *(v1 + 40));
    if (v8 != 2 && (v8 & 1) != 0)
    {
      v9 = sub_1DB50B3E0();
      swift_allocError();
      v11 = v10;
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
      *v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46E70, qword_1DB5221B0);
      sub_1DB50B3C0();
      (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69E6B08], v9);
      swift_willThrow();
      return sub_1DB3151CC(v32);
    }

LABEL_10:
    sub_1DB3171C0(v32, v30);
    v13 = *(v1 + 40);

    v14 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, v13);
    if (v14 == 2 || (v14 & 1) == 0)
    {
      JSONObject.array.getter(&v26);
      v15 = v28;
      if (!v28)
      {
        v19 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43440, &unk_1DB521C50);
        sub_1DB3151CC(v30);
        v24 = sub_1DB3A6F38;
        v20 = &off_1F56FB538;
LABEL_18:
        a1[3] = &type metadata for _JSONObjectUnkeyedDecodingContainer;
        a1[4] = sub_1DB4CBE14();
        result = swift_allocObject();
        *a1 = result;
        *(result + 16) = v19;
        *(result + 24) = v24;
        *(result + 40) = v15;
        *(result + 48) = v20;
        *(result + 56) = v13;
        *(result + 64) = v6;
        *(result + 72) = 0;
        v21 = *(v3 + 56);
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          __break(1u);
        }

        else
        {
          *(v3 + 56) = v23;
          return sub_1DB3151CC(v32);
        }

        return result;
      }
    }

    else
    {
      JSONObject.array.getter(&v26);
      v15 = v28;
      if (!v28)
      {

        sub_1DB30623C(&v26, &qword_1ECC42E28, &qword_1DB50FB20);
        v16 = sub_1DB50B3E0();
        swift_allocError();
        v18 = v17;
        sub_1DB50B3C0();
        (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B00], v16);
        swift_willThrow();
        sub_1DB3151CC(v30);
        return sub_1DB3151CC(v32);
      }
    }

    sub_1DB3151CC(v30);
    v19 = v26;
    v24 = v27;
    v20 = v29;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1DB4D271C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DB4D1254();
  if (!v2)
  {
    v5 = result;
    sub_1DB330D60(v19, v17);
    if (v18)
    {
      v6 = __swift_project_boxed_opaque_existential_1(v17, v18);
      sub_1DB300B14(v6, &v16);
      sub_1DB336FD4(0, &qword_1ECC42E40, 0x1E695DFB0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_0(v17);
LABEL_10:
        a1[3] = &type metadata for _JSONObjectDecoder;
        a1[4] = sub_1DB34A154();
        v12 = swift_allocObject();
        *a1 = v12;
        sub_1DB3171C0(v19, v12 + 16);
        *(v12 + 56) = *(v1 + 40);
        *(v12 + 64) = v5;

        result = sub_1DB3151CC(v19);
        v13 = *(v1 + 56);
        v14 = __OFADD__(v13, 1);
        v15 = v13 + 1;
        if (v14)
        {
          __break(1u);
        }

        else
        {
          *(v1 + 56) = v15;
        }

        return result;
      }

      __swift_destroy_boxed_opaque_existential_0(v17);
    }

    else
    {
      sub_1DB30623C(v17, &qword_1ECC42E38, &qword_1DB50FB80);
    }

    v7 = sub_1DB31EE8C(0xD00000000000002BLL, 0x80000001DB52FE10, *(v1 + 40));
    if (v7 != 2 && (v7 & 1) != 0)
    {
      v8 = sub_1DB50B3E0();
      swift_allocError();
      v10 = v9;
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
      *v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44ED0, &unk_1DB518DC0);
      sub_1DB50B3C0();
      (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69E6B08], v8);
      swift_willThrow();
      return sub_1DB3151CC(v19);
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1DB4D296C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

BOOL sub_1DB4D29C4()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  return v1 >= (*(v3 + 16))(v2, v3);
}

uint64_t sub_1DB4D2A48()
{
  v2 = v0;
  sub_1DB4D1254();
  if (v1)
  {
    return v0 & 1;
  }

  LOBYTE(v0) = sub_1DB4CC1A8();
  sub_1DB3151CC(v7);

  v4 = *(v2 + 56);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (!v5)
  {
    *(v2 + 56) = v6;
    return v0 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D2C7C()
{
  result = sub_1DB50B960();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DB4D2CCC()
{
  result = sub_1DB50B970();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DB4D2D74()
{
  result = sub_1DB50B9A0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DB4D2DC4()
{
  result = sub_1DB50B980();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DB4D2F04()
{
  result = sub_1DB50B9B0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DB4D2F54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1DB4D2FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3[2];
  v5 = v3[3];
  return sub_1DB4D0970(a1, a2, v3[4], a3);
}

uint64_t objectdestroy_2Tm_0()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v1 = v0[7];

  v2 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DB4D3198(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = a1[1];

  return sub_1DB50BE70();
}

unint64_t sub_1DB4D31FC()
{
  result = qword_1ECC46E78;
  if (!qword_1ECC46E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC43100, &unk_1DB511B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46E78);
  }

  return result;
}

uint64_t sub_1DB4D3260()
{
  sub_1DB330D60(v0, v11);
  if (!v12)
  {
    sub_1DB30623C(v11, &qword_1ECC42E38, &qword_1DB50FB80);
LABEL_6:
    v3 = MEMORY[0x1E69E6158];
    v2 = *(v0 + 48);
    v4 = sub_1DB50B3E0();
    swift_allocError();
    v6 = v5;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
    *v6 = v3;

    sub_1DB50B3C0();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6AF8], v4);
    swift_willThrow();
    return v2;
  }

  v1 = __swift_project_boxed_opaque_existential_1(v11, v12);
  sub_1DB300B14(v1, v10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
    goto LABEL_6;
  }

  v2 = v9;
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v2;
}

uint64_t sub_1DB4D33E4()
{
  v2 = v0;
  sub_1DB4D1254();
  if (v1)
  {
    return v0;
  }

  v3 = JSONObject.string.getter();
  if (!v4)
  {
    v0 = sub_1DB50B3E0();
    swift_allocError();
    v10 = v9;
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
    *v10 = MEMORY[0x1E69E6158];
    sub_1DB50B3C0();
    (*(*(v0 - 8) + 104))(v10, *MEMORY[0x1E69E6AF8], v0);
    swift_willThrow();
    sub_1DB3151CC(v12);
    return v0;
  }

  v0 = v3;
  sub_1DB3151CC(v12);

  v6 = *(v2 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    *(v2 + 56) = v8;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D3540()
{
  swift_getKeyPath();
  sub_1DB4D1254();
  if (v1)
  {
  }

  sub_1DB4CC38C();

  result = sub_1DB3151CC(v6);
  v3 = *(v0 + 56);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 56) = v5;
  }

  return result;
}

uint64_t sub_1DB4D3608()
{
  swift_getKeyPath();
  sub_1DB4D1254();
  if (v1)
  {
  }

  sub_1DB4CC69C();

  result = sub_1DB3151CC(v6);
  v3 = *(v0 + 56);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 56) = v5;
  }

  return result;
}

uint64_t sub_1DB4D36D0()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v4 = sub_1DB4D1254();
  if (v1)
  {

    return v0;
  }

  v0 = sub_1DB4CC9AC(KeyPath, v4, MEMORY[0x1E69E6530], MEMORY[0x1E6969E50], 7630409, 0xE300000000000000);

  result = sub_1DB3151CC(v9);
  v6 = *(v2 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    *(v2 + 56) = v8;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D37C0()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v4 = sub_1DB4D1254();
  if (v1)
  {

    return v0;
  }

  v0 = sub_1DB4CCCC4(KeyPath, v4, MEMORY[0x1E69E7230], MEMORY[0x1E696A0C0], 947154505, 0xE400000000000000);

  result = sub_1DB3151CC(v9);
  v6 = *(v2 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    *(v2 + 56) = v8;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D38B0()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v4 = sub_1DB4D1254();
  if (v1)
  {

    return v0;
  }

  v0 = sub_1DB4CCFDC(KeyPath, v4, MEMORY[0x1E69E7290], MEMORY[0x1E696A0C8], 0x3631746E49, 0xE500000000000000);

  result = sub_1DB3151CC(v9);
  v6 = *(v2 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    *(v2 + 56) = v8;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D39A4()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v4 = sub_1DB4D1254();
  if (v1)
  {

    return v0;
  }

  v0 = sub_1DB4CD2F4(KeyPath, v4, MEMORY[0x1E69E72F0], MEMORY[0x1E696A0D8], 0x3233746E49, 0xE500000000000000);

  result = sub_1DB3151CC(v9);
  v6 = *(v2 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    *(v2 + 56) = v8;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D3A98()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v4 = sub_1DB4D1254();
  if (v1)
  {

    return v0;
  }

  v0 = sub_1DB4CC9AC(KeyPath, v4, MEMORY[0x1E69E7360], MEMORY[0x1E696A100], 0x3436746E49, 0xE500000000000000);

  result = sub_1DB3151CC(v9);
  v6 = *(v2 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    *(v2 + 56) = v8;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D3B8C()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v4 = sub_1DB4D1254();
  if (v1)
  {

    return v0;
  }

  v0 = sub_1DB4CC9AC(KeyPath, v4, MEMORY[0x1E69E6810], MEMORY[0x1E696A038], 1953384789, 0xE400000000000000);

  result = sub_1DB3151CC(v9);
  v6 = *(v2 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    *(v2 + 56) = v8;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D3C7C()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v4 = sub_1DB4D1254();
  if (v1)
  {

    return v0;
  }

  v0 = sub_1DB4CCCC4(KeyPath, v4, MEMORY[0x1E69E7508], MEMORY[0x1E696A120], 0x38746E4955, 0xE500000000000000);

  result = sub_1DB3151CC(v9);
  v6 = *(v2 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    *(v2 + 56) = v8;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D3D70()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v4 = sub_1DB4D1254();
  if (v1)
  {

    return v0;
  }

  v0 = sub_1DB4CCFDC(KeyPath, v4, MEMORY[0x1E69E75F8], MEMORY[0x1E696A128], 0x3631746E4955, 0xE600000000000000);

  result = sub_1DB3151CC(v9);
  v6 = *(v2 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    *(v2 + 56) = v8;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D3E64()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v4 = sub_1DB4D1254();
  if (v1)
  {

    return v0;
  }

  v0 = sub_1DB4CD2F4(KeyPath, v4, MEMORY[0x1E69E7668], MEMORY[0x1E696A130], 0x3233746E4955, 0xE600000000000000);

  result = sub_1DB3151CC(v9);
  v6 = *(v2 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    *(v2 + 56) = v8;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D3F58()
{
  v2 = v0;
  KeyPath = swift_getKeyPath();
  v4 = sub_1DB4D1254();
  if (v1)
  {

    return v0;
  }

  v0 = sub_1DB4CC9AC(KeyPath, v4, MEMORY[0x1E69E76D8], MEMORY[0x1E696A140], 0x3436746E4955, 0xE600000000000000);

  result = sub_1DB3151CC(v9);
  v6 = *(v2 + 56);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    *(v2 + 56) = v8;
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D40CC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F08, &unk_1DB5225E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v44 - v6;
  v53 = sub_1DB50A1D0();
  v8 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v51 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v44 - v12;
  v13 = MEMORY[0x1E69E7CC8];
  v15 = a1 + 64;
  v14 = *(a1 + 64);
  v16 = 1 << *(a1 + 32);
  v66 = MEMORY[0x1E69E7CC8];
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v14;
  v19 = (v16 + 63) >> 6;
  v52 = (v11 + 56);
  v45 = v11;
  v50 = (v11 + 32);

  v21 = 0;
  v46 = a1;
  v47 = v7;
  if (!v18)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = v23 | (v21 << 6);
      sub_1DB314C3C(*(a1 + 48) + 40 * v24, v63);
      sub_1DB300B14(*(a1 + 56) + 32 * v24, v64 + 8);
      v60 = v64[0];
      v61 = v64[1];
      v62 = v65;
      v58 = v63[0];
      v59 = v63[1];
      sub_1DB50A110();
      if (!v2)
      {
        break;
      }

      (*v52)(v7, 1, 1, v53);
      sub_1DB30623C(&v58, &unk_1ECC46F10, &qword_1DB516B78);
      result = sub_1DB30623C(v7, &qword_1ECC46F08, &unk_1DB5225E0);
      v2 = 0;
      if (!v18)
      {
        goto LABEL_7;
      }
    }

    v49 = 0;
    v25 = v53;
    (*v52)(v7, 0, 1, v53);
    v26 = *v50;
    v27 = v7;
    v28 = v48;
    (*v50)(v48, v27, v25);
    v56[0] = v60;
    v56[1] = v61;
    v57 = v62;
    v55 = v59;
    v54 = v58;
    v26(v51, v28, v25);
    v29 = v26;
    v30 = *(v13 + 16);
    if (*(v13 + 24) <= v30)
    {
      sub_1DB31CB14(v30 + 1, 1);
    }

    v13 = v66;
    v31 = *(v66 + 40);
    result = sub_1DB50B270();
    v32 = v13 + 64;
    v33 = -1 << *(v13 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    v7 = v47;
    v2 = v49;
    if (((-1 << v34) & ~*(v13 + 64 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v32 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_24;
        }
      }

      goto LABEL_28;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v13 + 64 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v32 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = *(v13 + 48) + 40 * v36;
    v42 = v54;
    v43 = v55;
    *(v41 + 32) = *&v56[0];
    *v41 = v42;
    *(v41 + 16) = v43;
    v29((*(v13 + 56) + *(v45 + 72) * v36), v51, v53);
    ++*(v13 + 16);
    result = __swift_destroy_boxed_opaque_existential_0(v56 + 1);
    a1 = v46;
  }

  while (v18);
LABEL_7:
  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      return v13;
    }

    v18 = *(v15 + 8 * v22);
    ++v21;
    if (v18)
    {
      v21 = v22;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1DB4D52D8()
{
  v0 = sub_1DB50A010();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1DB509FD0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1DB509FF0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1DB50A030();
  __swift_allocate_value_buffer(v6, qword_1EE312E00);
  __swift_project_value_buffer(v6, qword_1EE312E00);
  sub_1DB509FE0();
  sub_1DB509FC0();
  sub_1DB50A000();
  return sub_1DB50A020();
}

uint64_t Bag.init(from:profile:profileVersion:processInfo:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  sub_1DB30BE90(a1, v21);
  v14 = type metadata accessor for AMSKitAMSBag();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC7JetCore12AMSKitAMSBag____lazy_storage___amsBag] = 0;
  sub_1DB30BE90(v21, &v15[OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag]);
  v16 = &v15[OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_profile];
  *v16 = a2;
  *(v16 + 1) = a3;
  v17 = &v15[OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_profileVersion];
  *v17 = a4;
  *(v17 + 1) = a5;
  *&v15[OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_processInfo] = a6;
  v20.receiver = v15;
  v20.super_class = v14;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  result = __swift_destroy_boxed_opaque_existential_0(v21);
  *a7 = v18;
  return result;
}

id sub_1DB4D56F0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_1DB50A620();

  return v6;
}

uint64_t sub_1DB4D575C(uint64_t a1)
{
  v2 = sub_1DB50A1D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 32);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag), *(a1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 24));
  sub_1DB50A650();
  v8 = sub_1DB50A0A0();

  if (!v8)
  {
    return 0;
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1DB50B480();
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v17[1] = v8;
    v18 = v11;
    v12 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v13 = *(v10 + 56);
    do
    {
      v18(v6, v12, v2);
      sub_1DB4D5974();
      (*(v10 - 8))(v6, v2);
      sub_1DB50B450();
      v14 = *(v19 + 16);
      sub_1DB50B490();
      sub_1DB50B4A0();
      sub_1DB50B460();
      v12 += v13;
      --v9;
    }

    while (v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46ED0, &qword_1DB5224C0);
  v15 = sub_1DB50A980();

  return v15;
}

id sub_1DB4D5974()
{
  v1 = sub_1DB509F70();
  v54 = *(v1 - 8);
  v2 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DB50A1D0();
  v6 = *(v5 - 8);
  v55 = v5;
  v56 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DB50A160();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v53 - v16;
  sub_1DB50A190();
  sub_1DB50A150();
  v18 = sub_1DB50A140();
  v19 = *(v11 + 8);
  v19(v14, v10);
  v19(v17, v10);
  if (v18)
  {
    return [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  if (sub_1DB50A170() != 2)
  {
    return sub_1DB50AAC0();
  }

  sub_1DB50A130();
  if ((v21 & 1) == 0)
  {
    return sub_1DB50AE10();
  }

  sub_1DB50A1B0();
  if ((v22 & 1) == 0)
  {
    return sub_1DB50AD80();
  }

  sub_1DB50A1C0();
  if (v23)
  {
    v24 = sub_1DB50A620();
LABEL_8:
    v25 = v24;

    return v25;
  }

  v26 = sub_1DB50A180();
  if (v27 >> 60 == 15)
  {
    v28 = sub_1DB50A120();
    if (v28)
    {
      sub_1DB4D89B0(v28);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46ED0, &qword_1DB5224C0);
      v29 = sub_1DB50A490();

      return v29;
    }

    else
    {
      v33 = sub_1DB50A1A0();
      if (v33)
      {
        v34 = *(v33 + 16);
        if (v34)
        {
          v57[0] = MEMORY[0x1E69E7CC0];
          v35 = v33;
          sub_1DB50B480();
          v36 = v56 + 16;
          v56 = *(v56 + 16);
          v37 = *(v36 + 64);
          v54 = v35;
          v38 = v35 + ((v37 + 32) & ~v37);
          v39 = *(v36 + 56);
          v40 = v55;
          do
          {
            v41 = (v56)(v9, v38, v40);
            sub_1DB4D5974(v41);
            (*(v36 - 8))(v9, v40);
            sub_1DB50B450();
            v42 = *(v57[0] + 16);
            sub_1DB50B490();
            sub_1DB50B4A0();
            sub_1DB50B460();
            v38 += v39;
            --v34;
          }

          while (v34);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46ED0, &qword_1DB5224C0);
        v24 = sub_1DB50A980();
        goto LABEL_8;
      }

      sub_1DB509F50();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46EE0, &qword_1DB5224D0);
      v43 = *(sub_1DB509F40() - 8);
      v44 = *(v43 + 72);
      v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1DB511620;
      v47 = v55;
      v58 = v55;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v57);
      v49 = *(v56 + 16);
      v56 += 16;
      v49(boxed_opaque_existential_0, v0, v47);
      v50 = AMSLogKey();
      if (v50)
      {
        v53[1] = v46;
        v51 = v50;
        sub_1DB50A650();
      }

      sub_1DB509F30();

      __swift_destroy_boxed_opaque_existential_0(v57);
      sub_1DB509F10();
      v58 = v47;
      v52 = __swift_allocate_boxed_opaque_existential_0(v57);
      v49(v52, v0, v47);
      sub_1DB509F20();
      sub_1DB30623C(v57, &qword_1ECC426B0, &qword_1DB50EEB0);
      sub_1DB509F60();

      (*(v54 + 8))(v4, v1);
      return 0;
    }
  }

  else
  {
    v30 = v26;
    v31 = v27;
    v32 = sub_1DB509CD0();
    sub_1DB32E340(v30, v31);
    return v32;
  }
}

id sub_1DB4D6084(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag), *(v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 24));
  sub_1DB50A650();
  v4 = sub_1DB50A080();

  if (v4 == 2)
  {
    return sub_1DB4D6A90(a1, 1);
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  if (!v5)
  {
    return sub_1DB4D6A90(a1, 1);
  }

  v6 = v5;
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 promiseWithResult_];
  v10 = [objc_opt_self() bagValueWithKey:a1 valueType:1 valuePromise:v9];

  return v10;
}

id sub_1DB4D620C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag), *(v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 24));
  sub_1DB50A650();
  v4 = sub_1DB50A0B0();
  v6 = v5;

  if (v6)
  {
    return sub_1DB4D6A90(a1, 2);
  }

  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  if (!v7)
  {
    return sub_1DB4D6A90(a1, 2);
  }

  v8 = v7;
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 promiseWithResult_];
  v12 = [objc_opt_self() bagValueWithKey:a1 valueType:2 valuePromise:v11];

  return v12;
}

id sub_1DB4D639C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag), *(v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 24));
  sub_1DB50A650();
  v4 = sub_1DB50A0E0();
  v6 = v5;

  if (v6)
  {
    return sub_1DB4D6A90(a1, 3);
  }

  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  if (!v7)
  {
    return sub_1DB4D6A90(a1, 3);
  }

  v8 = v7;
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 promiseWithResult_];
  v12 = [objc_opt_self() bagValueWithKey:a1 valueType:3 valuePromise:v11];

  return v12;
}

id sub_1DB4D6520(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag), *(v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 24));
  sub_1DB50A650();
  sub_1DB50A0C0();
  v5 = v4;

  if (!v5)
  {
    return sub_1DB4D6A90(a1, 4);
  }

  v6 = sub_1DB50A620();

  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 promiseWithResult_];
  v10 = [objc_opt_self() bagValueWithKey:a1 valueType:4 valuePromise:v9];

  return v10;
}

id sub_1DB4D6698(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag), *(v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 24));
  sub_1DB50A650();
  sub_1DB50A100();

  v8 = sub_1DB509CA0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_1DB30623C(v6, &unk_1ECC42B20, &unk_1DB50F6A0);
    return sub_1DB4D6A90(a1, 5);
  }

  else
  {
    v11 = sub_1DB509BC0();
    (*(v9 + 8))(v6, v8);
    v12 = objc_opt_self();
    v13 = v11;
    v14 = [v12 promiseWithResult_];
    v15 = [objc_opt_self() bagValueWithKey:a1 valueType:5 valuePromise:v14];

    return v15;
  }
}

id sub_1DB4D68D8(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag), *(v1 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_amsKitBag + 24));
  sub_1DB50A650();
  v4 = sub_1DB50A0D0();

  if (!v4)
  {
    return sub_1DB4D6A90(a1, 6);
  }

  sub_1DB4D89B0(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46ED0, &qword_1DB5224C0);
  v5 = sub_1DB50A490();

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 promiseWithResult_];
  v9 = [objc_opt_self() bagValueWithKey:a1 valueType:6 valuePromise:v8];

  return v9;
}

id sub_1DB4D6A90(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = sub_1DB50A620();
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000020, 0x80000001DB530F90);
  type metadata accessor for AMSBagKey(0);
  sub_1DB50B530();
  v6 = sub_1DB50A620();

  v7 = AMSError();

  v8 = sub_1DB509B10();
  v9 = [v4 failingBagValueWithKey:a1 valueType:a2 error:v8];

  return v9;
}

id sub_1DB4D6BE8()
{
  v1 = OBJC_IVAR____TtC7JetCore12AMSKitAMSBag____lazy_storage___amsBag;
  v2 = *(v0 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag____lazy_storage___amsBag);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag____lazy_storage___amsBag);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_profile);
    v5 = *(v0 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_profile + 8);
    v6 = *(v0 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_profileVersion);
    v7 = *(v0 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_profileVersion + 8);
    v8 = *(v0 + OBJC_IVAR____TtC7JetCore12AMSKitAMSBag_processInfo);
    v9 = sub_1DB50A620();
    v10 = sub_1DB50A620();
    v11 = [objc_opt_self() bagForProfile:v9 profileVersion:v10 processInfo:v8];

    v12 = *(v0 + v1);
    *(v0 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

uint64_t sub_1DB4D6CE4()
{
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC457B8, &qword_1DB51BA18);
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB4D6DB0, 0, 0);
}

uint64_t sub_1DB4D6DB0()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = sub_1DB4D6BE8();
  v0[23] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DB4D6F78;
  swift_continuation_init();
  v0[17] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_1DB4D8938();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  sub_1DB50AAE0();
  (*(v2 + 32))(boxed_opaque_existential_0, v1, v3);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DB416D30;
  v0[13] = &block_descriptor_20;
  [v5 createSnapshotWithCompletion_];
  (*(v2 + 8))(boxed_opaque_existential_0, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DB4D6F78()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1DB4D70FC;
  }

  else
  {
    v3 = sub_1DB4D7088;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4D7088()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1DB4D70FC()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[24];

  return v4();
}

uint64_t sub_1DB4D72EC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1DB4D7394;

  return sub_1DB4D6CE4();
}

uint64_t sub_1DB4D7394(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_1DB509B10();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

id sub_1DB4D75E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_getObjCClassMetadata();
  v6 = a3;
  v7 = sub_1DB4D6A90(v6, a4);

  return v7;
}

uint64_t sub_1DB4D764C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DB306AF4;

  return sub_1DB4D72EC(v2, v3);
}

uint64_t sub_1DB4D76F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DB509DD0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  v9 = *(*(v8 - 8) + 64);
  *&v10 = MEMORY[0x1EEE9AC00](v8 - 8).n128_u64[0];
  v12 = &v17 - v11;
  v13 = [*v1 expirationDate];
  if (v13)
  {
    v14 = v13;
    sub_1DB509DB0();

    v15 = *(v4 + 32);
    v15(v12, v7, v3);
    (*(v4 + 56))(v12, 0, 1, v3);
    return (v15)(a1, v12, v3);
  }

  else
  {
    (*(v4 + 56))(v12, 1, 1, v3);
    sub_1DB509D10();
    result = (*(v4 + 48))(v12, 1, v3);
    if (result != 1)
    {
      return sub_1DB30623C(v12, &qword_1ECC43838, &unk_1DB513310);
    }
  }

  return result;
}

void *sub_1DB4D78E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F08, &unk_1DB5225E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v24 - v3;
  v5 = sub_1DB50A1D0();
  v27 = *(v5 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  v10 = sub_1DB50A620();
  v11 = [v9 arrayForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC467B0, &qword_1DB5200D0);
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = sub_1DB3C8D30;
  v12[4] = 0;
  v13 = sub_1DB4D5048(v12);

  if (!v13)
  {
    return 0;
  }

  v14 = *(v13 + 16);
  if (v14)
  {
    v24[1] = v13;
    v15 = v13 + 32;
    v16 = (v27 + 56);
    v17 = (v27 + 32);
    v18 = MEMORY[0x1E69E7CC0];
    v25 = (v27 + 32);
    v26 = v8;
    do
    {
      sub_1DB300B14(v15, v28);
      sub_1DB50A110();
      __swift_destroy_boxed_opaque_existential_0(v28);
      (*v16)(v4, 0, 1, v5);
      v19 = *v17;
      (*v17)(v8, v4, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1DB304444(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1DB304444(v20 > 1, v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      v22 = v18 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v21;
      v17 = v25;
      v8 = v26;
      v19(v22, v26, v5);
      v15 += 32;
      --v14;
    }

    while (v14);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v18;
}

unint64_t sub_1DB4D7C24()
{
  v1 = *v0;
  v2 = sub_1DB50A620();
  v3 = [v1 dictionaryForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46780, &qword_1DB5142C0);
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = sub_1DB3C8F68;
  v4[4] = 0;
  v5 = sub_1DB4D5048(v4);

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1DB4D40CC(v5);

  v7 = sub_1DB4D7D08(v6);

  return v7;
}

unint64_t sub_1DB4D7D08(uint64_t a1)
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46EE8, &qword_1DB5225C0);
  v2 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v58 - v3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46EF0, &qword_1DB5225C8);
  v4 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v64 = (&v58 - v5);
  v6 = sub_1DB50A1D0();
  v72 = *(v6 - 8);
  v7 = v72[8];
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46EF8, &qword_1DB5225D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v58 - v15;
  v74 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F00, &qword_1DB5225D8);
    v16 = sub_1DB50B610();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC8];
  }

  v17 = v74 + 64;
  v18 = 1 << *(v74 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v74 + 64);
  v21 = (v18 + 63) >> 6;
  v69 = v72 + 2;
  v73 = (v72 + 4);
  v58 = v16 + 8;
  v59 = (v72 + 5);

  v23 = 0;
  v24 = v71;
  v60 = v21;
  v62 = v11;
  v68 = v16;
  v61 = v17;
  while (1)
  {
    if (!v20)
    {
      while (1)
      {
        v27 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v27 >= v21)
        {

          return v16;
        }

        v20 = *(v17 + 8 * v27);
        ++v23;
        if (v20)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v27 = v23;
LABEL_14:
    v28 = __clz(__rbit64(v20)) | (v27 << 6);
    v29 = v74;
    v30 = v70;
    sub_1DB314C3C(*(v74 + 48) + 40 * v28, v70);
    v31 = *(v29 + 56);
    v32 = v72[9];
    v33 = v31 + v32 * v28;
    v34 = v72[2];
    v34(v30 + *(v11 + 48), v33, v6);
    sub_1DB4D8C24(v30, v24);
    sub_1DB314C3C(v24, v80);
    if (!swift_dynamicCast())
    {
      break;
    }

    v20 &= v20 - 1;
    v35 = *(v11 + 48);
    v36 = v79;
    v75 = v78;
    v76 = v32;
    v37 = v66;
    v38 = *(v67 + 48);
    v34(&v66[v38], v24 + v35, v6);
    sub_1DB30623C(v24, &qword_1ECC46EF8, &qword_1DB5225D0);
    v39 = v65;
    v40 = *(v65 + 48);
    v41 = v6;
    v42 = v64;
    *v64 = v75;
    v42[1] = v36;
    v43 = *v73;
    (*v73)(v42 + v40, &v37[v38], v41);
    v44 = *(v39 + 48);
    v45 = v77;
    v47 = *v42;
    v46 = v42[1];
    v48 = v42 + v44;
    v6 = v41;
    v49 = v46;
    v50 = v63;
    v43(v63, v48, v6);
    v43(v45, v50, v6);
    v16 = v68;
    result = sub_1DB306160(v47, v49);
    v51 = result;
    if (v52)
    {
      v25 = (v16[6] + 16 * result);
      v26 = v25[1];
      *v25 = v47;
      v25[1] = v49;

      result = (*v59)(v16[7] + v51 * v76, v77, v6);
    }

    else
    {
      v53 = v76;
      if (v16[2] >= v16[3])
      {
        goto LABEL_23;
      }

      *(v58 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v54 = (v16[6] + 16 * result);
      *v54 = v47;
      v54[1] = v49;
      result = (v43)(v16[7] + result * v53, v77, v6);
      v55 = v16[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_24;
      }

      v16[2] = v57;
    }

    v23 = v27;
    v11 = v62;
    v24 = v71;
    v17 = v61;
    v21 = v60;
  }

  sub_1DB30623C(v24, &qword_1ECC46EF8, &qword_1DB5225D0);

  return 0;
}

uint64_t sub_1DB4D82D8()
{
  v1 = *v0;
  v2 = sub_1DB50A620();
  v3 = [v1 BOOLForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46790, &unk_1DB5200B0);
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = sub_1DB3C8C74;
  v4[4] = 0;
  v5 = sub_1DB4D45C8(v4);

  return v5;
}

uint64_t sub_1DB4D83D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5, uint64_t *a6, uint64_t *a7, uint64_t a8)
{
  v13 = *v8;
  v14 = sub_1DB50A620();
  v15 = [v13 *a5];

  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a8;
  v16[4] = 0;
  v17 = sub_1DB4D4858(v16);

  return v17;
}

uint64_t sub_1DB4D8480()
{
  v1 = *v0;
  v2 = sub_1DB50A620();
  v3 = [v1 stringForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC467A8, &unk_1DB5225A0);
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = sub_1DB3C8D04;
  v4[4] = 0;
  v5 = sub_1DB4D4AF0(v4);

  return v5;
}

uint64_t sub_1DB4D852C()
{
  v1 = *v0;
  v2 = sub_1DB50A620();
  v3 = [v1 URLForKey_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45828, &unk_1DB522590);
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = sub_1DB3C8D2C;
  v4[4] = 0;
  sub_1DB4D4D84(v4);
}