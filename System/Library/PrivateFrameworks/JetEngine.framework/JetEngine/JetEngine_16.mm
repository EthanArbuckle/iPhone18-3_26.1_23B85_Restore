uint64_t sub_1AB13EE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v65 = a2;
  v66 = a3;
  v7 = sub_1AB45FFD4();
  v63 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB45FF84();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v69 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v56 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v56 - v16;
  sub_1AB014A58(a1, v72, &qword_1EB436768);
  if (v73)
  {
    return sub_1AB0149B0(v72, a4);
  }

  v56 = v7;
  v74 = v4;
  v68 = *(&v72[0] + 1);
  v58 = *&v72[0];
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v19 = sub_1AB45FFC4();
  v20 = __swift_project_value_buffer(v19, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v60 = v20;
  v21 = sub_1AB45FFA4();
  v22 = sub_1AB461234();
  v23 = sub_1AB461314();
  v64 = v9;
  v61 = a4;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v71[0].tv_sec = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1AB030D2C(0x6143746E65746E49, 0xEB00000000656863, &v71[0].tv_sec);
    v26 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v21, v22, v26, "MakeDependency", "object=%s,type=lazy", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v27 = v25;
    v9 = v64;
    MEMORY[0x1AC59F020](v27, -1, -1);
    MEMORY[0x1AC59F020](v24, -1, -1);
  }

  (*(v10 + 16))(v15, v17, v9);
  sub_1AB460014();
  swift_allocObject();
  v28 = sub_1AB460004();
  v30 = *(v10 + 8);
  v29 = v10 + 8;
  v59 = v30;
  v30(v17, v9);
  static MonotonicTime.now.getter(v71);
  tv_sec = v71[0].tv_sec;
  tv_nsec = v71[0].tv_nsec;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v62 = v28;
  sub_1AB4622E4();
  v32 = v71[0].tv_sec;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436748);
  if (v33 == type metadata accessor for StartUpPerformanceEvent())
  {
    v35 = 0;
  }

  else
  {
    type metadata accessor for BaseObjectGraph();
    v34 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v71[0].tv_sec = v34;

    swift_task_localValuePush();
    v35 = sub_1AB01DBA0(*(v34 + 16));
    swift_task_localValuePop();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  v37 = (v36 + 24);
  *(v36 + 16) = 0;
  v71[0].tv_sec = v36;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v38 = v74;
  sub_1AB12C208(v58, v68, v65, v66);
  v74 = v38;
  v66 = v35;
  if (v35)
  {
    v70.tv_sec = v33;
    StartUpPerformanceEvent.record(checkpoint:)(&v70.tv_sec);
  }

  v65 = v29;
  sub_1AB014AC0(a1, &qword_1EB436768);
  sub_1AB01494C(v71, a1);
  *(a1 + 40) = 1;
  static MonotonicTime.now.getter(&v70);
  v39 = v70.tv_sec;
  v40 = v70.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v41 = v40 / *&qword_1ED4D1F90 + v39 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

  v42 = sub_1AB45FFA4();
  v43 = v69;
  sub_1AB45FFF4();
  v44 = sub_1AB461224();

  v45 = sub_1AB461314();
  v46 = v67;
  if (v45)
  {

    sub_1AB460024();

    v47 = v63;
    v48 = v56;
    if ((*(v63 + 88))(v46, v56) == *MEMORY[0x1E69E93E8])
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
    os_unfair_lock_lock(v37);
    v52 = *(v36 + 16);
    os_unfair_lock_unlock(v37);
    *(v51 + 4) = v41 - v52;
    v53 = v69;
    v54 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v42, v44, v54, "MakeDependency", v50, v51, 0xCu);
    v55 = v51;
    v43 = v53;
    MEMORY[0x1AC59F020](v55, -1, -1);
  }

  v59(v43, v64);
  os_unfair_lock_lock((v32 + 24));
  *(v32 + 16) = v41 + *(v32 + 16);
  os_unfair_lock_unlock((v32 + 24));
  sub_1AB0149B0(&v71[0].tv_sec, v61);
  swift_task_localValuePop();
}

uint64_t sub_1AB13F5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v65 = a2;
  v66 = a3;
  v7 = sub_1AB45FFD4();
  v63 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB45FF84();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - v16;
  sub_1AB014A58(a1, v72, &qword_1EB436680);
  if (v73)
  {
    return sub_1AB0149B0(v72, a4);
  }

  v56 = v7;
  v74 = v4;
  v68 = *(&v72[0] + 1);
  v58 = *&v72[0];
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v19 = sub_1AB45FFC4();
  v20 = __swift_project_value_buffer(v19, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v60 = v20;
  v21 = sub_1AB45FFA4();
  v22 = sub_1AB461234();
  v23 = sub_1AB461314();
  v64 = v9;
  v61 = a4;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v71[0].tv_sec = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1AB030D2C(0xD000000000000010, 0x80000001AB4FF070, &v71[0].tv_sec);
    v26 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v21, v22, v26, "MakeDependency", "object=%s,type=lazy", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v27 = v25;
    v9 = v64;
    MEMORY[0x1AC59F020](v27, -1, -1);
    MEMORY[0x1AC59F020](v24, -1, -1);
  }

  (*(v10 + 16))(v14, v17, v9);
  sub_1AB460014();
  swift_allocObject();
  v28 = sub_1AB460004();
  v30 = *(v10 + 8);
  v29 = v10 + 8;
  v59 = v30;
  v30(v17, v9);
  static MonotonicTime.now.getter(v71);
  tv_sec = v71[0].tv_sec;
  tv_nsec = v71[0].tv_nsec;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v62 = v28;
  sub_1AB4622E4();
  v32 = v71[0].tv_sec;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436660);
  if (v33 == type metadata accessor for StartUpPerformanceEvent())
  {
    v35 = 0;
  }

  else
  {
    type metadata accessor for BaseObjectGraph();
    v34 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v71[0].tv_sec = v34;

    swift_task_localValuePush();
    v35 = sub_1AB01DBA0(*(v34 + 16));
    swift_task_localValuePop();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  v37 = (v36 + 24);
  *(v36 + 16) = 0;
  v71[0].tv_sec = v36;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v38 = v74;
  sub_1AB12C208(v58, v68, v65, v66);
  v74 = v38;
  v66 = v35;
  if (v35)
  {
    v70.tv_sec = v33;
    StartUpPerformanceEvent.record(checkpoint:)(&v70.tv_sec);
  }

  v65 = v29;
  sub_1AB014AC0(a1, &qword_1EB436680);
  sub_1AB01494C(v71, a1);
  *(a1 + 40) = 1;
  static MonotonicTime.now.getter(&v70);
  v39 = v70.tv_sec;
  v40 = v70.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v41 = v40 / *&qword_1ED4D1F90 + v39 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

  v42 = sub_1AB45FFA4();
  v43 = v69;
  sub_1AB45FFF4();
  v44 = sub_1AB461224();

  v45 = sub_1AB461314();
  v46 = v67;
  if (v45)
  {

    sub_1AB460024();

    v47 = v63;
    v48 = v56;
    if ((*(v63 + 88))(v46, v56) == *MEMORY[0x1E69E93E8])
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
    os_unfair_lock_lock(v37);
    v52 = *(v36 + 16);
    os_unfair_lock_unlock(v37);
    *(v51 + 4) = v41 - v52;
    v53 = v69;
    v54 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v42, v44, v54, "MakeDependency", v50, v51, 0xCu);
    v55 = v51;
    v43 = v53;
    MEMORY[0x1AC59F020](v55, -1, -1);
  }

  v59(v43, v64);
  os_unfair_lock_lock((v32 + 24));
  *(v32 + 16) = v41 + *(v32 + 16);
  os_unfair_lock_unlock((v32 + 24));
  sub_1AB0149B0(&v71[0].tv_sec, v61);
  swift_task_localValuePop();
}

uint64_t sub_1AB13FDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v88 = a3;
  v87 = a2;
  v91 = a4;
  v6 = sub_1AB45FFD4();
  v81 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v80 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1AB460134();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB45FF84();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v74 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v74 - v17;
  v89 = a1;
  result = sub_1AB014A58(a1, v94, &qword_1EB436720);
  if (v95)
  {
    v20 = v94[3];
    v21 = v91;
    v91[2] = v94[2];
    v21[3] = v20;
    v21[4] = v94[4];
    v22 = v94[1];
    *v21 = v94[0];
    v21[1] = v22;
  }

  else
  {
    v74 = v6;
    v82 = v12;
    v96 = v4;
    v90 = *(&v94[0] + 1);
    v75 = *&v94[0];
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v23 = sub_1AB45FFC4();
    v24 = __swift_project_value_buffer(v23, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v78 = v24;
    v25 = sub_1AB45FFA4();
    v26 = sub_1AB461234();
    v27 = sub_1AB461314();
    v83 = v9;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = v10;
      v30 = swift_slowAlloc();
      v93[0].tv_sec = v30;
      *v28 = 136315138;
      *(v28 + 4) = sub_1AB030D2C(0x72756769666E6F43, 0xED00006E6F697461, &v93[0].tv_sec);
      v31 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v25, v26, v31, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      v32 = v30;
      v10 = v29;
      MEMORY[0x1AC59F020](v32, -1, -1);
      v33 = v28;
      v9 = v83;
      MEMORY[0x1AC59F020](v33, -1, -1);
    }

    (*(v10 + 16))(v15, v18, v9);
    sub_1AB460014();
    swift_allocObject();
    sub_1AB460004();
    v34 = *(v10 + 8);
    v79 = v10 + 8;
    v77 = v34;
    v34(v18, v9);
    static MonotonicTime.now.getter(v93);
    tv_sec = v93[0].tv_sec;
    tv_nsec = v93[0].tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v76 = v93[0].tv_sec;
    type metadata accessor for BaseObjectGraph();
    v37 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v93[0].tv_sec = v37;

    swift_task_localValuePush();
    v38 = sub_1AB01DBA0(*(v37 + 16));
    swift_task_localValuePop();

    if (v38 && (v39 = swift_conformsToProtocol2()) != 0)
    {
      v40 = *(v39 + 8);

      v40();
      sub_1AB0318FC();
      sub_1AB460184();
      v41 = sub_1AB460154();
      v42 = *(v38 + 48);

      os_unfair_lock_lock((v42 + 20));
      v43 = *(v42 + 16);
      os_unfair_lock_unlock((v42 + 20));

      if (v43 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v41);

      sub_1AB460164();
    }

    else
    {
      v41 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
    v44 = swift_allocObject();
    *(v44 + 24) = 0;
    v45 = (v44 + 24);
    *(v44 + 16) = 0;
    v93[0].tv_sec = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
    swift_task_localValuePush();
    v46 = v96;
    sub_1AB12C208(v75, v90, v87, v88);
    v96 = v46;
    v47 = v41;
    if (v41)
    {
      v48 = *MEMORY[0x1E6977AC8];
      v49 = v85;
      v50 = *(v85 + 104);
      v88 = v44;
      v51 = tv_nsec;
      v52 = v84;
      v53 = v86;
      v50(v84, v48, v86);
      sub_1AB460174();
      v54 = v52;
      tv_nsec = v51;
      v45 = (v44 + 24);
      v44 = v88;
      (*(v49 + 8))(v54, v53);
    }

    v88 = v47;
    if (v38)
    {
      v92.tv_sec = &type metadata for JetPackAssetSession.Configuration;
      StartUpPerformanceEvent.record(checkpoint:)(&v92.tv_sec);
    }

    v55 = v89;
    sub_1AB014AC0(v89, &qword_1EB436720);
    sub_1AB0261D0(v93, v55);
    *(v55 + 80) = 1;
    static MonotonicTime.now.getter(&v92);
    v56 = v92.tv_sec;
    v57 = v92.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    v58 = v57 / *&qword_1ED4D1F90 + v56 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

    v59 = sub_1AB45FFA4();
    v60 = v82;
    sub_1AB45FFF4();
    v61 = sub_1AB461224();

    if (sub_1AB461314())
    {
      LODWORD(v89) = v61;

      v62 = v80;
      sub_1AB460024();

      v63 = v81;
      v64 = v74;
      if ((*(v81 + 88))(v62, v74) == *MEMORY[0x1E69E93E8])
      {
        v65 = 0;
        v66 = "[Error] Interval already ended";
      }

      else
      {
        (*(v63 + 8))(v62, v64);
        v66 = "selfTime=%f";
        v65 = 1;
      }

      v67 = swift_slowAlloc();
      *v67 = 0;
      *(v67 + 1) = v65;
      *(v67 + 2) = 2048;
      os_unfair_lock_lock(v45);
      v68 = *(v44 + 16);
      os_unfair_lock_unlock(v45);
      *(v67 + 4) = v58 - v68;
      v60 = v82;
      v69 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v59, v89, v69, "MakeDependency", v66, v67, 0xCu);
      MEMORY[0x1AC59F020](v67, -1, -1);
    }

    v77(v60, v83);
    v70 = v76;
    os_unfair_lock_lock(v76 + 6);
    *&v70[4]._os_unfair_lock_opaque = v58 + *&v70[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v70 + 6);
    v71 = v93[3];
    v72 = v91;
    v91[2] = v93[2];
    v72[3] = v71;
    v72[4] = v93[4];
    v73 = v93[1];
    *v72 = v93[0];
    v72[1] = v73;
    swift_task_localValuePop();
  }

  return result;
}

uint64_t sub_1AB14084C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v65 = a2;
  v66 = a3;
  v7 = sub_1AB45FFD4();
  v63 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB45FF84();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - v16;
  sub_1AB014A58(a1, v72, &qword_1EB436738);
  if (v73)
  {
    return sub_1AB0149B0(v72, a4);
  }

  v56 = v7;
  v74 = v4;
  v68 = *(&v72[0] + 1);
  v58 = *&v72[0];
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v19 = sub_1AB45FFC4();
  v20 = __swift_project_value_buffer(v19, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v60 = v20;
  v21 = sub_1AB45FFA4();
  v22 = sub_1AB461234();
  v23 = sub_1AB461314();
  v64 = v9;
  v61 = a4;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v71[0].tv_sec = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1AB030D2C(0xD000000000000011, 0x80000001AB4FF200, &v71[0].tv_sec);
    v26 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v21, v22, v26, "MakeDependency", "object=%s,type=lazy", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v27 = v25;
    v9 = v64;
    MEMORY[0x1AC59F020](v27, -1, -1);
    MEMORY[0x1AC59F020](v24, -1, -1);
  }

  (*(v10 + 16))(v14, v17, v9);
  sub_1AB460014();
  swift_allocObject();
  v28 = sub_1AB460004();
  v30 = *(v10 + 8);
  v29 = v10 + 8;
  v59 = v30;
  v30(v17, v9);
  static MonotonicTime.now.getter(v71);
  tv_sec = v71[0].tv_sec;
  tv_nsec = v71[0].tv_nsec;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v62 = v28;
  sub_1AB4622E4();
  v32 = v71[0].tv_sec;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436730);
  if (v33 == type metadata accessor for StartUpPerformanceEvent())
  {
    v35 = 0;
  }

  else
  {
    type metadata accessor for BaseObjectGraph();
    v34 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v71[0].tv_sec = v34;

    swift_task_localValuePush();
    v35 = sub_1AB01DBA0(*(v34 + 16));
    swift_task_localValuePop();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  v37 = (v36 + 24);
  *(v36 + 16) = 0;
  v71[0].tv_sec = v36;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v38 = v74;
  sub_1AB12C208(v58, v68, v65, v66);
  v74 = v38;
  v66 = v35;
  if (v35)
  {
    v70.tv_sec = v33;
    StartUpPerformanceEvent.record(checkpoint:)(&v70.tv_sec);
  }

  v65 = v29;
  sub_1AB014AC0(a1, &qword_1EB436738);
  sub_1AB01494C(v71, a1);
  *(a1 + 40) = 1;
  static MonotonicTime.now.getter(&v70);
  v39 = v70.tv_sec;
  v40 = v70.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v41 = v40 / *&qword_1ED4D1F90 + v39 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

  v42 = sub_1AB45FFA4();
  v43 = v69;
  sub_1AB45FFF4();
  v44 = sub_1AB461224();

  v45 = sub_1AB461314();
  v46 = v67;
  if (v45)
  {

    sub_1AB460024();

    v47 = v63;
    v48 = v56;
    if ((*(v63 + 88))(v46, v56) == *MEMORY[0x1E69E93E8])
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
    os_unfair_lock_lock(v37);
    v52 = *(v36 + 16);
    os_unfair_lock_unlock(v37);
    *(v51 + 4) = v41 - v52;
    v53 = v69;
    v54 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v42, v44, v54, "MakeDependency", v50, v51, 0xCu);
    v55 = v51;
    v43 = v53;
    MEMORY[0x1AC59F020](v55, -1, -1);
  }

  v59(v43, v64);
  os_unfair_lock_lock((v32 + 24));
  *(v32 + 16) = v41 + *(v32 + 16);
  os_unfair_lock_unlock((v32 + 24));
  sub_1AB0149B0(&v71[0].tv_sec, v61);
  swift_task_localValuePop();
}

uint64_t sub_1AB141024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = a3;
  v90 = a4;
  v6 = sub_1AB45FFD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB460134();
  v86 = *(v9 - 8);
  v87 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45FF84();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v71 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v71 - v18;
  v20 = *a1;
  if (*(a1 + 16))
  {
  }

  v73 = v7;
  v74 = v6;
  v82 = v17;
  v88 = v20;
  v92 = v4;
  v22 = *(a1 + 8);
  v23 = qword_1EB434BA8;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1AB45FFC4();
  v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v78 = v25;
  v26 = sub_1AB45FFA4();
  v27 = sub_1AB461234();
  v28 = sub_1AB461314();
  v83 = v22;
  v84 = v11;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = v12;
    v31 = swift_slowAlloc();
    v91.tv_sec = v31;
    *v29 = 136315138;
    *(v29 + 4) = sub_1AB030D2C(0xD000000000000013, 0x80000001AB4FF1E0, &v91.tv_sec);
    v32 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v32, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v33 = v31;
    v12 = v30;
    v22 = v83;
    MEMORY[0x1AC59F020](v33, -1, -1);
    v34 = v29;
    v11 = v84;
    MEMORY[0x1AC59F020](v34, -1, -1);
  }

  (*(v12 + 16))(v15, v19, v11);
  sub_1AB460014();
  swift_allocObject();
  v80 = sub_1AB460004();
  v36 = *(v12 + 8);
  v35 = v12 + 8;
  v77 = v36;
  v36(v19, v11);
  static MonotonicTime.now.getter(&v91);
  v75 = v91;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v79 = v35;
  sub_1AB4622E4();
  tv_sec = v91.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v37 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v91.tv_sec = v37;

  swift_task_localValuePush();
  v38 = sub_1AB01DBA0(*(v37 + 16));
  swift_task_localValuePop();

  if (v38)
  {
    v39 = type metadata accessor for JetPackAssetSession();
    v40 = swift_conformsToProtocol2();
    v41 = 0;
    v42 = v88;
    if (!v40 || !v39)
    {
      goto LABEL_19;
    }

    v43 = *(v40 + 8);
    v44 = v40;

    v43(v39, v44);
    sub_1AB0318FC();
    sub_1AB460184();
    v41 = sub_1AB460154();
    v45 = *(v38 + 48);

    os_unfair_lock_lock((v45 + 20));
    v46 = *(v45 + 16);
    os_unfair_lock_unlock((v45 + 20));

    if (v46 == 1)
    {

      sub_1AB460124();
    }

    sub_1AB3858E0(v41);

    sub_1AB460164();
  }

  else
  {
    v41 = 0;
  }

  v42 = v88;
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  v72 = (v47 + 24);
  *(v47 + 16) = 0;
  v91.tv_sec = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v48 = v92;
  v49 = sub_1AB12C354(v42, v22, v89, v90);
  v21 = v49;
  v92 = v48;
  if (v41)
  {
    v50 = *MEMORY[0x1E6977AC8];
    v90 = v47;
    v51 = v49;
    v52 = v85;
    v53 = v86;
    v54 = v87;
    (*(v86 + 104))(v85, v50, v87);
    sub_1AB460174();
    (*(v53 + 8))(v52, v54);
    v21 = v51;
    v47 = v90;
  }

  if (v38)
  {
    v91.tv_sec = *v21;
    StartUpPerformanceEvent.record(checkpoint:)(&v91.tv_sec);
  }

  sub_1AB057304();
  *a1 = v21;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;

  static MonotonicTime.now.getter(&v91);
  v55 = v91.tv_sec;
  tv_nsec = v91.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v57 = tv_nsec / *&qword_1ED4D1F90 + v55 - (v75.tv_nsec / *&qword_1ED4D1F90 + v75.tv_sec);

  v58 = sub_1AB45FFA4();
  v59 = v82;
  sub_1AB45FFF4();
  LODWORD(v90) = sub_1AB461224();

  if (sub_1AB461314())
  {

    v60 = v81;
    sub_1AB460024();

    v61 = v73;
    v62 = v74;
    if ((*(v73 + 88))(v60, v74) == *MEMORY[0x1E69E93E8])
    {
      v63 = 0;
      v64 = "[Error] Interval already ended";
    }

    else
    {
      (*(v61 + 8))(v60, v62);
      v64 = "selfTime=%f";
      v63 = 1;
    }

    v65 = swift_slowAlloc();
    *v65 = 0;
    *(v65 + 1) = v63;
    *(v65 + 2) = 2048;
    v66 = v72;
    os_unfair_lock_lock(v72);
    v67 = *(v47 + 16);
    os_unfair_lock_unlock(v66);
    *(v65 + 4) = v57 - v67;
    v59 = v82;
    v68 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v58, v90, v68, "MakeDependency", v64, v65, 0xCu);
    MEMORY[0x1AC59F020](v65, -1, -1);
  }

  v77(v59, v84);
  v69 = tv_sec;
  os_unfair_lock_lock(tv_sec + 6);
  *&v69[4]._os_unfair_lock_opaque = v57 + *&v69[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v69 + 6);
  swift_task_localValuePop();

  sub_1AB057304();

  return v21;
}

uint64_t sub_1AB1419CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v90 = a3;
  v91 = a4;
  v88 = a2;
  v8 = sub_1AB45FFD4();
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v81 = &tv_sec - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB460134();
  v86 = *(v10 - 8);
  v87 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v85 = &tv_sec - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for JetPackAsset(0);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &tv_sec - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1AB45FF84();
  v100 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v94 = &tv_sec - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &tv_sec - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &tv_sec - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366E0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &tv_sec - v21;
  v92 = a1;
  sub_1AB014A58(a1, &tv_sec - v21, &qword_1EB4366E0);
  v89 = v20;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1AB0342CC(v22, a5, type metadata accessor for JetPackAsset);
  }

  v84 = a5;
  v24 = *(v22 + 1);
  v77 = *v22;
  v93 = v24;
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v25 = sub_1AB45FFC4();
  v26 = __swift_project_value_buffer(v25, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v80 = v26;
  v27 = sub_1AB45FFA4();
  v28 = sub_1AB461234();
  v29 = sub_1AB461314();
  v31 = v95;
  v30 = v96;
  v98 = v5;
  if (v29)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v99.tv_sec = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_1AB030D2C(0x416B63615074654ALL, 0xEC00000074657373, &v99.tv_sec);
    v34 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v27, v28, v34, "MakeDependency", "object=%s,type=lazy", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x1AC59F020](v33, -1, -1);
    MEMORY[0x1AC59F020](v32, -1, -1);
  }

  v35 = v100;
  v36 = v97;
  (*(v100 + 16))(v16, v19, v97);
  sub_1AB460014();
  swift_allocObject();
  v37 = sub_1AB460004();
  v38 = *(v35 + 8);
  v100 = v35 + 8;
  v79 = v38;
  v38(v19, v36);
  static MonotonicTime.now.getter(&v99);
  tv_nsec = v99.tv_nsec;
  tv_sec = v99.tv_sec;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v78 = v99.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v40 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v99.tv_sec = v40;

  swift_task_localValuePush();
  v41 = sub_1AB01DBA0(*(v40 + 16));
  swift_task_localValuePop();

  v88 = v37;
  if (v41 && (v42 = swift_conformsToProtocol2()) != 0)
  {
    v43 = *(v42 + 8);
    v44 = v42;

    v43(v30, v44);
    sub_1AB0318FC();
    sub_1AB460184();
    v45 = sub_1AB460154();
    v46 = *(v41 + 48);

    os_unfair_lock_lock((v46 + 20));
    v47 = *(v46 + 16);
    os_unfair_lock_unlock((v46 + 20));

    if (v47 == 1)
    {

      sub_1AB460124();
    }

    sub_1AB3858E0(v45);

    sub_1AB460164();
  }

  else
  {
    v45 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v48 = swift_allocObject();
  *(v48 + 24) = 0;
  v49 = (v48 + 24);
  *(v48 + 16) = 0;
  v99.tv_sec = v48;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v50 = v98;
  sub_1AB12C208(v77, v93, v90, v91);
  v98 = v50;
  if (v45)
  {
    v52 = v86;
    v51 = v87;
    v53 = v31;
    v54 = tv_nsec;
    v55 = v85;
    (*(v86 + 104))(v85, *MEMORY[0x1E6977AC8], v87);
    sub_1AB460174();
    v56 = v55;
    tv_nsec = v54;
    v31 = v53;
    (*(v52 + 8))(v56, v51);
    v30 = v96;
  }

  if (v41)
  {
    v99.tv_sec = v30;
    StartUpPerformanceEvent.record(checkpoint:)(&v99.tv_sec);
  }

  v57 = v92;
  sub_1AB014AC0(v92, &qword_1EB4366E0);
  sub_1AB03AB54(v31, v57, type metadata accessor for JetPackAsset);
  swift_storeEnumTagMultiPayload();
  static MonotonicTime.now.getter(&v99);
  v58 = v99.tv_sec;
  v59 = v99.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v60 = v59 / *&qword_1ED4D1F90 + v58 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

  v61 = sub_1AB45FFA4();
  v62 = v94;
  sub_1AB45FFF4();
  LODWORD(v96) = sub_1AB461224();

  v63 = sub_1AB461314();
  v64 = v84;
  if (v63)
  {

    v65 = v81;
    sub_1AB460024();

    v67 = v82;
    v66 = v83;
    if ((*(v82 + 88))(v65, v83) == *MEMORY[0x1E69E93E8])
    {
      v68 = 0;
      v69 = "[Error] Interval already ended";
    }

    else
    {
      (*(v67 + 8))(v65, v66);
      v69 = "selfTime=%f";
      v68 = 1;
    }

    v70 = swift_slowAlloc();
    *v70 = 0;
    *(v70 + 1) = v68;
    *(v70 + 2) = 2048;
    os_unfair_lock_lock(v49);
    v71 = *(v48 + 16);
    os_unfair_lock_unlock(v49);
    *(v70 + 4) = v60 - v71;
    v72 = v94;
    v73 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v61, v96, v73, "MakeDependency", v69, v70, 0xCu);
    v74 = v70;
    v62 = v72;
    MEMORY[0x1AC59F020](v74, -1, -1);
    v64 = v84;
    v31 = v95;
  }

  v79(v62, v97);
  v75 = v78;
  os_unfair_lock_lock(v78 + 6);
  *&v75[4]._os_unfair_lock_opaque = v60 + *&v75[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v75 + 6);
  sub_1AB0342CC(v31, v64, type metadata accessor for JetPackAsset);
  swift_task_localValuePop();
}

uint64_t sub_1AB142454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v84 = a3;
  v83 = a2;
  v7 = sub_1AB45FFD4();
  v79 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1AB460134();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB45FF84();
  v94 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v69 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69 - v17;
  v85 = a1;
  result = sub_1AB014A58(a1, v91, &qword_1EB436700);
  if (v93)
  {
    v20 = v91[1];
    *a4 = v91[0];
    *(a4 + 16) = v20;
    *(a4 + 32) = v91[2];
    *(a4 + 48) = v92;
  }

  else
  {
    v70 = v7;
    v87 = v4;
    v86 = *(&v91[0] + 1);
    v72 = *&v91[0];
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v21 = sub_1AB45FFC4();
    v22 = __swift_project_value_buffer(v21, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v75 = v22;
    v23 = sub_1AB45FFA4();
    v24 = sub_1AB461234();
    v25 = sub_1AB461314();
    v26 = v12;
    v77 = a4;
    if (v25)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v76 = v12;
      v29 = v10;
      v30 = v28;
      v89[0].tv_sec = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1AB030D2C(0xD000000000000011, 0x80000001AB4FF180, &v89[0].tv_sec);
      v31 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v23, v24, v31, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      v32 = v30;
      v10 = v29;
      v26 = v76;
      MEMORY[0x1AC59F020](v32, -1, -1);
      MEMORY[0x1AC59F020](v27, -1, -1);
    }

    v33 = v94;
    (*(v94 + 16))(v15, v18, v10);
    sub_1AB460014();
    swift_allocObject();
    v34 = sub_1AB460004();
    v35 = *(v33 + 8);
    v76 = v10;
    v94 = v33 + 8;
    v74 = v35;
    v35(v18, v10);
    static MonotonicTime.now.getter(v89);
    v71 = v89[0];
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v89[0].tv_sec;
    type metadata accessor for BaseObjectGraph();
    v36 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v89[0].tv_sec = v36;

    swift_task_localValuePush();
    v37 = sub_1AB01DBA0(*(v36 + 16));
    swift_task_localValuePop();

    if (v37 && (v38 = swift_conformsToProtocol2()) != 0)
    {
      v39 = v34;
      v40 = *(v38 + 8);

      v40();
      sub_1AB0318FC();
      sub_1AB460184();
      v41 = sub_1AB460154();
      v42 = *(v37 + 48);

      os_unfair_lock_lock((v42 + 20));
      v43 = *(v42 + 16);
      os_unfair_lock_unlock((v42 + 20));

      if (v43 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v41);

      sub_1AB460164();

      v34 = v39;
    }

    else
    {
      v41 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
    v44 = swift_allocObject();
    *(v44 + 24) = 0;
    v45 = (v44 + 24);
    *(v44 + 16) = 0;
    v89[0].tv_sec = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
    swift_task_localValuePush();
    v46 = v87;
    sub_1AB12C208(v72, v86, v83, v84);
    v87 = v46;
    v47 = v41;
    if (v41)
    {
      v48 = v81;
      v49 = v80;
      v50 = v82;
      (*(v81 + 104))(v80, *MEMORY[0x1E6977AC8], v82);
      sub_1AB460174();
      (*(v48 + 8))(v49, v50);
    }

    v84 = v47;
    if (v37)
    {
      v88.tv_sec = &type metadata for DiskJetPackLoader;
      StartUpPerformanceEvent.record(checkpoint:)(&v88.tv_sec);
    }

    v51 = v85;
    sub_1AB014AC0(v85, &qword_1EB436700);
    sub_1AB03FFF8(v89, v51);
    *(v51 + 56) = 1;
    static MonotonicTime.now.getter(&v88);
    v52 = v88.tv_sec;
    tv_nsec = v88.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    v54 = tv_nsec / *&qword_1ED4D1F90 + v52 - (v71.tv_nsec / *&qword_1ED4D1F90 + v71.tv_sec);

    v55 = sub_1AB45FFA4();
    sub_1AB45FFF4();
    v56 = sub_1AB461224();

    if (sub_1AB461314())
    {
      LODWORD(v83) = v56;

      v57 = v34;
      v58 = v78;
      sub_1AB460024();
      v85 = v57;

      v59 = v79;
      v60 = v70;
      if ((*(v79 + 88))(v58, v70) == *MEMORY[0x1E69E93E8])
      {
        v61 = 0;
        v62 = "[Error] Interval already ended";
      }

      else
      {
        (*(v59 + 8))(v58, v60);
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
      *(v63 + 4) = v54 - v64;
      v65 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v55, v83, v65, "MakeDependency", v62, v63, 0xCu);
      MEMORY[0x1AC59F020](v63, -1, -1);
    }

    v74(v26, v76);
    v66 = tv_sec;
    os_unfair_lock_lock(tv_sec + 6);
    *&v66[4]._os_unfair_lock_opaque = v54 + *&v66[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v66 + 6);
    v67 = v89[1];
    v68 = v77;
    *v77 = v89[0];
    v68[1] = v67;
    v68[2] = v89[2];
    v68[3].tv_sec = v90;
    swift_task_localValuePop();
  }

  return result;
}

uint64_t sub_1AB142EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v84 = a3;
  v83 = a2;
  v7 = sub_1AB45FFD4();
  v79 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1AB460134();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB45FF84();
  v94 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v69 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69 - v17;
  v85 = a1;
  result = sub_1AB014A58(a1, v91, &qword_1EB4366F0);
  if (v93)
  {
    v20 = v91[1];
    *a4 = v91[0];
    *(a4 + 16) = v20;
    *(a4 + 32) = v91[2];
    *(a4 + 48) = v92;
  }

  else
  {
    v70 = v7;
    v87 = v4;
    v86 = *(&v91[0] + 1);
    v72 = *&v91[0];
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v21 = sub_1AB45FFC4();
    v22 = __swift_project_value_buffer(v21, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v75 = v22;
    v23 = sub_1AB45FFA4();
    v24 = sub_1AB461234();
    v25 = sub_1AB461314();
    v26 = v12;
    v77 = a4;
    if (v25)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v76 = v12;
      v29 = v10;
      v30 = v28;
      v89[0].tv_sec = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1AB030D2C(0xD000000000000015, 0x80000001AB4FF160, &v89[0].tv_sec);
      v31 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v23, v24, v31, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      v32 = v30;
      v10 = v29;
      v26 = v76;
      MEMORY[0x1AC59F020](v32, -1, -1);
      MEMORY[0x1AC59F020](v27, -1, -1);
    }

    v33 = v94;
    (*(v94 + 16))(v15, v18, v10);
    sub_1AB460014();
    swift_allocObject();
    v34 = sub_1AB460004();
    v35 = *(v33 + 8);
    v76 = v10;
    v94 = v33 + 8;
    v74 = v35;
    v35(v18, v10);
    static MonotonicTime.now.getter(v89);
    v71 = v89[0];
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v89[0].tv_sec;
    type metadata accessor for BaseObjectGraph();
    v36 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v89[0].tv_sec = v36;

    swift_task_localValuePush();
    v37 = sub_1AB01DBA0(*(v36 + 16));
    swift_task_localValuePop();

    if (v37 && (v38 = swift_conformsToProtocol2()) != 0)
    {
      v39 = v34;
      v40 = *(v38 + 8);

      v40();
      sub_1AB0318FC();
      sub_1AB460184();
      v41 = sub_1AB460154();
      v42 = *(v37 + 48);

      os_unfair_lock_lock((v42 + 20));
      v43 = *(v42 + 16);
      os_unfair_lock_unlock((v42 + 20));

      if (v43 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v41);

      sub_1AB460164();

      v34 = v39;
    }

    else
    {
      v41 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
    v44 = swift_allocObject();
    *(v44 + 24) = 0;
    v45 = (v44 + 24);
    *(v44 + 16) = 0;
    v89[0].tv_sec = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
    swift_task_localValuePush();
    v46 = v87;
    sub_1AB12C208(v72, v86, v83, v84);
    v87 = v46;
    v47 = v41;
    if (v41)
    {
      v48 = v81;
      v49 = v80;
      v50 = v82;
      (*(v81 + 104))(v80, *MEMORY[0x1E6977AC8], v82);
      sub_1AB460174();
      (*(v48 + 8))(v49, v50);
    }

    v84 = v47;
    if (v37)
    {
      v88.tv_sec = &type metadata for InMemoryJetPackLoader;
      StartUpPerformanceEvent.record(checkpoint:)(&v88.tv_sec);
    }

    v51 = v85;
    sub_1AB014AC0(v85, &qword_1EB4366F0);
    sub_1AB019BC0(v89, v51);
    *(v51 + 56) = 1;
    static MonotonicTime.now.getter(&v88);
    v52 = v88.tv_sec;
    tv_nsec = v88.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    v54 = tv_nsec / *&qword_1ED4D1F90 + v52 - (v71.tv_nsec / *&qword_1ED4D1F90 + v71.tv_sec);

    v55 = sub_1AB45FFA4();
    sub_1AB45FFF4();
    v56 = sub_1AB461224();

    if (sub_1AB461314())
    {
      LODWORD(v83) = v56;

      v57 = v34;
      v58 = v78;
      sub_1AB460024();
      v85 = v57;

      v59 = v79;
      v60 = v70;
      if ((*(v79 + 88))(v58, v70) == *MEMORY[0x1E69E93E8])
      {
        v61 = 0;
        v62 = "[Error] Interval already ended";
      }

      else
      {
        (*(v59 + 8))(v58, v60);
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
      *(v63 + 4) = v54 - v64;
      v65 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v55, v83, v65, "MakeDependency", v62, v63, 0xCu);
      MEMORY[0x1AC59F020](v63, -1, -1);
    }

    v74(v26, v76);
    v66 = tv_sec;
    os_unfair_lock_lock(tv_sec + 6);
    *&v66[4]._os_unfair_lock_opaque = v54 + *&v66[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v66 + 6);
    v67 = v89[1];
    v68 = v77;
    *v77 = v89[0];
    v68[1] = v67;
    v68[2] = v89[2];
    v68[3].tv_sec = v90;
    swift_task_localValuePop();
  }

  return result;
}

uint64_t sub_1AB1438FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = a3;
  v90 = a4;
  v6 = sub_1AB45FFD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB460134();
  v86 = *(v9 - 8);
  v87 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45FF84();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v71 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v71 - v18;
  v20 = *a1;
  if (*(a1 + 16))
  {
  }

  v73 = v7;
  v74 = v6;
  v82 = v17;
  v88 = v20;
  v92 = v4;
  v22 = *(a1 + 8);
  v23 = qword_1EB434BA8;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1AB45FFC4();
  v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v78 = v25;
  v26 = sub_1AB45FFA4();
  v27 = sub_1AB461234();
  v28 = sub_1AB461314();
  v83 = v22;
  v84 = v11;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = v12;
    v31 = swift_slowAlloc();
    v91.tv_sec = v31;
    *v29 = 136315138;
    *(v29 + 4) = sub_1AB030D2C(0xD00000000000001ALL, 0x80000001AB4FF010, &v91.tv_sec);
    v32 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v32, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v33 = v31;
    v12 = v30;
    v22 = v83;
    MEMORY[0x1AC59F020](v33, -1, -1);
    v34 = v29;
    v11 = v84;
    MEMORY[0x1AC59F020](v34, -1, -1);
  }

  (*(v12 + 16))(v15, v19, v11);
  sub_1AB460014();
  swift_allocObject();
  v80 = sub_1AB460004();
  v36 = *(v12 + 8);
  v35 = v12 + 8;
  v77 = v36;
  v36(v19, v11);
  static MonotonicTime.now.getter(&v91);
  v75 = v91;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v79 = v35;
  sub_1AB4622E4();
  tv_sec = v91.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v37 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v91.tv_sec = v37;

  swift_task_localValuePush();
  v38 = sub_1AB01DBA0(*(v37 + 16));
  swift_task_localValuePop();

  if (v38)
  {
    v39 = type metadata accessor for PageRenderMetricsPresenter();
    v40 = swift_conformsToProtocol2();
    v41 = 0;
    v42 = v88;
    if (!v40 || !v39)
    {
      goto LABEL_19;
    }

    v43 = *(v40 + 8);
    v44 = v40;

    v43(v39, v44);
    sub_1AB0318FC();
    sub_1AB460184();
    v41 = sub_1AB460154();
    v45 = *(v38 + 48);

    os_unfair_lock_lock((v45 + 20));
    v46 = *(v45 + 16);
    os_unfair_lock_unlock((v45 + 20));

    if (v46 == 1)
    {

      sub_1AB460124();
    }

    sub_1AB3858E0(v41);

    sub_1AB460164();
  }

  else
  {
    v41 = 0;
  }

  v42 = v88;
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  v72 = (v47 + 24);
  *(v47 + 16) = 0;
  v91.tv_sec = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v48 = v92;
  v49 = sub_1AB12C354(v42, v22, v89, v90);
  v21 = v49;
  v92 = v48;
  if (v41)
  {
    v50 = *MEMORY[0x1E6977AC8];
    v90 = v47;
    v51 = v49;
    v52 = v85;
    v53 = v86;
    v54 = v87;
    (*(v86 + 104))(v85, v50, v87);
    sub_1AB460174();
    (*(v53 + 8))(v52, v54);
    v21 = v51;
    v47 = v90;
  }

  if (v38)
  {
    v91.tv_sec = *v21;
    StartUpPerformanceEvent.record(checkpoint:)(&v91.tv_sec);
  }

  sub_1AB057304();
  *a1 = v21;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;

  static MonotonicTime.now.getter(&v91);
  v55 = v91.tv_sec;
  tv_nsec = v91.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v57 = tv_nsec / *&qword_1ED4D1F90 + v55 - (v75.tv_nsec / *&qword_1ED4D1F90 + v75.tv_sec);

  v58 = sub_1AB45FFA4();
  v59 = v82;
  sub_1AB45FFF4();
  LODWORD(v90) = sub_1AB461224();

  if (sub_1AB461314())
  {

    v60 = v81;
    sub_1AB460024();

    v61 = v73;
    v62 = v74;
    if ((*(v73 + 88))(v60, v74) == *MEMORY[0x1E69E93E8])
    {
      v63 = 0;
      v64 = "[Error] Interval already ended";
    }

    else
    {
      (*(v61 + 8))(v60, v62);
      v64 = "selfTime=%f";
      v63 = 1;
    }

    v65 = swift_slowAlloc();
    *v65 = 0;
    *(v65 + 1) = v63;
    *(v65 + 2) = 2048;
    v66 = v72;
    os_unfair_lock_lock(v72);
    v67 = *(v47 + 16);
    os_unfair_lock_unlock(v66);
    *(v65 + 4) = v57 - v67;
    v59 = v82;
    v68 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v58, v90, v68, "MakeDependency", v64, v65, 0xCu);
    MEMORY[0x1AC59F020](v65, -1, -1);
  }

  v77(v59, v84);
  v69 = tv_sec;
  os_unfair_lock_lock(tv_sec + 6);
  *&v69[4]._os_unfair_lock_opaque = v57 + *&v69[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v69 + 6);
  swift_task_localValuePop();

  sub_1AB057304();

  return v21;
}

char *sub_1AB1442A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a3;
  v77 = a4;
  v6 = sub_1AB45FFD4();
  v72 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB45FF84();
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v62 - v15;
  v18 = *a1;
  v17 = *(a1 + 8);
  v19 = *(a1 + 16);
  if (*(a1 + 17))
  {
    return *a1;
  }

  v63 = v6;
  v73 = v14;
  v78 = v17;
  v79 = v13;
  v81 = v4;
  v21 = qword_1EB434BA8;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_1AB45FFC4();
  v23 = __swift_project_value_buffer(v22, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v68 = v23;
  v24 = sub_1AB45FFA4();
  v25 = sub_1AB461234();
  v26 = sub_1AB461314();
  v74 = v19;
  v75 = v18;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v80.tv_sec = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1AB030D2C(0xD000000000000038, 0x80000001AB4FEFD0, &v80.tv_sec);
    v29 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v24, v25, v29, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1AC59F020](v28, -1, -1);
    v30 = v27;
    v18 = v75;
    MEMORY[0x1AC59F020](v30, -1, -1);
  }

  v31 = v79;
  (*(v79 + 16))(v11, v16, v8);
  sub_1AB460014();
  swift_allocObject();
  v32 = sub_1AB460004();
  v34 = *(v31 + 8);
  v33 = v31 + 8;
  v69 = v8;
  v67 = v34;
  v34(v16, v8);
  static MonotonicTime.now.getter(&v80);
  v64 = v80;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v70 = v32;
  v79 = v33;
  sub_1AB4622E4();
  tv_sec = v80.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v35 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v80.tv_sec = v35;

  swift_task_localValuePush();
  v36 = sub_1AB01DBA0(*(v35 + 16));
  swift_task_localValuePop();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  v62 = (v37 + 24);
  *(v37 + 16) = 0;
  v80.tv_sec = v37;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v38 = v78;
  v39 = v81;
  v20 = sub_1AB12C4B0(v18, v78, v76, v77);
  v41 = v40;
  v43 = v42;
  v81 = v39;
  v65 = v36;
  if (v36)
  {
    v80.tv_sec = &type metadata for IntentDispatchOptions.BadOrderingCanary;
    StartUpPerformanceEvent.record(checkpoint:)(&v80.tv_sec);
  }

  v44 = v18;
  v45 = v74;
  sub_1AB0D60E4(v44, v38, v74, 0);
  *a1 = v20;
  *(a1 + 8) = v41;
  *(a1 + 16) = v43;
  *(a1 + 17) = 1;
  static MonotonicTime.now.getter(&v80);
  v46 = v80.tv_sec;
  tv_nsec = v80.tv_nsec;
  if (qword_1ED4D1F88 != -1)
  {
    swift_once();
  }

  v48 = tv_nsec / *&qword_1ED4D1F90 + v46 - (v64.tv_nsec / *&qword_1ED4D1F90 + v64.tv_sec);

  v49 = sub_1AB45FFA4();
  v50 = v73;
  sub_1AB45FFF4();
  LODWORD(v77) = sub_1AB461224();

  if (sub_1AB461314())
  {

    v51 = v71;
    sub_1AB460024();

    v52 = v72;
    v53 = v63;
    if ((*(v72 + 88))(v51, v63) == *MEMORY[0x1E69E93E8])
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
    v57 = v62;
    os_unfair_lock_lock(v62);
    v58 = *(v37 + 16);
    os_unfair_lock_unlock(v57);
    *(v56 + 4) = v48 - v58;
    v50 = v73;
    v59 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v49, v77, v59, "MakeDependency", v55, v56, 0xCu);
    MEMORY[0x1AC59F020](v56, -1, -1);
    v45 = v74;
  }

  v67(v50, v69);
  v60 = tv_sec;
  os_unfair_lock_lock(tv_sec + 6);
  *&v60[4]._os_unfair_lock_opaque = v48 + *&v60[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v60 + 6);
  swift_task_localValuePop();

  sub_1AB0D60E4(v75, v78, v45, 0);

  return v20;
}

uint64_t sub_1AB144A64(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1AB144AF4()
{
  sub_1AB4615D4();

  v24[0] = 0xD00000000000003FLL;
  v24[1] = 0x80000001AB4FF2D0;
  swift_beginAccess();
  v1 = v0[3];
  v2 = v0[4];

  MEMORY[0x1AC59BA20](v1, v2);

  MEMORY[0x1AC59BA20](11810, 0xE200000000000000);
  v25 = 0xD00000000000003FLL;
  v26 = 0x80000001AB4FF2D0;
  v3 = v0[2];
  if (*(sub_1AB12C610(v3) + 16))
  {
    v24[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366A8);
    sub_1AB157EB4();
    v4 = sub_1AB460484();
    v6 = v5;

    sub_1AB4615D4();

    strcpy(v24, " Did you mean ");
    HIBYTE(v24[1]) = -18;
    MEMORY[0x1AC59BA20](v4, v6);

    MEMORY[0x1AC59BA20](63, 0xE100000000000000);
    MEMORY[0x1AC59BA20](v24[0], v24[1]);

    MEMORY[0x1AC59BA20](0xD000000000000034, 0x80000001AB4FF0F0);
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB4FF130);
    return v25;
  }

  v7 = *(v3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = sub_1AB1AFE78(*(v3 + 16), 0);
  v10 = sub_1AB1AF5B8(v24, v9 + 4, v7, v3);

  sub_1AB0309A4();
  if (v10 != v7)
  {
    __break(1u);
LABEL_6:
    v9 = v8;
  }

  v24[0] = v9;

  sub_1AB390A78(v24);

  v11 = *(v24[0] + 2);
  if (v11)
  {
    sub_1AB03BD38(0, v11, 0);
    v12 = 32;
    v13 = v8;
    do
    {
      v24[0] = 60;
      v24[1] = 0xE100000000000000;
      v14 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v14);

      MEMORY[0x1AC59BA20](62, 0xE100000000000000);
      v15 = v24[0];
      v16 = v24[1];
      v18 = *(v13 + 2);
      v17 = *(v13 + 3);
      if (v18 >= v17 >> 1)
      {
        sub_1AB03BD38((v17 > 1), v18 + 1, 1);
      }

      *(v13 + 2) = v18 + 1;
      v19 = &v13[16 * v18];
      *(v19 + 4) = v15;
      *(v19 + 5) = v16;
      v12 += 8;
      --v11;
    }

    while (v11);
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v24[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  sub_1AB01561C(&qword_1ED4D21F0, &qword_1EB4366C8);
  v20 = sub_1AB460484();
  v22 = v21;

  strcpy(v24, " Candidates: ");
  HIWORD(v24[1]) = -4864;
  MEMORY[0x1AC59BA20](v20, v22);

  MEMORY[0x1AC59BA20](v24[0], v24[1]);

  return v25;
}

unint64_t sub_1AB144F54()
{
  sub_1AB4615D4();

  v24[0] = 0xD000000000000027;
  v24[1] = 0x80000001AB4FF380;
  swift_beginAccess();
  v1 = v0[3];
  v2 = v0[4];

  MEMORY[0x1AC59BA20](v1, v2);

  MEMORY[0x1AC59BA20](11810, 0xE200000000000000);
  v25 = 0xD000000000000027;
  v26 = 0x80000001AB4FF380;
  v3 = v0[2];
  if (*(sub_1AB12C8F8(v3) + 2))
  {
    v24[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366A8);
    sub_1AB157EB4();
    v4 = sub_1AB460484();
    v6 = v5;

    sub_1AB4615D4();

    strcpy(v24, " Did you mean ");
    HIBYTE(v24[1]) = -18;
    MEMORY[0x1AC59BA20](v4, v6);

    MEMORY[0x1AC59BA20](63, 0xE100000000000000);
    MEMORY[0x1AC59BA20](v24[0], v24[1]);

    MEMORY[0x1AC59BA20](0xD000000000000034, 0x80000001AB4FF0F0);
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB4FF130);
    return v25;
  }

  v7 = *(v3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = sub_1AB1AFE78(*(v3 + 16), 0);
  v10 = sub_1AB1AF5B8(v24, v9 + 4, v7, v3);

  sub_1AB0309A4();
  if (v10 != v7)
  {
    __break(1u);
LABEL_6:
    v9 = v8;
  }

  v24[0] = v9;

  sub_1AB390A78(v24);

  v11 = *(v24[0] + 2);
  if (v11)
  {
    sub_1AB03BD38(0, v11, 0);
    v12 = 32;
    v13 = v8;
    do
    {
      v24[0] = 60;
      v24[1] = 0xE100000000000000;
      v14 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v14);

      MEMORY[0x1AC59BA20](62, 0xE100000000000000);
      v15 = v24[0];
      v16 = v24[1];
      v18 = *(v13 + 2);
      v17 = *(v13 + 3);
      if (v18 >= v17 >> 1)
      {
        sub_1AB03BD38((v17 > 1), v18 + 1, 1);
      }

      *(v13 + 2) = v18 + 1;
      v19 = &v13[16 * v18];
      *(v19 + 4) = v15;
      *(v19 + 5) = v16;
      v12 += 8;
      --v11;
    }

    while (v11);
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v24[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  sub_1AB01561C(&qword_1ED4D21F0, &qword_1EB4366C8);
  v20 = sub_1AB460484();
  v22 = v21;

  strcpy(v24, " Candidates: ");
  HIWORD(v24[1]) = -4864;
  MEMORY[0x1AC59BA20](v20, v22);

  MEMORY[0x1AC59BA20](v24[0], v24[1]);

  return v25;
}

unint64_t sub_1AB1453B4()
{
  sub_1AB016760(0, &unk_1ED4D1398);
  sub_1AB4615D4();

  v25[0] = 0xD000000000000015;
  v25[1] = 0x80000001AB4FF330;
  v1 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v1);

  MEMORY[0x1AC59BA20](0x20646E756F66203ELL, 0xEC00000022206E69);
  swift_beginAccess();
  v2 = v0[3];
  v3 = v0[4];

  MEMORY[0x1AC59BA20](v2, v3);

  MEMORY[0x1AC59BA20](11810, 0xE200000000000000);
  v26 = 0xD000000000000015;
  v27 = 0x80000001AB4FF330;
  v4 = v0[2];
  if (*(sub_1AB12CC88(v4) + 16))
  {
    v25[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366A8);
    sub_1AB157EB4();
    v5 = sub_1AB460484();
    v7 = v6;

    sub_1AB4615D4();

    strcpy(v25, " Did you mean ");
    HIBYTE(v25[1]) = -18;
    MEMORY[0x1AC59BA20](v5, v7);

    MEMORY[0x1AC59BA20](63, 0xE100000000000000);
    MEMORY[0x1AC59BA20](v25[0], v25[1]);

    MEMORY[0x1AC59BA20](0xD000000000000034, 0x80000001AB4FF0F0);
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB4FF130);
    return v26;
  }

  v8 = *(v4 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    goto LABEL_6;
  }

  v10 = sub_1AB1AFE78(*(v4 + 16), 0);
  v11 = sub_1AB1AF5B8(v25, v10 + 4, v8, v4);

  sub_1AB0309A4();
  if (v11 != v8)
  {
    __break(1u);
LABEL_6:
    v10 = v9;
  }

  v25[0] = v10;

  sub_1AB390A78(v25);

  v12 = *(v25[0] + 2);
  if (v12)
  {
    sub_1AB03BD38(0, v12, 0);
    v13 = 32;
    v14 = v9;
    do
    {
      v25[0] = 60;
      v25[1] = 0xE100000000000000;
      v15 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v15);

      MEMORY[0x1AC59BA20](62, 0xE100000000000000);
      v16 = v25[0];
      v17 = v25[1];
      v19 = *(v14 + 2);
      v18 = *(v14 + 3);
      if (v19 >= v18 >> 1)
      {
        sub_1AB03BD38((v18 > 1), v19 + 1, 1);
      }

      *(v14 + 2) = v19 + 1;
      v20 = &v14[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v25[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  sub_1AB01561C(&qword_1ED4D21F0, &qword_1EB4366C8);
  v21 = sub_1AB460484();
  v23 = v22;

  strcpy(v25, " Candidates: ");
  HIWORD(v25[1]) = -4864;
  MEMORY[0x1AC59BA20](v21, v23);

  MEMORY[0x1AC59BA20](v25[0], v25[1]);

  return v26;
}

uint64_t sub_1AB14586C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1AB14595C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AB1459B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AB145A20()
{
  sub_1AB4615D4();

  v24[0] = 0xD000000000000028;
  v24[1] = 0x80000001AB4FF350;
  swift_beginAccess();
  v1 = v0[3];
  v2 = v0[4];

  MEMORY[0x1AC59BA20](v1, v2);

  MEMORY[0x1AC59BA20](11810, 0xE200000000000000);
  v25 = 0xD000000000000028;
  v26 = 0x80000001AB4FF350;
  v3 = v0[2];
  if (*(sub_1AB12CF74(v3) + 16))
  {
    v24[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366A8);
    sub_1AB157EB4();
    v4 = sub_1AB460484();
    v6 = v5;

    sub_1AB4615D4();

    strcpy(v24, " Did you mean ");
    HIBYTE(v24[1]) = -18;
    MEMORY[0x1AC59BA20](v4, v6);

    MEMORY[0x1AC59BA20](63, 0xE100000000000000);
    MEMORY[0x1AC59BA20](v24[0], v24[1]);

    MEMORY[0x1AC59BA20](0xD000000000000034, 0x80000001AB4FF0F0);
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB4FF130);
    return v25;
  }

  v7 = *(v3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = sub_1AB1AFE78(*(v3 + 16), 0);
  v10 = sub_1AB1AF5B8(v24, v9 + 4, v7, v3);

  sub_1AB0309A4();
  if (v10 != v7)
  {
    __break(1u);
LABEL_6:
    v9 = v8;
  }

  v24[0] = v9;

  sub_1AB390A78(v24);

  v11 = *(v24[0] + 2);
  if (v11)
  {
    sub_1AB03BD38(0, v11, 0);
    v12 = 32;
    v13 = v8;
    do
    {
      v24[0] = 60;
      v24[1] = 0xE100000000000000;
      v14 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v14);

      MEMORY[0x1AC59BA20](62, 0xE100000000000000);
      v15 = v24[0];
      v16 = v24[1];
      v18 = *(v13 + 2);
      v17 = *(v13 + 3);
      if (v18 >= v17 >> 1)
      {
        sub_1AB03BD38((v17 > 1), v18 + 1, 1);
      }

      *(v13 + 2) = v18 + 1;
      v19 = &v13[16 * v18];
      *(v19 + 4) = v15;
      *(v19 + 5) = v16;
      v12 += 8;
      --v11;
    }

    while (v11);
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v24[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  sub_1AB01561C(&qword_1ED4D21F0, &qword_1EB4366C8);
  v20 = sub_1AB460484();
  v22 = v21;

  strcpy(v24, " Candidates: ");
  HIWORD(v24[1]) = -4864;
  MEMORY[0x1AC59BA20](v20, v22);

  MEMORY[0x1AC59BA20](v24[0], v24[1]);

  return v25;
}

unint64_t sub_1AB145E80()
{
  sub_1AB4615D4();

  v24[0] = 0xD000000000000033;
  v24[1] = 0x80000001AB4FF290;
  swift_beginAccess();
  v1 = v0[3];
  v2 = v0[4];

  MEMORY[0x1AC59BA20](v1, v2);

  MEMORY[0x1AC59BA20](11810, 0xE200000000000000);
  v25 = 0xD000000000000033;
  v26 = 0x80000001AB4FF290;
  v3 = v0[2];
  if (*(sub_1AB12D258(v3) + 16))
  {
    v24[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366A8);
    sub_1AB157EB4();
    v4 = sub_1AB460484();
    v6 = v5;

    sub_1AB4615D4();

    strcpy(v24, " Did you mean ");
    HIBYTE(v24[1]) = -18;
    MEMORY[0x1AC59BA20](v4, v6);

    MEMORY[0x1AC59BA20](63, 0xE100000000000000);
    MEMORY[0x1AC59BA20](v24[0], v24[1]);

    MEMORY[0x1AC59BA20](0xD000000000000034, 0x80000001AB4FF0F0);
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB4FF130);
    return v25;
  }

  v7 = *(v3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = sub_1AB1AFE78(*(v3 + 16), 0);
  v10 = sub_1AB1AF5B8(v24, v9 + 4, v7, v3);

  sub_1AB0309A4();
  if (v10 != v7)
  {
    __break(1u);
LABEL_6:
    v9 = v8;
  }

  v24[0] = v9;

  sub_1AB390A78(v24);

  v11 = *(v24[0] + 2);
  if (v11)
  {
    sub_1AB03BD38(0, v11, 0);
    v12 = 32;
    v13 = v8;
    do
    {
      v24[0] = 60;
      v24[1] = 0xE100000000000000;
      v14 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v14);

      MEMORY[0x1AC59BA20](62, 0xE100000000000000);
      v15 = v24[0];
      v16 = v24[1];
      v18 = *(v13 + 2);
      v17 = *(v13 + 3);
      if (v18 >= v17 >> 1)
      {
        sub_1AB03BD38((v17 > 1), v18 + 1, 1);
      }

      *(v13 + 2) = v18 + 1;
      v19 = &v13[16 * v18];
      *(v19 + 4) = v15;
      *(v19 + 5) = v16;
      v12 += 8;
      --v11;
    }

    while (v11);
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v24[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  sub_1AB01561C(&qword_1ED4D21F0, &qword_1EB4366C8);
  v20 = sub_1AB460484();
  v22 = v21;

  strcpy(v24, " Candidates: ");
  HIWORD(v24[1]) = -4864;
  MEMORY[0x1AC59BA20](v20, v22);

  MEMORY[0x1AC59BA20](v24[0], v24[1]);

  return v25;
}

unint64_t sub_1AB1462E0()
{
  sub_1AB4615D4();

  v24[0] = 0xD000000000000024;
  v24[1] = 0x80000001AB4FF260;
  swift_beginAccess();
  v1 = v0[3];
  v2 = v0[4];

  MEMORY[0x1AC59BA20](v1, v2);

  MEMORY[0x1AC59BA20](11810, 0xE200000000000000);
  v25 = 0xD000000000000024;
  v26 = 0x80000001AB4FF260;
  v3 = v0[2];
  if (*(sub_1AB12D534(v3) + 16))
  {
    v24[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366A8);
    sub_1AB157EB4();
    v4 = sub_1AB460484();
    v6 = v5;

    sub_1AB4615D4();

    strcpy(v24, " Did you mean ");
    HIBYTE(v24[1]) = -18;
    MEMORY[0x1AC59BA20](v4, v6);

    MEMORY[0x1AC59BA20](63, 0xE100000000000000);
    MEMORY[0x1AC59BA20](v24[0], v24[1]);

    MEMORY[0x1AC59BA20](0xD000000000000034, 0x80000001AB4FF0F0);
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB4FF130);
    return v25;
  }

  v7 = *(v3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = sub_1AB1AFE78(*(v3 + 16), 0);
  v10 = sub_1AB1AF5B8(v24, v9 + 4, v7, v3);

  sub_1AB0309A4();
  if (v10 != v7)
  {
    __break(1u);
LABEL_6:
    v9 = v8;
  }

  v24[0] = v9;

  sub_1AB390A78(v24);

  v11 = *(v24[0] + 2);
  if (v11)
  {
    sub_1AB03BD38(0, v11, 0);
    v12 = 32;
    v13 = v8;
    do
    {
      v24[0] = 60;
      v24[1] = 0xE100000000000000;
      v14 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v14);

      MEMORY[0x1AC59BA20](62, 0xE100000000000000);
      v15 = v24[0];
      v16 = v24[1];
      v18 = *(v13 + 2);
      v17 = *(v13 + 3);
      if (v18 >= v17 >> 1)
      {
        sub_1AB03BD38((v17 > 1), v18 + 1, 1);
      }

      *(v13 + 2) = v18 + 1;
      v19 = &v13[16 * v18];
      *(v19 + 4) = v15;
      *(v19 + 5) = v16;
      v12 += 8;
      --v11;
    }

    while (v11);
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v24[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  sub_1AB01561C(&qword_1ED4D21F0, &qword_1EB4366C8);
  v20 = sub_1AB460484();
  v22 = v21;

  strcpy(v24, " Candidates: ");
  HIWORD(v24[1]) = -4864;
  MEMORY[0x1AC59BA20](v20, v22);

  MEMORY[0x1AC59BA20](v24[0], v24[1]);

  return v25;
}

unint64_t sub_1AB146740()
{
  sub_1AB4615D4();

  v24[0] = 0xD000000000000034;
  v24[1] = 0x80000001AB4FF1A0;
  swift_beginAccess();
  v1 = v0[3];
  v2 = v0[4];

  MEMORY[0x1AC59BA20](v1, v2);

  MEMORY[0x1AC59BA20](11810, 0xE200000000000000);
  v25 = 0xD000000000000034;
  v26 = 0x80000001AB4FF1A0;
  v3 = v0[2];
  if (*(sub_1AB12D80C(v3) + 16))
  {
    v24[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366A8);
    sub_1AB157EB4();
    v4 = sub_1AB460484();
    v6 = v5;

    sub_1AB4615D4();

    strcpy(v24, " Did you mean ");
    HIBYTE(v24[1]) = -18;
    MEMORY[0x1AC59BA20](v4, v6);

    MEMORY[0x1AC59BA20](63, 0xE100000000000000);
    MEMORY[0x1AC59BA20](v24[0], v24[1]);

    MEMORY[0x1AC59BA20](0xD000000000000034, 0x80000001AB4FF0F0);
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB4FF130);
    return v25;
  }

  v7 = *(v3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = sub_1AB1AFE78(*(v3 + 16), 0);
  v10 = sub_1AB1AF5B8(v24, v9 + 4, v7, v3);

  sub_1AB0309A4();
  if (v10 != v7)
  {
    __break(1u);
LABEL_6:
    v9 = v8;
  }

  v24[0] = v9;

  sub_1AB390A78(v24);

  v11 = *(v24[0] + 2);
  if (v11)
  {
    sub_1AB03BD38(0, v11, 0);
    v12 = 32;
    v13 = v8;
    do
    {
      v24[0] = 60;
      v24[1] = 0xE100000000000000;
      v14 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v14);

      MEMORY[0x1AC59BA20](62, 0xE100000000000000);
      v15 = v24[0];
      v16 = v24[1];
      v18 = *(v13 + 2);
      v17 = *(v13 + 3);
      if (v18 >= v17 >> 1)
      {
        sub_1AB03BD38((v17 > 1), v18 + 1, 1);
      }

      *(v13 + 2) = v18 + 1;
      v19 = &v13[16 * v18];
      *(v19 + 4) = v15;
      *(v19 + 5) = v16;
      v12 += 8;
      --v11;
    }

    while (v11);
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v24[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  sub_1AB01561C(&qword_1ED4D21F0, &qword_1EB4366C8);
  v20 = sub_1AB460484();
  v22 = v21;

  strcpy(v24, " Candidates: ");
  HIWORD(v24[1]) = -4864;
  MEMORY[0x1AC59BA20](v20, v22);

  MEMORY[0x1AC59BA20](v24[0], v24[1]);

  return v25;
}

unint64_t sub_1AB146B9C()
{
  sub_1AB4615D4();

  v24[0] = 0xD00000000000002DLL;
  v24[1] = 0x80000001AB4FF0C0;
  swift_beginAccess();
  v1 = v0[3];
  v2 = v0[4];

  MEMORY[0x1AC59BA20](v1, v2);

  MEMORY[0x1AC59BA20](11810, 0xE200000000000000);
  v25 = 0xD00000000000002DLL;
  v26 = 0x80000001AB4FF0C0;
  v3 = v0[2];
  if (*(sub_1AB12DB58(v3) + 2))
  {
    v24[2] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366A8);
    sub_1AB157EB4();
    v4 = sub_1AB460484();
    v6 = v5;

    sub_1AB4615D4();

    strcpy(v24, " Did you mean ");
    HIBYTE(v24[1]) = -18;
    MEMORY[0x1AC59BA20](v4, v6);

    MEMORY[0x1AC59BA20](63, 0xE100000000000000);
    MEMORY[0x1AC59BA20](v24[0], v24[1]);

    MEMORY[0x1AC59BA20](0xD000000000000034, 0x80000001AB4FF0F0);
    MEMORY[0x1AC59BA20](0xD000000000000023, 0x80000001AB4FF130);
    return v25;
  }

  v7 = *(v3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = sub_1AB1AFE78(*(v3 + 16), 0);
  v10 = sub_1AB1AF5B8(v24, v9 + 4, v7, v3);

  sub_1AB0309A4();
  if (v10 != v7)
  {
    __break(1u);
LABEL_6:
    v9 = v8;
  }

  v24[0] = v9;

  sub_1AB390A78(v24);

  v11 = *(v24[0] + 2);
  if (v11)
  {
    sub_1AB03BD38(0, v11, 0);
    v12 = 32;
    v13 = v8;
    do
    {
      v24[0] = 60;
      v24[1] = 0xE100000000000000;
      v14 = sub_1AB462314();
      MEMORY[0x1AC59BA20](v14);

      MEMORY[0x1AC59BA20](62, 0xE100000000000000);
      v15 = v24[0];
      v16 = v24[1];
      v18 = *(v13 + 2);
      v17 = *(v13 + 3);
      if (v18 >= v17 >> 1)
      {
        sub_1AB03BD38((v17 > 1), v18 + 1, 1);
      }

      *(v13 + 2) = v18 + 1;
      v19 = &v13[16 * v18];
      *(v19 + 4) = v15;
      *(v19 + 5) = v16;
      v12 += 8;
      --v11;
    }

    while (v11);
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v24[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  sub_1AB01561C(&qword_1ED4D21F0, &qword_1EB4366C8);
  v20 = sub_1AB460484();
  v22 = v21;

  strcpy(v24, " Candidates: ");
  HIWORD(v24[1]) = -4864;
  MEMORY[0x1AC59BA20](v20, v22);

  MEMORY[0x1AC59BA20](v24[0], v24[1]);

  return v25;
}

uint64_t sub_1AB146FFC@<X0>(uint64_t a1@<X0>, double a2@<X2>, void (*a3)(uint64_t, uint64_t)@<X3>, void (**a4)(uint64_t)@<X8>)
{
  v5 = v4;
  v83 = a2;
  v84 = a3;
  v8 = sub_1AB45FFD4();
  v76 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB460134();
  v78 = *(v10 - 8);
  v79 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AB45FF84();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v65 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v65 - v19;
  v21 = *a1;
  if (*(a1 + 16))
  {
    *a4 = v21;
  }

  else
  {
    v66 = v8;
    v71 = v18;
    v80 = v21;
    v23 = qword_1EB434BA8;
    v81 = *(a1 + 8);
    v82 = v5;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_1AB45FFC4();
    v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v68 = v25;
    v26 = sub_1AB45FFA4();
    v27 = sub_1AB461234();
    v28 = sub_1AB461314();
    v72 = v12;
    v70 = a4;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v85.tv_sec = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1AB030D2C(0xD000000000000017, 0x80000001AB4FEEF0, &v85.tv_sec);
      v31 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v31, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1AC59F020](v30, -1, -1);
      v32 = v29;
      v12 = v72;
      MEMORY[0x1AC59F020](v32, -1, -1);
    }

    (*(v13 + 16))(v17, v20, v12);
    sub_1AB460014();
    swift_allocObject();
    v74 = sub_1AB460004();
    v33 = v13 + 8;
    v34 = *(v13 + 8);
    v34(v20, v12);
    static MonotonicTime.now.getter(&v85);
    v67 = v85;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    v69 = v33;
    sub_1AB4622E4();
    tv_sec = v85.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v35 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v85.tv_sec = v35;

    swift_task_localValuePush();
    v36 = sub_1AB01DBA0(*(v35 + 16));
    swift_task_localValuePop();

    if (v36 && (v37 = swift_conformsToProtocol2()) != 0)
    {
      v38 = *(v37 + 8);

      v38();
      sub_1AB0318FC();
      sub_1AB460184();
      v39 = sub_1AB460154();
      v40 = *(v36 + 48);

      os_unfair_lock_lock((v40 + 20));
      v41 = *(v40 + 16);
      os_unfair_lock_unlock((v40 + 20));

      if (v41 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v39);

      sub_1AB460164();
    }

    else
    {
      v39 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
    v42 = swift_allocObject();
    *(v42 + 24) = 0;
    v43 = (v42 + 24);
    *(v42 + 16) = 0;
    v85.tv_sec = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
    swift_task_localValuePush();
    v45 = v80;
    v44 = v81;
    v46 = v82;
    sub_1AB12C208(v80, v81, *&v83, v84);
    if (v46)
    {
      swift_task_localValuePop();
      sub_1AB157FC0(v45, v44, 0, MEMORY[0x1E69E7CF8]);
    }

    else
    {
      v84 = v34;
      v82 = 0;
      if (v39)
      {
        v48 = v77;
        v47 = v78;
        v49 = v79;
        (*(v78 + 104))(v77, *MEMORY[0x1E6977AC8], v79);
        sub_1AB460174();
        (*(v47 + 8))(v48, v49);
      }

      if (v36)
      {
        v85.tv_sec = &type metadata for AsyncObjectGraphMetrics;
        StartUpPerformanceEvent.record(checkpoint:)(&v85.tv_sec);
      }

      sub_1AB157FC0(*a1, *(a1 + 8), *(a1 + 16), MEMORY[0x1E69E7CF8]);
      *a1 = v86;
      *(a1 + 8) = 0;
      *(a1 + 16) = 1;

      static MonotonicTime.now.getter(&v85);
      v50 = v85.tv_sec;
      tv_nsec = v85.tv_nsec;
      v52 = v81;
      if (qword_1ED4D1F88 != -1)
      {
        v83 = v85.tv_nsec;
        swift_once();
        tv_nsec = v83;
      }

      v53 = tv_nsec / *&qword_1ED4D1F90 + v50 - (v67.tv_nsec / *&qword_1ED4D1F90 + v67.tv_sec);

      v54 = sub_1AB45FFA4();
      v55 = v71;
      sub_1AB45FFF4();
      LODWORD(v83) = sub_1AB461224();

      if (sub_1AB461314())
      {

        v56 = v75;
        sub_1AB460024();

        v57 = v76;
        v58 = v66;
        if ((*(v76 + 88))(v56, v66) == *MEMORY[0x1E69E93E8])
        {
          v59 = 0;
          v60 = "[Error] Interval already ended";
        }

        else
        {
          (*(v57 + 8))(v56, v58);
          v60 = "selfTime=%f";
          v59 = 1;
        }

        v61 = swift_slowAlloc();
        *v61 = 0;
        *(v61 + 1) = v59;
        *(v61 + 2) = 2048;
        os_unfair_lock_lock(v43);
        v62 = *(v42 + 16);
        os_unfair_lock_unlock(v43);
        *(v61 + 4) = v53 - v62;
        v55 = v71;
        v63 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v54, LOBYTE(v83), v63, "MakeDependency", v60, v61, 0xCu);
        MEMORY[0x1AC59F020](v61, -1, -1);
        v52 = v81;
      }

      v84(v55, v72);
      v64 = tv_sec;
      os_unfair_lock_lock(tv_sec + 6);
      *&v64[4]._os_unfair_lock_opaque = v53 + *&v64[4]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v64 + 6);
      *v70 = v86;
      swift_task_localValuePop();
      sub_1AB157FC0(v80, v52, 0, MEMORY[0x1E69E7CF8]);
    }
  }
}

uint64_t sub_1AB1479D8(uint64_t a1, uint64_t a2, uint64_t a3, os_unfair_lock_s *a4)
{
  v66 = a4;
  v64 = *&a3;
  v6 = sub_1AB45FFD4();
  v60 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB45FF84();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v52 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v52 - v16;
  v18 = *a1;
  if (*(a1 + 16))
  {
  }

  v52 = v6;
  v62 = v18;
  v63 = v4;
  v19 = qword_1EB434BA8;
  v61 = *(a1 + 8);

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_1AB45FFC4();
  v21 = __swift_project_value_buffer(v20, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v55 = v21;
  v22 = sub_1AB45FFA4();
  v23 = sub_1AB461234();
  v24 = sub_1AB461314();
  v56 = v12;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v58 = v9;
    v26 = v8;
    v27 = v25;
    v28 = swift_slowAlloc();
    v65.tv_sec = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1AB030D2C(0xD000000000000017, 0x80000001AB4FEF80, &v65.tv_sec);
    v29 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v22, v23, v29, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1AC59F020](v28, -1, -1);
    v30 = v27;
    v8 = v26;
    v9 = v58;
    MEMORY[0x1AC59F020](v30, -1, -1);
  }

  (*(v9 + 16))(v15, v17, v8);
  sub_1AB460014();
  swift_allocObject();
  v31 = sub_1AB460004();
  v57 = v8;
  v58 = v31;
  v54 = *(v9 + 8);
  v54(v17, v8);
  static MonotonicTime.now.getter(&v65);
  v53 = v65;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  tv_sec = v65.tv_sec;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v33 = swift_allocObject();
  *(v33 + 24) = 0;
  v34 = (v33 + 24);
  *(v33 + 16) = 0;
  v65.tv_sec = v33;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v35 = v63;
  v36 = sub_1AB12C354(v62, v61, *&v64, v66);
  if (v35)
  {
    swift_task_localValuePop();
    sub_1AB057304();
  }

  else
  {
    v17 = v36;
    v66 = tv_sec;
    v63 = 0;
    sub_1AB057304();
    *a1 = v17;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;

    static MonotonicTime.now.getter(&v65);
    v37 = v65.tv_sec;
    tv_nsec = v65.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      v64 = v65.tv_nsec;
      swift_once();
      tv_nsec = v64;
    }

    v39 = tv_nsec / *&qword_1ED4D1F90 + v37 - (v53.tv_nsec / *&qword_1ED4D1F90 + v53.tv_sec);

    v40 = sub_1AB45FFA4();
    v41 = v56;
    sub_1AB45FFF4();
    LODWORD(v64) = sub_1AB461224();

    if (sub_1AB461314())
    {

      v42 = v59;
      sub_1AB460024();

      v43 = v60;
      v44 = v52;
      if ((*(v60 + 88))(v42, v52) == *MEMORY[0x1E69E93E8])
      {
        v45 = 0;
        v46 = "[Error] Interval already ended";
      }

      else
      {
        (*(v43 + 8))(v42, v44);
        v46 = "selfTime=%f";
        v45 = 1;
      }

      v47 = swift_slowAlloc();
      *v47 = 0;
      *(v47 + 1) = v45;
      *(v47 + 2) = 2048;
      os_unfair_lock_lock(v34);
      v48 = *(v33 + 16);
      os_unfair_lock_unlock(v34);
      *(v47 + 4) = v39 - v48;
      v49 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v40, LOBYTE(v64), v49, "MakeDependency", v46, v47, 0xCu);
      MEMORY[0x1AC59F020](v47, -1, -1);
    }

    v54(v41, v57);
    v50 = v66;
    os_unfair_lock_lock(v66 + 6);
    *&v50[4]._os_unfair_lock_opaque = v39 + *&v50[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v50 + 6);
    swift_task_localValuePop();
    sub_1AB057304();
  }

  return v17;
}

uint64_t sub_1AB1480CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = a3;
  v90 = a4;
  v6 = sub_1AB45FFD4();
  v85 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = COERCE_DOUBLE(sub_1AB460134());
  v83 = *(v8 - 8);
  v84 = *&v8;
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB45FF84();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v86 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v73 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v73 - v17;
  v20 = *a1;
  v19 = *(a1 + 8);
  if (*(a1 + 16))
  {
    sub_1AB04B604(*a1);
    return v20;
  }

  else
  {
    v74 = v6;
    v92 = v16;
    v88 = v4;
    v22 = qword_1EB434BA8;

    if (v22 != -1)
    {
      swift_once();
    }

    v87 = v19;
    v23 = sub_1AB45FFC4();
    v24 = __swift_project_value_buffer(v23, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v77 = v24;
    v25 = sub_1AB45FFA4();
    v26 = sub_1AB461234();
    v27 = sub_1AB461314();
    v78 = v10;
    v28 = v20;
    if (v27)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v91.tv_sec = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1AB030D2C(0xD00000000000001ELL, 0x80000001AB4FF310, &v91.tv_sec);
      v31 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v25, v26, v31, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      v32 = v30;
      v10 = v78;
      MEMORY[0x1AC59F020](v32, -1, -1);
      MEMORY[0x1AC59F020](v29, -1, -1);
    }

    v33 = v92;
    (*(v92 + 16))(v15, v18, v10);
    sub_1AB460014();
    swift_allocObject();
    v80 = sub_1AB460004();
    v35 = *(v33 + 8);
    v34 = v33 + 8;
    v76 = v35;
    v35(v18, v10);
    static MonotonicTime.now.getter(&v91);
    v75 = v91;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v91.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v36 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v91.tv_sec = v36;

    swift_task_localValuePush();
    v37 = sub_1AB01DBA0(*(v36 + 16));
    swift_task_localValuePop();

    if (v37)
    {
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436570);
      v39 = swift_conformsToProtocol2();
      v40 = 0;
      if (v39 && v38)
      {
        v41 = *(v39 + 8);
        v42 = v39;

        v41(v38, v42);
        sub_1AB0318FC();
        sub_1AB460184();
        v40 = sub_1AB460154();
        v43 = *(v37 + 48);

        os_unfair_lock_lock((v43 + 20));
        LODWORD(v41) = *(v43 + 16);
        os_unfair_lock_unlock((v43 + 20));

        if (v41 == 1)
        {

          sub_1AB460124();
        }

        sub_1AB3858E0(v40);

        sub_1AB460164();
      }
    }

    else
    {
      v40 = 0;
    }

    v92 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
    v44 = swift_allocObject();
    *(v44 + 24) = 0;
    *(v44 + 16) = 0;
    v91.tv_sec = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
    swift_task_localValuePush();
    v45 = v87;
    v46 = v88;
    v47 = sub_1AB12C0AC(v28, v87, v89, v90);
    if (v46)
    {
      swift_task_localValuePop();

      sub_1AB157FF4(v28, v45, 0);
    }

    else
    {
      v49 = v48;
      v89 = v47;
      v73 = (v44 + 24);
      v90 = v28;
      v88 = 0;
      if (v40)
      {
        v51 = v83;
        v50 = v84;
        v52 = v37;
        v53 = v82;
        (*(v83 + 104))(v82, *MEMORY[0x1E6977AC8], COERCE_DOUBLE(*&v84));
        sub_1AB460174();
        v54 = v53;
        v37 = v52;
        (*(v51 + 8))(v54, COERCE_DOUBLE(*&v50));
      }

      v55 = v86;
      v56 = v87;
      if (v37)
      {
        v91.tv_sec = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436570);
        StartUpPerformanceEvent.record(checkpoint:)(&v91.tv_sec);
      }

      sub_1AB157FF4(v90, v56, 0);
      v57 = v89;
      *a1 = v89;
      *(a1 + 8) = v49;
      *(a1 + 16) = 1;
      sub_1AB04B604(v57);
      static MonotonicTime.now.getter(&v91);
      v58 = v91.tv_sec;
      tv_nsec = v91.tv_nsec;
      if (qword_1ED4D1F88 != -1)
      {
        v84 = v91.tv_nsec;
        swift_once();
        tv_nsec = v84;
      }

      v60 = tv_nsec / *&qword_1ED4D1F90 + v58 - (v75.tv_nsec / *&qword_1ED4D1F90 + v75.tv_sec);

      v61 = sub_1AB45FFA4();
      sub_1AB45FFF4();
      LODWORD(v84) = sub_1AB461224();

      v62 = sub_1AB461314();
      v63 = v85;
      if (v62)
      {

        v64 = v81;
        sub_1AB460024();

        v65 = v74;
        if ((*(v63 + 88))(v64, v74) == *MEMORY[0x1E69E93E8])
        {
          v66 = 0;
          v67 = "[Error] Interval already ended";
        }

        else
        {
          (*(v63 + 8))(v64, v65);
          v67 = "selfTime=%f";
          v66 = 1;
        }

        v68 = swift_slowAlloc();
        *v68 = 0;
        *(v68 + 1) = v66;
        *(v68 + 2) = 2048;
        v69 = v73;
        os_unfair_lock_lock(v73);
        v70 = *(v44 + 16);
        os_unfair_lock_unlock(v69);
        *(v68 + 4) = v60 - v70;
        v71 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v61, LOBYTE(v84), v71, "MakeDependency", v67, v68, 0xCu);
        MEMORY[0x1AC59F020](v68, -1, -1);
      }

      v76(v55, v78);
      v72 = tv_sec;
      os_unfair_lock_lock(tv_sec + 6);
      *&v72[4]._os_unfair_lock_opaque = v60 + *&v72[4]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v72 + 6);
      swift_task_localValuePop();

      sub_1AB157FF4(v90, v87, 0);

      return v89;
    }
  }
}

uint64_t sub_1AB148A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, os_unfair_lock_s *a4@<X3>, uint64_t a5@<X8>)
{
  v90 = a3;
  v91 = a4;
  v89 = a2;
  v93 = a5;
  v79 = sub_1AB45FFD4();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AB460134();
  v82 = *(v7 - 8);
  v83 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB45FD64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v94 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1AB45FF84();
  v95 = *(v92 - 8);
  v12 = MEMORY[0x1EEE9AC00](v92);
  v88 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v74 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v74 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436930);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v74 - v20;
  v86 = a1;
  sub_1AB014A58(a1, &v74 - v20, &qword_1EB436930);
  v84 = v19;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v10 + 32))(v93, v21, v9);
  }

  v80 = v10;
  v87 = v9;
  v23 = *(v21 + 1);
  v76 = *v21;
  v85 = v23;
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v24 = sub_1AB45FFC4();
  v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v75 = v25;
  v26 = sub_1AB45FFA4();
  v27 = sub_1AB461234();
  v28 = sub_1AB461314();
  v29 = v80;
  if (v28)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v96.tv_sec = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1AB030D2C(0x7963696C6F50, 0xE600000000000000, &v96.tv_sec);
    v32 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v32, "MakeDependency", "object=%s,type=lazy", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1AC59F020](v31, -1, -1);
    MEMORY[0x1AC59F020](v30, -1, -1);
  }

  v33 = v95;
  v34 = v92;
  (*(v95 + 16))(v16, v18, v92);
  sub_1AB460014();
  swift_allocObject();
  sub_1AB460004();
  v35 = *(v33 + 8);
  v95 = v33 + 8;
  (*&v35)(v18, v34);
  static MonotonicTime.now.getter(&v96);
  v74 = v96;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  tv_sec = v96.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v37 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v96.tv_sec = v37;

  swift_task_localValuePush();
  v38 = sub_1AB01DBA0(*(v37 + 16));
  swift_task_localValuePop();

  if (v38 && (v39 = v87, (v40 = swift_conformsToProtocol2()) != 0))
  {
    v41 = v35;
    v42 = *(v40 + 8);
    v43 = v40;

    v42(v39, v43);
    sub_1AB0318FC();
    sub_1AB460184();
    v44 = sub_1AB460154();
    v45 = *(v38 + 48);

    os_unfair_lock_lock((v45 + 20));
    v46 = *(v45 + 16);
    os_unfair_lock_unlock((v45 + 20));

    if (v46 == 1)
    {

      sub_1AB460124();
    }

    sub_1AB3858E0(v44);

    sub_1AB460164();
    v89 = v44;

    v35 = v41;
  }

  else
  {
    v89 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  v48 = (v47 + 24);
  *(v47 + 16) = 0;
  v96.tv_sec = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v49 = v97;
  sub_1AB12C208(v76, v85, *&v90, v91);
  v97 = v49;
  if (v49)
  {
    swift_task_localValuePop();
  }

  else
  {
    v91 = tv_sec;
    if (v89)
    {
      v50 = *MEMORY[0x1E6977AC8];
      v90 = v35;
      v52 = v81;
      v51 = v82;
      v53 = v83;
      (*(v82 + 104))(v81, v50, v83);
      sub_1AB460174();
      (*(v51 + 8))(v52, v53);
      v35 = v90;
    }

    v54 = v87;
    if (v38)
    {
      v96.tv_sec = v87;
      StartUpPerformanceEvent.record(checkpoint:)(&v96.tv_sec);
    }

    v55 = v86;
    sub_1AB014AC0(v86, &qword_1EB436930);
    (*(v29 + 16))(v55, v94, v54);
    swift_storeEnumTagMultiPayload();
    static MonotonicTime.now.getter(&v96);
    v56 = v96.tv_sec;
    tv_nsec = v96.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      v90 = v96.tv_nsec;
      swift_once();
      tv_nsec = v90;
    }

    v58 = tv_nsec / *&qword_1ED4D1F90 + v56 - (v74.tv_nsec / *&qword_1ED4D1F90 + v74.tv_sec);

    v59 = sub_1AB45FFA4();
    v60 = v88;
    sub_1AB45FFF4();
    LODWORD(v90) = sub_1AB461224();

    v61 = sub_1AB461314();
    v62 = v93;
    if (v61)
    {

      v63 = v77;
      sub_1AB460024();

      v64 = v78;
      v65 = v79;
      if ((*(v78 + 88))(v63, v79) == *MEMORY[0x1E69E93E8])
      {
        v66 = 0;
        v67 = "[Error] Interval already ended";
      }

      else
      {
        (*(v64 + 8))(v63, v65);
        v67 = "selfTime=%f";
        v66 = 1;
      }

      v68 = swift_slowAlloc();
      *v68 = 0;
      *(v68 + 1) = v66;
      *(v68 + 2) = 2048;
      os_unfair_lock_lock(v48);
      v69 = *(v47 + 16);
      os_unfair_lock_unlock(v48);
      *(v68 + 4) = v58 - v69;
      v70 = v88;
      v71 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v59, LOBYTE(v90), v71, "MakeDependency", v67, v68, 0xCu);
      v72 = v68;
      v60 = v70;
      MEMORY[0x1AC59F020](v72, -1, -1);
      v62 = v93;
      v29 = v80;
    }

    (*&v35)(v60, v92);
    v73 = v91;
    os_unfair_lock_lock(v91 + 6);
    *&v73[4]._os_unfair_lock_opaque = v58 + *&v73[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v73 + 6);
    (*(v29 + 32))(v62, v94, v87);
    swift_task_localValuePop();
  }
}

uint64_t sub_1AB149574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, double a3@<X3>, void (**a4)(uint64_t)@<X8>)
{
  v5 = v4;
  v99 = a3;
  v94 = a2;
  v8 = sub_1AB45FFD4();
  v86 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB460134();
  v88 = *(v10 - 8);
  v89 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AB45FF84();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v90 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v75 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v75 - v19;
  v22 = *a1;
  v21 = *(a1 + 8);
  v23 = *(a1 + 16);
  v24 = *(a1 + 24);
  if (*(a1 + 32))
  {
    *a4 = v22;
    a4[1] = v21;
    a4[2] = v23;
    a4[3] = v24;
  }

  else
  {
    v75 = v8;
    v92 = v22;
    v93 = v5;
    v82 = v23;
    v83 = v24;
    v26 = qword_1EB434BA8;
    v91 = v21;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = sub_1AB45FFC4();
    v28 = __swift_project_value_buffer(v27, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v77 = v28;
    v29 = sub_1AB45FFA4();
    v30 = sub_1AB461234();
    v31 = sub_1AB461314();
    v80 = v12;
    v79 = a4;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v96.tv_sec = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1AB030D2C(0x656C69666F7250, 0xE700000000000000, &v96.tv_sec);
      v34 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v29, v30, v34, "MakeDependency", "object=%s,type=lazy", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x1AC59F020](v33, -1, -1);
      v35 = v32;
      v12 = v80;
      MEMORY[0x1AC59F020](v35, -1, -1);
    }

    (*(v13 + 16))(v18, v20, v12);
    sub_1AB460014();
    swift_allocObject();
    v84 = sub_1AB460004();
    v38 = *(v13 + 8);
    v36 = v13 + 8;
    v37 = v38;
    v38(v20, v12);
    static MonotonicTime.now.getter(&v96);
    v76 = v96;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    v78 = v36;
    sub_1AB4622E4();
    tv_sec = v96.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v39 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v96.tv_sec = v39;

    swift_task_localValuePush();
    v40 = sub_1AB01DBA0(*(v39 + 16));
    swift_task_localValuePop();

    if (v40 && (v41 = swift_conformsToProtocol2()) != 0)
    {
      v42 = *(v41 + 8);

      v42();
      sub_1AB0318FC();
      sub_1AB460184();
      v43 = sub_1AB460154();
      v44 = *(v40 + 48);

      os_unfair_lock_lock((v44 + 20));
      LODWORD(v42) = *(v44 + 16);
      os_unfair_lock_unlock((v44 + 20));

      if (v42 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v43);

      sub_1AB460164();
    }

    else
    {
      v43 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
    v45 = swift_allocObject();
    *(v45 + 24) = 0;
    v46 = (v45 + 24);
    *(v45 + 16) = 0;
    v96.tv_sec = v45;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
    swift_task_localValuePush();
    v48 = v91;
    v47 = v92;
    v49 = v93;
    sub_1AB12C208(v92, v91, v94, *&v99);
    if (v49)
    {
      swift_task_localValuePop();
      sub_1AB158048(v47, v48, v82, v83, 0);
    }

    else
    {
      v93 = 0;
      if (v43)
      {
        v51 = v88;
        v50 = v89;
        v52 = v37;
        v53 = v87;
        (*(v88 + 104))(v87, *MEMORY[0x1E6977AC8], v89);
        sub_1AB460174();
        v54 = v53;
        v37 = v52;
        (*(v51 + 8))(v54, v50);
      }

      v55 = v90;
      if (v40)
      {
        v95.tv_sec = &type metadata for Bag.Profile;
        StartUpPerformanceEvent.record(checkpoint:)(&v95.tv_sec);
      }

      sub_1AB158048(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
      tv_nsec = v96.tv_nsec;
      v57 = v97;
      v58 = v98;
      *a1 = v96.tv_sec;
      *(a1 + 8) = tv_nsec;
      *(a1 + 16) = v57;
      *(a1 + 24) = v58;
      *(a1 + 32) = 1;

      static MonotonicTime.now.getter(&v95);
      v59 = v95.tv_sec;
      v60 = v95.tv_nsec;
      if (qword_1ED4D1F88 != -1)
      {
        v99 = v95.tv_nsec;
        swift_once();
        v60 = v99;
      }

      v61 = v60 / *&qword_1ED4D1F90 + v59 - (v76.tv_nsec / *&qword_1ED4D1F90 + v76.tv_sec);

      v62 = sub_1AB45FFA4();
      sub_1AB45FFF4();
      LODWORD(v99) = sub_1AB461224();

      if (sub_1AB461314())
      {
        v94 = v37;

        v63 = v85;
        sub_1AB460024();

        v64 = v86;
        v65 = v75;
        if ((*(v86 + 88))(v63, v75) == *MEMORY[0x1E69E93E8])
        {
          v66 = 0;
          v67 = "[Error] Interval already ended";
        }

        else
        {
          (*(v64 + 8))(v63, v65);
          v67 = "selfTime=%f";
          v66 = 1;
        }

        v68 = swift_slowAlloc();
        *v68 = 0;
        *(v68 + 1) = v66;
        *(v68 + 2) = 2048;
        os_unfair_lock_lock(v46);
        v69 = *(v45 + 16);
        os_unfair_lock_unlock(v46);
        *(v68 + 4) = v61 - v69;
        v70 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v62, LOBYTE(v99), v70, "MakeDependency", v67, v68, 0xCu);
        MEMORY[0x1AC59F020](v68, -1, -1);
        v37 = v94;
      }

      v37(v55, v80);
      v71 = tv_sec;
      os_unfair_lock_lock(tv_sec + 6);
      *&v71[4]._os_unfair_lock_opaque = v61 + *&v71[4]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v71 + 6);
      v72 = v97;
      v73 = v98;
      v74 = v79;
      *v79 = v96;
      v74[1].tv_sec = v72;
      v74[1].tv_nsec = v73;
      swift_task_localValuePop();
      sub_1AB158048(v92, v91, v82, v83, 0);
    }
  }
}

uint64_t sub_1AB149F70@<X0>(uint64_t a1@<X0>, os_unfair_lock_s *a2@<X2>, os_unfair_lock_s *a3@<X3>, void (**a4)(uint64_t)@<X8>)
{
  v93 = a2;
  v94 = a3;
  v7 = sub_1AB45FFD4();
  v86 = *(v7 - 8);
  v87 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = COERCE_DOUBLE(sub_1AB460134());
  v89 = *(v9 - 8);
  v90 = *&v9;
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45FF84();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v76 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v76 - v18;
  v20 = *a1;
  v98 = *(a1 + 8);
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  if (*(a1 + 32))
  {
    v23 = v98;
    *a4 = v20;
    a4[1] = v23;
    a4[2] = v21;
    a4[3] = v22;
    return sub_1AB144A64(v20, v23);
  }

  else
  {
    v80 = v17;
    v91 = v20;
    v82 = v21;
    v83 = v22;
    v79 = a4;
    v92 = v4;
    v25 = qword_1EB434BA8;

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = sub_1AB45FFC4();
    v27 = __swift_project_value_buffer(v26, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v77 = v27;
    v28 = sub_1AB45FFA4();
    v29 = sub_1AB461234();
    v30 = sub_1AB461314();
    v81 = v11;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = v12;
      v33 = swift_slowAlloc();
      v96.tv_sec = v33;
      *v31 = 136315138;
      *(v31 + 4) = sub_1AB030D2C(0xD000000000000012, 0x80000001AB4D4260, &v96.tv_sec);
      v34 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v28, v29, v34, "MakeDependency", "object=%s,type=lazy", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      v35 = v33;
      v12 = v32;
      MEMORY[0x1AC59F020](v35, -1, -1);
      v36 = v31;
      v11 = v81;
      MEMORY[0x1AC59F020](v36, -1, -1);
    }

    (*(v12 + 16))(v16, v19, v11);
    sub_1AB460014();
    swift_allocObject();
    v84 = sub_1AB460004();
    v37 = *(v12 + 8);
    v78 = v12 + 8;
    v37(v19, v11);
    static MonotonicTime.now.getter(&v96);
    v76 = v96;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v96.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v39 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v96.tv_sec = v39;

    swift_task_localValuePush();
    v40 = sub_1AB01DBA0(*(v39 + 16));
    swift_task_localValuePop();

    if (v40 && (v41 = swift_conformsToProtocol2()) != 0)
    {
      v42 = *(v41 + 8);

      v42();
      sub_1AB0318FC();
      sub_1AB460184();
      v43 = sub_1AB460154();
      v44 = *(v40 + 48);

      os_unfair_lock_lock((v44 + 20));
      v45 = *(v44 + 16);
      os_unfair_lock_unlock((v44 + 20));

      if (v45 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v43);

      sub_1AB460164();
    }

    else
    {
      v43 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
    v46 = swift_allocObject();
    *(v46 + 24) = 0;
    *(v46 + 16) = 0;
    v96.tv_sec = v46;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
    swift_task_localValuePush();
    v47 = v91;
    v48 = v92;
    sub_1AB12C208(v91, v98, v93, v94);
    if (v48)
    {
      swift_task_localValuePop();
      sub_1AB157FE4(v47, v98, v82, v83, 0);
    }

    else
    {
      v93 = (v46 + 24);
      v94 = tv_sec;
      if (v43)
      {
        v49 = v89;
        v50 = v90;
        v51 = v40;
        v52 = v37;
        v53 = v88;
        (*(v89 + 104))(v88, *MEMORY[0x1E6977AC8], COERCE_DOUBLE(*&v90));
        sub_1AB460174();
        v54 = v53;
        v37 = v52;
        v40 = v51;
        (*(v49 + 8))(v54, COERCE_DOUBLE(*&v50));
      }

      if (v40)
      {
        v95.tv_sec = &type metadata for JetEngineBootstrap.URLProtocolHandler;
        StartUpPerformanceEvent.record(checkpoint:)(&v95.tv_sec);
      }

      sub_1AB157FE4(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
      v55 = v96;
      v56 = v97;
      *a1 = v96;
      *(a1 + 16) = v56;
      *(a1 + 32) = 1;
      sub_1AB144A64(v55.tv_sec, v55.tv_nsec);
      static MonotonicTime.now.getter(&v95);
      v57 = v95.tv_sec;
      tv_nsec = v95.tv_nsec;
      if (qword_1ED4D1F88 != -1)
      {
        v90 = v95.tv_nsec;
        swift_once();
        tv_nsec = v90;
      }

      v59 = tv_nsec / *&qword_1ED4D1F90 + v57 - (v76.tv_nsec / *&qword_1ED4D1F90 + v76.tv_sec);

      v60 = sub_1AB45FFA4();
      v61 = v80;
      sub_1AB45FFF4();
      LODWORD(v90) = sub_1AB461224();

      if (sub_1AB461314())
      {

        v62 = v85;
        sub_1AB460024();

        v64 = v86;
        v63 = v87;
        v65 = (*(v86 + 88))(v62, v87);
        v66 = *MEMORY[0x1E69E93E8];
        v92 = 0;
        if (v65 == v66)
        {
          v67 = 0;
          v68 = "[Error] Interval already ended";
        }

        else
        {
          (*(v64 + 8))(v62, v63);
          v68 = "selfTime=%f";
          v67 = 1;
        }

        v69 = swift_slowAlloc();
        *v69 = 0;
        *(v69 + 1) = v67;
        *(v69 + 2) = 2048;
        v70 = v93;
        os_unfair_lock_lock(v93);
        v71 = *(v46 + 16);
        os_unfair_lock_unlock(v70);
        *(v69 + 4) = v59 - v71;
        v61 = v80;
        v72 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v60, LOBYTE(v90), v72, "MakeDependency", v68, v69, 0xCu);
        MEMORY[0x1AC59F020](v69, -1, -1);
      }

      v37(v61, v81);
      v73 = v94;
      os_unfair_lock_lock(v94 + 6);
      *&v73[4]._os_unfair_lock_opaque = v59 + *&v73[4]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v73 + 6);
      v74 = v97;
      v75 = v79;
      *v79 = v96;
      v75[1] = v74;
      swift_task_localValuePop();
      sub_1AB157FE4(v91, v98, v82, v83, 0);
    }
  }
}

uint64_t sub_1AB14A970@<X0>(uint64_t a1@<X0>, double a2@<X2>, void (*a3)(uint64_t, uint64_t)@<X3>, void (**a4)(uint64_t)@<X8>)
{
  v5 = v4;
  v83 = a2;
  v84 = a3;
  v8 = sub_1AB45FFD4();
  v76 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB460134();
  v78 = *(v10 - 8);
  v79 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AB45FF84();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v65 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v65 - v19;
  v21 = *a1;
  if (*(a1 + 16))
  {
    *a4 = v21;
    return swift_unknownObjectRetain();
  }

  else
  {
    v66 = v8;
    v71 = v18;
    v80 = v21;
    v23 = qword_1EB434BA8;
    v81 = *(a1 + 8);
    v82 = v5;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_1AB45FFC4();
    v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v68 = v25;
    v26 = sub_1AB45FFA4();
    v27 = sub_1AB461234();
    v28 = sub_1AB461314();
    v72 = v12;
    v70 = a4;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v85.tv_sec = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1AB030D2C(6775106, 0xE300000000000000, &v85.tv_sec);
      v31 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v31, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1AC59F020](v30, -1, -1);
      v32 = v29;
      v12 = v72;
      MEMORY[0x1AC59F020](v32, -1, -1);
    }

    (*(v13 + 16))(v17, v20, v12);
    sub_1AB460014();
    swift_allocObject();
    v74 = sub_1AB460004();
    v33 = v13 + 8;
    v34 = *(v13 + 8);
    v34(v20, v12);
    static MonotonicTime.now.getter(&v85);
    v67 = v85;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    v69 = v33;
    sub_1AB4622E4();
    tv_sec = v85.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v35 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v85.tv_sec = v35;

    swift_task_localValuePush();
    v36 = sub_1AB01DBA0(*(v35 + 16));
    swift_task_localValuePop();

    if (v36 && (v37 = swift_conformsToProtocol2()) != 0)
    {
      v38 = *(v37 + 8);

      v38();
      sub_1AB0318FC();
      sub_1AB460184();
      v39 = sub_1AB460154();
      v40 = *(v36 + 48);

      os_unfair_lock_lock((v40 + 20));
      v41 = *(v40 + 16);
      os_unfair_lock_unlock((v40 + 20));

      if (v41 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v39);

      sub_1AB460164();
    }

    else
    {
      v39 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
    v42 = swift_allocObject();
    *(v42 + 24) = 0;
    v43 = (v42 + 24);
    *(v42 + 16) = 0;
    v85.tv_sec = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
    swift_task_localValuePush();
    v45 = v80;
    v44 = v81;
    v46 = v82;
    sub_1AB12C208(v80, v81, *&v83, v84);
    if (v46)
    {
      swift_task_localValuePop();
      sub_1AB157FC0(v45, v44, 0, MEMORY[0x1E69E7D60]);
    }

    else
    {
      v84 = v34;
      v82 = 0;
      if (v39)
      {
        v48 = v77;
        v47 = v78;
        v49 = v79;
        (*(v78 + 104))(v77, *MEMORY[0x1E6977AC8], v79);
        sub_1AB460174();
        (*(v47 + 8))(v48, v49);
      }

      if (v36)
      {
        v85.tv_sec = &type metadata for Bag;
        StartUpPerformanceEvent.record(checkpoint:)(&v85.tv_sec);
      }

      sub_1AB157FC0(*a1, *(a1 + 8), *(a1 + 16), MEMORY[0x1E69E7D60]);
      *a1 = v86;
      *(a1 + 8) = 0;
      *(a1 + 16) = 1;
      swift_unknownObjectRetain();
      static MonotonicTime.now.getter(&v85);
      v50 = v85.tv_sec;
      tv_nsec = v85.tv_nsec;
      v52 = v81;
      if (qword_1ED4D1F88 != -1)
      {
        v83 = v85.tv_nsec;
        swift_once();
        tv_nsec = v83;
      }

      v53 = tv_nsec / *&qword_1ED4D1F90 + v50 - (v67.tv_nsec / *&qword_1ED4D1F90 + v67.tv_sec);

      v54 = sub_1AB45FFA4();
      v55 = v71;
      sub_1AB45FFF4();
      LODWORD(v83) = sub_1AB461224();

      if (sub_1AB461314())
      {

        v56 = v75;
        sub_1AB460024();

        v57 = v76;
        v58 = v66;
        if ((*(v76 + 88))(v56, v66) == *MEMORY[0x1E69E93E8])
        {
          v59 = 0;
          v60 = "[Error] Interval already ended";
        }

        else
        {
          (*(v57 + 8))(v56, v58);
          v60 = "selfTime=%f";
          v59 = 1;
        }

        v61 = swift_slowAlloc();
        *v61 = 0;
        *(v61 + 1) = v59;
        *(v61 + 2) = 2048;
        os_unfair_lock_lock(v43);
        v62 = *(v42 + 16);
        os_unfair_lock_unlock(v43);
        *(v61 + 4) = v53 - v62;
        v55 = v71;
        v63 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v54, LOBYTE(v83), v63, "MakeDependency", v60, v61, 0xCu);
        MEMORY[0x1AC59F020](v61, -1, -1);
        v52 = v81;
      }

      v84(v55, v72);
      v64 = tv_sec;
      os_unfair_lock_lock(tv_sec + 6);
      *&v64[4]._os_unfair_lock_opaque = v53 + *&v64[4]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v64 + 6);
      *v70 = v86;
      swift_task_localValuePop();
      sub_1AB157FC0(v80, v52, 0, MEMORY[0x1E69E7D60]);
    }
  }
}

char *sub_1AB14B340(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unint64_t *a5, uint64_t a6, void (*a7)(void (*)(char **__return_ptr, uint64_t), uint64_t, void))
{
  v106 = a5;
  v103 = *&a3;
  v104 = a4;
  v10 = sub_1AB45FFD4();
  v93 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AB460134();
  v95 = *(v12 - 8);
  v96 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AB45FF84();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v102 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v83 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v23 = &v83 - v22;
  v24 = *v21;
  if (*(v21 + 16))
  {
    return v24;
  }

  v85 = v10;
  v100 = v24;
  v101 = v7;
  v98 = a7;
  v88 = v21;
  v26 = *(v21 + 8);
  v27 = qword_1EB434BA8;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = sub_1AB45FFC4();
  v29 = __swift_project_value_buffer(v28, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v87 = v29;
  v30 = sub_1AB45FFA4();
  v31 = sub_1AB461234();
  v32 = sub_1AB461314();
  v99 = v26;
  v89 = a6;
  v90 = v14;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v105.tv_sec = v34;
    *v33 = 136315138;
    sub_1AB016760(0, v106);
    v35 = sub_1AB462314();
    v37 = v15;
    v38 = sub_1AB030D2C(v35, v36, &v105.tv_sec);

    *(v33 + 4) = v38;
    v15 = v37;
    v39 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v30, v31, v39, "MakeDependency", "object=%s,type=lazy", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x1AC59F020](v34, -1, -1);
    v40 = v33;
    v14 = v90;
    MEMORY[0x1AC59F020](v40, -1, -1);
  }

  (*(v15 + 16))(v20, v23, v14);
  sub_1AB460014();
  swift_allocObject();
  v41 = sub_1AB460004();
  v44 = *(v15 + 8);
  v43 = (v15 + 8);
  v42 = v44;
  v44(v23, v14);
  static MonotonicTime.now.getter(&v105);
  v86 = v105;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  tv_sec = v105.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v45 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v105.tv_sec = v45;

  swift_task_localValuePush();
  v46 = sub_1AB01DBA0(*(v45 + 16));
  swift_task_localValuePop();

  v92 = v41;
  if (v46)
  {
    v47 = sub_1AB016760(0, v106);
    v48 = swift_conformsToProtocol2();
    v49 = 0;
    if (v48 && v47)
    {
      v50 = *(v48 + 8);
      v51 = v48;

      v50(v47, v51);
      sub_1AB0318FC();
      sub_1AB460184();
      v49 = sub_1AB460154();
      v52 = *(v46 + 48);

      os_unfair_lock_lock((v52 + 20));
      v53 = *(v52 + 16);
      os_unfair_lock_unlock((v52 + 20));

      if (v53 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v49);

      sub_1AB460164();
    }
  }

  else
  {
    v49 = 0;
  }

  v106 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v54 = swift_allocObject();
  *(v54 + 24) = 0;
  v55 = (v54 + 24);
  *(v54 + 16) = 0;
  v105.tv_sec = v54;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v57 = v99;
  v56 = v100;
  v58 = v101;
  v59 = sub_1AB12C354(v100, v99, *&v103, v104);
  if (v58)
  {
    swift_task_localValuePop();

    v98(v56, v57, 0);
  }

  else
  {
    v60 = v59;
    v101 = 0;
    v61 = v49;
    if (v49)
    {
      v63 = v95;
      v62 = v96;
      v64 = v42;
      v65 = v94;
      (*(v95 + 104))(v94, *MEMORY[0x1E6977AC8], v96);
      sub_1AB460174();
      v66 = v65;
      v42 = v64;
      (*(v63 + 8))(v66, v62);
    }

    v67 = v99;
    v68 = v97;
    v89 = v61;
    if (v46)
    {
      v105.tv_sec = swift_getObjectType();
      StartUpPerformanceEvent.record(checkpoint:)(&v105.tv_sec);
    }

    v98(v100, v67, 0);
    v69 = v88;
    *v88 = v60;
    v69[1] = 0;
    *(v69 + 16) = 1;
    v104 = v60;
    static MonotonicTime.now.getter(&v105);
    v70 = v105.tv_sec;
    tv_nsec = v105.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      v103 = v105.tv_nsec;
      swift_once();
      tv_nsec = v103;
    }

    v72 = tv_nsec / *&qword_1ED4D1F90 + v70 - (v86.tv_nsec / *&qword_1ED4D1F90 + v86.tv_sec);

    v73 = sub_1AB45FFA4();
    sub_1AB45FFF4();
    LODWORD(v103) = sub_1AB461224();

    if (sub_1AB461314())
    {

      sub_1AB460024();

      v74 = v93;
      v75 = v85;
      v76 = (*(v93 + 88))(v68, v85) == *MEMORY[0x1E69E93E8];
      v84 = v42;
      if (v76)
      {
        v78 = 0;
        v77 = "[Error] Interval already ended";
      }

      else
      {
        (*(v74 + 8))(v68, v75);
        v77 = "selfTime=%f";
        v78 = 1;
      }

      v79 = swift_slowAlloc();
      *v79 = 0;
      *(v79 + 1) = v78;
      *(v79 + 2) = 2048;
      os_unfair_lock_lock(v55);
      v80 = *(v54 + 16);
      os_unfair_lock_unlock(v55);
      *(v79 + 4) = v72 - v80;
      v81 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v73, LOBYTE(v103), v81, "MakeDependency", v77, v79, 0xCu);
      MEMORY[0x1AC59F020](v79, -1, -1);
      v67 = v99;
      v42 = v84;
    }

    v42(v102, v90);
    v82 = tv_sec;
    os_unfair_lock_lock(tv_sec + 6);
    *&v82[4]._os_unfair_lock_opaque = v72 + *&v82[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v82 + 6);
    swift_task_localValuePop();

    v98(v100, v67, 0);

    return v104;
  }
}

uint64_t sub_1AB14BD4C(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v92 = *&a4;
  v90 = a3;
  v6 = sub_1AB45FFD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB460134();
  v83 = *(v9 - 8);
  v84 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45FF84();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v73 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v73 - v18;
  v20 = *a1;
  if (*(a1 + 16))
  {
  }

  v73 = v7;
  v74 = v6;
  v78 = v17;
  v88 = v20;
  v89 = v4;
  v22 = *(a1 + 8);
  v23 = qword_1EB434BA8;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1AB45FFC4();
  v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v76 = v25;
  v26 = sub_1AB45FFA4();
  v27 = sub_1AB461234();
  v28 = sub_1AB461314();
  v87 = v22;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v85 = v12;
    v30 = v29;
    v31 = swift_slowAlloc();
    v91.tv_sec = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1AB030D2C(0x73746E756F636341, 0xE800000000000000, &v91.tv_sec);
    v32 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v32, "MakeDependency", "object=%s,type=lazy", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1AC59F020](v31, -1, -1);
    v33 = v30;
    v12 = v85;
    MEMORY[0x1AC59F020](v33, -1, -1);
  }

  (*(v12 + 2))(v16, v19, v11);
  sub_1AB460014();
  swift_allocObject();
  v34 = sub_1AB460004();
  v37 = *(v12 + 1);
  v36 = v12 + 8;
  v35 = v37;
  (v37)(v19, v11);
  static MonotonicTime.now.getter(&v91);
  v75 = v91;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v21 = qword_1EB46C208;
  sub_1AB4622E4();
  tv_sec = v91.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v38 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v91.tv_sec = v38;

  swift_task_localValuePush();
  v39 = sub_1AB01DBA0(*(v38 + 16));
  swift_task_localValuePop();

  if (v39)
  {
    v40 = type metadata accessor for Unstable.Accounts();
    v41 = swift_conformsToProtocol2();
    v86 = 0;
    if (v41 && v40)
    {
      v85 = v35;
      v42 = *(v41 + 8);
      v43 = v41;

      v42(v40, v43);
      sub_1AB0318FC();
      sub_1AB460184();
      v44 = sub_1AB460154();
      v45 = *(v39 + 48);

      os_unfair_lock_lock((v45 + 20));
      v46 = *(v45 + 16);
      os_unfair_lock_unlock((v45 + 20));

      if (v46 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v44);

      sub_1AB460164();
      v86 = v44;

      v35 = v85;
    }
  }

  else
  {
    v86 = 0;
  }

  v80 = v34;
  v85 = v36;
  v77 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  v48 = (v47 + 24);
  *(v47 + 16) = 0;
  v91.tv_sec = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v49 = v89;
  v50 = sub_1AB12C354(v88, v87, v90, *&v92);
  if (v49)
  {
    swift_task_localValuePop();

    sub_1AB057304();
  }

  else
  {
    v21 = v50;
    v89 = 0;
    if (v86)
    {
      v51 = *MEMORY[0x1E6977AC8];
      v53 = v83;
      v52 = v84;
      v54 = *(v83 + 104);
      *&v92 = v47 + 24;
      v55 = v39;
      v56 = v35;
      v57 = v82;
      v54(v82, v51, v84);
      sub_1AB460174();
      v58 = v57;
      v35 = v56;
      v39 = v55;
      v48 = *&v92;
      (*(v53 + 8))(v58, v52);
    }

    if (v39)
    {
      v91.tv_sec = *v21;
      StartUpPerformanceEvent.record(checkpoint:)(&v91.tv_sec);
    }

    sub_1AB057304();
    *a1 = v21;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;

    static MonotonicTime.now.getter(&v91);
    v59 = v91.tv_sec;
    tv_nsec = v91.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      v92 = v91.tv_nsec;
      swift_once();
      tv_nsec = v92;
    }

    v61 = tv_nsec / *&qword_1ED4D1F90 + v59 - (v75.tv_nsec / *&qword_1ED4D1F90 + v75.tv_sec);

    v62 = sub_1AB45FFA4();
    v63 = v78;
    sub_1AB45FFF4();
    LODWORD(v92) = sub_1AB461224();

    if (sub_1AB461314())
    {

      v64 = v81;
      sub_1AB460024();

      v65 = v73;
      v66 = v74;
      if ((*(v73 + 88))(v64, v74) == *MEMORY[0x1E69E93E8])
      {
        v67 = 0;
        v90 = "[Error] Interval already ended";
      }

      else
      {
        (*(v65 + 8))(v64, v66);
        v90 = "selfTime=%f";
        v67 = 1;
      }

      v68 = swift_slowAlloc();
      *v68 = 0;
      *(v68 + 1) = v67;
      *(v68 + 2) = 2048;
      os_unfair_lock_lock(v48);
      v69 = *(v47 + 16);
      os_unfair_lock_unlock(v48);
      *(v68 + 4) = v61 - v69;
      v63 = v78;
      v70 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v62, LOBYTE(v92), v70, "MakeDependency", v90, v68, 0xCu);
      MEMORY[0x1AC59F020](v68, -1, -1);
    }

    (v35)(v63, v77);
    v71 = tv_sec;
    os_unfair_lock_lock(tv_sec + 6);
    *&v71[4]._os_unfair_lock_opaque = v61 + *&v71[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v71 + 6);
    swift_task_localValuePop();

    sub_1AB057304();
  }

  return v21;
}

uint64_t sub_1AB14C718@<X0>(uint64_t a1@<X0>, double a2@<X2>, void (*a3)(uint64_t, uint64_t)@<X3>, void (**a4)(uint64_t)@<X8>)
{
  v5 = v4;
  v83 = a2;
  v84 = a3;
  v8 = sub_1AB45FFD4();
  v76 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB460134();
  v78 = *(v10 - 8);
  v79 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AB45FF84();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v65 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v65 - v19;
  v21 = *a1;
  if (*(a1 + 16))
  {
    *a4 = v21;
  }

  else
  {
    v66 = v8;
    v71 = v18;
    v80 = v21;
    v23 = qword_1EB434BA8;
    v81 = *(a1 + 8);
    v82 = v5;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = sub_1AB45FFC4();
    v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v68 = v25;
    v26 = sub_1AB45FFA4();
    v27 = sub_1AB461234();
    v28 = sub_1AB461314();
    v72 = v12;
    v70 = a4;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v85.tv_sec = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1AB030D2C(0x746E6F434E4F534ALL, 0xEB00000000747865, &v85.tv_sec);
      v31 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v31, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1AC59F020](v30, -1, -1);
      v32 = v29;
      v12 = v72;
      MEMORY[0x1AC59F020](v32, -1, -1);
    }

    (*(v13 + 16))(v17, v20, v12);
    sub_1AB460014();
    swift_allocObject();
    v74 = sub_1AB460004();
    v33 = v13 + 8;
    v34 = *(v13 + 8);
    v34(v20, v12);
    static MonotonicTime.now.getter(&v85);
    v67 = v85;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    v69 = v33;
    sub_1AB4622E4();
    tv_sec = v85.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v35 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v85.tv_sec = v35;

    swift_task_localValuePush();
    v36 = sub_1AB01DBA0(*(v35 + 16));
    swift_task_localValuePop();

    if (v36 && (v37 = swift_conformsToProtocol2()) != 0)
    {
      v38 = *(v37 + 8);

      v38();
      sub_1AB0318FC();
      sub_1AB460184();
      v39 = sub_1AB460154();
      v40 = *(v36 + 48);

      os_unfair_lock_lock((v40 + 20));
      v41 = *(v40 + 16);
      os_unfair_lock_unlock((v40 + 20));

      if (v41 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v39);

      sub_1AB460164();
    }

    else
    {
      v39 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
    v42 = swift_allocObject();
    *(v42 + 24) = 0;
    v43 = (v42 + 24);
    *(v42 + 16) = 0;
    v85.tv_sec = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
    swift_task_localValuePush();
    v45 = v80;
    v44 = v81;
    v46 = v82;
    sub_1AB12C208(v80, v81, *&v83, v84);
    if (v46)
    {
      swift_task_localValuePop();
      sub_1AB157FC0(v45, v44, 0, MEMORY[0x1E69E7CF8]);
    }

    else
    {
      v84 = v34;
      v82 = 0;
      if (v39)
      {
        v48 = v77;
        v47 = v78;
        v49 = v79;
        (*(v78 + 104))(v77, *MEMORY[0x1E6977AC8], v79);
        sub_1AB460174();
        (*(v47 + 8))(v48, v49);
      }

      if (v36)
      {
        v85.tv_sec = &type metadata for JSONContext;
        StartUpPerformanceEvent.record(checkpoint:)(&v85.tv_sec);
      }

      sub_1AB157FC0(*a1, *(a1 + 8), *(a1 + 16), MEMORY[0x1E69E7CF8]);
      *a1 = v86;
      *(a1 + 8) = 0;
      *(a1 + 16) = 1;

      static MonotonicTime.now.getter(&v85);
      v50 = v85.tv_sec;
      tv_nsec = v85.tv_nsec;
      v52 = v81;
      if (qword_1ED4D1F88 != -1)
      {
        v83 = v85.tv_nsec;
        swift_once();
        tv_nsec = v83;
      }

      v53 = tv_nsec / *&qword_1ED4D1F90 + v50 - (v67.tv_nsec / *&qword_1ED4D1F90 + v67.tv_sec);

      v54 = sub_1AB45FFA4();
      v55 = v71;
      sub_1AB45FFF4();
      LODWORD(v83) = sub_1AB461224();

      if (sub_1AB461314())
      {

        v56 = v75;
        sub_1AB460024();

        v57 = v76;
        v58 = v66;
        if ((*(v76 + 88))(v56, v66) == *MEMORY[0x1E69E93E8])
        {
          v59 = 0;
          v60 = "[Error] Interval already ended";
        }

        else
        {
          (*(v57 + 8))(v56, v58);
          v60 = "selfTime=%f";
          v59 = 1;
        }

        v61 = swift_slowAlloc();
        *v61 = 0;
        *(v61 + 1) = v59;
        *(v61 + 2) = 2048;
        os_unfair_lock_lock(v43);
        v62 = *(v42 + 16);
        os_unfair_lock_unlock(v43);
        *(v61 + 4) = v53 - v62;
        v55 = v71;
        v63 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v54, LOBYTE(v83), v63, "MakeDependency", v60, v61, 0xCu);
        MEMORY[0x1AC59F020](v61, -1, -1);
        v52 = v81;
      }

      v84(v55, v72);
      v64 = tv_sec;
      os_unfair_lock_lock(tv_sec + 6);
      *&v64[4]._os_unfair_lock_opaque = v53 + *&v64[4]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v64 + 6);
      *v70 = v86;
      swift_task_localValuePop();
      sub_1AB157FC0(v80, v52, 0, MEMORY[0x1E69E7CF8]);
    }
  }
}

void (*sub_1AB14D0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(char **__return_ptr, uint64_t)
{
  v5 = v4;
  v95 = a3;
  v96 = a4;
  v6 = sub_1AB45FFD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = COERCE_DOUBLE(sub_1AB460134());
  v93 = *(v10 - 8);
  v94 = *&v10;
  MEMORY[0x1EEE9AC00](v10);
  v92 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AB45FF84();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v79 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v21 = v79 - v20;
  v22 = *v19;
  if (*(v19 + 16))
  {

    return v22;
  }

  else
  {
    v80 = v9;
    v81 = v7;
    v82 = v6;
    v89 = v18;
    v98 = v17;
    v87 = v19;
    v24 = *(v19 + 8);
    v25 = qword_1EB434BA8;

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = sub_1AB45FFC4();
    v27 = __swift_project_value_buffer(v26, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v85 = v27;
    v28 = sub_1AB45FFA4();
    v29 = sub_1AB461234();
    v30 = sub_1AB461314();
    v90 = v12;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      tv_nsec = v24;
      v33 = v22;
      v34 = v5;
      v35 = v32;
      v97.tv_sec = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1AB030D2C(0x697669746341574ELL, 0xEA00000000007974, &v97.tv_sec);
      v36 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v28, v29, v36, "MakeDependency", "object=%s,type=lazy", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      v37 = v35;
      v5 = v34;
      v22 = v33;
      v24 = tv_nsec;
      MEMORY[0x1AC59F020](v37, -1, -1);
      v38 = v31;
      v12 = v90;
      MEMORY[0x1AC59F020](v38, -1, -1);
    }

    v39 = v98;
    (*(v98 + 16))(v16, v21, v12);
    sub_1AB460014();
    swift_allocObject();
    v40 = sub_1AB460004();
    v42 = *(v39 + 8);
    v41 = v39 + 8;
    v84 = v42;
    v42(v21, v12);
    static MonotonicTime.now.getter(&v97);
    tv_sec = v97.tv_sec;
    tv_nsec = v97.tv_nsec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    v91 = v40;
    v98 = v41;
    v23 = qword_1EB46C208;
    sub_1AB4622E4();
    v43 = v97.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v44 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v97.tv_sec = v44;

    swift_task_localValuePush();
    v45 = sub_1AB01DBA0(*(v44 + 16));
    swift_task_localValuePop();

    if (v45)
    {
      v46 = sub_1AB460184();
      v47 = swift_conformsToProtocol2();
      v48 = 0;
      if (v47 && v46)
      {
        v86 = v43;
        v49 = *(v47 + 8);
        v50 = v47;

        v49(v46, v50);
        sub_1AB0318FC();
        v48 = sub_1AB460154();
        v51 = *(v45 + 48);

        os_unfair_lock_lock((v51 + 20));
        v52 = *(v51 + 16);
        os_unfair_lock_unlock((v51 + 20));

        if (v52 == 1)
        {

          sub_1AB460124();
        }

        sub_1AB3858E0(v48);

        sub_1AB460164();

        v43 = v86;
      }
    }

    else
    {
      v48 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
    v53 = swift_allocObject();
    *(v53 + 24) = 0;
    *(v53 + 16) = 0;
    v97.tv_sec = v53;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
    swift_task_localValuePush();
    v54 = sub_1AB12C354(v22, v24, v95, v96);
    if (v5)
    {
      swift_task_localValuePop();

      sub_1AB057304();
    }

    else
    {
      v23 = v54;
      v79[0] = (v53 + 24);
      v55 = v48;
      v86 = v43;
      v96 = 0;
      if (v48)
      {
        v56 = v92;
        v57 = v93;
        v58 = v45;
        v59 = v24;
        v60 = v94;
        (*(v93 + 104))(v92, *MEMORY[0x1E6977AC8], COERCE_DOUBLE(*&v94));
        sub_1AB460174();
        v61 = v60;
        v24 = v59;
        v45 = v58;
        (*(v57 + 8))(v56, COERCE_DOUBLE(*&v61));
      }

      v79[1] = v55;
      if (v45)
      {
        v97.tv_sec = *v23;
        StartUpPerformanceEvent.record(checkpoint:)(&v97.tv_sec);
      }

      sub_1AB057304();
      v95 = v22;
      v62 = v87;
      *v87 = v23;
      v62[1] = 0;
      *(v62 + 16) = 1;

      static MonotonicTime.now.getter(&v97);
      v63 = v97.tv_sec;
      v64 = v97.tv_nsec;
      if (qword_1ED4D1F88 != -1)
      {
        v94 = v97.tv_nsec;
        swift_once();
        v64 = v94;
      }

      v65 = v64 / *&qword_1ED4D1F90 + v63 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

      v66 = sub_1AB45FFA4();
      v67 = v89;
      sub_1AB45FFF4();
      LODWORD(v94) = sub_1AB461224();

      if (sub_1AB461314())
      {
        tv_nsec = v24;

        v68 = v80;
        sub_1AB460024();

        v70 = v81;
        v69 = v82;
        if ((*(v81 + 88))(v68, v82) == *MEMORY[0x1E69E93E8])
        {
          v71 = 0;
          v72 = "[Error] Interval already ended";
        }

        else
        {
          (*(v70 + 8))(v68, v69);
          v72 = "selfTime=%f";
          v71 = 1;
        }

        v73 = swift_slowAlloc();
        *v73 = 0;
        *(v73 + 1) = v71;
        *(v73 + 2) = 2048;
        v74 = v79[0];
        os_unfair_lock_lock(v79[0]);
        v75 = *(v53 + 16);
        os_unfair_lock_unlock(v74);
        *(v73 + 4) = v65 - v75;
        v67 = v89;
        v76 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v66, LOBYTE(v94), v76, "MakeDependency", v72, v73, 0xCu);
        MEMORY[0x1AC59F020](v73, -1, -1);
      }

      v84(v67, v90);
      v77 = v86;
      os_unfair_lock_lock(v86 + 6);
      *&v77[4]._os_unfair_lock_opaque = v65 + *&v77[4]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v77 + 6);
      swift_task_localValuePop();

      sub_1AB057304();
    }
  }

  return v23;
}

uint64_t sub_1AB14DAFC@<X0>(uint64_t a1@<X0>, double a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v69 = a2;
  v70 = a3;
  v71 = a4;
  v7 = sub_1AB45FFD4();
  v67 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB45FF84();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v58 - v17;
  v68 = a1;
  sub_1AB014A58(a1, v74, &qword_1EB4366A0);
  if (v75)
  {
    return sub_1AB0149B0(v74, v71);
  }

  v58 = v7;
  v63 = v13;
  v76 = v10;
  v20 = *(&v74[0] + 1);
  v65 = *&v74[0];
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v21 = sub_1AB45FFC4();
  v22 = __swift_project_value_buffer(v21, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v61 = v22;
  v23 = sub_1AB45FFA4();
  v24 = sub_1AB461234();
  v25 = sub_1AB461314();
  v64 = v9;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    tv_nsec = v20;
    v28 = v27;
    v73[0].tv_sec = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1AB030D2C(0xD000000000000021, 0x80000001AB4FF090, &v73[0].tv_sec);
    v29 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v23, v24, v29, "MakeDependency", "object=%s,type=lazy", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v30 = v28;
    v5 = v4;
    v20 = tv_nsec;
    MEMORY[0x1AC59F020](v30, -1, -1);
    v31 = v26;
    v9 = v64;
    MEMORY[0x1AC59F020](v31, -1, -1);
  }

  v32 = v76;
  (*(v76 + 16))(v16, v18, v9);
  sub_1AB460014();
  swift_allocObject();
  sub_1AB460004();
  v34 = *(v32 + 8);
  v33 = v32 + 8;
  v60 = v34;
  v34(v18, v9);
  static MonotonicTime.now.getter(v73);
  tv_sec = v73[0].tv_sec;
  tv_nsec = v73[0].tv_nsec;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v35 = v73[0].tv_sec;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436690);
  started = type metadata accessor for StartUpPerformanceEvent();
  v76 = v33;
  if (v36 == started)
  {
    v40 = 0;
  }

  else
  {
    v38 = v5;
    type metadata accessor for BaseObjectGraph();
    v39 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v73[0].tv_sec = v39;

    swift_task_localValuePush();
    v40 = sub_1AB01DBA0(*(v39 + 16));
    swift_task_localValuePop();

    v5 = v38;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  v42 = (v41 + 24);
  *(v41 + 16) = 0;
  v73[0].tv_sec = v41;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  sub_1AB12C208(v65, v20, *&v69, v70);
  if (v5)
  {
    swift_task_localValuePop();
  }

  else
  {
    if (v40)
    {
      v72.tv_sec = v36;
      StartUpPerformanceEvent.record(checkpoint:)(&v72.tv_sec);
    }

    v70 = v40;
    v43 = v68;
    sub_1AB014AC0(v68, &qword_1EB4366A0);
    sub_1AB01494C(v73, v43);
    *(v43 + 40) = 1;
    static MonotonicTime.now.getter(&v72);
    v44 = v72.tv_sec;
    v45 = v72.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      v69 = v72.tv_nsec;
      swift_once();
      v45 = v69;
    }

    v46 = v45 / *&qword_1ED4D1F90 + v44 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

    v47 = sub_1AB45FFA4();
    v48 = v63;
    sub_1AB45FFF4();
    LODWORD(v69) = sub_1AB461224();

    if (sub_1AB461314())
    {
      tv_nsec = v20;

      v49 = v66;
      sub_1AB460024();

      v50 = v67;
      v51 = v58;
      v52 = (*(v67 + 88))(v49, v58) == *MEMORY[0x1E69E93E8];
      v65 = 0;
      if (v52)
      {
        v54 = 0;
        v53 = "[Error] Interval already ended";
      }

      else
      {
        (*(v50 + 8))(v49, v51);
        v53 = "selfTime=%f";
        v54 = 1;
      }

      v55 = swift_slowAlloc();
      *v55 = 0;
      *(v55 + 1) = v54;
      *(v55 + 2) = 2048;
      os_unfair_lock_lock(v42);
      v56 = *(v41 + 16);
      os_unfair_lock_unlock(v42);
      *(v55 + 4) = v46 - v56;
      v48 = v63;
      v57 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v47, LOBYTE(v69), v57, "MakeDependency", v53, v55, 0xCu);
      MEMORY[0x1AC59F020](v55, -1, -1);
    }

    v60(v48, v64);
    os_unfair_lock_lock((v35 + 24));
    *(v35 + 16) = v46 + *(v35 + 16);
    os_unfair_lock_unlock((v35 + 24));
    sub_1AB0149B0(&v73[0].tv_sec, v71);
    swift_task_localValuePop();
  }
}

uint64_t sub_1AB14E350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, double a3@<X3>, uint64_t a4@<X8>)
{
  v88 = a3;
  v84 = a2;
  v7 = sub_1AB45FFD4();
  v77 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v76 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB460134();
  v79 = *(v9 - 8);
  v80 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45FF84();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v67 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v67 - v18;
  v21 = *a1;
  result = *(a1 + 8);
  if (*(a1 + 16))
  {
    *a4 = v21;
    *(a4 + 8) = result & 1;
  }

  else
  {
    v67 = v7;
    v73 = v17;
    v81 = v21;
    v82 = result;
    v83 = v4;
    v22 = qword_1EB434BA8;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = sub_1AB45FFC4();
    v24 = __swift_project_value_buffer(v23, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v70 = v24;
    v25 = sub_1AB45FFA4();
    v26 = sub_1AB461234();
    v27 = sub_1AB461314();
    v74 = v11;
    v72 = a4;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v87.tv_sec = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1AB030D2C(0xD000000000000015, 0x80000001AB4FF050, &v87.tv_sec);
      v30 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v25, v26, v30, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x1AC59F020](v29, -1, -1);
      v31 = v28;
      v11 = v74;
      MEMORY[0x1AC59F020](v31, -1, -1);
    }

    (*(v12 + 16))(v16, v19, v11);
    sub_1AB460014();
    swift_allocObject();
    v75 = sub_1AB460004();
    v32 = v12 + 8;
    v69 = *(v12 + 8);
    v69(v19, v11);
    static MonotonicTime.now.getter(&v87);
    v68 = v87;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v87.tv_sec;
    type metadata accessor for BaseObjectGraph();
    v34 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v87.tv_sec = v34;

    swift_task_localValuePush();
    v35 = sub_1AB01DBA0(*(v34 + 16));
    swift_task_localValuePop();

    v71 = v32;
    if (v35 && (v36 = swift_conformsToProtocol2()) != 0)
    {
      v37 = *(v36 + 8);

      v37();
      sub_1AB0318FC();
      sub_1AB460184();
      v38 = sub_1AB460154();
      v39 = *(v35 + 48);

      os_unfair_lock_lock((v39 + 20));
      v40 = *(v39 + 16);
      os_unfair_lock_unlock((v39 + 20));

      if (v40 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v38);

      sub_1AB460164();
    }

    else
    {
      v38 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
    v41 = swift_allocObject();
    *(v41 + 24) = 0;
    v42 = (v41 + 24);
    *(v41 + 16) = 0;
    v87.tv_sec = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
    swift_task_localValuePush();
    v44 = v81;
    v43 = v82;
    v45 = v83;
    sub_1AB12C208(v81, v82, v84, *&v88);
    if (v45)
    {
      swift_task_localValuePop();
      sub_1AB0D60F4(v44, v43, 0);
    }

    else
    {
      v83 = 0;
      if (v38)
      {
        v47 = v79;
        v46 = v80;
        v48 = tv_sec;
        v49 = v78;
        (*(v79 + 104))(v78, *MEMORY[0x1E6977AC8], v80);
        sub_1AB460174();
        v50 = v49;
        tv_sec = v48;
        (*(v47 + 8))(v50, v46);
      }

      if (v35)
      {
        v87.tv_sec = &type metadata for IntentDispatchTimeout;
        StartUpPerformanceEvent.record(checkpoint:)(&v87.tv_sec);
      }

      sub_1AB0D60F4(*a1, *(a1 + 8), *(a1 + 16));
      v51 = v86;
      *a1 = v85;
      *(a1 + 8) = v51;
      *(a1 + 16) = 1;
      static MonotonicTime.now.getter(&v87);
      v52 = v87.tv_sec;
      tv_nsec = v87.tv_nsec;
      if (qword_1ED4D1F88 != -1)
      {
        v88 = v87.tv_nsec;
        swift_once();
        tv_nsec = v88;
      }

      v54 = tv_nsec / *&qword_1ED4D1F90 + v52 - (v68.tv_nsec / *&qword_1ED4D1F90 + v68.tv_sec);

      v55 = sub_1AB45FFA4();
      v56 = v73;
      sub_1AB45FFF4();
      LODWORD(v88) = sub_1AB461224();

      if (sub_1AB461314())
      {
        v84 = tv_sec;

        v57 = v76;
        sub_1AB460024();

        v58 = v77;
        v59 = v67;
        if ((*(v77 + 88))(v57, v67) == *MEMORY[0x1E69E93E8])
        {
          v60 = 0;
          v61 = "[Error] Interval already ended";
        }

        else
        {
          (*(v58 + 8))(v57, v59);
          v61 = "selfTime=%f";
          v60 = 1;
        }

        v62 = swift_slowAlloc();
        *v62 = 0;
        *(v62 + 1) = v60;
        *(v62 + 2) = 2048;
        os_unfair_lock_lock(v42);
        v63 = *(v41 + 16);
        os_unfair_lock_unlock(v42);
        *(v62 + 4) = v54 - v63;
        v56 = v73;
        v64 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v55, LOBYTE(v88), v64, "MakeDependency", v61, v62, 0xCu);
        MEMORY[0x1AC59F020](v62, -1, -1);
        tv_sec = v84;
      }

      v69(v56, v74);
      os_unfair_lock_lock((tv_sec + 24));
      *(tv_sec + 16) = v54 + *(tv_sec + 16);
      os_unfair_lock_unlock((tv_sec + 24));
      v65 = v86;
      v66 = v72;
      *v72 = v85;
      *(v66 + 8) = v65;
      swift_task_localValuePop();
      sub_1AB0D60F4(v81, v82, 0);
    }
  }

  return result;
}

uint64_t sub_1AB14ED0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, uint64_t a5@<X8>)
{
  v86 = a3;
  v87 = a4;
  v85 = a2;
  v8 = sub_1AB45FFD4();
  v76 = *(v8 - 8);
  v77 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB460134();
  v79 = *(v10 - 8);
  v80 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for PageIntentInstrumentation();
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1AB45FF84();
  v93 = *(v89 - 8);
  v13 = MEMORY[0x1EEE9AC00](v89);
  v84 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v72 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v72 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436640);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v72 - v21;
  v82 = a1;
  sub_1AB014A58(a1, &v72 - v21, &qword_1EB436640);
  v81 = v20;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1AB0342CC(v22, a5, type metadata accessor for PageIntentInstrumentation);
  }

  v73 = a5;
  v24 = *(v22 + 1);
  v74 = *v22;
  v83 = v24;
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v25 = sub_1AB45FFC4();
  __swift_project_value_buffer(v25, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v26 = sub_1AB45FFA4();
  v27 = sub_1AB461234();
  v28 = sub_1AB461314();
  v91 = v5;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v92.tv_sec = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1AB030D2C(0xD000000000000019, 0x80000001AB4FF030, &v92.tv_sec);
    v31 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v31, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x1AC59F020](v30, -1, -1);
    MEMORY[0x1AC59F020](v29, -1, -1);
  }

  v32 = v93;
  v33 = v89;
  (*(v93 + 16))(v17, v19, v89);
  sub_1AB460014();
  swift_allocObject();
  v85 = sub_1AB460004();
  v34 = *(v32 + 8);
  v93 = v32 + 8;
  (*&v34)(v19, v33);
  static MonotonicTime.now.getter(&v92);
  v72 = v92;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  tv_sec = v92.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v36 = static BaseObjectGraph.current.getter();
  v37 = v88;
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v92.tv_sec = v36;

  swift_task_localValuePush();
  v38 = sub_1AB01DBA0(*(v36 + 16));
  swift_task_localValuePop();

  if (v38 && (v39 = swift_conformsToProtocol2()) != 0)
  {
    v40 = *(v39 + 8);
    v41 = v39;

    v40(v37, v41);
    sub_1AB0318FC();
    sub_1AB460184();
    v42 = sub_1AB460154();
    v43 = *(v38 + 48);

    os_unfair_lock_lock((v43 + 20));
    v44 = *(v43 + 16);
    os_unfair_lock_unlock((v43 + 20));

    if (v44 == 1)
    {

      sub_1AB460124();
    }

    sub_1AB3858E0(v42);

    v45 = v42;
    sub_1AB460164();
  }

  else
  {
    v45 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  v47 = (v46 + 24);
  *(v46 + 16) = 0;
  v92.tv_sec = v46;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v48 = v91;
  sub_1AB12C208(v74, v83, v86, *&v87);
  v91 = v48;
  if (v48)
  {
    swift_task_localValuePop();
  }

  else
  {
    if (v45)
    {
      v49 = *MEMORY[0x1E6977AC8];
      v87 = v34;
      v51 = v78;
      v50 = v79;
      v52 = v80;
      (*(v79 + 104))(v78, v49, v80);
      sub_1AB460174();
      v53 = v52;
      v37 = v88;
      (*(v50 + 8))(v51, v53);
      v34 = v87;
    }

    v88 = v45;
    if (v38)
    {
      v92.tv_sec = v37;
      StartUpPerformanceEvent.record(checkpoint:)(&v92.tv_sec);
    }

    v54 = v82;
    sub_1AB014AC0(v82, &qword_1EB436640);
    sub_1AB03AB54(v90, v54, type metadata accessor for PageIntentInstrumentation);
    swift_storeEnumTagMultiPayload();
    static MonotonicTime.now.getter(&v92);
    v55 = v92.tv_sec;
    tv_nsec = v92.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      v87 = v92.tv_nsec;
      swift_once();
      tv_nsec = v87;
    }

    v57 = tv_nsec / *&qword_1ED4D1F90 + v55 - (v72.tv_nsec / *&qword_1ED4D1F90 + v72.tv_sec);

    v58 = sub_1AB45FFA4();
    v59 = v84;
    sub_1AB45FFF4();
    LODWORD(v87) = sub_1AB461224();

    v60 = sub_1AB461314();
    v61 = v73;
    if (v60)
    {
      v86 = tv_sec;

      v62 = v75;
      sub_1AB460024();

      v64 = v76;
      v63 = v77;
      if ((*(v76 + 88))(v62, v77) == *MEMORY[0x1E69E93E8])
      {
        v65 = 0;
        v66 = "[Error] Interval already ended";
      }

      else
      {
        (*(v64 + 8))(v62, v63);
        v66 = "selfTime=%f";
        v65 = 1;
      }

      v67 = swift_slowAlloc();
      *v67 = 0;
      *(v67 + 1) = v65;
      *(v67 + 2) = 2048;
      os_unfair_lock_lock(v47);
      v68 = *(v46 + 16);
      os_unfair_lock_unlock(v47);
      *(v67 + 4) = v57 - v68;
      v69 = v84;
      v70 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v58, LOBYTE(v87), v70, "MakeDependency", v66, v67, 0xCu);
      v71 = v67;
      v59 = v69;
      MEMORY[0x1AC59F020](v71, -1, -1);
      v61 = v73;
      tv_sec = v86;
    }

    (*&v34)(v59, v89);
    os_unfair_lock_lock((tv_sec + 24));
    *(tv_sec + 16) = v57 + *(tv_sec + 16);
    os_unfair_lock_unlock((tv_sec + 24));
    sub_1AB0342CC(v90, v61, type metadata accessor for PageIntentInstrumentation);
    swift_task_localValuePop();
  }
}

uint64_t sub_1AB14F7B8(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v92 = *&a4;
  v90 = a3;
  v6 = sub_1AB45FFD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB460134();
  v83 = *(v9 - 8);
  v84 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45FF84();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v73 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v73 - v18;
  v20 = *a1;
  if (*(a1 + 16))
  {
  }

  v73 = v7;
  v74 = v6;
  v78 = v17;
  v88 = v20;
  v89 = v4;
  v22 = *(a1 + 8);
  v23 = qword_1EB434BA8;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1AB45FFC4();
  v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v76 = v25;
  v26 = sub_1AB45FFA4();
  v27 = sub_1AB461234();
  v28 = sub_1AB461314();
  v87 = v22;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v85 = v12;
    v30 = v29;
    v31 = swift_slowAlloc();
    v91.tv_sec = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1AB030D2C(0xD000000000000014, 0x80000001AB4FF240, &v91.tv_sec);
    v32 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v32, "MakeDependency", "object=%s,type=lazy", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1AC59F020](v31, -1, -1);
    v33 = v30;
    v12 = v85;
    MEMORY[0x1AC59F020](v33, -1, -1);
  }

  (*(v12 + 2))(v16, v19, v11);
  sub_1AB460014();
  swift_allocObject();
  v34 = sub_1AB460004();
  v37 = *(v12 + 1);
  v36 = v12 + 8;
  v35 = v37;
  (v37)(v19, v11);
  static MonotonicTime.now.getter(&v91);
  v75 = v91;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v21 = qword_1EB46C208;
  sub_1AB4622E4();
  tv_sec = v91.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v38 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v91.tv_sec = v38;

  swift_task_localValuePush();
  v39 = sub_1AB01DBA0(*(v38 + 16));
  swift_task_localValuePop();

  if (v39)
  {
    v40 = type metadata accessor for PageMetricsPresenter();
    v41 = swift_conformsToProtocol2();
    v86 = 0;
    if (v41 && v40)
    {
      v85 = v35;
      v42 = *(v41 + 8);
      v43 = v41;

      v42(v40, v43);
      sub_1AB0318FC();
      sub_1AB460184();
      v44 = sub_1AB460154();
      v45 = *(v39 + 48);

      os_unfair_lock_lock((v45 + 20));
      v46 = *(v45 + 16);
      os_unfair_lock_unlock((v45 + 20));

      if (v46 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v44);

      sub_1AB460164();
      v86 = v44;

      v35 = v85;
    }
  }

  else
  {
    v86 = 0;
  }

  v80 = v34;
  v85 = v36;
  v77 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  v48 = (v47 + 24);
  *(v47 + 16) = 0;
  v91.tv_sec = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v49 = v89;
  v50 = sub_1AB12C354(v88, v87, v90, *&v92);
  if (v49)
  {
    swift_task_localValuePop();

    sub_1AB057304();
  }

  else
  {
    v21 = v50;
    v89 = 0;
    if (v86)
    {
      v51 = *MEMORY[0x1E6977AC8];
      v53 = v83;
      v52 = v84;
      v54 = *(v83 + 104);
      *&v92 = v47 + 24;
      v55 = v39;
      v56 = v35;
      v57 = v82;
      v54(v82, v51, v84);
      sub_1AB460174();
      v58 = v57;
      v35 = v56;
      v39 = v55;
      v48 = *&v92;
      (*(v53 + 8))(v58, v52);
    }

    if (v39)
    {
      v91.tv_sec = *v21;
      StartUpPerformanceEvent.record(checkpoint:)(&v91.tv_sec);
    }

    sub_1AB057304();
    *a1 = v21;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;

    static MonotonicTime.now.getter(&v91);
    v59 = v91.tv_sec;
    tv_nsec = v91.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      v92 = v91.tv_nsec;
      swift_once();
      tv_nsec = v92;
    }

    v61 = tv_nsec / *&qword_1ED4D1F90 + v59 - (v75.tv_nsec / *&qword_1ED4D1F90 + v75.tv_sec);

    v62 = sub_1AB45FFA4();
    v63 = v78;
    sub_1AB45FFF4();
    LODWORD(v92) = sub_1AB461224();

    if (sub_1AB461314())
    {

      v64 = v81;
      sub_1AB460024();

      v65 = v73;
      v66 = v74;
      if ((*(v73 + 88))(v64, v74) == *MEMORY[0x1E69E93E8])
      {
        v67 = 0;
        v90 = "[Error] Interval already ended";
      }

      else
      {
        (*(v65 + 8))(v64, v66);
        v90 = "selfTime=%f";
        v67 = 1;
      }

      v68 = swift_slowAlloc();
      *v68 = 0;
      *(v68 + 1) = v67;
      *(v68 + 2) = 2048;
      os_unfair_lock_lock(v48);
      v69 = *(v47 + 16);
      os_unfair_lock_unlock(v48);
      *(v68 + 4) = v61 - v69;
      v63 = v78;
      v70 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v62, LOBYTE(v92), v70, "MakeDependency", v90, v68, 0xCu);
      MEMORY[0x1AC59F020](v68, -1, -1);
    }

    (v35)(v63, v77);
    v71 = tv_sec;
    os_unfair_lock_lock(tv_sec + 6);
    *&v71[4]._os_unfair_lock_opaque = v61 + *&v71[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v71 + 6);
    swift_task_localValuePop();

    sub_1AB057304();
  }

  return v21;
}

uint64_t sub_1AB150188@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, os_unfair_lock_s *a4@<X3>, uint64_t a5@<X8>)
{
  v102 = a4;
  v94 = a2;
  v95 = a3;
  v8 = sub_1AB45FFD4();
  v86 = *(v8 - 8);
  v87 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB460134();
  v89 = *(v10 - 8);
  v90 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AB45FF84();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v76 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v76 - v20;
  v91 = a1;
  result = sub_1AB014A58(a1, v99, &qword_1EB436830);
  if (v101)
  {
    v23 = v99[11];
    *(a5 + 160) = v99[10];
    *(a5 + 176) = v23;
    *(a5 + 192) = v100;
    v24 = v99[7];
    *(a5 + 96) = v99[6];
    *(a5 + 112) = v24;
    v25 = v99[9];
    *(a5 + 128) = v99[8];
    *(a5 + 144) = v25;
    v26 = v99[3];
    *(a5 + 32) = v99[2];
    *(a5 + 48) = v26;
    v27 = v99[5];
    *(a5 + 64) = v99[4];
    *(a5 + 80) = v27;
    v28 = v99[1];
    *a5 = v99[0];
    *(a5 + 16) = v28;
  }

  else
  {
    v29 = a5;
    v81 = v16;
    v92 = *(&v99[0] + 1);
    v83 = *&v99[0];
    v93 = v5;
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v30 = sub_1AB45FFC4();
    v31 = __swift_project_value_buffer(v30, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v79 = v31;
    v32 = sub_1AB45FFA4();
    v33 = sub_1AB461234();
    v34 = sub_1AB461314();
    v82 = v12;
    v80 = v29;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v94 = v13;
      v37 = v36;
      v97[0].tv_sec = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_1AB030D2C(0x507363697274654DLL, 0xEF656E696C657069, &v97[0].tv_sec);
      v38 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v32, v33, v38, "MakeDependency", "object=%s,type=lazy", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      v39 = v37;
      v13 = v94;
      MEMORY[0x1AC59F020](v39, -1, -1);
      v40 = v35;
      v12 = v82;
      MEMORY[0x1AC59F020](v40, -1, -1);
    }

    (*(v13 + 16))(v19, v21, v12);
    sub_1AB460014();
    swift_allocObject();
    v84 = sub_1AB460004();
    v41 = *(v13 + 8);
    v94 = v13 + 8;
    v78 = v41;
    v41(v21, v12);
    static MonotonicTime.now.getter(v97);
    v77 = v97[0];
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v97[0].tv_sec;
    type metadata accessor for BaseObjectGraph();
    v43 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v97[0].tv_sec = v43;

    swift_task_localValuePush();
    v44 = sub_1AB01DBA0(*(v43 + 16));
    swift_task_localValuePop();

    if (v44 && (v45 = swift_conformsToProtocol2()) != 0)
    {
      v46 = *(v45 + 8);

      v46();
      sub_1AB0318FC();
      sub_1AB460184();
      v47 = sub_1AB460154();
      v48 = *(v44 + 48);

      os_unfair_lock_lock((v48 + 20));
      LODWORD(v46) = *(v48 + 16);
      os_unfair_lock_unlock((v48 + 20));

      if (v46 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v47);

      sub_1AB460164();
    }

    else
    {
      v47 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
    v49 = swift_allocObject();
    *(v49 + 24) = 0;
    v50 = (v49 + 24);
    *(v49 + 16) = 0;
    v97[0].tv_sec = v49;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
    swift_task_localValuePush();
    v51 = v93;
    sub_1AB12C208(v83, v92, *&v95, v102);
    if (v51)
    {
      swift_task_localValuePop();
    }

    else
    {
      v93 = 0;
      v102 = tv_sec;
      if (v47)
      {
        v52 = v88;
        v53 = v89;
        v54 = v90;
        (*(v89 + 104))(v88, *MEMORY[0x1E6977AC8], v90);
        sub_1AB460174();
        (*(v53 + 8))(v52, v54);
      }

      if (v44)
      {
        v96.tv_sec = &type metadata for MetricsPipeline;
        StartUpPerformanceEvent.record(checkpoint:)(&v96.tv_sec);
      }

      v55 = v91;
      sub_1AB014AC0(v91, &qword_1EB436830);
      sub_1AB0560F8(v97, v55);
      *(v55 + 193) = 1;
      static MonotonicTime.now.getter(&v96);
      v56 = v96.tv_sec;
      tv_nsec = v96.tv_nsec;
      if (qword_1ED4D1F88 != -1)
      {
        v95 = v96.tv_nsec;
        swift_once();
        tv_nsec = v95;
      }

      v58 = tv_nsec / *&qword_1ED4D1F90 + v56 - (v77.tv_nsec / *&qword_1ED4D1F90 + v77.tv_sec);

      v59 = sub_1AB45FFA4();
      v60 = v81;
      sub_1AB45FFF4();
      LODWORD(v95) = sub_1AB461224();

      if (sub_1AB461314())
      {

        v61 = v85;
        sub_1AB460024();

        v63 = v86;
        v62 = v87;
        if ((*(v86 + 88))(v61, v87) == *MEMORY[0x1E69E93E8])
        {
          v64 = 0;
          v91 = "[Error] Interval already ended";
        }

        else
        {
          (*(v63 + 8))(v61, v62);
          v91 = "selfTime=%f";
          v64 = 1;
        }

        v65 = swift_slowAlloc();
        *v65 = 0;
        *(v65 + 1) = v64;
        *(v65 + 2) = 2048;
        os_unfair_lock_lock(v50);
        v66 = *(v49 + 16);
        os_unfair_lock_unlock(v50);
        *(v65 + 4) = v58 - v66;
        v60 = v81;
        v67 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v59, LOBYTE(v95), v67, "MakeDependency", v91, v65, 0xCu);
        MEMORY[0x1AC59F020](v65, -1, -1);
      }

      v78(v60, v82);
      v68 = v102;
      os_unfair_lock_lock(v102 + 6);
      *&v68[4]._os_unfair_lock_opaque = v58 + *&v68[4]._os_unfair_lock_opaque;
      os_unfair_lock_unlock(v68 + 6);
      v69 = v97[11];
      v70 = v80;
      v80[10] = v97[10];
      v70[11] = v69;
      LOBYTE(v70[12].tv_sec) = v98;
      v71 = v97[7];
      v70[6] = v97[6];
      v70[7] = v71;
      v72 = v97[9];
      v70[8] = v97[8];
      v70[9] = v72;
      v73 = v97[3];
      v70[2] = v97[2];
      v70[3] = v73;
      v74 = v97[5];
      v70[4] = v97[4];
      v70[5] = v74;
      v75 = v97[1];
      *v70 = v97[0];
      v70[1] = v75;
      swift_task_localValuePop();
    }
  }

  return result;
}

uint64_t sub_1AB150BCC@<X0>(uint64_t a1@<X0>, double a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v69 = a2;
  v70 = a3;
  v71 = a4;
  v7 = sub_1AB45FFD4();
  v67 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB45FF84();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v58 - v17;
  v68 = a1;
  sub_1AB014A58(a1, v74, &qword_1EB4367F0);
  if (v75)
  {
    return sub_1AB0149B0(v74, v71);
  }

  v58 = v7;
  v63 = v13;
  v76 = v10;
  v20 = *(&v74[0] + 1);
  v65 = *&v74[0];
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v21 = sub_1AB45FFC4();
  v22 = __swift_project_value_buffer(v21, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v61 = v22;
  v23 = sub_1AB45FFA4();
  v24 = sub_1AB461234();
  v25 = sub_1AB461314();
  v64 = v9;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    tv_nsec = v20;
    v28 = v27;
    v73[0].tv_sec = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1AB030D2C(0x50746E756F636341, 0xEF72656469766F72, &v73[0].tv_sec);
    v29 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v23, v24, v29, "MakeDependency", "object=%s,type=lazy", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v30 = v28;
    v5 = v4;
    v20 = tv_nsec;
    MEMORY[0x1AC59F020](v30, -1, -1);
    v31 = v26;
    v9 = v64;
    MEMORY[0x1AC59F020](v31, -1, -1);
  }

  v32 = v76;
  (*(v76 + 16))(v16, v18, v9);
  sub_1AB460014();
  swift_allocObject();
  sub_1AB460004();
  v34 = *(v32 + 8);
  v33 = v32 + 8;
  v60 = v34;
  v34(v18, v9);
  static MonotonicTime.now.getter(v73);
  tv_sec = v73[0].tv_sec;
  tv_nsec = v73[0].tv_nsec;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v35 = v73[0].tv_sec;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436578);
  started = type metadata accessor for StartUpPerformanceEvent();
  v76 = v33;
  if (v36 == started)
  {
    v40 = 0;
  }

  else
  {
    v38 = v5;
    type metadata accessor for BaseObjectGraph();
    v39 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v73[0].tv_sec = v39;

    swift_task_localValuePush();
    v40 = sub_1AB01DBA0(*(v39 + 16));
    swift_task_localValuePop();

    v5 = v38;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  v42 = (v41 + 24);
  *(v41 + 16) = 0;
  v73[0].tv_sec = v41;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  sub_1AB12C208(v65, v20, *&v69, v70);
  if (v5)
  {
    swift_task_localValuePop();
  }

  else
  {
    if (v40)
    {
      v72.tv_sec = v36;
      StartUpPerformanceEvent.record(checkpoint:)(&v72.tv_sec);
    }

    v70 = v40;
    v43 = v68;
    sub_1AB014AC0(v68, &qword_1EB4367F0);
    sub_1AB01494C(v73, v43);
    *(v43 + 40) = 1;
    static MonotonicTime.now.getter(&v72);
    v44 = v72.tv_sec;
    v45 = v72.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      v69 = v72.tv_nsec;
      swift_once();
      v45 = v69;
    }

    v46 = v45 / *&qword_1ED4D1F90 + v44 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

    v47 = sub_1AB45FFA4();
    v48 = v63;
    sub_1AB45FFF4();
    LODWORD(v69) = sub_1AB461224();

    if (sub_1AB461314())
    {
      tv_nsec = v20;

      v49 = v66;
      sub_1AB460024();

      v50 = v67;
      v51 = v58;
      v52 = (*(v67 + 88))(v49, v58) == *MEMORY[0x1E69E93E8];
      v65 = 0;
      if (v52)
      {
        v54 = 0;
        v53 = "[Error] Interval already ended";
      }

      else
      {
        (*(v50 + 8))(v49, v51);
        v53 = "selfTime=%f";
        v54 = 1;
      }

      v55 = swift_slowAlloc();
      *v55 = 0;
      *(v55 + 1) = v54;
      *(v55 + 2) = 2048;
      os_unfair_lock_lock(v42);
      v56 = *(v41 + 16);
      os_unfair_lock_unlock(v42);
      *(v55 + 4) = v46 - v56;
      v48 = v63;
      v57 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v47, LOBYTE(v69), v57, "MakeDependency", v53, v55, 0xCu);
      MEMORY[0x1AC59F020](v55, -1, -1);
    }

    v60(v48, v64);
    os_unfair_lock_lock((v35 + 24));
    *(v35 + 16) = v46 + *(v35 + 16);
    os_unfair_lock_unlock((v35 + 24));
    sub_1AB0149B0(&v73[0].tv_sec, v71);
    swift_task_localValuePop();
  }
}

uint64_t sub_1AB151428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v90 = a3;
  v89 = a2;
  v95 = a4;
  v6 = sub_1AB45FFD4();
  v82 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1AB460134();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB45FF84();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v74 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v74 - v17;
  v86 = a1;
  result = sub_1AB014A58(a1, v93, &qword_1EB436798);
  if (v94)
  {
    v20 = v93[5];
    v21 = v95;
    v95[4] = v93[4];
    v21[5] = v20;
    v21[6] = v93[6];
    v22 = v93[1];
    *v21 = v93[0];
    v21[1] = v22;
    v23 = v93[3];
    v21[2] = v93[2];
    v21[3] = v23;
  }

  else
  {
    v78 = v13;
    v88 = v4;
    v87 = *(&v93[0] + 1);
    v79 = *&v93[0];
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v24 = sub_1AB45FFC4();
    v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v76 = v25;
    v26 = sub_1AB45FFA4();
    v27 = sub_1AB461234();
    v28 = sub_1AB461314();
    v29 = v10;
    v74 = v6;
    if (v28)
    {
      v30 = swift_slowAlloc();
      v31 = v9;
      v32 = swift_slowAlloc();
      v92[0].tv_sec = v32;
      *v30 = 136315138;
      *(v30 + 4) = sub_1AB030D2C(0xD000000000000013, 0x80000001AB4FF220, &v92[0].tv_sec);
      v33 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v33, "MakeDependency", "object=%s,type=lazy", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      v34 = v32;
      v9 = v31;
      v29 = v10;
      MEMORY[0x1AC59F020](v34, -1, -1);
      MEMORY[0x1AC59F020](v30, -1, -1);
    }

    (*(v29 + 16))(v16, v18, v9);
    sub_1AB460014();
    swift_allocObject();
    v80 = sub_1AB460004();
    v37 = *(v29 + 8);
    v36 = v29 + 8;
    v35 = v37;
    v77 = v9;
    (v37)(v18, v9);
    static MonotonicTime.now.getter(v92);
    v75 = v92[0];
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v92[0].tv_sec;
    type metadata accessor for BaseObjectGraph();
    v39 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v92[0].tv_sec = v39;

    swift_task_localValuePush();
    v40 = sub_1AB01DBA0(*(v39 + 16));
    swift_task_localValuePop();

    if (v40 && (v41 = swift_conformsToProtocol2()) != 0)
    {
      v42 = *(v41 + 8);

      v42();
      sub_1AB0318FC();
      sub_1AB460184();
      v43 = sub_1AB460154();
      v44 = *(v40 + 48);

      os_unfair_lock_lock((v44 + 20));
      v45 = *(v44 + 16);
      os_unfair_lock_unlock((v44 + 20));

      if (v45 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v43);

      sub_1AB460164();
    }

    else
    {
      v43 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
    v46 = swift_allocObject();
    *(v46 + 24) = 0;
    v47 = (v46 + 24);
    *(v46 + 16) = 0;
    v92[0].tv_sec = v46;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
    swift_task_localValuePush();
    v48 = v88;
    sub_1AB12C208(v79, v87, v89, v90);
    if (v48 == 0.0)
    {
      v79 = v35;
      v89 = tv_sec;
      v49 = v43;
      if (v43)
      {
        v50 = v36;
        v51 = v84;
        v52 = v83;
        v53 = v85;
        (*(v84 + 104))(v83, *MEMORY[0x1E6977AC8], v85);
        sub_1AB460174();
        (*(v51 + 8))(v52, v53);
        v36 = v50;
      }

      v54 = v49;
      if (v40)
      {
        v91.tv_sec = &type metadata for SentryConfiguration;
        StartUpPerformanceEvent.record(checkpoint:)(&v91.tv_sec);
      }

      v90 = v36;
      v55 = v86;
      sub_1AB014AC0(v86, &qword_1EB436798);
      sub_1AB157F64(v92, v55);
      *(v55 + 112) = 1;
      static MonotonicTime.now.getter(&v91);
      v56 = v91.tv_sec;
      tv_nsec = v91.tv_nsec;
      v58 = v89;
      v86 = v54;
      if (qword_1ED4D1F88 != -1)
      {
        v88 = v91.tv_nsec;
        swift_once();
        tv_nsec = v88;
      }

      v59 = tv_nsec / *&qword_1ED4D1F90 + v56 - (v75.tv_nsec / *&qword_1ED4D1F90 + v75.tv_sec);

      v60 = sub_1AB45FFA4();
      v61 = v78;
      sub_1AB45FFF4();
      LODWORD(v85) = sub_1AB461224();

      if (sub_1AB461314())
      {
        v88 = 0.0;

        v62 = v81;
        sub_1AB460024();

        v63 = v82;
        v64 = v74;
        if ((*(v82 + 88))(v62, v74) == *MEMORY[0x1E69E93E8])
        {
          v65 = 0;
          v66 = "[Error] Interval already ended";
        }

        else
        {
          (*(v63 + 8))(v62, v64);
          v66 = "selfTime=%f";
          v65 = 1;
        }

        v67 = swift_slowAlloc();
        *v67 = 0;
        *(v67 + 1) = v65;
        *(v67 + 2) = 2048;
        os_unfair_lock_lock(v47);
        v68 = *(v46 + 16);
        os_unfair_lock_unlock(v47);
        *(v67 + 4) = v59 - v68;
        v61 = v78;
        v69 = sub_1AB45FF64();
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v60, v85, v69, "MakeDependency", v66, v67, 0xCu);
        MEMORY[0x1AC59F020](v67, -1, -1);
      }

      (v79)(v61, v77);
      os_unfair_lock_lock((v58 + 24));
      *(v58 + 16) = v59 + *(v58 + 16);
      os_unfair_lock_unlock((v58 + 24));
      v70 = v92[5];
      v71 = v95;
      v95[4] = v92[4];
      v71[5] = v70;
      v71[6] = v92[6];
      v72 = v92[1];
      *v71 = v92[0];
      v71[1] = v72;
      v73 = v92[3];
      v71[2] = v92[2];
      v71[3] = v73;
      swift_task_localValuePop();
    }

    else
    {
      swift_task_localValuePop();
    }
  }

  return result;
}

uint64_t sub_1AB151F38@<X0>(uint64_t a1@<X0>, double a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v69 = a2;
  v70 = a3;
  v71 = a4;
  v7 = sub_1AB45FFD4();
  v67 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB45FF84();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v58 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v58 - v17;
  v68 = a1;
  sub_1AB014A58(a1, v74, &qword_1EB436770);
  if (v75)
  {
    return sub_1AB0149B0(v74, v71);
  }

  v58 = v7;
  v63 = v13;
  v76 = v10;
  v20 = *(&v74[0] + 1);
  v65 = *&v74[0];
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v21 = sub_1AB45FFC4();
  v22 = __swift_project_value_buffer(v21, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v61 = v22;
  v23 = sub_1AB45FFA4();
  v24 = sub_1AB461234();
  v25 = sub_1AB461314();
  v64 = v9;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    tv_nsec = v20;
    v28 = v27;
    v73[0].tv_sec = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1AB030D2C(0x6143746E65746E49, 0xEB00000000656863, &v73[0].tv_sec);
    v29 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v23, v24, v29, "MakeDependency", "object=%s,type=lazy", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v30 = v28;
    v5 = v4;
    v20 = tv_nsec;
    MEMORY[0x1AC59F020](v30, -1, -1);
    v31 = v26;
    v9 = v64;
    MEMORY[0x1AC59F020](v31, -1, -1);
  }

  v32 = v76;
  (*(v76 + 16))(v16, v18, v9);
  sub_1AB460014();
  swift_allocObject();
  sub_1AB460004();
  v34 = *(v32 + 8);
  v33 = v32 + 8;
  v60 = v34;
  v34(v18, v9);
  static MonotonicTime.now.getter(v73);
  tv_sec = v73[0].tv_sec;
  tv_nsec = v73[0].tv_nsec;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v35 = v73[0].tv_sec;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436748);
  started = type metadata accessor for StartUpPerformanceEvent();
  v76 = v33;
  if (v36 == started)
  {
    v40 = 0;
  }

  else
  {
    v38 = v5;
    type metadata accessor for BaseObjectGraph();
    v39 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v73[0].tv_sec = v39;

    swift_task_localValuePush();
    v40 = sub_1AB01DBA0(*(v39 + 16));
    swift_task_localValuePop();

    v5 = v38;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  v42 = (v41 + 24);
  *(v41 + 16) = 0;
  v73[0].tv_sec = v41;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  sub_1AB12C208(v65, v20, *&v69, v70);
  if (v5)
  {
    swift_task_localValuePop();
  }

  else
  {
    if (v40)
    {
      v72.tv_sec = v36;
      StartUpPerformanceEvent.record(checkpoint:)(&v72.tv_sec);
    }

    v70 = v40;
    v43 = v68;
    sub_1AB014AC0(v68, &qword_1EB436770);
    sub_1AB01494C(v73, v43);
    *(v43 + 40) = 1;
    static MonotonicTime.now.getter(&v72);
    v44 = v72.tv_sec;
    v45 = v72.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      v69 = v72.tv_nsec;
      swift_once();
      v45 = v69;
    }

    v46 = v45 / *&qword_1ED4D1F90 + v44 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

    v47 = sub_1AB45FFA4();
    v48 = v63;
    sub_1AB45FFF4();
    LODWORD(v69) = sub_1AB461224();

    if (sub_1AB461314())
    {
      tv_nsec = v20;

      v49 = v66;
      sub_1AB460024();

      v50 = v67;
      v51 = v58;
      v52 = (*(v67 + 88))(v49, v58) == *MEMORY[0x1E69E93E8];
      v65 = 0;
      if (v52)
      {
        v54 = 0;
        v53 = "[Error] Interval already ended";
      }

      else
      {
        (*(v50 + 8))(v49, v51);
        v53 = "selfTime=%f";
        v54 = 1;
      }

      v55 = swift_slowAlloc();
      *v55 = 0;
      *(v55 + 1) = v54;
      *(v55 + 2) = 2048;
      os_unfair_lock_lock(v42);
      v56 = *(v41 + 16);
      os_unfair_lock_unlock(v42);
      *(v55 + 4) = v46 - v56;
      v48 = v63;
      v57 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v47, LOBYTE(v69), v57, "MakeDependency", v53, v55, 0xCu);
      MEMORY[0x1AC59F020](v55, -1, -1);
    }

    v60(v48, v64);
    os_unfair_lock_lock((v35 + 24));
    *(v35 + 16) = v46 + *(v35 + 16);
    os_unfair_lock_unlock((v35 + 24));
    sub_1AB0149B0(&v73[0].tv_sec, v71);
    swift_task_localValuePop();
  }
}

uint64_t sub_1AB152790@<X0>(uint64_t a1@<X0>, double a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v69 = a2;
  v70 = a3;
  v71 = a4;
  v7 = sub_1AB45FFD4();
  v67 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB45FF84();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - v17;
  v68 = a1;
  sub_1AB014A58(a1, v74, &qword_1EB436688);
  if (v75)
  {
    return sub_1AB0149B0(v74, v71);
  }

  v58 = v7;
  v63 = v12;
  v76 = v10;
  v20 = *(&v74[0] + 1);
  v65 = *&v74[0];
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v21 = sub_1AB45FFC4();
  v22 = __swift_project_value_buffer(v21, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v61 = v22;
  v23 = sub_1AB45FFA4();
  v24 = sub_1AB461234();
  v25 = sub_1AB461314();
  v64 = v9;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    tv_nsec = v20;
    v28 = v27;
    v73[0].tv_sec = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1AB030D2C(0xD000000000000010, 0x80000001AB4FF070, &v73[0].tv_sec);
    v29 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v23, v24, v29, "MakeDependency", "object=%s,type=lazy", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v30 = v28;
    v5 = v4;
    v20 = tv_nsec;
    MEMORY[0x1AC59F020](v30, -1, -1);
    v31 = v26;
    v9 = v64;
    MEMORY[0x1AC59F020](v31, -1, -1);
  }

  v32 = v76;
  (*(v76 + 16))(v15, v18, v9);
  sub_1AB460014();
  swift_allocObject();
  sub_1AB460004();
  v34 = *(v32 + 8);
  v33 = v32 + 8;
  v60 = v34;
  v34(v18, v9);
  static MonotonicTime.now.getter(v73);
  tv_sec = v73[0].tv_sec;
  tv_nsec = v73[0].tv_nsec;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v35 = v73[0].tv_sec;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436660);
  started = type metadata accessor for StartUpPerformanceEvent();
  v76 = v33;
  if (v36 == started)
  {
    v40 = 0;
  }

  else
  {
    v38 = v5;
    type metadata accessor for BaseObjectGraph();
    v39 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v73[0].tv_sec = v39;

    swift_task_localValuePush();
    v40 = sub_1AB01DBA0(*(v39 + 16));
    swift_task_localValuePop();

    v5 = v38;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  v42 = (v41 + 24);
  *(v41 + 16) = 0;
  v73[0].tv_sec = v41;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  sub_1AB12C208(v65, v20, *&v69, v70);
  if (v5)
  {
    swift_task_localValuePop();
  }

  else
  {
    if (v40)
    {
      v72.tv_sec = v36;
      StartUpPerformanceEvent.record(checkpoint:)(&v72.tv_sec);
    }

    v70 = v40;
    v43 = v68;
    sub_1AB014AC0(v68, &qword_1EB436688);
    sub_1AB01494C(v73, v43);
    *(v43 + 40) = 1;
    static MonotonicTime.now.getter(&v72);
    v44 = v72.tv_sec;
    v45 = v72.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      v69 = v72.tv_nsec;
      swift_once();
      v45 = v69;
    }

    v46 = v45 / *&qword_1ED4D1F90 + v44 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

    v47 = sub_1AB45FFA4();
    v48 = v63;
    sub_1AB45FFF4();
    LODWORD(v69) = sub_1AB461224();

    if (sub_1AB461314())
    {
      tv_nsec = v20;

      v49 = v66;
      sub_1AB460024();

      v50 = v67;
      v51 = v58;
      v52 = (*(v67 + 88))(v49, v58) == *MEMORY[0x1E69E93E8];
      v65 = 0;
      if (v52)
      {
        v54 = 0;
        v53 = "[Error] Interval already ended";
      }

      else
      {
        (*(v50 + 8))(v49, v51);
        v53 = "selfTime=%f";
        v54 = 1;
      }

      v55 = swift_slowAlloc();
      *v55 = 0;
      *(v55 + 1) = v54;
      *(v55 + 2) = 2048;
      os_unfair_lock_lock(v42);
      v56 = *(v41 + 16);
      os_unfair_lock_unlock(v42);
      *(v55 + 4) = v46 - v56;
      v48 = v63;
      v57 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v47, LOBYTE(v69), v57, "MakeDependency", v53, v55, 0xCu);
      MEMORY[0x1AC59F020](v55, -1, -1);
    }

    v60(v48, v64);
    os_unfair_lock_lock((v35 + 24));
    *(v35 + 16) = v46 + *(v35 + 16);
    os_unfair_lock_unlock((v35 + 24));
    sub_1AB0149B0(&v73[0].tv_sec, v71);
    swift_task_localValuePop();
  }
}

uint64_t sub_1AB152FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v89 = a3;
  v88 = a2;
  v94 = a4;
  v6 = sub_1AB45FFD4();
  v80 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1AB460134();
  isa = v83[-1].isa;
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB45FF84();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v73 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v73 - v17;
  v85 = a1;
  result = sub_1AB014A58(a1, v92, &qword_1EB436728);
  if (v93)
  {
    v20 = v92[3];
    v21 = v94;
    v94[2] = v92[2];
    v21[3] = v20;
    v21[4] = v92[4];
    v22 = v92[1];
    *v21 = v92[0];
    v21[1] = v22;
  }

  else
  {
    v77 = v12;
    v87 = v4;
    v86 = *(&v92[0] + 1);
    v78 = *&v92[0];
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v23 = sub_1AB45FFC4();
    v24 = __swift_project_value_buffer(v23, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v75 = v24;
    v25 = sub_1AB45FFA4();
    v26 = sub_1AB461234();
    v27 = sub_1AB461314();
    v73 = v6;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = v10;
      v30 = v9;
      v31 = swift_slowAlloc();
      v91[0].tv_sec = v31;
      *v28 = 136315138;
      *(v28 + 4) = sub_1AB030D2C(0x72756769666E6F43, 0xED00006E6F697461, &v91[0].tv_sec);
      v32 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v25, v26, v32, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      v33 = v31;
      v9 = v30;
      v10 = v29;
      MEMORY[0x1AC59F020](v33, -1, -1);
      MEMORY[0x1AC59F020](v28, -1, -1);
    }

    (*(v10 + 16))(v15, v18, v9);
    sub_1AB460014();
    swift_allocObject();
    v34 = sub_1AB460004();
    v37 = *(v10 + 8);
    v36 = v10 + 8;
    v35 = v37;
    v76 = v9;
    (v37)(v18, v9);
    static MonotonicTime.now.getter(v91);
    v74 = v91[0];
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v91[0].tv_sec;
    type metadata accessor for BaseObjectGraph();
    v39 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v91[0].tv_sec = v39;

    swift_task_localValuePush();
    v40 = sub_1AB01DBA0(*(v39 + 16));
    swift_task_localValuePop();

    if (v40 && (v41 = swift_conformsToProtocol2()) != 0)
    {
      v42 = *(v41 + 8);

      v42();
      sub_1AB0318FC();
      sub_1AB460184();
      v43 = sub_1AB460154();
      v44 = *(v40 + 48);

      os_unfair_lock_lock((v44 + 20));
      v45 = *(v44 + 16);
      os_unfair_lock_unlock((v44 + 20));

      if (v45 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v43);

      sub_1AB460164();
      v84 = v43;
    }

    else
    {
      v84 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
    v46 = swift_allocObject();
    *(v46 + 24) = 0;
    v47 = (v46 + 24);
    *(v46 + 16) = 0;
    v91[0].tv_sec = v46;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
    swift_task_localValuePush();
    v48 = v87;
    sub_1AB12C208(v78, v86, v88, v89);
    if (v48 == 0.0)
    {
      v78 = v35;
      v88 = tv_sec;
      if (v84)
      {
        v49 = *MEMORY[0x1E6977AC8];
        v89 = v34;
        v50 = isa;
        v51 = v81;
        v52 = v83;
        (*(isa + 13))(v81, v49, v83);
        sub_1AB460174();
        (*(v50 + 1))(v51, v52);
      }

      if (v40)
      {
        v90.tv_sec = &type metadata for JetPackAssetSession.Configuration;
        StartUpPerformanceEvent.record(checkpoint:)(&v90.tv_sec);
      }

      v89 = v36;
      v53 = v85;
      sub_1AB014AC0(v85, &qword_1EB436728);
      sub_1AB0261D0(v91, v53);
      *(v53 + 80) = 1;
      static MonotonicTime.now.getter(&v90);
      v54 = v90.tv_sec;
      tv_nsec = v90.tv_nsec;
      v56 = v88;
      if (qword_1ED4D1F88 != -1)
      {
        v87 = v90.tv_nsec;
        swift_once();
        tv_nsec = v87;
      }

      v57 = tv_nsec / *&qword_1ED4D1F90 + v54 - (v74.tv_nsec / *&qword_1ED4D1F90 + v74.tv_sec);

      v58 = sub_1AB45FFA4();
      v59 = v77;
      sub_1AB45FFF4();
      LODWORD(v85) = sub_1AB461224();

      if (sub_1AB461314())
      {
        v83 = v58;
        v87 = 0.0;

        v60 = v79;
        sub_1AB460024();

        v61 = v80;
        v62 = v73;
        if ((*(v80 + 88))(v60, v73) == *MEMORY[0x1E69E93E8])
        {
          v63 = 0;
          v64 = "[Error] Interval already ended";
        }

        else
        {
          (*(v61 + 8))(v60, v62);
          v64 = "selfTime=%f";
          v63 = 1;
        }

        v65 = swift_slowAlloc();
        *v65 = 0;
        *(v65 + 1) = v63;
        *(v65 + 2) = 2048;
        os_unfair_lock_lock(v47);
        v66 = *(v46 + 16);
        os_unfair_lock_unlock(v47);
        *(v65 + 4) = v57 - v66;
        v59 = v77;
        v67 = sub_1AB45FF64();
        v68 = v83;
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v83, v85, v67, "MakeDependency", v64, v65, 0xCu);
        v69 = v65;
        v58 = v68;
        MEMORY[0x1AC59F020](v69, -1, -1);
      }

      (v78)(v59, v76);
      os_unfair_lock_lock((v56 + 24));
      *(v56 + 16) = v57 + *(v56 + 16);
      os_unfair_lock_unlock((v56 + 24));
      v70 = v91[3];
      v71 = v94;
      v94[2] = v91[2];
      v71[3] = v70;
      v71[4] = v91[4];
      v72 = v91[1];
      *v71 = v91[0];
      v71[1] = v72;
      swift_task_localValuePop();
    }

    else
    {
      swift_task_localValuePop();
    }
  }

  return result;
}

uint64_t sub_1AB153AD0@<X0>(uint64_t a1@<X0>, double a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v69 = a2;
  v70 = a3;
  v71 = a4;
  v7 = sub_1AB45FFD4();
  v67 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB45FF84();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v58 - v17;
  v68 = a1;
  sub_1AB014A58(a1, v74, &qword_1EB436740);
  if (v75)
  {
    return sub_1AB0149B0(v74, v71);
  }

  v58 = v7;
  v63 = v12;
  v76 = v10;
  v20 = *(&v74[0] + 1);
  v65 = *&v74[0];
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v21 = sub_1AB45FFC4();
  v22 = __swift_project_value_buffer(v21, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v61 = v22;
  v23 = sub_1AB45FFA4();
  v24 = sub_1AB461234();
  v25 = sub_1AB461314();
  v64 = v9;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    tv_nsec = v20;
    v28 = v27;
    v73[0].tv_sec = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1AB030D2C(0xD000000000000011, 0x80000001AB4FF200, &v73[0].tv_sec);
    v29 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v23, v24, v29, "MakeDependency", "object=%s,type=lazy", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v30 = v28;
    v5 = v4;
    v20 = tv_nsec;
    MEMORY[0x1AC59F020](v30, -1, -1);
    v31 = v26;
    v9 = v64;
    MEMORY[0x1AC59F020](v31, -1, -1);
  }

  v32 = v76;
  (*(v76 + 16))(v15, v18, v9);
  sub_1AB460014();
  swift_allocObject();
  sub_1AB460004();
  v34 = *(v32 + 8);
  v33 = v32 + 8;
  v60 = v34;
  v34(v18, v9);
  static MonotonicTime.now.getter(v73);
  tv_sec = v73[0].tv_sec;
  tv_nsec = v73[0].tv_nsec;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v35 = v73[0].tv_sec;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436730);
  started = type metadata accessor for StartUpPerformanceEvent();
  v76 = v33;
  if (v36 == started)
  {
    v40 = 0;
  }

  else
  {
    v38 = v5;
    type metadata accessor for BaseObjectGraph();
    v39 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v73[0].tv_sec = v39;

    swift_task_localValuePush();
    v40 = sub_1AB01DBA0(*(v39 + 16));
    swift_task_localValuePop();

    v5 = v38;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  v42 = (v41 + 24);
  *(v41 + 16) = 0;
  v73[0].tv_sec = v41;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  sub_1AB12C208(v65, v20, *&v69, v70);
  if (v5)
  {
    swift_task_localValuePop();
  }

  else
  {
    if (v40)
    {
      v72.tv_sec = v36;
      StartUpPerformanceEvent.record(checkpoint:)(&v72.tv_sec);
    }

    v70 = v40;
    v43 = v68;
    sub_1AB014AC0(v68, &qword_1EB436740);
    sub_1AB01494C(v73, v43);
    *(v43 + 40) = 1;
    static MonotonicTime.now.getter(&v72);
    v44 = v72.tv_sec;
    v45 = v72.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      v69 = v72.tv_nsec;
      swift_once();
      v45 = v69;
    }

    v46 = v45 / *&qword_1ED4D1F90 + v44 - (tv_nsec / *&qword_1ED4D1F90 + tv_sec);

    v47 = sub_1AB45FFA4();
    v48 = v63;
    sub_1AB45FFF4();
    LODWORD(v69) = sub_1AB461224();

    if (sub_1AB461314())
    {
      tv_nsec = v20;

      v49 = v66;
      sub_1AB460024();

      v50 = v67;
      v51 = v58;
      v52 = (*(v67 + 88))(v49, v58) == *MEMORY[0x1E69E93E8];
      v65 = 0;
      if (v52)
      {
        v54 = 0;
        v53 = "[Error] Interval already ended";
      }

      else
      {
        (*(v50 + 8))(v49, v51);
        v53 = "selfTime=%f";
        v54 = 1;
      }

      v55 = swift_slowAlloc();
      *v55 = 0;
      *(v55 + 1) = v54;
      *(v55 + 2) = 2048;
      os_unfair_lock_lock(v42);
      v56 = *(v41 + 16);
      os_unfair_lock_unlock(v42);
      *(v55 + 4) = v46 - v56;
      v48 = v63;
      v57 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v47, LOBYTE(v69), v57, "MakeDependency", v53, v55, 0xCu);
      MEMORY[0x1AC59F020](v55, -1, -1);
    }

    v60(v48, v64);
    os_unfair_lock_lock((v35 + 24));
    *(v35 + 16) = v46 + *(v35 + 16);
    os_unfair_lock_unlock((v35 + 24));
    sub_1AB0149B0(&v73[0].tv_sec, v71);
    swift_task_localValuePop();
  }
}

uint64_t sub_1AB154324(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v92 = *&a4;
  v90 = a3;
  v6 = sub_1AB45FFD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB460134();
  v83 = *(v9 - 8);
  v84 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45FF84();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v73 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v73 - v18;
  v20 = *a1;
  if (*(a1 + 16))
  {
  }

  v73 = v7;
  v74 = v6;
  v78 = v17;
  v88 = v20;
  v89 = v4;
  v22 = *(a1 + 8);
  v23 = qword_1EB434BA8;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1AB45FFC4();
  v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v76 = v25;
  v26 = sub_1AB45FFA4();
  v27 = sub_1AB461234();
  v28 = sub_1AB461314();
  v87 = v22;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v85 = v12;
    v30 = v29;
    v31 = swift_slowAlloc();
    v91.tv_sec = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1AB030D2C(0xD000000000000013, 0x80000001AB4FF1E0, &v91.tv_sec);
    v32 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v32, "MakeDependency", "object=%s,type=lazy", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1AC59F020](v31, -1, -1);
    v33 = v30;
    v12 = v85;
    MEMORY[0x1AC59F020](v33, -1, -1);
  }

  (*(v12 + 2))(v15, v19, v11);
  sub_1AB460014();
  swift_allocObject();
  v34 = sub_1AB460004();
  v37 = *(v12 + 1);
  v36 = v12 + 8;
  v35 = v37;
  (v37)(v19, v11);
  static MonotonicTime.now.getter(&v91);
  v75 = v91;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v21 = qword_1EB46C208;
  sub_1AB4622E4();
  tv_sec = v91.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v38 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v91.tv_sec = v38;

  swift_task_localValuePush();
  v39 = sub_1AB01DBA0(*(v38 + 16));
  swift_task_localValuePop();

  if (v39)
  {
    v40 = type metadata accessor for JetPackAssetSession();
    v41 = swift_conformsToProtocol2();
    v86 = 0;
    if (v41 && v40)
    {
      v85 = v35;
      v42 = *(v41 + 8);
      v43 = v41;

      v42(v40, v43);
      sub_1AB0318FC();
      sub_1AB460184();
      v44 = sub_1AB460154();
      v45 = *(v39 + 48);

      os_unfair_lock_lock((v45 + 20));
      v46 = *(v45 + 16);
      os_unfair_lock_unlock((v45 + 20));

      if (v46 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v44);

      sub_1AB460164();
      v86 = v44;

      v35 = v85;
    }
  }

  else
  {
    v86 = 0;
  }

  v80 = v34;
  v85 = v36;
  v77 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  v48 = (v47 + 24);
  *(v47 + 16) = 0;
  v91.tv_sec = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v49 = v89;
  v50 = sub_1AB12C354(v88, v87, v90, *&v92);
  if (v49)
  {
    swift_task_localValuePop();

    sub_1AB057304();
  }

  else
  {
    v21 = v50;
    v89 = 0;
    if (v86)
    {
      v51 = *MEMORY[0x1E6977AC8];
      v53 = v83;
      v52 = v84;
      v54 = *(v83 + 104);
      *&v92 = v47 + 24;
      v55 = v39;
      v56 = v35;
      v57 = v82;
      v54(v82, v51, v84);
      sub_1AB460174();
      v58 = v57;
      v35 = v56;
      v39 = v55;
      v48 = *&v92;
      (*(v53 + 8))(v58, v52);
    }

    if (v39)
    {
      v91.tv_sec = *v21;
      StartUpPerformanceEvent.record(checkpoint:)(&v91.tv_sec);
    }

    sub_1AB057304();
    *a1 = v21;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;

    static MonotonicTime.now.getter(&v91);
    v59 = v91.tv_sec;
    tv_nsec = v91.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      v92 = v91.tv_nsec;
      swift_once();
      tv_nsec = v92;
    }

    v61 = tv_nsec / *&qword_1ED4D1F90 + v59 - (v75.tv_nsec / *&qword_1ED4D1F90 + v75.tv_sec);

    v62 = sub_1AB45FFA4();
    v63 = v78;
    sub_1AB45FFF4();
    LODWORD(v92) = sub_1AB461224();

    if (sub_1AB461314())
    {

      v64 = v81;
      sub_1AB460024();

      v65 = v73;
      v66 = v74;
      if ((*(v73 + 88))(v64, v74) == *MEMORY[0x1E69E93E8])
      {
        v67 = 0;
        v90 = "[Error] Interval already ended";
      }

      else
      {
        (*(v65 + 8))(v64, v66);
        v90 = "selfTime=%f";
        v67 = 1;
      }

      v68 = swift_slowAlloc();
      *v68 = 0;
      *(v68 + 1) = v67;
      *(v68 + 2) = 2048;
      os_unfair_lock_lock(v48);
      v69 = *(v47 + 16);
      os_unfair_lock_unlock(v48);
      *(v68 + 4) = v61 - v69;
      v63 = v78;
      v70 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v62, LOBYTE(v92), v70, "MakeDependency", v90, v68, 0xCu);
      MEMORY[0x1AC59F020](v68, -1, -1);
    }

    (v35)(v63, v77);
    v71 = tv_sec;
    os_unfair_lock_lock(tv_sec + 6);
    *&v71[4]._os_unfair_lock_opaque = v61 + *&v71[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v71 + 6);
    swift_task_localValuePop();

    sub_1AB057304();
  }

  return v21;
}

uint64_t sub_1AB154CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, uint64_t a5@<X8>)
{
  v86 = a3;
  v87 = a4;
  v85 = a2;
  v8 = sub_1AB45FFD4();
  v76 = *(v8 - 8);
  v77 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AB460134();
  v79 = *(v10 - 8);
  v80 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for JetPackAsset(0);
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1AB45FF84();
  v93 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v84 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v72 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v72 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366E8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v72 - v21;
  v82 = a1;
  sub_1AB014A58(a1, &v72 - v21, &qword_1EB4366E8);
  v81 = v20;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1AB0342CC(v22, a5, type metadata accessor for JetPackAsset);
  }

  v73 = a5;
  v24 = *(v22 + 1);
  v74 = *v22;
  v83 = v24;
  if (qword_1EB434BA8 != -1)
  {
    swift_once();
  }

  v25 = sub_1AB45FFC4();
  __swift_project_value_buffer(v25, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v26 = sub_1AB45FFA4();
  v27 = sub_1AB461234();
  v28 = sub_1AB461314();
  v91 = v5;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v92.tv_sec = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1AB030D2C(0x416B63615074654ALL, 0xEC00000074657373, &v92.tv_sec);
    v31 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v31, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x1AC59F020](v30, -1, -1);
    MEMORY[0x1AC59F020](v29, -1, -1);
  }

  v32 = v93;
  v33 = v89;
  (*(v93 + 16))(v16, v19, v89);
  sub_1AB460014();
  swift_allocObject();
  v85 = sub_1AB460004();
  v34 = *(v32 + 8);
  v93 = v32 + 8;
  (*&v34)(v19, v33);
  static MonotonicTime.now.getter(&v92);
  v72 = v92;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  tv_sec = v92.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v36 = static BaseObjectGraph.current.getter();
  v37 = v88;
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v92.tv_sec = v36;

  swift_task_localValuePush();
  v38 = sub_1AB01DBA0(*(v36 + 16));
  swift_task_localValuePop();

  if (v38 && (v39 = swift_conformsToProtocol2()) != 0)
  {
    v40 = *(v39 + 8);
    v41 = v39;

    v40(v37, v41);
    sub_1AB0318FC();
    sub_1AB460184();
    v42 = sub_1AB460154();
    v43 = *(v38 + 48);

    os_unfair_lock_lock((v43 + 20));
    v44 = *(v43 + 16);
    os_unfair_lock_unlock((v43 + 20));

    if (v44 == 1)
    {

      sub_1AB460124();
    }

    sub_1AB3858E0(v42);

    v45 = v42;
    sub_1AB460164();
  }

  else
  {
    v45 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  v47 = (v46 + 24);
  *(v46 + 16) = 0;
  v92.tv_sec = v46;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v48 = v91;
  sub_1AB12C208(v74, v83, v86, *&v87);
  v91 = v48;
  if (v48)
  {
    swift_task_localValuePop();
  }

  else
  {
    if (v45)
    {
      v49 = *MEMORY[0x1E6977AC8];
      v87 = v34;
      v51 = v78;
      v50 = v79;
      v52 = v80;
      (*(v79 + 104))(v78, v49, v80);
      sub_1AB460174();
      v53 = v52;
      v37 = v88;
      (*(v50 + 8))(v51, v53);
      v34 = v87;
    }

    v88 = v45;
    if (v38)
    {
      v92.tv_sec = v37;
      StartUpPerformanceEvent.record(checkpoint:)(&v92.tv_sec);
    }

    v54 = v82;
    sub_1AB014AC0(v82, &qword_1EB4366E8);
    sub_1AB03AB54(v90, v54, type metadata accessor for JetPackAsset);
    swift_storeEnumTagMultiPayload();
    static MonotonicTime.now.getter(&v92);
    v55 = v92.tv_sec;
    tv_nsec = v92.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      v87 = v92.tv_nsec;
      swift_once();
      tv_nsec = v87;
    }

    v57 = tv_nsec / *&qword_1ED4D1F90 + v55 - (v72.tv_nsec / *&qword_1ED4D1F90 + v72.tv_sec);

    v58 = sub_1AB45FFA4();
    v59 = v84;
    sub_1AB45FFF4();
    LODWORD(v87) = sub_1AB461224();

    v60 = sub_1AB461314();
    v61 = v73;
    if (v60)
    {
      v86 = tv_sec;

      v62 = v75;
      sub_1AB460024();

      v64 = v76;
      v63 = v77;
      if ((*(v76 + 88))(v62, v77) == *MEMORY[0x1E69E93E8])
      {
        v65 = 0;
        v66 = "[Error] Interval already ended";
      }

      else
      {
        (*(v64 + 8))(v62, v63);
        v66 = "selfTime=%f";
        v65 = 1;
      }

      v67 = swift_slowAlloc();
      *v67 = 0;
      *(v67 + 1) = v65;
      *(v67 + 2) = 2048;
      os_unfair_lock_lock(v47);
      v68 = *(v46 + 16);
      os_unfair_lock_unlock(v47);
      *(v67 + 4) = v57 - v68;
      v69 = v84;
      v70 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v58, LOBYTE(v87), v70, "MakeDependency", v66, v67, 0xCu);
      v71 = v67;
      v59 = v69;
      MEMORY[0x1AC59F020](v71, -1, -1);
      v61 = v73;
      tv_sec = v86;
    }

    (*&v34)(v59, v89);
    os_unfair_lock_lock((tv_sec + 24));
    *(tv_sec + 16) = v57 + *(tv_sec + 16);
    os_unfair_lock_unlock((tv_sec + 24));
    sub_1AB0342CC(v90, v61, type metadata accessor for JetPackAsset);
    swift_task_localValuePop();
  }
}

uint64_t sub_1AB1557A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v86 = a2;
  v87 = a3;
  v94 = a4;
  v6 = sub_1AB45FFD4();
  v78 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1AB460134();
  isa = v81[-1].isa;
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB45FF84();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v71 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v71 - v17;
  v83 = a1;
  result = sub_1AB014A58(a1, v91, &qword_1EB436708);
  if (v93)
  {
    v20 = v91[1];
    v21 = v94;
    *v94 = v91[0];
    v21[1] = v20;
    v21[2] = v91[2];
    *(v21 + 6) = v92;
  }

  else
  {
    v75 = v12;
    v85 = v4;
    v84 = *(&v91[0] + 1);
    v76 = *&v91[0];
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v22 = sub_1AB45FFC4();
    v23 = __swift_project_value_buffer(v22, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v73 = v23;
    v24 = sub_1AB45FFA4();
    v25 = sub_1AB461234();
    v26 = sub_1AB461314();
    v71 = v6;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = v10;
      v29 = v9;
      v30 = swift_slowAlloc();
      v89[0].tv_sec = v30;
      *v27 = 136315138;
      *(v27 + 4) = sub_1AB030D2C(0xD000000000000011, 0x80000001AB4FF180, &v89[0].tv_sec);
      v31 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v24, v25, v31, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      v32 = v30;
      v9 = v29;
      v10 = v28;
      MEMORY[0x1AC59F020](v32, -1, -1);
      MEMORY[0x1AC59F020](v27, -1, -1);
    }

    (*(v10 + 16))(v15, v18, v9);
    sub_1AB460014();
    swift_allocObject();
    v33 = sub_1AB460004();
    v36 = *(v10 + 8);
    v35 = v10 + 8;
    v34 = v36;
    v74 = v9;
    (v36)(v18, v9);
    static MonotonicTime.now.getter(v89);
    v72 = v89[0];
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v89[0].tv_sec;
    type metadata accessor for BaseObjectGraph();
    v38 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v89[0].tv_sec = v38;

    swift_task_localValuePush();
    v39 = sub_1AB01DBA0(*(v38 + 16));
    swift_task_localValuePop();

    if (v39 && (v40 = swift_conformsToProtocol2()) != 0)
    {
      v41 = *(v40 + 8);

      v41();
      sub_1AB0318FC();
      sub_1AB460184();
      v42 = sub_1AB460154();
      v43 = *(v39 + 48);

      os_unfair_lock_lock((v43 + 20));
      v44 = *(v43 + 16);
      os_unfair_lock_unlock((v43 + 20));

      if (v44 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v42);

      sub_1AB460164();
      v82 = v42;
    }

    else
    {
      v82 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
    v45 = swift_allocObject();
    *(v45 + 24) = 0;
    v46 = (v45 + 24);
    *(v45 + 16) = 0;
    v89[0].tv_sec = v45;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
    swift_task_localValuePush();
    v47 = v85;
    sub_1AB12C208(v76, v84, v86, v87);
    if (v47 == 0.0)
    {
      v76 = v34;
      v86 = tv_sec;
      if (v82)
      {
        v48 = *MEMORY[0x1E6977AC8];
        v87 = v33;
        v49 = isa;
        v50 = v79;
        v51 = v81;
        (*(isa + 13))(v79, v48, v81);
        sub_1AB460174();
        (*(v49 + 1))(v50, v51);
      }

      if (v39)
      {
        v88.tv_sec = &type metadata for DiskJetPackLoader;
        StartUpPerformanceEvent.record(checkpoint:)(&v88.tv_sec);
      }

      v87 = v35;
      v52 = v83;
      sub_1AB014AC0(v83, &qword_1EB436708);
      sub_1AB03FFF8(v89, v52);
      *(v52 + 56) = 1;
      static MonotonicTime.now.getter(&v88);
      v53 = v88.tv_sec;
      tv_nsec = v88.tv_nsec;
      v55 = v86;
      if (qword_1ED4D1F88 != -1)
      {
        v85 = v88.tv_nsec;
        swift_once();
        tv_nsec = v85;
      }

      v56 = tv_nsec / *&qword_1ED4D1F90 + v53 - (v72.tv_nsec / *&qword_1ED4D1F90 + v72.tv_sec);

      v57 = sub_1AB45FFA4();
      v58 = v75;
      sub_1AB45FFF4();
      LODWORD(v83) = sub_1AB461224();

      if (sub_1AB461314())
      {
        v81 = v57;
        v85 = 0.0;

        v59 = v77;
        sub_1AB460024();

        v60 = v78;
        v61 = v71;
        if ((*(v78 + 88))(v59, v71) == *MEMORY[0x1E69E93E8])
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
        os_unfair_lock_lock(v46);
        v65 = *(v45 + 16);
        os_unfair_lock_unlock(v46);
        *(v64 + 4) = v56 - v65;
        v58 = v75;
        v66 = sub_1AB45FF64();
        v67 = v81;
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v81, v83, v66, "MakeDependency", v63, v64, 0xCu);
        v68 = v64;
        v57 = v67;
        MEMORY[0x1AC59F020](v68, -1, -1);
      }

      (v76)(v58, v74);
      os_unfair_lock_lock((v55 + 24));
      *(v55 + 16) = v56 + *(v55 + 16);
      os_unfair_lock_unlock((v55 + 24));
      v69 = v89[1];
      v70 = v94;
      *v94 = v89[0];
      v70[1] = v69;
      v70[2] = v89[2];
      v70[3].tv_sec = v90;
      swift_task_localValuePop();
    }

    else
    {
      swift_task_localValuePop();
    }
  }

  return result;
}

uint64_t sub_1AB156228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v86 = a2;
  v87 = a3;
  v94 = a4;
  v6 = sub_1AB45FFD4();
  v78 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1AB460134();
  isa = v81[-1].isa;
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB45FF84();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v71 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v71 - v17;
  v83 = a1;
  result = sub_1AB014A58(a1, v91, &qword_1EB4366F8);
  if (v93)
  {
    v20 = v91[1];
    v21 = v94;
    *v94 = v91[0];
    v21[1] = v20;
    v21[2] = v91[2];
    *(v21 + 6) = v92;
  }

  else
  {
    v75 = v12;
    v85 = v4;
    v84 = *(&v91[0] + 1);
    v76 = *&v91[0];
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v22 = sub_1AB45FFC4();
    v23 = __swift_project_value_buffer(v22, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v73 = v23;
    v24 = sub_1AB45FFA4();
    v25 = sub_1AB461234();
    v26 = sub_1AB461314();
    v71 = v6;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = v10;
      v29 = v9;
      v30 = swift_slowAlloc();
      v89[0].tv_sec = v30;
      *v27 = 136315138;
      *(v27 + 4) = sub_1AB030D2C(0xD000000000000015, 0x80000001AB4FF160, &v89[0].tv_sec);
      v31 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v24, v25, v31, "MakeDependency", "object=%s,type=lazy", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      v32 = v30;
      v9 = v29;
      v10 = v28;
      MEMORY[0x1AC59F020](v32, -1, -1);
      MEMORY[0x1AC59F020](v27, -1, -1);
    }

    (*(v10 + 16))(v15, v18, v9);
    sub_1AB460014();
    swift_allocObject();
    v33 = sub_1AB460004();
    v36 = *(v10 + 8);
    v35 = v10 + 8;
    v34 = v36;
    v74 = v9;
    (v36)(v18, v9);
    static MonotonicTime.now.getter(v89);
    v72 = v89[0];
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    tv_sec = v89[0].tv_sec;
    type metadata accessor for BaseObjectGraph();
    v38 = static BaseObjectGraph.current.getter();
    if (qword_1EB4359B0 != -1)
    {
      swift_once();
    }

    v89[0].tv_sec = v38;

    swift_task_localValuePush();
    v39 = sub_1AB01DBA0(*(v38 + 16));
    swift_task_localValuePop();

    if (v39 && (v40 = swift_conformsToProtocol2()) != 0)
    {
      v41 = *(v40 + 8);

      v41();
      sub_1AB0318FC();
      sub_1AB460184();
      v42 = sub_1AB460154();
      v43 = *(v39 + 48);

      os_unfair_lock_lock((v43 + 20));
      v44 = *(v43 + 16);
      os_unfair_lock_unlock((v43 + 20));

      if (v44 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v42);

      sub_1AB460164();
      v82 = v42;
    }

    else
    {
      v82 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
    v45 = swift_allocObject();
    *(v45 + 24) = 0;
    v46 = (v45 + 24);
    *(v45 + 16) = 0;
    v89[0].tv_sec = v45;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
    swift_task_localValuePush();
    v47 = v85;
    sub_1AB12C208(v76, v84, v86, v87);
    if (v47 == 0.0)
    {
      v76 = v34;
      v86 = tv_sec;
      if (v82)
      {
        v48 = *MEMORY[0x1E6977AC8];
        v87 = v33;
        v49 = isa;
        v50 = v79;
        v51 = v81;
        (*(isa + 13))(v79, v48, v81);
        sub_1AB460174();
        (*(v49 + 1))(v50, v51);
      }

      if (v39)
      {
        v88.tv_sec = &type metadata for InMemoryJetPackLoader;
        StartUpPerformanceEvent.record(checkpoint:)(&v88.tv_sec);
      }

      v87 = v35;
      v52 = v83;
      sub_1AB014AC0(v83, &qword_1EB4366F8);
      sub_1AB019BC0(v89, v52);
      *(v52 + 56) = 1;
      static MonotonicTime.now.getter(&v88);
      v53 = v88.tv_sec;
      tv_nsec = v88.tv_nsec;
      v55 = v86;
      if (qword_1ED4D1F88 != -1)
      {
        v85 = v88.tv_nsec;
        swift_once();
        tv_nsec = v85;
      }

      v56 = tv_nsec / *&qword_1ED4D1F90 + v53 - (v72.tv_nsec / *&qword_1ED4D1F90 + v72.tv_sec);

      v57 = sub_1AB45FFA4();
      v58 = v75;
      sub_1AB45FFF4();
      LODWORD(v83) = sub_1AB461224();

      if (sub_1AB461314())
      {
        v81 = v57;
        v85 = 0.0;

        v59 = v77;
        sub_1AB460024();

        v60 = v78;
        v61 = v71;
        if ((*(v78 + 88))(v59, v71) == *MEMORY[0x1E69E93E8])
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
        os_unfair_lock_lock(v46);
        v65 = *(v45 + 16);
        os_unfair_lock_unlock(v46);
        *(v64 + 4) = v56 - v65;
        v58 = v75;
        v66 = sub_1AB45FF64();
        v67 = v81;
        _os_signpost_emit_with_name_impl(&dword_1AB012000, v81, v83, v66, "MakeDependency", v63, v64, 0xCu);
        v68 = v64;
        v57 = v67;
        MEMORY[0x1AC59F020](v68, -1, -1);
      }

      (v76)(v58, v74);
      os_unfair_lock_lock((v55 + 24));
      *(v55 + 16) = v56 + *(v55 + 16);
      os_unfair_lock_unlock((v55 + 24));
      v69 = v89[1];
      v70 = v94;
      *v94 = v89[0];
      v70[1] = v69;
      v70[2] = v89[2];
      v70[3].tv_sec = v90;
      swift_task_localValuePop();
    }

    else
    {
      swift_task_localValuePop();
    }
  }

  return result;
}

uint64_t sub_1AB156CAC(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v92 = *&a4;
  v90 = a3;
  v6 = sub_1AB45FFD4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB460134();
  v83 = *(v9 - 8);
  v84 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45FF84();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v73 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v73 - v18;
  v20 = *a1;
  if (*(a1 + 16))
  {
  }

  v73 = v7;
  v74 = v6;
  v78 = v17;
  v88 = v20;
  v89 = v4;
  v22 = *(a1 + 8);
  v23 = qword_1EB434BA8;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1AB45FFC4();
  v25 = __swift_project_value_buffer(v24, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v76 = v25;
  v26 = sub_1AB45FFA4();
  v27 = sub_1AB461234();
  v28 = sub_1AB461314();
  v87 = v22;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v85 = v12;
    v30 = v29;
    v31 = swift_slowAlloc();
    v91.tv_sec = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1AB030D2C(0xD00000000000001ALL, 0x80000001AB4FF010, &v91.tv_sec);
    v32 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v32, "MakeDependency", "object=%s,type=lazy", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1AC59F020](v31, -1, -1);
    v33 = v30;
    v12 = v85;
    MEMORY[0x1AC59F020](v33, -1, -1);
  }

  (*(v12 + 2))(v15, v19, v11);
  sub_1AB460014();
  swift_allocObject();
  v34 = sub_1AB460004();
  v37 = *(v12 + 1);
  v36 = v12 + 8;
  v35 = v37;
  (v37)(v19, v11);
  static MonotonicTime.now.getter(&v91);
  v75 = v91;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v21 = qword_1EB46C208;
  sub_1AB4622E4();
  tv_sec = v91.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v38 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v91.tv_sec = v38;

  swift_task_localValuePush();
  v39 = sub_1AB01DBA0(*(v38 + 16));
  swift_task_localValuePop();

  if (v39)
  {
    v40 = type metadata accessor for PageRenderMetricsPresenter();
    v41 = swift_conformsToProtocol2();
    v86 = 0;
    if (v41 && v40)
    {
      v85 = v35;
      v42 = *(v41 + 8);
      v43 = v41;

      v42(v40, v43);
      sub_1AB0318FC();
      sub_1AB460184();
      v44 = sub_1AB460154();
      v45 = *(v39 + 48);

      os_unfair_lock_lock((v45 + 20));
      v46 = *(v45 + 16);
      os_unfair_lock_unlock((v45 + 20));

      if (v46 == 1)
      {

        sub_1AB460124();
      }

      sub_1AB3858E0(v44);

      sub_1AB460164();
      v86 = v44;

      v35 = v85;
    }
  }

  else
  {
    v86 = 0;
  }

  v80 = v34;
  v85 = v36;
  v77 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  v48 = (v47 + 24);
  *(v47 + 16) = 0;
  v91.tv_sec = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v49 = v89;
  v50 = sub_1AB12C354(v88, v87, v90, *&v92);
  if (v49)
  {
    swift_task_localValuePop();

    sub_1AB057304();
  }

  else
  {
    v21 = v50;
    v89 = 0;
    if (v86)
    {
      v51 = *MEMORY[0x1E6977AC8];
      v53 = v83;
      v52 = v84;
      v54 = *(v83 + 104);
      *&v92 = v47 + 24;
      v55 = v39;
      v56 = v35;
      v57 = v82;
      v54(v82, v51, v84);
      sub_1AB460174();
      v58 = v57;
      v35 = v56;
      v39 = v55;
      v48 = *&v92;
      (*(v53 + 8))(v58, v52);
    }

    if (v39)
    {
      v91.tv_sec = *v21;
      StartUpPerformanceEvent.record(checkpoint:)(&v91.tv_sec);
    }

    sub_1AB057304();
    *a1 = v21;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;

    static MonotonicTime.now.getter(&v91);
    v59 = v91.tv_sec;
    tv_nsec = v91.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      v92 = v91.tv_nsec;
      swift_once();
      tv_nsec = v92;
    }

    v61 = tv_nsec / *&qword_1ED4D1F90 + v59 - (v75.tv_nsec / *&qword_1ED4D1F90 + v75.tv_sec);

    v62 = sub_1AB45FFA4();
    v63 = v78;
    sub_1AB45FFF4();
    LODWORD(v92) = sub_1AB461224();

    if (sub_1AB461314())
    {

      v64 = v81;
      sub_1AB460024();

      v65 = v73;
      v66 = v74;
      if ((*(v73 + 88))(v64, v74) == *MEMORY[0x1E69E93E8])
      {
        v67 = 0;
        v90 = "[Error] Interval already ended";
      }

      else
      {
        (*(v65 + 8))(v64, v66);
        v90 = "selfTime=%f";
        v67 = 1;
      }

      v68 = swift_slowAlloc();
      *v68 = 0;
      *(v68 + 1) = v67;
      *(v68 + 2) = 2048;
      os_unfair_lock_lock(v48);
      v69 = *(v47 + 16);
      os_unfair_lock_unlock(v48);
      *(v68 + 4) = v61 - v69;
      v63 = v78;
      v70 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v62, LOBYTE(v92), v70, "MakeDependency", v90, v68, 0xCu);
      MEMORY[0x1AC59F020](v68, -1, -1);
    }

    (v35)(v63, v77);
    v71 = tv_sec;
    os_unfair_lock_lock(tv_sec + 6);
    *&v71[4]._os_unfair_lock_opaque = v61 + *&v71[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v71 + 6);
    swift_task_localValuePop();

    sub_1AB057304();
  }

  return v21;
}

uint64_t sub_1AB15767C(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v87 = *&a4;
  v85 = a3;
  v6 = sub_1AB45FFD4();
  v79 = *(v6 - 8);
  v80 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v78 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB45FF84();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v69 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v69 - v15;
  v18 = *a1;
  v17 = *(a1 + 8);
  v19 = *(a1 + 16);
  if (*(a1 + 17))
  {
    return *a1;
  }

  v74 = v14;
  v82 = v19;
  v83 = v17;
  v84 = v4;
  v21 = qword_1EB434BA8;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_1AB45FFC4();
  v23 = __swift_project_value_buffer(v22, qword_1EB46C230);
  sub_1AB45FFA4();

  sub_1AB45FF44();
  v73 = v23;
  v24 = sub_1AB45FFA4();
  v25 = sub_1AB461234();
  v26 = sub_1AB461314();
  v75 = v8;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v81 = v9;
    v28 = v27;
    v29 = v18;
    v30 = swift_slowAlloc();
    v86.tv_sec = v30;
    *v28 = 136315138;
    *(v28 + 4) = sub_1AB030D2C(0xD000000000000038, 0x80000001AB4FEFD0, &v86.tv_sec);
    v31 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v24, v25, v31, "MakeDependency", "object=%s,type=lazy", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v32 = v30;
    v18 = v29;
    v8 = v75;
    MEMORY[0x1AC59F020](v32, -1, -1);
    v33 = v28;
    v9 = v81;
    MEMORY[0x1AC59F020](v33, -1, -1);
  }

  (*(v9 + 16))(v12, v16, v8);
  sub_1AB460014();
  swift_allocObject();
  v34 = sub_1AB460004();
  v36 = *(v9 + 8);
  v35 = v9 + 8;
  v72 = v36;
  v36(v16, v8);
  static MonotonicTime.now.getter(&v86);
  v71 = v86;
  if (qword_1EB434B98 != -1)
  {
    swift_once();
  }

  v77 = v34;
  v81 = v35;
  sub_1AB4622E4();
  tv_sec = v86.tv_sec;
  type metadata accessor for BaseObjectGraph();
  v37 = static BaseObjectGraph.current.getter();
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v86.tv_sec = v37;

  swift_task_localValuePush();
  v20 = sub_1AB01DBA0(*(v37 + 16));
  swift_task_localValuePop();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0);
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  v39 = (v38 + 24);
  *(v38 + 16) = 0;
  v86.tv_sec = v38;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C8);
  swift_task_localValuePush();
  v40 = v18;
  v41 = v18;
  v43 = v83;
  v42 = v84;
  v44 = sub_1AB12C4B0(v40, v83, v85, *&v87);
  if (v42)
  {
    swift_task_localValuePop();

    sub_1AB0D60E4(v41, v43, v82, 0);
  }

  else
  {
    v47 = v45;
    v48 = v46;
    v49 = v44;
    v70 = v41;
    v84 = 0;
    v69[1] = v20;
    if (v20)
    {
      v86.tv_sec = &type metadata for IntentDispatchOptions.BadOrderingCanary;
      StartUpPerformanceEvent.record(checkpoint:)(&v86.tv_sec);
    }

    sub_1AB0D60E4(v70, v83, v82, 0);
    v20 = v49;
    *a1 = v49;
    *(a1 + 8) = v47;
    *(a1 + 16) = v48;
    *(a1 + 17) = 1;
    static MonotonicTime.now.getter(&v86);
    v50 = v86.tv_sec;
    tv_nsec = v86.tv_nsec;
    if (qword_1ED4D1F88 != -1)
    {
      v87 = v86.tv_nsec;
      swift_once();
      tv_nsec = v87;
    }

    v52 = tv_nsec / *&qword_1ED4D1F90 + v50 - (v71.tv_nsec / *&qword_1ED4D1F90 + v71.tv_sec);

    v53 = sub_1AB45FFA4();
    v54 = v74;
    sub_1AB45FFF4();
    LODWORD(v87) = sub_1AB461224();

    v55 = sub_1AB461314();
    v56 = v70;
    if (v55)
    {
      v85 = v53;

      v57 = v78;
      sub_1AB460024();

      v59 = v79;
      v58 = v80;
      if ((*(v79 + 88))(v57, v80) == *MEMORY[0x1E69E93E8])
      {
        v60 = 0;
        v61 = "[Error] Interval already ended";
      }

      else
      {
        (*(v59 + 8))(v57, v58);
        v61 = "selfTime=%f";
        v60 = 1;
      }

      v62 = swift_slowAlloc();
      *v62 = 0;
      *(v62 + 1) = v60;
      *(v62 + 2) = 2048;
      os_unfair_lock_lock(v39);
      v63 = *(v38 + 16);
      os_unfair_lock_unlock(v39);
      *(v62 + 4) = v52 - v63;
      v54 = v74;
      v64 = sub_1AB45FF64();
      v65 = v85;
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v85, LOBYTE(v87), v64, "MakeDependency", v61, v62, 0xCu);
      v66 = v62;
      v53 = v65;
      MEMORY[0x1AC59F020](v66, -1, -1);
      v56 = v70;
    }

    v72(v54, v75);
    v67 = tv_sec;
    os_unfair_lock_lock(tv_sec + 6);
    *&v67[4]._os_unfair_lock_opaque = v52 + *&v67[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v67 + 6);
    swift_task_localValuePop();

    sub_1AB0D60E4(v56, v83, v82, 0);
  }

  return v20;
}