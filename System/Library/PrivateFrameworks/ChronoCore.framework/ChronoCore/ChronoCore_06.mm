uint64_t sub_224ABBC0C()
{
  v2 = *(*v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32A0, &qword_224DB3210);
  sub_224A33088(&qword_281350F38, &qword_27D6F32A0, &qword_224DB3210);
  return sub_224DAB3A8();
}

uint64_t sub_224ABBC9C()
{
  v2 = *(*v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5880, &qword_224DB3208);
  sub_224A33088(&qword_281350F80, &unk_27D6F5880, &qword_224DB3208);
  return sub_224DAB3A8();
}

uint64_t sub_224ABBD2C()
{
  v2 = *(*v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5890, &qword_224DB3200);
  sub_224A33088(&qword_281350F60, &qword_27D6F5890, &qword_224DB3200);
  return sub_224DAB3A8();
}

uint64_t sub_224ABBE0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*v4 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_224DAF3E8();
  return v7;
}

uint64_t sub_224ABBEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = *(*v6 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  return sub_224DAF3E8();
}

uint64_t sub_224ABBF24()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v1[17];
  v5 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v4);
  return (*(v5 + 48))(v2, v3, v4, v5);
}

uint64_t sub_224ABBFA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  return sub_224AB92B0(v2, v3, a1);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_224ABC050(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_224DAB8C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v4[5];
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_224DAB8F8();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_8;
  }

  swift_beginAccess();
  v15 = v4[8];
  if (*(v15 + 16))
  {
    v16 = v4[8];

    v17 = sub_224A3A40C(a1, a2);
    if (v18)
    {
      v19 = (*(v15 + 56) + 16 * v17);
      v21 = *v19;
      v20 = v19[1];
      swift_unknownObjectRetain();

      return;
    }
  }

  if ((a3 & 1) == 0)
  {
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v42 = sub_224DAB258();
    __swift_project_value_buffer(v42, qword_27D6F71E0);

    v43 = sub_224DAB228();
    v44 = sub_224DAF288();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v58[0] = v46;
      *v45 = 136446210;
      *(v45 + 4) = sub_224A33F74(a1, a2, v58);
      _os_log_impl(&dword_224A2F000, v43, v44, "Failed to find a connection for environment %{public}s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x22AA5EED0](v46, -1, -1);
      MEMORY[0x22AA5EED0](v45, -1, -1);
    }

    v47 = 0;
    goto LABEL_26;
  }

  if (qword_27D6F2C68 != -1)
  {
    goto LABEL_28;
  }

LABEL_8:
  v22 = off_27D6F3280;
  if (!*(off_27D6F3280 + 2) || (v23 = sub_224A3A40C(a1, a2), (v24 & 1) == 0))
  {
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v48 = sub_224DAB258();
    __swift_project_value_buffer(v48, qword_27D6F71E0);

    v49 = sub_224DAB228();
    v50 = sub_224DAF288();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v58[0] = v52;
      *v51 = 136446210;
      *(v51 + 4) = sub_224A33F74(a1, a2, v58);
      _os_log_impl(&dword_224A2F000, v49, v50, "No Mach service name exists for environment %{public}s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x22AA5EED0](v52, -1, -1);
      MEMORY[0x22AA5EED0](v51, -1, -1);
    }

    v47 = 1;
LABEL_26:
    sub_224AC1F7C();
    swift_allocError();
    *v53 = v47;
    swift_willThrow();
    return;
  }

  v25 = (v22[7] + 16 * v23);
  v27 = *v25;
  v26 = v25[1];
  v57 = v4[7];
  v55 = type metadata accessor for APSPushConnection();
  v28 = objc_allocWithZone(v55);
  *&v28[OBJC_IVAR____TtC10ChronoCore17APSPushConnection_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_283828B20;
  swift_unknownObjectWeakAssign();
  v29 = objc_allocWithZone(MEMORY[0x277CEEA10]);

  v30 = sub_224DAEDE8();
  v56 = v26;
  v31 = sub_224DAEDE8();
  v32 = [v29 initWithEnvironmentName:v30 namedDelegatePort:v31 queue:v57];

  if (v32)
  {

    *&v28[OBJC_IVAR____TtC10ChronoCore17APSPushConnection_connection] = v32;
    v59.receiver = v28;
    v59.super_class = v55;
    v33 = objc_msgSendSuper2(&v59, sel_init);
    [*&v33[OBJC_IVAR____TtC10ChronoCore17APSPushConnection_connection] setDelegate_];
    swift_beginAccess();

    v34 = v33;
    v35 = v4[8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v4[8];
    v4[8] = 0x8000000000000000;
    sub_224AC1C08(v34, a1, a2, isUniquelyReferenced_nonNull_native, &v60);

    v4[8] = v60;
    swift_endAccess();
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v37 = sub_224DAB258();
    __swift_project_value_buffer(v37, qword_27D6F71E0);

    v38 = sub_224DAB228();
    v39 = sub_224DAF268();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v58[0] = v41;
      *v40 = 136446210;
      *(v40 + 4) = sub_224A33F74(a1, a2, v58);
      _os_log_impl(&dword_224A2F000, v38, v39, "Created new connection for environment %{public}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x22AA5EED0](v41, -1, -1);
      MEMORY[0x22AA5EED0](v40, -1, -1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_224ABC724()
{
  v1 = sub_224DAB8C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 40);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_224DAB8F8();
  v9 = *(v2 + 8);
  v8 = v2 + 8;
  v9(v5, v1);
  if (v6)
  {
    v10 = sub_224DAC548();
    v8 = v10;
    v5 = v11;
    if (qword_27D6F2C70 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v10 = swift_once();
LABEL_3:
  v22[0] = v8;
  v22[1] = v5;
  MEMORY[0x28223BE20](v10);
  *&v21[-16] = v22;
  v13 = sub_224B3E818(sub_224AC2330, &v21[-32], v12);
  if (v13)
  {
  }

  else
  {
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v14 = sub_224DAB258();
    __swift_project_value_buffer(v14, qword_27D6F71E0);

    v15 = sub_224DAB228();
    v16 = sub_224DAF288();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22[0] = v18;
      *v17 = 136446210;
      v19 = sub_224A33F74(v8, v5, v22);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_224A2F000, v15, v16, "Environment name %{public}s is unsupported", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x22AA5EED0](v18, -1, -1);
      MEMORY[0x22AA5EED0](v17, -1, -1);
    }

    else
    {
    }
  }

  return v13 & 1;
}

uint64_t sub_224ABCA10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v79 = a2;
  v82 = a1;
  v4 = type metadata accessor for AppTokenInfo(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAE0D8();
  v70 = *(v8 - 8);
  v71 = v8;
  v9 = *(v70 + 64);
  MEMORY[0x28223BE20](v8);
  v69 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F38C0, &qword_224DB31E8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v80 = &v68 - v13;
  v81 = sub_224DAC5E8();
  v14 = *(v81 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v81);
  v78 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v68 - v18;
  v20 = sub_224DAB8C8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = (&v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = v3[5];
  *v24 = v25;
  (*(v21 + 104))(v24, *MEMORY[0x277D85200], v20);
  v26 = v25;
  LOBYTE(v25) = sub_224DAB8F8();
  (*(v21 + 8))(v24, v20);
  if (v25)
  {
    v76 = v4;
    if (qword_27D6F2CF0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v27 = sub_224DAB258();
  v28 = __swift_project_value_buffer(v27, qword_27D6F71E0);
  v29 = v81;
  v72 = v14[2];
  v72(v19, v82, v81);
  v73 = v28;
  v30 = sub_224DAB228();
  v31 = sub_224DAF2A8();
  v32 = os_log_type_enabled(v30, v31);
  v77 = v7;
  v75 = v14;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = v3;
    v35 = swift_slowAlloc();
    v83 = v35;
    *v33 = 136380675;
    v36 = sub_224DAC588();
    v37 = v14;
    v39 = v38;
    v74 = v37[1];
    v74(v19, v81);
    v40 = sub_224A33F74(v36, v39, &v83);

    *(v33 + 4) = v40;
    _os_log_impl(&dword_224A2F000, v30, v31, "Fetching push token for subscription: %{private}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    v41 = v35;
    v3 = v34;
    MEMORY[0x22AA5EED0](v41, -1, -1);
    MEMORY[0x22AA5EED0](v33, -1, -1);
  }

  else
  {

    v74 = v14[1];
    v74(v19, v29);
  }

  v42 = v3[28];
  __swift_project_boxed_opaque_existential_1(v3 + 24, v3[27]);
  v43 = v82;
  v44 = sub_224DAC588();
  v45 = v80;
  (*(v42 + 64))(v44);

  v46 = sub_224DAE438();
  v47 = (*(*(v46 - 8) + 48))(v45, 1, v46);
  result = sub_224A3311C(v45, &unk_27D6F38C0, &qword_224DB31E8);
  if (v47 == 1)
  {
    v49 = v78;
    v50 = v81;
    v72(v78, v43, v81);
    v51 = sub_224DAB228();
    v52 = sub_224DAF2A8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v83 = v54;
      *v53 = 136380675;
      v55 = v69;
      sub_224DAC598();
      v56 = sub_224DAE0C8();
      v58 = v57;
      (*(v70 + 8))(v55, v71);
      v74(v49, v50);
      v59 = sub_224A33F74(v56, v58, &v83);

      *(v53 + 4) = v59;
      _os_log_impl(&dword_224A2F000, v51, v52, "Requesting push token for topic: %{private}s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x22AA5EED0](v54, -1, -1);
      MEMORY[0x22AA5EED0](v53, -1, -1);
    }

    else
    {

      v74(v49, v50);
    }

    v61 = v76;
    v60 = v77;
    sub_224DAC598();
    v62 = sub_224DAC588();
    v64 = v63;
    v65 = *(v61 + 24);
    v66 = sub_224DA9878();
    (*(*(v66 - 8) + 56))(v60 + v65, 1, 1, v66);
    v67 = (v60 + *(v61 + 20));
    *v67 = v62;
    v67[1] = v64;
    sub_224CC2210(v60);
    return sub_224AC1F14(v60, type metadata accessor for AppTokenInfo);
  }

  return result;
}

uint64_t sub_224ABD130(void (**a1)(_BYTE *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v191 = a1;
  v5 = sub_224DAE0D8();
  v185 = *(v5 - 8);
  v6 = v185[8];
  v7 = MEMORY[0x28223BE20](v5);
  v194 = &v169[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v180 = &v169[-v10];
  v11 = MEMORY[0x28223BE20](v9);
  v184 = &v169[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v196 = &v169[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v195 = &v169[-v16];
  MEMORY[0x28223BE20](v15);
  v181 = &v169[-v17];
  v188 = sub_224DAE178();
  v192 = *(v188 - 8);
  v18 = *(v192 + 64);
  v19 = MEMORY[0x28223BE20](v188);
  v182 = &v169[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v19);
  v183 = &v169[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v169[-v24];
  v26 = MEMORY[0x28223BE20](v23);
  v190 = &v169[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v189 = &v169[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v169[-v31];
  MEMORY[0x28223BE20](v30);
  v34 = &v169[-v33];
  v35 = sub_224DAB8C8();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v169[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = v3[5];
  *v39 = v40;
  (*(v36 + 104))(v39, *MEMORY[0x277D85200], v35);
  v41 = v40;
  LOBYTE(v40) = sub_224DAB8F8();
  result = (*(v36 + 8))(v39, v35);
  if ((v40 & 1) == 0)
  {
    goto LABEL_78;
  }

  v187 = v32;
  v43 = v3[17];
  v44 = v3[18];
  __swift_project_boxed_opaque_existential_1(v3 + 14, v43);
  v193 = (*(v44 + 72))(v191, a2, v43, v44);
  sub_224DA9E78();
  sub_224DA9E68();
  LOBYTE(v43) = sub_224DA9E08();

  v186 = v3;
  v45 = v25;
  if (v43)
  {
    v46 = *MEMORY[0x277CEE9E8];
    if (sub_224DAEE18() == v191 && v47 == a2)
    {

      goto LABEL_7;
    }

    v48 = sub_224DAFD88();

    if (v48)
    {
LABEL_7:
      v49 = *MEMORY[0x277CF9EC8];
      v50 = v192;
      v51 = *(v192 + 104);
      v51(v34, v49, v188);
      v52 = v193;
      if (*(v193 + 16) && (v53 = sub_224B0B2F8(v34), (v54 & 1) != 0))
      {
        v55 = *(*(v52 + 56) + 8 * v53);
        v56 = *(v192 + 8);

        v57 = v34;
        v58 = v188;
        v56(v57, v188);
      }

      else
      {
        v56 = *(v50 + 8);
        v104 = v34;
        v58 = v188;
        v56(v104, v188);
        v55 = MEMORY[0x277D84FA0];
      }

      v105 = v187;
      v51(v187, *MEMORY[0x277CF9EC0], v58);
      if (*(v52 + 16) && (v106 = sub_224B0B2F8(v105), (v107 & 1) != 0))
      {
        v108 = *(*(v52 + 56) + 8 * v106);
      }

      else
      {
        v108 = MEMORY[0x277D84FA0];
      }

      v56(v105, v58);
      v109 = v189;
      v51(v189, *MEMORY[0x277CF9ED0], v58);
      v110 = v193;
      if (*(v193 + 16) && (v111 = sub_224B0B2F8(v109), (v112 & 1) != 0))
      {
        v113 = *(*(v110 + 56) + 8 * v111);
      }

      else
      {
        v113 = MEMORY[0x277D84FA0];
      }

      v56(v109, v58);
      v114 = sub_224AD6934(v108, v55);
      v115 = sub_224AD6934(v113, v114);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32E8, &qword_224DB3228);
      v116 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7060, &unk_224DC3C30) - 8);
      v117 = *(*v116 + 72);
      v118 = v58;
      v119 = (*(*v116 + 80) + 32) & ~*(*v116 + 80);
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_224DB3100;
      v121 = v120 + v119;
      v122 = v116[14];
      v51(v121, v49, v118);
      *(v121 + v122) = v115;
      v123 = sub_224D9FF28(v120);
      swift_setDeallocating();
      sub_224A3311C(v121, &unk_27D6F7060, &unk_224DC3C30);
      swift_deallocClassInstance();

      return v123;
    }
  }

  if (!*(v186[41] + 16))
  {
    return v193;
  }

  v59 = v192;
  v61 = v192 + 104;
  v60 = *(v192 + 104);
  v62 = v190;
  v178 = *MEMORY[0x277CF9EC8];
  v63 = v188;
  v60(v190);
  v64 = v193;
  if (*(v193 + 16) && (v65 = sub_224B0B2F8(v62), (v66 & 1) != 0))
  {
    v67 = *(*(v64 + 56) + 8 * v65);
    v177 = v60;
    v68 = *(v192 + 8);

    v179 = v68;
    v68(v62, v63);
    v60 = v177;
    v59 = v192;
  }

  else
  {
    v179 = *(v59 + 8);
    v179(v62, v63);
    v67 = MEMORY[0x277D84FA0];
  }

  v199 = v67;
  v69 = *MEMORY[0x277CF9EC0];
  (v60)(v45, *MEMORY[0x277CF9EC0], v63);
  v70 = v182;
  if (!*(v64 + 16) || (v71 = sub_224B0B2F8(v45), (v72 & 1) == 0))
  {
    v76 = v179;
    v179(v45, v63);
    goto LABEL_50;
  }

  v170 = v69;
  v73 = v45;
  v74 = *(*(v64 + 56) + 8 * v71);

  v75 = v73;
  v76 = v179;
  v171 = v59 + 8;
  v179(v75, v63);
  result = v74;
  if (!*(v74 + 16))
  {

    goto LABEL_50;
  }

  v176 = v61;
  v77 = 0;
  v79 = v74 + 56;
  v78 = *(result + 56);
  v80 = 1 << *(result + 32);
  v198 = MEMORY[0x277D84FA0];
  if (v80 < 64)
  {
    v81 = ~(-1 << v80);
  }

  else
  {
    v81 = -1;
  }

  v82 = v81 & v78;
  v83 = (v80 + 63) >> 6;
  v191 = (v185 + 2);
  v175 = v185 + 4;
  v189 = v185 + 1;
  v84 = v195;
  v173 = v83;
  v177 = v60;
  v174 = result;
  v172 = result + 56;
  if (v82)
  {
    while (1)
    {
LABEL_26:
      v86 = __clz(__rbit64(v82));
      v82 &= v82 - 1;
      v87 = *(result + 48);
      v88 = v185;
      v187 = v185[9];
      v89 = v181;
      v190 = v185[2];
      (v190)(v181, v87 + v187 * (v86 | (v77 << 6)), v5);
      (v88[4])(v84, v89, v5);
      v90 = v186[41];
      if (*(v90 + 16))
      {
        v91 = *(v90 + 40);
        sub_224AC22E8(&qword_281350C70, MEMORY[0x277CF9E98]);

        v92 = sub_224DAED88();
        v93 = -1 << *(v90 + 32);
        v94 = v92 & ~v93;
        if ((*(v90 + 56 + ((v94 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v94))
        {
          v95 = ~v93;
          while (1)
          {
            v96 = v196;
            (v190)(v196, *(v90 + 48) + v94 * v187, v5);
            sub_224AC22E8(&qword_281350C68, MEMORY[0x277CF9E98]);
            v97 = sub_224DAEDD8();
            v98 = *v189;
            (*v189)(v96, v5);
            if (v97)
            {
              break;
            }

            v94 = (v94 + 1) & v95;
            if (((*(v90 + 56 + ((v94 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v94) & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          v102 = v184;
          v84 = v195;
          (v190)(v184, v195, v5);
          v103 = v196;
          sub_224ADB0B0(v196, v102);
          v98(v103, v5);
          v98(v84, v5);
          v63 = v188;
          v59 = v192;
          v60 = v177;
          result = v174;
          v79 = v172;
          goto LABEL_33;
        }

LABEL_31:

        v63 = v188;
        v60 = v177;
        v84 = v195;
        v79 = v172;
      }

      v99 = v184;
      (v190)(v184, v84, v5);
      v100 = v196;
      sub_224ADB0B0(v196, v99);
      v101 = *v189;
      (*v189)(v100, v5);
      v101(v84, v5);
      v59 = v192;
      result = v174;
LABEL_33:
      v83 = v173;
      if (!v82)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
LABEL_22:
    v85 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      __break(1u);
      goto LABEL_77;
    }

    if (v85 >= v83)
    {
      break;
    }

    v82 = *(v79 + 8 * v85);
    ++v77;
    if (v82)
    {
      v77 = v85;
      goto LABEL_26;
    }
  }

  v124 = v183;
  v61 = v176;
  (v60)(v183, v170, v63);
  v125 = v198;
  v126 = v193;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v197 = v126;
  sub_224B1F170(v125, v124, isUniquelyReferenced_nonNull_native);
  v128 = v124;
  v70 = v182;
  v76 = v179;
  v179(v128, v63);
  v64 = v197;
LABEL_50:
  LODWORD(v189) = *MEMORY[0x277CF9ED0];
  v60(v70);
  if (!*(v64 + 16) || (v129 = sub_224B0B2F8(v70), (v130 & 1) == 0))
  {
    v76(v70, v63);
    v141 = v76;
LABEL_75:
    v166 = v183;
    (v60)(v183, v178, v63);
    v167 = v199;
    v168 = swift_isUniquelyReferenced_nonNull_native();
    v198 = v64;
    sub_224B1F170(v167, v166, v168);
    v141(v166, v63);
    return v198;
  }

  v131 = *(*(v64 + 56) + 8 * v129);
  v132 = v59 + 8;
  v174 = v132 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;

  v173 = v132;
  result = (v76)(v70, v63);
  if (!*(v131 + 2))
  {

    v141 = v179;
    goto LABEL_75;
  }

  v177 = v60;
  v193 = v64;
  v133 = 0;
  v135 = v131 + 56;
  v134 = *(v131 + 7);
  v136 = 1 << v131[32];
  v198 = MEMORY[0x277D84FA0];
  if (v136 < 64)
  {
    v137 = ~(-1 << v136);
  }

  else
  {
    v137 = -1;
  }

  v138 = v137 & v134;
  v139 = (v136 + 63) >> 6;
  v195 = v185 + 2;
  v182 = v185 + 4;
  v191 = (v185 + 1);
  v140 = v194;
  v187 = v139;
  v176 = v61;
  v181 = v131;
  v175 = v131 + 56;
  if (!v138)
  {
    goto LABEL_61;
  }

  do
  {
    while (1)
    {
LABEL_65:
      v146 = __clz(__rbit64(v138));
      v138 &= v138 - 1;
      v147 = *(v131 + 6);
      v148 = v185;
      v190 = v185[9];
      v149 = v180;
      v192 = v185[2];
      (v192)(v180, v147 + v190 * (v146 | (v133 << 6)), v5);
      (v148[4])(v140, v149, v5);
      v150 = v186[41];
      if (!*(v150 + 16))
      {
        goto LABEL_60;
      }

      v151 = *(v150 + 40);
      sub_224AC22E8(&qword_281350C70, MEMORY[0x277CF9E98]);

      v152 = sub_224DAED88();
      v153 = -1 << *(v150 + 32);
      v154 = v152 & ~v153;
      if ((*(v150 + 56 + ((v154 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v154))
      {
        break;
      }

LABEL_59:

      v131 = v181;
      v135 = v175;
LABEL_60:
      v142 = v184;
      (v192)(v184, v140, v5);
      v143 = v196;
      sub_224ADB0B0(v196, v142);
      v144 = *v191;
      (*v191)(v143, v5);
      result = (v144)(v140, v5);
      v139 = v187;
      if (!v138)
      {
        goto LABEL_61;
      }
    }

    v155 = ~v153;
    while (1)
    {
      v156 = v196;
      (v192)(v196, *(v150 + 48) + v154 * v190, v5);
      sub_224AC22E8(&qword_281350C68, MEMORY[0x277CF9E98]);
      v157 = sub_224DAEDD8();
      v158 = *v191;
      (*v191)(v156, v5);
      if (v157)
      {
        break;
      }

      v154 = (v154 + 1) & v155;
      v140 = v194;
      if (((*(v150 + 56 + ((v154 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v154) & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v159 = v184;
    v160 = v194;
    (v192)(v184, v194, v5);
    v161 = v196;
    sub_224ADB0B0(v196, v159);
    v158(v161, v5);
    result = (v158)(v160, v5);
    v140 = v160;
    v131 = v181;
    v135 = v175;
    v139 = v187;
  }

  while (v138);
LABEL_61:
  while (1)
  {
    v145 = v133 + 1;
    if (__OFADD__(v133, 1))
    {
      break;
    }

    if (v145 >= v139)
    {

      v162 = v183;
      v63 = v188;
      v60 = v177;
      (v177)(v183, v189, v188);
      v163 = v198;
      v164 = v193;
      v165 = swift_isUniquelyReferenced_nonNull_native();
      v197 = v164;
      sub_224B1F170(v163, v162, v165);
      v141 = v179;
      v179(v162, v63);
      v64 = v197;
      goto LABEL_75;
    }

    v138 = *&v135[8 * v145];
    ++v133;
    if (v138)
    {
      v133 = v145;
      goto LABEL_65;
    }
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_224ABE324(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppTokenInfo(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB8C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v2[5];
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  v15 = sub_224DAB8F8();
  (*(v9 + 8))(v12, v8);
  if (v15)
  {
    v15 = sub_224DAC588();
    v12 = v16;
    if (qword_27D6F2CF0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = sub_224DAB258();
  __swift_project_value_buffer(v17, qword_27D6F71E0);

  v18 = sub_224DAB228();
  v19 = sub_224DAF2A8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29 = a1;
    v21 = v20;
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136380675;
    *(v21 + 4) = sub_224A33F74(v15, v12, &v30);
    _os_log_impl(&dword_224A2F000, v18, v19, "Invalidating token: %{private}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x22AA5EED0](v22, -1, -1);
    MEMORY[0x22AA5EED0](v21, -1, -1);
  }

  sub_224DAC598();
  v23 = *(v4 + 24);
  v24 = sub_224DA9878();
  (*(*(v24 - 8) + 56))(&v7[v23], 1, 1, v24);
  v25 = &v7[*(v4 + 20)];
  *v25 = v15;
  v25[1] = v12;

  sub_224CC221C(v7);
  v26 = v2[27];
  v27 = v2[28];
  __swift_project_boxed_opaque_existential_1(v2 + 24, v26);
  (*(v27 + 32))(v15, v12, v26, v27);

  return sub_224AC1F14(v7, type metadata accessor for AppTokenInfo);
}

uint64_t sub_224ABE690(uint64_t a1)
{
  v37 = sub_224DAE0D8();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_224DAF798();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_224DAE0C8();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_224A3DFD8((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_224A3E204(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_224A3E204(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_224ABE998(uint64_t a1)
{
  v3 = sub_224DAB8C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 40);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_224DAB8F8();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    result = swift_beginAccess();
    v11 = 0;
    v12 = *(v1 + 64);
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = v11;
LABEL_11:
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v19 = v18 | (v17 << 6);
      if (*(*(v12 + 56) + 16 * v19) == a1)
      {
        v20 = (*(v12 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];

        return v22;
      }
    }

    while (1)
    {
      v17 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v17 >= v16)
      {
        return 0;
      }

      v15 = *(v12 + 64 + 8 * v17);
      ++v11;
      if (v15)
      {
        v11 = v17;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_224ABEBC4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v91 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v96 = &v83 - v10;
  v94 = type metadata accessor for AppTokenInfo(0);
  v11 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v97 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_224DAC5E8();
  v95 = *(v93 - 8);
  v13 = *(v95 + 64);
  MEMORY[0x28223BE20](v93);
  v92 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DABD48();
  v86 = *(v15 - 8);
  v87 = v15;
  v16 = *(v86 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_224DAB8C8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = v4[5];
  *v23 = v24;
  (*(v20 + 104))(v23, *MEMORY[0x277D85200], v19);
  v25 = v24;
  v26 = sub_224DAB8F8();
  (*(v20 + 8))(v23, v19);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_9;
  }

  v27 = sub_224ABE998(a1);
  if (v28)
  {
    v29 = v27;
    v30 = v28;

    v31 = a3;
    v32 = a3;
    v33 = v91;
    sub_224A77FD0(v32, v91);
    sub_224DABD18();
    v34 = v4[22];
    v35 = v4[23];
    __swift_project_boxed_opaque_existential_1(v4 + 19, v34);
    if ((*(v35 + 24))(v18, v34, v35))
    {
      if (qword_27D6F2CF0 != -1)
      {
        swift_once();
      }

      v36 = sub_224DAB258();
      __swift_project_value_buffer(v36, qword_27D6F71E0);

      sub_224A77FD0(v31, v33);
      v37 = sub_224DAB228();
      v38 = sub_224DAF2A8();
      sub_224A78024(v31, v33);

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        LODWORD(v89) = v38;
        v40 = v39;
        v98 = swift_slowAlloc();
        v90 = a1;
        v41 = v98;
        *v40 = 136446466;
        v42 = sub_224DA9698();
        v44 = sub_224A33F74(v42, v43, &v98);

        *(v40 + 4) = v44;
        *(v40 + 12) = 2082;
        *(v40 + 14) = sub_224A33F74(v29, v30, &v98);
        _os_log_impl(&dword_224A2F000, v37, v89, "Received public token: %{public}s for environment: %{public}s", v40, 0x16u);
        swift_arrayDestroy();
        v45 = v41;
        a1 = v90;
        MEMORY[0x22AA5EED0](v45, -1, -1);
        MEMORY[0x22AA5EED0](v40, -1, -1);
      }

      v54 = v5[27];
      v55 = v5[28];
      __swift_project_boxed_opaque_existential_1(v5 + 24, v54);
      (*(v55 + 48))(v29, v30, v54, v55);

      v56 = v5[17];
      v57 = v5[18];
      __swift_project_boxed_opaque_existential_1(v5 + 14, v56);
      v58 = (*(v57 + 8))(v56, v57);
      v59 = *(v58 + 16);
      if (v59)
      {
        v84 = v18;
        v60 = *(a1 + OBJC_IVAR____TtC10ChronoCore17APSPushConnection_connection);
        v90 = *(v95 + 16);
        v91 = v60;
        v61 = (*(v95 + 80) + 32) & ~*(v95 + 80);
        v85 = v58;
        v62 = v58 + v61;
        v95 += 16;
        v88 = *(v95 + 56);
        v89 = (v95 - 8);
        do
        {
          v64 = v92;
          v63 = v93;
          v90(v92, v62, v93);
          sub_224DAC598();
          v65 = sub_224DAC588();
          v67 = v66;
          (*v89)(v64, v63);
          v68 = v94;
          v69 = *(v94 + 24);
          v70 = sub_224DA9878();
          v71 = *(v70 - 8);
          (*(v71 + 56))(&v97[v69], 1, 1, v70);
          v72 = &v97[*(v68 + 20)];
          *v72 = v65;
          v72[1] = v67;
          sub_224DAE0C8();
          v73 = objc_allocWithZone(MEMORY[0x277CEEA00]);
          v74 = sub_224DAEDE8();

          v75 = sub_224DAEDE8();
          v76 = [v73 initWithTopic:v74 identifier:v75];

          v77 = v96;
          v78 = v97;
          sub_224A3796C(&v97[v69], v96, &qword_27D6F32B0, &qword_224DB3EA0);
          v79 = 0;
          if ((*(v71 + 48))(v77, 1, v70) != 1)
          {
            v80 = v96;
            v79 = sub_224DA9778();
            (*(v71 + 8))(v80, v70);
          }

          [v76 setExpirationDate_];

          [v91 requestTokenForInfo_];
          sub_224AC1F14(v78, type metadata accessor for AppTokenInfo);
          v62 += v88;
          --v59;
        }

        while (v59);

        v82 = v86;
        v81 = v87;
        v18 = v84;
        goto LABEL_25;
      }
    }

    else
    {

      if (qword_27D6F2CF0 != -1)
      {
        swift_once();
      }

      v50 = sub_224DAB258();
      __swift_project_value_buffer(v50, qword_27D6F71E0);
      v51 = sub_224DAB228();
      v52 = sub_224DAF2A8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_224A2F000, v51, v52, "Public token has not changed", v53, 2u);
        MEMORY[0x22AA5EED0](v53, -1, -1);
      }
    }

    v82 = v86;
    v81 = v87;
LABEL_25:
    (*(v82 + 8))(v18, v81);
    return;
  }

  if (qword_27D6F2CF0 != -1)
  {
    goto LABEL_27;
  }

LABEL_9:
  v46 = sub_224DAB258();
  __swift_project_value_buffer(v46, qword_27D6F71E0);
  v47 = sub_224DAB228();
  v48 = sub_224DAF288();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_224A2F000, v47, v48, "Connection for incoming public token is unknown", v49, 2u);
    MEMORY[0x22AA5EED0](v49, -1, -1);
  }
}

uint64_t sub_224ABF550(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32A8, &qword_224DB3218);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v21 - v16;
  sub_224AC1DB0(a8, &v21 - v16, type metadata accessor for AppTokenInfo);
  v18 = type metadata accessor for AppTokenInfo(0);
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  sub_224ABF69C(a4, a5, a6, a7, v17);
  v19 = sub_224A3311C(v17, &qword_27D6F32A8, &qword_224DB3218);
  return a1(v19);
}

void sub_224ABF69C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v117 = a4;
  v116 = a3;
  v133 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v114 = v109 - v10;
  v11 = sub_224DAE0D8();
  v122 = *(v11 - 8);
  v123 = v11;
  v12 = *(v122 + 64);
  MEMORY[0x28223BE20](v11);
  v124 = v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAE438();
  v119 = *(v14 - 8);
  v120 = v14;
  v15 = *(v119 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v115 = v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = v17;
  MEMORY[0x28223BE20](v16);
  v118 = v109 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v129 = v109 - v21;
  v22 = sub_224DAC5E8();
  v131 = *(v22 - 8);
  v132 = v22;
  v23 = *(v131 + 64);
  MEMORY[0x28223BE20](v22);
  v128 = v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32A8, &qword_224DB3218);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v125 = v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v110 = v109 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v127 = v109 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v121 = v109 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v126 = v109 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = v109 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = v109 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = v109 - v43;
  v45 = sub_224DAB8C8();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  v49 = (v109 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = *(v5 + 40);
  *v49 = v50;
  (*(v46 + 104))(v49, *MEMORY[0x277D85200], v45);
  v51 = v50;
  LOBYTE(v50) = sub_224DAB8F8();
  v53 = *(v46 + 8);
  v52 = v46 + 8;
  v53(v49, v45);
  if ((v50 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_4:
    v109[1] = a1;
    v56 = sub_224DAB258();
    v57 = __swift_project_value_buffer(v56, qword_27D6F71E0);
    sub_224A3796C(a5, v44, &qword_27D6F32A8, &qword_224DB3218);

    v58 = sub_224DAB228();
    v59 = sub_224DAF2A8();
    v60 = os_log_type_enabled(v58, v59);
    v130 = a5;
    v112 = v45;
    v111 = v52;
    if (v60)
    {
      v109[0] = v57;
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v134[0] = v62;
      *v61 = 136446466;
      sub_224A3796C(v44, v42, &qword_27D6F32A8, &qword_224DB3218);
      v63 = v52;
      v64 = type metadata accessor for AppTokenInfo(0);
      v65 = (*(*(v64 - 8) + 48))(v42, 1, v64);

      if (v65 == 1)
      {
        goto LABEL_27;
      }

      sub_224A3311C(v44, &qword_27D6F32A8, &qword_224DB3218);
      v66 = &v42[*(v64 + 20)];
      v67 = *v66;
      v68 = v66[1];

      sub_224AC1F14(v42, type metadata accessor for AppTokenInfo);
      v69 = sub_224A33F74(v67, v68, v134);

      *(v61 + 4) = v69;
      *(v61 + 12) = 2082;
      *(v61 + 14) = sub_224A33F74(v133, v63, v134);
      _os_log_impl(&dword_224A2F000, v58, v59, "Received app token with identifier: %{public}s for environment: %{public}s", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v62, -1, -1);
      MEMORY[0x22AA5EED0](v61, -1, -1);

      a5 = v130;
      v45 = v112;
    }

    else
    {

      sub_224A3311C(v44, &qword_27D6F32A8, &qword_224DB3218);
    }

    sub_224A3317C(v45 + 112, v134);
    v74 = v135;
    v75 = v136;
    __swift_project_boxed_opaque_existential_1(v134, v135);
    sub_224A3796C(a5, v39, &qword_27D6F32A8, &qword_224DB3218);
    v76 = type metadata accessor for AppTokenInfo(0);
    v77 = *(*(v76 - 8) + 48);
    if (v77(v39, 1, v76) != 1)
    {
      v78 = &v39[*(v76 + 20)];
      v79 = *v78;
      v80 = *(v78 + 1);

      sub_224AC1F14(v39, type metadata accessor for AppTokenInfo);
      v81 = v129;
      (*(v75 + 48))(v79, v80, v74, v75);

      v83 = v131;
      v82 = v132;
      if ((*(v131 + 48))(v81, 1, v132) == 1)
      {
        sub_224A3311C(v81, &qword_27D6F3BB0, &unk_224DB8CF0);
        __swift_destroy_boxed_opaque_existential_1(v134);
        v84 = v127;
        sub_224A3796C(v130, v127, &qword_27D6F32A8, &qword_224DB3218);
        v85 = sub_224DAB228();
        v86 = sub_224DAF288();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v134[0] = v88;
          *v87 = 136446210;
          v89 = v110;
          sub_224A3796C(v84, v110, &qword_27D6F32A8, &qword_224DB3218);
          if (v77(v89, 1, v76) == 1)
          {
LABEL_31:
            __break(1u);
            return;
          }

          sub_224A3311C(v84, &qword_27D6F32A8, &qword_224DB3218);
          v90 = (v89 + *(v76 + 20));
          v91 = *v90;
          v92 = v90[1];

          sub_224AC1F14(v89, type metadata accessor for AppTokenInfo);
          v93 = sub_224A33F74(v91, v92, v134);

          *(v87 + 4) = v93;
          _os_log_impl(&dword_224A2F000, v85, v86, "Subscription for token does not exist: %{public}s", v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v88);
          MEMORY[0x22AA5EED0](v88, -1, -1);
          MEMORY[0x22AA5EED0](v87, -1, -1);
        }

        else
        {

          sub_224A3311C(v84, &qword_27D6F32A8, &qword_224DB3218);
        }

        v108 = v125;
        sub_224A3796C(v130, v125, &qword_27D6F32A8, &qword_224DB3218);
        if (v77(v108, 1, v76) != 1)
        {

          sub_224CC221C(v108);
          sub_224AC1F14(v108, type metadata accessor for AppTokenInfo);
          return;
        }

        goto LABEL_29;
      }

      (*(v83 + 32))(v128, v81, v82);
      __swift_destroy_boxed_opaque_existential_1(v134);
      sub_224DAC588();
      v94 = v130;
      v95 = v126;
      sub_224A3796C(v130, v126, &qword_27D6F32A8, &qword_224DB3218);
      if (v77(v95, 1, v76) != 1)
      {
        (*(v122 + 16))(v124, v95, v123);
        sub_224AC1F14(v95, type metadata accessor for AppTokenInfo);
        v96 = v94;
        v97 = v121;
        sub_224A3796C(v96, v121, &qword_27D6F32A8, &qword_224DB3218);
        if (v77(v97, 1, v76) != 1)
        {
          sub_224A3796C(v97 + *(v76 + 24), v114, &qword_27D6F32B0, &qword_224DB3EA0);
          sub_224AC1F14(v97, type metadata accessor for AppTokenInfo);
          sub_224A77FD0(v116, v117);
          v98 = v118;
          sub_224DAE408();
          v99 = v112;
          v100 = v112[27];
          v101 = v112[28];
          __swift_project_boxed_opaque_existential_1(v112 + 24, v100);
          (*(v101 + 16))(v98, v100, v101);
          v102 = v99[6];
          v104 = v119;
          v103 = v120;
          v105 = v115;
          (*(v119 + 16))(v115, v98, v120);
          v106 = (*(v104 + 80) + 24) & ~*(v104 + 80);
          v107 = swift_allocObject();
          *(v107 + 16) = v99;
          (*(v104 + 32))(v107 + v106, v105, v103);

          _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(0xD000000000000011, 0x8000000224DC4EC0, v102, sub_224AC1B84, v107, 0.0);

          (*(v104 + 8))(v98, v103);
          (*(v131 + 8))(v128, v132);
          return;
        }

        goto LABEL_30;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v54 = sub_224ABE998(a1);
  if (v55)
  {
    v52 = v55;
    v45 = v5;
    v133 = v54;
    if (qword_27D6F2CF0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  if (qword_27D6F2CF0 != -1)
  {
    swift_once();
  }

  v70 = sub_224DAB258();
  __swift_project_value_buffer(v70, qword_27D6F71E0);
  v71 = sub_224DAB228();
  v72 = sub_224DAF288();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_224A2F000, v71, v72, "Connection for incoming push token is unknown", v73, 2u);
    MEMORY[0x22AA5EED0](v73, -1, -1);
  }
}

void sub_224AC04BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_224DAE168();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_224DAC5E8();
  v12 = *(v51 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v51);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  sub_224DA9E78();
  sub_224DA9E68();
  v19 = sub_224DA9E08();

  if ((v19 & 1) == 0)
  {
    goto LABEL_7;
  }

  v20 = *MEMORY[0x277CEE9E8];
  if (sub_224DAEE18() == a2 && v21 == a3)
  {
  }

  else
  {
    v23 = sub_224DAFD88();

    if ((v23 & 1) == 0)
    {
LABEL_7:
      v24 = v51;
      (*(v12 + 16))(v16, a1, v51);
      v25 = sub_224DAC5A8();
      sub_224DAE0F8();
      v25(v53, 0);
      if (qword_27D6F2CF0 != -1)
      {
        swift_once();
      }

      v26 = sub_224DAB258();
      __swift_project_value_buffer(v26, qword_27D6F71E0);
      v27 = sub_224DAB228();
      v28 = sub_224DAF2A8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v52 = v30;
        *v29 = 136446466;
        swift_beginAccess();
        v31 = sub_224DAC588();
        v33 = sub_224A33F74(v31, v32, &v52);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2050;
        swift_beginAccess();
        sub_224DAC5B8();
        swift_endAccess();
        v34 = sub_224DAE108();
        (*(v49 + 8))(v11, v50);
        *(v29 + 14) = v34;
        _os_log_impl(&dword_224A2F000, v27, v28, "Reduced budget for %{public}s to: %{public}ld", v29, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x22AA5EED0](v30, -1, -1);
        v35 = v29;
        v24 = v51;
        MEMORY[0x22AA5EED0](v35, -1, -1);
      }

      v36 = v4[17];
      v37 = v4[18];
      __swift_project_boxed_opaque_existential_1(v4 + 14, v36);
      swift_beginAccess();
      (*(v37 + 32))(v16, v36, v37);
      (*(v12 + 8))(v16, v24);
      return;
    }
  }

  if (qword_27D6F2CF0 != -1)
  {
    swift_once();
  }

  v38 = sub_224DAB258();
  __swift_project_value_buffer(v38, qword_27D6F71E0);
  v39 = v51;
  (*(v12 + 16))(v18, a1, v51);
  v40 = sub_224DAB228();
  v41 = sub_224DAF2A8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v53[0] = v43;
    *v42 = 136446210;
    v44 = sub_224DAC588();
    v46 = v45;
    (*(v12 + 8))(v18, v39);
    v47 = sub_224A33F74(v44, v46, v53);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_224A2F000, v40, v41, "Ignoring budget for %{public}s due to widgetKitDeveloperModeEnabled", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x22AA5EED0](v43, -1, -1);
    MEMORY[0x22AA5EED0](v42, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v18, v39);
  }
}

uint64_t sub_224AC0A2C()
{
  v1 = v0;
  v56 = type metadata accessor for SimpleWorkScheduler.Work(0);
  v2 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v58 = (&v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = type metadata accessor for WorkScheduleRequest(0);
  v4 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v57 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_224DA9878();
  v6 = *(v59 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v59);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v51 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v51 - v14;
  v16 = sub_224DAB8C8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v1[5];
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v22 = v21;
  v23 = sub_224DAB8F8();
  v25 = *(v17 + 8);
  v24 = (v17 + 8);
  v25(v20, v16);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_224AC124C(v15);
  sub_224DA9748();
  v26 = sub_224DA9798();
  v24 = v6[1];
  v24(v13, v59);
  v23 = v15;
  if (v26)
  {
    if (qword_27D6F2CF0 == -1)
    {
LABEL_4:
      v27 = sub_224DAB258();
      __swift_project_value_buffer(v27, qword_27D6F71E0);
      v52 = v6[2];
      v52(v10, v23, v59);
      v28 = sub_224DAB228();
      v29 = sub_224DAF2A8();
      v30 = os_log_type_enabled(v28, v29);
      v53 = v24;
      v54 = v23;
      if (v30)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *&v62 = v32;
        *v31 = 136446210;
        sub_224AC22E8(&qword_27D6F32B8, MEMORY[0x277CC9578]);
        v33 = sub_224DAFD28();
        v34 = v24;
        v36 = v35;
        v34(v10, v59);
        v37 = sub_224A33F74(v33, v36, &v62);

        *(v31 + 4) = v37;
        _os_log_impl(&dword_224A2F000, v28, v29, "Scheduling wake to re-evaluate push subscription budgets at %{public}s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        v38 = v32;
        v23 = v54;
        MEMORY[0x22AA5EED0](v38, -1, -1);
        MEMORY[0x22AA5EED0](v31, -1, -1);
      }

      else
      {

        v24(v10, v59);
      }

      v39 = v57;
      v52(v57, v23, v59);
      v40 = v55;
      *(v39 + *(v55 + 20)) = 1;
      v41 = (v39 + *(v40 + 24));
      *v41 = 0xD000000000000025;
      v41[1] = 0x8000000224DC4F00;
      swift_beginAccess();
      sub_224A3796C((v1 + 34), &v62, &qword_27D6F32C0, &qword_224DB3220);
      if (*(&v63 + 1))
      {
        sub_224A3317C(&v62, v60);
        sub_224A3311C(&v62, &qword_27D6F32C0, &qword_224DB3220);
        __swift_project_boxed_opaque_existential_1(v60, v61);
        sub_224DAB2D8();
        __swift_destroy_boxed_opaque_existential_1(v60);
      }

      else
      {
        sub_224A3311C(&v62, &qword_27D6F32C0, &qword_224DB3220);
      }

      v42 = v58;
      v43 = __swift_project_boxed_opaque_existential_1(v1 + 29, v1[32]);
      v44 = swift_allocObject();
      swift_weakInit();
      v45 = *v43;
      v46 = *(*v43 + 16);
      v47 = *(v46 + 16);

      os_unfair_lock_lock(v47);
      sub_224C17234(v45, v39, sub_224AC1F0C, v44, v42);
      os_unfair_lock_unlock(*(v46 + 16));

      v48 = *(v45 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
      sub_224A33088(&qword_281350EF0, &qword_27D6F4A10, &unk_224DB4000);
      sub_224DAB398();
      *(&v63 + 1) = v56;
      v64 = sub_224AC22E8(&qword_27D6F32C8, type metadata accessor for SimpleWorkScheduler.Work);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v62);
      sub_224AC20C8(v42, boxed_opaque_existential_1, type metadata accessor for SimpleWorkScheduler.Work);

      sub_224AC1F14(v39, type metadata accessor for WorkScheduleRequest);
      v53(v54, v59);

      goto LABEL_15;
    }

LABEL_17:
    swift_once();
    goto LABEL_4;
  }

  swift_beginAccess();
  sub_224A3796C((v1 + 34), &v62, &qword_27D6F32C0, &qword_224DB3220);
  if (*(&v63 + 1))
  {
    sub_224A3317C(&v62, v60);
    sub_224A3311C(&v62, &qword_27D6F32C0, &qword_224DB3220);
    __swift_project_boxed_opaque_existential_1(v60, v61);
    sub_224DAB2D8();
    v24(v15, v59);
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  else
  {
    v24(v15, v59);
    sub_224A3311C(&v62, &qword_27D6F32C0, &qword_224DB3220);
  }

  v64 = 0;
  v62 = 0u;
  v63 = 0u;
LABEL_15:
  swift_beginAccess();
  sub_224AC1E9C(&v62, (v1 + 34));
  return swift_endAccess();
}

uint64_t sub_224AC124C@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v69 = &v51 - v5;
  v68 = sub_224DAE168();
  v63 = *(v68 - 8);
  v6 = *(v63 + 64);
  MEMORY[0x28223BE20](v68);
  v67 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_224DAC5E8();
  v8 = *(v59 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DA9878();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v56 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v51 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v51 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v51 - v22;
  v24 = v1[17];
  v25 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v24);
  v26 = a1;
  v27 = (*(v25 + 24))(v24, v25);
  sub_224DA9748();
  (*(v12 + 16))(v26, v23, v11);
  v28 = v27;
  v29 = *(v27 + 16);
  if (!v29)
  {

    return (*(v12 + 8))(v23, v11);
  }

  v55 = v18;
  v51 = v28;
  v52 = v23;
  v31 = *(v8 + 16);
  v30 = v8 + 16;
  v32 = v28 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
  v63 += 8;
  v64 = v31;
  v33 = *(v30 + 56);
  v61 = (v12 + 48);
  v62 = v33;
  v34 = (v12 + 32);
  v53 = v12;
  v54 = v26;
  v57 = (v12 + 8);
  v60 = (v30 - 8);
  v35 = v58;
  v36 = v59;
  v65 = v21;
  v66 = v30;
  do
  {
    v64(v35, v32, v36);
    v40 = v67;
    sub_224DAC5B8();
    v41 = v69;
    sub_224DAE118();
    (*v63)(v40, v68);
    if ((*v61)(v41, 1, v11) == 1)
    {
      (*v60)(v35, v36);
      sub_224A3311C(v41, &qword_27D6F32B0, &qword_224DB3EA0);
      v37 = *v34;
      v38 = v65;
      v39 = v65;
LABEL_4:
      v37(v38);
      goto LABEL_5;
    }

    v42 = v41;
    v37 = *v34;
    v43 = v55;
    (*v34)(v55, v42, v11);
    v44 = v56;
    sub_224DA9728();
    v45 = sub_224DA9788();
    v46 = *v57;
    (*v57)(v44, v11);
    if ((v45 & 1) == 0)
    {
      v46(v43, v11);
      v36 = v59;
      v35 = v58;
      (*v60)(v58, v59);
      v39 = v65;
      v38 = v65;
      v26 = v54;
      goto LABEL_4;
    }

    v47 = v54;
    v48 = sub_224DA9798();
    (*v60)(v58, v59);
    if (v48)
    {
      v46(v47, v11);
      v49 = v65;
      v39 = v65;
    }

    else
    {
      v46(v43, v11);
      v39 = v65;
      v49 = v65;
    }

    v37(v49);
    v26 = v47;
    v35 = v58;
    v36 = v59;
LABEL_5:
    (v37)(v26, v39, v11);
    v32 += v62;
    --v29;
  }

  while (v29);

  v23 = v52;
  v12 = v53;
  return (*(v12 + 8))(v23, v11);
}

uint64_t sub_224AC17EC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v2 = sub_224DAB258();
    __swift_project_value_buffer(v2, qword_27D6F71E0);
    v3 = sub_224DAB228();
    v4 = sub_224DAF2A8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_224A2F000, v3, v4, "Waking to re-evaluate push subscription budgets", v5, 2u);
      MEMORY[0x22AA5EED0](v5, -1, -1);
    }

    v6 = *(v1 + 40);
    v7 = swift_allocObject();
    *(v7 + 16) = sub_224AC1F74;
    *(v7 + 24) = v1;
    aBlock[4] = sub_224A8A838;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A9B6F8;
    aBlock[3] = &block_descriptor;
    v8 = _Block_copy(aBlock);

    dispatch_sync(v6, v8);

    _Block_release(v8);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_224AC1A04(void *a1)
{
  v1 = a1[17];
  v2 = a1[18];
  __swift_project_boxed_opaque_existential_1(a1 + 14, v1);
  result = (*(v2 + 16))(v1, v2);
  v4 = result;
  v5 = 0;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = result + 56;
  v9 = v7 & *(result + 56);
  v10 = (v6 + 63) >> 6;
  while (v9)
  {
LABEL_9:
    v13 = *(v4 + 48) + ((v5 << 10) | (16 * __clz(__rbit64(v9))));
    v15 = *v13;
    v14 = *(v13 + 8);

    sub_224ABC050(v15, v14, 0);
    sub_224AB5474(v15, v14, v11);
    swift_unknownObjectRelease();
    v9 &= v9 - 1;
  }

  while (1)
  {
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v8 + 8 * v12);
    ++v5;
    if (v9)
    {
      v5 = v12;
      goto LABEL_9;
    }
  }
}

uint64_t sub_224AC1B84(uint64_t (*a1)(uint64_t))
{
  v3 = *(sub_224DAE438() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(*(v1 + 16) + 24);
  v6 = sub_224DAB348();
  return a1(v6);
}

uint64_t sub_224AC1C08(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_224A3A40C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_224B0EE4C(v16, a4 & 1);
      v20 = *a5;
      v11 = sub_224A3A40C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_224DAFDD8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_224B250FC();
      v11 = v19;
    }
  }

  v22 = *a5;
  if (v17)
  {
    v23 = (v22[7] + 16 * v11);
    v24 = *v23;
    *v23 = a1;
    v23[1] = &off_283832818;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  v27 = (v22[7] + 16 * v11);
  *v27 = a1;
  v27[1] = &off_283832818;
  v28 = v22[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v29;
}

uint64_t sub_224AC1D9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_224A78024(a1, a2);
  }

  return a1;
}

uint64_t sub_224AC1DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224AC1E18(uint64_t (*a1)(uint64_t))
{
  v3 = *(type metadata accessor for PushEvent() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(*(v1 + 16) + 16);
  v6 = sub_224DAB348();
  return a1(v6);
}

uint64_t sub_224AC1E9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32C0, &qword_224DB3220);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_224AC1F14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_224AC1F7C()
{
  result = qword_27D6F32D0;
  if (!qword_27D6F32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F32D0);
  }

  return result;
}

uint64_t sub_224AC1FD0@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[17];
  v4 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v3);
  result = (*(v4 + 24))(v3, v4);
  *a1 = result;
  return result;
}

uint64_t sub_224AC203C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[27];
  v4 = v1[28];
  __swift_project_boxed_opaque_existential_1(v1 + 24, v3);
  result = (*(v4 + 8))(v3, v4);
  *a1 = result;
  return result;
}

uint64_t sub_224AC20C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_224AC2130(uint64_t (*a1)(void))
{
  v3 = *(type metadata accessor for IncomingMessage(0) - 8);
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));
  v7 = v1[2];
  sub_224ABA44C(v4, v5, v6);
  return a1();
}

unint64_t sub_224AC21B4()
{
  result = qword_281350840;
  if (!qword_281350840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281350840);
  }

  return result;
}

uint64_t sub_224AC2200()
{
  v1 = *(sub_224DAC5E8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_224AB80B0(v2, v3);
}

uint64_t sub_224AC2264()
{
  v1 = *(sub_224DAC5E8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  return sub_224AB6978(v2, v3, v4);
}

uint64_t sub_224AC22E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for PushService.ServerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PushService.ServerError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_224AC24C0()
{
  result = qword_27D6F3310;
  if (!qword_27D6F3310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F3310);
  }

  return result;
}

uint64_t sub_224AC255C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_224AC25D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DABD48();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = *(v1 + 32);
  os_unfair_lock_lock(*(v7 + 16));
  v8 = *(v1 + 16);
  v9 = sub_224C5B090(a1);
  if (v9)
  {
    v10 = *(v2 + 24);
    (*(v5 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = v2;
    (*(v5 + 32))(v12 + v11, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

    _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(0x6573616261746144, 0xE800000000000000, v10, sub_224AC2AB0, v12, 0.0);
  }

  os_unfair_lock_unlock(*(v7 + 16));
  return v9 & 1;
}

uint64_t sub_224AC276C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = sub_224DABD48();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = *(a3 + 40);
  v8 = sub_224DABBC8();
  return a1(v8);
}

uint64_t sub_224AC2AB0(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(*(sub_224DABD48() - 8) + 80);
  v6 = *(v2 + 16);

  return sub_224AC276C(a1, a2, v6);
}

uint64_t sub_224AC2B34()
{
  v1 = *(v0 + 16);
  sub_224DABAD8();
  sub_224DAB978();
}

void *sub_224AC2B88(uint64_t a1)
{
  v49 = a1;
  v2 = sub_224DABD48();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v44 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - v6;
  v50 = sub_224DAF3C8();
  v8 = *(v50 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v50);
  v46 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAF318();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = sub_224DAB848();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  type metadata accessor for PublicTokenStore();
  v15 = swift_allocObject();
  *(v15 + 16) = MEMORY[0x277D84F98];
  v1[2] = v15;
  type metadata accessor for UnfairLock();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *v17 = 0;
  *(v16 + 16) = v17;
  v1[4] = v16;
  sub_224AC319C();
  sub_224DAB7E8();
  v51 = MEMORY[0x277D84F90];
  sub_224AC31E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224AC3240();
  sub_224DAF788();
  (*(v8 + 104))(v46, *MEMORY[0x277D85260], v50);
  v1[3] = sub_224DAF418();
  v1[5] = v49;

  sub_224DAB918();
  v18 = sub_224DAB908();
  v45 = v1;

  v19 = *(v18 + 16);
  v46 = v18;
  v20 = 0;
  if (v19)
  {
    v21 = *(v47 + 16);
    v22 = v18 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
    v49 = *(v47 + 72);
    v50 = v21;
    v23 = (v47 + 8);
    v24 = 0xE000000000000000;
    v25 = v19;
    v26 = v48;
    do
    {
      v50(v7, v22, v26);
      v51 = v20;
      v52 = v24;

      MEMORY[0x22AA5D210](8236, 0xE200000000000000);
      v27 = sub_224DABD28();
      MEMORY[0x22AA5D210](v27);

      v20 = v51;
      v24 = v52;
      (*v23)(v7, v26);
      v22 += v49;
      --v25;
    }

    while (v25);
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  if (qword_281351438 != -1)
  {
    swift_once();
  }

  v28 = sub_224DAB258();
  __swift_project_value_buffer(v28, qword_281364D78);

  v29 = sub_224DAB228();
  v30 = sub_224DAF2A8();

  v31 = os_log_type_enabled(v29, v30);
  v32 = v45;
  if (v31)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v51 = v34;
    *v33 = 136446210;
    v35 = sub_224A33F74(v20, v24, &v51);

    *(v33 + 4) = v35;
    _os_log_impl(&dword_224A2F000, v29, v30, "Restored public tokens for environments: %{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x22AA5EED0](v34, -1, -1);
    MEMORY[0x22AA5EED0](v33, -1, -1);
  }

  else
  {
  }

  v36 = v48;
  v37 = v44;
  if (v19)
  {
    v38 = *(v47 + 16);
    v39 = &v46[(*(v47 + 80) + 32) & ~*(v47 + 80)];
    v40 = *(v47 + 72);
    v41 = (v47 + 8);
    do
    {
      v38(v37, v39, v36);
      v42 = v32[2];
      sub_224C5B090(v37);
      (*v41)(v37, v36);
      v39 += v40;
      --v19;
    }

    while (v19);
  }

  return v32;
}

unint64_t sub_224AC319C()
{
  result = qword_281350A70;
  if (!qword_281350A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281350A70);
  }

  return result;
}

unint64_t sub_224AC31E8()
{
  result = qword_281350A88;
  if (!qword_281350A88)
  {
    sub_224DAF318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350A88);
  }

  return result;
}

unint64_t sub_224AC3240()
{
  result = qword_281350B90;
  if (!qword_281350B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F3470, qword_224DB38B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350B90);
  }

  return result;
}

uint64_t sub_224AC32A4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v5 = *(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3318, &qword_224DB33C0);
    sub_224A33088(&qword_281350F00, &qword_27D6F3318, &qword_224DB33C0);
    v2 = v0;
    v1 = sub_224DAB3A8();
    v3 = *(v0 + 16);
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t sub_224AC3368()
{
  v1 = v0;
  v18 = sub_224DAF3C8();
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v18);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAF318();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_224DAB848();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  *(v0 + 16) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3318, &qword_224DB33C0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v0 + 24) = sub_224DAB358();
  v13 = sub_224AC319C();
  v17[0] = ".powersources.source";
  v17[1] = v13;
  sub_224DAB7E8();
  v19 = MEMORY[0x277D84F90];
  sub_224AC31E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v18);
  *(v0 + 32) = sub_224DAF418();
  *(v0 + 40) = -1;
  *(v0 + 44) = 0;
  v14 = IOPSCopyExternalPowerAdapterDetails();
  v15 = v14 != 0;

  *(v1 + 44) = v15;
  sub_224AC3814();
  return v1;
}

void sub_224AC35FC()
{
  v1 = v0;
  v2 = sub_224DAB8C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 32);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_224DAB8F8();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  v9 = IOPSCopyExternalPowerAdapterDetails();
  v6 = v9;
  if (v9)
  {

    if (*(v1 + 44))
    {
      return;
    }
  }

  else if ((*(v1 + 44) & 1) == 0)
  {
    return;
  }

  if (qword_281351490 != -1)
  {
    goto LABEL_12;
  }

LABEL_7:
  v10 = sub_224DAB258();
  __swift_project_value_buffer(v10, qword_281364E08);
  v11 = sub_224DAB228();
  v12 = sub_224DAF2A8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67240192;
    *(v13 + 4) = v6 != 0;
    _os_log_impl(&dword_224A2F000, v11, v12, "Charging state has changed to %{BOOL,public}d", v13, 8u);
    MEMORY[0x22AA5EED0](v13, -1, -1);
  }

  v14 = v6 != 0;

  *(v1 + 44) = v14;
  v15 = *(v1 + 24);
  v16[15] = v14;
  sub_224DAB348();
}

void sub_224AC3814()
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_224AC3AE4;
  v8[5] = v2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_224AC3A24;
  v8[3] = &block_descriptor_0;
  v3 = _Block_copy(v8);

  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch("com.apple.system.powersources.source", (v0 + 40), v1, v3);
  swift_endAccess();
  _Block_release(v3);
  if (v1)
  {
    if (qword_281351490 != -1)
    {
      swift_once();
    }

    v4 = sub_224DAB258();
    __swift_project_value_buffer(v4, qword_281364E08);
    v5 = sub_224DAB228();
    v6 = sub_224DAF288();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_224A2F000, v5, v6, "Could not register for power source notifications", v7, 2u);
      MEMORY[0x22AA5EED0](v7, -1, -1);
    }
  }
}

uint64_t sub_224AC39CC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224AC35FC();
  }

  return result;
}

uint64_t sub_224AC3A24(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_224AC3A78()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_224AC3AEC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v48 - v5;
  v7 = v0[3];
  if (v7)
  {
    v8 = v0[39];
    v9 = qword_2813652D8;
    if ((*(v8 + qword_2813652D8) & 1) == 0)
    {
      *(v8 + qword_2813652D8) = 1;
      v10 = sub_224DAF128();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v8;

      sub_224D8E744(0, 0, v6, &unk_224DB3508, v11);

      v9 = qword_2813652D8;
    }

    v12 = v1[38];
    if ((*(v12 + v9) & 1) == 0)
    {
      *(v12 + v9) = 1;
      v13 = sub_224DAF128();
      (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v12;

      sub_224D8E744(0, 0, v6, &unk_224DB3510, v14);

      v9 = qword_2813652D8;
    }

    v15 = v1[41];
    if ((*(v15 + v9) & 1) == 0)
    {
      *(v15 + v9) = 1;
      v16 = sub_224DAF128();
      (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = v15;

      sub_224D8E744(0, 0, v6, &unk_224DB3518, v17);

      v9 = qword_2813652D8;
    }

    v18 = v1[40];
    if ((*(v18 + v9) & 1) == 0)
    {
      *(v18 + v9) = 1;
      v19 = sub_224DAF128();
      (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
      v20 = swift_allocObject();
      v20[2] = 0;
      v20[3] = 0;
      v20[4] = v18;

      sub_224D8E744(0, 0, v6, &unk_224DB3520, v20);
    }

    v21 = sub_224DAF128();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v1;

    sub_224D8E744(0, 0, v6, &unk_224DB3530, v22);

    sub_224AC4304();
    sub_224AC4648();
    sub_224AC498C();
    sub_224AC4CD0();
    v23 = v1[21];
    v24 = v1[22];
    v25 = __swift_project_boxed_opaque_existential_1(v1 + 18, v23);
    sub_224ACF838(v18, v25, 0, 0, v1, v23, v24);
    v26 = __swift_project_boxed_opaque_existential_1(v1 + 23, v1[26]);
    result = sub_224ACF49C(v12, *v26, 0, 0, v1);
  }

  if ((v7 & 2) != 0)
  {
    v27 = v1[39];
    v28 = qword_2813652D8;
    if ((*(v27 + qword_2813652D8) & 1) == 0)
    {
      *(v27 + qword_2813652D8) = 1;
      v29 = sub_224DAF128();
      (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
      v30 = swift_allocObject();
      v30[2] = 0;
      v30[3] = 0;
      v30[4] = v27;

      sub_224D8E744(0, 0, v6, &unk_224DB34D8, v30);

      v28 = qword_2813652D8;
    }

    v31 = v1[38];
    if ((*(v31 + v28) & 1) == 0)
    {
      *(v31 + v28) = 1;
      v32 = sub_224DAF128();
      (*(*(v32 - 8) + 56))(v6, 1, 1, v32);
      v33 = swift_allocObject();
      v33[2] = 0;
      v33[3] = 0;
      v33[4] = v31;

      sub_224D8E744(0, 0, v6, &unk_224DB34E0, v33);

      v28 = qword_2813652D8;
    }

    v34 = v1[41];
    if ((*(v34 + v28) & 1) == 0)
    {
      *(v34 + v28) = 1;
      v35 = sub_224DAF128();
      (*(*(v35 - 8) + 56))(v6, 1, 1, v35);
      v36 = swift_allocObject();
      v36[2] = 0;
      v36[3] = 0;
      v36[4] = v34;

      sub_224D8E744(0, 0, v6, &unk_224DB34E8, v36);

      v28 = qword_2813652D8;
    }

    v37 = v1[40];
    if ((*(v37 + v28) & 1) == 0)
    {
      *(v37 + v28) = 1;
      v38 = sub_224DAF128();
      (*(*(v38 - 8) + 56))(v6, 1, 1, v38);
      v39 = swift_allocObject();
      v39[2] = 0;
      v39[3] = 0;
      v39[4] = v37;

      sub_224D8E744(0, 0, v6, &unk_224DB34F0, v39);
    }

    v40 = sub_224DAF128();
    (*(*(v40 - 8) + 56))(v6, 1, 1, v40);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = v1;

    sub_224D8E744(0, 0, v6, &unk_224DB3500, v41);

    v42 = sub_224C9AA18();
    sub_224AC55C8(v42, 3);

    v43 = sub_224C9AA18();
    sub_224AC55C8(v43, 4);

    v44 = v1[21];
    v45 = v1[22];
    v46 = __swift_project_boxed_opaque_existential_1(v1 + 18, v44);
    sub_224ACE600(v46, v37, 0, 0, v1, v44, v45);
    v47 = __swift_project_boxed_opaque_existential_1(v1 + 23, v1[26]);
    return sub_224ACE1F4(*v47, v31, 0, 0, v1);
  }

  return result;
}

uint64_t sub_224AC4304()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3370, &qword_224DB3590);
  v5 = *(v17 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v17);
  v8 = &v16 - v7;
  v9 = v0[31];
  v10 = v0[32];
  __swift_project_boxed_opaque_existential_1(v0 + 28, v9);
  v18 = (*(v10 + 16))(v9, v10);
  v11 = v0[2];
  v19 = v11;
  v12 = sub_224DAF358();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3378, &qword_224DC02D0);
  sub_224AC319C();
  sub_224A33088(&qword_281351040, &qword_27D6F3378, &qword_224DC02D0);
  sub_224ACFEEC(&qword_281350A80, 255, sub_224AC319C);
  sub_224DAB448();
  sub_224A3311C(v4, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&unk_281351220, &qword_27D6F3370, &qword_224DB3590);
  v14 = v17;
  sub_224DAB488();

  (*(v5 + 8))(v8, v14);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

uint64_t sub_224AC4648()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3348, &unk_224DB3560);
  v5 = *(v17 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v17);
  v8 = &v16 - v7;
  v9 = v0[31];
  v10 = v0[32];
  __swift_project_boxed_opaque_existential_1(v0 + 28, v9);
  v18 = (*(v10 + 24))(v9, v10);
  v11 = v0[2];
  v19 = v11;
  v12 = sub_224DAF358();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3350, &unk_224DBD040);
  sub_224AC319C();
  sub_224A33088(&unk_2813510E8, &qword_27D6F3350, &unk_224DBD040);
  sub_224ACFEEC(&qword_281350A80, 255, sub_224AC319C);
  sub_224DAB448();
  sub_224A3311C(v4, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351288, &qword_27D6F3348, &unk_224DB3560);
  v14 = v17;
  sub_224DAB488();

  (*(v5 + 8))(v8, v14);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

uint64_t sub_224AC498C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3370, &qword_224DB3590);
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v18);
  v9 = &v17 - v8;
  v11 = *(v0 + 288);
  v10 = *(v0 + 296);
  __swift_project_boxed_opaque_existential_1((v1 + 264), v11);
  v19 = (*(*(v10 + 8) + 16))(v11);
  v20 = *(v1 + 16);
  v12 = v20;
  v13 = sub_224DAF358();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3378, &qword_224DC02D0);
  sub_224AC319C();
  sub_224A33088(&qword_281351040, &qword_27D6F3378, &qword_224DC02D0);
  sub_224ACFEEC(&qword_281350A80, 255, sub_224AC319C);
  sub_224DAB448();
  sub_224A3311C(v5, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&unk_281351220, &qword_27D6F3370, &qword_224DB3590);
  v15 = v18;
  sub_224DAB488();

  (*(v6 + 8))(v9, v15);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

uint64_t sub_224AC4CD0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3348, &unk_224DB3560);
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v18);
  v9 = &v17 - v8;
  v11 = *(v0 + 288);
  v10 = *(v0 + 296);
  __swift_project_boxed_opaque_existential_1((v1 + 264), v11);
  v19 = (*(*(v10 + 8) + 24))(v11);
  v20 = *(v1 + 16);
  v12 = v20;
  v13 = sub_224DAF358();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3350, &unk_224DBD040);
  sub_224AC319C();
  sub_224A33088(&unk_2813510E8, &qword_27D6F3350, &unk_224DBD040);
  sub_224ACFEEC(&qword_281350A80, 255, sub_224AC319C);
  sub_224DAB448();
  sub_224A3311C(v5, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351288, &qword_27D6F3348, &unk_224DB3560);
  v15 = v18;
  sub_224DAB488();

  (*(v6 + 8))(v9, v15);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

uint64_t sub_224AC5014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33A8, &unk_224DB35D0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33B0, &qword_224DBC7F0);
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224AC5148, 0, 0);
}

uint64_t sub_224AC5148()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
  v7 = *(v6 + 24);
  sub_224DAACA8();
  sub_224DAF158();
  (*(v3 + 8))(v2, v5);
  v8 = *(MEMORY[0x277D85798] + 4);
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_224AC525C;
  v10 = v0[15];
  v11 = v0[13];

  return MEMORY[0x2822003E8](v0 + 8, 0, 0, v11);
}

uint64_t sub_224AC525C()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224AC5358, 0, 0);
}

uint64_t sub_224AC5358()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[9];
    v3 = *(v2 + 320);
    v4 = *(v2 + 16);
    v5 = swift_allocObject();
    v5[2] = v1;
    v5[3] = v2;
    v5[4] = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_224ACFEE0;
    *(v6 + 24) = v5;
    v0[6] = sub_224A8A838;
    v0[7] = v6;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_224A9B6F8;
    v0[5] = &block_descriptor_1;
    v7 = _Block_copy(v0 + 2);
    v8 = v0[7];

    dispatch_sync(v4, v7);
    _Block_release(v7);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }

    else
    {
      v13 = *(MEMORY[0x277D85798] + 4);
      v14 = swift_task_alloc();
      v0[16] = v14;
      *v14 = v0;
      v14[1] = sub_224AC525C;
      v15 = v0[15];
      v12 = v0[13];
      v9 = (v0 + 8);
      v10 = 0;
      v11 = 0;
    }

    return MEMORY[0x2822003E8](v9, v10, v11, v12);
  }

  else
  {
    v16 = v0[12];
    (*(v0[14] + 8))(v0[15], v0[13]);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_224AC55C8(uint64_t a1, int a2)
{
  v3 = v2;
  v21 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33B8, &qword_224DB35F0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20[-v12];
  v22 = a1;
  v23 = *(v3 + 16);
  v14 = v23;
  v15 = sub_224DAF358();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33C0, &qword_224DB35F8);
  sub_224AC319C();
  sub_224A33088(&qword_2813511B0, &qword_27D6F33C0, &qword_224DB35F8);
  sub_224ACFEEC(&qword_281350A80, 255, sub_224AC319C);
  sub_224DAB448();
  sub_224A3311C(v8, &qword_27D6F5090, &qword_224DB5C30);

  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v21;
  sub_224A33088(&qword_2813512F0, &qword_27D6F33B8, &qword_224DB35F0);
  sub_224DAB488();

  (*(v10 + 8))(v13, v9);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

uint64_t sub_224AC58F8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v1 = v0[13];

  v2 = v0[14];
  swift_unknownObjectRelease();
  v3 = v0[16];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  __swift_destroy_boxed_opaque_existential_1(v0 + 23);
  __swift_destroy_boxed_opaque_existential_1(v0 + 28);
  __swift_destroy_boxed_opaque_existential_1(v0 + 33);
  v4 = v0[38];

  v5 = v0[39];

  v6 = v0[40];

  v7 = v0[41];

  return __swift_destroy_boxed_opaque_existential_1(v0 + 42);
}

uint64_t sub_224AC5974()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v1 = *(v0 + 104);

  v2 = *(v0 + 112);
  swift_unknownObjectRelease();
  v3 = *(v0 + 128);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  __swift_destroy_boxed_opaque_existential_1((v0 + 224));
  __swift_destroy_boxed_opaque_existential_1((v0 + 264));
  v4 = *(v0 + 304);

  v5 = *(v0 + 312);

  v6 = *(v0 + 320);

  v7 = *(v0 + 328);

  __swift_destroy_boxed_opaque_existential_1((v0 + 336));
  return v0;
}

uint64_t sub_224AC59FC()
{
  sub_224AC5974();

  return swift_deallocClassInstance();
}

uint64_t sub_224AC5A60()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = v1[22];
  v4 = __swift_project_boxed_opaque_existential_1(v1 + 18, v2);
  sub_224ACE9E4(v4, v1, v2, v3);
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 23, v1[26]);
  v6 = *(*v5 + 40);
  v7 = *(*v5 + 48);
  __swift_project_boxed_opaque_existential_1((*v5 + 16), v6);
  (*(*(v7 + 8) + 80))(sub_224ACEAF8, v1, v6);
  return sub_224AC3AEC();
}

uint64_t sub_224AC5B54(uint64_t a1, uint64_t a2)
{
  result = sub_224ACFEEC(qword_281355308, a2, type metadata accessor for ControlReplicationProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224AC5BAC(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - v9;
  v11 = sub_224DA9908();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  sub_224DAA1F8();
  if (v16)
  {
    sub_224DA9888();

    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_224A3311C(v10, &unk_27D6F5630, &unk_224DB34C0);
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v17 = sub_224DAB258();
      __swift_project_value_buffer(v17, qword_281365120);

      v18 = sub_224DAB228();
      v19 = sub_224DAF288();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v38 = v21;
        *v20 = 136446210;
        sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
        v22 = sub_224DAFD28();
        v24 = sub_224A33F74(v22, v23, &v38);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_224A2F000, v18, v19, "Found remote host with an invalid relationship ID: %{public}s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x22AA5EED0](v21, -1, -1);
        MEMORY[0x22AA5EED0](v20, -1, -1);
      }

      return 0;
    }

    (*(v12 + 32))(v15, v10, v11);
    v25 = a2[10];
    __swift_project_boxed_opaque_existential_1(a2 + 4, a2[7]);
    v26 = *(v25 + 16);
    sub_224DAAC98();
    v27 = sub_224DAAE38();
    if ((*(*(v27 - 8) + 48))(v6, 1, v27) == 1)
    {
      sub_224A3311C(v6, &qword_27D6F3320, &unk_224DBD6F0);
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v28 = sub_224DAB258();
      __swift_project_value_buffer(v28, qword_281365120);

      v29 = sub_224DAB228();
      v30 = sub_224DAF288();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = v37;
        *v31 = 136446210;
        sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
        v32 = sub_224DAFD28();
        v34 = sub_224A33F74(v32, v33, &v38);

        *(v31 + 4) = v34;
        _os_log_impl(&dword_224A2F000, v29, v30, "Found remote host for a missing relationship ID: %{public}s", v31, 0xCu);
        v35 = v37;
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x22AA5EED0](v35, -1, -1);
        MEMORY[0x22AA5EED0](v31, -1, -1);
      }

      (*(v12 + 8))(v15, v11);
      return 0;
    }

    (*(v12 + 8))(v15, v11);
    sub_224A3311C(v6, &qword_27D6F3320, &unk_224DBD6F0);
  }

  return 1;
}

uint64_t sub_224AC6138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33A8, &unk_224DB35D0);
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33B0, &qword_224DBC7F0);
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224AC626C, 0, 0);
}

uint64_t sub_224AC626C()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
  v7 = *(v6 + 24);
  sub_224DAACA8();
  sub_224DAF158();
  (*(v3 + 8))(v2, v5);
  v8 = *(MEMORY[0x277D85798] + 4);
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_224AC6380;
  v10 = v0[9];
  v11 = v0[7];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v11);
}

uint64_t sub_224AC6380()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224AC647C, 0, 0);
}

uint64_t sub_224AC647C()
{
  if (v0[2])
  {
    v1 = v0[3];

    v2 = v1[21];
    v3 = v1[22];
    v4 = __swift_project_boxed_opaque_existential_1(v1 + 18, v2);
    sub_224ACE9E4(v4, v1, v2, v3);
    v5 = __swift_project_boxed_opaque_existential_1(v1 + 23, v1[26]);
    v6 = *(*v5 + 40);
    v7 = *(*v5 + 48);
    __swift_project_boxed_opaque_existential_1((*v5 + 16), v6);
    (*(*(v7 + 8) + 80))(sub_224ACFFA0, v1, v6);
    v8 = *(MEMORY[0x277D85798] + 4);
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_224AC6380;
    v10 = v0[9];
    v11 = v0[7];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v11);
  }

  else
  {
    v12 = v0[6];
    (*(v0[8] + 8))(v0[9], v0[7]);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_224AC661C(void *a1, void *a2, uint64_t a3)
{
  v93 = a3;
  v107 = a2;
  v95 = sub_224DAB8C8();
  v85 = *(v95 - 8);
  v4 = *(v85 + 64);
  MEMORY[0x28223BE20](v95);
  v94 = (&v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3338, &unk_224DB3550);
  v6 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v91 = &v85 - v7;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v89 = *(v96 - 8);
  v8 = *(v89 + 64);
  v9 = MEMORY[0x28223BE20](v96);
  v90 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v88 = &v85 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3388, &unk_224DB35A0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v105 = &v85 - v17;
  v104 = sub_224DAADC8();
  v18 = *(v104 - 1);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v104);
  v103 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v102 = &v85 - v22;
  v23 = sub_224DAAE38();
  v106 = *(v23 - 8);
  v24 = *(v106 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v86 = &v85 - v29;
  v108 = a1;

  v30 = 0;
  sub_224ACC9A4(&v108);
  v31 = v108;
  v101 = v108[2];
  if (v101)
  {
    v32 = 0;
    v100 = (v106 + 16);
    LODWORD(v99) = *MEMORY[0x277D46750];
    v33 = (v18 + 8);
    v97 = (v106 + 8);
    v98 = (v18 + 104);
    v87 = v16;
    v34 = v104;
    while (v32 < v31[2])
    {
      v35 = v31;
      (*(v106 + 16))(v26, v31 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v32, v23);
      v36 = v102;
      (*v98)(v102, v99, v34);
      v30 = v103;
      sub_224DAADD8();
      v37 = MEMORY[0x22AA59120](v36, v30);
      v38 = *v33;
      (*v33)(v30, v34);
      v38(v36, v34);
      if (v37)
      {

        v40 = v106;
        v39 = v86;
        (*(v106 + 32))(v86, v26, v23);
        (*(v40 + 56))(v39, 0, 1, v23);
        v41 = v107[21];
        v42 = v107[22];
        __swift_project_boxed_opaque_existential_1(v107 + 18, v41);
        v43 = (*(v42 + 24))(256, v41, v42);
        v44 = v96;
        v45 = v90;
        v46 = v87;
        if (!v43)
        {
          return sub_224A3311C(v39, &qword_27D6F3320, &unk_224DBD6F0);
        }

        v47 = sub_224CFEA64(v43);

        v30 = 0;
        v48 = v47 + 64;
        v49 = 1 << v47[32];
        v50 = -1;
        if (v49 < 64)
        {
          v50 = ~(-1 << v49);
        }

        v51 = v50 & *(v47 + 8);
        v97 = ((v49 + 63) >> 6);
        v98 = v47;
        v104 = (v89 + 16);
        v106 = v89 + 32;
        LODWORD(v103) = *MEMORY[0x277D85200];
        v101 = (v85 + 8);
        v102 = (v85 + 104);
        v99 = v47 + 64;
        v100 = (v89 + 8);
        while (1)
        {
          v57 = v105;
          if (!v51)
          {
            break;
          }

          v58 = v30;
LABEL_23:
          v62 = __clz(__rbit64(v51));
          v51 &= v51 - 1;
          v63 = v62 | (v58 << 6);
          v64 = v98;
          v65 = v89;
          (*(v89 + 16))(v88, *(v98 + 6) + *(v89 + 72) * v63, v44);
          v66 = *(*(v64 + 7) + 8 * v63);
          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
          v68 = *(v67 + 48);
          v69 = *(v65 + 32);
          v46 = v87;
          v70 = v44;
          v69();
          *(v46 + v68) = v66;
          (*(*(v67 - 8) + 56))(v46, 0, 1, v67);
          v71 = v66;
          v61 = v107;
          v45 = v90;
          v57 = v105;
LABEL_24:
          sub_224A44E4C(v46, v57, &qword_27D6F3388, &unk_224DB35A0);
          v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
          if ((*(*(v72 - 8) + 48))(v57, 1, v72) == 1)
          {

            v39 = v86;
            return sub_224A3311C(v39, &qword_27D6F3320, &unk_224DBD6F0);
          }

          (*v106)(v45, v57, v70);
          v73 = v61[2];
          v75 = v94;
          v74 = v95;
          *v94 = v73;
          (*v102)(v75, v103, v74);
          v76 = v73;
          LOBYTE(v73) = sub_224DAB8F8();
          (*v101)(v75, v74);
          if ((v73 & 1) == 0)
          {
            goto LABEL_36;
          }

          v77 = v61[21];
          v78 = v61[22];
          __swift_project_boxed_opaque_existential_1(v61 + 18, v77);
          v79 = (*(v78 + 24))(768, v77, v78);
          if (v79)
          {
            v80 = sub_224CFEA64(v79);

            v44 = v96;
            if (*(v80 + 2) && (v81 = sub_224A683FC(v45), (v82 & 1) != 0))
            {
              v52 = *(*(v80 + 7) + 8 * v81);
            }

            else
            {

              v52 = 0;
            }
          }

          else
          {
            v52 = 0;
            v44 = v96;
          }

          v53 = v91;
          (*v104)(v91, v45, v44);
          v55 = v92;
          v54 = v93;
          *&v53[*(v92 + 36)] = v52;
          v56 = &v53[*(v55 + 40)];
          *v56 = 1;
          v56[8] = 0;
          sub_224C9AB2C(v53, v54);
          sub_224A3311C(v53, &qword_27D6F3338, &unk_224DB3550);
          (*v100)(v45, v44);
          v48 = v99;
        }

        if (v97 <= (v30 + 1))
        {
          v59 = v30 + 1;
        }

        else
        {
          v59 = v97;
        }

        v60 = v59 - 1;
        v61 = v107;
        while (1)
        {
          v58 = (v30 + 1);
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v58 >= v97)
          {
            v70 = v44;
            v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
            (*(*(v83 - 8) + 56))(v46, 1, 1, v83);
            v51 = 0;
            v30 = v60;
            goto LABEL_24;
          }

          v51 = *&v48[8 * v58];
          ++v30;
          if (v51)
          {
            v30 = v58;
            goto LABEL_23;
          }
        }

        __break(1u);
        break;
      }

      ++v32;
      (*v97)(v26, v23);
      v31 = v35;
      if (v101 == v32)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_6:

    v39 = v86;
    (*(v106 + 56))(v86, 1, 1, v23);
    return sub_224A3311C(v39, &qword_27D6F3320, &unk_224DBD6F0);
  }

  return result;
}

uint64_t sub_224AC7088@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_224DAB8C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + 16);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v13 = v12;
  LOBYTE(v12) = sub_224DAB8F8();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v15 = a2[3];
    v16 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v15);
    v17 = (*(v16 + 24))(768, v15, v16);
    if (v17)
    {
      v18 = sub_224CFEA64(v17);

      if (*(v18 + 2))
      {
        v19 = sub_224A683FC(a1);
        if (v20)
        {
          v21 = *(*(v18 + 7) + 8 * v19);

LABEL_8:
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
          (*(*(v22 - 8) + 16))(a3, a1, v22);
          result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3338, &unk_224DB3550);
          *(a3 + *(result + 36)) = v21;
          v23 = a3 + *(result + 40);
          *v23 = 1;
          *(v23 + 8) = 0;
          return result;
        }
      }
    }

    v21 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_224AC72A8(unint64_t *a1)
{
  v136 = sub_224DAB0B8();
  v2 = *(v136 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v136);
  v135 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v134 = &v98 - v7;
  v143 = sub_224DAC2B8();
  v8 = *(v143 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v143);
  v12 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v98 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v15 = *(v114 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v114);
  v113 = &v98 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3380, &qword_224DB3598);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v112 = &v98 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v106 = *(v21 - 8);
  v22 = *(v106 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v105 = &v98 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3388, &unk_224DB35A0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v121 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v120 = &v98 - v31;
  v32 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (v32 >> 62)
  {
    goto LABEL_56;
  }

  v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
LABEL_57:

    return;
  }

LABEL_4:
  v118 = 0;
  v103 = v32 & 0xC000000000000001;
  v99 = v32 & 0xFFFFFFFFFFFFFF8;
  v100 = v32;
  v98 = v32 + 32;
  v141 = (v106 + 16);
  v119 = (v106 + 32);
  v111 = (v15 + 56);
  v110 = (v8 + 56);
  v109 = (v15 + 32);
  v131 = (v106 + 56);
  v130 = (v8 + 16);
  v129 = (v8 + 8);
  v128 = *MEMORY[0x277D46828];
  v127 = (v2 + 104);
  v126 = (v2 + 8);
  v2 = 0;
  v108 = (v106 + 8);
  *&v33 = 136446210;
  v124 = v33;
  v32 = v121;
  v15 = v120;
  v102 = v34;
  v132 = v21;
  v133 = v14;
  v142 = v25;
  while (1)
  {
    if (v103)
    {
      v35 = MEMORY[0x22AA5DCC0](v2, v100);
    }

    else
    {
      if (v2 >= *(v99 + 16))
      {
        goto LABEL_55;
      }

      v35 = *(v98 + 8 * v2);
    }

    v36 = v35;
    if (__OFADD__(v2++, 1))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      v34 = sub_224DAF838();
      if (!v34)
      {
        goto LABEL_57;
      }

      goto LABEL_4;
    }

    v104 = v2;
    v8 = [v35 extensionIdentity];
    v38 = v8 + *MEMORY[0x277CFA128];
    swift_beginAccess();
    v39 = *(v38 + 8);

    if (!v39)
    {
      break;
    }

LABEL_6:
    v2 = v104;
    if (v104 == v102)
    {
      goto LABEL_57;
    }
  }

  v101 = v36;
  v40 = Strong[26];
  v41 = Strong[27];
  v8 = __swift_project_boxed_opaque_existential_1(Strong + 23, v40);
  v42 = (*(*(v41 + 8) + 24))(512, v40);
  if (!v42)
  {
    goto LABEL_52;
  }

  v117 = v42;
  v43 = sub_224CFEA64(v42);
  v44 = 0;
  v46 = v43 + 64;
  v45 = *(v43 + 8);
  v107 = v43;
  v47 = 1 << v43[32];
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  else
  {
    v48 = -1;
  }

  v49 = v48 & v45;
  v50 = (v47 + 63) >> 6;
  v116 = v43 + 64;
  v115 = v50;
  while (2)
  {
    if (v49)
    {
      v123 = v44;
      v51 = v44;
LABEL_30:
      v122 = (v49 - 1) & v49;
      v54 = __clz(__rbit64(v49)) | (v51 << 6);
      v55 = v107;
      v56 = v106;
      v57 = v105;
      (*(v106 + 16))(v105, *(v107 + 6) + *(v106 + 72) * v54, v21);
      v8 = *(*(v55 + 7) + 8 * v54);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
      v59 = *(v58 + 48);
      v60 = *(v56 + 32);
      v32 = v121;
      v60(v121, v57, v21);
      *(v32 + v59) = v8;
      (*(*(v58 - 8) + 56))(v32, 0, 1, v58);
      v61 = v8;
      v15 = v120;
LABEL_31:
      sub_224A44E4C(v32, v15, &qword_27D6F3388, &unk_224DB35A0);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
      if ((*(*(v62 - 8) + 48))(v15, 1, v62) == 1)
      {

        goto LABEL_6;
      }

      (*v119)(v25, v15, v21);
      v63 = v113;
      sub_224DAA238();
      v15 = v111;
      v8 = *v111;
      v64 = v112;
      v32 = v114;
      (*v111)(v112, 1, 1, v114);
      v65 = type metadata accessor for ControlHostDescriptorPredicate();
      *(v64 + v65[5]) = 3;
      *(v64 + v65[6]) = 3;
      v66 = v65[7];
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      (*(*(v67 - 8) + 56))(v64 + v66, 1, 1, v67);
      (*v110)(v64 + v65[8], 1, 1, v143);
      sub_224A3311C(v64, &qword_27D6F3390, &qword_224DB35B8);
      (*v109)(v64, v63, v32);
      (v8)(v64, 0, 1, v32);
      v68 = (*(*(v65 - 1) + 56))(v64, 0, 1, v65);
      v69 = v117;
      if (*(v117 + 16))
      {
        MEMORY[0x28223BE20](v68);
        *(&v98 - 2) = v64;

        v70 = v69;
        v71 = v118;
        v72 = sub_224A6C07C(sub_224ACFF64, (&v98 - 4), v70);
        v73 = sub_224D44404(v72);

        v2 = &v98;
        MEMORY[0x28223BE20](v74);
        *(&v98 - 2) = v64;
        v8 = sub_224A4ECE8(sub_224ACFF80, (&v98 - 4), v73);
        v118 = v71;
        sub_224A3311C(v64, &qword_27D6F3380, &qword_224DB3598);
        v75 = v8;
        if (v8 >> 62)
        {
          v2 = v8;
          v76 = sub_224DAF838();
          v75 = v8;
          v25 = v142;
          v77 = v143;
          if (v76)
          {
LABEL_35:
            if (v76 < 1)
            {
              __break(1u);
              goto LABEL_54;
            }

            v78 = 0;
            v138 = v75 & 0xC000000000000001;
            v139 = v76;
            v140 = v75;
            do
            {
              if (v138)
              {
                v82 = MEMORY[0x22AA5DCC0](v78);
              }

              else
              {
                v82 = *(v75 + 8 * v78 + 32);
              }

              v144 = v82;
              v83 = [v82 controlIdentity];
              v84 = v134;
              (*v141)(v134, v25, v21);
              (*v131)(v84, 0, 1, v21);
              sub_224DAC298();
              if (qword_2813516C8 != -1)
              {
                swift_once();
              }

              v85 = sub_224DAB258();
              __swift_project_value_buffer(v85, qword_281365120);
              (*v130)(v12, v14, v77);
              v86 = v12;
              v87 = sub_224DAB228();
              v88 = sub_224DAF2A8();
              v89 = os_log_type_enabled(v87, v88);
              v90 = v129;
              if (v89)
              {
                v91 = swift_slowAlloc();
                v125 = swift_slowAlloc();
                v145 = v125;
                *v91 = v124;
                sub_224ACFEEC(&unk_281350E08, 255, MEMORY[0x277CF99B8]);
                v92 = sub_224DAFD28();
                v94 = v93;
                v79 = *v90;
                (*v90)(v86, v143);
                v95 = sub_224A33F74(v92, v94, &v145);
                v77 = v143;

                *(v91 + 4) = v95;
                _os_log_impl(&dword_224A2F000, v87, v88, "Received local preview control archive for %{public}s", v91, 0xCu);
                v96 = v125;
                __swift_destroy_boxed_opaque_existential_1(v125);
                MEMORY[0x22AA5EED0](v96, -1, -1);
                MEMORY[0x22AA5EED0](v91, -1, -1);
              }

              else
              {

                v79 = *v90;
                (*v90)(v86, v77);
              }

              v12 = v86;
              ++v78;
              v80 = v135;
              v81 = v136;
              (*v127)(v135, v128, v136);
              v14 = v133;
              v8 = Strong;
              sub_224AC8228(v133, 3, v80);

              (*v126)(v80, v81);
              v79(v14, v77);
              v75 = v140;
              v21 = v132;
              v25 = v142;
            }

            while (v139 != v78);
          }
        }

        else
        {
          v76 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v25 = v142;
          v77 = v143;
          if (v76)
          {
            goto LABEL_35;
          }
        }

        (*v108)(v25, v21);
      }

      else
      {
        v25 = v142;
        (*v108)(v142, v21);
        sub_224A3311C(v64, &qword_27D6F3380, &qword_224DB3598);
      }

      v32 = v121;
      v15 = v120;
      v46 = v116;
      v50 = v115;
      v44 = v123;
      v49 = v122;
      continue;
    }

    break;
  }

  if (v50 <= v44 + 1)
  {
    v52 = v44 + 1;
  }

  else
  {
    v52 = v50;
  }

  v53 = v52 - 1;
  while (1)
  {
    v51 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v51 >= v50)
    {
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
      (*(*(v97 - 8) + 56))(v32, 1, 1, v97);
      v122 = 0;
      v123 = v53;
      goto LABEL_31;
    }

    v49 = *&v46[8 * v51];
    ++v44;
    if (v49)
    {
      v123 = v51;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_52:
}

uint64_t sub_224AC8228(uint64_t a1, int a2, uint64_t a3)
{
  v44 = a3;
  v5 = sub_224DAC2B8();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v43 = a2;
  v13 = sub_224ACFC44(a2);
  v14 = qword_2813516C8;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_224DAB258();
  v16 = __swift_project_value_buffer(v15, qword_281365120);
  v40 = v6[2];
  v40(v12, a1, v5);
  v41 = v16;
  v17 = sub_224DAB228();
  v18 = sub_224DAF2A8();
  if (os_log_type_enabled(v17, v18))
  {
    v37 = a1;
    v38 = v10;
    v19 = v6;
    v39 = v13;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v45[0] = v21;
    v22 = 0xEB00000000726564;
    v23 = v43;
    *v20 = 136446466;
    v24 = 0xE800000000000000;
    v25 = 0x656E696C656D6974;
    v26 = 0xEF77656976657270;
    if (v23 != 3)
    {
      v26 = 0xEC0000006576696CLL;
    }

    if (v23 != 2)
    {
      v25 = 0x2D6C6F72746E6F63;
      v24 = v26;
    }

    v27 = 0x746F687370616E73;
    if (v23)
    {
      v22 = 0xE800000000000000;
    }

    else
    {
      v27 = 0x6C6F686563616C70;
    }

    if (v23 <= 1)
    {
      v28 = v27;
    }

    else
    {
      v28 = v25;
    }

    if (v23 <= 1)
    {
      v29 = v22;
    }

    else
    {
      v29 = v24;
    }

    v30 = sub_224A33F74(v28, v29, v45);

    *(v20 + 4) = v30;
    *(v20 + 12) = 2082;
    sub_224ACFEEC(&unk_281350E08, 255, MEMORY[0x277CF99B8]);
    v31 = sub_224DAFD28();
    v33 = v32;
    v42 = v19[1];
    v42(v12, v5);
    v34 = sub_224A33F74(v31, v33, v45);

    *(v20 + 14) = v34;
    _os_log_impl(&dword_224A2F000, v17, v18, "Requesting replication of %{public}s archive for key: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v21, -1, -1);
    MEMORY[0x22AA5EED0](v20, -1, -1);

    a1 = v37;
  }

  else
  {

    v42 = v6[1];
    v42(v12, v5);
  }

  sub_224ACB4E4(a1, v44);
}

uint64_t sub_224AC88F4(uint64_t a1, int a2)
{
  v4 = sub_224DAC2B8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = v25 - v10;
  v26 = a2;
  sub_224ACFC44(a2);
  v12 = qword_2813516C8;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = sub_224DAB258();
  v14 = __swift_project_value_buffer(v13, qword_281365120);
  v28 = v5[2];
  v28(v11, a1, v4);
  v29 = v14;
  v15 = sub_224DAB228();
  v16 = sub_224DAF2A8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = v5;
    v18 = v17;
    v25[0] = swift_slowAlloc();
    v25[1] = v9;
    v31 = v25[0];
    *v18 = 136446210;
    sub_224ACFEEC(&unk_281350E08, 255, MEMORY[0x277CF99B8]);
    v19 = sub_224DAFD28();
    v21 = v20;
    v30 = v27[1];
    v30(v11, v4);
    v22 = sub_224A33F74(v19, v21, &v31);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_224A2F000, v15, v16, "Requesting deletion of archive for: %{public}s", v18, 0xCu);
    v23 = v25[0];
    __swift_destroy_boxed_opaque_existential_1(v25[0]);
    MEMORY[0x22AA5EED0](v23, -1, -1);
    MEMORY[0x22AA5EED0](v18, -1, -1);
  }

  else
  {

    v30 = v5[1];
    v30(v11, v4);
  }

  sub_224ACC448(a1);
}

void sub_224AC8ED4(unint64_t *a1)
{
  v136 = sub_224DAB0B8();
  v2 = *(v136 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v136);
  v135 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v134 = &v98 - v7;
  v143 = sub_224DAC2B8();
  v8 = *(v143 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v143);
  v12 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v98 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v15 = *(v114 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v114);
  v113 = &v98 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3380, &qword_224DB3598);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v112 = &v98 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v106 = *(v21 - 8);
  v22 = *(v106 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v105 = &v98 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3388, &unk_224DB35A0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v121 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v120 = &v98 - v31;
  v32 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (v32 >> 62)
  {
    goto LABEL_56;
  }

  v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
LABEL_57:

    return;
  }

LABEL_4:
  v118 = 0;
  v103 = v32 & 0xC000000000000001;
  v99 = v32 & 0xFFFFFFFFFFFFFF8;
  v100 = v32;
  v98 = v32 + 32;
  v141 = (v106 + 16);
  v119 = (v106 + 32);
  v111 = (v15 + 56);
  v110 = (v8 + 56);
  v109 = (v15 + 32);
  v131 = (v106 + 56);
  v130 = (v8 + 16);
  v129 = (v8 + 8);
  v128 = *MEMORY[0x277D46828];
  v127 = (v2 + 104);
  v126 = (v2 + 8);
  v2 = 0;
  v108 = (v106 + 8);
  *&v33 = 136446210;
  v124 = v33;
  v32 = v121;
  v15 = v120;
  v102 = v34;
  v132 = v21;
  v133 = v14;
  v142 = v25;
  while (1)
  {
    if (v103)
    {
      v35 = MEMORY[0x22AA5DCC0](v2, v100);
    }

    else
    {
      if (v2 >= *(v99 + 16))
      {
        goto LABEL_55;
      }

      v35 = *(v98 + 8 * v2);
    }

    v36 = v35;
    if (__OFADD__(v2++, 1))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      v34 = sub_224DAF838();
      if (!v34)
      {
        goto LABEL_57;
      }

      goto LABEL_4;
    }

    v104 = v2;
    v8 = [v35 extensionIdentity];
    v38 = v8 + *MEMORY[0x277CFA128];
    swift_beginAccess();
    v39 = *(v38 + 8);

    if (!v39)
    {
      break;
    }

LABEL_6:
    v2 = v104;
    if (v104 == v102)
    {
      goto LABEL_57;
    }
  }

  v101 = v36;
  v40 = Strong[21];
  v41 = Strong[22];
  v8 = __swift_project_boxed_opaque_existential_1(Strong + 18, v40);
  v42 = (*(v41 + 24))(512, v40, v41);
  if (!v42)
  {
    goto LABEL_52;
  }

  v117 = v42;
  v43 = sub_224CFEA64(v42);
  v44 = 0;
  v46 = v43 + 64;
  v45 = *(v43 + 8);
  v107 = v43;
  v47 = 1 << v43[32];
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  else
  {
    v48 = -1;
  }

  v49 = v48 & v45;
  v50 = (v47 + 63) >> 6;
  v116 = v43 + 64;
  v115 = v50;
  while (2)
  {
    if (v49)
    {
      v123 = v44;
      v51 = v44;
LABEL_30:
      v122 = (v49 - 1) & v49;
      v54 = __clz(__rbit64(v49)) | (v51 << 6);
      v55 = v107;
      v56 = v106;
      v57 = v105;
      (*(v106 + 16))(v105, *(v107 + 6) + *(v106 + 72) * v54, v21);
      v8 = *(*(v55 + 7) + 8 * v54);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
      v59 = *(v58 + 48);
      v60 = *(v56 + 32);
      v32 = v121;
      v60(v121, v57, v21);
      *(v32 + v59) = v8;
      (*(*(v58 - 8) + 56))(v32, 0, 1, v58);
      v61 = v8;
      v15 = v120;
LABEL_31:
      sub_224A44E4C(v32, v15, &qword_27D6F3388, &unk_224DB35A0);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
      if ((*(*(v62 - 8) + 48))(v15, 1, v62) == 1)
      {

        goto LABEL_6;
      }

      (*v119)(v25, v15, v21);
      v63 = v113;
      sub_224DAA238();
      v15 = v111;
      v8 = *v111;
      v64 = v112;
      v32 = v114;
      (*v111)(v112, 1, 1, v114);
      v65 = type metadata accessor for ControlHostDescriptorPredicate();
      *(v64 + v65[5]) = 3;
      *(v64 + v65[6]) = 3;
      v66 = v65[7];
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      (*(*(v67 - 8) + 56))(v64 + v66, 1, 1, v67);
      (*v110)(v64 + v65[8], 1, 1, v143);
      sub_224A3311C(v64, &qword_27D6F3390, &qword_224DB35B8);
      (*v109)(v64, v63, v32);
      (v8)(v64, 0, 1, v32);
      v68 = (*(*(v65 - 1) + 56))(v64, 0, 1, v65);
      v69 = v117;
      if (*(v117 + 16))
      {
        MEMORY[0x28223BE20](v68);
        *(&v98 - 2) = v64;

        v70 = v69;
        v71 = v118;
        v72 = sub_224A6C07C(sub_224ACFDF4, (&v98 - 4), v70);
        v73 = sub_224D44404(v72);

        v2 = &v98;
        MEMORY[0x28223BE20](v74);
        *(&v98 - 2) = v64;
        v8 = sub_224A4ECE8(sub_224ACFE14, (&v98 - 4), v73);
        v118 = v71;
        sub_224A3311C(v64, &qword_27D6F3380, &qword_224DB3598);
        v75 = v8;
        if (v8 >> 62)
        {
          v2 = v8;
          v76 = sub_224DAF838();
          v75 = v8;
          v25 = v142;
          v77 = v143;
          if (v76)
          {
LABEL_35:
            if (v76 < 1)
            {
              __break(1u);
              goto LABEL_54;
            }

            v78 = 0;
            v138 = v75 & 0xC000000000000001;
            v139 = v76;
            v140 = v75;
            do
            {
              if (v138)
              {
                v82 = MEMORY[0x22AA5DCC0](v78);
              }

              else
              {
                v82 = *(v75 + 8 * v78 + 32);
              }

              v144 = v82;
              v83 = [v82 controlIdentity];
              v84 = v134;
              (*v141)(v134, v25, v21);
              (*v131)(v84, 0, 1, v21);
              sub_224DAC298();
              if (qword_2813516C8 != -1)
              {
                swift_once();
              }

              v85 = sub_224DAB258();
              __swift_project_value_buffer(v85, qword_281365120);
              (*v130)(v12, v14, v77);
              v86 = v12;
              v87 = sub_224DAB228();
              v88 = sub_224DAF2A8();
              v89 = os_log_type_enabled(v87, v88);
              v90 = v129;
              if (v89)
              {
                v91 = swift_slowAlloc();
                v125 = swift_slowAlloc();
                v145 = v125;
                *v91 = v124;
                sub_224ACFEEC(&unk_281350E08, 255, MEMORY[0x277CF99B8]);
                v92 = sub_224DAFD28();
                v94 = v93;
                v79 = *v90;
                (*v90)(v86, v143);
                v95 = sub_224A33F74(v92, v94, &v145);
                v77 = v143;

                *(v91 + 4) = v95;
                _os_log_impl(&dword_224A2F000, v87, v88, "Received local live control archive for %{public}s", v91, 0xCu);
                v96 = v125;
                __swift_destroy_boxed_opaque_existential_1(v125);
                MEMORY[0x22AA5EED0](v96, -1, -1);
                MEMORY[0x22AA5EED0](v91, -1, -1);
              }

              else
              {

                v79 = *v90;
                (*v90)(v86, v77);
              }

              v12 = v86;
              ++v78;
              v80 = v135;
              v81 = v136;
              (*v127)(v135, v128, v136);
              v14 = v133;
              v8 = Strong;
              sub_224AC8228(v133, 4, v80);

              (*v126)(v80, v81);
              v79(v14, v77);
              v75 = v140;
              v21 = v132;
              v25 = v142;
            }

            while (v139 != v78);
          }
        }

        else
        {
          v76 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v25 = v142;
          v77 = v143;
          if (v76)
          {
            goto LABEL_35;
          }
        }

        (*v108)(v25, v21);
      }

      else
      {
        v25 = v142;
        (*v108)(v142, v21);
        sub_224A3311C(v64, &qword_27D6F3380, &qword_224DB3598);
      }

      v32 = v121;
      v15 = v120;
      v46 = v116;
      v50 = v115;
      v44 = v123;
      v49 = v122;
      continue;
    }

    break;
  }

  if (v50 <= v44 + 1)
  {
    v52 = v44 + 1;
  }

  else
  {
    v52 = v50;
  }

  v53 = v52 - 1;
  while (1)
  {
    v51 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v51 >= v50)
    {
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
      (*(*(v97 - 8) + 56))(v32, 1, 1, v97);
      v122 = 0;
      v123 = v53;
      goto LABEL_31;
    }

    v49 = *&v46[8 * v51];
    ++v44;
    if (v49)
    {
      v123 = v51;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_52:
}

uint64_t sub_224AC9E54(uint64_t a1, uint64_t a2, const char *a3, int a4)
{
  v37 = a3;
  v5 = sub_224DAC2B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v31[-v11];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3358, &unk_224DB3570);
    MEMORY[0x22AA5ABC0](v14);
    v15 = sub_224DAC2A8();
    v16 = [v15 extensionIdentity];

    v17 = &v16[*MEMORY[0x277CFA128]];
    swift_beginAccess();
    if (*(v17 + 1))
    {
      (*(v6 + 8))(v12, v5);
    }

    else
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v18 = sub_224DAB258();
      __swift_project_value_buffer(v18, qword_281365120);
      (*(v6 + 16))(v10, v12, v5);
      v19 = sub_224DAB228();
      v20 = sub_224DAF2A8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v34 = v21;
        v35 = swift_slowAlloc();
        v38 = v35;
        *v21 = 136446210;
        sub_224ACFEEC(&unk_281350E08, 255, MEMORY[0x277CF99B8]);
        v33 = v19;
        v22 = sub_224DAFD28();
        v36 = a4;
        v24 = v23;
        v32 = v20;
        v25 = *(v6 + 8);
        v25(v10, v5);
        v26 = sub_224A33F74(v22, v24, &v38);
        a4 = v36;

        v28 = v33;
        v27 = v34;
        *(v34 + 1) = v26;
        v29 = v27;
        _os_log_impl(&dword_224A2F000, v28, v32, v37, v27, 0xCu);
        v30 = v35;
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x22AA5EED0](v30, -1, -1);
        MEMORY[0x22AA5EED0](v29, -1, -1);
      }

      else
      {

        v25 = *(v6 + 8);
        v25(v10, v5);
      }

      sub_224AC88F4(v12, a4);

      return (v25)(v12, v5);
    }
  }

  return result;
}

void sub_224ACA200(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6);
  v35 = &v35 - v8;
  v40 = sub_224DAA428();
  v9 = *(v40 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v40);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3338, &unk_224DB3550);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3340, &qword_224DB41C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v35 - v19;
  v38 = a1;
  sub_224A3796C(a1, &v35 - v19, &qword_27D6F3340, &qword_224DB41C0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_224A44E4C(v20, v16, &qword_27D6F3338, &unk_224DB3550);
    v28 = *&v16[*(v13 + 36)];
    v29 = a2[3];
    v30 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v29);
    v42 = v28;
    v31 = v40;
    (*(v9 + 104))(v12, *MEMORY[0x277CFA040], v40);
    v32 = *(v30 + 8);
    v33 = *(v32 + 56);
    v34 = v28;
    v33(&v42, v12, v16, v29, v32);
    (*(v9 + 8))(v12, v31);
    sub_224A3311C(v16, &qword_27D6F3338, &unk_224DB3550);

    v27 = v41;
    if (!v41)
    {
      return;
    }

    goto LABEL_5;
  }

  v22 = v35;
  v21 = v36;
  v23 = v37;
  (*(v36 + 32))(v35, v20, v37);
  v24 = a2[3];
  v25 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  v42 = 0;
  v26 = v40;
  (*(v9 + 104))(v12, *MEMORY[0x277CFA038], v40);
  (*(*(v25 + 8) + 56))(&v42, v12, v22, v24);
  (*(v9 + 8))(v12, v26);
  (*(v21 + 8))(v22, v23);
  v27 = v41;
  if (v41)
  {
LABEL_5:
    v27(v38);
  }
}

uint64_t sub_224ACA5DC(uint64_t a1, uint64_t a2, char a3)
{
  v105 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v99 = *(v4 - 8);
  v5 = *(v99 + 64);
  MEMORY[0x28223BE20](v4);
  v92 = &v90 - v6;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33C8, &qword_224DB3600);
  v7 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v9 = &v90 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v94 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v95 = &v90 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v90 - v17;
  MEMORY[0x28223BE20](v16);
  v98 = &v90 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5740, &qword_224DB3608);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v90 - v22;
  v24 = sub_224DACB98();
  v103 = *(v24 - 8);
  v25 = *(v103 + 64);
  MEMORY[0x28223BE20](v24);
  v102 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_224DAC2B8();
  v106 = *(v27 - 8);
  v28 = v106[8];
  v29 = MEMORY[0x28223BE20](v27);
  v93 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v104 = &v90 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v90 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v90 - v36;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v101 = result;
  if (result)
  {
    v100 = v27;
    v96 = v24;
    if (a3 == 3)
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v39 = sub_224DAB258();
      __swift_project_value_buffer(v39, qword_281365120);
      sub_224A3796C(v105, v23, &qword_27D6F5740, &qword_224DB3608);
      v40 = sub_224DAB228();
      v41 = sub_224DAF2A8();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v108 = v43;
        *v42 = 136446210;
        sub_224ACFEEC(&unk_281350E08, 255, MEMORY[0x277CF99B8]);
        v44 = sub_224DAFD28();
        v46 = v45;
        sub_224A3311C(v23, &qword_27D6F5740, &qword_224DB3608);
        v47 = sub_224A33F74(v44, v46, &v108);

        *(v42 + 4) = v47;
        _os_log_impl(&dword_224A2F000, v40, v41, "Received remote preview archive for %{public}s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        v48 = v43;
        v27 = v100;
        MEMORY[0x22AA5EED0](v48, -1, -1);
        MEMORY[0x22AA5EED0](v42, -1, -1);
      }

      else
      {

        sub_224A3311C(v23, &qword_27D6F5740, &qword_224DB3608);
      }

      (v106[2])(v104, v105, v27);
      v60 = v98;
      sub_224DAC288();
      if (qword_27D6F2C58 != -1)
      {
        swift_once();
      }

      v61 = __swift_project_value_buffer(v4, qword_27D6F7180);
      v62 = v99;
      (*(v99 + 16))(v18, v61, v4);
      v91 = *(v62 + 56);
      v91(v18, 0, 1, v4);
      v63 = *(v97 + 48);
      sub_224A3796C(v60, v9, &qword_27D6F56C0, &unk_224DB3580);
      sub_224A3796C(v18, &v9[v63], &qword_27D6F56C0, &unk_224DB3580);
      v64 = *(v62 + 48);
      if (v64(v9, 1, v4) == 1)
      {
        sub_224A3311C(v18, &qword_27D6F56C0, &unk_224DB3580);
        sub_224A3311C(v60, &qword_27D6F56C0, &unk_224DB3580);
        v65 = v64(&v9[v63], 1, v4);
        v66 = v100;
        if (v65 == 1)
        {
          sub_224A3311C(v9, &qword_27D6F56C0, &unk_224DB3580);
LABEL_24:
          v80 = v104;
          sub_224DAC2A8();
          v91(v94, 1, 1, v4);
          v81 = v93;
          sub_224DAC298();
          v82 = v106;
          (v106[1])(v80, v66);
          (v82[4])(v80, v81, v66);
          goto LABEL_25;
        }
      }

      else
      {
        v67 = v95;
        sub_224A3796C(v9, v95, &qword_27D6F56C0, &unk_224DB3580);
        if (v64(&v9[v63], 1, v4) != 1)
        {
          v75 = v99;
          v76 = &v9[v63];
          v77 = v92;
          (*(v99 + 32))(v92, v76, v4);
          sub_224A33088(&qword_281351870, &unk_27D6F30D0, &unk_224DB2AC0);
          v78 = sub_224DAEDD8();
          v79 = *(v75 + 8);
          v79(v77, v4);
          sub_224A3311C(v18, &qword_27D6F56C0, &unk_224DB3580);
          sub_224A3311C(v98, &qword_27D6F56C0, &unk_224DB3580);
          v79(v67, v4);
          sub_224A3311C(v9, &qword_27D6F56C0, &unk_224DB3580);
          v66 = v100;
          if (v78)
          {
            goto LABEL_24;
          }

LABEL_25:
          v83 = v101[31];
          v84 = v101[32];
          __swift_project_boxed_opaque_existential_1(v101 + 28, v83);
          v85 = sub_224DAC2A8();
          v87 = v102;
          v86 = v103;
          v88 = v96;
          (*(v103 + 104))(v102, *MEMORY[0x277CF9B60], v96);
          (*(v84 + 32))(v85, v87, v83, v84);

          (*(v86 + 8))(v87, v88);
          return (v106[1])(v104, v66);
        }

        sub_224A3311C(v18, &qword_27D6F56C0, &unk_224DB3580);
        sub_224A3311C(v98, &qword_27D6F56C0, &unk_224DB3580);
        (*(v99 + 8))(v67, v4);
        v66 = v100;
      }

      sub_224A3311C(v9, &qword_27D6F33C8, &qword_224DB3600);
      goto LABEL_25;
    }

    if (a3 == 4)
    {
      v49 = v106[2];
      v49(v37, v105, v27);
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v50 = sub_224DAB258();
      __swift_project_value_buffer(v50, qword_281365120);
      v49(v35, v37, v27);
      v51 = sub_224DAB228();
      v52 = sub_224DAF2A8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v108 = v54;
        *v53 = 136446210;
        sub_224ACFEEC(&unk_281350E08, 255, MEMORY[0x277CF99B8]);
        v55 = sub_224DAFD28();
        v57 = v56;
        v58 = v106[1];
        v105 = (v106 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v106 = v58;
        (v58)(v35, v27);
        v59 = sub_224A33F74(v55, v57, &v108);

        *(v53 + 4) = v59;
        _os_log_impl(&dword_224A2F000, v51, v52, "Received remote live control archive for %{public}s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v54);
        MEMORY[0x22AA5EED0](v54, -1, -1);
        MEMORY[0x22AA5EED0](v53, -1, -1);
      }

      else
      {

        v68 = v106[1];
        v105 = (v106 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v106 = v68;
        (v68)(v35, v27);
      }

      v69 = v101[36];
      v70 = v101[37];
      __swift_project_boxed_opaque_existential_1(v101 + 33, v69);
      v71 = sub_224DAC2A8();
      v72 = v102;
      v73 = v103;
      v74 = v96;
      (*(v103 + 104))(v102, *MEMORY[0x277CF9B60], v96);
      (*(*(v70 + 8) + 32))(v71, v72, v69);

      (*(v73 + 8))(v72, v74);
      return (v106)(v37, v100);
    }

    else
    {
      v108 = 0;
      v109 = 0xE000000000000000;
      sub_224DAF938();
      if (a3)
      {
        v107 = a3;
        sub_224DAFA48();
        MEMORY[0x22AA5D210](0xD000000000000022, 0x8000000224DC53C0);
      }

      else
      {

        v108 = 0xD000000000000024;
        v109 = 0x8000000224DC53F0;
        sub_224ACFEEC(&unk_281350E08, 255, MEMORY[0x277CF99B8]);
        v89 = sub_224DAFD28();
        MEMORY[0x22AA5D210](v89);
      }

      result = sub_224DAFB58();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_224ACB394(uint64_t a1, uint64_t a2, void *a3, void (*a4)(char *), uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3338, &unk_224DB3550);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    sub_224DAA1F8();
    if (v15)
    {
    }

    else
    {
      sub_224AC7088(a1, a3, v13);
      if (a4)
      {
        a4(v13);
      }

      sub_224C9AB2C(v13, a6);

      return sub_224A3311C(v13, &qword_27D6F3338, &unk_224DB3550);
    }
  }

  return result;
}

uint64_t sub_224ACB4E4(uint64_t a1, uint64_t a2)
{
  v122 = a2;
  v3 = sub_224DAAF28();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v121 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v129 = &v120 - v7;
  v8 = sub_224DAAF48();
  v124 = *(v8 - 8);
  v9 = *(v124 + 64);
  MEMORY[0x28223BE20](v8);
  v123 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAAE38();
  v133 = *(v11 - 8);
  v134 = v11;
  v12 = *(v133 + 64);
  MEMORY[0x28223BE20](v11);
  v126 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v135 = &v120 - v19;
  v140 = sub_224DAC2B8();
  v20 = *(v140 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v140);
  v125 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  *&v132 = &v120 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v120 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v120 - v30;
  v32 = sub_224DA9908();
  v33 = *(v32 - 8);
  v137 = v32;
  v138 = v33;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v136 = &v120 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v39 = &v120 - v38;
  v40 = sub_224DAAC58();
  v130 = *(v40 - 8);
  v131 = v40;
  v41 = *(v130 + 64);
  MEMORY[0x28223BE20](v40);
  v127 = (&v120 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = a1;
  sub_224DAC288();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v39, 1, v43) == 1)
  {
    sub_224A3311C(v39, &qword_27D6F56C0, &unk_224DB3580);
LABEL_7:
    v64 = v20;
    v65 = v140;
    (*(v20 + 16))(v27, v139, v140);
    v53 = sub_224DAB228();
    v66 = sub_224DAF288();
    if (!os_log_type_enabled(v53, v66))
    {

      (*(v20 + 8))(v27, v65);
      goto LABEL_11;
    }

    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v141[0] = v68;
    *v67 = 136446210;
    sub_224ACFEEC(&unk_281350E08, 255, MEMORY[0x277CF99B8]);
    v69 = sub_224DAFD28();
    v70 = v64;
    v72 = v71;
    (*(v70 + 8))(v27, v65);
    v73 = sub_224A33F74(v69, v72, v141);

    *(v67 + 4) = v73;
    _os_log_impl(&dword_224A2F000, v53, v66, "Cannot replicate a control archive belonging to a local host %{public}s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v68);
    MEMORY[0x22AA5EED0](v68, -1, -1);
    v63 = v67;
LABEL_9:
    MEMORY[0x22AA5EED0](v63, -1, -1);

LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3398, &unk_224DB35C0);
    sub_224A33088(&qword_27D6F33A0, &qword_27D6F3398, &unk_224DB35C0);
    swift_allocError();
    *v74 = 0;
    return swift_willThrow();
  }

  v120 = v8;
  sub_224DAA1F8();
  v46 = v45;
  (*(v44 + 8))(v39, v43);
  if (!v46)
  {
    goto LABEL_7;
  }

  sub_224DA9888();

  v48 = v137;
  v47 = v138;
  v49 = v20;
  if ((*(v138 + 48))(v31, 1, v137) == 1)
  {
    sub_224A3311C(v31, &unk_27D6F5630, &unk_224DB34C0);
    v50 = *(v20 + 16);
    v51 = v132;
    v52 = v140;
    v50(v132, v139, v140);
    v53 = sub_224DAB228();
    v54 = sub_224DAF288();
    if (!os_log_type_enabled(v53, v54))
    {

      (*(v49 + 8))(v51, v52);
      goto LABEL_11;
    }

    v55 = swift_slowAlloc();
    v56 = v49;
    v57 = swift_slowAlloc();
    v141[0] = v57;
    *v55 = 136446210;
    sub_224ACFEEC(&unk_281350E08, 255, MEMORY[0x277CF99B8]);
    v58 = sub_224DAFD28();
    v59 = v52;
    v61 = v60;
    (*(v56 + 8))(v51, v59);
    v62 = sub_224A33F74(v58, v61, v141);

    *(v55 + 4) = v62;
    _os_log_impl(&dword_224A2F000, v53, v54, "Cannot replicate a control archive if we have a bad relationship ID %{public}s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x22AA5EED0](v57, -1, -1);
    v63 = v55;
    goto LABEL_9;
  }

  (*(v47 + 32))();
  v76 = *(v142 + 72);
  __swift_project_boxed_opaque_existential_1((v142 + 40), *(v142 + 64));
  v77 = *(v76 + 16);
  v78 = v135;
  sub_224DAAC98();
  sub_224A3796C(v78, v18, &qword_27D6F3320, &unk_224DBD6F0);
  v79 = v133;
  v80 = v134;
  if ((*(v133 + 48))(v18, 1, v134) == 1)
  {
    sub_224A3311C(v18, &qword_27D6F3320, &unk_224DBD6F0);
    v81 = v125;
    v82 = v140;
    (*(v49 + 16))(v125, v139, v140);
    v83 = sub_224DAB228();
    v84 = sub_224DAF288();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = v49;
      v87 = swift_slowAlloc();
      v141[0] = v87;
      *v85 = 136446210;
      sub_224ACFEEC(&unk_281350E08, 255, MEMORY[0x277CF99B8]);
      v88 = sub_224DAFD28();
      v90 = v89;
      (*(v86 + 8))(v81, v82);
      v91 = sub_224A33F74(v88, v90, v141);
      v48 = v137;

      *(v85 + 4) = v91;
      _os_log_impl(&dword_224A2F000, v83, v84, "Cannot replicate a control archive if we have no relationship %{public}s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v87);
      MEMORY[0x22AA5EED0](v87, -1, -1);
      v92 = v85;
      v78 = v135;
      MEMORY[0x22AA5EED0](v92, -1, -1);
    }

    else
    {

      (*(v49 + 8))(v81, v82);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3398, &unk_224DB35C0);
    sub_224A33088(&qword_27D6F33A0, &qword_27D6F3398, &unk_224DB35C0);
    swift_allocError();
    *v108 = 0;
    swift_willThrow();
    sub_224A3311C(v78, &qword_27D6F3320, &unk_224DBD6F0);
    return (*(v138 + 8))(v136, v48);
  }

  else
  {
    v93 = v126;
    (*(v79 + 32))(v126, v18, v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BC0, &unk_224DB9C60);
    v94 = *(v47 + 72);
    v95 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v96 = swift_allocObject();
    v132 = xmmword_224DB3100;
    *(v96 + 16) = xmmword_224DB3100;
    sub_224DAAD98();
    (*(v79 + 8))(v93, v80);
    sub_224A3311C(v78, &qword_27D6F3320, &unk_224DBD6F0);
    (*(v47 + 8))(v136, v48);
    v97 = v127;
    *v127 = v96;
    v99 = v130;
    v98 = v131;
    (*(v130 + 104))(v97, *MEMORY[0x277D46558], v131);
    v135 = sub_224B942B8(*(v142 + 32));
    v136 = v100;
    v101 = *(v47 + 56);
    v102 = v129;
    v101(v129, 1, 1, v48);
    sub_224DAAD38();
    v103 = v140;
    v141[3] = v140;
    v141[4] = sub_224ACFEEC(&qword_27D6F3360, 255, MEMORY[0x277CF99B8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v141);
    (*(v49 + 16))(boxed_opaque_existential_1, v139, v103);
    v105 = v128;
    v106 = sub_224DAAD28();
    if (v105)
    {

      sub_224ACFD2C(v102);
      (*(v99 + 8))(v97, v98);
      return __swift_destroy_boxed_opaque_existential_1(v141);
    }

    else
    {
      v109 = v106;
      v110 = v102;
      v111 = v107;
      __swift_destroy_boxed_opaque_existential_1(v141);
      sub_224DA96C8();
      v112 = v97;
      sub_224ACFD88(v110, v121);
      v113 = v123;
      sub_224DAAEE8();
      sub_224A78024(v109, v111);
      sub_224ACFD2C(v110);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
      v114 = v124;
      v115 = *(v124 + 72);
      v116 = (*(v124 + 80) + 32) & ~*(v124 + 80);
      v117 = swift_allocObject();
      *(v117 + 16) = v132;
      v118 = v120;
      (*(v114 + 16))(v117 + v116, v113, v120);
      sub_224C6BB2C(v117, v112, v122);
      swift_setDeallocating();
      v119 = *(v114 + 8);
      v119(v117 + v116, v118);
      swift_deallocClassInstance();
      v119(v113, v118);
      return (*(v130 + 8))(v112, v131);
    }
  }
}

uint64_t sub_224ACC448(uint64_t a1)
{
  v3 = v1;
  v5 = sub_224DAB0B8();
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v5);
  v48 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAAF28();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v45 - v13;
  v53 = sub_224DAAF48();
  v47 = *(v53 - 8);
  v15 = *(v47 + 64);
  MEMORY[0x28223BE20](v53);
  v51 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v45 - v19;
  sub_224DAC288();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_224A3311C(v20, &qword_27D6F56C0, &unk_224DB3580);
  }

  sub_224DAA1F8();
  v25 = v24;
  result = (*(v22 + 8))(v20, v21);
  if (v25)
  {

    v26 = sub_224B942B8(*(v3 + 32));
    v28 = v27;
    v29 = sub_224DA9908();
    (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
    sub_224DAAD38();
    v30 = sub_224DAC2B8();
    v52[3] = v30;
    v52[4] = sub_224ACFEEC(&qword_27D6F3360, 255, MEMORY[0x277CF99B8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
    (*(*(v30 - 8) + 16))(boxed_opaque_existential_1, a1, v30);
    v32 = sub_224DAAD28();
    if (v2)
    {
      sub_224ACFD2C(v14);

      return __swift_destroy_boxed_opaque_existential_1(v52);
    }

    else
    {
      v34 = v32;
      v35 = v33;
      __swift_destroy_boxed_opaque_existential_1(v52);
      sub_224DA96C8();
      v45[2] = v26;
      v46 = v3;
      v45[1] = v28;
      sub_224ACFD88(v14, v12);
      v36 = v51;
      sub_224DAAEE8();
      sub_224A78024(v34, v35);
      sub_224ACFD2C(v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
      v37 = v47;
      v38 = *(v47 + 72);
      v39 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_224DB3100;
      (*(v37 + 16))(v40 + v39, v36, v53);
      v42 = v48;
      v41 = v49;
      v43 = v50;
      (*(v49 + 104))(v48, *MEMORY[0x277D46820], v50);
      v44 = v46[10];
      __swift_project_boxed_opaque_existential_1(v46 + 5, v46[8]);
      sub_224DAABF8();

      (*(v41 + 8))(v42, v43);
      return (*(v37 + 8))(v51, v53);
    }
  }

  return result;
}

uint64_t sub_224ACC9A4(void **a1)
{
  v2 = *(sub_224DAAE38() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_224CB24E8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_224ACCA4C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_224ACCA4C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_224DAFD18();
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
        sub_224DAAE38();
        v6 = sub_224DAF058();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_224DAAE38() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_224ACCF18(v8, v9, a1, v4);
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
    return sub_224ACCB78(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_224ACCB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_224DA9908();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v62);
  v61 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v43 - v12;
  v13 = sub_224DAAE38();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = &v43 - v18;
  result = MEMORY[0x28223BE20](v17);
  v58 = &v43 - v21;
  v45 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v55 = (v8 + 8);
    v56 = v24;
    v54 = (v23 - 8);
    v57 = v23;
    v26 = (v22 + v25 * (a3 - 1));
    v50 = -v25;
    v51 = (v23 + 16);
    v27 = a1 - a3;
    v52 = v22;
    v44 = v25;
    v28 = v22 + v25 * a3;
    v29 = v60;
LABEL_5:
    v48 = v26;
    v49 = a3;
    v46 = v28;
    v47 = v27;
    v63 = v27;
    while (1)
    {
      v30 = v58;
      v31 = v56;
      v56(v58, v28, v13);
      v32 = v13;
      v33 = v59;
      v31(v59, v26, v32);
      sub_224DAAD98();
      v34 = v61;
      sub_224DAAD98();
      v64 = MEMORY[0x22AA57C30](v29, v34);
      v35 = *v55;
      v36 = v34;
      v37 = v62;
      (*v55)(v36, v62);
      v35(v29, v37);
      v38 = *v54;
      v39 = v33;
      v13 = v32;
      (*v54)(v39, v32);
      result = v38(v30, v32);
      if ((v64 & 1) == 0)
      {
LABEL_4:
        a3 = v49 + 1;
        v26 = &v48[v44];
        v27 = v47 - 1;
        v28 = v46 + v44;
        if (v49 + 1 == v45)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v52)
      {
        break;
      }

      v40 = *v51;
      v41 = v53;
      (*v51)(v53, v28, v32);
      swift_arrayInitWithTakeFrontToBack();
      result = v40(v26, v41, v32);
      v26 += v50;
      v28 += v50;
      if (__CFADD__(v63++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_224ACCF18(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v139 = a1;
  v161 = sub_224DA9908();
  v8 = *(v161 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v161);
  v160 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v159 = &v135 - v12;
  v13 = sub_224DAAE38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v16 = MEMORY[0x28223BE20](v13);
  v142 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v151 = &v135 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v158 = &v135 - v21;
  result = MEMORY[0x28223BE20](v20);
  v162 = &v135 - v23;
  v24 = *(a3 + 1);
  v147 = a3;
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_96:
    v13 = v26;
    v26 = *v139;
    if (!*v139)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v54 = v147;
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_224CB23F0(v13);
      v13 = result;
    }

    v164 = v13;
    v131 = *(v13 + 16);
    if (v131 >= 2)
    {
      while (*v54)
      {
        v132 = *(v13 + 16 * v131);
        v133 = *(v13 + 16 * (v131 - 1) + 40);
        sub_224ACDB18(*v54 + *(v14 + 9) * v132, *v54 + *(v14 + 9) * *(v13 + 16 * (v131 - 1) + 32), *v54 + *(v14 + 9) * v133, v26);
        if (v5)
        {
        }

        if (v133 < v132)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_224CB23F0(v13);
        }

        if (v131 - 2 >= *(v13 + 16))
        {
          goto LABEL_122;
        }

        v134 = (v13 + 16 * v131);
        *v134 = v132;
        v134[1] = v133;
        v164 = v13;
        result = sub_224CB2364(v131 - 1);
        v13 = v164;
        v131 = *(v164 + 16);
        if (v131 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v135 = a4;
  v25 = 0;
  v155 = (v8 + 8);
  v156 = v14 + 16;
  v153 = (v14 + 32);
  v154 = v14 + 8;
  v26 = MEMORY[0x277D84F90];
  v157 = v13;
  v138 = v14;
  while (1)
  {
    v27 = v25 + 1;
    if (v25 + 1 >= v24)
    {
      v43 = v25 + 1;
      v54 = v147;
    }

    else
    {
      v148 = v24;
      v136 = v26;
      v137 = v5;
      v28 = v25;
      v140 = v25;
      v29 = *v147;
      v163 = v29;
      v30 = *(v14 + 9);
      v31 = (v29 + v30 * v27);
      v32 = v13;
      v33 = *(v14 + 2);
      (v33)(v162, v31, v13);
      v34 = v158;
      v149 = v33;
      (v33)(v158, v29 + v30 * v28, v32);
      v35 = v159;
      sub_224DAAD98();
      v36 = v160;
      sub_224DAAD98();
      LODWORD(v150) = MEMORY[0x22AA57C30](v35, v36);
      v37 = *v155;
      v38 = v36;
      v39 = v161;
      (*v155)(v38, v161);
      v146 = v37;
      (v37)(v35, v39);
      v40 = *(v138 + 1);
      v26 = v154;
      v40(v34, v32);
      v145 = v40;
      result = (v40)(v162, v32);
      v41 = v140 + 2;
      v152 = v30;
      v42 = v163 + v30 * (v140 + 2);
      while (1)
      {
        v43 = v148;
        if (v148 == v41)
        {
          break;
        }

        v44 = v157;
        v45 = v149;
        v149();
        v46 = v158;
        v45(v158, v31, v44);
        v47 = v159;
        sub_224DAAD98();
        v48 = v160;
        sub_224DAAD98();
        LOBYTE(v163) = MEMORY[0x22AA57C30](v47, v48) & 1;
        LODWORD(v163) = v163;
        v49 = v48;
        v50 = v161;
        v51 = v31;
        v52 = v146;
        (v146)(v49, v161);
        v52(v47, v50);
        v26 = v154;
        v53 = v145;
        (v145)(v46, v44);
        result = v53(v162, v44);
        ++v41;
        v42 += v152;
        v31 = &v152[v51];
        if ((v150 & 1) != v163)
        {
          v43 = v41 - 1;
          goto LABEL_9;
        }
      }

      v5 = v137;
      v54 = v147;
      v14 = v138;
      v13 = v157;
      v25 = v140;
      if ((v150 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v43 < v140)
      {
        goto LABEL_125;
      }

      if (v140 < v43)
      {
        v55 = v43;
        v56 = v152 * (v43 - 1);
        v57 = v43 * v152;
        v148 = v43;
        v58 = v140;
        v59 = v140 * v152;
        do
        {
          if (v58 != --v55)
          {
            v60 = *v54;
            if (!v60)
            {
              goto LABEL_131;
            }

            v61 = *v153;
            (*v153)(v142, v60 + v59, v13);
            if (v59 < v56 || v60 + v59 >= (v60 + v57))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v56)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v61)(v60 + v56, v142, v13);
            v54 = v147;
          }

          ++v58;
          v56 -= v152;
          v57 -= v152;
          v59 += v152;
        }

        while (v58 < v55);
        v5 = v137;
        v14 = v138;
        v26 = v136;
        v25 = v140;
        v43 = v148;
      }

      else
      {
LABEL_23:
        v26 = v136;
      }
    }

    v62 = *(v54 + 1);
    if (v43 < v62)
    {
      if (__OFSUB__(v43, v25))
      {
        goto LABEL_124;
      }

      if (v43 - v25 < v135)
      {
        if (__OFADD__(v25, v135))
        {
          goto LABEL_126;
        }

        if (v25 + v135 >= v62)
        {
          v63 = *(v54 + 1);
        }

        else
        {
          v63 = v25 + v135;
        }

        if (v63 < v25)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v43 != v63)
        {
          break;
        }
      }
    }

    v64 = v43;
    if (v43 < v25)
    {
      goto LABEL_123;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_224AD92E0(0, *(v26 + 2) + 1, 1, v26);
      v26 = result;
    }

    v66 = *(v26 + 2);
    v65 = *(v26 + 3);
    v67 = v66 + 1;
    v54 = v14;
    if (v66 >= v65 >> 1)
    {
      result = sub_224AD92E0((v65 > 1), v66 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 2) = v67;
    v68 = &v26[16 * v66];
    *(v68 + 4) = v25;
    *(v68 + 5) = v64;
    v69 = *v139;
    if (!*v139)
    {
      goto LABEL_133;
    }

    v143 = v64;
    if (v66)
    {
      v14 = v69;
      while (1)
      {
        v70 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v71 = *(v26 + 4);
          v72 = *(v26 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_55:
          if (v74)
          {
            goto LABEL_112;
          }

          v87 = &v26[16 * v67];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_115;
          }

          v93 = &v26[16 * v70 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_119;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              v70 = v67 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v97 = &v26[16 * v67];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_69:
        if (v92)
        {
          goto LABEL_114;
        }

        v100 = &v26[16 * v70];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_117;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_76:
        v108 = v70 - 1;
        if (v70 - 1 >= v67)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          goto LABEL_127;
        }

        if (!*v147)
        {
          goto LABEL_130;
        }

        v109 = *&v26[16 * v108 + 32];
        v110 = *&v26[16 * v70 + 40];
        sub_224ACDB18(*v147 + *(v54 + 9) * v109, *v147 + *(v54 + 9) * *&v26[16 * v70 + 32], *v147 + *(v54 + 9) * v110, v14);
        if (v5)
        {
        }

        if (v110 < v109)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_224CB23F0(v26);
        }

        if (v108 >= *(v26 + 2))
        {
          goto LABEL_109;
        }

        v111 = &v26[16 * v108];
        *(v111 + 4) = v109;
        *(v111 + 5) = v110;
        v164 = v26;
        result = sub_224CB2364(v70);
        v26 = v164;
        v67 = *(v164 + 16);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v26[16 * v67 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_110;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_111;
      }

      v82 = &v26[16 * v67];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_113;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_116;
      }

      if (v86 >= v78)
      {
        v104 = &v26[16 * v70 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_120;
        }

        if (v73 < v107)
        {
          v70 = v67 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v24 = *(v147 + 1);
    v25 = v143;
    v14 = v54;
    if (v143 >= v24)
    {
      goto LABEL_96;
    }
  }

  v136 = v26;
  v137 = v5;
  v112 = *v54;
  v113 = *(v14 + 9);
  v152 = *(v14 + 2);
  v114 = (v112 + v113 * (v43 - 1));
  v149 = -v113;
  v140 = v25;
  v115 = (v25 - v43);
  v150 = v112;
  v141 = v113;
  v116 = v112 + v43 * v113;
  v143 = v63;
LABEL_87:
  v148 = v43;
  v144 = v116;
  v145 = v115;
  v117 = v116;
  v146 = v114;
  v118 = v114;
  while (1)
  {
    v54 = v162;
    v119 = v152;
    (v152)(v162, v117, v13);
    v120 = v158;
    v119(v158, v118, v13);
    v121 = v159;
    sub_224DAAD98();
    v122 = v160;
    sub_224DAAD98();
    LODWORD(v163) = MEMORY[0x22AA57C30](v121, v122);
    v123 = *v155;
    v124 = v122;
    v125 = v161;
    (*v155)(v124, v161);
    v126 = v121;
    v13 = v157;
    v123(v126, v125);
    v127 = *v154;
    (*v154)(v120, v13);
    result = v127(v54, v13);
    if ((v163 & 1) == 0)
    {
LABEL_86:
      v43 = v148 + 1;
      v114 = &v146[v141];
      v115 = v145 - 1;
      v64 = v143;
      v116 = v144 + v141;
      if (v148 + 1 != v143)
      {
        goto LABEL_87;
      }

      v5 = v137;
      v14 = v138;
      v26 = v136;
      v25 = v140;
      if (v143 < v140)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v150)
    {
      break;
    }

    v128 = *v153;
    v129 = v151;
    (*v153)(v151, v117, v13);
    swift_arrayInitWithTakeFrontToBack();
    v128(v118, v129, v13);
    v118 = v149 + v118;
    v117 += v149;
    if (__CFADD__(v115++, 1))
    {
      goto LABEL_86;
    }
  }

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
  return result;
}

uint64_t sub_224ACDB18(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v75 = a3;
  v70 = sub_224DA9908();
  v7 = *(v70 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v70);
  v69 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v58 - v11;
  v74 = sub_224DAAE38();
  v12 = *(v74 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v74);
  v67 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v72 = &v58 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v20 = v75 - a2;
  if (v75 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_62;
  }

  v21 = (a2 - a1) / v19;
  v78 = a1;
  v77 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v23;
    if (v23 >= 1)
    {
      v41 = -v19;
      v62 = (v7 + 8);
      v63 = (v12 + 16);
      v60 = a4;
      v61 = (v12 + 8);
      v42 = v40;
      v73 = a1;
      v64 = -v19;
      v43 = v74;
      while (2)
      {
        while (1)
        {
          v58 = v40;
          v44 = a2;
          v45 = a2 + v41;
          v65 = v44;
          v66 = v45;
          while (1)
          {
            v46 = v75;
            if (v44 <= a1)
            {
              v78 = v44;
              v76 = v58;
              goto LABEL_59;
            }

            v59 = v40;
            v75 += v41;
            v47 = v42 + v41;
            v48 = *v63;
            (*v63)();
            v49 = v67;
            (v48)(v67, v45, v43);
            v50 = v68;
            sub_224DAAD98();
            v51 = v69;
            sub_224DAAD98();
            v71 = MEMORY[0x22AA57C30](v50, v51);
            v52 = *v62;
            v53 = v51;
            v54 = v70;
            (*v62)(v53, v70);
            v52(v50, v54);
            v55 = *v61;
            (*v61)(v49, v43);
            v55(v72, v43);
            if (v71)
            {
              break;
            }

            v40 = v47;
            v56 = v60;
            if (v46 < v42 || v75 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v66;
              v41 = v64;
            }

            else
            {
              v45 = v66;
              v41 = v64;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v47;
            a1 = v73;
            v44 = v65;
            if (v47 <= v56)
            {
              a2 = v65;
              goto LABEL_58;
            }
          }

          v57 = v60;
          if (v46 < v65 || v75 >= v65)
          {
            break;
          }

          a2 = v66;
          a1 = v73;
          v40 = v59;
          v41 = v64;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_58;
          }
        }

        a2 = v66;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v73;
        v40 = v59;
        v41 = v64;
        if (v42 > v57)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v78 = a2;
    v76 = v40;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v66 = a4 + v22;
    v76 = a4 + v22;
    if (v22 >= 1 && a2 < v75)
    {
      v25 = *(v12 + 16);
      v62 = (v7 + 8);
      v63 = v25;
      v64 = v19;
      v65 = v12 + 16;
      v61 = (v12 + 8);
      v26 = v74;
      do
      {
        v73 = a1;
        v27 = v72;
        v28 = v63;
        (v63)(v72, a2, v26);
        v29 = v67;
        (v28)(v67, a4, v26);
        v30 = v68;
        sub_224DAAD98();
        v31 = v69;
        sub_224DAAD98();
        v71 = MEMORY[0x22AA57C30](v30, v31);
        v32 = a2;
        v33 = *v62;
        v34 = v31;
        v35 = a4;
        v36 = v70;
        (*v62)(v34, v70);
        v33(v30, v36);
        v37 = *v61;
        (*v61)(v29, v26);
        v37(v27, v26);
        if (v71)
        {
          v38 = v64;
          a2 = v32 + v64;
          v39 = v73;
          a4 = v35;
          if (v73 < v32 || v73 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v32;
          v38 = v64;
          a4 = v35 + v64;
          v39 = v73;
          if (v73 < v35 || v73 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v77 = a4;
        }

        a1 = v39 + v38;
        v78 = a1;
      }

      while (a4 < v66 && a2 < v75);
    }
  }

LABEL_59:
  sub_224CB2404(&v78, &v77, &v76);
  return 1;
}

uint64_t sub_224ACE1F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a2;
  v33 = a4;
  v31 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DB0, &unk_224DB35E0);
  v11 = *(v30 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v30);
  v14 = &v29 - v13;
  v36[3] = type metadata accessor for PreviewControlConfigurationService();
  v36[4] = sub_224ACFEEC(&unk_281352A58, 255, type metadata accessor for PreviewControlConfigurationService);
  v36[0] = a1;
  v16 = a1[5];
  v15 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v16);
  v17 = *(v15 + 8);
  v18 = *(v17 + 40);

  *&v34[0] = v18(768, v16, v17);
  v35 = *(a5 + 16);
  v19 = v35;
  v20 = sub_224DAF358();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  v21 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  sub_224AC319C();
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80);
  sub_224ACFEEC(&qword_281350A80, 255, sub_224AC319C);
  sub_224DAB448();
  sub_224A3311C(v10, &qword_27D6F5090, &qword_224DB5C30);

  v22 = swift_allocObject();
  swift_weakInit();
  sub_224A3317C(v36, v34);
  v23 = swift_allocObject();
  v23[2] = v22;
  sub_224A36F98(v34, (v23 + 3));
  v24 = v31;
  v25 = v32;
  v26 = v33;
  v23[8] = v31;
  v23[9] = v26;
  v23[10] = v25;
  sub_224A364AC(v24);
  sub_224A33088(&qword_2813512B0, &qword_27D6F5DB0, &unk_224DB35E0);

  v27 = v30;
  sub_224DAB488();

  (*(v11 + 8))(v14, v27);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_224ACE600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a2;
  v32 = a4;
  v30 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - v12;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DB0, &unk_224DB35E0);
  v14 = *(v29 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v29);
  v17 = &v28 - v16;
  v35[3] = a6;
  v35[4] = a7;
  __swift_allocate_boxed_opaque_existential_1(v35);
  (*(*(a6 - 8) + 16))();
  *&v33[0] = (*(*(a7 + 8) + 40))(768, a6);
  v34 = *(a5 + 16);
  v18 = v34;
  v19 = sub_224DAF358();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  sub_224AC319C();
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80);
  sub_224ACFEEC(&qword_281350A80, 255, sub_224AC319C);
  sub_224DAB448();
  sub_224A3311C(v13, &qword_27D6F5090, &qword_224DB5C30);

  v21 = swift_allocObject();
  swift_weakInit();
  sub_224A3317C(v35, v33);
  v22 = swift_allocObject();
  v22[2] = v21;
  sub_224A36F98(v33, (v22 + 3));
  v23 = v30;
  v24 = v31;
  v25 = v32;
  v22[8] = v30;
  v22[9] = v25;
  v22[10] = v24;
  sub_224A364AC(v23);
  sub_224A33088(&qword_2813512B0, &qword_27D6F5DB0, &unk_224DB35E0);

  v26 = v29;
  sub_224DAB488();

  (*(v14 + 8))(v17, v26);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_224ACE9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  (*(*(a4 + 8) + 80))(sub_224ACFFA0, a2, a3);
  return (*(v7 + 8))(v10, a3);
}

uint64_t sub_224ACEB00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C9D900(a1, v4, v5, v6);
}

uint64_t sub_224ACEBB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C9D44C(a1, v4, v5, v6);
}

uint64_t sub_224ACEC68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACED1C;

  return sub_224C9D900(a1, v4, v5, v6);
}

uint64_t sub_224ACED1C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_224ACEE10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224AC5014(a1, v4, v5, v6);
}

uint64_t sub_224ACEEC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224AC6138(a1, v4, v5, v6);
}

uint64_t sub_224ACEF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9, __int128 *a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, __int128 a24, uint64_t a25, uint64_t a26)
{
  v67 = a8;
  v66 = a7;
  v64 = a6;
  v62 = a5;
  v60 = a4;
  v68 = a3;
  v59 = a1;
  v65 = a15;
  v63 = a14;
  v61 = a13;
  v57 = a12;
  v58 = a10;
  v79 = a23;
  v80 = a24;
  v78[3] = a19;
  v81 = a25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v78);
  (*(*(a19 - 8) + 32))(boxed_opaque_existential_1, a2, a19);
  v76 = a18;
  v77 = a22;
  v28 = __swift_allocate_boxed_opaque_existential_1(v75);
  (*(*(a18 - 8) + 32))(v28, a9, a18);
  v73 = a20;
  v74 = a26;
  v29 = __swift_allocate_boxed_opaque_existential_1(v72);
  (*(*(a20 - 8) + 32))(v29, a11, a20);
  v70 = a17;
  v71 = a21;
  v30 = __swift_allocate_boxed_opaque_existential_1(v69);
  (*(*(a17 - 8) + 32))(v30, a12, a17);
  type metadata accessor for ControlReplicationProvider();
  v31 = swift_allocObject();
  v32 = v76;
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
  v34 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v36 = (&v57 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36);
  v38 = v73;
  v39 = __swift_mutable_project_boxed_opaque_existential_1(v72, v73);
  v40 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v42 = (&v57 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42);
  v44 = v70;
  v45 = __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
  v46 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v48 = (&v57 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48);
  v50 = *v36;
  v51 = *v42;
  v52 = *v48;
  *(v31 + 208) = type metadata accessor for PreviewControlConfigurationService();
  *(v31 + 216) = sub_224ACFEEC(&unk_281352A48, 255, type metadata accessor for PreviewControlConfigurationService);
  *(v31 + 184) = v50;
  *(v31 + 288) = type metadata accessor for LiveControlService();
  *(v31 + 296) = sub_224ACFEEC(&qword_281359B70, 255, type metadata accessor for LiveControlService);
  *(v31 + 264) = v51;
  *(v31 + 360) = type metadata accessor for LocationService(0);
  *(v31 + 368) = &off_2838352C0;
  *(v31 + 336) = v52;
  *(v31 + 104) = MEMORY[0x277D84FA0];
  *(v31 + 24) = v59;
  sub_224ACFF34(v78, v31 + 32);
  v53 = v62;
  *(v31 + 112) = v60;
  *(v31 + 120) = v53;
  v54 = v66;
  *(v31 + 128) = v64;
  *(v31 + 136) = v54;
  sub_224A36F98(v67, v31 + 144);
  sub_224A36F98(v58, v31 + 224);
  *(v31 + 304) = v61;
  v55 = v65;
  *(v31 + 320) = v63;
  *(v31 + 328) = v55;
  *(v31 + 16) = v68;
  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(v72);
  __swift_destroy_boxed_opaque_existential_1(v75);
  return v31;
}

uint64_t sub_224ACF49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v24 = a3;
  v25 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3328, &qword_224DB3540);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v28[3] = type metadata accessor for PreviewControlConfigurationService();
  v28[4] = sub_224ACFEEC(&unk_281352A58, 255, type metadata accessor for PreviewControlConfigurationService);
  v28[0] = a2;

  *&v26[0] = sub_224C9A9FC();
  v27 = *(a5 + 16);
  v16 = v27;
  v17 = sub_224DAF358();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3330, &qword_224DB3548);
  sub_224AC319C();
  sub_224A33088(&qword_2813511A0, &qword_27D6F3330, &qword_224DB3548);
  sub_224ACFEEC(&qword_281350A80, 255, sub_224AC319C);
  sub_224DAB448();
  sub_224A3311C(v10, &qword_27D6F5090, &qword_224DB5C30);

  sub_224A3317C(v28, v26);
  v19 = swift_allocObject();
  sub_224A36F98(v26, v19 + 16);
  v20 = v24;
  v21 = v25;
  *(v19 + 56) = v24;
  *(v19 + 64) = v21;
  sub_224A364AC(v20);
  sub_224A33088(&qword_2813512E0, &qword_27D6F3328, &qword_224DB3540);
  sub_224DAB488();

  (*(v12 + 8))(v15, v11);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_224ACF838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a5;
  v29 = a3;
  v30 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3328, &qword_224DB3540);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  v33[3] = a6;
  v33[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1, a2, a6);
  *&v31[0] = sub_224C9A9FC();
  v32 = *(a5 + 16);
  v21 = v32;
  v22 = sub_224DAF358();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3330, &qword_224DB3548);
  sub_224AC319C();
  sub_224A33088(&qword_2813511A0, &qword_27D6F3330, &qword_224DB3548);
  sub_224ACFEEC(&qword_281350A80, 255, sub_224AC319C);
  sub_224DAB448();
  sub_224A3311C(v14, &qword_27D6F5090, &qword_224DB5C30);

  sub_224A3317C(v33, v31);
  v24 = swift_allocObject();
  sub_224A36F98(v31, v24 + 16);
  v25 = v29;
  v26 = v30;
  *(v24 + 56) = v29;
  *(v24 + 64) = v26;
  sub_224A364AC(v25);
  sub_224A33088(&qword_2813512E0, &qword_27D6F3328, &qword_224DB3540);
  sub_224DAB488();

  (*(v16 + 8))(v19, v15);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t objectdestroy_56Tm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v0[7])
  {
    v1 = v0[8];
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_224ACFC44(char a1)
{
  if (a1 == 3)
  {
    v2 = 312;
    return *(v1 + v2);
  }

  if (a1 == 4)
  {
    v2 = 328;
    return *(v1 + v2);
  }

  sub_224DAF938();
  sub_224DAFA48();
  MEMORY[0x22AA5D210](0xD000000000000023, 0x8000000224DC5390);
  result = sub_224DAFB58();
  __break(1u);
  return result;
}

uint64_t sub_224ACFD2C(uint64_t a1)
{
  v2 = sub_224DAAF28();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224ACFD88(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAAF28();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_74Tm()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  if (v0[8])
  {
    v2 = v0[9];
  }

  v3 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_224ACFEEC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_224ACFF34(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = v3;
  *(a2 + 48) = v4;
  *(a2 + 16) = v2;
  return a2;
}

uint64_t sub_224ACFFA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v161 = a5;
  v160 = a4;
  v159 = a2;
  v170 = a1;
  v164 = sub_224DACC88();
  v171 = *(v164 - 8);
  v6 = *(v171 + 64);
  v7 = MEMORY[0x28223BE20](v164);
  v163 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = v8;
  MEMORY[0x28223BE20](v7);
  v158 = &v146 - v9;
  v10 = sub_224DAB258();
  v11 = *(v10 - 8);
  v172 = v10;
  v173 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v166 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v156 = &v146 - v15;
  v155 = sub_224DAE918();
  v154 = *(v155 - 8);
  v16 = v154[8];
  MEMORY[0x28223BE20](v155);
  v153 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_224DA9908();
  v151 = *(v152 - 8);
  v18 = *(v151 + 64);
  MEMORY[0x28223BE20](v152);
  v150 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_224DA9878();
  v20 = *(v165 - 1);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v165);
  v149 = (&v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for ExtensionTask.Identifier(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v168 = (&v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_224DACB28();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v146 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v167 = &v146 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v146 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  v38 = *(*(v37 - 8) + 56);
  v38(v36, 1, 1, v37);
  v169 = a3;
  sub_224DACC58();
  v39 = (*(v27 + 88))(v30, v26);
  if (v39 == *MEMORY[0x277CF9B58])
  {
    sub_224A3D238(v36, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    (*(v27 + 96))(v30, v26);
    v40 = *(v37 + 48);
    (*(v20 + 32))(v36, v30, v165);
    *&v36[v40] = 0x408C200000000000;
    v41 = v36;
    v42 = 0;
LABEL_5:
    v38(v41, v42, 1, v37);
    goto LABEL_7;
  }

  if (v39 == *MEMORY[0x277CF9B50])
  {
    sub_224A3D238(v36, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    v41 = v36;
    v42 = 1;
    goto LABEL_5;
  }

  (*(v27 + 8))(v30, v26);
LABEL_7:
  v43 = v170;
  v44 = v168;
  *v168 = v170;
  swift_storeEnumTagMultiPayload();
  v162 = v36;
  v45 = v167;
  v147 = type metadata accessor for ExtensionTask.SchedulingConfiguration;
  sub_224A3F63C(v36, v167, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5070, &unk_224DB3670);
  v46 = *(type metadata accessor for ExtensionTask.SchedulingOption(0) - 8);
  v47 = *(v46 + 72);
  v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_224DB3100;
  v50 = sub_224DAE8B8();
  (*(*(v50 - 8) + 56))(v49 + v48, 3, 5, v50);
  v148 = type metadata accessor for ExtensionTask(0);
  v51 = objc_allocWithZone(v148);
  v52 = v43;
  sub_224DAE908();
  v53 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
  *&v51[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions] = MEMORY[0x277D84F90];
  v54 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  v55 = sub_224DAC938();
  (*(*(v55 - 8) + 56))(&v51[v54], 1, 1, v55);
  v56 = &v51[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem];
  *v56 = 0;
  v56[1] = 0;
  v57 = &v51[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
  *v57 = 0;
  v57[1] = 0;
  v58 = &v51[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem];
  *v58 = 0;
  v58[1] = 0;
  v59 = &v51[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
  *v59 = 0;
  v59[1] = 0;
  v60 = v149;
  sub_224DA9868();
  (*(v20 + 32))(&v51[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate], v60, v165);
  *&v51[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target] = v43;
  sub_224A3F63C(v45, &v51[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration], type metadata accessor for ExtensionTask.SchedulingConfiguration);
  swift_beginAccess();
  v61 = *&v51[v53];
  *&v51[v53] = v49;
  v165 = v52;

  v62 = &v51[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost];
  *v62 = 0;
  v62[8] = 1;
  v149 = type metadata accessor for ExtensionTask.Identifier;
  sub_224A3F63C(v44, &v51[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], type metadata accessor for ExtensionTask.Identifier);
  v63 = v150;
  sub_224DA98F8();
  v64 = v151;
  v65 = v152;
  (*(v151 + 16))(&v51[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v63, v152);
  v175[0] = sub_224DA98E8();
  sub_224A3F6A4();
  sub_224DAEF18();
  v66 = sub_224A3D19C(8);
  v68 = v67;
  v70 = v69;
  v72 = v71;

  v73 = MEMORY[0x22AA5D1C0](v66, v68, v70, v72);
  v75 = v74;

  v76 = &v51[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
  *v76 = v73;
  v76[1] = v75;
  v51[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_allowCostOverride] = 1;
  v176.receiver = v51;
  v176.super_class = v148;
  v77 = objc_msgSendSuper2(&v176, sel_init);
  (*(v64 + 8))(v63, v65);
  sub_224A3D238(v167, v147);
  sub_224A3D238(v168, v149);
  v78 = v154;
  v79 = v153;
  v80 = v155;
  (v154[13])(v153, *MEMORY[0x277CE3D68], v155);
  v81 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_requiredDataProtectionLevel;
  swift_beginAccess();
  v82 = v78[5];
  v168 = v77;
  v82(v77 + v81, v79, v80);
  swift_endAccess();
  v83 = v173;
  v84 = *(v173 + 16);
  v153 = OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger;
  v85 = v156;
  v86 = v172;
  v155 = v173 + 16;
  v154 = v84;
  (v84)(v156, v174 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v172);
  v87 = v165;
  v88 = sub_224DAB228();
  v89 = sub_224DAF268();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *v90 = 138543362;
    *(v90 + 4) = v87;
    *v91 = v170;
    v92 = v87;
    _os_log_impl(&dword_224A2F000, v88, v89, "%{public}@ reload without cache", v90, 0xCu);
    sub_224A3311C(v91, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v91, -1, -1);
    MEMORY[0x22AA5EED0](v90, -1, -1);
  }

  v93 = *(v83 + 8);
  v173 = v83 + 8;
  v165 = v93;
  (v93)(v85, v86);
  v94 = swift_allocObject();
  *(v94 + 16) = 0;
  v95 = v171;
  v96 = *(v171 + 16);
  v152 = v171 + 16;
  v156 = v96;
  v97 = v158;
  v98 = v87;
  v99 = v164;
  (v96)(v158, v169);
  v100 = (*(v95 + 80) + 40) & ~*(v95 + 80);
  v101 = (v157 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
  v102 = swift_allocObject();
  v103 = v174;
  *(v102 + 2) = v174;
  *(v102 + 3) = v98;
  *(v102 + 4) = v159;
  v104 = *(v95 + 32);
  v105 = v99;
  v104(v102 + v100, v97, v99);
  *(v102 + v101) = v94;
  v106 = v168;
  v107 = (v168 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem);
  v108 = *(v168 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem);
  v109 = *(v168 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem + 8);
  *v107 = sub_224AD18BC;
  v107[1] = v102;
  v110 = v98;

  sub_224A3D418(v108);
  v111 = swift_allocObject();
  v112 = v161;
  *(v111 + 2) = v160;
  *(v111 + 3) = v112;
  *(v111 + 4) = v94;
  v113 = (v106 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
  v114 = *(v106 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
  v115 = *(v106 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion + 8);
  *v113 = sub_224A8B280;
  v113[1] = v111;
  v167 = v94;
  v116 = v172;

  sub_224A3D418(v114);
  v117 = v166;
  (v154)(v166, &v153[v103], v116);
  v118 = v163;
  (v156)(v163, v169, v105);
  v119 = v110;
  v120 = sub_224DAB228();
  v121 = sub_224DAF2A8();

  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    v124 = v105;
    v125 = v118;
    v126 = swift_slowAlloc();
    v175[0] = v126;
    *v122 = 138543618;
    *(v122 + 4) = v119;
    *v123 = v170;
    *(v122 + 12) = 2082;
    v127 = v119;
    v128 = sub_224DACBA8();
    v130 = v129;
    (*(v171 + 8))(v125, v124);
    v131 = sub_224A33F74(v128, v130, v175);

    *(v122 + 14) = v131;
    _os_log_impl(&dword_224A2F000, v120, v121, "%{public}@ scheduled %{public}s", v122, 0x16u);
    sub_224A3311C(v123, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v123, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v126);
    MEMORY[0x22AA5EED0](v126, -1, -1);
    MEMORY[0x22AA5EED0](v122, -1, -1);

    v132 = v166;
  }

  else
  {

    (*(v171 + 8))(v118, v105);
    v132 = v117;
  }

  (v165)(v132, v116);
  sub_224DAD358();
  v133 = *(v174 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_taskService + 24);
  v134 = *(v174 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_taskService + 32);
  __swift_project_boxed_opaque_existential_1((v174 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_taskService), v133);
  v135 = v168;
  v136 = (*(v134 + 16))(v168, v133, v134);
  v138 = v137;
  v140 = v139;
  v142 = v141;
  v175[3] = &type metadata for TaskCancellable;
  v175[4] = sub_224A8B0FC();
  v143 = swift_allocObject();
  v175[0] = v143;
  v143[2] = v136;
  v143[3] = v138;
  v143[4] = v140;
  v143[5] = v142;
  v144 = sub_224DAD368();

  sub_224A3D238(v162, type metadata accessor for ExtensionTask.SchedulingConfiguration);

  return v144;
}

void sub_224AD0FFC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = a7;
  v49 = a8;
  v47 = a6;
  v53 = a2;
  v54 = a3;
  v11 = sub_224DAE6E8();
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = *(v51 + 64);
  MEMORY[0x28223BE20](v11);
  v50 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAB258();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v46 - v20;
  v22 = sub_224DADA98();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A4B83C(a1, v56);
  if (!v56[3])
  {
    sub_224A3311C(v56, &qword_27D6F4760, &unk_224DB3680);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5080, &qword_224DB3690);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    (*(v15 + 16))(v19, a4 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v14);
    v33 = a5;
    v34 = sub_224DAB228();
    v35 = sub_224DAF288();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138543362;
      *(v36 + 4) = v33;
      *v37 = v33;
      v38 = v33;
      _os_log_impl(&dword_224A2F000, v34, v35, "%{public}@ No extension session", v36, 0xCu);
      sub_224A3311C(v37, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v37, -1, -1);
      MEMORY[0x22AA5EED0](v36, -1, -1);
    }

    (*(v15 + 8))(v19, v14);
    sub_224AD1978();
    (*(v51 + 104))(v50, *MEMORY[0x277CE3C40], v52);
    v39 = sub_224DAF638();
    v53();
    goto LABEL_9;
  }

  v46 = v55;
  v27 = *(a4 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_descriptorService + 32);
  __swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_descriptorService), *(a4 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_descriptorService + 24));
  v28 = *(v27 + 24);
  if (sub_224DADA38())
  {
    sub_224DACA18();
    sub_224DACF08();

    (*(v23 + 8))(v26, v22);
    v29 = sub_224DACF18();

    v30 = sub_224AE8EB4(v29);

    v31 = v49;

    v32 = v54;

    sub_224BAFA30(a5, v47, v46, v48, v30, a4, v31, v53, v32);
    swift_unknownObjectRelease();

    return;
  }

  (*(v15 + 16))(v21, a4 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v14);
  v40 = a5;
  v41 = sub_224DAB228();
  v42 = sub_224DAF288();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138543362;
    *(v43 + 4) = v40;
    *v44 = v40;
    v45 = v40;
    _os_log_impl(&dword_224A2F000, v41, v42, "%{public}@ Descriptors are not available", v43, 0xCu);
    sub_224A3311C(v44, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v44, -1, -1);
    MEMORY[0x22AA5EED0](v43, -1, -1);
  }

  (*(v15 + 8))(v21, v14);
  sub_224AD1978();
  (*(v51 + 104))(v50, *MEMORY[0x277CE3C40], v52);
  v39 = sub_224DAF638();
  v53();
  swift_unknownObjectRelease();
LABEL_9:
}

uint64_t sub_224AD1650(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    v7 = *(a3 + 16);
    *(a3 + 16) = a1;
  }

  return a4();
}

uint64_t sub_224AD16D0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_taskService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_descriptorService));
  return __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_hostService));
}

uint64_t sub_224AD1714()
{
  v1 = v0[3];
  sub_224A3D418(v0[2]);
  v2 = OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger;
  v3 = sub_224DAB258();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_cacheManager);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_extensionManager));
  v5 = OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_taskService;

  __swift_destroy_boxed_opaque_existential_1((v0 + v5));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_descriptorService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_hostService));

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MobilePlaceholderReloadStrategy()
{
  result = qword_2813535B8;
  if (!qword_2813535B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_224AD18BC(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v7 = *(sub_224DACC88() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[4];
  v12 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_224AD0FFC(a1, a2, a3, v9, v10, v11, v3 + v8, v12);
}

unint64_t sub_224AD1978()
{
  result = qword_281350860;
  if (!qword_281350860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281350860);
  }

  return result;
}

id sub_224AD19C4()
{
  v1 = v0;
  v2 = sub_224DA9908();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v63 = &v51[-v8];
  v9 = OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_activityStore;
  swift_beginAccess();
  v10 = *&v0[v9];
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v56 = OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider;
  v15 = (v12 + 63) >> 6;
  v61 = v3 + 32;
  v62 = v3 + 16;
  v60 = (v3 + 8);
  v64 = v10;

  v16 = 0;
  *&v17 = 136446466;
  v54 = v17;
  v58 = v7;
  v59 = v2;
  v57 = v9;
  for (i = v3; v14; v9 = v57)
  {
LABEL_10:
    while (1)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = v63;
      (*(v3 + 16))(v63, *(v64 + 48) + *(v3 + 72) * (v19 | (v16 << 6)), v2);
      (*(v3 + 32))(v7, v20, v2);
      swift_beginAccess();
      v21 = *&v1[v9];
      if (*(v21 + 16))
      {
        v22 = sub_224A438E8(v7);
        if (v23)
        {
          break;
        }
      }

      swift_endAccess();
      (*v60)(v7, v2);
      if (!v14)
      {
        goto LABEL_6;
      }
    }

    v24 = *(*(v21 + 56) + 8 * v22);
    swift_endAccess();
    v25 = *v60;

    v25(v7, v2);
    if (qword_2813515F0 != -1)
    {
      swift_once();
    }

    v26 = sub_224DAB258();
    __swift_project_value_buffer(v26, qword_281364F88);

    v27 = sub_224DAB228();
    v28 = sub_224DAF288();

    v29 = v24;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      v52 = v28;
      v31 = v30;
      v32 = swift_slowAlloc();
      v66 = v32;
      *v31 = v54;
      v33 = (*(v24 + 24) + OBJC_IVAR____TtC10ChronoCore12TaskActivity_logDigest);
      v34 = v27;
      v53 = v1;
      v35 = *v33;
      v36 = v33[1];

      v37 = sub_224A33F74(v35, v36, &v66);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2082;
      v38 = *(v29 + 24);
      v39 = *(v38 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_name + 8);
      v67 = *(v38 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_name);
      v68 = v39;

      MEMORY[0x22AA5D210](46, 0xE100000000000000);
      MEMORY[0x22AA5D210](*(v38 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_logDigest), *(v38 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_logDigest + 8));

      v40 = sub_224A33F74(v67, v68, &v66);

      *(v31 + 14) = v40;
      v1 = v53;
      _os_log_impl(&dword_224A2F000, v34, v52, "[%{public}s]: orphaned %{public}s; cancelling", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v32, -1, -1);
      MEMORY[0x22AA5EED0](v31, -1, -1);
    }

    else
    {
    }

    v3 = i;
    sub_224A3317C(&v1[v56], &v67);
    v41 = v1;
    v42 = v69;
    v43 = v70;
    __swift_project_boxed_opaque_existential_1(&v67, v69);
    v44 = v42;
    v1 = v41;
    (*(v43 + 40))(v29, v44, v43);

    __swift_destroy_boxed_opaque_existential_1(&v67);
    v7 = v58;
    v2 = v59;
  }

  while (1)
  {
LABEL_6:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_26:
      swift_once();
      goto LABEL_21;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v18);
    ++v16;
    if (v14)
    {
      v16 = v18;
      goto LABEL_10;
    }
  }

  if (!*(*&v1[v9] + 16))
  {
    goto LABEL_24;
  }

  if (qword_2813515F0 != -1)
  {
    goto LABEL_26;
  }

LABEL_21:
  v45 = sub_224DAB258();
  __swift_project_value_buffer(v45, qword_281364F88);
  v46 = sub_224DAB228();
  v47 = sub_224DAF288();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_224A2F000, v46, v47, "orphaned activities detected", v48, 2u);
    MEMORY[0x22AA5EED0](v48, -1, -1);
  }

LABEL_24:
  v49 = type metadata accessor for TaskActivityScheduler();
  v65.receiver = v1;
  v65.super_class = v49;
  return objc_msgSendSuper2(&v65, sel_dealloc);
}

void sub_224AD2080(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_224A49120(a1, a2 & 1);
  }
}

void sub_224AD20F0(char *a1, NSObject *a2, uint64_t a3)
{
  v6 = sub_224DA9908();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_activityStore;
  swift_beginAccess();
  if (*(*&a1[v11] + 16) && (, sub_224A438E8(a2), v13 = v12, , (v13 & 1) != 0))
  {
    sub_224A46B4C(a3, a1, a2);
  }

  else
  {
    if (qword_2813515F0 != -1)
    {
      swift_once();
    }

    v14 = sub_224DAB258();
    __swift_project_value_buffer(v14, qword_281364F88);
    (*(v7 + 16))(v10, a2, v6);
    v15 = sub_224DAB228();
    v16 = sub_224DAF2A8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v34 = v17;
      v35 = swift_slowAlloc();
      v37 = v35;
      *v17 = 136446210;
      v36 = sub_224DA98E8();
      sub_224A3F6A4();
      sub_224DAEF18();
      v18 = v6;
      v19 = sub_224A3D19C(8);
      v21 = v20;
      v23 = v22;
      v25 = v24;

      v26 = MEMORY[0x22AA5D1C0](v19, v21, v23, v25);
      v28 = v27;

      (*(v7 + 8))(v10, v18);
      v29 = sub_224A33F74(v26, v28, &v37);

      v30 = v34;
      *(v34 + 1) = v29;
      v31 = v30;
      _os_log_impl(&dword_224A2F000, v15, v16, "[%{public}s]: activity abandoned from enqueing because already cancelled or completed.", v30, 0xCu);
      v32 = v35;
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x22AA5EED0](v32, -1, -1);
      MEMORY[0x22AA5EED0](v31, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }
}

uint64_t sub_224AD2404()
{
  v0 = sub_224DAB7B8();
  v1 = *(v0 - 8);
  v29 = v0;
  v30 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v28 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_224DAF318();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_224DAF3C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAB848();
  v26 = *(v11 - 8);
  v27 = v11;
  v12 = *(v26 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_224AC319C();
  sub_224DAB7F8();
  (*(v7 + 104))(v10, *MEMORY[0x277D85268], v6);
  aBlock[0] = MEMORY[0x277D84F90];
  sub_224A47C10(&qword_281350A88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  v15 = sub_224DAF418();
  v16 = swift_allocObject();
  v17 = v25;
  *(v16 + 16) = v25;
  *(v16 + 24) = v15;
  aBlock[4] = sub_224AD38F8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_2;
  v18 = _Block_copy(aBlock);
  v19 = v17;
  v20 = v15;
  sub_224DAB7E8();
  v31 = MEMORY[0x277D84F90];
  sub_224A47C10(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  v22 = v28;
  v21 = v29;
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v14, v22, v18);
  _Block_release(v18);

  (*(v30 + 8))(v22, v21);
  (*(v26 + 8))(v14, v27);
}

void sub_224AD28A8(char *a1, void *a2)
{
  if (qword_2813515F0 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281364F88);
  v5 = sub_224DAB228();
  v6 = sub_224DAF2A8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_224A2F000, v5, v6, "Waiting for data migration to complete.", v7, 2u);
    MEMORY[0x22AA5EED0](v7, -1, -1);
  }

  v8 = *&a1[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__systemDataMigrator + 32];
  __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__systemDataMigrator], *&a1[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__systemDataMigrator + 24]);
  v9 = sub_224DAC968();
  v10 = *&a1[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock];
  os_unfair_lock_lock(*(v10 + 16));
  sub_224AD2A18(a1, v9 & 1, a2);
  v11 = *(v10 + 16);

  os_unfair_lock_unlock(v11);
}

void sub_224AD2A18(char *a1, int a2, void *a3)
{
  v71 = a3;
  v60 = sub_224DA9FB8();
  v59 = *(v60 - 8);
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v58 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_224DA9FD8();
  v62 = *(v63 - 8);
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v61 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v69 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3428, &qword_224DB3700);
  v73 = *(v12 - 8);
  v74 = v12;
  v13 = *(v73 + 64);
  MEMORY[0x28223BE20](v12);
  v72 = &v58 - v14;
  v15 = &a1[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__keybagProvider];
  v16 = *&a1[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__keybagProvider + 32];
  __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__keybagProvider], *&a1[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__keybagProvider + 24]);
  sub_224DAA178();
  if (qword_2813515F0 != -1)
  {
    swift_once();
  }

  v17 = sub_224DAB258();
  __swift_project_value_buffer(v17, qword_281364F88);
  v18 = a1;
  v19 = sub_224DAB228();
  v20 = sub_224DAF2A8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67240448;
    *(v21 + 4) = a2 & 1;
    *(v21 + 8) = 2050;
    v22 = OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_enqueueActivityBlocksWaitingForMigration;
    swift_beginAccess();
    *(v21 + 10) = *(*&v18[v22] + 16);

    _os_log_impl(&dword_224A2F000, v19, v20, "Data migration completed (ran? %{BOOL,public}d) - have %{public}ld pending activities.", v21, 0x12u);
    MEMORY[0x22AA5EED0](v21, -1, -1);
  }

  else
  {
  }

  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v68 = (v23 + 16);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v65 = (v24 + 16);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  v27 = v71;
  *(v26 + 16) = v71;
  *(v26 + 24) = v25;
  v67 = v25;
  *(v26 + 32) = v24;
  *(v26 + 40) = v23;
  v64 = a2;
  *(v26 + 48) = a2 & 1;
  v66 = *&v18[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock];
  v28 = *(v15 + 4);
  __swift_project_boxed_opaque_existential_1(v15, *(v15 + 3));

  v29 = v27;
  v71 = v23;

  v70 = v24;

  v76 = sub_224DAA138();
  v75 = v29;
  v30 = sub_224DAF358();
  v31 = v69;
  (*(*(v30 - 8) + 56))(v69, 1, 1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3430, &qword_224DB3708);
  sub_224AC319C();
  sub_224A33088(&unk_281351150, &qword_27D6F3430, &qword_224DB3708);
  sub_224A47C10(&qword_281350A80, sub_224AC319C);
  v32 = v72;
  sub_224DAB448();
  sub_224AD3910(v31);

  v33 = swift_allocObject();
  v33[2] = v66;
  v33[3] = sub_224AD3900;
  v33[4] = v26;
  sub_224A33088(&qword_2813512B8, &qword_27D6F3428, &qword_224DB3700);
  v34 = v26;

  v35 = v74;
  v36 = sub_224DAB488();

  (*(v73 + 8))(v32, v35);
  v37 = v68;
  swift_beginAccess();
  v38 = *v37;
  *v37 = v36;

  BSDispatchQueueAssert();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v40 = Strong;
    v41 = v70;
    v42 = v71;
    os_unfair_lock_assert_owner(*(*(Strong + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock) + 16));
    v43 = v65;
    swift_beginAccess();
    if (*v43)
    {

LABEL_18:

      return;
    }

    v74 = v34;
    v44 = &v40[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__keybagProvider];
    v45 = *&v40[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__keybagProvider + 32];
    __swift_project_boxed_opaque_existential_1(&v40[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__keybagProvider], *&v40[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__keybagProvider + 24]);
    v46 = sub_224DAA148();
    if ((v64 & 1) == 0 || (v46 & 1) == 0)
    {
      sub_224AD3670(v40, v41, v42);

      goto LABEL_18;
    }

    v47 = *(v44 + 4);
    __swift_project_boxed_opaque_existential_1(v44, *(v44 + 3));
    v48 = v61;
    sub_224DAA128();
    v49 = __swift_project_boxed_opaque_existential_1(&v40[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_userManager], *&v40[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_userManager + 24]);
    v50 = *v49;
    if ([*(*v49 + 16) isMultiUser])
    {
      v51 = [*(v50 + 16) currentUser];
      if (!v51)
      {
        goto LABEL_16;
      }

      v52 = v51;
      v53 = [v51 isLoginUser];

      if (!v53)
      {
        goto LABEL_16;
      }
    }

    v54 = v59;
    v55 = v58;
    v56 = v60;
    (*(v59 + 104))(v58, *MEMORY[0x277CF9F90], v60);
    v57 = sub_224DA9FC8();
    (*(v54 + 8))(v55, v56);
    if ((v57 & 1) == 0)
    {
      (*(v62 + 8))(v48, v63);
    }

    else
    {
LABEL_16:
      sub_224AD3670(v40, v41, v42);

      (*(v62 + 8))(v48, v63);
    }
  }

  else
  {
  }
}

void sub_224AD334C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_224DA9FB8();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DA9FD8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssert();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    os_unfair_lock_assert_owner(*(*(Strong + OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock) + 16));
    swift_beginAccess();
    if (*(a3 + 16) != 1)
    {
      v30 = v13;
      v31 = v12;
      v32 = a4;
      v19 = &v18[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__keybagProvider];
      v20 = *&v18[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__keybagProvider + 32];
      __swift_project_boxed_opaque_existential_1(&v18[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__keybagProvider], *&v18[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__keybagProvider + 24]);
      v21 = sub_224DAA148();
      if (a5 & 1) != 0 && (v21)
      {
        v22 = v19[4];
        __swift_project_boxed_opaque_existential_1(v19, v19[3]);
        sub_224DAA128();
        v23 = __swift_project_boxed_opaque_existential_1(&v18[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_userManager], *&v18[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_userManager + 24]);
        v24 = *v23;
        if ([*(*v23 + 16) isMultiUser])
        {
          v25 = [*(v24 + 16) currentUser];
          if (!v25)
          {
            goto LABEL_9;
          }

          v26 = v25;
          v27 = [v25 isLoginUser];

          if (!v27)
          {
            goto LABEL_9;
          }
        }

        v28 = v33;
        (*(v33 + 104))(v11, *MEMORY[0x277CF9F90], v8);
        v29 = sub_224DA9FC8();
        (*(v28 + 8))(v11, v8);
        if (v29)
        {
LABEL_9:
          sub_224AD3670(v18, a3, v32);

          (*(v30 + 8))(v16, v31);
          return;
        }

        (*(v30 + 8))(v16, v31);
      }

      else
      {
        sub_224AD3670(v18, a3, v32);
      }
    }
  }
}

uint64_t sub_224AD3670(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  a1[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_completedMigration] = 1;
  swift_beginAccess();
  *(a2 + 16) = 1;
  swift_beginAccess();
  if (*(a3 + 16))
  {
    v6 = *(a3 + 16);

    sub_224DAB328();
  }

  swift_beginAccess();
  v7 = *(a3 + 16);
  *(a3 + 16) = 0;

  if (qword_2813515F0 != -1)
  {
    swift_once();
  }

  v8 = sub_224DAB258();
  __swift_project_value_buffer(v8, qword_281364F88);
  v9 = a1;
  v10 = sub_224DAB228();
  v11 = sub_224DAF2A8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    v13 = OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_enqueueActivityBlocksWaitingForMigration;
    swift_beginAccess();
    *(v12 + 4) = (*(&v9->isa + v13))[2];

    _os_log_impl(&dword_224A2F000, v10, v11, "Unwinding %{public}ld pending activities.", v12, 0xCu);
    MEMORY[0x22AA5EED0](v12, -1, -1);
  }

  else
  {

    v10 = v9;
  }

  v14 = OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_enqueueActivityBlocksWaitingForMigration;
  swift_beginAccess();
  v15 = *(&v9->isa + v14);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = *(&v9->isa + v14);

    v18 = (v15 + 40);
    do
    {
      v20 = *(v18 - 1);
      v19 = *v18;

      v20(v21);

      v18 += 2;
      --v16;
    }

    while (v16);

    v22 = *(&v9->isa + v14);
  }

  *(&v9->isa + v14) = MEMORY[0x277D84F90];
}

uint64_t sub_224AD3910(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_224AD3978()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  os_unfair_lock_lock(*(v1 + 16));
  v2();
  v4 = *(v1 + 16);

  os_unfair_lock_unlock(v4);
}

void sub_224AD39C8()
{
  v1 = *(sub_224DA9908() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_224AD20F0(v3, (v0 + v2), v4);
}

uint64_t sub_224AD3ACC()
{
  v0 = type metadata accessor for _AccountStoreImpl();
  v10[3] = v0;
  v10[4] = &off_283829428;
  v10[0] = swift_allocObject();
  type metadata accessor for AccountsChangedNotification();
  v1 = swift_allocObject();
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v10, v0);
  v3 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = sub_224AD5308(*v5, v1);
  result = __swift_destroy_boxed_opaque_existential_1(v10);
  qword_2813651F8 = v7;
  return result;
}

uint64_t sub_224AD3BE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3438, &unk_224DB37F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v8 - v4;
  v8[1] = *(v0 + 16);
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A33088(&qword_281350EE0, &qword_27D6F4A10, &unk_224DB4000);
  sub_224DAB3C8();

  sub_224A33088(&qword_2813513C0, &unk_27D6F3438, &unk_224DB37F0);
  v6 = sub_224DAB3A8();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_224AD3E30()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 24);
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_224AD582C;
    *(v3 + 24) = v2;
    aBlock[4] = sub_224A8A838;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A9B6F8;
    aBlock[3] = &block_descriptor_49;
    v4 = _Block_copy(aBlock);
    v5 = v1;

    dispatch_sync(v5, v4);

    _Block_release(v4);
    LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_224AD3FA4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224AD4528();
  }

  return result;
}

uint64_t sub_224AD3FFC(void *a1)
{
  v2 = sub_224DAB7B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB848();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAF558();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[14];
  if (v18 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  a1[14] = v20;
  if (v20 == 1)
  {
    v21 = [objc_opt_self() sharedInstance];
    v30 = v3;
    v31 = v7;
    v22 = v21;
    v23 = *MEMORY[0x277CB8DB8];
    sub_224DAF568();

    swift_allocObject();
    swift_weakInit();
    sub_224A80D98(&qword_281350980, MEMORY[0x277CC9DB0]);
    v24 = sub_224DAB488();

    (*(v13 + 8))(v17, v12);
    v25 = a1[15];
    a1[15] = v24;

    v26 = a1[3];
    aBlock[4] = sub_224AD583C;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_53;
    v27 = _Block_copy(aBlock);
    v28 = v26;

    sub_224DAB7E8();
    v32 = MEMORY[0x277D84F90];
    sub_224A80D98(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v11, v6, v27);
    _Block_release(v27);

    (*(v30 + 8))(v6, v2);
    (*(v8 + 8))(v11, v31);
  }

  return result;
}

uint64_t sub_224AD4454()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224AD4860();
  }

  return result;
}

uint64_t sub_224AD44B4(void *a1)
{
  v2 = sub_224AD5604(&selRef_aa_primaryAppleAccount, "iCloudAccount: %{private}s");
  v3 = a1[7];
  a1[6] = v2;
  a1[7] = v4;

  v5 = sub_224AD5604(&selRef_ams_activeiTunesAccount, "iTunesAccount: %{private}s");
  v6 = a1[5];
  a1[4] = v5;
  a1[5] = v7;
}

uint64_t sub_224AD4528()
{
  v1 = sub_224DAB7B8();
  v15 = *(v1 - 8);
  v2 = *(v15 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAB848();
  v5 = *(v14 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v14);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 24);
  aBlock[4] = sub_224AD5814;
  v18 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_42;
  v10 = _Block_copy(aBlock);
  v11 = v9;

  sub_224DAB7E8();
  v16 = MEMORY[0x277D84F90];
  sub_224A80D98(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v8, v4, v10);
  _Block_release(v10);

  (*(v15 + 8))(v4, v1);
  (*(v5 + 8))(v8, v14);
}

uint64_t sub_224AD47E8(uint64_t result)
{
  v1 = *(result + 112);
  v2 = v1 == 1;
  v3 = v1 < 1;
  v4 = v1 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(result + 112) = v4;
    if (v2 && *(result + 120))
    {
      v5 = result;
      v6 = *(result + 120);

      sub_224DAB328();

      v7 = *(v5 + 120);
      *(v5 + 120) = 0;
    }
  }

  return result;
}

uint64_t sub_224AD4860()
{
  v1 = v0;
  v2 = sub_224DAB7B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB848();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DA9388();
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = v12;
  v14 = *MEMORY[0x277CB8C90];
  v38 = sub_224DAEE18();
  v39 = v15;
  sub_224DAF8D8();
  if (!*(v13 + 16) || (v16 = sub_224B0B624(&aBlock), (v17 & 1) == 0))
  {

    sub_224AD52A4(&aBlock);
LABEL_10:
    v40 = 0u;
    v41 = 0u;
    return sub_224AD523C(&v40);
  }

  sub_224A33E0C(*(v13 + 56) + 32 * v16, &v40);
  sub_224AD52A4(&aBlock);

  if (!*(&v41 + 1))
  {
    return sub_224AD523C(&v40);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v20 = aBlock;
    v19 = v33;
    v21 = *MEMORY[0x277CB8BA8];
    if (v20 == sub_224DAEE18() && v19 == v22)
    {

LABEL_14:

      v23 = *(v1 + 24);
      v36 = sub_224AD5300;
      v37 = v1;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_224A39F40;
      v35 = &block_descriptor_39;
      v31 = _Block_copy(&aBlock);
      v30 = v23;

      sub_224DAB7E8();
      *&v40 = MEMORY[0x277D84F90];
      sub_224A80D98(&qword_281350ED0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
      sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
LABEL_15:
      sub_224DAF788();
      v24 = v30;
      v25 = v31;
      MEMORY[0x22AA5D760](0, v11, v6, v31);
      _Block_release(v25);

      (*(v3 + 8))(v6, v2);
      (*(v8 + 8))(v11, v7);
    }

    LODWORD(v31) = sub_224DAFD88();

    if (v31)
    {
      goto LABEL_14;
    }

    v26 = *MEMORY[0x277CB8D58];
    if (v20 == sub_224DAEE18() && v19 == v27)
    {

LABEL_20:
      v29 = *(v1 + 24);
      v36 = sub_224AD52F8;
      v37 = v1;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_224A39F40;
      v35 = &block_descriptor_3;
      v31 = _Block_copy(&aBlock);

      v30 = v29;
      sub_224DAB7E8();
      *&v40 = MEMORY[0x277D84F90];
      sub_224A80D98(&qword_281350ED0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
      sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
      goto LABEL_15;
    }

    v28 = sub_224DAFD88();

    if (v28)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_224AD4DE8(void *a1)
{
  result = sub_224AD5604(&selRef_aa_primaryAppleAccount, "iCloudAccount: %{private}s");
  v4 = result;
  v5 = v3;
  v6 = a1[7];
  if (v6)
  {
    if (v3)
    {
      v7 = a1[6] == result && v6 == v3;
      if (v7 || (v8 = a1[7], (sub_224DAFD88() & 1) != 0))
      {
      }
    }
  }

  else if (!v3)
  {
    return result;
  }

  a1[6] = v4;
  a1[7] = v5;

  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v9 = sub_224DAB258();
  __swift_project_value_buffer(v9, qword_281364DF0);
  v10 = sub_224DAB228();
  v11 = sub_224DAF2A8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_224A2F000, v10, v11, "iCloud account changed", v12, 2u);
    MEMORY[0x22AA5EED0](v12, -1, -1);
  }

  v13 = a1[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A33088(&qword_281350EF0, &qword_27D6F4A10, &unk_224DB4000);
  sub_224DAB398();
}

uint64_t sub_224AD4FCC(void *a1)
{
  result = sub_224AD5604(&selRef_ams_activeiTunesAccount, "iTunesAccount: %{private}s");
  v4 = result;
  v5 = v3;
  v6 = a1[5];
  if (v6)
  {
    if (v3)
    {
      v7 = a1[4] == result && v6 == v3;
      if (v7 || (v8 = a1[5], (sub_224DAFD88() & 1) != 0))
      {
      }
    }
  }

  else if (!v3)
  {
    return result;
  }

  a1[4] = v4;
  a1[5] = v5;

  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v9 = sub_224DAB258();
  __swift_project_value_buffer(v9, qword_281364DF0);
  v10 = sub_224DAB228();
  v11 = sub_224DAF2A8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_224A2F000, v10, v11, "iTunes account changed", v12, 2u);
    MEMORY[0x22AA5EED0](v12, -1, -1);
  }

  v13 = a1[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A33088(&qword_281350EF0, &qword_27D6F4A10, &unk_224DB4000);
  sub_224DAB398();
}

uint64_t sub_224AD51B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  v4 = *(v0 + 104);
  swift_unknownObjectRelease();
  v5 = *(v0 + 120);

  return swift_deallocClassInstance();
}

uint64_t sub_224AD523C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4760, &unk_224DB3680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_224AD5308(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = sub_224DAF3C8();
  v18 = *(v5 - 8);
  v19 = v5;
  v6 = *(v18 + 64);
  MEMORY[0x28223BE20](v5);
  v17 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAF318();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_224DAB848();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v22 = type metadata accessor for _AccountStoreImpl();
  v23 = &off_283829428;
  *&v21 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  a2[2] = sub_224DAB358();
  v16 = sub_224AC319C();
  *(a2 + 2) = 0u;
  *(a2 + 3) = 0u;
  a2[14] = 0;
  a2[15] = 0;
  a2[13] = 0;
  sub_224DAFF38();
  sub_224DAB818();
  v20 = MEMORY[0x277D84F90];
  sub_224A80D98(&qword_281350A88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  (*(v18 + 104))(v17, *MEMORY[0x277D85268], v19);
  a2[3] = sub_224DAF418();
  sub_224A36F98(&v21, (a2 + 8));
  return a2;
}

uint64_t sub_224AD5604(SEL *a1, const char *a2)
{
  v4 = [objc_opt_self() ams_sharedAccountStore];
  v5 = [v4 *a1];

  if (v5 && (v6 = [v5 identifier], v5, v6))
  {
    v7 = sub_224DAEE18();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  if (qword_281351480 != -1)
  {
    swift_once();
  }

  v10 = sub_224DAB258();
  __swift_project_value_buffer(v10, qword_281364DF0);

  v11 = sub_224DAB228();
  v12 = sub_224DAF278();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136380675;
    if (v9)
    {
      v15 = v7;
    }

    else
    {
      v15 = 0x3E6C696E3CLL;
    }

    if (v9)
    {
      v16 = v9;
    }

    else
    {
      v16 = 0xE500000000000000;
    }

    v17 = sub_224A33F74(v15, v16, &v19);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_224A2F000, v11, v12, a2, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x22AA5EED0](v14, -1, -1);
    MEMORY[0x22AA5EED0](v13, -1, -1);
  }

  return v7;
}

uint64_t sub_224AD5884()
{
  v10 = sub_224DAF3C8();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_224DAF318();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_224DAB848();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224DAB7E8();
  v11 = MEMORY[0x277D84F90];
  sub_224A80DE0(&qword_281350A88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A9B6A0(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_224DAF418();
  qword_28135B6E0 = result;
  return result;
}

uint64_t PushFoundation.KeepAliveTransaction.__allocating_init(reason:)(uint64_t a1, NSObject *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  PushFoundation.KeepAliveTransaction.init(reason:)(a1, a2);
  return v7;
}

uint64_t sub_224AD5B48(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (*(result + 16))
  {
    v5 = result;

    v6 = sub_224DAB228();
    v7 = sub_224DAF2A8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_224A33F74(a2, a3, &v11);
      _os_log_impl(&dword_224A2F000, v6, v7, "Dropping transaction for SIGTERM: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x22AA5EED0](v9, -1, -1);
      MEMORY[0x22AA5EED0](v8, -1, -1);
    }

    byte_27D6F3448 = 1;
    v10 = *(v5 + 16);
    *(v5 + 16) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t static PushFoundation.KeepAliveTransaction.with<A>(reason:_:)(uint64_t a1, NSObject *a2, void (*a3)(uint64_t))
{
  v6 = type metadata accessor for PushFoundation.KeepAliveTransaction();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  v9 = PushFoundation.KeepAliveTransaction.init(reason:)(a1, a2);
  a3(v9);
  sub_224A9C084();
}

char *PushFoundation.KeepAliveTransaction.deinit()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = *(v0 + 3);
  swift_unknownObjectRelease();
  v3 = *(v0 + 5);

  v4 = OBJC_IVAR____TtCO10ChronoCore14PushFoundation20KeepAliveTransaction_logger;
  v5 = sub_224DAB258();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  return v0;
}

uint64_t sub_224AD5DB4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_224AD5E28(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_224A33F74(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_224AD5E84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3450, &unk_224DB38A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

_BYTE **sub_224AD5F78(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v46 = a4;
  v47 = a5;
  v48 = a3;
  v52 = a1;
  v8 = sub_224DAB7B8();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAB848();
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DAB798();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_224DAB878();
  v44 = *(v21 - 8);
  v45 = v21;
  v22 = *(v44 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v43 - v26;
  v28 = type metadata accessor for PushFoundation.KeepAliveTransaction();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();

  result = PushFoundation.KeepAliveTransaction.init(reason:)(v52, a2);
  if (a6 <= 0.0)
  {
    v40 = swift_allocObject();
    v41 = v47;
    v40[2] = v46;
    v40[3] = v41;
    v40[4] = v31;
    v58 = sub_224AD6750;
    v59 = v40;
    aBlock = MEMORY[0x277D85DD0];
    v55 = 1107296256;
    v56 = sub_224A39F40;
    v57 = &block_descriptor_29;
    v42 = _Block_copy(&aBlock);

    sub_224DAB7E8();
    v53 = MEMORY[0x277D84F90];
    sub_224A80DE0(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A9B6A0(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v15, v11, v42);
    _Block_release(v42);

    (*(v51 + 8))(v11, v8);
    (*(v49 + 8))(v15, v50);
  }

  v52 = v11;
  v33 = a6 * 1000.0;
  if (COERCE_UNSIGNED_INT64(a6 * 1000.0) >> 52 > 0x7FE)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v33 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v33 < 9.22337204e18)
  {
    v34 = v33;
    sub_224DAB858();
    *v20 = v34;
    (*(v17 + 104))(v20, *MEMORY[0x277D85178], v16);
    v43 = v27;
    sub_224DAB868();
    (*(v17 + 8))(v20, v16);
    v44 = *(v44 + 8);
    (v44)(v25, v45);
    v35 = swift_allocObject();
    v36 = v47;
    v35[2] = v46;
    v35[3] = v36;
    v35[4] = v31;
    v58 = sub_224AD67A8;
    v59 = v35;
    aBlock = MEMORY[0x277D85DD0];
    v55 = 1107296256;
    v56 = sub_224A39F40;
    v57 = &block_descriptor_35;
    v37 = _Block_copy(&aBlock);

    sub_224DAB7E8();
    v53 = MEMORY[0x277D84F90];
    sub_224A80DE0(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A9B6A0(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v38 = v52;
    sub_224DAF788();
    v39 = v43;
    MEMORY[0x22AA5D6A0](v43, v15, v38, v37);
    _Block_release(v37);

    (*(v51 + 8))(v38, v8);
    (*(v49 + 8))(v15, v50);
    (v44)(v39, v45);
  }

LABEL_10:
  __break(1u);
  return result;
}