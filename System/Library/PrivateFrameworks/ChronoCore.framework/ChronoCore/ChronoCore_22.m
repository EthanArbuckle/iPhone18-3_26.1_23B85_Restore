uint64_t sub_224C3D880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5830, &qword_224DBBD60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5838, &qword_224DBBD68);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_224DBB860;
  v31 = *(a1 + 152);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5840, &qword_224DBBD70);
  v27 = sub_224A33088(&qword_281350F08, &unk_27D6F5840, &qword_224DBBD70);
  v31 = sub_224DAB3A8();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5850, &qword_224DBBD78);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5828, &qword_224DBBD58);
  sub_224A33088(&unk_281351018, &qword_27D6F5850, &qword_224DBBD78);
  sub_224DAB3E8();

  v11 = sub_224A33088(&unk_281351390, &qword_27D6F5830, &qword_224DBBD60);
  v30 = v4;
  v21[1] = v11;
  v12 = sub_224DAB3A8();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v22 = v9;
  *(v9 + 32) = v12;
  v31 = sub_224D250FC();
  v24 = v10;
  sub_224DAB3E8();

  v13 = v30;
  v14 = sub_224DAB3A8();
  v15 = v23;
  v23(v8, v13);
  *(v9 + 40) = v14;
  v31 = sub_224D25110();
  sub_224DAB3E8();

  v16 = v30;
  v17 = sub_224DAB3A8();
  v15(v8, v16);
  v18 = v22;
  *(v22 + 48) = v17;
  v31 = *(v29 + 56);
  v31 = sub_224DAB3A8();
  sub_224DAB3E8();

  v19 = sub_224DAB3A8();
  v15(v8, v16);
  *(v18 + 56) = v19;
  return v18;
}

uint64_t sub_224C3DCC0@<X0>(uint64_t *a1@<X0>, unsigned int *a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5828, &qword_224DBBD58) + 48);
  *a3 = v5;
  v7 = *a2;
  v8 = sub_224DACB98();
  (*(*(v8 - 8) + 104))(&a3[v6], v7, v8);
}

uint64_t sub_224C3DD60@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5828, &qword_224DBBD58) + 48);
  *a2 = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = 0xD000000000000019;
  *(v5 + 24) = 0x8000000224DCB3B0;
  *&a2[v4] = v5;
  v6 = *MEMORY[0x277CF9B70];
  v7 = sub_224DACB98();
  (*(*(v7 - 8) + 104))(&a2[v4], v6, v7);
}

uint64_t sub_224C3DE38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  BSDispatchQueueAssertMain();
  v7 = v2[20];
  sub_224DAC3A8();
  v8 = sub_224BDE4D4();
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = v6;
  swift_retain_n();
  sub_224A364AC(a1);
  sub_224BDE670(sub_224C4CDBC, v9, v8, v3);
}

void sub_224C3DF2C()
{
  if (qword_281351470 != -1)
  {
    swift_once();
  }

  v0 = sub_224DAB258();
  __swift_project_value_buffer(v0, qword_281364DD8);
  oslog = sub_224DAB228();
  v1 = sub_224DAF2A8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_224A2F000, oslog, v1, "Migration reap completed.", v2, 2u);
    MEMORY[0x22AA5EED0](v2, -1, -1);
  }
}

void sub_224C3E014(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v114 = a3;
  v116 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v115 = &v111 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v117 = &v111 - v9;
  *&v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5300, &qword_224DB6600);
  v119 = *(v121 - 8);
  v10 = *(v119 + 64);
  MEMORY[0x28223BE20](v121);
  v118 = &v111 - v11;
  v12 = sub_224DAB7B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DAB848();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v22 = *__swift_project_boxed_opaque_existential_1(a1 + 11, a1[14]);
  sub_224CCD760();
  if (a1[104])
  {
    sub_224DAA638();
  }

  sub_224A3796C((a1 + 93), v131, &qword_27D6F52F8, &qword_224DBBAC8);
  v120 = a1;
  if (v132)
  {
    v23 = __swift_project_boxed_opaque_existential_1(v131, v132);
    v24 = *v23;
    v113 = *(*v23 + 112);
    v129 = sub_224C4CEA4;
    v130 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v126 = 1107296256;
    v127 = sub_224A39F40;
    v128 = &block_descriptor_59;
    v112 = _Block_copy(&aBlock);

    sub_224DAB7E8();
    v122[0] = MEMORY[0x277D84F90];
    sub_224C41198(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    v111 = v17;
    a1 = v120;
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    sub_224DAF788();
    v25 = v112;
    MEMORY[0x22AA5D760](0, v21, v16, v112);
    _Block_release(v25);
    (*(v13 + 8))(v16, v12);
    (*(v18 + 8))(v21, v111);

    __swift_destroy_boxed_opaque_existential_1(v131);
  }

  else
  {
    sub_224A3311C(v131, &qword_27D6F52F8, &qword_224DBBAC8);
  }

  v26 = a1[118];
  sub_224CB9BE0();
  v27 = a1[119];
  sub_224C7505C();
  v28 = a1[53];
  __swift_project_boxed_opaque_existential_1(a1 + 49, a1[52]);
  v29 = sub_224DAD428();
  if (qword_281352020 != -1)
  {
    swift_once();
  }

  v30 = sub_224DAD418();
  v128 = v29;
  v129 = MEMORY[0x277CF9CB8];
  aBlock = v30;
  sub_224DACAD8();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v31 = a1[18];
  v32 = *(v31 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_224C4CDC8;
  *(v33 + 24) = v31;
  v129 = sub_224A8A838;
  v130 = v33;
  aBlock = MEMORY[0x277D85DD0];
  v126 = 1107296256;
  v127 = sub_224A9B6F8;
  v128 = &block_descriptor_31_0;
  v34 = _Block_copy(&aBlock);
  v35 = v32;

  dispatch_sync(v35, v34);

  _Block_release(v34);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
    goto LABEL_39;
  }

  v36 = a1[19];
  v37 = *(v36 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService__queue);
  v38 = swift_allocObject();
  *(v38 + 16) = sub_224C4CDD0;
  *(v38 + 24) = v36;
  v129 = sub_224BC4B74;
  v130 = v38;
  aBlock = MEMORY[0x277D85DD0];
  v126 = 1107296256;
  v127 = sub_224A9B6F8;
  v128 = &block_descriptor_38_0;
  v39 = _Block_copy(&aBlock);
  v40 = v37;

  dispatch_sync(v40, v39);

  _Block_release(v39);
  LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

  if (v39)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v41 = a1[22];
  sub_224D79880();
  v42 = a1[21];
  v43 = *(v42 + OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue);
  v44 = swift_allocObject();
  *(v44 + 16) = sub_224C4CDD8;
  *(v44 + 24) = v42;
  v129 = sub_224BC4B74;
  v130 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v126 = 1107296256;
  v127 = sub_224A9B6F8;
  v128 = &block_descriptor_45_0;
  v45 = _Block_copy(&aBlock);
  v46 = v43;

  dispatch_sync(v46, v45);

  _Block_release(v45);
  LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

  if (v45)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
    goto LABEL_17;
  }

  v47 = a1[26];
  sub_224BD2DC8();
  if (a1[27])
  {
    sub_224C545D0();
  }

  sub_224A3796C((a1 + 105), &aBlock, &unk_27D6F4FB0, &unk_224DBADC8);
  if (v128)
  {
    v48 = *__swift_project_boxed_opaque_existential_1(&aBlock, v128);
    sub_224B5A874();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    sub_224A3311C(&aBlock, &unk_27D6F4FB0, &unk_224DBADC8);
  }

  if (qword_281352C80 != -1)
  {
    goto LABEL_41;
  }

LABEL_17:
  sub_224B57DD4();
  v49 = a1[43];
  __swift_project_boxed_opaque_existential_1(a1 + 39, a1[42]);
  aBlock = sub_224DAA168();
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v50 = sub_224DAF3D8();
  v131[0] = v50;
  v51 = sub_224DAF358();
  v52 = v117;
  (*(*(v51 - 8) + 56))(v117, 1, 1, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4730, &unk_224DBAF00);
  sub_224A33088(&qword_281351010, &unk_27D6F4730, &unk_224DBAF00);
  sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78);
  v53 = v118;
  v54 = v120;
  sub_224DAB448();
  sub_224A3311C(v52, &qword_27D6F5090, &qword_224DB5C30);

  sub_224A33088(&qword_281351210, &unk_27D6F5300, &qword_224DB6600);

  v55 = v121;
  v56 = sub_224DAB488();

  (*(v119 + 8))(v53, v55);
  v57 = v54[117];
  v54[117] = v56;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3768, &unk_224DB3D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DBB860;
  v59 = v54[9];
  *(inited + 56) = type metadata accessor for ToolServicesServer();
  *(inited + 64) = &off_28382C038;
  *(inited + 32) = v59;
  v60 = v54[8];
  *(inited + 96) = type metadata accessor for ChronoServicesServer();
  *(inited + 104) = &off_28382E920;
  *(inited + 72) = v60;
  v61 = v54[7];
  *(inited + 136) = type metadata accessor for WidgetCenterServer();
  *(inited + 144) = &off_2838305E8;
  *(inited + 112) = v61;
  v62 = v54[10];
  *(inited + 176) = type metadata accessor for WidgetRendererServer();
  *(inited + 184) = &off_2838328E0;
  *(inited + 152) = v62;
  v124 = inited;
  v63 = swift_initStackObject();
  *(v63 + 16) = xmmword_224DB3100;
  v64 = v54[28];
  *(v63 + 56) = type metadata accessor for ActivityRendererServer();
  *(v63 + 64) = &off_283834BC0;
  *(v63 + 32) = v64;
  v65 = v59;
  v66 = v60;
  v67 = v61;
  v68 = v62;
  v69 = v64;
  sub_224B42B78(v63);
  v70 = swift_initStackObject();
  *(v70 + 16) = xmmword_224DB30F0;
  v71 = v54[16];
  *(v70 + 56) = type metadata accessor for ControlsServer();
  *(v70 + 64) = &off_283834400;
  *(v70 + 32) = v71;
  v72 = v54[17];
  *(v70 + 96) = type metadata accessor for ControlCenterServer();
  *(v70 + 104) = &off_2838350D0;
  *(v70 + 72) = v72;
  v73 = v71;
  v74 = v72;
  sub_224B42B78(v70);
  v76 = *(v124 + 16);
  if (v76)
  {
    v119 = v124;
    v77 = v124 + 32;
    v78 = &unk_281351000;
    *&v75 = 136446210;
    v121 = v75;
    do
    {
      sub_224A3317C(v77, &aBlock);
      if (v78[144] != -1)
      {
        swift_once();
      }

      v81 = sub_224DAB258();
      __swift_project_value_buffer(v81, qword_281364DF0);
      sub_224A3317C(&aBlock, v131);
      v82 = sub_224DAB228();
      v83 = sub_224DAF2A8();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = v78;
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v123 = v86;
        *v85 = v121;
        sub_224A3317C(v131, v122);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5310, &unk_224DB56B0);
        v87 = sub_224DAEE28();
        v89 = v88;
        __swift_destroy_boxed_opaque_existential_1(v131);
        v90 = sub_224A33F74(v87, v89, &v123);

        *(v85 + 4) = v90;
        _os_log_impl(&dword_224A2F000, v82, v83, "Starting service: %{public}s", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v86);
        MEMORY[0x22AA5EED0](v86, -1, -1);
        v91 = v85;
        v78 = v84;
        MEMORY[0x22AA5EED0](v91, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v131);
      }

      v79 = v128;
      v80 = v129;
      __swift_project_boxed_opaque_existential_1(&aBlock, v128);
      v80[1](v79, v80);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v77 += 40;
      --v76;
    }

    while (v76);

    v54 = v120;
  }

  else
  {
  }

  v92 = objc_opt_self();
  v93 = sub_224DAEDE8();
  v94 = [v92 activateManualDomain_];
  swift_unknownObjectRelease();

  v95 = sub_224DAEDE8();
  v96 = [v92 activateManualDomain_];
  swift_unknownObjectRelease();

  sub_224A3796C((v54 + 54), &aBlock, &unk_27D6F5050, &unk_224DBAE08);
  if (v128)
  {
    v97 = *__swift_project_boxed_opaque_existential_1(&aBlock, v128);
    v98 = sub_224DAF128();
    v99 = v115;
    (*(*(v98 - 8) + 56))(v115, 1, 1, v98);
    v100 = swift_allocObject();
    v100[2] = 0;
    v100[3] = 0;
    v100[4] = v97;

    sub_224D8E744(0, 0, v99, &unk_224DBBAD0, v100);

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    sub_224A3311C(&aBlock, &unk_27D6F5050, &unk_224DBAE08);
  }

  v101 = v54[110];
  v102 = *(v101 + 40);
  v103 = swift_allocObject();
  v103[2] = sub_224C4CDE8;
  v103[3] = v101;
  v129 = sub_224BC4B74;
  v130 = v103;
  aBlock = MEMORY[0x277D85DD0];
  v126 = 1107296256;
  v127 = sub_224A9B6F8;
  v128 = &block_descriptor_52_1;
  v104 = _Block_copy(&aBlock);

  dispatch_sync(v102, v104);
  _Block_release(v104);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);

    os_unfair_lock_unlock(*(isEscapingClosureAtFileLocation + 16));
    __break(1u);
  }

  else
  {
    v106 = v54[111];
    LOBYTE(aBlock) = 0;
    v107 = *(v106 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_lock);
    os_unfair_lock_lock(*(v107 + 16));
    sub_224B9556C(v106, &aBlock);
    os_unfair_lock_unlock(*(v107 + 16));
    if ((aBlock & 1) == 0)
    {
      sub_224B99110(1);
    }

    sub_224C3FA70();
    v108 = v54[116];
    if (v108)
    {
      [v108 invalidate];
      v109 = v54[116];
    }

    v54[116] = 0;
    v110 = swift_unknownObjectRelease();
    if (v116)
    {
      v116(v110);
    }
  }
}

_BYTE *sub_224C3F178(_BYTE *result, uint64_t a2)
{
  if (*result == 1)
  {
    sub_224B32E48();
    if (*(a2 + 936))
    {
      v4 = *(a2 + 936);

      sub_224DAB328();

      v5 = *(a2 + 936);
    }

    *(a2 + 936) = 0;
  }

  return result;
}

uint64_t sub_224C3F1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v56 = a2;
  v52 = 0;
  v4 = sub_224DAB7B8();
  v63 = *(v4 - 8);
  v64 = v4;
  v5 = *(v63 + 64);
  MEMORY[0x28223BE20](v4);
  v61 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_224DAB848();
  v60 = *(v62 - 8);
  v7 = *(v60 + 64);
  MEMORY[0x28223BE20](v62);
  v59 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAB7C8();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  MEMORY[0x28223BE20](v9);
  v53 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FileReaperScenario(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v49 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FileReaperProtectionConfiguration(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = dispatch_group_create();
  v50 = a1;
  v21 = *(v15 + 44);
  sub_224DAB7F8();
  *v19 = ~(a1 >> 6) & 2;
  v19[1] = ~(a1 >> 1) & 2;
  v22 = v51;
  v19[2] = ~(a1 >> 2) & 2;
  v19[3] = ~a1 & 2;
  v19[4] = ~(a1 >> 3) & 2;
  *(v19 + 5) = ~(a1 >> 5) & 2;
  dispatch_group_enter(v20);
  v23 = __swift_project_boxed_opaque_existential_1((v22 + 88), *(v22 + 112));
  v57 = v19;
  v24 = v49;
  sub_224C4E30C(v19, v49, type metadata accessor for FileReaperProtectionConfiguration);
  (*(v16 + 56))(v24, 0, 4, v15);
  v25 = swift_allocObject();
  *(v25 + 16) = v20;
  v26 = *v23;
  v27 = v20;
  sub_224CCD218(v24, 0, sub_224B32E40, v25);

  sub_224C4E374(v24, type metadata accessor for FileReaperScenario);
  if ((v50 & 0x20) != 0)
  {
    dispatch_group_enter(v27);
    if (qword_281352020 != -1)
    {
      swift_once();
    }

    v28 = v52;
    sub_224DABBC8();
    if (v28)
    {

      if (qword_281351480 != -1)
      {
        swift_once();
      }

      v29 = sub_224DAB258();
      __swift_project_value_buffer(v29, qword_281364DF0);
      v30 = v28;
      v31 = sub_224DAB228();
      v32 = sub_224DAF288();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138543362;
        v35 = v28;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 4) = v36;
        *v34 = v36;
        _os_log_impl(&dword_224A2F000, v31, v32, "Error removing all database entries: %{public}@", v33, 0xCu);
        sub_224A3311C(v34, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v34, -1, -1);
        MEMORY[0x22AA5EED0](v33, -1, -1);
      }

      else
      {
      }

      v28 = 0;
    }

    else
    {
    }

    dispatch_group_leave(v27);
  }

  else
  {
    v28 = v52;
  }

  sub_224A3796C(v22 + 744, aBlock, &qword_27D6F52F8, &qword_224DBBAC8);
  if (v67)
  {
    v37 = __swift_project_boxed_opaque_existential_1(aBlock, v67);
    v38 = *(*v37 + 104);
    __swift_project_boxed_opaque_existential_1((*v37 + 40), *(*v37 + 64));
    sub_224DAAAE8();
    if (v28)
    {
    }

    __swift_destroy_boxed_opaque_existential_1(aBlock);
  }

  else
  {
    sub_224A3311C(aBlock, &qword_27D6F52F8, &qword_224DBBAC8);
  }

  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v40 = v53;
  v39 = v54;
  v41 = v55;
  (*(v54 + 104))(v53, *MEMORY[0x277D851B8], v55);
  v42 = sub_224DAF428();
  (*(v39 + 8))(v40, v41);
  v68 = v56;
  v69 = v58;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  v67 = &block_descriptor_22_0;
  v43 = _Block_copy(aBlock);

  v44 = v59;
  sub_224DAB7E8();
  v65 = MEMORY[0x277D84F90];
  sub_224C41198(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  v45 = v61;
  v46 = v64;
  sub_224DAF788();
  sub_224DAF308();
  _Block_release(v43);

  (*(v63 + 8))(v45, v46);
  (*(v60 + 8))(v44, v62);
  sub_224C4E374(v57, type metadata accessor for FileReaperProtectionConfiguration);
}

uint64_t sub_224C3FA2C()
{
  sub_224DABB58();
  sub_224DAB928();
}

uint64_t sub_224C3FA70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52E0, &qword_224DBBAB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v26 - v3;
  v5 = sub_224DAF6E8();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52E8, &qword_224DBBAB8);
  v10 = *(v9 - 8);
  v27 = v9;
  v28 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F52F0, &qword_224DBBAC0);
  v15 = *(v14 - 8);
  v29 = v14;
  v30 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  v20 = v0[62];
  v19 = v0[63];
  __swift_project_boxed_opaque_existential_1(v0 + 59, v20);
  v33 = (*(*(v19 + 8) + 40))(768, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80);
  sub_224DAB3E8();

  sub_224DAF6D8();
  v21 = [objc_opt_self() mainRunLoop];
  v33 = v21;
  v22 = sub_224DAF6C8();
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  sub_224A3B79C(0, &unk_281350808, 0x277CBEB88);
  sub_224A33088(&unk_2813513A0, &qword_27D6F52E8, &qword_224DBBAB8);
  sub_224A3B758(&qword_281350818, &unk_281350808, 0x277CBEB88);
  v23 = v27;
  sub_224DAB468();
  sub_224A3311C(v4, &qword_27D6F52E0, &qword_224DBBAB0);

  (*(v31 + 8))(v8, v32);
  (*(v28 + 8))(v13, v23);
  sub_224A33088(&qword_281351330, &qword_27D6F52F0, &qword_224DBBAC0);
  v24 = v29;
  sub_224DAB488();
  (*(v30 + 8))(v18, v24);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

void sub_224C3FF48()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = sub_224DAEDE8();
  [v0 postNotificationName:v1 object:0];
}

void sub_224C3FFE0()
{
  v1 = v0;
  v24 = sub_224DAB7B8();
  v2 = *(v24 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAB848();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAB7C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DAB278();
  signal(15, v16);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  (*(v12 + 104))(v15, *MEMORY[0x277D851C8], v11);
  v17 = sub_224DAF428();
  (*(v12 + 8))(v15, v11);
  sub_224A3B79C(0, &qword_2813509E0, 0x277D85CA0);
  v18 = v17;
  v19 = sub_224DAF458();

  v20 = *(v1 + 1008);
  *(v1 + 1008) = v19;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_getObjectType();
  aBlock[4] = j__xpc_transaction_exit_clean;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_28;
  v21 = _Block_copy(aBlock);
  sub_224AD5C90();
  sub_224A9B5C8();
  sub_224DAF468();
  _Block_release(v21);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v5, v24);
  (*(v7 + 8))(v10, v6);
  if (*(v1 + 1008))
  {
    v22 = *(v1 + 1008);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_224DAF498();
    swift_unknownObjectRelease();
  }
}

void *sub_224C4036C()
{
  result = sub_224C4038C();
  off_281352050 = result;
  return result;
}

uint64_t sub_224C4038C()
{
  v0 = sub_224DA9CC8();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v71 - v6;
  v73 = sub_224DA0DD8(MEMORY[0x277D84F90]);
  if (qword_281352058 != -1)
  {
    swift_once();
  }

  v8 = qword_281352080;
  v9 = __swift_project_boxed_opaque_existential_1(qword_281352068, qword_281352080);
  v72 = &v71;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13);
  sub_224DAA068();
  (*(v10 + 8))(v13, v8);
  v14 = v1[13];
  v14(v5, *MEMORY[0x277CF9F00], v0);
  sub_224C41198(&qword_2813519F0, MEMORY[0x277CF9F10]);
  LOBYTE(v13) = sub_224DAEDD8();
  v15 = v1[1];
  v15(v5, v0);
  v15(v7, v0);
  if (v13)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v19 = qword_281352080;
    v71 = unk_281352088;
    v20 = __swift_project_boxed_opaque_existential_1(qword_281352068, qword_281352080);
    v72 = &v71;
    v21 = *(v19 - 8);
    v22 = *(v21 + 64);
    MEMORY[0x28223BE20](v20);
    v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24);
    sub_224DAA068();
    (*(v21 + 8))(v24, v19);
    v14(v5, *MEMORY[0x277CF9F08], v0);
    LOBYTE(v24) = sub_224DA9CB8();
    v15(v5, v0);
    v15(v7, v0);
    if (v24)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    v74[3] = &type metadata for FeatureFlags.Widgets;
    v74[4] = sub_224A80FFC();
    LOBYTE(v74[0]) = 12;
    v25 = sub_224DA9C98();
    __swift_destroy_boxed_opaque_existential_1(v74);
    v17 = 3;
    if (v25)
    {
      v16 = 3;
    }

    else
    {
      v16 = 1;
    }
  }

  v26 = v73;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74[0] = v26;
  sub_224B20DF0(v16, 1u, isUniquelyReferenced_nonNull_native);
  v28 = v74[0];
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v74[0] = v28;
  sub_224B20DF0(v17, 0, v29);
  v30 = v74[0];
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v74[0] = v30;
  sub_224B20DF0(v18, 3u, v31);
  v32 = v74[0];
  sub_224DA0DD8(MEMORY[0x277D84F90]);

  if (!*(v32 + 16))
  {
    v36 = 0;
    goto LABEL_57;
  }

  v33 = byte_283828280;
  v34 = sub_224B0B6F0(byte_283828280);
  if ((v35 & 1) == 0)
  {
    v36 = 0;
LABEL_20:
    if (!*(v32 + 16))
    {
      goto LABEL_57;
    }

    goto LABEL_24;
  }

  v36 = *(*(v32 + 56) + 8 * v34);
  if (!v36)
  {
    goto LABEL_20;
  }

  v37 = *(&off_27853F1E8 + v33);
  v38 = *(v37 + 16);
  v39 = (v37 + 32);
  while (v38)
  {
    v40 = *v39++;
    --v38;
    if (v40 == 128)
    {
      goto LABEL_23;
    }
  }

  v36 = 0;
LABEL_23:

  if (*(v32 + 16))
  {
LABEL_24:
    v41 = byte_283828281;
    v42 = sub_224B0B6F0(byte_283828281);
    if ((v43 & 1) != 0 && (v44 = *(*(v32 + 56) + 8 * v42)) != 0)
    {
      v45 = *(&off_27853F1E8 + v41);
      v46 = *(v45 + 16);
      v47 = (v45 + 32);
      while (v46)
      {
        v48 = *v47++;
        --v46;
        if (v48 == 128)
        {

          if ((v44 & ~v36) != 0)
          {
            v49 = v44;
          }

          else
          {
            v49 = 0;
          }

          v36 |= v49;
          goto LABEL_33;
        }
      }

      if (*(v32 + 16))
      {
        goto LABEL_34;
      }
    }

    else
    {
LABEL_33:
      if (*(v32 + 16))
      {
LABEL_34:
        v50 = byte_283828282;
        v51 = sub_224B0B6F0(byte_283828282);
        if (v52)
        {
          v53 = *(*(v32 + 56) + 8 * v51);
          if (v53)
          {
            v54 = *(&off_27853F1E8 + v50);
            v55 = *(v54 + 16);
            v56 = (v54 + 32);
            do
            {
              if (!v55)
              {

                goto LABEL_46;
              }

              v57 = *v56++;
              --v55;
            }

            while (v57 != 128);

            if ((v53 & ~v36) != 0)
            {
              v58 = v53;
            }

            else
            {
              v58 = 0;
            }

            v36 |= v58;
          }
        }

LABEL_46:
        if (*(v32 + 16))
        {
          v59 = byte_283828283;
          v60 = sub_224B0B6F0(byte_283828283);
          if (v61)
          {
            v62 = *(*(v32 + 56) + 8 * v60);
            if (v62)
            {
              v63 = *(&off_27853F1E8 + v59);
              v64 = *(v63 + 16);
              v65 = (v63 + 32);
              do
              {
                if (!v64)
                {

                  goto LABEL_57;
                }

                v66 = *v65++;
                --v64;
              }

              while (v66 != 128);

              if ((v62 & ~v36) != 0)
              {
                v67 = v62;
              }

              else
              {
                v67 = 0;
              }

              v36 |= v67;
            }
          }
        }
      }
    }
  }

LABEL_57:
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v74[0] = v32;
  sub_224B20DF0(v36, 2u, v68);
  v69 = v74[0];
  sub_224DA0DD8(MEMORY[0x277D84F90]);

  return v69;
}

uint64_t sub_224C40A18()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  v1 = *(v0 + 144);

  v2 = *(v0 + 152);

  v3 = *(v0 + 168);

  v4 = *(v0 + 176);

  v5 = *(v0 + 184);

  v6 = *(v0 + 192);

  v7 = *(v0 + 200);

  v8 = *(v0 + 208);

  v9 = *(v0 + 216);

  __swift_destroy_boxed_opaque_existential_1((v0 + 232));
  __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  __swift_destroy_boxed_opaque_existential_1((v0 + 312));
  __swift_destroy_boxed_opaque_existential_1((v0 + 352));
  __swift_destroy_boxed_opaque_existential_1((v0 + 392));
  sub_224A3311C(v0 + 432, &unk_27D6F5050, &unk_224DBAE08);
  __swift_destroy_boxed_opaque_existential_1((v0 + 472));
  __swift_destroy_boxed_opaque_existential_1((v0 + 512));

  v10 = *(v0 + 560);

  v11 = *(v0 + 568);

  v12 = *(v0 + 576);

  v13 = *(v0 + 584);

  __swift_destroy_boxed_opaque_existential_1((v0 + 592));
  v14 = *(v0 + 632);

  v15 = *(v0 + 640);

  __swift_destroy_boxed_opaque_existential_1((v0 + 648));

  __swift_destroy_boxed_opaque_existential_1((v0 + 696));
  sub_224A3311C(v0 + 744, &qword_27D6F52F8, &qword_224DBBAC8);
  __swift_destroy_boxed_opaque_existential_1((v0 + 784));
  v16 = *(v0 + 824);

  v17 = *(v0 + 832);

  sub_224A3311C(v0 + 840, &unk_27D6F4FB0, &unk_224DBADC8);
  v18 = *(v0 + 880);

  v19 = *(v0 + 888);

  v20 = *(v0 + 896);

  v21 = *(v0 + 904);

  v22 = *(v0 + 912);

  v23 = *(v0 + 920);

  v24 = *(v0 + 928);
  swift_unknownObjectRelease();
  v25 = *(v0 + 936);

  v26 = *(v0 + 944);

  v27 = *(v0 + 952);

  __swift_destroy_boxed_opaque_existential_1((v0 + 960));
  v28 = *(v0 + 1000);

  v29 = *(v0 + 1008);
  swift_unknownObjectRelease();
  v30 = *(v0 + 1016);

  return v0;
}

uint64_t sub_224C40C28()
{
  sub_224C40A18();

  return swift_deallocClassInstance();
}

void sub_224C40C80(void *a1)
{
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281365120);
  v3 = a1;
  v4 = sub_224DAB228();
  v5 = sub_224DAF288();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_224A2F000, v4, v5, "Database corruption detected: %{public}@", v6, 0xCu);
    sub_224A3311C(v7, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v7, -1, -1);
    MEMORY[0x22AA5EED0](v6, -1, -1);
  }

  v10 = [objc_opt_self() defaultManager];
  v11 = sub_224DA95F8();
  v25[0] = 0;
  v12 = [v10 removeItemAtURL:v11 error:v25];

  if (v12)
  {
    v13 = v25[0];
  }

  else
  {
    v14 = v25[0];
    v15 = sub_224DA9528();

    swift_willThrow();
    v16 = v15;
    v17 = sub_224DAB228();
    v18 = sub_224DAF288();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      v21 = v15;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_224A2F000, v17, v18, "Failed to delete corrupt database: %{public}@", v19, 0xCu);
      sub_224A3311C(v20, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v20, -1, -1);
      MEMORY[0x22AA5EED0](v19, -1, -1);
    }

    else
    {
    }
  }

  v25[0] = a1;
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
  v24 = sub_224DAEE28();
  v25[0] = 0xD00000000000001ELL;
  v25[1] = 0x8000000224DCB5B0;
  MEMORY[0x22AA5D210](v24);

  sub_224DAFB58();
  __break(1u);
}

uint64_t sub_224C40FD0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
      v6 = *(v5 + 16);
LABEL_11:
      result = sub_224DAF968();
      v3 = result;
      goto LABEL_12;
    }

LABEL_10:
    sub_224DAF838();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_12:
  *v1 = v3;
  return result;
}

void sub_224C4106C(uint64_t a1)
{
  v3 = *(a1 + qword_2813548D0);
  v4 = __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
  v5 = *v4;
  v6 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock;
  os_unfair_lock_assert_not_owner(*(*(*v4 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock) + 16));
  v7 = *(v5 + v6);
  os_unfair_lock_lock(*(v7 + 16));
  sub_224B458F8(v5, v3, &off_283833500);
  if (v1)
  {

    os_unfair_lock_unlock(*(v7 + 16));
    __break(1u);

    os_unfair_lock_unlock(*(a1 + 16));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(*(v7 + 16));
    v8 = *(a1 + qword_2813548C8);
    if (v8)
    {
      v9 = __swift_project_boxed_opaque_existential_1(v8 + 2, v8[5]);
      v10 = *v9;
      v11 = *(*v9 + 24);
      v12 = *(v11 + 16);

      os_unfair_lock_lock(v12);
      sub_224CBFEB8(v10, v8, &off_2838334E8);
      os_unfair_lock_unlock(*(v11 + 16));
    }
  }
}

uint64_t sub_224C41198(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_224C411E0(void *a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F53C0, &qword_224DBBB20);
  v24[4] = &off_28382A4A8;
  v24[5] = &off_28382A498;
  v24[3] = v6;
  v24[0] = a1;
  type metadata accessor for UnfairLock();
  v7 = swift_allocObject();
  v8 = swift_slowAlloc();
  *v8 = 0;
  *(v7 + 16) = v8;
  *(a3 + 16) = v7;
  v9 = MEMORY[0x277D84F90];
  *(a3 + 64) = 0;
  *(a3 + 72) = v9;
  *(a3 + 80) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  v10 = __swift_project_boxed_opaque_existential_1(v24, v6);
  *(a3 + 48) = v6;
  *(a3 + 56) = &off_28382A4A8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a3 + 24));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v10, v6);
  v12 = MEMORY[0x277D85000];
  v13 = *(a1 + *((*MEMORY[0x277D85000] & *a1) + 0x88));
  os_unfair_lock_lock(*(v13 + 16));
  v14 = *(*(a1 + *((*v12 & *a1) + 0xB0)) + OBJC_IVAR____TtC10ChronoCore20TaskSessionQueuePool_maxPoolSize);
  os_unfair_lock_unlock(*(v13 + 16));
  *(a3 + 88) = v14;
  if (a2)
  {
    *(a3 + 120) = 500000000;
    *(a3 + 96) = 1;
LABEL_9:
    v20 = *(a3 + 48);
    v21 = *(a3 + 56);
    __swift_project_boxed_opaque_existential_1((a3 + 24), v20);
    v22 = *(v21 + 32);

    v22(v23, &off_283836F70, 257, v20, v21);

    __swift_destroy_boxed_opaque_existential_1(v24);
    return;
  }

  sub_224DA9E78();
  sub_224DA9E68();
  v15 = sub_224DA9E38();

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (qword_2813516B8 == -1)
  {
    goto LABEL_5;
  }

  swift_once();
LABEL_5:
  v16 = sub_224DAB258();
  __swift_project_value_buffer(v16, qword_281365108);
  v17 = sub_224DAB228();
  v18 = sub_224DAF2A8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134349056;
    *(v19 + 4) = v15;
    _os_log_impl(&dword_224A2F000, v17, v18, "Started task queue observer with timeout %{public}llus", v19, 0xCu);
    MEMORY[0x22AA5EED0](v19, -1, -1);
  }

  if (is_mul_ok(v15, 0x3B9ACA00uLL))
  {
    *(a3 + 120) = 1000000000 * v15;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_224C414D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = type metadata accessor for MobileActivityService();
  v11 = &off_28382E400;
  *&v9 = a2;
  *(a3 + 64) = [objc_allocWithZone(sub_224DA9B08()) init];
  *(a3 + 72) = xmmword_224DBB870;
  *(a3 + 88) = 0x40AC200000000000;
  type metadata accessor for UnfairLock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *v7 = 0;
  *(v6 + 16) = v7;
  *(a3 + 96) = v6;
  *(a3 + 16) = a1;
  sub_224A36F98(&v9, a3 + 24);
  return a3;
}

void *sub_224C4159C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v81 = v76 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51B0, &unk_224DB4030);
  v84 = *(v5 - 8);
  v85 = v5;
  v6 = *(v84 + 64);
  MEMORY[0x28223BE20](v5);
  v82 = v76 - v7;
  v80 = sub_224DAF318();
  v8 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v79 = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_224DAF3C8();
  v10 = *(v78 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v78);
  v77 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DAB848();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v76[2] = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DAB798();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = sub_224A3B79C(0, &qword_281350AC8, 0x277CBFBF8);
  type metadata accessor for _LocationGraceRegistrySharedMemoryStoreImpl();
  v21 = swift_allocObject();
  v22 = type metadata accessor for LocationGraceRegistry();
  v23 = objc_allocWithZone(MEMORY[0x277CF0CE0]);
  v24 = sub_224DAEDE8();
  v76[1] = v22;
  v25 = [v23 initWithIdentifier:v24 dataClass:swift_getObjCClassFromMetadata()];

  *(v21 + 16) = v25;
  v26 = sub_224A3B79C(0, &qword_281350A90, 0x277CBFC10);
  *v20 = 1;
  (*(v17 + 104))(v20, *MEMORY[0x277D85188], v16);
  v27 = type metadata accessor for LocationService(0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  v90[3] = sub_224DAC3C8();
  v90[4] = MEMORY[0x277CF9A38];
  v90[0] = a1;
  v30[7] = 0;
  v31 = OBJC_IVAR____TtC10ChronoCore15LocationService_lock;
  type metadata accessor for UnfairLock();
  v32 = swift_allocObject();
  v33 = swift_slowAlloc();
  *v33 = 0;
  *(v32 + 16) = v33;
  *(v30 + v31) = v32;
  *(v30 + OBJC_IVAR____TtC10ChronoCore15LocationService_invalidated) = 0;
  v34 = MEMORY[0x277D84F98];
  *(v30 + OBJC_IVAR____TtC10ChronoCore15LocationService_extInfoByIdentifier) = MEMORY[0x277D84F98];
  *(v30 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceStoreFlushPending) = 0;
  *(v30 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceTimer) = 0;
  *(v30 + OBJC_IVAR____TtC10ChronoCore15LocationService_authMonitorByIdentifier) = v34;
  *(v30 + OBJC_IVAR____TtC10ChronoCore15LocationService_significantChangeMonitor) = 0;
  v35 = OBJC_IVAR____TtC10ChronoCore15LocationService__authPermissionsChangedPublisher;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5958, &qword_224DBBE10);
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  *(v30 + v35) = sub_224DAB358();
  *(v30 + OBJC_IVAR____TtC10ChronoCore15LocationService____lazy_storage___authPermissionsChangedPublisher) = 0;
  v39 = OBJC_IVAR____TtC10ChronoCore15LocationService__significantLocationChangedPublisher;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5840, &qword_224DBBD70);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  *(v30 + v39) = sub_224DAB358();
  *(v30 + OBJC_IVAR____TtC10ChronoCore15LocationService____lazy_storage___significantLocationChangedPublisher) = 0;
  v43 = OBJC_IVAR____TtC10ChronoCore15LocationService__visibilityReloadPublisher;
  v44 = *(v40 + 48);
  v45 = *(v40 + 52);
  swift_allocObject();
  *(v30 + v43) = sub_224DAB358();
  *(v30 + OBJC_IVAR____TtC10ChronoCore15LocationService____lazy_storage___visibilityReloadPublisher) = 0;
  sub_224A3317C(v90, (v30 + 2));
  v30[8] = v21;
  v30[9] = &off_28382F3A8;
  v30[10] = v87;
  v30[11] = &off_2838321F8;
  v30[12] = v26;
  v30[13] = &off_283837920;
  v30[14] = v26;
  v30[15] = &off_28382D648;
  v86 = v17;
  v87 = v16;
  v46 = *(v17 + 16);
  v83 = v20;
  v46(v30 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceStoreFlushInterval, v20, v16);
  *(v30 + OBJC_IVAR____TtC10ChronoCore15LocationService_inUseNanosecondsOfGrace) = 900000000000;
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);

  sub_224DAB828();
  (*(v10 + 104))(v77, *MEMORY[0x277D85268], v78);
  v89 = MEMORY[0x277D84F90];
  sub_224C41198(&qword_281350A88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  *(v30 + OBJC_IVAR____TtC10ChronoCore15LocationService_serialProcessingQueue) = sub_224DAF418();
  v47 = [*(v21 + 16) data];

  v48 = v47;
  if (!v47)
  {
    v49 = sub_224DA0BF0(MEMORY[0x277D84F90]);
    v48 = swift_allocObject();
    *(v48 + 16) = v49;
  }

  *(v30 + OBJC_IVAR____TtC10ChronoCore15LocationService_graceState) = v48;
  v80 = OBJC_IVAR____TtC10ChronoCore15LocationService_lock;
  os_unfair_lock_lock(*(*(v30 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock) + 16));
  v50 = v30[6];
  __swift_project_boxed_opaque_existential_1(v30 + 2, v30[5]);
  v51 = sub_224DAC6B8();
  v52 = OBJC_IVAR____TtC10ChronoCore15LocationService_serialProcessingQueue;
  v88 = *(v30 + OBJC_IVAR____TtC10ChronoCore15LocationService_serialProcessingQueue);
  v53 = v88;
  v89 = v51;
  v54 = sub_224DAF358();
  v55 = v81;
  (*(*(v54 - 8) + 56))(v81, 1, 1, v54);
  v56 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
  sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810);
  sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78);
  v57 = v82;
  sub_224DAB448();
  sub_224A3311C(v55, &qword_27D6F5090, &qword_224DB5C30);

  v58 = swift_allocObject();
  swift_weakInit();
  v59 = swift_allocObject();
  *(v59 + 16) = sub_224C4E508;
  *(v59 + 24) = v58;
  sub_224A33088(&unk_2813511F0, &qword_27D6F51B0, &unk_224DB4030);

  v60 = v85;
  v61 = sub_224DAB488();

  (*(v84 + 8))(v57, v60);
  v62 = v30[7];
  v30[7] = v61;

  sub_224D278CC();
  v63 = v30[14];
  v64 = v30[15];
  v65 = *(v30 + v52);
  v66 = swift_allocObject();
  swift_weakInit();
  v67 = v65;

  v68 = objc_allocWithZone(type metadata accessor for _LocationSignificantChangeMonitorImpl());
  v69 = sub_224BA41D4(v63, v64, v67, sub_224C4E510, v66);
  v70 = *(v30 + OBJC_IVAR____TtC10ChronoCore15LocationService_significantChangeMonitor);
  *(v30 + OBJC_IVAR____TtC10ChronoCore15LocationService_significantChangeMonitor) = v69;

  if (qword_281351430 != -1)
  {
    swift_once();
  }

  v71 = sub_224DAB258();
  __swift_project_value_buffer(v71, qword_281364D60);
  v72 = sub_224DAB228();
  v73 = sub_224DAF2A8();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_224A2F000, v72, v73, "[service] bootstrapped", v74, 2u);
    MEMORY[0x22AA5EED0](v74, -1, -1);
  }

  os_unfair_lock_unlock(*(*(v30 + v80) + 16));
  (*(v86 + 8))(v83, v87);
  __swift_destroy_boxed_opaque_existential_1(v90);
  return v30;
}

void *sub_224C42080(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = type metadata accessor for ProcessMonitor();
  v25[3] = v7;
  v25[4] = &off_28382AA58;
  v25[0] = a2;
  v23 = v6;
  v24 = &off_2838352C0;
  v22[0] = a3;
  type metadata accessor for AppAuthorizationMonitor();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v25, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = v23;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = sub_224C49218(a1, *v12, *v18, v8);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v20;
}

uint64_t sub_224C42284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12)
{
  v185 = a6;
  v169 = a5;
  v181 = a3;
  v171 = a12;
  v172 = a11;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5338, &qword_224DBBAF0);
  v166 = *(v17 - 8);
  v167 = v17;
  v18 = *(v166 + 64);
  MEMORY[0x28223BE20](v17);
  v165 = v149 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5898, &qword_224DBBDA0);
  v163 = *(v20 - 8);
  v164 = v20;
  v21 = *(v163 + 64);
  MEMORY[0x28223BE20](v20);
  v162 = v149 - v22;
  v23 = sub_224DAF3B8();
  v157 = *(v23 - 8);
  v158 = v23;
  v24 = *(v157 + 64);
  MEMORY[0x28223BE20](v23);
  v156 = v149 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5120, &unk_224DBAE60);
  v160 = *(v26 - 8);
  v161 = v26;
  v27 = *(v160 + 64);
  MEMORY[0x28223BE20](v26);
  v159 = v149 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v178 = v149 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F58A0, &qword_224DBBDA8);
  v151 = *(v32 - 8);
  v152 = v32;
  v33 = *(v151 + 64);
  MEMORY[0x28223BE20](v32);
  v150 = v149 - v34;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F58A8, &qword_224DBBDB0);
  v154 = *(v173 - 8);
  v35 = *(v154 + 64);
  MEMORY[0x28223BE20](v173);
  v153 = v149 - v36;
  v170 = sub_224DAB258();
  v179 = *(v170 - 8);
  v37 = *(v179 + 64);
  MEMORY[0x28223BE20](v170);
  v184 = v149 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_224DAF3C8();
  v180 = *(v182 - 1);
  v39 = *(v180 + 64);
  MEMORY[0x28223BE20](v182);
  v177 = v149 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_224DAF318();
  v41 = *(*(v176 - 8) + 64);
  MEMORY[0x28223BE20](v176);
  v42 = sub_224DAB848();
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v202[3] = sub_224DAC3C8();
  v202[4] = MEMORY[0x277CF9A38];
  v202[0] = a1;
  v201[3] = sub_224DADF58();
  v201[4] = MEMORY[0x277CF9E58];
  v201[0] = a2;
  v183 = sub_224C41198(&unk_281350D38, MEMORY[0x277CF9B18]);
  v149[1] = a4;
  v200[5] = a4;
  v200[3] = sub_224DACE58();
  v200[4] = MEMORY[0x277CF9C38];
  v200[0] = v185;
  v199[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F53C0, &qword_224DBBB20);
  v199[4] = &off_28382A480;
  v199[0] = a7;
  v197 = type metadata accessor for DescriptorService();
  v198 = sub_224C41198(&qword_28135A938, type metadata accessor for DescriptorService);
  v196[0] = a8;
  v195[3] = type metadata accessor for WidgetHostService();
  v195[4] = sub_224C41198(&qword_28135A7C8, type metadata accessor for WidgetHostService);
  v195[0] = a9;
  v194[3] = &type metadata for ArchiveVersionProvider;
  v194[4] = sub_224C4CFF0();
  v44 = swift_allocObject();
  v194[0] = v44;
  v45 = *(a10 + 16);
  *(v44 + 16) = *a10;
  *(v44 + 32) = v45;
  *(v44 + 48) = *(a10 + 32);
  *(v44 + 64) = *(a10 + 48);
  v46 = type metadata accessor for MobilePlaceholderService();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  v49 = swift_allocObject();
  *(v49 + 4) = 0;
  *(v49 + 5) = 0;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F58B0, &qword_224DBBDB8);
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  *(v49 + 6) = sub_224DAB358();
  v53 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_precacheManager;
  type metadata accessor for PlaceholderPrecacheManager();
  swift_allocObject();
  *&v49[v53] = sub_224BA94A4();
  *&v49[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__deviceUpdateTask] = 0;
  v54 = MEMORY[0x277D84F90];
  *&v49[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_persistentSubscriptions] = MEMORY[0x277D84F90];
  *&v49[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_environmentSubscriptions] = MEMORY[0x277D84F98];
  *&v49[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_descriptors] = 0;
  v55 = MEMORY[0x277D84FA0];
  *&v49[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_waitingOnEventsToPrecache] = MEMORY[0x277D84FA0];
  *&v49[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_queuedPrecacheEvents] = v55;
  v56 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224DAB818();
  *&v186 = v54;
  sub_224C41198(&qword_281350A88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  v57 = v170;
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  (*(v180 + 104))(v177, *MEMORY[0x277D85268], v182);
  v58 = v169;
  v185 = v56;
  *&v49[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue] = sub_224DAF418();
  sub_224A3317C(v201, (v49 + 96));
  v59 = v179 + 16;
  v182 = *(v179 + 16);
  v182(&v49[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_logger], v58, v57);
  sub_224A3317C(v196, (v49 + 184));
  sub_224A3317C(v195, (v49 + 224));
  v60 = v181;
  v61 = v183;
  *(v49 + 2) = v181;
  *(v49 + 3) = v61;
  sub_224A3317C(v202, (v49 + 136));
  v62 = sub_224DADFF8();
  v63 = v197;
  v64 = v198;
  v65 = __swift_project_boxed_opaque_existential_1(v196, v197);
  v66 = *(v64 + 40);
  v188 = v63;
  v189 = v66;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v186);
  v68 = *(*(v63 - 8) + 16);
  v69 = v63;
  v70 = v60;
  v68(boxed_opaque_existential_1, v65, v69);

  v71 = sub_224DADFE8();
  v72 = MEMORY[0x277CF9E78];
  v73 = &v49[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_descriptorObserver];
  v73[3] = v62;
  v73[4] = v72;
  *v73 = v71;
  sub_224A3317C(v172, (v49 + 56));
  sub_224A3317C(v194, &v49[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_archiveVersionProvider]);
  sub_224A3796C(v171, &v49[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_replicator], &qword_27D6F58B8, &qword_224DBBDC0);
  sub_224A3317C(v202, &v186);
  if (qword_2813515F8 != -1)
  {
    swift_once();
  }

  v180 = __swift_project_value_buffer(v57, qword_281364FA0);
  v74 = v184;
  v75 = v182;
  (v182)();
  v76 = v75;
  sub_224A3317C(v199, v193);
  sub_224A3317C(v196, v192);
  sub_224A3317C(v195, v191);
  v77 = type metadata accessor for MobilePlaceholderReloadStrategy();
  v78 = *(v77 + 48);
  v79 = *(v77 + 52);
  v80 = swift_allocObject();
  sub_224A36F98(v193, v80 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_taskService);
  sub_224A36F98(v192, v80 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_descriptorService);
  sub_224A36F98(v191, v80 + OBJC_IVAR____TtC10ChronoCore31MobilePlaceholderReloadStrategy_hostService);
  *(v80 + 16) = 0;
  *(v80 + 24) = 0;
  sub_224A36F98(&v186, v80 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_extensionManager);
  v177 = v80;
  v81 = (v80 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_cacheManager);
  v82 = v183;
  *v81 = v70;
  v81[1] = v82;
  v83 = *(v179 + 32);
  v83(v80 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v74, v57);
  v176 = v59;
  v76(v74, v58, v57);
  v84 = type metadata accessor for MobilePlaceholderReloadConfigurationPolicy();
  v85 = *(v84 + 48);
  v86 = *(v84 + 52);
  v87 = swift_allocObject();
  v88 = OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F54D8, &qword_224DBBBA8);
  v89 = swift_allocObject();
  *(v89 + 16) = 0;
  *(v87 + v88) = v89;
  v90 = OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock_extensionFailureRetryCounts;
  v91 = MEMORY[0x277D84F90];
  *(v87 + v90) = sub_224DA0EB8(MEMORY[0x277D84F90]);
  v92 = OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy__lock_badExtensionDates;
  *(v87 + v92) = sub_224DA0BF0(v91);
  v93 = v184;
  v83(v87 + OBJC_IVAR____TtC10ChronoCore42MobilePlaceholderReloadConfigurationPolicy_logger, v184, v57);
  *&v49[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_configurationPolicy] = v87;
  sub_224DA9E78();

  sub_224DA9E68();
  LODWORD(v183) = sub_224DA9D38();

  sub_224DAD778();
  *&v193[0] = v177;
  *&v192[0] = v87;
  v182(v93, v180, v57);
  sub_224A3317C(v200, &v186);
  sub_224C41198(&qword_2813535D0, type metadata accessor for MobilePlaceholderReloadStrategy);
  sub_224C41198(&qword_281352328, type metadata accessor for MobilePlaceholderReloadConfigurationPolicy);
  v155 = v87;

  sub_224DAD758();
  sub_224DAD768();
  *(v49 + 22) = sub_224DAD748();
  v94 = sub_224D57C00(&unk_283828288);
  v95 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_waitingOnEventsToPrecache;
  swift_beginAccess();
  v96 = *&v49[v95];
  *&v49[v95] = v94;

  v97 = *(v49 + 27);
  __swift_project_boxed_opaque_existential_1(v49 + 23, *(v49 + 26));
  v98 = *(v97 + 40);
  *&v186 = sub_224DAD8B8();
  v180 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue;
  *&v192[0] = *&v49[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue];
  v99 = *&v192[0];
  v100 = sub_224DAF358();
  v101 = *(v100 - 8);
  v183 = *(v101 + 56);
  v181 = v101 + 56;
  v102 = v178;
  v175 = v100;
  v183();
  v103 = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F42B0, &unk_224DB8D60);
  v176 = MEMORY[0x277CBCD90];
  sub_224A33088(&qword_2813510B0, &qword_27D6F42B0, &unk_224DB8D60);
  v174 = sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78);
  v104 = v150;
  sub_224DAB448();
  v105 = v102;
  sub_224A3311C(v102, &qword_27D6F5090, &qword_224DB5C30);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F55E0, &unk_224DB65D0);
  v168 = MEMORY[0x277CBCD60];
  sub_224A33088(&qword_281351270, &qword_27D6F58A0, &qword_224DBBDA8);
  v106 = v152;
  v107 = v153;
  sub_224DAB3E8();
  (*(v151 + 8))(v104, v106);
  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&unk_281351368, &qword_27D6F58A8, &qword_224DBBDB0);

  v108 = v173;
  sub_224DAB488();

  (*(v154 + 8))(v107, v108);
  v173 = OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService__queue_persistentSubscriptions;
  swift_beginAccess();
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54F0, &qword_224DBA400);
  v184 = sub_224A33088(&unk_281350BC0, &unk_27D6F54F0, &qword_224DBA400);
  sub_224DAB318();
  swift_endAccess();

  v109 = *(v49 + 31);
  v110 = *(v49 + 32);
  __swift_project_boxed_opaque_existential_1(v49 + 28, v109);
  *&v186 = (*(v110 + 16))(768, v109, v110);
  v111 = v156;
  sub_224DAF378();
  *&v192[0] = *&v49[v180];
  v112 = *&v192[0];
  v113 = v105;
  (v183)(v105, 1, 1, v100);
  v114 = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80);
  v115 = v159;
  sub_224DAB468();
  sub_224A3311C(v113, &qword_27D6F5090, &qword_224DB5C30);
  (*(v157 + 8))(v111, v158);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351350, &unk_27D6F5120, &unk_224DBAE60);
  v116 = v161;
  sub_224DAB488();

  (*(v160 + 8))(v115, v116);
  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  v117 = swift_allocObject();
  swift_weakInit();
  v118 = v177;
  v119 = *(v177 + 2);
  v120 = *(v177 + 3);
  *(v177 + 2) = sub_224C4E164;
  *(v118 + 3) = v117;

  sub_224A3D418(v119);

  v121 = *(v49 + 22);
  *&v186 = sub_224DAC048();
  v122 = v180;
  *&v192[0] = *&v49[v180];
  v123 = *&v192[0];
  v124 = v178;
  (v183)(v178, 1, 1, v175);
  v125 = v123;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F58C0, &qword_224DBBDC8);
  v161 = sub_224A33088(&qword_281350FF8, &unk_27D6F58C0, &qword_224DBBDC8);
  v126 = v162;
  sub_224DAB448();
  sub_224A3311C(v124, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  v159 = sub_224A33088(&qword_281351200, &qword_27D6F5898, &qword_224DBBDA0);
  v127 = v164;
  sub_224DAB488();

  v163 = *(v163 + 8);
  (v163)(v126, v127);
  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  v128 = *(v49 + 22);
  *&v186 = sub_224DAC078();
  *&v192[0] = *&v49[v122];
  v129 = *&v192[0];
  v130 = v178;
  (v183)(v178, 1, 1, v175);
  v131 = v129;
  sub_224DAB448();
  sub_224A3311C(v130, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224DAB488();

  (v163)(v126, v127);
  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  sub_224DAD2E8();
  *&v186 = sub_224DAD6D8();
  *&v192[0] = *&v49[v180];
  v132 = *&v192[0];
  (v183)(v130, 1, 1, v175);
  v133 = v132;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5490, &unk_224DBA408);
  sub_224A33088(&qword_281351078, &unk_27D6F5490, &unk_224DBA408);
  v134 = v165;
  sub_224DAB448();
  sub_224A3311C(v130, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351248, &unk_27D6F5338, &qword_224DBBAF0);
  v135 = v167;
  sub_224DAB488();

  (*(v166 + 8))(v134, v135);
  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  v136 = *(v49 + 31);
  v137 = *(v49 + 32);
  __swift_project_boxed_opaque_existential_1(v49 + 28, v136);
  (*(v137 + 32))(&v186, 768, v136, v137);
  if (!v190)
  {

    sub_224A3311C(v171, &qword_27D6F58B8, &qword_224DBBDC0);
    __swift_destroy_boxed_opaque_existential_1(v172);
    (*(v179 + 8))(v169, v170);
    __swift_destroy_boxed_opaque_existential_1(v194);
    __swift_destroy_boxed_opaque_existential_1(v195);
    __swift_destroy_boxed_opaque_existential_1(v199);
    __swift_destroy_boxed_opaque_existential_1(v200);
    __swift_destroy_boxed_opaque_existential_1(v201);
    __swift_destroy_boxed_opaque_existential_1(v202);
    sub_224A3311C(&v186, &qword_27D6F50E0, &qword_224DB41A0);
    v138 = 0;
LABEL_9:
    v145 = *&v49[OBJC_IVAR____TtC10ChronoCore24MobilePlaceholderService_precacheManager];
    v146 = swift_allocObject();
    swift_weakInit();

    v147 = *(v145 + 48);
    v148 = *(v145 + 56);
    *(v145 + 48) = sub_224C4E184;
    *(v145 + 56) = v146;
    swift_retain_n();
    sub_224A3D418(v147);

    __swift_destroy_boxed_opaque_existential_1(v196);

    sub_224A3D418(v138);
    return v49;
  }

  v138 = *(v190 + 16);
  sub_224A699F0(&v186);
  if (!v138)
  {

    sub_224A3311C(v171, &qword_27D6F58B8, &qword_224DBBDC0);
    __swift_destroy_boxed_opaque_existential_1(v172);
    (*(v179 + 8))(v169, v170);
    __swift_destroy_boxed_opaque_existential_1(v194);
    __swift_destroy_boxed_opaque_existential_1(v195);
    __swift_destroy_boxed_opaque_existential_1(v199);
    __swift_destroy_boxed_opaque_existential_1(v200);
    __swift_destroy_boxed_opaque_existential_1(v201);
    __swift_destroy_boxed_opaque_existential_1(v202);
    goto LABEL_9;
  }

  v139 = *&v49[v180];
  v140 = swift_allocObject();
  v138 = sub_224C4E18C;
  *(v140 + 16) = sub_224C4E18C;
  *(v140 + 24) = v49;
  v189 = sub_224BC4B74;
  v190 = v140;
  *&v186 = MEMORY[0x277D85DD0];
  *(&v186 + 1) = 1107296256;
  v187 = sub_224A9B6F8;
  v188 = &block_descriptor_299;
  v141 = _Block_copy(&v186);

  v142 = v139;

  dispatch_sync(v142, v141);

  _Block_release(v141);

  sub_224A3311C(v171, &qword_27D6F58B8, &qword_224DBBDC0);
  __swift_destroy_boxed_opaque_existential_1(v172);
  (*(v179 + 8))(v169, v170);
  __swift_destroy_boxed_opaque_existential_1(v194);
  __swift_destroy_boxed_opaque_existential_1(v195);
  __swift_destroy_boxed_opaque_existential_1(v199);
  __swift_destroy_boxed_opaque_existential_1(v200);
  __swift_destroy_boxed_opaque_existential_1(v201);
  __swift_destroy_boxed_opaque_existential_1(v202);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_224C43E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = sub_224DAF3C8();
  v62 = *(v61 - 8);
  v10 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  v60 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_224DAF318();
  v12 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v57 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAB848();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = type metadata accessor for APSPushConnectionFactory();
  v76[3] = v16;
  v76[4] = &off_283832808;
  v76[0] = a1;
  v74 = type metadata accessor for PersistentPushSubscriptionStore();
  v75 = &off_283830CC8;
  *&v73 = a2;
  v71 = type metadata accessor for PersistentPublicTokenStore();
  v72 = &off_283828DF8;
  *&v70 = a3;
  v68 = type metadata accessor for PersistentPushTokenStore();
  v69 = &off_283833730;
  *&v67 = a4;
  v17 = type metadata accessor for SimpleWorkScheduler();
  v66 = &off_28382F7C0;
  v65 = v17;
  v64[0] = a5;
  type metadata accessor for PushService();
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v76, v16);
  v20 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = v65;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = *v22;
  v31 = *v28;
  *(v18 + 96) = v16;
  *(v18 + 104) = &off_283832808;
  *(v18 + 72) = v30;
  *(v18 + 256) = v17;
  *(v18 + 264) = &off_28382F7C0;
  *(v18 + 232) = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5880, &qword_224DB3208);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  *(v18 + 16) = sub_224DAB358();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32A0, &qword_224DB3210);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  *(v18 + 24) = sub_224DAB358();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5890, &qword_224DB3200);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  *(v18 + 32) = sub_224DAB358();
  v56 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v55 = "focusConfigurationChanged";
  sub_224DAB7E8();
  v63 = MEMORY[0x277D84F90];
  v58 = sub_224C41198(&qword_281350A88, MEMORY[0x277D85230]);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  v54 = sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  v53 = v41;
  sub_224DAF788();
  v42 = *MEMORY[0x277D85260];
  v43 = v62 + 104;
  v51 = *(v62 + 104);
  v52 = v42;
  v44 = v61;
  v51(v60, v42, v61);
  v62 = v43;
  *(v18 + 40) = sub_224DAF418();
  v55 = "core.PushNotifications.internal";
  sub_224DAB7E8();
  v63 = MEMORY[0x277D84F90];
  sub_224DAF788();
  v45 = v60;
  v46 = v44;
  v47 = v51;
  v51(v60, v42, v46);
  *(v18 + 48) = sub_224DAF418();
  sub_224DAB7E8();
  v63 = MEMORY[0x277D84F90];
  sub_224DAF788();
  v47(v45, v52, v61);
  *(v18 + 56) = sub_224DAF418();
  *(v18 + 64) = sub_224DA0110(MEMORY[0x277D84F90]);
  *(v18 + 272) = 0u;
  *(v18 + 288) = 0u;
  *(v18 + 304) = 0u;
  v48 = MEMORY[0x277D84FA0];
  *(v18 + 320) = 0;
  *(v18 + 328) = v48;
  sub_224A36F98(&v73, v18 + 112);
  sub_224A36F98(&v70, v18 + 152);
  sub_224A36F98(&v67, v18 + 192);
  __swift_destroy_boxed_opaque_existential_1(v64);
  __swift_destroy_boxed_opaque_existential_1(v76);
  return v18;
}

uint64_t sub_224C445B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAB258();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v45 - v10;
  v53[3] = type metadata accessor for ProcessMonitor();
  v53[4] = &off_28382AA58;
  v53[0] = a1;
  sub_224A3317C(v53, v52);
  v45[0] = a2;
  sub_224A3796C(a2, v51, &qword_27D6F5428, &qword_224DBBB50);
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  if (qword_2813514C8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_2813514D0);
  v13 = *(v5 + 16);
  v13(v11, v12, v4);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5438, &qword_224DBBB60);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = v17 + qword_2813651F0;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v19 = qword_2813548C0;
  type metadata accessor for UnfairLock();
  v20 = swift_allocObject();
  v21 = swift_slowAlloc();
  *(v20 + 16) = v21;
  *(v17 + v19) = v20;
  v22 = MEMORY[0x277D84F98];
  *(v17 + qword_2813549E8) = MEMORY[0x277D84F98];
  *(v17 + qword_2813549E0) = 0;
  *v21 = 0;
  *(v17 + 16) = xmmword_224DBB880;
  v13((v17 + qword_2813548B8), v11, v4);
  sub_224A3796C(v51, &v46, &qword_27D6F5428, &qword_224DBBB50);
  if (v47)
  {
    sub_224A36F98(&v46, v48);
    sub_224A36F98(v48, &v46);
    v13(v9, v11, v4);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5878, &qword_224DBBD98);
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    v26 = swift_allocObject();
    *(v26 + 56) = v22;
    sub_224A36F98(&v46, v26 + 16);
    *(v26 + qword_27D6F6238) = 0x4072C00000000000;
    (*(v5 + 32))(v26 + qword_27D6F6230, v9, v4);
    *(v17 + qword_2813549F0) = v26;
  }

  else
  {
    sub_224A3311C(&v46, &qword_27D6F5428, &qword_224DBBB50);
    *(v17 + qword_2813549F0) = 0;
  }

  sub_224A3317C(v52, v17 + qword_281354958);
  sub_224A3317C(v52, v48);
  v27 = *(v17 + v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5868, &qword_224DBBD88);
  v28 = swift_allocObject();
  v28[8] = 0;
  v28[9] = 0;
  v28[2] = v27;
  sub_224A36F98(v48, (v28 + 3));
  *(v17 + qword_2813548D0) = v28;
  sub_224A3796C(v49, &v46, &qword_27D6F5770, &qword_224DBBCF8);
  if (v47)
  {
    sub_224A36F98(&v46, v48);
    sub_224A36F98(v48, &v46);
    v13(v9, v11, v4);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5870, &qword_224DBBD90);
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    v32 = swift_allocObject();
    v33 = (v32 + qword_27D6F71D8);
    *v33 = 0;
    v33[1] = 0;
    sub_224A36F98(&v46, v32 + 16);
    *(v32 + 56) = v28;
    (*(v5 + 32))(v32 + qword_27D6F6228, v9, v4);
    *(v17 + qword_2813548C8) = v32;
  }

  else
  {

    sub_224A3311C(&v46, &qword_27D6F5770, &qword_224DBBCF8);
    *(v17 + qword_2813548C8) = 0;
  }

  v34 = swift_allocObject();
  swift_weakInit();
  v35 = *(v17 + qword_2813548D0);
  v36 = *(v35 + 64);
  v37 = *(v35 + 72);
  *(v35 + 64) = sub_224AA30A8;
  *(v35 + 72) = v34;

  sub_224A3D418(v36);

  v38 = *(v17 + qword_2813548C8);
  if (v38)
  {
    v39 = (v38 + qword_27D6F71D8);
    v40 = *(v38 + qword_27D6F71D8);
    v41 = *(v38 + qword_27D6F71D8 + 8);
    *v39 = sub_224AA30A8;
    v39[1] = v34;

    sub_224A3D418(v40);
  }

  v42 = *(v17 + qword_2813548C0);
  v43 = *(v42 + 16);

  os_unfair_lock_lock(v43);
  sub_224C4106C(v17);
  os_unfair_lock_unlock(*(v42 + 16));

  sub_224A3311C(v45[0], &qword_27D6F5428, &qword_224DBBB50);
  (*(v5 + 8))(v11, v4);
  sub_224A3311C(v49, &qword_27D6F5770, &qword_224DBBCF8);
  sub_224A3311C(v51, &qword_27D6F5428, &qword_224DBBB50);
  __swift_destroy_boxed_opaque_existential_1(v52);
  __swift_destroy_boxed_opaque_existential_1(v53);
  return v17;
}

uint64_t sub_224C44C1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAB258();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v51 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - v9;
  v60[3] = type metadata accessor for ProcessMonitor();
  v60[4] = &off_28382AA58;
  v60[0] = a1;
  v59[3] = type metadata accessor for ControlVisibilityMonitor();
  v59[4] = &off_283832620;
  v59[0] = a2;
  sub_224A3317C(v60, v58);
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  sub_224A3317C(v59, v55);
  if (qword_2813514E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_2813514F0);
  v12 = *(v5 + 16);
  v12(v10, v11, v4);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5528, &qword_224DBBBC0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v16 + qword_2813651F0;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v18 = qword_2813548C0;
  type metadata accessor for UnfairLock();
  v19 = swift_allocObject();
  v20 = swift_slowAlloc();
  *(v19 + 16) = v20;
  *(v16 + v18) = v19;
  v21 = MEMORY[0x277D84F98];
  *(v16 + qword_2813549E8) = MEMORY[0x277D84F98];
  *(v16 + qword_2813549E0) = 0;
  *v20 = 0;
  *(v16 + 16) = xmmword_224DBB890;
  v12((v16 + qword_2813548B8), v10, v4);
  sub_224A3796C(v56, &v52, &qword_27D6F5428, &qword_224DBBB50);
  v50 = v10;
  if (v53)
  {
    v22 = v10;
    sub_224A36F98(&v52, v54);
    sub_224A36F98(v54, &v52);
    v23 = v51;
    v12(v51, v22, v4);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5780, &qword_224DBBD08);
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    v27 = swift_allocObject();
    *(v27 + 56) = v21;
    sub_224A36F98(&v52, v27 + 16);
    *(v27 + qword_27D6F6238) = 0;
    (*(v5 + 32))(v27 + qword_27D6F6230, v23, v4);
    *(v16 + qword_2813549F0) = v27;
  }

  else
  {
    sub_224A3311C(&v52, &qword_27D6F5428, &qword_224DBBB50);
    *(v16 + qword_2813549F0) = 0;
  }

  sub_224A3317C(v58, v16 + qword_281354958);
  sub_224A3317C(v58, v54);
  v28 = *(v16 + v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5768, &qword_224DBBCF0);
  v29 = swift_allocObject();
  v29[8] = 0;
  v29[9] = 0;
  v29[2] = v28;
  sub_224A36F98(v54, (v29 + 3));
  v30 = &unk_281354000;
  *(v16 + qword_2813548D0) = v29;
  sub_224A3796C(v55, &v52, &qword_27D6F5770, &qword_224DBBCF8);
  if (v53)
  {
    sub_224A36F98(&v52, v54);
    sub_224A36F98(v54, &v52);
    v32 = v50;
    v31 = v51;
    v12(v51, v50, v4);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5778, &qword_224DBBD00);
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    v36 = swift_allocObject();
    v37 = (v36 + qword_27D6F71D8);
    *v37 = 0;
    v37[1] = 0;
    sub_224A36F98(&v52, v36 + 16);
    *(v36 + 56) = v29;
    v38 = v31;
    v30 = &unk_281354000;
    (*(v5 + 32))(v36 + qword_27D6F6228, v38, v4);
    *(v16 + qword_2813548C8) = v36;
  }

  else
  {

    sub_224A3311C(&v52, &qword_27D6F5770, &qword_224DBBCF8);
    *(v16 + qword_2813548C8) = 0;
    v32 = v50;
  }

  v39 = swift_allocObject();
  swift_weakInit();
  v40 = *(v16 + v30[282]);
  v41 = *(v40 + 64);
  v42 = *(v40 + 72);
  *(v40 + 64) = sub_224AA2B38;
  *(v40 + 72) = v39;

  sub_224A3D418(v41);

  v43 = *(v16 + qword_2813548C8);
  if (v43)
  {
    v44 = (v43 + qword_27D6F71D8);
    v45 = *(v43 + qword_27D6F71D8);
    v46 = *(v43 + qword_27D6F71D8 + 8);
    *v44 = sub_224AA2B38;
    v44[1] = v39;

    sub_224A3D418(v45);
  }

  v47 = *(v16 + qword_2813548C0);
  v48 = *(v47 + 16);

  os_unfair_lock_lock(v48);
  sub_224C4106C(v16);
  os_unfair_lock_unlock(*(v47 + 16));

  (*(v5 + 8))(v32, v4);
  sub_224A3311C(v55, &qword_27D6F5770, &qword_224DBBCF8);
  sub_224A3311C(v56, &qword_27D6F5428, &qword_224DBBB50);
  __swift_destroy_boxed_opaque_existential_1(v58);
  __swift_destroy_boxed_opaque_existential_1(v59);
  __swift_destroy_boxed_opaque_existential_1(v60);
  return v16;
}

void *sub_224C45284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = sub_224DAAAD8();
  v27 = MEMORY[0x277D46520];
  *&v25 = a1;
  v8 = type metadata accessor for StalenessService();
  v24[3] = v8;
  v24[4] = &off_283837478;
  v24[0] = a2;
  v22 = type metadata accessor for MobileTimelineService();
  v23 = sub_224C41198(&unk_2813580C0, type metadata accessor for MobileTimelineService);
  *&v21 = a3;
  type metadata accessor for DeviceService();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v24, v8);
  v11 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v9[10] = v8;
  v9[11] = &off_283837478;
  v9[7] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v9[18] = sub_224DAB358();
  v9[19] = 0;
  sub_224A36F98(&v25, (v9 + 2));
  sub_224A36F98(&v21, (v9 + 12));
  v9[17] = a4;
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v9;
}

uint64_t sub_224C45450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for LiveControlService();
  v26[3] = v8;
  v26[4] = sub_224C41198(&qword_281359B70, type metadata accessor for LiveControlService);
  v26[0] = a1;
  v24 = type metadata accessor for PushService();
  v25 = &off_283828B40;
  v23[0] = a4;
  v9 = objc_allocWithZone(type metadata accessor for ControlCenterServer());
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v26, v8);
  v11 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = v24;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_224C45854(*v13, a2, a3, *v19, v9);
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v21;
}

uint64_t sub_224C45664(void *a1, __int16 a2, uint64_t a3)
{
  v21[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F53C0, &qword_224DBBB20);
  v21[4] = &off_28382A4A8;
  v21[0] = a1;
  *(a3 + 24) = 0;
  type metadata accessor for UnfairLock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *v7 = 0;
  *(v6 + 16) = v7;
  *(a3 + 32) = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(a3 + 80) = sub_224DAB358();
  *(a3 + 16) = a2 & 1;
  *(a3 + 17) = HIBYTE(a2) & 1;
  sub_224A3317C(v21, a3 + 40);
  v11 = *(a3 + 64);
  v12 = *(a3 + 72);
  __swift_project_boxed_opaque_existential_1((a3 + 40), v11);
  v13 = *(v12 + 32);

  v13(v14, &off_28382DBB8, a2 & 0x101, v11, v12);

  v15 = *((*MEMORY[0x277D85000] & *a1) + 0x88);
  os_unfair_lock_assert_not_owner(*(*(a1 + v15) + 16));
  v16 = *(a1 + v15);
  os_unfair_lock_lock(*(v16 + 16));
  v17 = sub_224C270E4(a1);
  os_unfair_lock_unlock(*(v16 + 16));
  v18 = sub_224AE93E8(v17);

  swift_beginAccess();
  v19 = *(a3 + 24);
  *(a3 + 24) = v18;

  __swift_destroy_boxed_opaque_existential_1(v21);
  return a3;
}

uint64_t sub_224C45854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v51[3] = type metadata accessor for LiveControlService();
  v51[4] = sub_224C41198(&qword_281359B70, type metadata accessor for LiveControlService);
  v51[0] = a1;
  v50[3] = type metadata accessor for PushService();
  v50[4] = &off_283828B40;
  v50[0] = a4;
  v10 = OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__listener;
  *&a5[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__listener] = 0;
  v11 = MEMORY[0x277D84FA0];
  *&a5[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__subscriptions] = MEMORY[0x277D84FA0];
  v12 = OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__clientsSetLock;
  type metadata accessor for UnfairLock();
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *v14 = 0;
  *(v13 + 16) = v14;
  *&a5[v12] = v13;
  *&a5[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__clientsSetLock_clients] = v11;
  sub_224A3317C(v51, aBlock);
  sub_224A3317C(v50, v48);
  v15 = v44;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(aBlock, v44);
  v17 = *(*(v15 - 1) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v41[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v20 + 16))(v19);
  v21 = v49;
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v41[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v26 + 16))(v25);
  v27 = sub_224C45CC8(*v19, a2, a3, *v25);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  *&a5[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__services] = v27;
  v28 = objc_opt_self();
  v29 = sub_224DAEDE8();
  v30 = [v28 serialQueueTargetingSharedWorkloop:v29 withQoS:33];

  *&a5[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__queue] = v30;
  v31 = *&a5[v10];
  *&a5[v10] = 0;

  v32 = type metadata accessor for ControlCenterServer();
  v47.receiver = a5;
  v47.super_class = v32;
  v33 = objc_msgSendSuper2(&v47, sel_init);
  v42 = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_224C4E074;
  *(v34 + 24) = v41;
  v45 = sub_224A867F4;
  v46 = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A37E38;
  v44 = &block_descriptor_249;
  v35 = _Block_copy(aBlock);
  v36 = objc_opt_self();
  v37 = v33;

  v38 = [v36 listenerWithConfigurator_];
  _Block_release(v35);
  __swift_destroy_boxed_opaque_existential_1(v50);
  __swift_destroy_boxed_opaque_existential_1(v51);

  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
    __break(1u);
  }

  else
  {
    v40 = *&v37[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__listener];
    *&v37[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__listener] = v38;

    return v37;
  }

  return result;
}

void *sub_224C45CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = sub_224DAC3C8();
  v35 = MEMORY[0x277CF9A38];
  *&v33 = a2;
  v31 = type metadata accessor for ControlHostService();
  v32 = sub_224C41198(&qword_28135A010, type metadata accessor for ControlHostService);
  *&v30 = a3;
  v8 = type metadata accessor for LiveControlService();
  v29[3] = v8;
  v9 = sub_224C41198(&qword_281359B70, type metadata accessor for LiveControlService);
  v29[4] = v9;
  v29[0] = a1;
  v10 = type metadata accessor for PushService();
  v27 = v10;
  v28 = &off_283828B40;
  v26[0] = a4;
  type metadata accessor for _ControlCenterServices();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v29, v8);
  v13 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = v27;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v15;
  v24 = *v21;
  v11[5] = v8;
  v11[6] = v9;
  v11[2] = v23;
  v11[20] = v10;
  v11[21] = &off_283828B40;
  v11[17] = v24;
  sub_224A36F98(&v33, (v11 + 7));
  sub_224A36F98(&v30, (v11 + 12));
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v11;
}

void *sub_224C45F68(uint64_t a1, void *a2)
{
  v10[3] = type metadata accessor for WidgetHostService();
  v10[4] = sub_224C41198(&qword_28135A7C8, type metadata accessor for WidgetHostService);
  v10[0] = a1;
  a2[7] = MEMORY[0x277D84FA0];
  a2[8] = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5760, &qword_224DBBCE8);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  a2[9] = sub_224DAB388();
  sub_224A3317C(v10, (a2 + 2));
  v7 = a2[5];
  v8 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v7);
  (*(*(v8 + 8) + 40))(256, v7);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80);
  sub_224DAB488();

  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v10);
  return a2;
}

char *sub_224C46164(uint64_t a1, const char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(char *, uint64_t, uint64_t), char *a13)
{
  v162 = a8;
  v155 = a7;
  v150 = a6;
  v148 = a5;
  v143 = a2;
  v144 = a4;
  v167 = a11;
  v168 = a12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5790, &qword_224DBBD10);
  v160 = *(v15 - 8);
  v161 = v15;
  v16 = *(v160 + 64);
  MEMORY[0x28223BE20](v15);
  v159 = &v140 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5798, &qword_224DBBD18);
  v157 = *(v18 - 8);
  v158 = v18;
  v19 = *(v157 + 64);
  MEMORY[0x28223BE20](v18);
  v156 = &v140 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v166 = &v140 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37C8, &unk_224DB4020);
  v152 = *(v24 - 8);
  v153 = v24;
  v25 = *(v152 + 64);
  MEMORY[0x28223BE20](v24);
  v151 = &v140 - v26;
  v169 = sub_224DAF3C8();
  v165 = *(v169 - 8);
  v27 = *(v165 + 64);
  MEMORY[0x28223BE20](v169);
  v154 = &v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_224DAF318();
  v29 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v147 = (&v140 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_224DAB848();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v145 = &v140 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_224DAB258();
  v35 = *(v34 - 8);
  v163 = v34;
  v164 = v35;
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v149 = &v140 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v140 - v39;
  v141 = sub_224DAB218();
  v41 = *(v141 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v141);
  v44 = &v140 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187[3] = type metadata accessor for DescriptorService();
  v187[4] = sub_224C41198(&qword_28135A950, type metadata accessor for DescriptorService);
  v187[0] = a1;
  v186[3] = sub_224DAC3C8();
  v186[4] = MEMORY[0x277CF9A38];
  v186[0] = v143;
  v45 = sub_224DACE88();
  v185[3] = v45;
  v185[4] = MEMORY[0x277CF9C40];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v185);
  (*(*(v45 - 8) + 32))(boxed_opaque_existential_1, v144, v45);
  v184[3] = sub_224DAD2E8();
  v184[4] = MEMORY[0x277CF9C88];
  v184[0] = v148;
  v47 = sub_224DACE58();
  v183[4] = MEMORY[0x277CF9C38];
  v183[3] = v47;
  v183[0] = v162;
  v48 = type metadata accessor for RemoteActivitySubscriptionCache();
  v182[4] = &off_283831828;
  v182[5] = &off_2838317F0;
  v182[6] = &off_283831818;
  v182[3] = v48;
  v182[0] = a9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F53C0, &qword_224DBBB20);
  v181[4] = &off_28382A480;
  v181[3] = v49;
  v181[0] = a10;
  v50 = type metadata accessor for InteractionService();
  v180[4] = &off_28382CD80;
  v180[3] = v50;
  v180[0] = v168;
  a13[12] = 0;
  a13[13] = 0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C48, &unk_224DBA3B0);
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  a13[14] = sub_224DAB358();
  a13[15] = 0;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F57A0, &qword_224DBA428);
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  v57 = sub_224DAB358();
  a13[18] = 0;
  v58 = MEMORY[0x277D84F90];
  a13[16] = v57;
  a13[17] = 0;
  v59 = MEMORY[0x277D84F98];
  a13[34] = v58;
  a13[35] = v59;
  a13[36] = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F57A8, &qword_224DBBD20);
  v60 = swift_allocObject();
  *(v60 + 32) = 0;
  *(v60 + 16) = 0;
  *(v60 + 24) = v59;
  a13[43] = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5450, &qword_224DBBB70);
  a13[45] = sub_224DADDF8();
  *(a13 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_reloadSubscriptions) = v59;
  v61 = OBJC_IVAR____TtC10ChronoCore21MobileActivityService_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F54D8, &qword_224DBBBA8);
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(a13 + v61) = v62;
  *(a13 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_lock_remoteEntries) = v59;
  sub_224A3317C(v187, (a13 + 29));
  sub_224A3317C(v186, (a13 + 37));
  v162 = a3;
  sub_224A3317C(a3, (a13 + 24));
  if (qword_281351458 != -1)
  {
    swift_once();
  }

  v63 = v163;
  v144 = __swift_project_value_buffer(v163, qword_281364DA8);
  v64 = OBJC_IVAR____TtC10ChronoCore21MobileActivityService_logger;
  v66 = v164 + 16;
  v65 = *(v164 + 16);
  v168 = v65;
  v65(a13 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_logger, v144, v63);
  v142 = v40;
  v65(v40, a13 + v64, v63);
  sub_224DAB208();
  (*(v41 + 32))(a13 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_signposter, v44, v141);
  sub_224A3317C(v185, (a13 + 2));
  sub_224A3317C(v184, a13 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_dataProtectionMonitor);
  v67 = sub_224DA9BD8();
  v68 = sub_224DA9BC8();
  v69 = MEMORY[0x277CF9848];
  v148 = v67;
  a13[22] = v67;
  a13[23] = v69;
  a13[19] = v68;
  sub_224BBF304(v182, a13 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_remoteActivitySubscriptionStore);
  v70 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v143 = "controlCenterXPCServer";
  sub_224DAB7E8();
  *&v177 = v58;
  sub_224C41198(&qword_281350A88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  v71 = v168;
  sub_224DAF788();
  (*(v165 + 104))(v154, *MEMORY[0x277D85260], v169);
  v165 = v70;
  *(a13 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_receiveQueue) = sub_224DAF418();
  v72 = v167;
  sub_224A3796C(v167, a13 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_archiveVersionProvider, &unk_27D6F57B0, qword_224DB7B48);
  sub_224A3317C(v180, (a13 + 7));
  sub_224DAC8C8();
  v73 = v142;
  v74 = v163;
  v71(v142, v144, v163);
  sub_224A3317C((a13 + 19), &v177);
  v75 = v73;
  v76 = sub_224DAC898();
  a13[44] = v76;
  v77 = objc_allocWithZone(sub_224DA9B88());

  v78 = [v77 init];
  *(a13 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_remoteSubscriptionPreferencesListener) = v78;
  sub_224A3317C(v186, &v177);
  sub_224A3317C(v185, v176);
  sub_224A3796C(v72, v175, &unk_27D6F57B0, qword_224DB7B48);
  v79 = qword_281351670;
  v169 = v76;

  v154 = v78;
  v80 = v75;
  if (v79 != -1)
  {
    swift_once();
  }

  v146 = __swift_project_value_buffer(v74, qword_281365090);
  v71(v75, v146, v74);
  sub_224A3317C(v181, v174);
  v147 = type metadata accessor for MobileActivityReloadStrategy();
  v81 = *(v147 + 12);
  v82 = *(v147 + 26);
  v83 = swift_allocObject();
  sub_224A3317C(v174, v83 + OBJC_IVAR____TtC10ChronoCore28MobileActivityReloadStrategy_taskService);
  sub_224A3317C(&v177, v173);
  sub_224A3317C(v176, v172);
  sub_224A3796C(v175, v170, &unk_27D6F57B0, qword_224DB7B48);
  v84 = v71;
  v85 = v149;
  v84(v149, v80, v74);
  *(v83 + 16) = 0u;
  *(v83 + 32) = 0u;
  v86 = [objc_opt_self() megabytes];
  v140 = v66;
  sub_224A3B79C(0, &qword_281350918, 0x277CCAE18);
  sub_224DA9348();
  __swift_destroy_boxed_opaque_existential_1(v174);
  v87 = v164;
  (*(v164 + 8))(v80, v74);
  sub_224A3311C(v175, &unk_27D6F57B0, qword_224DB7B48);
  __swift_destroy_boxed_opaque_existential_1(v176);
  __swift_destroy_boxed_opaque_existential_1(&v177);
  sub_224A36F98(v173, v83 + 88);
  sub_224A36F98(v172, v83 + 128);
  *(v83 + 168) = v169;
  v88 = v170[1];
  *(v83 + 48) = v170[0];
  *(v83 + 64) = v88;
  *(v83 + 80) = v171;
  v89 = *(v87 + 32);
  v89(v83 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger, v85, v74);
  v90 = v146;
  v168(v80, v146, v74);
  v91 = type metadata accessor for MobileActivityReloadConfigurationPolicy();
  v92 = *(v91 + 48);
  v93 = *(v91 + 52);
  v94 = swift_allocObject();
  v89(v94 + OBJC_IVAR____TtC10ChronoCore39MobileActivityReloadConfigurationPolicy_logger, v80, v74);
  a13[46] = v94;
  sub_224DA9E78();
  sub_224DA9E68();
  sub_224DA9D98();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F57C0, &qword_224DBBD28);
  v176[0] = v83;
  v175[0] = a13[46];
  v168(v80, v90, v74);
  sub_224A3317C(v183, &v177);
  sub_224C41198(&qword_281354138, type metadata accessor for MobileActivityReloadStrategy);
  sub_224C41198(&qword_281352650, type metadata accessor for MobileActivityReloadConfigurationPolicy);

  a13[42] = sub_224DAD268();
  v95 = type metadata accessor for ActivityController();
  v96 = swift_allocObject();

  *(v96 + 16) = sub_224DA9BC8();
  v178 = v95;
  v179 = &off_28382C8E8;
  *&v177 = v96;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F57C8, &qword_224DBBD30);
  v98 = swift_allocObject();
  sub_224A36F98(&v177, v98 + 16);
  v178 = v97;
  v179 = sub_224A33088(qword_281352D40, &unk_27D6F57C8, &qword_224DBBD30);
  *&v177 = v98;
  sub_224DAC098();

  v99 = a13[42];

  sub_224DAD298();

  v100 = *(v83 + 32);
  v101 = *(v83 + 40);
  *(v83 + 32) = sub_224C4E0A4;
  *(v83 + 40) = a13;

  sub_224A3D418(v100);
  v102 = *(v83 + 16);
  v103 = *(v83 + 24);
  *(v83 + 16) = sub_224C4E0AC;
  *(v83 + 24) = a13;
  v145 = v83;

  sub_224A3D418(v102);

  v104 = a13[41];
  __swift_project_boxed_opaque_existential_1(a13 + 37, a13[40]);
  *&v177 = sub_224DAC698();
  v150 = OBJC_IVAR____TtC10ChronoCore21MobileActivityService_receiveQueue;
  v176[0] = *(a13 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_receiveQueue);
  v105 = v176[0];
  v148 = sub_224DAF358();
  v106 = *(v148 - 8);
  v147 = *(v106 + 56);
  v149 = (v106 + 56);
  v107 = v166;
  v147();
  v108 = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5500, &unk_224DB4040);
  v109 = MEMORY[0x277CBCD90];
  sub_224A33088(&qword_281351048, &unk_27D6F5500, &unk_224DB4040);
  v146 = sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78);
  v110 = v151;
  sub_224DAB448();
  sub_224A3311C(v107, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  v144 = MEMORY[0x277CBCD60];
  sub_224A33088(&qword_281351230, &qword_27D6F37C8, &unk_224DB4020);

  v111 = v153;
  sub_224DAB488();

  (*(v152 + 8))(v110, v111);
  swift_beginAccess();
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54F0, &qword_224DBA400);
  v113 = sub_224A33088(&unk_281350BC0, &unk_27D6F54F0, &qword_224DBA400);
  v114 = v112;
  sub_224DAB318();
  swift_endAccess();

  v115 = a13[42];

  v116 = sub_224DAC048();

  *&v177 = v116;
  swift_allocObject();
  swift_weakInit();
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F57D8, &qword_224DBBD38);
  v143 = v109;
  v163 = sub_224A33088(&unk_281351130, &unk_27D6F57D8, &qword_224DBBD38);
  v164 = v117;
  sub_224DAB488();

  swift_beginAccess();
  v168 = v114;
  sub_224DAB318();
  swift_endAccess();

  v118 = a13[42];

  v119 = sub_224DAC078();

  *&v177 = v119;
  swift_allocObject();
  swift_weakInit();
  sub_224DAB488();

  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  *&v177 = v155;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5480, &qword_224DBBB80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F57E8, &qword_224DBBD40);
  sub_224A33088(&unk_281351028, &unk_27D6F5480, &qword_224DBBB80);
  sub_224A33088(&unk_281350BD0, &qword_27D6F57E8, &qword_224DBBD40);
  v120 = v156;
  sub_224DAB298();
  v121 = swift_allocObject();
  swift_weakInit();
  v122 = swift_allocObject();
  *(v122 + 16) = sub_224C4E0CC;
  *(v122 + 24) = v121;
  sub_224A33088(&qword_281351308, &qword_27D6F5798, &qword_224DBBD18);
  v123 = v158;
  sub_224DAB488();

  (*(v157 + 8))(v120, v123);
  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  v124 = a13[42];

  v125 = sub_224DAC048();

  *&v177 = v125;
  v126 = swift_allocObject();
  *(v126 + 16) = v169;
  *(v126 + 24) = a13;

  sub_224DAB488();

  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  v127 = a13[42];

  v128 = sub_224DAC0D8();

  *&v177 = v128;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F57F0, &qword_224DBBD48);
  sub_224A33088(&qword_281351108, &unk_27D6F57F0, &qword_224DBBD48);
  sub_224DAB488();

  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  v129 = a13[42];

  v130 = sub_224DAC078();

  *&v177 = v130;
  swift_allocObject();
  swift_weakInit();
  sub_224DAB488();

  swift_beginAccess();
  v153 = v113;
  sub_224DAB318();
  swift_endAccess();

  v131 = a13[42];

  v132 = sub_224DAC0E8();

  *&v177 = v132;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5800, &unk_224DBB470);
  sub_224A33088(&qword_2813510E0, &unk_27D6F5800, &unk_224DBB470);
  sub_224DAB488();

  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  v133 = v154;
  *&v177 = sub_224DA9B78();
  v176[0] = *(a13 + v150);
  v134 = v176[0];
  v135 = v166;
  (v147)(v166, 1, 1, v148);
  v136 = v134;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5810, &qword_224DBBD50);
  sub_224A33088(&qword_27D6F5818, &qword_27D6F5810, &qword_224DBBD50);
  v137 = v159;
  sub_224DAB448();
  sub_224A3311C(v135, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();

  sub_224A33088(&qword_27D6F5820, &qword_27D6F5790, &qword_224DBBD10);
  v138 = v161;
  sub_224DAB488();

  (*(v160 + 8))(v137, v138);
  swift_beginAccess();
  sub_224DAB318();
  swift_endAccess();

  sub_224A3311C(v167, &unk_27D6F57B0, qword_224DB7B48);
  __swift_destroy_boxed_opaque_existential_1(v162);
  __swift_destroy_boxed_opaque_existential_1(v181);
  __swift_destroy_boxed_opaque_existential_1(v182);
  __swift_destroy_boxed_opaque_existential_1(v183);
  __swift_destroy_boxed_opaque_existential_1(v184);
  __swift_destroy_boxed_opaque_existential_1(v185);
  __swift_destroy_boxed_opaque_existential_1(v186);
  __swift_destroy_boxed_opaque_existential_1(v187);
  __swift_destroy_boxed_opaque_existential_1(v180);
  return a13;
}

uint64_t sub_224C47C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v5 = sub_224DAB258();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v48 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54C0, &qword_224DBBB98);
  v69 = sub_224A33088(qword_281355608, &unk_27D6F54C0, &qword_224DBBB98);
  *&v67 = a1;
  if (qword_2813515B0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_281364F10);
  v51 = v6;
  v14 = *(v6 + 16);
  v14(v12, v13, v5);
  v15 = v68;
  v16 = v69;
  v17 = __swift_project_boxed_opaque_existential_1(&v67, v68);
  v65 = v15;
  v66 = *(v16 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v63);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v17, v15);
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  v52 = a2;
  sub_224A3796C(a2, v60, &unk_27D6F53A0, &qword_224DC1A80);
  v19 = type metadata accessor for ControlHostService();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v49 = v19;
  v22 = swift_allocObject();
  v54 = v5;
  v14(v10, v12, v5);
  v23 = v10;
  if (v65)
  {
    sub_224A3317C(&v63, &v57);
  }

  else
  {
    v57 = v63;
    v58 = v64;
    v59 = v66;
  }

  sub_224A3796C(v61, v56, &qword_27D6F4200, &unk_224DB5FC0);
  sub_224A3796C(v60, v55, &unk_27D6F53A0, &qword_224DC1A80);
  v24 = qword_28135CA10;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5390, &unk_224DB6000);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *(v22 + v24) = sub_224DAB358();
  v28 = qword_28135CA00;
  v29 = *(v25 + 48);
  v30 = *(v25 + 52);
  swift_allocObject();
  *(v22 + v28) = sub_224DAB358();
  v31 = qword_28135C9F8;
  v32 = *(v25 + 48);
  v33 = *(v25 + 52);
  swift_allocObject();
  *(v22 + v31) = sub_224DAB358();
  v34 = qword_28135CA08;
  v35 = *(v25 + 48);
  v36 = *(v25 + 52);
  swift_allocObject();
  *(v22 + v34) = sub_224DAB358();
  v37 = qword_28135C9F0;
  type metadata accessor for UnfairLock();
  v38 = swift_allocObject();
  v39 = swift_slowAlloc();
  *v39 = 0;
  *(v38 + 16) = v39;
  *(v22 + v37) = v38;
  *(v22 + qword_28135CA28) = MEMORY[0x277D84F98];
  *(v22 + qword_28135CA40) = 0;
  *(v22 + qword_28135CA20) = 2000000000;
  v14((v22 + qword_281365438), v23, v54);
  v40 = v22 + qword_28135CA30;
  v50 = v12;
  if (*(&v58 + 1))
  {
    sub_224A3317C(&v57, v40);
  }

  else
  {
    v41 = v58;
    *v40 = v57;
    *(v40 + 16) = v41;
    *(v40 + 32) = v59;
  }

  sub_224A3796C(v56, v22 + qword_28135CA38, &qword_27D6F4200, &unk_224DB5FC0);
  v42 = sub_224A3796C(v55, v22 + qword_28135CA18, &unk_27D6F53A0, &qword_224DC1A80);
  MEMORY[0x28223BE20](v42);
  *(&v48 - 2) = &v57;
  *(&v48 - 1) = v22;
  sub_224C2A634(sub_224C4E540);
  sub_224A3311C(v55, &unk_27D6F53A0, &qword_224DC1A80);
  sub_224A3311C(v56, &qword_27D6F4200, &unk_224DB5FC0);
  v43 = *(v51 + 8);
  v44 = v23;
  v45 = v54;
  v43(v44, v54);
  sub_224A3311C(v60, &unk_27D6F53A0, &qword_224DC1A80);
  sub_224A3311C(v61, &qword_27D6F4200, &unk_224DB5FC0);
  v43(v50, v45);
  if (v65)
  {
    __swift_destroy_boxed_opaque_existential_1(&v63);
  }

  if (*(&v58 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v57);
  }

  v65 = v49;
  v66 = sub_224C41198(&qword_28135A010, type metadata accessor for ControlHostService);
  *&v63 = v22;
  sub_224A3311C(v52, &unk_27D6F53A0, &qword_224DC1A80);
  v46 = v53;
  sub_224A36F98(&v63, v53 + 16);
  sub_224A36F98(&v67, v46 + 56);
  return v46;
}

uint64_t sub_224C48244(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v69 = a3;
  v63 = a2;
  v71 = a1;
  v6 = sub_224DAB7B8();
  v7 = *(v6 - 8);
  v84 = v6;
  v85 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v83 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v78 = &v62 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4218, &qword_224DB5FF0);
  v76 = *(v74 - 8);
  v13 = *(v76 + 64);
  MEMORY[0x28223BE20](v74);
  v70 = &v62 - v14;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F58D0, &qword_224DB5FF8);
  v75 = *(v73 - 8);
  v15 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  v72 = &v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DB0, &unk_224DB35E0);
  v18 = *(v17 - 8);
  v79 = v17;
  v80 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v77 = &v62 - v20;
  v21 = sub_224DAF3C8();
  v66 = *(v21 - 8);
  v67 = v21;
  v22 = *(v66 + 64);
  MEMORY[0x28223BE20](v21);
  v65 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_224DAF318();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v64 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_224DAB848();
  v81 = *(v27 - 8);
  v82 = v27;
  v28 = *(v81 + 64);
  MEMORY[0x28223BE20](v27);
  v86 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89[3] = type metadata accessor for WidgetHostService();
  v89[4] = sub_224C41198(&qword_28135A7C8, type metadata accessor for WidgetHostService);
  v89[0] = a2;
  *(a4 + 24) = xmmword_224DBB8A0;
  *(a4 + 48) = xmmword_224DBB8B0;
  v30 = [objc_allocWithZone(MEMORY[0x277D06A38]) init];
  v31 = MEMORY[0x277D84FA0];
  *(a4 + 72) = v30;
  *(a4 + 80) = v31;
  *(a4 + 88) = v31;
  *(a4 + 136) = v31;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4780, qword_224DB77A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DBB860;
  *(inited + 32) = 0xD000000000000026;
  *(inited + 40) = 0x8000000224DCB490;
  v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v34 = sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
  *(inited + 48) = v33;
  *(inited + 72) = v34;
  *(inited + 80) = 0xD000000000000031;
  *(inited + 88) = 0x8000000224DCB4C0;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  *(inited + 120) = v34;
  *(inited + 128) = 0xD000000000000028;
  *(inited + 136) = 0x8000000224DCB500;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  *(inited + 168) = v34;
  *(inited + 176) = 0xD00000000000002ALL;
  *(inited + 184) = 0x8000000224DCB530;
  v35 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  *(inited + 216) = v34;
  *(inited + 192) = v35;
  sub_224DA0AC0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F58E0, &unk_224DB6450);
  swift_arrayDestroy();
  v36 = sub_224DAECC8();

  v37 = v69;
  [v69 registerDefaults_];

  *(a4 + 16) = v37;
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v69 = v37;
  sub_224DAB828();
  v87[0] = MEMORY[0x277D84F90];
  sub_224C41198(&qword_281350A88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  v68 = MEMORY[0x277D83970];
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  (*(v66 + 104))(v65, *MEMORY[0x277D85268], v67);
  *(a4 + 40) = sub_224DAF418();
  v38 = v71;
  *(a4 + 64) = v71;
  sub_224A3317C(v89, a4 + 96);
  v39 = v63;
  v87[0] = *(v63 + qword_28135CA00);
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = 768;
  v71 = v38;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5390, &unk_224DB6000);
  sub_224A33088(&qword_281350FA0, &unk_27D6F5390, &unk_224DB6000);
  v41 = v70;
  sub_224DAB438();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  sub_224A33088(&qword_281351358, &qword_27D6F4218, &qword_224DB5FF0);
  v42 = v72;
  v43 = v74;
  sub_224DAB3E8();
  (*(v76 + 8))(v41, v43);
  sub_224A33088(&qword_281351380, &unk_27D6F58D0, &qword_224DB5FF8);
  v44 = v73;
  v45 = sub_224DAB3A8();
  (*(v75 + 8))(v42, v44);
  v87[0] = v45;
  v88 = *(a4 + 40);
  v46 = v88;
  v47 = sub_224DAF358();
  v48 = v78;
  (*(*(v47 - 8) + 56))(v78, 1, 1, v47);
  v49 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80);
  sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78);
  v50 = v77;
  sub_224DAB448();
  sub_224A3311C(v48, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_2813512B0, &qword_27D6F5DB0, &unk_224DB35E0);

  v51 = v79;
  v52 = sub_224DAB488();

  (*(v80 + 8))(v50, v51);
  v53 = *(a4 + 32);
  *(a4 + 32) = v52;

  v54 = *(a4 + 40);
  v62 = a4;
  v55 = swift_allocObject();
  swift_weakInit();
  v56 = v54;

  v87[4] = sub_224C4E1A8;
  v87[5] = v55;
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 1107296256;
  v87[2] = sub_224A39F40;
  v87[3] = &block_descriptor_309_0;
  v57 = _Block_copy(v87);

  v58 = v86;
  sub_224DAB7E8();
  v88 = MEMORY[0x277D84F90];
  sub_224C41198(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  v60 = v83;
  v59 = v84;
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v58, v60, v57);
  _Block_release(v57);

  (*(v85 + 8))(v60, v59);
  (*(v81 + 8))(v58, v82);

  __swift_destroy_boxed_opaque_existential_1(v89);
  return v62;
}

uint64_t sub_224C48F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAF3C8();
  v17 = *(v4 - 8);
  v18 = v4;
  v5 = *(v17 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAF318();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_224DAB848();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v21 = sub_224DAC3C8();
  v22 = MEMORY[0x277CF9A38];
  *&v20 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5840, &qword_224DBBD70);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(a2 + 56) = sub_224DAB358();
  v16[1] = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224DAB7F8();
  v19 = MEMORY[0x277D84F90];
  sub_224C41198(&qword_281350A88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  (*(v17 + 104))(v7, *MEMORY[0x277D85268], v18);
  *(a2 + 64) = sub_224DAF418();
  sub_224A36F98(&v20, a2 + 16);
  return a2;
}

void *sub_224C49218(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v35 = sub_224DAF3C8();
  v34 = *(v35 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v35);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAF318();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = sub_224DAB848();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v40[3] = sub_224DAC3C8();
  v40[4] = MEMORY[0x277CF9A38];
  v40[0] = a1;
  v39[3] = type metadata accessor for ProcessMonitor();
  v39[4] = &off_28382AA58;
  v39[0] = a2;
  v38[3] = type metadata accessor for LocationService(0);
  v38[4] = &off_2838352C0;
  v38[0] = a3;
  a4[18] = MEMORY[0x277D84FA0];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5840, &qword_224DBBD70);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v36 = a1;
  a4[19] = sub_224DAB358();
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224DAB7F8();
  v37[0] = MEMORY[0x277D84F90];
  sub_224C41198(&qword_281350A88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  (*(v34 + 104))(v33, *MEMORY[0x277D85268], v35);
  a4[20] = sub_224DAF418();
  sub_224A3317C(v38, (a4 + 8));
  sub_224A3317C(v40, (a4 + 3));
  sub_224A3317C(v39, (a4 + 13));
  v17 = type metadata accessor for _CTNetworkService();
  v18 = swift_allocObject();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v18[2] = sub_224DAB358();
  v18[3] = 0;
  type metadata accessor for UnfairLock();
  v22 = swift_allocObject();
  v23 = swift_slowAlloc();
  v23->_os_unfair_lock_opaque = 0;
  *(v22 + 16) = v23;
  v18[4] = v22;

  os_unfair_lock_lock(v23);
  sub_224AED9F0();
  os_unfair_lock_unlock(*(v22 + 16));

  v37[3] = v17;
  v37[4] = &off_283829890;
  v37[0] = v18;
  type metadata accessor for NetworkAuthorizationMonitor();
  v24 = swift_allocObject();
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v37, v17);
  v26 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = sub_224C4970C(v36, *v28, v24);
  __swift_destroy_boxed_opaque_existential_1(v40);
  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(v39);
  __swift_destroy_boxed_opaque_existential_1(v37);
  a4[2] = v30;
  return a4;
}

uint64_t sub_224C4970C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = sub_224DAC3C8();
  v18 = MEMORY[0x277CF9A38];
  *&v16 = a1;
  v14 = type metadata accessor for _CTNetworkService();
  v15 = &off_283829890;
  *&v13 = a2;
  *(a3 + 64) = MEMORY[0x277D84FA0];
  *(a3 + 112) = MEMORY[0x277D84F98];
  *(a3 + 120) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F58F0, &qword_224DBDC20);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(a3 + 128) = sub_224DAB358();
  v9 = sub_224DAEDE8();
  v10 = [objc_opt_self() serial];
  v11 = BSDispatchQueueCreate();

  *(a3 + 16) = v11;
  sub_224A36F98(&v13, a3 + 72);
  sub_224A36F98(&v16, a3 + 24);
  return a3;
}

char *sub_224C4983C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v92 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51B0, &unk_224DB4030);
  v14 = *(v13 - 8);
  v85 = v13;
  v86 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v84 = v78 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v82 = v78 - v19;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5DB0, &unk_224DB35E0);
  v93 = *(v91 - 8);
  v20 = *(v93 + 64);
  MEMORY[0x28223BE20](v91);
  v83 = v78 - v21;
  v22 = sub_224DAF3C8();
  v89 = *(v22 - 8);
  v90 = v22;
  v23 = *(v89 + 64);
  MEMORY[0x28223BE20](v22);
  v88 = v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_224DAF318();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v87 = v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_224DAB848();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v104[3] = type metadata accessor for WidgetHostService();
  v104[4] = sub_224C41198(&qword_28135A7C8, type metadata accessor for WidgetHostService);
  v104[0] = a1;
  v103[3] = type metadata accessor for ControlHostService();
  v103[4] = sub_224C41198(&qword_28135A010, type metadata accessor for ControlHostService);
  v103[0] = a2;
  v102[3] = sub_224DAC3C8();
  v102[4] = MEMORY[0x277CF9A38];
  v102[0] = a3;
  v101[3] = type metadata accessor for KeepAliveAssertionProvider();
  v101[4] = &off_283832210;
  v101[0] = a4;
  v100[3] = type metadata accessor for NowPlayingObserver();
  v100[4] = &off_283830C60;
  v100[0] = a6;
  v30 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__queue;
  v31 = objc_opt_self();
  v32 = sub_224DAEDE8();
  v33 = [v31 serialQueueTargetingSharedWorkloop_];

  *&a7[v30] = v33;
  v81 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__calloutQueue;
  v34 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224DAB818();
  v96[0] = MEMORY[0x277D84F90];
  sub_224C41198(&qword_281350A88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  (*(v89 + 104))(v88, *MEMORY[0x277D85268], v90);
  v35 = v34;
  *&a7[v81] = sub_224DAF418();
  v36 = MEMORY[0x277D84FA0];
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__subscriptions] = MEMORY[0x277D84FA0];
  v37 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock;
  type metadata accessor for UnfairLock();
  v38 = swift_allocObject();
  v39 = swift_slowAlloc();
  *v39 = 0;
  *(v38 + 16) = v39;
  *&a7[v37] = v38;
  v40 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_nowPlayingApp;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  (*(*(v41 - 8) + 56))(&a7[v40], 1, 1, v41);
  v42 = &a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_processMonitor];
  *(v42 + 4) = 0;
  *v42 = 0u;
  *(v42 + 1) = 0u;
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_knownExtensionBundleIdentifiers] = v36;
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_knownApplicationBundleIdentifiers] = v36;
  v43 = MEMORY[0x277D84F98];
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersToPIDs] = MEMORY[0x277D84F98];
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_processHandlesToObserve] = v43;
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithVisibleScenes] = v36;
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithSessionExemptions] = v43;
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_bundleIdentifiersToSuspensionObservers] = v43;
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_observers] = MEMORY[0x277D84F90];
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_formerlyVisibleApplicationBundleIdentifiers] = v43;
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_formerlyVisibleApplicationsGraceExpirationTimer] = 0;
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_sceneBackedActivityBundleIdentifiers] = v36;
  *&a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_activityCenterSubscription] = 0;
  v44 = &a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_activityCenter];
  *(v44 + 4) = 0;
  *v44 = 0u;
  *(v44 + 1) = 0u;
  sub_224A3317C(v104, &a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__widgetHostService]);
  sub_224A3317C(v103, &a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__controlHostService]);
  sub_224A3317C(v102, &a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__extensionManager]);
  sub_224A3317C(v101, &a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__keepAliveAssertionProvider]);
  v45 = &a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__carouselSessionService];
  *v45 = v92;
  *(v45 + 1) = &off_28382D640;
  sub_224A3317C(v100, &a7[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__nowPlayingObserver]);
  v46 = type metadata accessor for ProcessMonitor();
  v99.receiver = a7;
  v99.super_class = v46;

  v47 = objc_msgSendSuper2(&v99, sel_init);
  sub_224A3317C(v47 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__widgetHostService, v96);
  v48 = v97;
  v49 = v98;
  __swift_project_boxed_opaque_existential_1(v96, v97);
  v50 = *(v49 + 8);
  v51 = *(v50 + 40);
  v52 = v47;
  v95 = v51(768, v48, v50);
  v79 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__queue;
  v94 = *&v52[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__queue];
  v53 = v94;
  v89 = sub_224DAF358();
  v54 = *(v89 - 8);
  v88 = *(v54 + 56);
  v90 = v54 + 56;
  v55 = v82;
  (v88)(v82, 1, 1, v89);
  v56 = v53;
  v78[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  v81 = MEMORY[0x277CBCD90];
  v78[3] = sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80);
  v87 = sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78);
  v57 = v83;
  v78[2] = v35;
  sub_224DAB448();
  v58 = v55;
  sub_224A3311C(v55, &qword_27D6F5090, &qword_224DB5C30);

  __swift_destroy_boxed_opaque_existential_1(v96);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = MEMORY[0x277CBCD60];
  v78[1] = sub_224A33088(&qword_2813512B0, &qword_27D6F5DB0, &unk_224DB35E0);
  v59 = v91;
  sub_224DAB488();

  v60 = *(v93 + 8);
  v93 += 8;
  v78[0] = v60;
  v60(v57, v59);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  sub_224A3317C(&v52[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__controlHostService], v96);
  v61 = v97;
  v62 = v98;
  __swift_project_boxed_opaque_existential_1(v96, v97);
  v95 = (*(*(v62 + 8) + 40))(768, v61);
  v63 = v79;
  v94 = *&v52[v79];
  v64 = v94;
  (v88)(v58, 1, 1, v89);
  v65 = v64;
  sub_224DAB448();
  sub_224A3311C(v58, &qword_27D6F5090, &qword_224DB5C30);

  __swift_destroy_boxed_opaque_existential_1(v96);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = v91;
  sub_224DAB488();

  (v78[0])(v57, v66);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  sub_224A3317C(&v52[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__extensionManager], v96);
  __swift_project_boxed_opaque_existential_1(v96, v97);
  v95 = sub_224DAC6B8();
  v94 = *&v52[v63];
  v67 = v94;
  (v88)(v58, 1, 1, v89);
  v68 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
  sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810);
  v69 = v84;
  sub_224DAB448();
  sub_224A3311C(v58, &qword_27D6F5090, &qword_224DB5C30);

  __swift_destroy_boxed_opaque_existential_1(v96);
  v70 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71 = swift_allocObject();
  *(v71 + 16) = sub_224C4E2B8;
  *(v71 + 24) = v70;
  sub_224A33088(&unk_2813511F0, &qword_27D6F51B0, &unk_224DB4030);
  v72 = v85;
  sub_224DAB488();

  (*(v86 + 8))(v69, v72);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  v73 = *__swift_project_boxed_opaque_existential_1(&v52[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__nowPlayingObserver], *&v52[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__nowPlayingObserver + 24]);
  v96[0] = sub_224C6C610();
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v75 = swift_allocObject();
  *(v75 + 16) = sub_224C4E2C0;
  *(v75 + 24) = v74;
  sub_224DAB488();

  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  v76 = *&v52[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock];
  os_unfair_lock_lock(*(v76 + 16));
  sub_224B47470(v52);

  os_unfair_lock_unlock(*(v76 + 16));
  sub_224A6AF54();

  __swift_destroy_boxed_opaque_existential_1(v101);
  __swift_destroy_boxed_opaque_existential_1(v102);
  __swift_destroy_boxed_opaque_existential_1(v103);
  __swift_destroy_boxed_opaque_existential_1(v104);
  __swift_destroy_boxed_opaque_existential_1(v100);
  return v52;
}

uint64_t sub_224C4A6FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAD1C8();
  v15 = MEMORY[0x277CF9C78];
  v16 = MEMORY[0x277CF9C80];
  v14 = v4;
  *&v13 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5960, &unk_224DB97B0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(a2 + 16) = sub_224DAB358();
  *(a2 + 24) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4AB8, &unk_224DB97C0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(a2 + 32) = sub_224DAB358();
  *(a2 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5970, qword_224DBBE18);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 16) = MEMORY[0x277D84F98];
  *(a2 + 96) = v11;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0;
  sub_224AB1DE0(&v13, (a2 + 48));
  return a2;
}

uint64_t sub_224C4A7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v30 = v27 - v12;
  v13 = sub_224DAF3C8();
  v28 = *(v13 - 8);
  v29 = v13;
  v14 = *(v28 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DAF318();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v19 = sub_224DAB848();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_224DAAD68();
  v38[4] = MEMORY[0x277D466C0];
  v38[3] = v21;
  v38[0] = a1;
  v37[4] = MEMORY[0x277D466C8];
  v37[5] = MEMORY[0x277D466D0];
  v37[3] = v21;
  v37[0] = a2;
  v36[3] = v21;
  v36[4] = MEMORY[0x277D46698];
  v36[0] = a3;
  v22 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v27[0] = "ReplicationService";
  v27[1] = v22;
  sub_224DAB7E8();
  *&v33[0] = MEMORY[0x277D84F90];
  sub_224C41198(&qword_281350A88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  (*(v28 + 104))(v16, *MEMORY[0x277D85260], v29);
  *(a4 + 16) = sub_224DAF418();
  *(a4 + 152) = 0u;
  *(a4 + 168) = 0u;
  *(a4 + 184) = 0;
  sub_224A3317C(v38, a4 + 24);
  sub_224B44674(v37, a4 + 64);
  sub_224A3317C(v36, a4 + 112);
  v23 = sub_224DAF128();
  v24 = v30;
  (*(*(v23 - 8) + 56))(v30, 1, 1, v23);
  sub_224A3317C(v38, v35);
  sub_224A3317C(v36, v34);
  sub_224B44674(v37, v33);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_224A36F98(v35, v25 + 32);
  sub_224A36F98(v34, v25 + 72);
  sub_224AB1DE0(v33, (v25 + 112));
  *(v25 + 160) = a4;

  sub_224D8E744(0, 0, v24, v32, v25);

  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return a4;
}

void *sub_224C4AC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v52 = sub_224DAF3C8();
  v47 = *(v52 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v52);
  v46 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAF318();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v45[2] = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAB848();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_224DACE88();
  v61[3] = v16;
  v61[4] = MEMORY[0x277CF9C40];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
  (*(*(v16 - 8) + 32))(boxed_opaque_existential_1, a3, v16);
  v18 = sub_224DAAD68();
  v60[4] = MEMORY[0x277D466B0];
  v60[5] = MEMORY[0x277D46690];
  v60[6] = MEMORY[0x277D466B8];
  v60[3] = v18;
  v60[0] = a1;
  v19 = type metadata accessor for MobileActivityService();
  v59[3] = v19;
  v59[4] = &off_28382E400;
  v59[0] = a2;
  v20 = type metadata accessor for RemoteActivitySubscriptionCache();
  v58[4] = &off_283831828;
  v58[5] = &off_283831818;
  v58[3] = v20;
  v58[0] = a4;
  type metadata accessor for RemoteActivityArchiveReplicator();
  v21 = swift_allocObject();
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v59, v19);
  v50 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v51 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = (v45 - v51);
  v26 = *(v25 + 16);
  v48 = v25 + 16;
  v49 = v26;
  v26(v45 - v51);
  v27 = *v24;
  v57[3] = v19;
  v57[4] = &off_28382E400;
  v57[0] = v27;
  v45[1] = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224DAB7E8();
  v55[0] = MEMORY[0x277D84F90];
  sub_224C41198(&qword_281350A88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  (*(v47 + 104))(v46, *MEMORY[0x277D85260], v52);
  v21[3] = sub_224DAF418();
  v21[16] = MEMORY[0x277D84FA0];
  v21[33] = MEMORY[0x277D84F98];
  v28 = sub_224DAA968();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v21[34] = sub_224DAA958();
  sub_224BBF304(v60, (v21 + 4));
  sub_224A3317C(v57, (v21 + 11));
  sub_224A3317C(v61, (v21 + 28));
  sub_224B44674(v58, (v21 + 17));
  v21[26] = sub_224DADEF8();
  v21[27] = sub_224C41198(&unk_281350C90, MEMORY[0x277CF9E50]);
  v21[23] = v53;
  sub_224A3317C(v57, v55);
  v31 = v56;
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
  v33 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v35 = (v45 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  v37 = *v35;
  v54[3] = v19;
  v54[4] = &off_28382E400;
  v54[0] = v37;
  type metadata accessor for RemoteActivityArchiveBudgetScheduler();
  v38 = swift_allocObject();
  v39 = __swift_mutable_project_boxed_opaque_existential_1(v54, v19);
  MEMORY[0x28223BE20](v39);
  v40 = (v45 - v51);
  v49(v45 - v51);
  v41 = *v40;

  v43 = sub_224C414D4(v42, v41, v38);
  __swift_destroy_boxed_opaque_existential_1(v61);
  __swift_destroy_boxed_opaque_existential_1(v58);
  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v57);
  __swift_destroy_boxed_opaque_existential_1(v54);
  __swift_destroy_boxed_opaque_existential_1(v55);
  v21[2] = v43;
  __swift_destroy_boxed_opaque_existential_1(v59);
  return v21;
}

uint64_t sub_224C4B280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v41 = sub_224DAD7D8();
  v40 = *(v41 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](v41);
  v39 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_224DAF3C8();
  v37 = *(v38 - 8);
  v12 = *(v37 + 64);
  MEMORY[0x28223BE20](v38);
  v36 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAF318();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v35 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DAB848();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v46[3] = sub_224A3B79C(0, &qword_281350AE8, 0x277D02938);
  v46[4] = &off_2838373A0;
  v46[0] = a4;
  v45[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F55A0, &qword_224DBBC00);
  v45[4] = sub_224A33088(&qword_28135B430, &qword_27D6F55A0, &qword_224DBBC00);
  v45[0] = a1;
  v44[3] = sub_224DAAD68();
  v44[4] = MEMORY[0x277D466D0];
  v44[0] = a2;
  v43[3] = type metadata accessor for MobileTimelineService();
  v43[4] = sub_224C41198(&unk_2813580E8, type metadata accessor for MobileTimelineService);
  v43[0] = a3;
  v19 = type metadata accessor for StalenessService();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5758, &qword_224DC38E0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_224DAB358();
  v27 = MEMORY[0x277D84F98];
  *(v22 + 24) = v26;
  *(v22 + 32) = v27;
  *(v22 + 40) = v27;
  v28 = sub_224DAA968();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *(v22 + 48) = sub_224DAA958();
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224DAB818();
  v42[0] = MEMORY[0x277D84F90];
  sub_224C41198(&qword_281350A88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  (*(v37 + 104))(v36, *MEMORY[0x277D85268], v38);
  *(v22 + 56) = sub_224DAF418();
  *(v22 + 152) = MEMORY[0x277D84FA0];
  (*(v40 + 104))(v39, *MEMORY[0x277CF9D38], v41);
  sub_224DAD838();
  *(v22 + OBJC_IVAR____TtC10ChronoCore16StalenessService____lazy_storage___diagnosticsDiscovery) = 0;
  *(v22 + OBJC_IVAR____TtC10ChronoCore16StalenessService____lazy_storage___diagnosticsQueue) = 0;
  sub_224A3317C(v45, v22 + 64);
  sub_224A3317C(v44, v22 + 104);
  *(v22 + 144) = a5;
  sub_224A3317C(v43, v22 + 200);
  sub_224A3317C(v46, v22 + 160);
  v42[4] = &off_283837468;
  v42[3] = v19;
  v42[0] = v22;
  swift_beginAccess();
  v31 = *(v22 + 88);
  v32 = *(v22 + 96);
  __swift_mutable_project_boxed_opaque_existential_1(v22 + 64, v31);
  v33 = *(v32 + 24);

  v33(v42, v31, v32);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v46);
  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return v22;
}

uint64_t sub_224C4B868()
{
  v0 = sub_224DA9688();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v4 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v38 = v37 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v37 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v37 - v14;
  if (qword_281352040 != -1)
  {
    swift_once();
  }

  v16 = off_281352050;

  v17 = sub_224D42244(1, v16);

  if ((v17 & 1) == 0)
  {
    v18 = off_281352050;

    v19 = sub_224D42244(2, v18);

    if ((v19 & 1) == 0)
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v33 = sub_224DAB258();
      __swift_project_value_buffer(v33, qword_281365120);
      v22 = sub_224DAB228();
      v23 = sub_224DAF2A8();
      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_16;
      }

      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "Replicator is not enabled on this device";
      goto LABEL_15;
    }
  }

  sub_224AEFFB4(v15);
  v20 = (*(v1 + 48))(v15, 1, v0);
  sub_224A3311C(v15, &unk_27D6F4680, &unk_224DB4610);
  if (v20 != 1)
  {
    sub_224DA9CA8();
    sub_224DA9608();
    v37[1] = "liveControlReplicator";
    v26 = *(v1 + 16);
    v26(v38, v9, v0);
    v26(v4, v9, v0);
    v27 = (*(v1 + 80) + 16) & ~*(v1 + 80);
    v28 = swift_allocObject();
    (*(v1 + 32))(v28 + v27, v4, v0);
    v29 = sub_224DAAD68();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v32 = sub_224DAAD58();
    v34 = *(v1 + 8);
    v35 = v32;
    v34(v9, v0);
    v34(v11, v0);
    return v35;
  }

  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v21 = sub_224DAB258();
  __swift_project_value_buffer(v21, qword_281365120);
  v22 = sub_224DAB228();
  v23 = sub_224DAF288();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "Replicator temporary URL is not available";
LABEL_15:
    _os_log_impl(&dword_224A2F000, v22, v23, v25, v24, 2u);
    MEMORY[0x22AA5EED0](v24, -1, -1);
  }

LABEL_16:

  return 0;
}

uint64_t sub_224C4BEA0()
{
  BSDispatchQueueAssertMain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5858, &qword_224DBBD80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_224DB8BC0;
  if (qword_281354BC8 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = sub_224AD3BE4();
  if (qword_281352C80 != -1)
  {
    swift_once();
  }

  v2 = *(qword_2813651C8 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A33088(&qword_281350EE0, &qword_27D6F4A10, &unk_224DB4000);
  *(v0 + 40) = sub_224DAB3A8();
  if (qword_281352988 != -1)
  {
    swift_once();
  }

  v3 = *(qword_2813651B8 + 16);
  *(v0 + 48) = sub_224DAB3A8();
  return v0;
}

uint64_t sub_224C4C038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v60 = &v60 - v7;
  v8 = sub_224DAB258();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v60 - v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F54B8, &qword_224DBBB90);
  v83 = sub_224A33088(&qword_281355600, &qword_27D6F54B8, &qword_224DBBB90);
  *&v81 = a1;
  if (qword_281351590 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_281364EE0);
  v61 = v9;
  v17 = *(v9 + 16);
  v17(v15, v16, v8);
  v18 = v82;
  v19 = v83;
  v20 = __swift_project_boxed_opaque_existential_1(&v81, v82);
  v79 = v18;
  v80 = *(v19 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v77);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, v20, v18);
  v76 = 0;
  memset(v75, 0, sizeof(v75));
  v64 = a2;
  sub_224A3796C(a2, v74, &unk_27D6F53A0, &qword_224DC1A80);
  v22 = type metadata accessor for WidgetHostService();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v62 = v22;
  v25 = swift_allocObject();
  v67 = v15;
  v26 = qword_28135A7E0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5390, &unk_224DB6000);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  *(v25 + v26) = sub_224DAB358();
  v30 = v25 + qword_28135A7E8;
  *(v30 + 32) = 0;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  v17(v13, v67, v8);
  v66 = v13;
  if (v79)
  {
    sub_224A3317C(&v77, &v68);
  }

  else
  {
    v68 = v77;
    v69 = v78;
    v70 = v80;
  }

  sub_224A3796C(v75, v73, &qword_27D6F4200, &unk_224DB5FC0);
  sub_224A3796C(v74, v72, &unk_27D6F53A0, &qword_224DC1A80);
  v31 = qword_28135CA10;
  v32 = *(v27 + 48);
  v33 = *(v27 + 52);
  swift_allocObject();
  *(v25 + v31) = sub_224DAB358();
  v34 = qword_28135CA00;
  v35 = *(v27 + 48);
  v36 = *(v27 + 52);
  swift_allocObject();
  *(v25 + v34) = sub_224DAB358();
  v37 = qword_28135C9F8;
  v38 = *(v27 + 48);
  v39 = *(v27 + 52);
  swift_allocObject();
  *(v25 + v37) = sub_224DAB358();
  v40 = qword_28135CA08;
  v41 = *(v27 + 48);
  v42 = *(v27 + 52);
  swift_allocObject();
  *(v25 + v40) = sub_224DAB358();
  v43 = qword_28135C9F0;
  type metadata accessor for UnfairLock();
  v44 = swift_allocObject();
  v45 = swift_slowAlloc();
  *v45 = 0;
  *(v44 + 16) = v45;
  *(v25 + v43) = v44;
  *(v25 + qword_28135CA28) = MEMORY[0x277D84F98];
  *(v25 + qword_28135CA40) = 0;
  *(v25 + qword_28135CA20) = 2000000000;
  v17((v25 + qword_281365438), v66, v8);
  v46 = v25 + qword_28135CA30;
  v63 = v8;
  v47 = v61;
  if (*(&v69 + 1))
  {
    sub_224A3317C(&v68, v46);
  }

  else
  {
    v48 = v69;
    *v46 = v68;
    *(v46 + 16) = v48;
    *(v46 + 32) = v70;
  }

  sub_224A3796C(v73, v25 + qword_28135CA38, &qword_27D6F4200, &unk_224DB5FC0);
  v49 = sub_224A3796C(v72, v25 + qword_28135CA18, &unk_27D6F53A0, &qword_224DC1A80);
  MEMORY[0x28223BE20](v49);
  *(&v60 - 2) = &v68;
  *(&v60 - 1) = v25;
  sub_224C2A634(sub_224C4E558);
  sub_224A3311C(v72, &unk_27D6F53A0, &qword_224DC1A80);
  sub_224A3311C(v73, &qword_27D6F4200, &unk_224DB5FC0);
  v50 = *(v47 + 8);
  v51 = v63;
  v50(v66, v63);
  if (*(&v69 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v68);
  }

  sub_224A68420(&v68);
  v52 = v64;
  if (v71)
  {
    if (qword_281356838 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for HostDescriptorPredicate();
    v54 = __swift_project_value_buffer(v53, qword_281365218);
    v55 = v60;
    sub_224C4E30C(v54, v60, type metadata accessor for HostDescriptorPredicate);
    (*(*(v53 - 8) + 56))(v55, 0, 1, v53);
    v56 = sub_224A6BAF8(v55);
    sub_224A3311C(v55, &qword_27D6F46D0, &unk_224DBD6D0);
    sub_224A699F0(&v68);
    if (v56)
    {
      v57 = v25 + qword_28135A7E8;
      swift_beginAccess();
      if (*(v57 + 24))
      {
        sub_224A3317C(v57, &v68);
        swift_endAccess();
        __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
        sub_224DADE18();

        sub_224A3311C(v74, &unk_27D6F53A0, &qword_224DC1A80);
        sub_224A3311C(v75, &qword_27D6F4200, &unk_224DB5FC0);
        if (v79)
        {
          __swift_destroy_boxed_opaque_existential_1(&v77);
        }

        v50(v67, v51);
        __swift_destroy_boxed_opaque_existential_1(&v68);
      }

      else
      {
        sub_224A3311C(v74, &unk_27D6F53A0, &qword_224DC1A80);
        sub_224A3311C(v75, &qword_27D6F4200, &unk_224DB5FC0);
        if (v79)
        {
          __swift_destroy_boxed_opaque_existential_1(&v77);
        }

        v50(v67, v51);
        swift_endAccess();
      }
    }

    else
    {

      sub_224A3311C(v74, &unk_27D6F53A0, &qword_224DC1A80);
      sub_224A3311C(v75, &qword_27D6F4200, &unk_224DB5FC0);
      if (v79)
      {
        __swift_destroy_boxed_opaque_existential_1(&v77);
      }

      v50(v67, v51);
    }
  }

  else
  {

    sub_224A3311C(v74, &unk_27D6F53A0, &qword_224DC1A80);
    sub_224A3311C(v75, &qword_27D6F4200, &unk_224DB5FC0);
    if (v79)
    {
      __swift_destroy_boxed_opaque_existential_1(&v77);
    }

    v50(v67, v51);
    sub_224A3311C(&v68, &qword_27D6F50E0, &qword_224DB41A0);
  }

  *(&v69 + 1) = v62;
  v70 = sub_224C41198(&qword_28135A7C8, type metadata accessor for WidgetHostService);
  *&v68 = v25;
  sub_224A3311C(v52, &unk_27D6F53A0, &qword_224DC1A80);
  v58 = v65;
  sub_224A36F98(&v68, v65 + 16);
  sub_224A36F98(&v81, v58 + 56);
  return v58;
}

uint64_t *sub_224C4C988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v37 = *a7;
  v14 = sub_224DAB188();
  v15 = *(v14 - 8);
  v36 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v35 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45[3] = sub_224DAD1C8();
  v45[4] = MEMORY[0x277CF9C78];
  v45[0] = a2;
  v44[3] = type metadata accessor for WidgetHostService();
  v44[4] = sub_224C41198(&qword_28135A7C8, type metadata accessor for WidgetHostService);
  v44[0] = a3;
  v43[3] = type metadata accessor for PreviewConfigurationService();
  v43[4] = sub_224C41198(&qword_281354658, type metadata accessor for PreviewConfigurationService);
  v43[0] = a4;
  v17 = sub_224DAAD68();
  v42[4] = MEMORY[0x277D466E0];
  v42[5] = MEMORY[0x277D466A8];
  v42[3] = v17;
  v42[0] = a5;
  v34 = *(v15 + 16);
  v34(a7 + OBJC_IVAR____TtC10ChronoCore26ReplicatorMigrationService_clientDescriptor, a1, v14);
  v18 = [objc_allocWithZone(sub_224DAB168()) init];
  a7[2] = v18;
  v19 = v18;

  sub_224DAB138();

  v20 = a7[2];
  sub_224A3317C(v45, v41);
  sub_224A3317C(v44, v40);
  sub_224A3317C(v43, v39);
  sub_224B44674(v42, v38);
  v21 = swift_allocObject();
  sub_224A36F98(v41, v21 + 16);
  sub_224A36F98(v40, v21 + 56);
  sub_224A36F98(v39, v21 + 96);
  sub_224AB1DE0(v38, (v21 + 136));
  v22 = v37;
  *(v21 + 184) = a6;
  *(v21 + 192) = v22;

  sub_224DAB128();
  v23 = a7[2];

  v24 = v23;
  sub_224DAB118();

  v25 = a7[2];
  v26 = v35;
  v34(v35, a1, v14);
  v27 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v28 = swift_allocObject();
  (*(v15 + 32))(v28 + v27, v26, v14);
  sub_224DAB148();
  v29 = a7[2];
  v30 = swift_allocObject();
  v31 = v37;
  *(v30 + 16) = a6;
  *(v30 + 24) = v31;

  sub_224DAB108();
  (*(v15 + 8))(a1, v14);
  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return a7;
}

uint64_t sub_224C4CDF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACED1C;

  return sub_224CFA67C(a1, v4, v5, v6);
}

unint64_t sub_224C4CFF0()
{
  result = qword_2813574B0;
  if (!qword_2813574B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813574B0);
  }

  return result;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t sub_224C4D398(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_224C4D51C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[20];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C245AC(a1, v4, v5, (v1 + 4), (v1 + 9), (v1 + 14), v6);
}

uint64_t objectdestroy_139Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v2 = v0[20];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_224C4D63C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[20];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C254FC(a1, v4, v5, (v1 + 4), (v1 + 9), (v1 + 14), v6);
}

uint64_t sub_224C4D7CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_224D12DB4();
}

uint64_t sub_224C4D7E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[20];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C2170C(a1, v4, v5, (v1 + 4), (v1 + 9), (v1 + 14), v6);
}

uint64_t sub_224C4D8B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[20];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C22780(a1, v4, v5, (v1 + 4), (v1 + 9), (v1 + 14), v6);
}

uint64_t objectdestroy_175Tm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[13];

  v2 = v0[14];

  v3 = v0[15];

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);
  v4 = v0[27];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 30);
  __swift_destroy_boxed_opaque_existential_1(v0 + 35);
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  __swift_destroy_boxed_opaque_existential_1(v0 + 45);
  __swift_destroy_boxed_opaque_existential_1(v0 + 54);
  __swift_destroy_boxed_opaque_existential_1(v0 + 59);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 69);
  __swift_destroy_boxed_opaque_existential_1(v0 + 75);
  __swift_destroy_boxed_opaque_existential_1(v0 + 82);
  v5 = v0[87];
  swift_unknownObjectRelease();
  v6 = v0[89];
  swift_unknownObjectRelease();
  v7 = v0[91];

  if (v0[95])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 92);
  }

  if (v0[100])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 97);
  }

  if (v0[105])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 102);
  }

  return MEMORY[0x2821FE8E8](v0, 856, 7);
}

uint64_t sub_224C4DC78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 80);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 80) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_226Tm(void (*a1)(uint64_t), uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(v2 + 2);
  v5 = v2[13];

  v6 = v2[14];

  v7 = v2[15];

  __swift_destroy_boxed_opaque_existential_1(v2 + 16);
  __swift_destroy_boxed_opaque_existential_1(v2 + 21);
  v8 = v2[27];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v2 + 30);
  __swift_destroy_boxed_opaque_existential_1(v2 + 35);
  __swift_destroy_boxed_opaque_existential_1(v2 + 40);
  __swift_destroy_boxed_opaque_existential_1(v2 + 45);
  __swift_destroy_boxed_opaque_existential_1(v2 + 54);
  __swift_destroy_boxed_opaque_existential_1(v2 + 59);
  __swift_destroy_boxed_opaque_existential_1(v2 + 64);
  __swift_destroy_boxed_opaque_existential_1(v2 + 69);
  __swift_destroy_boxed_opaque_existential_1(v2 + 75);
  __swift_destroy_boxed_opaque_existential_1(v2 + 82);
  v9 = v2[87];
  swift_unknownObjectRelease();
  v10 = v2[89];
  swift_unknownObjectRelease();
  v11 = v2[91];

  if (v2[95])
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 92);
  }

  if (v2[100])
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 97);
  }

  if (v2[105])
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 102);
  }

  a1(v2[107]);

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

unint64_t sub_224C4DE90()
{
  result = qword_27D6F56C8;
  if (!qword_27D6F56C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F56C8);
  }

  return result;
}

unint64_t sub_224C4DEE4()
{
  result = qword_27D6F5700;
  if (!qword_27D6F5700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5700);
  }

  return result;
}

unint64_t sub_224C4DF38()
{
  result = qword_27D6F5708;
  if (!qword_27D6F5708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5708);
  }

  return result;
}

uint64_t sub_224C4DFAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[20];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACFF60;

  return sub_224C23694(a1, v4, v5, (v1 + 4), (v1 + 9), (v1 + 14), v6);
}

uint64_t sub_224C4E0D4(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5828, &qword_224DBBD58);
  return v4(v5, &a1[*(v6 + 48)]);
}

void sub_224C4E12C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_224BD070C(a1);
}

uint64_t objectdestroy_152Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

void sub_224C4E240(void *a1)
{
  v2 = *(*(sub_224DA9688() - 8) + 80);

  sub_224C40C80(a1);
}

uint64_t sub_224C4E30C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224C4E374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224C4E3D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_224C4E454()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v1 + qword_28135C9F0);
  os_unfair_lock_lock(*(v4 + 16));
  v2();
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_224C4E718(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC10ChronoCore38ConcreteManagedConfigurationPrimitives_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_224C4E7FC()
{
  if (qword_281351508 != -1)
  {
    swift_once();
  }

  v0 = sub_224DAB258();
  __swift_project_value_buffer(v0, qword_281364E68);
  v1 = sub_224DAB228();
  v2 = sub_224DAF2A8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_224A2F000, v1, v2, "Received Profile Restrictions Changed Notification", v3, 2u);
    MEMORY[0x22AA5EED0](v3, -1, -1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_224D164B4();

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_224C4E918()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result[5];
    v2 = result[6];
    v3 = result;
    __swift_project_boxed_opaque_existential_1(result + 2, v1);
    sub_224C4E9AC(v1, v2);
    v4 = v3[9];
    sub_224DAB378();
  }

  return result;
}

void sub_224C4E9AC(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))(v39, 256, a1);
  sub_224C4EE10(v39, v36);
  if (!*(&v37 + 1))
  {
    sub_224C4EE80(v39);
    sub_224C4EE80(v36);
    return;
  }

  v38[1] = v36[1];
  v38[2] = v37;
  v38[0] = v36[0];
  if (!*(*(&v37 + 1) + 16))
  {
LABEL_38:
    sub_224C4EE80(v39);
    sub_224A699F0(v38);
    return;
  }

  v3 = sub_224B3DF0C(v2);

  if (v3 >> 62)
  {
LABEL_44:
    v4 = sub_224DAF838();
    if (v4)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_37:

    goto LABEL_38;
  }

LABEL_5:
  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  v23 = v3 + 32;
  v24 = v3 & 0xFFFFFFFFFFFFFF8;
  v7 = &off_27853F000;
  v32 = v3;
  v25 = v3 & 0xC000000000000001;
  v26 = v4;
  while (1)
  {
    if (v6)
    {
      v8 = MEMORY[0x22AA5DCC0](v5, v3);
      v9 = __OFADD__(v5, 1);
      v10 = v5 + 1;
      if (v9)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v5 >= *(v24 + 16))
      {
        goto LABEL_47;
      }

      v8 = *(v23 + 8 * v5);
      v9 = __OFADD__(v5, 1);
      v10 = v5 + 1;
      if (v9)
      {
        goto LABEL_43;
      }
    }

    v34 = v8;
    v11 = [v8 containerDescriptors];
    sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
    v3 = sub_224DAF008();

    v31 = v10;
    if (v3 >> 62)
    {
      break;
    }

    v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_14;
    }

LABEL_36:

    v6 = v25;
    v5 = v31;
    v3 = v32;
    if (v31 == v26)
    {
      goto LABEL_37;
    }
  }

  v12 = sub_224DAF838();
  if (!v12)
  {
    goto LABEL_36;
  }

LABEL_14:
  v13 = 0;
  v14 = v3 & 0xC000000000000001;
  v27 = v3 + 32;
  v28 = v3 & 0xFFFFFFFFFFFFFF8;
  v33 = v3;
  v29 = v3 & 0xC000000000000001;
  v30 = v12;
  while (2)
  {
    if (v14)
    {
      v15 = MEMORY[0x22AA5DCC0](v13, v3);
      v9 = __OFADD__(v13++, 1);
      if (v9)
      {
        goto LABEL_42;
      }

LABEL_21:
      v35 = v15;
      v16 = [v15 v7[321]];
      sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
      v17 = sub_224DAF008();

      if (v17 >> 62)
      {
        v18 = sub_224DAF838();
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; v18 != i; ++i)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x22AA5DCC0](i, v17);
        }

        else
        {
          if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v20 = *(v17 + 8 * i + 32);
        }

        v21 = v20;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v22 = [v20 extensionIdentity];
        v3 = [v22 isRemote];

        if (v3)
        {
          sub_224C4EE80(v39);

          sub_224A699F0(v38);
          return;
        }
      }

      v14 = v29;
      v7 = &off_27853F000;
      v3 = v33;
      if (v13 != v30)
      {
        continue;
      }

      goto LABEL_36;
    }

    break;
  }

  if (v13 < *(v28 + 16))
  {
    v15 = *(v27 + 8 * v13);
    v9 = __OFADD__(v13++, 1);
    if (v9)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_224C4ED9C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_224C4EE10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F50E0, &qword_224DB41A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224C4EE80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F50E0, &qword_224DB41A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for NetworkAuthorizationChangeInfo()
{
  result = qword_2813537C0;
  if (!qword_2813537C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_224C4EF5C()
{
  sub_224C4EFE8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_224C4EFE8()
{
  if (!qword_281351930)
  {
    v0 = sub_224DAA028();
    if (!v1)
    {
      atomic_store(v0, &qword_281351930);
    }
  }
}

uint64_t sub_224C4F048()
{
  v1 = 0x6465776F6C6C61;
  if (*v0 != 1)
  {
    v1 = 0x6465696E6564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

unint64_t sub_224C4F0A4()
{
  result = qword_27D6F59F0;
  if (!qword_27D6F59F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F59F0);
  }

  return result;
}

uint64_t sub_224C4F0F8()
{
  v1 = v0[3];
  sub_224A3D418(v0[2]);
  v2 = v0[5];
  sub_224A3D418(v0[4]);
  v3 = v0[7];
  sub_224A3D418(v0[6]);
  v4 = v0[9];
  sub_224A3D418(v0[8]);

  return swift_deallocClassInstance();
}

uint64_t sub_224C4F16C(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = result;
    v6 = *(v2 + 24);

    v3(v5 & 0x101, a2);

    return sub_224A3D418(v3);
  }

  return result;
}

uint64_t sub_224C4F1F4(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 32);
  if (v3)
  {
    v5 = result;
    v6 = *(v2 + 40);

    v3(v5 & 0x101, a2);

    return sub_224A3D418(v3);
  }

  return result;
}

uint64_t sub_224C4F27C(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 48);
  if (v3)
  {
    v5 = result;
    v6 = *(v2 + 56);

    v3(v5 & 0x101, a2);

    return sub_224A3D418(v3);
  }

  return result;
}

uint64_t sub_224C4F304(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 64);
  if (v3)
  {
    v5 = result;
    v6 = *(v2 + 72);

    v3(v5 & 0x101, a2);

    return sub_224A3D418(v3);
  }

  return result;
}

uint64_t sub_224C4F38C()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v5 = *(v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F53D0, &qword_224DB56A8);
    sub_224C4F4C8();
    v2 = v0;
    v1 = sub_224DAB3A8();
    v3 = *(v0 + 40);
    *(v2 + 40) = v1;
  }

  return v1;
}

uint64_t sub_224C4F424()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

unint64_t sub_224C4F4C8()
{
  result = qword_27D6F40D8;
  if (!qword_27D6F40D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F53D0, &qword_224DB56A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F40D8);
  }

  return result;
}

id sub_224C4F55C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetCenterServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_224C4F644()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__listener;
  v3 = *(v1 + OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__listener);
  if (v3)
  {
    [v3 setDelegate_];
    v3 = *(v1 + v2);
  }

  return [v3 resume];
}

uint64_t sub_224C4F7E4(int a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  a4(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

uint64_t sub_224C4F858()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_224C4FA10;
  }

  else
  {
    v4 = sub_224C4F988;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_224C4F988()
{
  v1 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_224C4FA10()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_224C4FA98()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_224C4FC40;
  }

  else
  {
    v5 = *(v2 + 208);

    v4 = sub_224C4FBB4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_224C4FBB4()
{
  v1 = *(v0 + 192);

  sub_224C54434(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_224C4FC40()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  sub_224C54434(*(v0 + 192));

  v3 = *(v0 + 224);
  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_224C4FCE0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = sub_224DA9518();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_224C4FE84(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_224DAB7B8();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_224DAB848();
  v41 = *(v43 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v17 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v18 = [a3 extensionIdentity];
  v19 = [a3 kind];
  v39 = sub_224DAEE18();
  v46 = v20;

  v21 = *(v12 + 16);
  v21(v16, a1, v11);
  v50 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21(v50, v16, v11);
  v22 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v23 = swift_allocObject();
  v47 = v12;
  v48 = v11;
  (*(v12 + 32))(v23 + v22, v16, v11);
  v24 = *v17;
  v49 = v18;
  sub_224B5BA90(v18);
  if (v25)
  {
    v26 = v25;
    v27 = *(v24 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
    v28 = swift_allocObject();
    v28[2] = v24;
    v28[3] = v26;
    v29 = v46;
    v28[4] = v39;
    v28[5] = v29;
    v28[6] = sub_224B677B8;
    v28[7] = v23;
    aBlock[4] = sub_224BFD5A8;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_29;
    v30 = _Block_copy(aBlock);

    v39 = v26;

    v31 = v40;
    sub_224DAB7E8();
    v51 = MEMORY[0x277D84F90];
    sub_224A3AF98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v32 = v42;
    v33 = v45;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v31, v32, v30);
    _Block_release(v30);

    (*(v44 + 8))(v32, v33);
    (*(v41 + 8))(v31, v43);

    v34 = v50;
    v35 = v48;
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    aBlock[0] = sub_224CBC42C(0x18u, 0xD000000000000025, 0x8000000224DC72C0);
    v36 = v48;
    v37 = v50;
    sub_224DAF0D8();

    v34 = v37;
    v35 = v36;
  }

  return (*(v47 + 8))(v34, v35);
}

uint64_t sub_224C5055C(int a1, int a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v5 = sub_224DAEE18();
  v7 = v6;
  v4[4] = v6;
  v8 = sub_224DAEE18();
  v10 = v9;
  v4[5] = v9;

  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_224C50658;

  return sub_224A3C050(v5, v7, v8, v10);
}

uint64_t sub_224C50658()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 24);
  if (v2)
  {
    v11 = sub_224DA9518();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v12 = *(v9 + 8);

  return v12();
}

void sub_224C50928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = sub_224DA9518();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a4 + 16))(a4);
}

uint64_t sub_224C509A4()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F38C0, &qword_224DB31E8) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_224DAC5E8();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v1[10] = v8;
  v9 = *(v8 - 8);
  v1[11] = v9;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C50B80, 0, 0);
}

uint64_t sub_224C50B80()
{
  v1 = *(v0[2] + 16);
  v2 = sub_224DAF2C8();
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  if (!v6)
  {
    (*(v4 + 56))(v0[9], 1, 1, v0[10]);
    goto LABEL_6;
  }

  v7 = v0[2];
  sub_224A32920(v2, 1, v0[9]);

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
LABEL_6:
    sub_224A3311C(v0[9], &unk_27D6F5060, &qword_224DB5620);
    goto LABEL_7;
  }

  v8 = v0[12];
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[5];
  v43 = v0[4];
  v12 = v0[2];
  (*(v0[11] + 32))(v8, v0[9], v0[10]);
  __swift_project_boxed_opaque_existential_1((v12 + 144), *(v12 + 168));
  v13 = off_283828B60[0];
  v42 = type metadata accessor for PushService();
  v14 = v13(v42, &off_283828B40);
  *(swift_task_alloc() + 16) = v8;
  sub_224AFD7C0(sub_224C51E08, v14, v10);

  sub_224A3796C(v10, v9, &qword_27D6F3BB0, &unk_224DB8CF0);
  if ((*(v11 + 48))(v9, 1, v43) != 1)
  {
    v29 = v0[3];
    (*(v0[5] + 32))(v0[6], v0[7], v0[4]);
    __swift_project_boxed_opaque_existential_1((v12 + 144), *(v12 + 168));
    v30 = sub_224DAC588();
    off_283828B90(v30, v31, v42, &off_283828B40);

    v32 = sub_224DAE438();
    v33 = *(v32 - 8);
    v34 = (*(v33 + 48))(v29, 1, v32);
    v35 = v0[8];
    v37 = v0[5];
    v36 = v0[6];
    v38 = v0[3];
    v39 = v0[4];
    if (v34 == 1)
    {
      (*(v37 + 8))(v0[6], v0[4]);
      sub_224A3311C(v35, &qword_27D6F3BB0, &unk_224DB8CF0);
      sub_224A3311C(v38, &unk_27D6F38C0, &qword_224DB31E8);
      v19 = 0;
      v20 = 0xF000000000000000;
    }

    else
    {
      v40 = v0[3];
      v19 = sub_224DAE428();
      v20 = v41;
      (*(v37 + 8))(v36, v39);
      sub_224A3311C(v35, &qword_27D6F3BB0, &unk_224DB8CF0);
      (*(v33 + 8))(v38, v32);
    }

    (*(v0[11] + 8))(v0[12], v0[10]);
    goto LABEL_8;
  }

  v16 = v0[11];
  v15 = v0[12];
  v17 = v0[10];
  v18 = v0[7];
  sub_224A3311C(v0[8], &qword_27D6F3BB0, &unk_224DB8CF0);
  sub_224A3311C(v18, &qword_27D6F3BB0, &unk_224DB8CF0);
  (*(v16 + 8))(v15, v17);
LABEL_7:
  v19 = 0;
  v20 = 0xF000000000000000;
LABEL_8:
  v21 = v0[12];
  v23 = v0[8];
  v22 = v0[9];
  v25 = v0[6];
  v24 = v0[7];
  v26 = v0[3];

  v27 = v0[1];

  return v27(v19, v20);
}

uint64_t sub_224C50FB4(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v34 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - v19;
  v21 = sub_224DAC578();
  if (v21)
  {
    v33 = v7;
    v35 = v2;
    v22 = *MEMORY[0x277CFA130];
    v23 = v21;
    swift_beginAccess();
    sub_224A3796C(v23 + v22, v20, &unk_27D6F5060, &qword_224DB5620);

    v24 = *(v4 + 48);
    if (v24(v20, 1, v3) != 1)
    {
      (*(v4 + 16))(v18, v36, v3);
      (*(v4 + 56))(v18, 0, 1, v3);
      v26 = *(v8 + 48);
      sub_224A3796C(v20, v11, &unk_27D6F5060, &qword_224DB5620);
      v36 = v26;
      sub_224A3796C(v18, &v11[v26], &unk_27D6F5060, &qword_224DB5620);
      if (v24(v11, 1, v3) == 1)
      {
        sub_224A3311C(v18, &unk_27D6F5060, &qword_224DB5620);
        if (v24(&v11[v36], 1, v3) == 1)
        {
          sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
          v25 = 1;
          goto LABEL_11;
        }
      }

      else
      {
        v27 = v34;
        sub_224A3796C(v11, v34, &unk_27D6F5060, &qword_224DB5620);
        v28 = v36;
        if (v24(&v11[v36], 1, v3) != 1)
        {
          v30 = v33;
          (*(v4 + 32))(v33, &v11[v28], v3);
          sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640);
          v31 = v27;
          v25 = sub_224DAEDD8();
          v32 = *(v4 + 8);
          v32(v30, v3);
          sub_224A3311C(v18, &unk_27D6F5060, &qword_224DB5620);
          v32(v31, v3);
          sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
          goto LABEL_11;
        }

        sub_224A3311C(v18, &unk_27D6F5060, &qword_224DB5620);
        (*(v4 + 8))(v27, v3);
      }

      sub_224A3311C(v11, &qword_27D6F5B90, &qword_224DB5C50);
      v25 = 0;
      goto LABEL_11;
    }

    v25 = 0;
  }

  else
  {
    (*(v4 + 56))(v20, 1, 1, v3);
    v25 = 0;
  }

LABEL_11:
  sub_224A3311C(v20, &unk_27D6F5060, &qword_224DB5620);
  return v25 & 1;
}

uint64_t sub_224C51620(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_224C516C8;

  return sub_224C509A4();
}

uint64_t sub_224C516C8(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  if (a2 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_224DA96B8();
    sub_224AC1D9C(a1, a2);
  }

  v10 = *(v5 + 24);
  (v10)[2](v10, v9, 0);

  _Block_release(v10);
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_224C51840()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  sub_224A3311C(v0 + 184, &unk_27D6F4FB0, &unk_224DBADC8);

  return swift_deallocClassInstance();
}

uint64_t sub_224C518B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_224ACED1C;

  return sub_224C51620(v2, v3);
}

uint64_t sub_224C5195C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_224A3796C(a3, v25 - v11, &unk_27D6F4620, &qword_224DB34D0);
  v13 = sub_224DAF128();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_224A3311C(v12, &unk_27D6F4620, &qword_224DB34D0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_224DAF118();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_224DAF0C8();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_224DAEE48() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_224A3311C(a3, &unk_27D6F4620, &qword_224DB34D0);

    return v23;
  }

LABEL_8:
  sub_224A3311C(a3, &unk_27D6F4620, &qword_224DB34D0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_224C51C58()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_224C51D50(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_224ACED1C;

  return sub_224A3BBFC(a1, v5);
}

void sub_224C51E28(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v66 - v11;
  v13 = sub_224A47CD8(a1, a2);
  v14 = v13;
  if (v15)
  {
    v16 = v13;
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v17 = sub_224DAB258();
    __swift_project_value_buffer(v17, qword_281364E50);

    v18 = sub_224DAB228();
    v19 = sub_224DAF288();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v73 = v21;
      *v20 = 136446466;
      *(v20 + 4) = sub_224A33F74(a1, a2, &v73);
      *(v20 + 12) = 2082;
      v22 = [objc_opt_self() currentConnection];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 description];

        v25 = sub_224DAEE18();
        v27 = v26;
      }

      else
      {
        v25 = 0x6E776F6E6B6E75;
        v27 = 0xE700000000000000;
      }

      v42 = sub_224A33F74(v25, v27, &v73);

      *(v20 + 14) = v42;
      _os_log_impl(&dword_224A2F000, v18, v19, "[WidgetCenter] %{public}s reload configuration recommendations requested from  %{public}s - not authorized", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v21, -1, -1);
      MEMORY[0x22AA5EED0](v20, -1, -1);
    }

    v43 = v14;
    v44 = sub_224DA9518();
    (*(a4 + 16))(a4, v44);

    sub_224C54434(v14);
    sub_224C54434(v14);
  }

  else
  {
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v72 = v14;
    v70 = sub_224DAB258();
    __swift_project_value_buffer(v70, qword_281364E50);

    v28 = sub_224DAB228();
    v29 = sub_224DAF2A8();

    v30 = os_log_type_enabled(v28, v29);
    v71 = v8;
    if (v30)
    {
      v68 = v29;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v73 = v32;
      *v31 = 136446466;
      v69 = a1;
      *(v31 + 4) = sub_224A33F74(a1, a2, &v73);
      *(v31 + 12) = 2082;
      v33 = [objc_opt_self() currentConnection];
      if (v33)
      {
        v34 = v33;
        v35 = [v33 description];
        v67 = v9;
        v36 = v32;
        v37 = a4;
        v38 = v35;

        v39 = sub_224DAEE18();
        v41 = v40;

        a4 = v37;
        v32 = v36;
        v9 = v67;
      }

      else
      {
        v39 = 0x6E776F6E6B6E75;
        v41 = 0xE700000000000000;
      }

      v45 = sub_224A33F74(v39, v41, &v73);

      *(v31 + 14) = v45;
      _os_log_impl(&dword_224A2F000, v28, v68, "[WidgetCenter] %{public}s reload configuration recommendations requested from  %{public}s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v32, -1, -1);
      MEMORY[0x22AA5EED0](v31, -1, -1);

      a1 = v69;
    }

    else
    {
    }

    v46 = a3[7];
    __swift_project_boxed_opaque_existential_1(a3 + 3, a3[6]);

    sub_224DA9FF8();
    v47 = sub_224DAC668();
    (*(v9 + 8))(v12, v71);
    if (*(v47 + 16))
    {
      if (qword_281351460 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v70, qword_281364DC0);

      v48 = sub_224DAB228();
      v49 = sub_224DAF2A8();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v73 = v51;
        *v50 = 136446210;
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3508, &qword_224DB3AA0);
        v53 = MEMORY[0x22AA5D380](v47, v52);
        v55 = sub_224A33F74(v53, v54, &v73);

        *(v50 + 4) = v55;
        _os_log_impl(&dword_224A2F000, v48, v49, "Reloading configuration recommendations for extensions: %{public}s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x22AA5EED0](v51, -1, -1);
        MEMORY[0x22AA5EED0](v50, -1, -1);
      }

      v56 = a3[17];
      __swift_project_boxed_opaque_existential_1(a3 + 13, a3[16]);
      sub_224DACAC8();

      (*(a4 + 16))(a4, 0);
      v57 = v72;
    }

    else
    {

      if (qword_281351460 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v70, qword_281364DC0);

      v58 = sub_224DAB228();
      v59 = sub_224DAF288();

      v60 = os_log_type_enabled(v58, v59);
      v61 = v72;
      if (v60)
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v64 = a1;
        v65 = v63;
        v73 = v63;
        *v62 = 136446210;
        *(v62 + 4) = sub_224A33F74(v64, a2, &v73);
        _os_log_impl(&dword_224A2F000, v58, v59, "[WidgetCenter] No matching extensions found for %{public}s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v65);
        MEMORY[0x22AA5EED0](v65, -1, -1);
        MEMORY[0x22AA5EED0](v62, -1, -1);
      }

      (*(a4 + 16))(a4, 0);
      v57 = v61;
    }

    sub_224C54434(v57);
  }
}

void sub_224C52650(void *a1, void (**a2)(void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = a1[2];
  _Block_copy(a2);
  v14 = sub_224DAF2C8();
  if (!v15)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_5;
  }

  sub_224A32920(v14, 1, v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
LABEL_5:
    sub_224A3311C(v7, &unk_27D6F5060, &qword_224DB5620);
    sub_224BFD554();
    v19 = swift_allocError();
    *v20 = 26;
    v21 = sub_224DA9518();
    (a2)[2](a2, v21);

    goto LABEL_6;
  }

  (*(v9 + 32))(v12, v7, v8);
  v16 = sub_224DA9FE8();
  v18 = v17;
  _Block_copy(a2);
  sub_224C51E28(v16, v18, a1, a2);
  _Block_release(a2);

  (*(v9 + 8))(v12, v8);
LABEL_6:
  _Block_release(a2);
}

void sub_224C528C0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = a1[2];
  v14 = sub_224DAF2C8();
  if (v15)
  {
    sub_224A32920(v14, 1, v7);

    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v12, v7, v8);
      v16 = a1[12];
      __swift_project_boxed_opaque_existential_1(a1 + 8, a1[11]);
      sub_224DAC808();
      sub_224A3B79C(0, &qword_281350830, 0x277CFA358);
      v17 = sub_224DAEFF8();
      (*(a2 + 16))(a2, v17, 0);

      (*(v9 + 8))(v12, v8);
      return;
    }
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  sub_224A3311C(v7, &unk_27D6F5060, &qword_224DB5620);
  sub_224BFD554();
  v18 = swift_allocError();
  *v19 = 26;
  sub_224A3B79C(0, &qword_281350830, 0x277CFA358);
  v20 = sub_224DAEFF8();
  v21 = sub_224DA9518();
  (*(a2 + 16))(a2, v20, v21);
}

uint64_t sub_224C52B8C(void *a1, void *a2, uint64_t a3)
{
  v84 = a3;
  v5 = sub_224DACB98();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v83 = *(v12 - 8);
  v13 = *(v83 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v76 - v14;
  sub_224DAE518();
  sub_224DA9FF8();
  sub_224DAA278();
  v16 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, a2[6]);
  sub_224DAC6C8();
  if (v86)
  {
    v78 = v6;
    v79 = v5;
    sub_224A36F98(&v85, v87);
    sub_224DAE558();
    __swift_project_boxed_opaque_existential_1(v87, v87[3]);
    sub_224DAE338();
    sub_224DAE528();
    v82 = sub_224DAE548();
    v17 = sub_224DAE518();
    v19 = sub_224A47CD8(v17, v18);
    v21 = v20;

    v81 = v21;
    if (v21)
    {
      if (qword_2813514B8 != -1)
      {
        swift_once();
      }

      v22 = sub_224DAB258();
      __swift_project_value_buffer(v22, qword_281364E50);
      v23 = a1;

      v24 = sub_224DAB228();
      v25 = sub_224DAF288();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v80 = v12;
        v28 = v27;
        v29 = swift_slowAlloc();
        *&v85 = v29;
        *v26 = 138543618;
        *(v26 + 4) = v23;
        *v28 = v23;
        *(v26 + 12) = 2082;
        v30 = a2[2];
        v31 = v23;
        v32 = [v30 description];
        v33 = sub_224DAEE18();
        v34 = v19;
        v36 = v35;

        v37 = sub_224A33F74(v33, v36, &v85);
        v19 = v34;

        *(v26 + 14) = v37;
        _os_log_impl(&dword_224A2F000, v24, v25, "[WidgetCenter] %{public}@ reload widgets requested from  %{public}s - not authorized", v26, 0x16u);
        sub_224A3311C(v28, &unk_27D6F69F0, &unk_224DB3900);
        v38 = v28;
        v12 = v80;
        MEMORY[0x22AA5EED0](v38, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x22AA5EED0](v29, -1, -1);
        MEMORY[0x22AA5EED0](v26, -1, -1);
      }

      v39 = sub_224DA9518();
      (*(v84 + 16))(v84, v39);

      v40 = v82;
    }

    else
    {
      if (qword_2813514B8 != -1)
      {
        swift_once();
      }

      v77 = v19;
      v80 = v12;
      v55 = sub_224DAB258();
      __swift_project_value_buffer(v55, qword_281364E50);
      v56 = a1;

      v57 = sub_224DAB228();
      v58 = sub_224DAF2A8();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *&v85 = v76;
        *v59 = 138543618;
        *(v59 + 4) = v56;
        *v60 = v56;
        *(v59 + 12) = 2082;
        v61 = a2[2];
        v62 = v56;
        v63 = [v61 description];
        v64 = sub_224DAEE18();
        v66 = v65;

        v67 = sub_224A33F74(v64, v66, &v85);

        *(v59 + 14) = v67;
        _os_log_impl(&dword_224A2F000, v57, v58, "[WidgetCenter] %{public}@ reload widgets requested from  %{public}s", v59, 0x16u);
        sub_224A3311C(v60, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v60, -1, -1);
        v68 = v76;
        __swift_destroy_boxed_opaque_existential_1(v76);
        MEMORY[0x22AA5EED0](v68, -1, -1);
        MEMORY[0x22AA5EED0](v59, -1, -1);
      }

      v69 = a2[12];
      __swift_project_boxed_opaque_existential_1(a2 + 8, a2[11]);
      v70 = swift_allocObject();
      v71 = a2[2];
      v72 = objc_opt_self();
      v40 = v82;
      v73 = v82;
      v70[2] = [v72 processHandleForNSXPCConnection_];
      v70[3] = 0xD000000000000012;
      v70[4] = 0x8000000224DBC070;
      *v9 = v70;
      v75 = v78;
      v74 = v79;
      (*(v78 + 104))(v9, *MEMORY[0x277CF9B90], v79);
      sub_224DAC768();

      (*(v75 + 8))(v9, v74);
      (*(v84 + 16))(v84, 0);
      v12 = v80;
      v19 = v77;
    }

    sub_224C54434(v19);

    (*(v83 + 8))(v15, v12);
    return __swift_destroy_boxed_opaque_existential_1(v87);
  }

  else
  {
    sub_224A3311C(&v85, &unk_27D6F4700, &unk_224DB3A10);
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v41 = sub_224DAB258();
    __swift_project_value_buffer(v41, qword_281364E50);
    v42 = a1;
    v43 = sub_224DAB228();
    v44 = sub_224DAF288();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = v12;
      v47 = swift_slowAlloc();
      v87[0] = v47;
      *v45 = 136446210;
      v48 = sub_224DAE518();
      v50 = sub_224A33F74(v48, v49, v87);

      *(v45 + 4) = v50;
      _os_log_impl(&dword_224A2F000, v43, v44, "[WidgetCenter] Unable to reload widgets for extension bundle identifier [%{public}s] because it is not a valid widget extension identity.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      v51 = v47;
      v12 = v46;
      MEMORY[0x22AA5EED0](v51, -1, -1);
      MEMORY[0x22AA5EED0](v45, -1, -1);
    }

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v52 = sub_224CBC42C(0x18u, 0, 0);
    v53 = sub_224DA9518();
    (*(v84 + 16))(v84, v53);

    return (*(v83 + 8))(v15, v12);
  }
}

void sub_224C53480(void *a1, uint64_t a2)
{
  v4 = sub_224DACB98();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v27 - v15;
  v17 = a1[2];
  v18 = sub_224DAF2C8();
  if (v19)
  {
    v28 = v4;
    sub_224A32920(v18, 1, v11);

    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      (*(v13 + 32))(v16, v11, v12);
      v20 = a1[11];
      v27[1] = a1[12];
      __swift_project_boxed_opaque_existential_1(a1 + 8, v20);
      v21 = swift_allocObject();
      v21[2] = [objc_opt_self() processHandleForNSXPCConnection_];
      v21[3] = 0xD000000000000012;
      v21[4] = 0x8000000224DBC070;
      *v7 = v21;
      v22 = v28;
      v23 = v29;
      (*(v29 + 104))(v7, *MEMORY[0x277CF9B90], v28);
      sub_224DAC748();
      (*(v23 + 8))(v7, v22);
      (*(a2 + 16))(a2, 0);
      (*(v13 + 8))(v16, v12);
      return;
    }
  }

  else
  {
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
  sub_224BFD554();
  v24 = swift_allocError();
  *v25 = 9;
  v26 = sub_224DA9518();
  (*(a2 + 16))(a2, v26);
}

uint64_t sub_224C53818(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6)
{
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v78 = *(v80 - 8);
  v12 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v14 = &v68 - v13;
  v79 = sub_224DADE98();
  v77 = *(v79 - 8);
  v15 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = swift_allocObject();
  *(v85 + 16) = a6;
  sub_224A3796C((a5 + 23), &v82, &unk_27D6F4FB0, &unk_224DBADC8);
  if (!v83)
  {
    _Block_copy(a6);
    sub_224A3311C(&v82, &unk_27D6F4FB0, &unk_224DBADC8);
  }

  v75 = a2;
  v76 = a1;
  sub_224A36F98(&v82, v84);
  _Block_copy(a6);

  v81 = a3;
  v18 = sub_224A47CD8(a3, a4);
  v19 = v18;
  v21 = v20;
  if (v20)
  {
    v22 = v18;
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v23 = sub_224DAB258();
    __swift_project_value_buffer(v23, qword_281364E50);

    v24 = sub_224DAB228();
    v25 = sub_224DAF288();

    if (os_log_type_enabled(v24, v25))
    {
      v74 = v21;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v82 = v27;
      *v26 = 136446466;
      *(v26 + 4) = sub_224A33F74(v81, a4, &v82);
      *(v26 + 12) = 2082;
      v28 = [objc_opt_self() currentConnection];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 description];

        v31 = sub_224DAEE18();
        v33 = v32;
      }

      else
      {
        v31 = 0x6E776F6E6B6E75;
        v33 = 0xE700000000000000;
      }

      v47 = sub_224A33F74(v31, v33, &v82);

      *(v26 + 14) = v47;
      _os_log_impl(&dword_224A2F000, v24, v25, "[WidgetCenter] %{public}s ingest widget relevance archive from %{public}s - not authorized", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v27, -1, -1);
      MEMORY[0x22AA5EED0](v26, -1, -1);
    }

    else
    {
    }

LABEL_29:
    swift_willThrow();
    v60 = v19;
    goto LABEL_30;
  }

  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v73 = sub_224DAB258();
  __swift_project_value_buffer(v73, qword_281364E50);

  v35 = sub_224DAB228();
  v36 = sub_224DAF2A8();

  v72 = v36;
  v37 = os_log_type_enabled(v35, v36);
  v74 = v21;
  if (v37)
  {
    v70 = v35;
    v71 = v19;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v82 = v39;
    *v38 = 136446466;
    *(v38 + 4) = sub_224A33F74(v81, a4, &v82);
    *(v38 + 12) = 2082;
    v40 = [objc_opt_self() currentConnection];
    if (v40)
    {
      v41 = v40;
      v42 = [v40 description];
      v69 = v39;
      v43 = v42;

      v44 = sub_224DAEE18();
      v46 = v45;

      v39 = v69;
    }

    else
    {
      v44 = 0x6E776F6E6B6E75;
      v46 = 0xE700000000000000;
    }

    v48 = sub_224A33F74(v44, v46, &v82);

    *(v38 + 14) = v48;
    v49 = v70;
    _os_log_impl(&dword_224A2F000, v70, v72, "[WidgetCenter] %{public}s ingest widget relevance archive from %{public}s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v39, -1, -1);
    MEMORY[0x22AA5EED0](v38, -1, -1);

    v19 = v71;
  }

  else
  {
  }

  v50 = a5[17];
  __swift_project_boxed_opaque_existential_1(a5 + 13, a5[16]);
  v51 = *(v50 + 24);
  if (!sub_224DADA38())
  {
    v52 = v75;
    goto LABEL_24;
  }

  sub_224DA9FF8();
  v52 = v75;
  sub_224DACA08();
  (*(v78 + 8))(v14, v80);
  v53 = v79;
  sub_224DACF08();

  (*(v77 + 8))(v17, v53);
  if (!v82)
  {
LABEL_24:
    if (qword_281351460 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v73, qword_281364DC0);

    v61 = sub_224DAB228();
    v62 = sub_224DAF288();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v65 = v52;
      v66 = v64;
      *&v82 = v64;
      *v63 = 136446466;
      *(v63 + 4) = sub_224A33F74(v76, v65, &v82);
      *(v63 + 12) = 2082;
      *(v63 + 14) = sub_224A33F74(v81, a4, &v82);
      _os_log_impl(&dword_224A2F000, v61, v62, "[WidgetCenter] No matching descriptors found for %{public}s in %{public}s", v63, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v66, -1, -1);
      MEMORY[0x22AA5EED0](v63, -1, -1);
    }

    sub_224BFD554();
    swift_allocError();
    *v67 = 1;
    goto LABEL_29;
  }

  v54 = v82;
  v55 = [v54 extensionIdentity];
  v56 = objc_allocWithZone(MEMORY[0x277CFA418]);
  v57 = sub_224DAEDE8();
  v58 = [v56 initWithExtensionIdentity:v55 kind:v57];

  v59 = *__swift_project_boxed_opaque_existential_1(v84, v84[3]);
  _Block_copy(a6);

  sub_224B66FF8(v58, v59, a6);
  _Block_release(a6);

  v60 = v19;
LABEL_30:
  sub_224C54434(v60);
  __swift_destroy_boxed_opaque_existential_1(v84);
}

void sub_224C5411C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, void (**a6)(void, void, void, void))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v29 - v19;
  if (!a4)
  {
    v22 = a5[2];
    _Block_copy(a6);
    v23 = sub_224DAF2C8();
    if (v24)
    {
      v29[0] = a2;
      sub_224A32920(v23, 1, v15);

      if ((*(v17 + 48))(v15, 1, v16) != 1)
      {
        (*(v17 + 32))(v20, v15, v16);
        a3 = sub_224DA9FE8();
        v21 = v25;
        (*(v17 + 8))(v20, v16);
        a2 = v29[0];
        goto LABEL_3;
      }
    }

    else
    {
      (*(v17 + 56))(v15, 1, 1, v16);
    }

    sub_224A3311C(v15, &unk_27D6F5060, &qword_224DB5620);
    sub_224BFD554();
    v26 = swift_allocError();
    *v27 = 26;
    v28 = sub_224DA9518();
    (a6)[2](a6, v28, 0, 0);

    goto LABEL_9;
  }

  _Block_copy(a6);
  v21 = a4;
LABEL_3:
  _Block_copy(a6);

  sub_224C53818(a1, a2, a3, v21, a5, a6);
  _Block_release(a6);

LABEL_9:
  _Block_release(a6);
}

uint64_t sub_224C54440()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_224ACFF60;

  return sub_224C5055C(v2, v3, v5, v4);
}

uint64_t sub_224C545D0()
{
  v1 = sub_224DAB7B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAB848();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAEDE8();
  Serial = BSDispatchQueueCreateSerial();

  aBlock[4] = sub_224C54AE0;
  v17 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_30;
  v13 = _Block_copy(aBlock);

  sub_224DAB7E8();
  v15[1] = MEMORY[0x277D84F90];
  sub_224A3AF98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A4C290();
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v10, v5, v13);
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_224C54850(uint64_t a1)
{
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281365120);
  v3 = sub_224DAB228();
  v4 = sub_224DAF2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_224A2F000, v3, v4, "Starting activity replication service", v5, 2u);
    MEMORY[0x22AA5EED0](v5, -1, -1);
  }

  v6 = *(a1 + 80);
  __swift_project_boxed_opaque_existential_1((a1 + 48), *(a1 + 72));
  sub_224DAAC48();
  v7 = *(a1 + 16);
  if (*(a1 + 32) == 1)
  {
    sub_224BBCEA4();
  }

  else
  {
    sub_224BB9908();
  }

  v8 = *(a1 + 24);
  return sub_224C093A0();
}

uint64_t sub_224C54A6C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);

  return swift_deallocClassInstance();
}

void sub_224C54B88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v188 = a5;
  v180 = a4;
  v174 = a3;
  v158 = a6;
  v161 = sub_224DAAEA8();
  v160 = *(v161 - 8);
  v8 = *(v160 + 64);
  MEMORY[0x28223BE20](v161);
  v159 = v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_224DA9908();
  v156 = *(v157 - 8);
  v10 = *(v156 + 64);
  v11 = MEMORY[0x28223BE20](v157);
  v154 = v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v155 = v148 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v176 = v148 - v16;
  v175 = sub_224DAAFC8();
  v183 = *(v175 - 8);
  v17 = *(v183 + 64);
  v18 = MEMORY[0x28223BE20](v175);
  v186 = v148 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v185 = v148 - v20;
  v179 = type metadata accessor for ReplicatedExtension();
  v21 = *(*(v179 - 8) + 64);
  MEMORY[0x28223BE20](v179);
  v178 = v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_224DACE38();
  v163 = *(v184 - 8);
  v23 = *(v163 + 64);
  v24 = MEMORY[0x28223BE20](v184);
  v162 = v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v177 = v148 - v27;
  MEMORY[0x28223BE20](v26);
  v181 = v148 - v28;
  v173 = sub_224DAAB88();
  v172 = *(v173 - 8);
  v29 = v172[8];
  v30 = MEMORY[0x28223BE20](v173);
  v165 = v148 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v164 = v148 - v32;
  v168 = sub_224DAB0F8();
  v167 = *(v168 - 8);
  v33 = *(v167 + 64);
  v34 = MEMORY[0x28223BE20](v168);
  v182 = v148 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v169 = v148 - v36;
  v37 = sub_224DAAF48();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v37);
  v153 = v148 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = v148 - v42;
  sub_224DAF538();
  v44 = *(v38 + 16);
  v44(v43, a1, v37);
  sub_224DAAEF8();
  v45 = sub_224DAF4F8();
  (*(v38 + 8))(v43, v37);
  v194 = v45;
  if (!v45)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    v44(v55, a1, v37);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v170 = v44;
  v171 = v38 + 16;
  v149 = v37;
  v150 = a1;
  v46 = *(a2 + 16);
  if (!v46)
  {
LABEL_6:
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    v51 = v50;
    v52 = *MEMORY[0x277CFA138];
    v53 = v194;
    swift_beginAccess();
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
    (*(*(v54 - 8) + 16))(v51, &v53[v52], v54);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return;
  }

  v47 = a2 + 32;
  while (1)
  {
    sub_224A3317C(v47, &v189);
    sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
    __swift_project_boxed_opaque_existential_1(&v189, v190);
    v48 = sub_224DAE338();
    v49 = sub_224DAF6A8();

    if (v49)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(&v189);
    v47 += 40;
    if (!--v46)
    {
      goto LABEL_6;
    }
  }

  sub_224A36F98(&v189, &v191);
  sub_224A36F98(&v191, &v192);
  if (qword_2813592A8 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v56 = qword_2813652C8;
    v57 = v184;
    if (!*(qword_2813652C8 + 16) || (v58 = sub_224B0B668(6), (v59 & 1) == 0))
    {
      type metadata accessor for ReplicationService.ReplicationServiceError();
      sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
      swift_allocError();
      *v76 = 0x6F69736E65747865;
      v76[1] = 0xE90000000000006ELL;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

LABEL_25:
      __swift_destroy_boxed_opaque_existential_1(&v192);
      return;
    }

    v60 = v167;
    v61 = *(v56 + 56) + *(v167 + 72) * v58;
    v62 = v182;
    v63 = v168;
    (*(v167 + 16))(v182, v61, v168);
    (*(v60 + 32))(v169, v62, v63);
    v64 = sub_224DAE9C8();
    v65 = v64;
    *&v191 = MEMORY[0x277D84F90];
    if (v64 >> 62)
    {
      v66 = sub_224DAF838();
    }

    else
    {
      v66 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v67 = MEMORY[0x277D84F90];
    if (v66)
    {
      v68 = 0;
      v182 = (v65 & 0xC000000000000001);
      while (1)
      {
        if (v182)
        {
          v69 = MEMORY[0x22AA5DCC0](v68, v65);
        }

        else
        {
          if (v68 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v69 = *(v65 + 8 * v68 + 32);
        }

        v70 = v69;
        v71 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          break;
        }

        v72 = v66;
        v73 = [v69 extensionIdentity];
        v74 = sub_224DAF6A8();

        if (v74)
        {
          sub_224DAF9B8();
          v75 = *(v191 + 16);
          sub_224DAF9F8();
          sub_224DAFA08();
          sub_224DAF9C8();
        }

        else
        {
        }

        v66 = v72;
        ++v68;
        if (v71 == v72)
        {
          v77 = v191;
          v57 = v184;
          v67 = MEMORY[0x277D84F90];
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v77 = MEMORY[0x277D84F90];
LABEL_28:

    v78 = sub_224DAE9D8();
    v79 = v78;
    *&v191 = v67;
    if (!(v78 >> 62))
    {
      v80 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v80)
      {
        break;
      }

      goto LABEL_30;
    }

    v80 = sub_224DAF838();
    if (!v80)
    {
      break;
    }

LABEL_30:
    v166 = v77;
    v81 = 0;
    v82 = v79 & 0xC000000000000001;
    v83 = v79 & 0xFFFFFFFFFFFFFF8;
    v182 = v79;
    v174 = v79 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v82)
      {
        v84 = MEMORY[0x22AA5DCC0](v81, v79);
      }

      else
      {
        if (v81 >= *(v83 + 16))
        {
          goto LABEL_51;
        }

        v84 = *(v79 + 8 * v81 + 32);
      }

      v85 = v84;
      v86 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        break;
      }

      if (*(v188 + 16) && (v87 = sub_224B0B6F0(2u), (v88 & 1) != 0))
      {
        v89 = *(*(v188 + 56) + 8 * v87);
      }

      else
      {
        LOBYTE(v89) = 0;
      }

      sub_224C5A4C4(v85, v89);
      if (v90)
      {
        v91 = v80;
        v92 = [v85 extensionIdentity];
        v93 = sub_224DAF6A8();

        if (v93)
        {
          sub_224DAF9B8();
          v94 = *(v191 + 16);
          sub_224DAF9F8();
          sub_224DAFA08();
          sub_224DAF9C8();
        }

        else
        {
        }

        v80 = v91;
        v79 = v182;
        v83 = v174;
      }

      else
      {
      }

      ++v81;
      if (v86 == v80)
      {
        v57 = v184;
        goto LABEL_55;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
  }

LABEL_55:

  sub_224DAE9F8();
  v166 = sub_224DAE9A8();
  v182 = sub_224DA06F0(MEMORY[0x277D84F90]);
  v95 = v164;
  sub_224DAB0C8();
  v96 = sub_224DAAB78();
  v97 = v172[1];
  v98 = v95;
  v99 = v173;
  v97(v98, v173);
  v100 = v165;
  sub_224DAB0C8();
  v101 = sub_224DAAB68();
  v97(v100, v99);
  v151 = v101;
  v102 = v181;
  if (v101 < v96)
  {
    goto LABEL_77;
  }

  v164 = (v163 + 16);
  v165 = (v163 + 8);
  v163 = v183 + 16;
  v148[1] = v183 + 32;
  v152 = v183 + 8;
  v148[0] = v183 + 40;
  while (2)
  {
    v188 = v96;
    __swift_project_boxed_opaque_existential_1(&v192, v193);
    sub_224DAE388();
    v173 = v180[3];
    v174 = v180[4];
    v172 = __swift_project_boxed_opaque_existential_1(v180, v173);
    v103 = *v164;
    v104 = v177;
    (*v164)(v177, v102, v57);
    v105 = v178;
    v103(v178, v104, v57);
    v106 = sub_224DAE9C8();
    v107 = v179;
    *&v105[*(v179 + 20)] = v106;
    v108 = sub_224DAE9D8();
    v109 = *v165;
    (*v165)(v104, v57);
    *&v105[*(v107 + 24)] = v108;
    sub_224C5B048(&qword_281358F80, type metadata accessor for ReplicatedExtension);
    v110 = v105;
    v111 = v188;
    sub_224C5B048(&qword_281358F88, type metadata accessor for ReplicatedExtension);
    v112 = v187;
    v113 = sub_224DAB0A8();
    v187 = v112;
    if (v112)
    {
      goto LABEL_71;
    }

    v115 = v113;
    v116 = v114;
    sub_224C5AF9C(v110);
    v109(v102, v57);
    v117 = sub_224DA9688();
    (*(*(v117 - 8) + 56))(v176, 1, 1, v117);
    sub_224A77FD0(v115, v116);
    v118 = v185;
    sub_224DAAFB8();
    v119 = v175;
    (*v163)(v186, v118, v175);
    v120 = v182;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v191 = v120;
    v122 = sub_224B31510(v111);
    v124 = *(v120 + 2);
    v125 = (v123 & 1) == 0;
    v126 = __OFADD__(v124, v125);
    v127 = v124 + v125;
    if (!v126)
    {
      v128 = v123;
      if (*(v120 + 3) >= v127)
      {
        v130 = v170;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_63;
        }

        v132 = v122;
        sub_224B25C8C();
        v122 = v132;
        v131 = v191;
        if ((v128 & 1) == 0)
        {
          goto LABEL_66;
        }

LABEL_64:
        v110 = v183;
        (*(v183 + 40))(*(v131 + 7) + *(v183 + 72) * v122, v186, v119);
        sub_224A78024(v115, v116);
        (*(v110 + 8))(v185, v119);
      }

      else
      {
        sub_224B10264(v127, isUniquelyReferenced_nonNull_native);
        v122 = sub_224B31510(v111);
        v130 = v170;
        if ((v128 & 1) != (v129 & 1))
        {
          goto LABEL_78;
        }

LABEL_63:
        v131 = v191;
        if (v128)
        {
          goto LABEL_64;
        }

LABEL_66:
        *&v131[8 * (v122 >> 6) + 64] |= 1 << v122;
        *(*(v131 + 6) + 8 * v122) = v188;
        v110 = v183;
        (*(v183 + 32))(*(v131 + 7) + *(v183 + 72) * v122, v186, v119);
        sub_224A78024(v115, v116);
        (*(v110 + 8))(v185, v119);
        v133 = *(v131 + 2);
        v126 = __OFADD__(v133, 1);
        v134 = v133 + 1;
        if (v126)
        {
          goto LABEL_76;
        }

        *(v131 + 2) = v134;
      }

      v182 = v131;
      if (v151 == v188)
      {
        v135 = v109;
        __swift_project_boxed_opaque_existential_1(&v192, v193);
        v136 = sub_224DAE388();
        v137 = v159;
        MEMORY[0x22AA59200](v136);
        v138 = v187;
        sub_224DACD18();
        v139 = v166;
        if (v138)
        {
          (*(v160 + 8))(v137, v161);

          v109(v162, v184);
          (*(v167 + 8))(v169, v168);
        }

        else
        {
          v140 = sub_224DAE9C8();
          sub_224D0F250(v140, v137);
          v141 = v160;

          v142 = sub_224DAE9D8();
          sub_224D0F278(v142, v137);

          v143 = v155;
          sub_224DAAE88();
          (*(v141 + 8))(v137, v161);
          v135(v162, v184);
          v130(v153, v150, v149);
          v144 = v156;
          v145 = v143;
          v146 = v143;
          v147 = v157;
          (*(v156 + 16))(v154, v146, v157);
          sub_224DAAF78();

          (*(v144 + 8))(v145, v147);
          (*(v167 + 8))(v169, v168);
        }

        goto LABEL_25;
      }

      v96 = v188 + 1;
      v57 = v184;
      v102 = v181;
      if (v188 == -1)
      {
        __break(1u);
LABEL_71:

        sub_224C5AF9C(v110);
        v109(v102, v57);
        (*(v167 + 8))(v169, v168);

        __swift_destroy_boxed_opaque_existential_1(&v192);
        return;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  sub_224DAFDD8();
  __break(1u);
}

uint64_t sub_224C56080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a3;
  v73 = a2;
  v81 = a1;
  v71 = a4;
  v4 = sub_224DA9908();
  v67 = *(v4 - 8);
  v68 = v4;
  v5 = *(v67 + 64);
  MEMORY[0x28223BE20](v4);
  v66 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DACE38();
  v69 = *(v7 - 8);
  v70 = v7;
  v8 = *(v69 + 64);
  MEMORY[0x28223BE20](v7);
  v72 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for ReplicatedExtension();
  v10 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v77 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAAFC8();
  v79 = *(v12 - 8);
  v80 = v12;
  v13 = *(v79 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v65 - v17;
  v18 = sub_224DAAB88();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_224DAB0F8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v65 - v29;
  if (qword_2813592A8 != -1)
  {
    swift_once();
  }

  v31 = qword_2813652C8;
  if (!*(qword_2813652C8 + 16) || (v32 = sub_224B0B668(6), (v33 & 1) == 0))
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    *v36 = 0x6F69736E65747865;
    v36[1] = 0xE90000000000006ELL;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  (*(v24 + 16))(v28, *(v31 + 56) + *(v24 + 72) * v32, v23);
  (*(v24 + 32))(v30, v28, v23);
  sub_224DAB0C8();
  v65 = sub_224DAAEB8();
  v35 = v34;
  (*(v19 + 8))(v22, v18);
  if (v35)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    sub_224DAAF88();
LABEL_13:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v24 + 8))(v30, v23);
  }

  v38 = sub_224DAAFD8();
  if (!*(v38 + 16) || (v39 = sub_224B31510(v65), (v40 & 1) == 0))
  {

    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    sub_224DAAF88();
    goto LABEL_13;
  }

  v41 = v79;
  v42 = v80;
  (*(v79 + 16))(v16, *(v38 + 56) + *(v79 + 72) * v39, v80);

  (*(v41 + 32))(v78, v16, v42);
  v43 = v74[4];
  v81 = __swift_project_boxed_opaque_existential_1(v74, v74[3]);
  v44 = sub_224DAAFA8();
  v46 = v45;
  sub_224C5B048(&qword_281358F80, type metadata accessor for ReplicatedExtension);
  sub_224C5B048(&qword_281358F88, type metadata accessor for ReplicatedExtension);
  v64 = v43;
  v47 = v76;
  v48 = v75;
  sub_224DAB098();
  if (v48)
  {
    sub_224A78024(v44, v46);
    (*(v79 + 8))(v78, v80);
    return (*(v24 + 8))(v30, v23);
  }

  sub_224A78024(v44, v46);
  v49 = v66;
  v50 = v73;
  sub_224DAAD98();
  v51 = v77;
  sub_224BFEC80(v49, v72);
  v52 = (*(v67 + 8))(v49, v68);
  v53 = *(v51 + *(v47 + 20));
  MEMORY[0x28223BE20](v52);
  v64 = v50;
  v81 = sub_224D41B08(sub_224C5AF34, (&v65 - 4), v54);
  v55 = *(v51 + *(v47 + 24));
  MEMORY[0x28223BE20](v81);
  v64 = v50;
  v75 = sub_224D41B08(sub_224C5AF68, (&v65 - 4), v56);
  v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5A98, &qword_224DBC300) + 48);
  v57 = v69;
  v58 = v70;
  v60 = v71;
  v59 = v72;
  (*(v69 + 16))(v71, v72, v70);
  sub_224DAE9F8();
  v61 = sub_224DAE9A8();
  (*(v57 + 8))(v59, v58);
  sub_224C5AF9C(v77);
  (*(v79 + 8))(v78, v80);
  (*(v24 + 8))(v30, v23);
  *(v60 + v76) = v61;
  _s15ExtensionChangeOMa();
  swift_storeEnumTagMultiPayload();
  v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37E8, &qword_224DBD800) + 44);
  v63 = sub_224DAAE38();
  return (*(*(v63 - 8) + 16))(v60 + v62, v73, v63);
}

uint64_t sub_224C569B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v38 = a3;
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v30 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v34 = &v30 - v9;
  v10 = sub_224DA9908();
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAAF48();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAF538();
  v19 = *(v15 + 16);
  v31 = a1;
  v19(v18, a1, v14);
  sub_224DAAEF8();
  v20 = sub_224DAF4F8();
  (*(v15 + 8))(v18, v14);
  if (v20)
  {
    v21 = v39;
    sub_224DAAD98();
    v22 = *MEMORY[0x277CFA138];
    swift_beginAccess();
    (*(v32 + 16))(v34, &v20[v22], v33);
    v23 = *MEMORY[0x277CFA130];
    swift_beginAccess();
    sub_224AFD468(&v20[v23], v37);
    sub_224DA9898();
    v24 = sub_224DAF508();

    (*(v35 + 8))(v13, v36);
    v25 = v38;
    *v38 = v24;
    _s15ExtensionChangeOMa();
    swift_storeEnumTagMultiPayload();
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37E8, &qword_224DBD800) + 44);
    v27 = sub_224DAAE38();
    return (*(*(v27 - 8) + 16))(v25 + v26, v21, v27);
  }

  else
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    v19(v29, v31, v14);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_224C56DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v105 = a3;
  v103 = a4;
  v104 = a2;
  v5 = sub_224DAA618();
  v101 = *(v5 - 8);
  v102 = v5;
  v6 = *(v101 + 64);
  MEMORY[0x28223BE20](v5);
  v100 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v8 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v95 = &v88 - v9;
  v98 = sub_224DA9908();
  v96 = *(v98 - 8);
  v10 = *(v96 + 64);
  MEMORY[0x28223BE20](v98);
  v93 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v94 = *(v97 - 8);
  v12 = *(v94 + 64);
  v13 = MEMORY[0x28223BE20](v97);
  v92 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v91 = &v88 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v108 = (&v88 - v18);
  v111 = sub_224DA9688();
  v109 = *(v111 - 8);
  v19 = *(v109 + 64);
  MEMORY[0x28223BE20](v111);
  v110 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_224DAAFC8();
  v112 = *(v21 - 8);
  v113 = v21;
  v22 = *(v112 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v107 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v114 = &v88 - v25;
  v26 = sub_224DAAB88();
  v115 = *(v26 - 8);
  v116 = v26;
  v27 = *(v115 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_224DAB0F8();
  v121 = *(v117 - 8);
  v30 = *(v121 + 64);
  v31 = MEMORY[0x28223BE20](v117);
  v33 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v118 = &v88 - v34;
  v35 = sub_224DAAF48();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v88 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAAF88();
  sub_224DAAF08();
  v40 = *(v36 + 8);
  v40(v39, v35);
  v41 = sub_224AFC108();
  if (v41 == 13)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    v43 = v42;
    sub_224DAAF88();
    v44 = sub_224DAAF08();
    v46 = v45;
    v40(v39, v35);
    *v43 = v44;
    v43[1] = v46;
LABEL_10:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v88 = v40;
  v89 = v35;
  v90 = a1;
  if (qword_2813592A8 != -1)
  {
    v87 = v41;
    swift_once();
    v41 = v87;
  }

  v47 = qword_2813652C8;
  v48 = v121;
  if (!*(qword_2813652C8 + 16) || (v49 = sub_224B0B668(v41), (v50 & 1) == 0))
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    *v57 = 1852793705;
    v57[1] = 0xE400000000000000;
    goto LABEL_10;
  }

  v51 = v117;
  (*(v48 + 16))(v33, *(v47 + 56) + *(v48 + 72) * v49, v117);
  v52 = v118;
  (*(v48 + 32))(v118, v33, v51);
  sub_224DAB0C8();
  v53 = sub_224DAAEB8();
  v55 = v54;
  (*(v115 + 8))(v29, v116);
  if (v55)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v48 + 8))(v52, v51);
  }

  else
  {
    v58 = sub_224DAAFD8();
    if (*(v58 + 16) && (v59 = sub_224B31510(v53), (v60 & 1) != 0))
    {
      v116 = v53;
      v62 = v112;
      v61 = v113;
      v63 = v107;
      (*(v112 + 16))(v107, *(v58 + 56) + *(v112 + 72) * v59, v113);

      (*(v62 + 32))(v114, v63, v61);
      v64 = v108;
      sub_224DAAF98();
      v65 = v109;
      v66 = v111;
      v67 = (*(v109 + 48))(v64, 1, v111);
      v68 = v118;
      if (v67 == 1)
      {
        sub_224B6B120(v64);
        type metadata accessor for ReplicationService.ReplicationServiceError();
        sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
        swift_allocError();
        sub_224DAAF88();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v62 + 8))(v114, v61);
        return (*(v121 + 8))(v68, v117);
      }

      else
      {
        v69 = *(v65 + 32);
        v115 = v65 + 32;
        v108 = v69;
        v69(v110, v64, v66);
        v70 = v105[4];
        __swift_project_boxed_opaque_existential_1(v105, v105[3]);
        v71 = sub_224DAAFA8();
        v73 = v72;
        sub_224AFC264();
        sub_224AFC2B8();
        v74 = v106;
        sub_224DAB098();
        sub_224A78024(v71, v73);
        if (v74)
        {
          (*(v65 + 8))(v110, v111);
          (*(v112 + 8))(v114, v113);
          return (*(v121 + 8))(v118, v117);
        }

        else
        {
          v116 = v119;
          v109 = v120;
          sub_224DAAF88();
          sub_224DAAEF8();
          v107 = v75;
          v106 = sub_224C5AFF8(&qword_281351980);
          v105 = sub_224C5AFF8(&unk_281351950);
          v90 = sub_224C5AFF8(&qword_281351978);
          sub_224C5AFF8(&qword_281351970);
          v76 = v92;
          sub_224DAA208();
          v88(v39, v89);
          v77 = v93;
          sub_224DAAD98();
          v78 = v97;
          sub_224DAA1E8();
          sub_224DA9898();
          v79 = v91;
          sub_224DAA1D8();
          (*(v96 + 8))(v77, v98);
          v80 = v94;
          v81 = *(v94 + 8);
          v81(v76, v78);
          (*(v80 + 16))(v76, v79, v78);
          v82 = v100;
          sub_224DAA5D8();
          v81(v79, v78);
          (*(v112 + 8))(v114, v113);
          (*(v121 + 8))(v118, v117);
          v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A60, &qword_224DBC810) + 48);
          v84 = v103;
          (*(v101 + 32))(v103, v82, v102);
          v108(v84 + v83, v110, v111);
          _s10IconChangeOMa();
          swift_storeEnumTagMultiPayload();
          v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56B0, &unk_224DB4140) + 44);
          v86 = sub_224DAAE38();
          return (*(*(v86 - 8) + 16))(v84 + v85, v104, v86);
        }
      }
    }

    else
    {

      type metadata accessor for ReplicationService.ReplicationServiceError();
      sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
      swift_allocError();
      sub_224DAAF88();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (*(v121 + 8))(v118, v51);
    }
  }
}

uint64_t sub_224C57C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v38 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v4 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v34 = v29 - v5;
  v6 = sub_224DA9908();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v30 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAAF48();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v33 = *(v14 - 8);
  v15 = *(v33 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v31 = v29 - v19;
  (*(v10 + 16))(v13, a1, v9);
  v29[2] = sub_224DAAEF8();
  v29[1] = sub_224C5AFF8(&qword_281351980);
  sub_224C5AFF8(&unk_281351950);
  sub_224C5AFF8(&qword_281351978);
  sub_224C5AFF8(&qword_281351970);
  sub_224DAA208();
  (*(v10 + 8))(v13, v9);
  v20 = v30;
  sub_224DAAD98();
  v21 = v14;
  sub_224DAA1E8();
  sub_224DA9898();
  v22 = v31;
  sub_224DAA1D8();
  (*(v35 + 8))(v20, v36);
  v23 = v33;
  (*(v33 + 8))(v18, v21);
  v24 = v37;
  (*(v23 + 32))(v37, v22, v21);
  _s10IconChangeOMa();
  v25 = v24;
  swift_storeEnumTagMultiPayload();
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56B0, &unk_224DB4140) + 44);
  v27 = sub_224DAAE38();
  return (*(*(v27 - 8) + 16))(v25 + v26, v38, v27);
}

uint64_t sub_224C580E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v104 = a5;
  v95 = a4;
  v96 = a2;
  v100 = a1;
  v97 = sub_224DA9908();
  v94 = *(v97 - 8);
  v6 = *(v94 + 64);
  MEMORY[0x28223BE20](v97);
  v93 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v90 = &v86 - v10;
  v99 = sub_224DAC268();
  v92 = *(v99 - 8);
  v11 = *(v92 + 64);
  v12 = MEMORY[0x28223BE20](v99);
  v98 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v91 = &v86 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v102 = &v86 - v17;
  v108 = sub_224DAAFC8();
  v106 = *(v108 - 8);
  v18 = *(v106 + 64);
  v19 = MEMORY[0x28223BE20](v108);
  v103 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v107 = &v86 - v21;
  v22 = sub_224DAAB88();
  v109 = *(v22 - 8);
  v110 = v22;
  v23 = *(v109 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_224DAB0F8();
  v112 = *(v113 - 8);
  v26 = *(v112 + 64);
  v27 = MEMORY[0x28223BE20](v113);
  v29 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v111 = &v86 - v30;
  v31 = sub_224DAAF48();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v101 = &v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v86 - v36;
  sub_224DAAF88();
  sub_224DAAF08();
  v38 = *(v32 + 8);
  v38(v37, v31);
  v39 = sub_224AFC108();
  if (v39 == 13)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    v41 = v40;
    sub_224DAAF88();
    v42 = sub_224DAAF08();
    v44 = v43;
    v38(v37, v31);
    *v41 = v42;
    v41[1] = v44;
LABEL_10:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v45 = v39;
  v87 = v38;
  v88 = v31;
  v89 = a3;
  if (qword_2813592A8 != -1)
  {
    swift_once();
  }

  v46 = qword_2813652C8;
  if (!*(qword_2813652C8 + 16) || (v47 = sub_224B0B668(v45), (v48 & 1) == 0))
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    v57 = v56;
    *v56 = sub_224AF02C0(v45);
    v57[1] = v58;
    goto LABEL_10;
  }

  v49 = v112;
  v50 = v113;
  (*(v112 + 16))(v29, *(v46 + 56) + *(v112 + 72) * v47, v113);
  v51 = v111;
  (*(v49 + 32))(v111, v29, v50);
  sub_224DAB0C8();
  v52 = sub_224DAAEB8();
  v54 = v53;
  (*(v109 + 8))(v25, v110);
  if (v54)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v49 + 8))(v51, v50);
  }

  v59 = sub_224DAAFD8();
  if (!*(v59 + 16) || (v60 = sub_224B31510(v52), (v61 & 1) == 0))
  {

    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v112 + 8))(v111, v113);
  }

  v62 = v106;
  v63 = v103;
  v64 = v108;
  (*(v106 + 16))(v103, *(v59 + 56) + *(v106 + 72) * v60, v108);

  (*(v62 + 32))(v107, v63, v64);
  v65 = v104[4];
  __swift_project_boxed_opaque_existential_1(v104, v104[3]);
  v66 = sub_224DAAFA8();
  v68 = v67;
  sub_224C4DEE4();
  sub_224C4DF38();
  v69 = v105;
  sub_224DAB098();
  if (v69)
  {
    sub_224A78024(v66, v68);
    (*(v62 + 8))(v107, v108);
    return (*(v112 + 8))(v111, v113);
  }

  sub_224A78024(v66, v68);
  v70 = v102;
  v71 = v107;
  sub_224DAAF98();
  v72 = sub_224DA9688();
  v73 = *(v72 - 8);
  v74 = (*(v73 + 48))(v70, 1, v72);
  v75 = v113;
  if (v74 != 1)
  {
    v76 = v100;
    (*(v73 + 32))(v100, v70, v72);
    v77 = v101;
    sub_224DAAF88();
    sub_224DAAEF8();
    v110 = sub_224DA96A8();
    v79 = v78;

    if (v79 >> 60 == 15)
    {
      sub_224C4DE90();
      swift_allocError();
      swift_willThrow();
      v87(v77, v88);
      (*(v73 + 8))(v76, v72);
      (*(v106 + 8))(v71, v108);
    }

    else
    {
      v80 = v71;
      sub_224DAAD38();
      sub_224C5B048(&qword_27D6F56D0, MEMORY[0x277CF9978]);
      v81 = v98;
      v82 = v99;
      sub_224DAAD18();
      v109 = sub_224DAC248();
      v105 = sub_224DAC258();
      sub_224DAC218();
      v83 = v91;
      sub_224DAC228();
      sub_224AC1D9C(v110, v79);
      v84 = *(v92 + 8);
      v84(v81, v82);
      v87(v101, v88);
      v85 = v93;
      sub_224DAAD98();
      sub_224B44A4C(v85, v96);
      (*(v94 + 8))(v85, v97);
      v84(v83, v82);
      (*(v106 + 8))(v80, v108);
    }

    return (*(v112 + 8))(v111, v113);
  }

  sub_224B6B120(v70);
  type metadata accessor for ReplicationService.ReplicationServiceError();
  sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
  swift_allocError();
  sub_224DAAF88();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  (*(v106 + 8))(v71, v108);
  return (*(v112 + 8))(v111, v75);
}

uint64_t sub_224C58DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v107 = a5;
  v97 = a4;
  v98 = a2;
  v103 = a1;
  v99 = sub_224DA9908();
  v96 = *(v99 - 8);
  v6 = *(v96 + 64);
  MEMORY[0x28223BE20](v99);
  v95 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v93 = &v89 - v10;
  v102 = sub_224DAC2B8();
  v94 = *(v102 - 8);
  v11 = *(v94 + 64);
  v12 = MEMORY[0x28223BE20](v102);
  v101 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v100 = &v89 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v89 - v17;
  v18 = sub_224DAAFC8();
  v110 = *(v18 - 8);
  v111 = v18;
  v19 = *(v110 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v106 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v109 = &v89 - v22;
  v23 = sub_224DAAB88();
  v112 = *(v23 - 8);
  v113 = v23;
  v24 = *(v112 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_224DAB0F8();
  v115 = *(v116 - 8);
  v27 = *(v115 + 64);
  v28 = MEMORY[0x28223BE20](v116);
  v30 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v114 = &v89 - v31;
  v32 = sub_224DAAF48();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v104 = &v89 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v89 - v37;
  sub_224DAAF88();
  sub_224DAAF08();
  v41 = *(v33 + 8);
  v39 = v33 + 8;
  v40 = v41;
  v41(v38, v32);
  v42 = sub_224AFC108();
  if (v42 == 13)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    v44 = v43;
    sub_224DAAF88();
    v45 = sub_224DAAF08();
    v47 = v46;
    v40(v38, v32);
    *v44 = v45;
    v44[1] = v47;
LABEL_10:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v48 = v42;
  v89 = v39;
  v90 = v40;
  v91 = v32;
  v92 = a3;
  if (qword_2813592A8 != -1)
  {
    swift_once();
  }

  v49 = qword_2813652C8;
  if (!*(qword_2813652C8 + 16) || (v50 = sub_224B0B668(v48), (v51 & 1) == 0))
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    v60 = v59;
    *v59 = sub_224AF02C0(v48);
    v60[1] = v61;
    goto LABEL_10;
  }

  v52 = v115;
  v53 = v116;
  (*(v115 + 16))(v30, *(v49 + 56) + *(v115 + 72) * v50, v116);
  v54 = v114;
  (*(v52 + 32))(v114, v30, v53);
  sub_224DAB0C8();
  v55 = sub_224DAAEB8();
  v57 = v56;
  (*(v112 + 8))(v26, v113);
  if (v57)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v52 + 8))(v54, v53);
  }

  v62 = sub_224DAAFD8();
  if (!*(v62 + 16) || (v63 = sub_224B31510(v55), (v64 & 1) == 0))
  {

    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v115 + 8))(v114, v116);
  }

  v65 = v110;
  v66 = v111;
  v67 = v106;
  (*(v110 + 16))(v106, *(v62 + 56) + *(v110 + 72) * v63, v111);

  v68 = v109;
  (*(v65 + 32))(v109, v67, v66);
  v69 = v107[4];
  __swift_project_boxed_opaque_existential_1(v107, v107[3]);
  v70 = sub_224DAAFA8();
  v72 = v71;
  sub_224AFC580();
  sub_224AFC5D4();
  v73 = v108;
  sub_224DAB098();
  if (v73)
  {
    sub_224A78024(v70, v72);
    (*(v65 + 8))(v68, v111);
    return (*(v115 + 8))(v114, v116);
  }

  sub_224A78024(v70, v72);
  v74 = v105;
  sub_224DAAF98();
  v75 = sub_224DA9688();
  v76 = *(v75 - 8);
  v77 = (*(v76 + 48))(v74, 1, v75);
  v78 = v116;
  if (v77 == 1)
  {
    sub_224B6B120(v74);
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v79 = v103;
    (*(v76 + 32))(v103, v74, v75);
    v80 = v104;
    sub_224DAAF88();
    sub_224DAAEF8();
    v113 = sub_224DA96A8();
    v82 = v81;

    if (v82 >> 60 != 15)
    {
      sub_224DAAD38();
      sub_224C5B048(&qword_27D6F3868, MEMORY[0x277CF99B8]);
      v84 = v101;
      v83 = v102;
      sub_224DAAD18();
      v85 = v90;
      sub_224DAC2A8();
      sub_224DAC288();
      sub_224DAC298();
      sub_224AC1D9C(v113, v82);
      v86 = *(v94 + 8);
      v86(v84, v83);
      v85(v104, v91);
      v87 = v95;
      sub_224DAAD98();
      v88 = v100;
      sub_224CBE434();
      (*(v96 + 8))(v87, v99);
      v86(v88, v83);
      (*(v110 + 8))(v109, v111);
      return (*(v115 + 8))(v114, v116);
    }

    sub_224AFC52C();
    swift_allocError();
    swift_willThrow();
    v90(v80, v91);
    (*(v76 + 8))(v79, v75);
  }

  (*(v110 + 8))(v68, v111);
  return (*(v115 + 8))(v114, v78);
}

uint64_t sub_224C59AA4@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(char *)@<X3>, uint64_t *a3@<X8>)
{
  v6 = sub_224DA9908();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_224DAAD98();
  v12 = a2(v10);
  result = (*(v7 + 8))(v10, v6);
  *a3 = v12;
  return result;
}

uint64_t sub_224C59BA8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_224DA9908();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  sub_224A3B79C(0, &qword_281350958, 0x277CFA360);
  result = sub_224DAAE58();
  if (!v2)
  {
    v22[0] = a1;
    sub_224DAAE48();
    v14 = sub_224DA9898();
    v22[3] = a2;
    v16 = v15;
    v17 = sub_224DA9898();
    v19 = v18;
    v22[0] = v14;
    v22[1] = v16;

    MEMORY[0x22AA5D210](v17, v19);

    v20 = sub_224DAEDE8();

    sub_224A3B79C(0, &qword_281350838, 0x277CCACA8);
    sub_224DAAE58();

    v21 = *(v6 + 8);
    v21(v10, v5);
    return (v21)(v12, v5);
  }

  return result;
}

uint64_t sub_224C59DD4(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = sub_224DADA98();
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAAF48();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAF538();
  v12 = *(v8 + 16);
  v22 = a1;
  v12(v11, a1, v7);
  sub_224DAAEF8();
  v13 = sub_224DAF4F8();
  (*(v8 + 8))(v11, v7);
  if (v13)
  {
    sub_224DACA18();
    sub_224DACF08();
    (*(v23 + 8))(v6, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AB0, &unk_224DBC310);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AB8, &qword_224DC1B30);
    v15 = *(v14 - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_224DB3100;
    (*(v15 + 104))(v18 + v17, *MEMORY[0x277CF9E08], v14);
    sub_224DACF98();

    v19 = sub_224DACF18();
  }

  else
  {
    v19 = type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    v12(v20, v22, v7);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v19;
}

uint64_t sub_224C5A14C(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = sub_224DADF68();
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAAF48();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAF538();
  v12 = *(v8 + 16);
  v22 = a1;
  v12(v11, a1, v7);
  sub_224DAAEF8();
  v13 = sub_224DAF4F8();
  (*(v8 + 8))(v11, v7);
  if (v13)
  {
    sub_224DACA18();
    sub_224DACF08();
    (*(v23 + 8))(v6, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AA0, &qword_224DBC308);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5AA8, &qword_224DC1B20);
    v15 = *(v14 - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_224DB3100;
    (*(v15 + 104))(v18 + v17, *MEMORY[0x277CF9E08], v14);
    sub_224DACF98();

    v19 = sub_224DACF18();
  }

  else
  {
    v19 = type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224C5B048(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    v12(v20, v22, v7);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v19;
}

void sub_224C5A4C4(void *a1, char a2)
{
  if ([a1 isHidden])
  {
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v4 = sub_224DAB258();
    __swift_project_value_buffer(v4, qword_281365120);
    v5 = a1;
    v6 = sub_224DAB228();
    v7 = sub_224DAF278();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v38 = v9;
      *v8 = 136315138;
      v10 = [v5 succinctDescription];

      if (v10)
      {
        v11 = sub_224DAEE18();
        v13 = v12;

        v14 = sub_224A33F74(v11, v13, &v38);

        *(v8 + 4) = v14;
        _os_log_impl(&dword_224A2F000, v6, v7, "will not replicate hidden descriptor:%s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v9);
        MEMORY[0x22AA5EED0](v9, -1, -1);
        MEMORY[0x22AA5EED0](v8, -1, -1);
LABEL_28:

        return;
      }

      __break(1u);
      goto LABEL_31;
    }

LABEL_27:

    goto LABEL_28;
  }

  if ((a2 & 4) != 0)
  {
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v26 = sub_224DAB258();
    __swift_project_value_buffer(v26, qword_281365120);
    v5 = a1;
    v6 = sub_224DAB228();
    v17 = sub_224DAF278();
    if (!os_log_type_enabled(v6, v17))
    {
      goto LABEL_27;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v38 = v19;
    *v18 = 136315138;
    v27 = [v5 succinctDescription];

    if (!v27)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v28 = sub_224DAEE18();
    v30 = v29;

    v31 = sub_224A33F74(v28, v30, &v38);

    *(v18 + 4) = v31;
    v25 = "device is a reverse source. will replicate descriptor:%s";
    goto LABEL_20;
  }

  sub_224DA9E78();
  sub_224DA9E68();
  v15 = sub_224DA9DD8();

  if (v15)
  {
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v16 = sub_224DAB258();
    __swift_project_value_buffer(v16, qword_281365120);
    v5 = a1;
    v6 = sub_224DAB228();
    v17 = sub_224DAF2A8();
    if (!os_log_type_enabled(v6, v17))
    {
      goto LABEL_27;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v38 = v19;
    *v18 = 136315138;
    v20 = [v5 succinctDescription];

    if (!v20)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v21 = sub_224DAEE18();
    v23 = v22;

    v24 = sub_224A33F74(v21, v23, &v38);

    *(v18 + 4) = v24;
    v25 = "replicateAllVisibleControls default is enabled. will replicate descriptor:%s";
LABEL_20:
    _os_log_impl(&dword_224A2F000, v6, v17, v25, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x22AA5EED0](v19, -1, -1);
    MEMORY[0x22AA5EED0](v18, -1, -1);
    goto LABEL_28;
  }

  sub_224DAF608();
  if (MEMORY[0x22AA5D960](a1))
  {
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v32 = sub_224DAB258();
    __swift_project_value_buffer(v32, qword_281365120);
    v5 = a1;
    v6 = sub_224DAB228();
    v17 = sub_224DAF278();
    if (!os_log_type_enabled(v6, v17))
    {
      goto LABEL_27;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v38 = v19;
    *v18 = 136315138;
    v33 = [v5 succinctDescription];

    if (!v33)
    {
LABEL_33:
      __break(1u);
      return;
    }

    v34 = sub_224DAEE18();
    v36 = v35;

    v37 = sub_224A33F74(v34, v36, &v38);

    *(v18 + 4) = v37;
    v25 = "will replicate descriptor:%s";
    goto LABEL_20;
  }
}

uint64_t sub_224C5AA38(uint64_t a1, void (**a2)(char *, char *, uint64_t))
{
  v4 = sub_224DACE38();
  v55 = *(v4 - 8);
  v5 = *(v55 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v50 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v48 - v8;
  v56 = sub_224DA9908();
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v56);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  v51 = v4;
  if (v13)
  {
    v49 = a2;
    v58 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v13, 0);
    v14 = v58;
    v16 = *(v9 + 16);
    v15 = v9 + 16;
    v17 = (a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64)));
    v53 = *(v15 + 56);
    v54 = v16;
    v52 = (v15 - 8);
    do
    {
      v18 = v56;
      v19 = v15;
      v54(v12, v17, v56);
      v20 = sub_224DA9898();
      v22 = v21;
      (*v52)(v12, v18);
      v58 = v14;
      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_224A3DFD8((v23 > 1), v24 + 1, 1);
        v14 = v58;
      }

      *(v14 + 16) = v24 + 1;
      v25 = v14 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      v17 = v53 + v17;
      --v13;
      v15 = v19;
    }

    while (v13);
    v4 = v51;
    a2 = v49;
  }

  v26 = sub_224AE8AF4(v14);

  v54 = a2[2];
  if (v54)
  {
    v27 = 0;
    v53 = *(v55 + 16);
    v48 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v52 = (a2 + v48);
    v56 = *(v55 + 72);
    v28 = v26 + 56;
    v49 = (v55 + 32);
    v55 += 16;
    v29 = (v55 - 8);
    v30 = MEMORY[0x277D84F90];
    v53(v57, a2 + v48, v4);
    while (1)
    {
      v31 = sub_224DACDC8();
      v32 = &v31[*MEMORY[0x277CFA128]];
      swift_beginAccess();
      v34 = *v32;
      v33 = *(v32 + 1);

      if (!v33)
      {
        goto LABEL_10;
      }

      if (!*(v26 + 16))
      {
        break;
      }

      v35 = *(v26 + 40);
      sub_224DAFE68();
      sub_224DAEE78();
      v36 = sub_224DAFEA8();
      v37 = -1 << *(v26 + 32);
      v38 = v36 & ~v37;
      if (((*(v28 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
      {
        break;
      }

      v39 = ~v37;
      while (1)
      {
        v40 = (*(v26 + 48) + 16 * v38);
        v41 = *v40 == v34 && v33 == v40[1];
        if (v41 || (sub_224DAFD88() & 1) != 0)
        {
          break;
        }

        v38 = (v38 + 1) & v39;
        if (((*(v28 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v42 = *v49;
      (*v49)(v50, v57, v51);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_224ADA6D0(0, *(v30 + 16) + 1, 1);
        v30 = v59;
      }

      v45 = *(v30 + 16);
      v44 = *(v30 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_224ADA6D0(v44 > 1, v45 + 1, 1);
        v30 = v59;
      }

      *(v30 + 16) = v45 + 1;
      v46 = v51;
      v42((v30 + v48 + v45 * v56), v50, v51);
      v4 = v46;
LABEL_11:
      if (++v27 == v54)
      {
        goto LABEL_30;
      }

      v53(v57, v52 + v56 * v27, v4);
    }

LABEL_9:

    v4 = v51;
LABEL_10:
    (*v29)(v57, v4);
    goto LABEL_11;
  }

  v30 = MEMORY[0x277D84F90];
LABEL_30:

  return v30;
}

uint64_t sub_224C5AF9C(uint64_t a1)
{
  v2 = type metadata accessor for ReplicatedExtension();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224C5AFF8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F3900, &unk_224DB4640);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_224C5B048(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224C5B090(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BC8, &qword_224DB48A8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v41[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v41[-v12];
  v14 = sub_224DABD28();
  v16 = v15;
  swift_beginAccess();
  v17 = *(v1 + 16);
  if (*(v17 + 16) && (v18 = *(v2 + 16), , v19 = sub_224A3A40C(v14, v16), v21 = v20, , (v21 & 1) != 0))
  {
    v44 = a1;
    v22 = *(v17 + 56);
    v23 = sub_224DABD48();
    v24 = *(v23 - 8);
    (*(v24 + 16))(v13, v22 + *(v24 + 72) * v19, v23);

    (*(v24 + 56))(v13, 0, 1, v23);
    sub_224C5B59C(v13, v11);
    if ((*(v24 + 48))(v11, 1, v23) == 1)
    {
      sub_224C5B534(v11);
      a1 = v44;
      v25 = sub_224DABD38();
      v27 = v26;
      v28 = 0;
      v29 = 0xF000000000000000;
      goto LABEL_10;
    }

    v43 = sub_224DABD38();
    v37 = v36;
    (*(v24 + 8))(v11, v23);
    a1 = v44;
    v25 = sub_224DABD38();
    v27 = v38;
    v29 = v37;
    if (v37 >> 60 == 15)
    {
      v28 = v43;
LABEL_10:
      if (v27 >> 60 == 15)
      {
        sub_224AC1D9C(v28, v29);
LABEL_12:
        v34 = 0;
        goto LABEL_7;
      }

      goto LABEL_15;
    }

    if (v27 >> 60 == 15)
    {
      v28 = v43;
LABEL_15:
      sub_224AC1D9C(v28, v29);
      sub_224AC1D9C(v25, v27);
      goto LABEL_6;
    }

    v39 = v43;
    v40 = v29;
    sub_224AECAB0(v43, v29);
    sub_224A77FD0(v25, v27);
    v42 = sub_224CCC88C(v39, v40, v25, v27);
    sub_224A78024(v25, v27);
    sub_224AC1D9C(v39, v40);
    sub_224AC1D9C(v25, v27);
    sub_224AC1D9C(v39, v40);
    if (v42)
    {
      goto LABEL_12;
    }
  }

  else
  {

    v23 = sub_224DABD48();
    (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  }

LABEL_6:
  v30 = sub_224DABD28();
  v32 = v31;
  sub_224DABD48();
  v33 = *(v23 - 8);
  (*(v33 + 16))(v8, a1, v23);
  v34 = 1;
  (*(v33 + 56))(v8, 0, 1, v23);
  swift_beginAccess();
  sub_224B07824(v8, v30, v32);
  swift_endAccess();
LABEL_7:
  sub_224C5B534(v13);
  return v34;
}

uint64_t sub_224C5B534(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BC8, &qword_224DB48A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224C5B59C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BC8, &qword_224DB48A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224C5B60C()
{
  if (!*(v0 + 40))
  {
    return MEMORY[0x277D84FA0];
  }

  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (*(v0 + 40) == 1)
  {
    __swift_project_boxed_opaque_existential_1(v0, *(v0 + 24));
    return (*(v2 + 8))(v1, v2);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v0, *(v0 + 24));
    return (*(v2 + 16))(v1, v2);
  }
}

void *sub_224C5B6F8(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_224C5BB34(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_224C5B770(uint64_t a1)
{
  v2 = v1;
  v40 = *MEMORY[0x277D85DE8];
  v4 = sub_224DA9688();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v39 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = ((1 << v8) + 63) >> 6;
  if ((v8 & 0x3Fu) > 0xD)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v29 = v9;
    v30 = v2;
    v28[1] = v28;
    MEMORY[0x28223BE20](v7);
    v31 = v28 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v10);
    v9 = 0;
    v2 = a1 + 56;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v36 = v5 + 16;
    v37 = 0;
    v32 = (v5 + 8);
    v33 = v5;
    v34 = v4;
    v35 = a1;
LABEL_6:
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v38 = (v13 - 1) & v13;
LABEL_13:
      v18 = v15 | (v9 << 6);
      (*(v5 + 16))(v39, *(a1 + 48) + *(v5 + 72) * v18, v4);
      v19 = sub_224DA95B8();
      v20 = (v19 + 40);
      v21 = *(v19 + 16) + 1;
      do
      {
        if (!--v21)
        {

          v4 = v34;
          (*v32)(v39, v34);
          a1 = v35;
          v5 = v33;
          v13 = v38;
          goto LABEL_6;
        }

        if (*(v20 - 1) == 0x6C6F686563616C70 && *v20 == 0xEC00000073726564)
        {
          break;
        }

        v20 += 2;
      }

      while ((sub_224DAFD88() & 1) == 0);

      v4 = v34;
      (*v32)(v39, v34);
      *&v31[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
      v13 = v38;
      v23 = __OFADD__(v37++, 1);
      a1 = v35;
      v5 = v33;
      if (v23)
      {
        __break(1u);
LABEL_23:
        result = sub_224B04F30(v31, v29, v37, a1);
        goto LABEL_24;
      }
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_23;
      }

      v17 = *(v2 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  v27 = sub_224C5B6F8(v26, v9, a1);

  result = MEMORY[0x22AA5EED0](v26, -1, -1);
  if (!v2)
  {
    result = v27;
  }

LABEL_24:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_224C5BB34(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a1;
  v4 = sub_224DA9688();
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a3;
  v36 = 0;
  v10 = 0;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v33 = v7;
  v34 = result;
  v30 = (v7 + 8);
  v31 = v7 + 16;
  v32 = v9;
LABEL_5:
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v37 = (v16 - 1) & v16;
LABEL_12:
    v21 = v18 | (v10 << 6);
    (*(v33 + 16))(v9, *(v35 + 48) + *(v33 + 72) * v21, v4);
    v22 = sub_224DA95B8();
    v23 = (v22 + 40);
    v24 = *(v22 + 16) + 1;
    do
    {
      if (!--v24)
      {

        v9 = v32;
        v4 = v34;
        result = (*v30)(v32, v34);
        v16 = v37;
        goto LABEL_5;
      }

      if (*(v23 - 1) == 0x6C6F686563616C70 && *v23 == 0xEC00000073726564)
      {
        break;
      }

      v23 += 2;
    }

    while ((sub_224DAFD88() & 1) == 0);

    v9 = v32;
    v4 = v34;
    result = (*v30)(v32, v34);
    *(v29 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = __OFADD__(v36++, 1);
    v16 = v37;
    if (v26)
    {
      __break(1u);
LABEL_22:
      v27 = v35;

      return sub_224B04F30(v29, v28, v36, v27);
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_22;
    }

    v20 = *(v12 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v37 = (v20 - 1) & v20;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224C5BDEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_224C5BE34(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_224C5BF4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileReaperScenario(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224C5BFB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileReaperProtectionConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224C5C014(uint64_t a1)
{
  v2 = type metadata accessor for FileReaperProtectionConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_224C5C084(uint64_t *a1, int a2)
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

uint64_t sub_224C5C0CC(uint64_t result, int a2, int a3)
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