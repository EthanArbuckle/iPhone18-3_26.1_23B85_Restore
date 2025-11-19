void sub_224B778C0(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider);
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  if (sub_224DAA158())
  {
    sub_224B71070(&v13, a1);
    v7 = v6;
    v8 = sub_224DAEDE8();
    if (v7)
    {
      v9 = sub_224DA9518();
    }

    else
    {
      v9 = 0;
    }

    (*(a2 + 16))(a2, v8, v9);
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v10 = sub_224CBC42C(8u, 0, 0);
    v11 = sub_224DAEDE8();
    v12 = sub_224DA9518();
    (*(a2 + 16))(a2, v11, v12);
  }
}

void sub_224B77A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider + 32);
  __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider), *(a3 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider + 24));
  if (sub_224DAA158())
  {
    v9 = sub_224B713D0(&v15, a3, a1, a2);
    v10 = sub_224DAEDE8();
    if (v9)
    {
      v11 = sub_224DA9518();
    }

    else
    {
      v11 = 0;
    }

    (*(a4 + 16))(a4, v10, v11);
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v12 = sub_224CBC42C(8u, 0, 0);
    v13 = sub_224DAEDE8();
    v14 = sub_224DA9518();
    (*(a4 + 16))(a4, v13, v14);
  }
}

void sub_224B77BD4(uint64_t a1, uint64_t a2, char *a3, void (**a4)(const void *, void, void *))
{
  v28 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v23 = &v22 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v27);
  v12 = &v22 - v11;
  v29 = swift_allocObject();
  *(v29 + 16) = a4;
  v24 = a3;
  v13 = *&a3[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_extensionService + 24];
  v26 = *&a3[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_extensionService + 32];
  v25 = __swift_project_boxed_opaque_existential_1(&a3[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_extensionService], v13);
  v22 = a4;
  _Block_copy(a4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&qword_281351920, &unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&qword_2813518E0, &unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&unk_281351910, &unk_27D6F3920, &qword_224DB35B0);
  sub_224A33088(&unk_281351900, &unk_27D6F3920, &qword_224DB35B0);
  sub_224DAA208();
  sub_224DAC6C8();
  (*(v9 + 8))(v12, v27);
  if (v31)
  {
    sub_224A36F98(&v30, v32);
    v14 = sub_224DAF128();
    v15 = v23;
    (*(*(v14 - 8) + 56))(v23, 1, 1, v14);
    sub_224A3317C(v32, &v30);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v17 = v24;
    v16[4] = v24;
    sub_224A36F98(&v30, (v16 + 5));
    v18 = v29;
    v16[10] = sub_224A5A37C;
    v16[11] = v18;
    v19 = v17;

    sub_224D8E744(0, 0, v15, &unk_224DB7648, v16);

    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    sub_224A3311C(&v30, &unk_27D6F4700, &unk_224DB3A10);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v20 = sub_224CBC42C(0, 0, 0);
    v21 = sub_224DA9518();
    v22[2](v22, 0, v21);
  }
}

void sub_224B77FD8(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider);
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  if (sub_224DAA158())
  {
    v6 = *__swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_timelineService), *(a1 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_timelineService + 24));
    v7 = sub_224D8165C();
    v8 = *(v7 + 16);
    if (v8)
    {
      v15 = MEMORY[0x277D84F90];
      sub_224DAF9E8();
      v9 = (v7 + 40);
      do
      {
        [objc_allocWithZone(MEMORY[0x277CFA3D8]) initWithWidget:*(v9 - 1) metrics:*v9];
        sub_224DAF9B8();
        v10 = *(v15 + 16);
        sub_224DAF9F8();
        sub_224DAFA08();
        sub_224DAF9C8();
        v9 += 2;
        --v8;
      }

      while (v8);
    }

    v12 = objc_allocWithZone(MEMORY[0x277CFA3E0]);
    sub_224A3B79C(0, &unk_281350B10, 0x277CFA3D8);
    v13 = sub_224DAEFF8();

    v14 = [v12 initWithWidgetKeys_];

    (*(a2 + 16))(a2, v14, 0);
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v11 = sub_224CBC42C(8u, 0, 0);
    v14 = sub_224DA9518();
    (*(a2 + 16))(a2, 0);
  }
}

uint64_t sub_224B781FC(void *a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46C8, &qword_224DB7610);
  v4 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v33 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = sub_224DA9688();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v16, 1, 1, v17);
  v19 = a2;
  v20 = (a2 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider);
  v22 = *(a2 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider + 24);
  v21 = *(a2 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider + 32);
  __swift_project_boxed_opaque_existential_1(v20, v22);
  if (sub_224DAA158())
  {
    v23 = *(v34 + 48);
    v24 = *__swift_project_boxed_opaque_existential_1((v19 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_timelineService), *(v19 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_timelineService + 24));
    sub_224D8AB14(v35, v6);
    *&v6[v23] = 0;
    sub_224A3796C(v6, v14, &unk_27D6F4680, &unk_224DB4610);
    v25 = 0;
    if ((*(v18 + 48))(v14, 1, v17) != 1)
    {
      v25 = sub_224DA95F8();
      (*(v18 + 8))(v14, v17);
    }

    (*(v36 + 16))(v36, v25, 0);

    sub_224A3311C(v16, &unk_27D6F4680, &unk_224DB4610);
    v26 = &qword_27D6F46C8;
    v27 = &qword_224DB7610;
    v28 = v6;
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v29 = sub_224CBC42C(8u, 0, 0);
    sub_224A3796C(v16, v11, &unk_27D6F4680, &unk_224DB4610);
    v30 = 0;
    if ((*(v18 + 48))(v11, 1, v17) != 1)
    {
      v30 = sub_224DA95F8();
      (*(v18 + 8))(v11, v17);
    }

    v31 = sub_224DA9518();
    (*(v36 + 16))(v36, v30, v31);

    v26 = &unk_27D6F4680;
    v27 = &unk_224DB4610;
    v28 = v16;
  }

  return sub_224A3311C(v28, v26, v27);
}

void sub_224B78580(uint64_t a1, unint64_t a2, char *a3, void (**a4)(void, void, void))
{
  v173 = a2;
  v171 = a1;
  v161 = sub_224DACB98();
  v160 = *(v161 - 8);
  v6 = *(v160 + 64);
  MEMORY[0x28223BE20](v161);
  v159 = (&v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v138 = &v129 - v10;
  v141 = sub_224DAF3B8();
  v139 = *(v141 - 8);
  v11 = *(v139 + 64);
  MEMORY[0x28223BE20](v141);
  v136 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4650, &qword_224DB75C8);
  v140 = *(v142 - 8);
  v13 = *(v140 + 64);
  MEMORY[0x28223BE20](v142);
  v137 = &v129 - v14;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4658, &qword_224DB75D0);
  v144 = *(v145 - 8);
  v15 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v143 = &v129 - v16;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4660, &qword_224DB75D8);
  v17 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v135 = &v129 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4668, &unk_224DB75E0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v148 = &v129 - v21;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v155 = *(v156 - 8);
  v22 = *(v155 + 64);
  v23 = MEMORY[0x28223BE20](v156);
  v133 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v152 = &v129 - v25;
  v154 = sub_224DAC918();
  v153 = *(v154 - 8);
  v26 = *(v153 + 64);
  v27 = MEMORY[0x28223BE20](v154);
  v151 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v170 = &v129 - v29;
  v157 = sub_224DABCC8();
  v172 = *(v157 - 8);
  v30 = *(v172 + 64);
  v31 = MEMORY[0x28223BE20](v157);
  v158 = &v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v150 = &v129 - v34;
  MEMORY[0x28223BE20](v33);
  v166 = &v129 - v35;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v168 = *(v169 - 8);
  v36 = *(v168 + 64);
  v37 = MEMORY[0x28223BE20](v169);
  v149 = &v129 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v176 = &v129 - v39;
  v167 = sub_224DAE7A8();
  v165 = *(v167 - 8);
  v40 = *(v165 + 64);
  v41 = MEMORY[0x28223BE20](v167);
  v43 = &v129 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v175 = &v129 - v44;
  v164 = sub_224DAEB68();
  v163 = *(v164 - 8);
  v45 = *(v163 + 64);
  v46 = MEMORY[0x28223BE20](v164);
  v48 = &v129 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v174 = &v129 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v50 - 8);
  v54 = &v129 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v56 = &v129 - v55;
  v57 = swift_allocObject();
  *(v57 + 16) = a4;
  v58 = *&a3[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider + 32];
  __swift_project_boxed_opaque_existential_1(&a3[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider], *&a3[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider + 24]);
  v162 = a4;
  _Block_copy(a4);
  if ((sub_224DAA158() & 1) == 0)
  {
    v68 = sub_224DA9688();
    v69 = *(v68 - 8);
    (*(v69 + 56))(v56, 1, 1, v68);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v70 = sub_224CBC42C(8u, 0, 0);
    sub_224A3796C(v56, v54, &unk_27D6F4680, &unk_224DB4610);
    v71 = 0;
    if ((*(v69 + 48))(v54, 1, v68) != 1)
    {
      v71 = sub_224DA95F8();
      (*(v69 + 8))(v54, v68);
    }

    v72 = sub_224DA9518();
    (v162)[2](v162, v71, v72);

    sub_224A3311C(v56, &unk_27D6F4680, &unk_224DB4610);
    goto LABEL_10;
  }

  v59 = swift_allocObject();
  v147 = v59;
  *(v59 + 16) = 0;
  v131 = v59 + 16;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_224B7A8F8;
  *(v60 + 24) = v57;
  v146 = v60;
  v61 = OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_activityService;
  swift_beginAccess();
  sub_224A3796C(&a3[v61], &v179, &unk_27D6F4FD0, &qword_224DB75F0);
  if (!v180)
  {
    _Block_release(v162);
    __break(1u);
    goto LABEL_19;
  }

  v62 = a3;
  v63 = __swift_project_boxed_opaque_existential_1(&v179, v180);
  v132 = v57;

  sub_224DAEB58();
  sub_224DAE798();
  sub_224DAA1B8();
  v64 = *v63;
  v65 = v166;
  sub_224BD7040(v171, v173, v166);
  v67 = v169;
  v66 = v170;
  v129 = v61;
  v130 = v62;
  (*(v163 + 16))(v48, v174, v164);
  (*(v165 + 16))(v43, v175, v167);
  (*(v168 + 16))(v149, v176, v67);
  sub_224DAC908();
  v73 = v157;
  (*(v172 + 16))(v150, v65, v157);
  v74 = v153;
  v75 = v154;
  (*(v153 + 16))(v151, v66, v154);
  v76 = MEMORY[0x277CF9880];
  v149 = sub_224B7A940(&qword_281350EA0, MEMORY[0x277CF9880]);
  sub_224B7A940(&unk_281350EB0, v76);
  v77 = MEMORY[0x277CF9A98];
  sub_224B7A940(&qword_281350D60, MEMORY[0x277CF9A98]);
  sub_224B7A940(&qword_281350D70, v77);
  v78 = v152;
  sub_224DAC848();
  v91 = sub_224BD746C(v78, 1);
  v92 = *(v155 + 8);
  v93 = v75;
  v94 = v156;
  v92(v78, v156);
  (*(v74 + 8))(v170, v93);
  (*(v172 + 8))(v166, v73);
  (*(v168 + 8))(v176, v169);
  (*(v165 + 8))(v175, v167);
  (*(v163 + 8))(v174, v164);
  __swift_destroy_boxed_opaque_existential_1(&v179);
  v95 = v130;
  v96 = v173;
  if (!v91)
  {
    v109 = v171;
    goto LABEL_15;
  }

  v97 = v148;
  v98 = v91;
  sub_224DABFB8();
  v99 = sub_224DAEC58();
  v100 = (*(*(v99 - 8) + 48))(v97, 1, v99);
  sub_224A3311C(v97, &qword_27D6F4668, &unk_224DB75E0);
  v151 = v98;
  if (v100 == 1)
  {
    v176 = sub_224DABF68();
    v179 = v176;
    v101 = v136;
    sub_224DAF388();
    v177 = *&v95[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_queue];
    v102 = v177;
    v103 = sub_224DAF358();
    v104 = v138;
    (*(*(v103 - 8) + 56))(v138, 1, 1, v103);
    v175 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4690, &unk_224DB75F8);
    sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
    sub_224A33088(&qword_281351070, &unk_27D6F4690, &unk_224DB75F8);
    v95 = v130;
    v128 = sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78);
    v105 = v137;
    sub_224DAB458();
    sub_224A3311C(v104, &qword_27D6F5090, &qword_224DB5C30);

    (*(v139 + 8))(v101, v141);

    sub_224A33088(&qword_27D6F46A0, &qword_27D6F4650, &qword_224DB75C8);
    v106 = v143;
    v107 = v142;
    sub_224DAB418();
    (*(v140 + 8))(v105, v107);
    v108 = swift_allocObject();
    v109 = v171;
    v110 = v173;
    v108[2] = v171;
    v108[3] = v110;
    v111 = v146;
    v112 = v147;
    v108[4] = v146;
    v108[5] = v112;
    v113 = swift_allocObject();
    v114 = v173;
    v113[2] = v109;
    v113[3] = v114;
    v113[4] = v111;
    v113[5] = v112;
    v115 = v151;
    v113[6] = v95;
    v113[7] = v115;
    sub_224A33088(&qword_27D6F46A8, &qword_27D6F4658, &qword_224DB75D0);
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    v116 = v95;

    v117 = v145;
    v118 = sub_224DAB408();

    v96 = v173;

    (*(v144 + 8))(v106, v117);
    swift_beginAccess();
    v119 = *(v112 + 16);
    *(v112 + 16) = v118;

LABEL_15:
    v120 = v129;
    goto LABEL_7;
  }

  v120 = v129;
  sub_224A3796C(&v95[v129], &v179, &unk_27D6F4FD0, &qword_224DB75F0);
  if (v180)
  {
    v121 = __swift_project_boxed_opaque_existential_1(&v179, v180);
    v122 = v133;
    sub_224DABF98();
    v123 = *(*v121 + 48);
    __swift_project_boxed_opaque_existential_1((*v121 + 16), *(*v121 + 40));
    v124 = *(v123 + 16);
    v125 = v122;
    v126 = v135;
    sub_224DACEA8();
    v92(v125, v94);
    v127 = sub_224DA9688();
    (*(*(v127 - 8) + 56))(v126, 0, 1, v127);
    __swift_destroy_boxed_opaque_existential_1(&v179);
    v96 = v173;
    swift_storeEnumTagMultiPayload();
    sub_224B73E34(v126, v146, v147);

    sub_224A3311C(v126, &qword_27D6F4660, &qword_224DB75D8);
    v109 = v171;
LABEL_7:
    sub_224A3796C(&v95[v120], &v179, &unk_27D6F4FD0, &qword_224DB75F0);
    if (v180)
    {
      v79 = __swift_project_boxed_opaque_existential_1(&v179, v180);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_224DB74F0;
      *(v80 + 32) = 0xE500000000000000;
      v81 = v159;
      *v159 = v80;
      v82 = v160;
      v83 = v161;
      (*(v160 + 104))(v81, *MEMORY[0x277CF9B90], v161);
      v84 = *v79;
      v85 = v158;
      v86 = sub_224BD7040(v109, v96, v158);
      v87 = v172;
      v88 = MEMORY[0x28223BE20](v86);
      *(&v129 - 4) = v84;
      *(&v129 - 3) = v85;
      v128 = v81;
      v178 = 1;
      v89 = *(v84 + 336);
      MEMORY[0x28223BE20](v88);
      *(&v129 - 4) = &v178;
      *(&v129 - 3) = sub_224B7A900;
      v128 = v90;

      sub_224DAC128();

      if ((v178 & 1) == 0)
      {
        (*(v87 + 8))(v85, v157);
        (*(v82 + 8))(v81, v83);
        __swift_destroy_boxed_opaque_existential_1(&v179);

LABEL_10:

        return;
      }

      goto LABEL_20;
    }

LABEL_19:
    _Block_release(v162);
    __break(1u);
LABEL_20:
    _Block_release(v162);
    __break(1u);
  }

  _Block_release(v162);
  __break(1u);
}

uint64_t sub_224B79C74(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FileReaperScenario(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v22[-1] - v11;
  v13 = [a1 scenario];
  v14 = type metadata accessor for FileReaperProtectionConfiguration(0);
  if (v13 < 4)
  {
    v15 = (v13 + 1);
  }

  else
  {
    v15 = 3;
  }

  (*(*(v14 - 8) + 56))(v10, v15, 4, v14);
  sub_224B7A830(v10, v12);
  if (qword_281352038 != -1)
  {
    swift_once();
  }

  sub_224A3317C(qword_2813651B0 + 88, v22);
  v16 = __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  v17 = [a1 dryRun];
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = *v16;

  sub_224CCD218(v12, v17, sub_224B7A894, v18);

  sub_224B7A89C(v12);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

void sub_224B79E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v17 = (Strong + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider);
    v18 = v17[4];
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    if (sub_224DAA158())
    {
      a9(a1, a2, a3, a4, a5, a6, v22);
      (*(a8 + 16))(a8, 0);
      v19 = v22;
    }

    else
    {
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v20 = sub_224CBC42C(8u, 0, 0);
      v21 = sub_224DA9518();
      (*(a8 + 16))(a8, v21);

      v19 = v21;
    }
  }
}

void sub_224B79FBC(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue);
  BSDispatchQueueAssert();
  if (qword_281351678 != -1)
  {
LABEL_37:
    swift_once();
  }

  v5 = sub_224DAB258();
  __swift_project_value_buffer(v5, qword_2813650A8);
  v6 = v3;
  v7 = sub_224DAB228();
  v8 = sub_224DAF2A8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    BSDispatchQueueAssert();
    v11 = [*&v6[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_connection] remoteProcess];
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_224A2F000, v7, v8, "Subscribe to task service state from client: %{public}@", v9, 0xCu);
    sub_224A3311C(v10, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v10, -1, -1);
    MEMORY[0x22AA5EED0](v9, -1, -1);
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = sub_224B7A6C0;
  v67 = v12;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v65 = sub_224A3837C;
  *(&v65 + 1) = &block_descriptor_13;
  v13 = _Block_copy(&aBlock);
  v14 = objc_opt_self();

  v15 = [v14 responderWithHandler_];
  _Block_release(v13);

  [v15 setQueue_];
  v16 = [objc_allocWithZone(MEMORY[0x277CF0B58]) initWithInfo:0 responder:v15];
  v17 = *&v6[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_taskServiceSubscriptionAssertion];
  *&v6[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_taskServiceSubscriptionAssertion] = v16;
  v18 = v16;
  swift_unknownObjectRelease();
  sub_224A3317C(&v6[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient_taskService], v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4600, &qword_224DB7568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4608, &qword_224DB7570);
  if (swift_dynamicCast())
  {
    v19 = *(&v65 + 1);
    v20 = v66;
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v65 + 1));
    v3 = (*(v20 + 2))(v19, v20);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    v66 = 0;
    aBlock = 0u;
    v65 = 0u;
    sub_224A3311C(&aBlock, &unk_27D6F4610, &qword_224DB7578);
    v3 = sub_224DA11A4(MEMORY[0x277D84F90]);
  }

  v21 = 0;
  v22 = 0;
  v23 = v3 + 64;
  v24 = 1 << *(v3 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v3 + 64);
  v27 = (v24 + 63) >> 6;
  do
  {
    if (!v26)
    {
      while (1)
      {
        v28 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v28 >= v27)
        {
          goto LABEL_19;
        }

        v26 = *(v23 + 8 * v28);
        ++v21;
        if (v26)
        {
          v21 = v28;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v28 = v21;
LABEL_16:
    v29 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v30 = *(*(v3 + 56) + ((v28 << 9) | (8 * v29)));
    v31 = __OFADD__(v22, v30);
    v22 += v30;
  }

  while (!v31);
  __break(1u);
LABEL_19:
  v61 = v3;
  v58 = v18;
  v59 = a2;
  v32 = v6;
  v33 = sub_224DAB228();
  v34 = sub_224DAF2A8();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138543618;
    BSDispatchQueueAssert();
    v37 = [*&v32[OBJC_IVAR____TtC10ChronoCoreP33_4EC2EC78A16D5F23EB13A031A52F0A1C18ToolServicesClient__queue_connection] remoteProcess];
    *(v35 + 4) = v37;
    *v36 = v37;
    *(v35 + 12) = 2050;
    *(v35 + 14) = v22;
    _os_log_impl(&dword_224A2F000, v33, v34, "Subscribed to task service state from client: %{public}@, current count: %{public}ld", v35, 0x16u);
    sub_224A3311C(v36, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v36, -1, -1);
    MEMORY[0x22AA5EED0](v35, -1, -1);
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C40, &qword_224DB7580);
  a2 = v61;
  v38 = sub_224DAFB88();
  v39 = v61;
  v40 = 0;
  v41 = 1 << *(v61 + 32);
  v42 = *(v61 + 64);
  v43 = -1;
  if (v41 < 64)
  {
    v43 = ~(-1 << v41);
  }

  v44 = v43 & v42;
  v45 = (v41 + 63) >> 6;
  v62 = v38;
  v60 = v38 + 64;
  if ((v43 & v42) != 0)
  {
    while (1)
    {
      v46 = __clz(__rbit64(v44));
      v44 &= v44 - 1;
LABEL_30:
      a2 = v46 | (v40 << 6);
      v49 = (*(v39 + 48) + 16 * a2);
      v3 = *v49;
      v4 = v49[1];
      v50 = *(*(v39 + 56) + 8 * a2);
      v51 = objc_allocWithZone(MEMORY[0x277CCABB0]);

      v52 = [v51 initWithInteger_];
      *(v60 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
      v53 = (v62[6] + 16 * a2);
      *v53 = v3;
      v53[1] = v4;
      *(v62[7] + 8 * a2) = v52;
      v54 = v62[2];
      v31 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v31)
      {
        break;
      }

      v39 = v61;
      v62[2] = v55;
      if (!v44)
      {
        goto LABEL_25;
      }
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_25:
  v47 = v40;
  while (1)
  {
    v40 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      goto LABEL_35;
    }

    if (v40 >= v45)
    {
      break;
    }

    v48 = *(v23 + 8 * v40);
    ++v47;
    if (v48)
    {
      v46 = __clz(__rbit64(v48));
      v44 = (v48 - 1) & v48;
      goto LABEL_30;
    }
  }

  sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
  v56 = v58;
  v57 = sub_224DAECC8();
  (*(v59 + 16))(v59, v57, v56, 0);
}

uint64_t sub_224B7A6C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_224ACED1C;

  return sub_224B760C8(v2, v3);
}

unint64_t sub_224B7A774()
{
  result = qword_27D6F4638;
  if (!qword_27D6F4638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F4630, &unk_224DB75B8);
    sub_224B7A940(&unk_27D6F4640, MEMORY[0x277CFA080]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4638);
  }

  return result;
}

uint64_t sub_224B7A830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileReaperScenario(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B7A89C(uint64_t a1)
{
  v2 = type metadata accessor for FileReaperScenario(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224B7A940(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224B7A9A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_224B7AA14()
{
  result = qword_27D6F46B0;
  if (!qword_27D6F46B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F46B0);
  }

  return result;
}

uint64_t sub_224B7AA70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_224ACFF60;

  return sub_224B72F2C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_224B7AB38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_224ACFF60;

  return sub_224B717CC(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t objectdestroy_85Tm(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t objectdestroy_148Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

void sub_224B7ACEC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_224B6F8E8(a1);
}

uint64_t objectdestroy_179Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_224B7AD34(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_224B6FBC8(a1);
}

unint64_t sub_224B7AD54()
{
  result = qword_27D6F4778;
  if (!qword_27D6F4778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4778);
  }

  return result;
}

uint64_t sub_224B7ADF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v72 = a2;
  v71 = sub_224DACB98();
  v69 = *(v71 - 8);
  v3 = *(v69 + 64);
  MEMORY[0x28223BE20](v71);
  v70 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_224DACB08();
  v66 = *(v67 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v68 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_224DACB28();
  v64 = *(v65 - 8);
  v7 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DA9878();
  v84 = *(v10 - 8);
  v11 = *(v84 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v63 - v15;
  v17 = sub_224DAC268();
  v86 = *(v17 - 8);
  v87 = v17;
  v18 = *(v86 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F0, &unk_224DB7850);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v63 - v26;
  v28 = sub_224DABDB8();
  v29 = &v28[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v30 = *(v29 + 1);

  if (v30)
  {

LABEL_25:
    v60 = sub_224DACC88();
    return (*(*(v60 - 8) + 56))(v72, 1, 1, v60);
  }

  else
  {
    v85 = v25;
    v83 = v20;
    v76 = v16;
    v77 = v14;
    v79 = v10;
    v63 = v9;
    v31 = a1 + 64;
    v32 = 1 << *(a1 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(a1 + 64);
    v75 = OBJC_IVAR____TtC10ChronoCore39MobileSnapshotReloadConfigurationPolicy_expirationDuration;
    v73 = (v32 + 63) >> 6;
    v35 = v86;
    v81 = v86 + 32;
    v82 = v86 + 16;
    v74 = (v84 + 8);
    v84 = v86 + 8;

    v37 = 0;
    v38 = v87;
    v78 = v27;
    v88 = a1;
    while (v34)
    {
      v39 = v37;
LABEL_18:
      v42 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v43 = v42 | (v39 << 6);
      v44 = v83;
      (*(v35 + 16))(v83, *(a1 + 48) + *(v35 + 72) * v43, v38);
      v45 = *(*(a1 + 56) + 8 * v43);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
      v47 = *(v46 + 48);
      v48 = *(v35 + 32);
      v49 = v85;
      v48(v85, v44, v38);
      *(v49 + v47) = v45;
      (*(*(v46 - 8) + 56))(v49, 0, 1, v46);
      v50 = v45;
LABEL_19:
      sub_224B7C0DC(v49, v27);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
      if ((*(*(v51 - 8) + 48))(v27, 1, v51) == 1)
      {

        goto LABEL_25;
      }

      v52 = *&v27[*(v51 + 48)];
      sub_224DABE68();
      a1 = v88;
      if (v90)
      {
        sub_224A39D14(&v89, v91);
        __swift_project_boxed_opaque_existential_1(v91, v91[3]);
        v53 = v77;
        sub_224DAEA88();
        v54 = *(v80 + v75);
        v55 = v76;
        sub_224DA9768();
        v56 = *v74;
        v57 = v79;
        (*v74)(v53, v79);
        sub_224DA9868();
        v58 = sub_224DA9798();
        v56(v53, v57);
        v56(v55, v57);
        if (v58)
        {
          (*(v64 + 104))(v63, *MEMORY[0x277CF9B50], v65);
          (*(v66 + 104))(v68, *MEMORY[0x277CF9B40], v67);
          (*(v69 + 104))(v70, *MEMORY[0x277CF9BE8], v71);
          sub_224DACC48();
          v61 = v72;
          sub_224DACC38();

          v62 = sub_224DACC88();
          (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
          __swift_destroy_boxed_opaque_existential_1(v91);
          return (*v84)(v78, v87);
        }

        __swift_destroy_boxed_opaque_existential_1(v91);
        v38 = v87;
        a1 = v88;
        v27 = v78;
      }

      else
      {

        sub_224B7C14C(&v89);
        v38 = v87;
      }

      result = (*v84)(v27, v38);
      v35 = v86;
    }

    if (v73 <= v37 + 1)
    {
      v40 = v37 + 1;
    }

    else
    {
      v40 = v73;
    }

    v41 = v40 - 1;
    while (1)
    {
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v39 >= v73)
      {
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
        v49 = v85;
        (*(*(v59 - 8) + 56))(v85, 1, 1, v59);
        v34 = 0;
        v37 = v41;
        goto LABEL_19;
      }

      v34 = *(v31 + 8 * v39);
      ++v37;
      if (v34)
      {
        v37 = v39;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_224B7B708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v45 = a4;
  v46 = a5;
  v47 = a1;
  v48 = a2;
  v5 = sub_224DACB08();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DACB28();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DACB98();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v40 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = (&v40 - v22);
  v24 = sub_224DABDB8();
  v25 = &v24[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v26 = *(v25 + 1);

  if (v26)
  {

    v27 = MEMORY[0x277CF98A8];
LABEL_9:
    v35 = 1;
    v34 = v47;
LABEL_10:
    v36 = sub_224DACC88();
    (*(*(v36 - 8) + 56))(v34, v35, 1, v36);
    v37 = *v27;
    v38 = sub_224DABD68();
    return (*(*(v38 - 8) + 104))(v48, v37, v38);
  }

  v43 = v12;
  v44 = v23;
  v42 = v8;
  if (!sub_224B7BDE0(v46) || sub_224DACBB8() < 1)
  {
    sub_224DAE1E8();
    sub_224DAE1A8();
    v27 = MEMORY[0x277CF98B0];
    goto LABEL_9;
  }

  sub_224DACC68();
  v28 = *MEMORY[0x277CF9BF0];
  v46 = *(v14 + 104);
  (v46)(v18, v28, v13);
  v29 = sub_224DACB88();
  v30 = *(v14 + 8);
  v30(v18, v13);
  v30(v21, v13);
  v41 = v30;
  if (v29 & 1) != 0 || (sub_224DACC68(), (v46)(v18, *MEMORY[0x277CF9B60], v13), v31 = sub_224DACB88(), v30(v18, v13), v30(v21, v13), (v31))
  {
    v32 = swift_allocObject();
    *(v32 + 16) = 0xD000000000000019;
    *(v32 + 24) = 0x8000000224DC58C0;
    v33 = v44;
    *v44 = v32;
    (v46)(v33, *MEMORY[0x277CF9B70], v13);
    sub_224DACBB8();
    v34 = v47;
LABEL_13:
    sub_224DACC58();
    sub_224DACC08();
    (*(v14 + 16))(v21, v33, v13);
    sub_224DACC28();
    sub_224DACC18();
    v41(v33, v13);
    v35 = 0;
    v27 = MEMORY[0x277CF98B8];
    goto LABEL_10;
  }

  sub_224DACC68();
  result = sub_224DACBB8();
  if (!__OFSUB__(result, 1))
  {
    v34 = v47;
    v33 = v44;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_224B7BBB0()
{
  v1 = OBJC_IVAR____TtC10ChronoCore39MobileSnapshotReloadConfigurationPolicy_logger;
  v2 = sub_224DAB258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MobileSnapshotReloadConfigurationPolicy()
{
  result = qword_281352538;
  if (!qword_281352538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224B7BCA0()
{
  result = sub_224DAB258();
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

unint64_t sub_224B7BD4C()
{
  result = qword_281350E50;
  if (!qword_281350E50)
  {
    sub_224DAC268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350E50);
  }

  return result;
}

BOOL sub_224B7BDE0(void *a1)
{
  v2 = sub_224DAE6E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 domain];
  v8 = sub_224DAEE18();
  v10 = v9;

  v11 = [a1 code];
  v12 = *MEMORY[0x277CFA188];
  if (sub_224DAEE18() == v8 && v13 == v10)
  {
  }

  else
  {
    v15 = sub_224DAFD88();

    if ((v15 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3C10], v2);
  v16 = sub_224DAE6D8();
  (*(v3 + 8))(v6, v2);
  if (v16 == v11)
  {
    goto LABEL_17;
  }

LABEL_9:
  if (sub_224DAEE18() == v8 && v17 == v10)
  {
  }

  else
  {
    v19 = sub_224DAFD88();

    if ((v19 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3C60], v2);
  v20 = sub_224DAE6D8();
  (*(v3 + 8))(v6, v2);
  if (v20 == v11)
  {
LABEL_17:

    return 0;
  }

LABEL_18:
  if (sub_224DAEE18() == v8 && v22 == v10)
  {
  }

  else
  {
    v23 = sub_224DAFD88();

    if ((v23 & 1) == 0)
    {

      return 1;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3BF0], v2);
  v24 = sub_224DAE6D8();

  (*(v3 + 8))(v6, v2);
  return v24 != v11;
}

uint64_t sub_224B7C0DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F0, &unk_224DB7850);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B7C14C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3CB0, &unk_224DB7860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224B7C210(uint64_t *a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, uint64_t a6, void (*a7)(Class, void), uint64_t a8, _BYTE *a9)
{
  v187 = a8;
  v188 = a7;
  v182 = a5;
  v211 = a4;
  v193 = a1;
  v190 = a9;
  v179 = sub_224DAE6E8();
  v178 = *(v179 - 8);
  v11 = *(v178 + 64);
  MEMORY[0x28223BE20](v179);
  v177 = &v166[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4270, &qword_224DB6580);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v174 = &v166[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v173 = &v166[-v17];
  v189 = sub_224DAB1F8();
  v186 = *(v189 - 8);
  v18 = *(v186 + 64);
  v19 = MEMORY[0x28223BE20](v189);
  v176 = &v166[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v175 = &v166[-v21];
  v185 = sub_224DABE18();
  v183 = *(v185 - 8);
  v22 = *(v183 + 64);
  v23 = MEMORY[0x28223BE20](v185);
  v25 = &v166[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v27 = &v166[-v26];
  v214 = sub_224DAB258();
  v28 = *(v214 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v214);
  v32 = &v166[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x28223BE20](v30);
  v171 = &v166[-v34];
  v35 = MEMORY[0x28223BE20](v33);
  v191 = &v166[-v36];
  MEMORY[0x28223BE20](v35);
  v215 = &v166[-v37];
  v38 = sub_224DAC268();
  v39 = *(v38 - 8);
  v40 = v39[8];
  v41 = MEMORY[0x28223BE20](v38);
  v181 = &v166[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x28223BE20](v41);
  v198 = &v166[-v44];
  v45 = MEMORY[0x28223BE20](v43);
  v217 = &v166[-v46];
  MEMORY[0x28223BE20](v45);
  v204 = &v166[-v47];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4818, &qword_224DB79C0);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v48 - 8);
  v209 = &v166[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v50);
  v208 = &v166[-v52];
  v184 = swift_projectBox();
  v222.isa = sub_224A60D5C(MEMORY[0x277D84F90]);
  v53 = *(a2 + 64);
  v195 = a2 + 64;
  v54 = 1 << *(a2 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & v53;
  v202 = OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger;
  v210 = (v54 + 63) >> 6;
  v216 = (v39 + 2);
  v218 = (v39 + 4);
  v205 = v39;
  v207 = (v39 + 1);
  v201 = (v28 + 16);
  v203 = (v28 + 8);
  v180 = 0x8000000224DC7DB0;
  v206 = a2;

  LODWORD(v192) = 0;
  v57 = 0;
  v196 = 0;
  *&v58 = 136446210;
  v194 = v58;
  *&v58 = 136446466;
  v169 = v58;
  v172 = v32;
  v170 = v25;
  v212 = v27;
  v213 = v38;
  v200 = a3;
LABEL_4:
  v59 = v57;
LABEL_5:
  v60 = v215;
  v61 = v210;
  if (!v56)
  {
LABEL_7:
    if (v61 <= v59 + 1)
    {
      v63 = v59 + 1;
    }

    else
    {
      v63 = v61;
    }

    v64 = v63 - 1;
    while (1)
    {
      v62 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      if (v62 >= v61)
      {
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4820, qword_224DB79C8);
        v75 = v209;
        (*(*(v99 - 8) + 56))(v209, 1, 1, v99);
        v56 = 0;
        goto LABEL_15;
      }

      v56 = *(v195 + 8 * v62);
      ++v59;
      if (v56)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_53:
    swift_once();
    goto LABEL_45;
  }

  while (1)
  {
    v62 = v59;
LABEL_14:
    v65 = __clz(__rbit64(v56));
    v56 &= v56 - 1;
    v66 = v65 | (v62 << 6);
    v67 = v206;
    v68 = v205;
    v69 = v204;
    (v205[2])(v204, *(v206 + 48) + v205[9] * v66, v38);
    v70 = *(*(v67 + 56) + 8 * v66);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4820, qword_224DB79C8);
    v72 = v38;
    v73 = *(v71 + 48);
    v74 = v68[4];
    v75 = v209;
    v74(v209, v69, v72);
    *&v75[v73] = v70;
    (*(*(v71 - 8) + 56))(v75, 0, 1, v71);
    v76 = v70;
    v64 = v62;
    v27 = v212;
    v60 = v215;
LABEL_15:
    v77 = v75;
    v78 = v208;
    sub_224A44E4C(v77, v208, &qword_27D6F4818, &qword_224DB79C0);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4820, qword_224DB79C8);
    v80 = (*(*(v79 - 8) + 48))(v78, 1, v79);
    v81 = v217;
    if (v80 == 1)
    {
      break;
    }

    v82 = v78;
    v39 = v213;
    (*v218)(v81, v82, v213);
    if (*(a3 + 16))
    {
      v83 = sub_224A61E5C(v81);
      if (v84)
      {
        v100 = (*(a3 + 56) + 16 * v83);
        v102 = *v100;
        v101 = v100[1];
        v103 = v193;
        if (v193)
        {
          v199 = v64;
          v107 = v214;
          swift_willThrow();
          swift_unknownObjectRetain();
          v196 = 0;
          v108 = v103;
        }

        else
        {
          v104 = swift_unknownObjectRetain();
          v105 = MEMORY[0x22AA5E4C0](v104);
          v39 = v217;
          v106 = v196;
          sub_224B7D948(v102, v101, v211, v217, &v222, &v220);
          if (!v106)
          {
            v196 = 0;
            objc_autoreleasePoolPop(v105);
            swift_unknownObjectRelease();
            v38 = v213;
            (*v207)(v39, v213);
            v59 = v64;
            goto LABEL_5;
          }

          v199 = v64;
          v107 = v214;
          v108 = v220;
          objc_autoreleasePoolPop(v105);
          v196 = 0;
          v103 = v193;
        }

        v197 = v108;
        swift_getErrorValue();
        v109 = v219;
        v110 = v103;
        v39 = sub_224D1680C(v109);
        v112 = v111;
        swift_getObjectType();
        v220 = 0;
        v221 = 0xE000000000000000;
        sub_224DAF938();

        v220 = 0xD000000000000020;
        v221 = v180;
        v192 = v39;
        MEMORY[0x22AA5D210](v39, v112);
        sub_224DABD08();

        (*v201)(v191, v211 + v202, v107);
        v113 = v217;
        v114 = v181;
        v38 = v213;
        (*v216)(v181, v217, v213);

        v115 = sub_224DAB228();
        v116 = sub_224DAF288();

        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          v168 = swift_slowAlloc();
          v220 = v168;
          *v117 = v169;
          sub_224A60144(&qword_281350E40, MEMORY[0x277CF9978]);
          v167 = v116;
          v118 = sub_224DAFD28();
          v120 = v119;
          v39 = *v207;
          (*v207)(v114, v213);
          v121 = sub_224A33F74(v118, v120, &v220);

          *(v117 + 4) = v121;
          *(v117 + 12) = 2082;
          v122 = sub_224A33F74(v192, v112, &v220);

          *(v117 + 14) = v122;
          _os_log_impl(&dword_224A2F000, v115, v167, "%{public}s reload: failed with error %{public}s)", v117, 0x16u);
          v123 = v168;
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v123, -1, -1);
          v124 = v117;
          v38 = v213;
          MEMORY[0x22AA5EED0](v124, -1, -1);
          swift_unknownObjectRelease();

          (*v203)(v191, v214);
          (v39)(v217, v38);
        }

        else
        {
          swift_unknownObjectRelease();

          v125 = *v207;
          (*v207)(v114, v38);
          (*v203)(v191, v214);
          (v125)(v113, v38);
        }

        LODWORD(v192) = 1;
        a3 = v200;
        v27 = v212;
        v57 = v199;
        goto LABEL_4;
      }
    }

    (*v201)(v60, v211 + v202, v214);
    v85 = v198;
    (*v216)(v198, v81, v39);
    v86 = sub_224DAB228();
    v87 = sub_224DAF288();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v199 = v64;
      v90 = v89;
      v220 = v89;
      *v88 = v194;
      sub_224A60144(&qword_281350E40, MEMORY[0x277CF9978]);
      v91 = sub_224DAFD28();
      v92 = v85;
      v94 = v93;
      v197 = *v207;
      (v197)(v92, v39);
      v95 = sub_224A33F74(v91, v94, &v220);

      *(v88 + 4) = v95;
      _os_log_impl(&dword_224A2F000, v86, v87, "%{public}s reload: missing file promise", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v90);
      v96 = v214;
      v60 = v215;
      MEMORY[0x22AA5EED0](v90, -1, -1);
      MEMORY[0x22AA5EED0](v88, -1, -1);

      (*v203)(v60, v96);
      (v197)(v217, v39);
      v27 = v212;
      v59 = v199;
    }

    else
    {

      v97 = v85;
      v98 = *v207;
      (*v207)(v97, v39);
      (*v203)(v60, v214);
      (v98)(v81, v39);
      v59 = v64;
    }

    a3 = v200;
    v38 = v39;
    v61 = v210;
    if (!v56)
    {
      goto LABEL_7;
    }
  }

  v126 = *v201;
  v127 = v183;
  v128 = (v183 + 16);
  if ((v192 & 1) == 0)
  {
    v140 = v172;
    v126(v172, v211 + v202, v214);
    v141 = v170;
    v142 = v185;
    (*v128)(v170, v182, v185);
    v143 = sub_224DAB228();
    v144 = sub_224DAF2A8();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v220 = v146;
      *v145 = v194;
      sub_224A60144(&qword_281350E70, MEMORY[0x277CF98E0]);
      v147 = sub_224DAFD28();
      v149 = v148;
      (*(v127 + 8))(v141, v142);
      v150 = sub_224A33F74(v147, v149, &v220);

      *(v145 + 4) = v150;
      _os_log_impl(&dword_224A2F000, v143, v144, "%{public}s reload: succeeded", v145, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v146);
      MEMORY[0x22AA5EED0](v146, -1, -1);
      MEMORY[0x22AA5EED0](v145, -1, -1);
    }

    else
    {

      (*(v127 + 8))(v141, v142);
    }

    (*v203)(v140, v214);
    v60 = v190;
    v155 = v189;
    v156 = v184;
    swift_beginAccess();
    v157 = v156;
    v158 = v174;
    sub_224A3796C(v157, v174, &qword_27D6F4270, &qword_224DB6580);
    v159 = v186;
    v160 = (*(v186 + 48))(v158, 1, v155);
    v161 = v176;
    if (v160 == 1)
    {
      sub_224A3311C(v158, &qword_27D6F4270, &qword_224DB6580);
    }

    else
    {
      (*(v159 + 32))(v176, v158, v155);
      sub_224DAF4A8();
      if (qword_2813507E8 != -1)
      {
        swift_once();
      }

      sub_224DAB1D8();
      (*(v159 + 8))(v161, v155);
    }

    v188(v222.isa, 0);
    goto LABEL_51;
  }

  v129 = v171;
  v126(v171, v211 + v202, v214);
  v130 = v185;
  (*v128)(v27, v182, v185);
  v131 = sub_224DAB228();
  v132 = sub_224DAF2A8();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    v134 = v27;
    v135 = swift_slowAlloc();
    v220 = v135;
    *v133 = v194;
    sub_224A60144(&qword_281350E70, MEMORY[0x277CF98E0]);
    v136 = sub_224DAFD28();
    v138 = v137;
    (*(v127 + 8))(v134, v130);
    v139 = sub_224A33F74(v136, v138, &v220);

    *(v133 + 4) = v139;
    _os_log_impl(&dword_224A2F000, v131, v132, "%{public}s reload: failed", v133, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v135);
    MEMORY[0x22AA5EED0](v135, -1, -1);
    MEMORY[0x22AA5EED0](v133, -1, -1);
  }

  else
  {

    (*(v127 + 8))(v27, v130);
  }

  (*v203)(v129, v214);
  v60 = v190;
  a3 = v189;
  v151 = v184;
  swift_beginAccess();
  v152 = v151;
  v153 = v173;
  sub_224A3796C(v152, v173, &qword_27D6F4270, &qword_224DB6580);
  v39 = v186;
  v154 = (*(v186 + 48))(v153, 1, a3);
  v27 = v175;
  if (v154 == 1)
  {
    sub_224A3311C(v153, &qword_27D6F4270, &qword_224DB6580);
    goto LABEL_46;
  }

  (v39[4])(v175, v153, a3);
  sub_224DAF4A8();
  if (qword_2813507E8 != -1)
  {
    goto LABEL_53;
  }

LABEL_45:
  sub_224DAB1D8();
  (v39[1])(v27, a3);
LABEL_46:
  sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
  (*(v178 + 104))(v177, *MEMORY[0x277CE3C40], v179);
  v162 = v193;
  v163 = sub_224DAF638();
  v188(v163, 1);

LABEL_51:
  swift_beginAccess();
  v164 = *(v60 + 2);
  *(v60 + 2) = 0;
}

void sub_224B7D948(uint64_t a1, _DWORD *a2, NSObject *a3, uint64_t *a4, NSObject *a5, uint64_t *a6)
{
  v203 = a6;
  v189 = a5;
  v197 = a4;
  v193 = a3;
  v204 = a2;
  v210[5] = *MEMORY[0x277D85DE8];
  v191 = sub_224DAE6E8();
  v190 = *(v191 - 8);
  v6 = *(v190 + 64);
  MEMORY[0x28223BE20](v191);
  v192 = &v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_224DAC268();
  v195 = *(v196 - 8);
  v8 = *(v195 + 64);
  v9 = MEMORY[0x28223BE20](v196);
  v186 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v188 = &v169 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v187 = &v169 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v169 - v16;
  MEMORY[0x28223BE20](v15);
  v199 = &v169 - v18;
  v201 = sub_224DAB258();
  v194 = *(v201 - 8);
  v19 = *(v194 + 64);
  v20 = MEMORY[0x28223BE20](v201);
  v22 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v169 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v169 - v27;
  MEMORY[0x28223BE20](v26);
  v200 = &v169 - v29;
  v206 = sub_224DA9688();
  v202 = *(v206 - 8);
  v30 = *(v202 + 64);
  v31 = MEMORY[0x28223BE20](v206);
  v33 = &v169 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v169 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v169 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v198 = &v169 - v41;
  MEMORY[0x28223BE20](v40);
  v43 = &v169 - v42;
  swift_getObjectType();
  v44 = v205;
  sub_224DABCF8();
  if (v44)
  {
    goto LABEL_17;
  }

  v181 = v36;
  v182 = v39;
  v185 = v33;
  v173 = v17;
  v175 = v28;
  v172 = v22;
  v174 = v25;
  v204 = 0;
  v45 = v194;
  v46 = *(v194 + 16);
  v176 = OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger;
  v178 = v194 + 16;
  v177 = v46;
  v46(v200, &v193[OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger], v201);
  v47 = v195;
  v48 = *(v195 + 16);
  v49 = v196;
  v180 = v195 + 16;
  v179 = v48;
  v48(v199, v197, v196);
  v50 = v202;
  v51 = *(v202 + 16);
  v205 = v43;
  v184 = v202 + 16;
  v183 = v51;
  v51(v198, v43, v206);
  v52 = sub_224DAB228();
  v53 = sub_224DAF278();
  v54 = v45;
  if (os_log_type_enabled(v52, v53))
  {
    v55 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v210[0] = v171;
    *v55 = 136446466;
    sub_224A60144(&qword_281350E40, MEMORY[0x277CF9978]);
    v56 = v199;
    v170 = v52;
    v57 = sub_224DAFD28();
    v58 = v47;
    v60 = v59;
    v199 = *(v58 + 8);
    (v199)(v56, v49);
    v61 = sub_224A33F74(v57, v60, v210);

    *(v55 + 4) = v61;
    *(v55 + 12) = 2082;
    v62 = v181;
    v63 = v198;
    sub_224DA9548();
    LOBYTE(v56) = v53;
    v64 = v182;
    sub_224DA9568();
    v65 = *(v50 + 8);
    v65(v62, v206);
    sub_224A60144(&qword_281351A70, MEMORY[0x277CC9260]);
    v66 = sub_224DAFD28();
    v68 = v67;
    v65(v64, v206);
    v65(v63, v206);
    v69 = sub_224A33F74(v66, v68, v210);

    *(v55 + 14) = v69;
    v70 = v170;
    _os_log_impl(&dword_224A2F000, v170, v56, "%{public}s: %{public}s", v55, 0x16u);
    v71 = v171;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v71, -1, -1);
    MEMORY[0x22AA5EED0](v55, -1, -1);
  }

  else
  {

    v65 = *(v50 + 8);
    v65(v198, v206);
    v72 = v199;
    v199 = *(v47 + 8);
    (v199)(v72, v49);
  }

  v73 = *(v54 + 8);
  v74 = v201;
  v73(v200, v201);
  v200 = objc_opt_self();
  v75 = [v200 defaultManager];
  v76 = v205;
  sub_224DA9658();
  v77 = sub_224DAEDE8();

  v210[0] = 0;
  v78 = [v75 attributesOfItemAtPath:v77 error:v210];

  v79 = v210[0];
  if (!v78)
  {
    v109 = v210[0];
    v108 = sub_224DA9528();

    swift_willThrow();
LABEL_16:
    v65(v76, v206);
    v44 = v108;
LABEL_17:
    *v203 = v44;
    goto LABEL_18;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_224A60144(&qword_281350A08, type metadata accessor for FileAttributeKey);
  v80 = sub_224DAECE8();
  v81 = v79;

  if (*(v80 + 16) && (v82 = sub_224B0BA4C(*MEMORY[0x277CCA1C0]), (v83 & 1) != 0))
  {
    sub_224A33E0C(*(v80 + 56) + 32 * v82, v210);

    sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v84 = v209[0];
      if ([v209[0] unsignedLongLongValue] > 0xA00000)
      {
        v198 = v65;
        v85 = v74;
        v177(v175, &v193[v176], v74);
        v86 = v173;
        v87 = v196;
        v179(v173, v197, v196);
        v88 = v84;
        v89 = sub_224DAB228();
        v90 = sub_224DAF288();

        v91 = os_log_type_enabled(v89, v90);
        v204 = v88;
        if (v91)
        {
          v92 = swift_slowAlloc();
          LODWORD(v193) = v90;
          v93 = v87;
          v94 = v92;
          v95 = swift_slowAlloc();
          v197 = swift_slowAlloc();
          v210[0] = v197;
          *v94 = 136446466;
          sub_224A60144(&qword_281350E40, MEMORY[0x277CF9978]);
          v189 = v89;
          v96 = sub_224DAFD28();
          v98 = v97;
          (v199)(v86, v93);
          v99 = sub_224A33F74(v96, v98, v210);
          v76 = v205;

          *(v94 + 4) = v99;
          *(v94 + 12) = 2114;
          *(v94 + 14) = v88;
          *v95 = v88;
          v100 = v88;
          v101 = v189;
          _os_log_impl(&dword_224A2F000, v189, v193, "%{public}s reload: failed with too large timeline archive %{public}@", v94, 0x16u);
          sub_224A3311C(v95, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v95, -1, -1);
          v102 = v197;
          __swift_destroy_boxed_opaque_existential_1(v197);
          MEMORY[0x22AA5EED0](v102, -1, -1);
          MEMORY[0x22AA5EED0](v94, -1, -1);

          v103 = v175;
          v104 = v201;
        }

        else
        {

          (v199)(v86, v87);
          v103 = v175;
          v104 = v85;
        }

        v73(v103, v104);
        v147 = v198;
        v148 = v192;
        v149 = [v200 defaultManager];
        v150 = sub_224DA95F8();
        v210[0] = 0;
        v151 = [v149 removeItemAtURL:v150 error:v210];

        v152 = v191;
        if (v151)
        {
          v153 = v210[0];
        }

        else
        {
          v154 = v210[0];
          v155 = sub_224DA9528();

          swift_willThrow();
        }

        v156 = v190;
        v157 = v204;
        sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
        (*(v156 + 104))(v148, *MEMORY[0x277CE3C40], v152);
        v158 = sub_224DAF638();
        swift_willThrow();

        v147(v76, v206);
        v44 = v158;
        goto LABEL_17;
      }
    }
  }

  else
  {
  }

  v105 = v185;
  sub_224A3B79C(0, &qword_281350B08, 0x277CCA9F8);
  v183(v105, v76, v206);
  v106 = v204;
  v107 = sub_224B83FBC(v105);
  v108 = v106;
  if (v106)
  {
    goto LABEL_16;
  }

  v111 = v107;
  sub_224DAE6A8();
  v112 = sub_224DAE698();
  v204 = 0;
  v198 = v65;

  v185 = v112;
  v207 = v112;
  sub_224DAEC88();
  sub_224DAEAB8();
  __swift_project_boxed_opaque_existential_1(v210, v210[3]);
  v113 = *(sub_224DAEAC8() + 16);

  if (!v113)
  {
    v129 = v172;
    v177(v172, &v193[v176], v74);
    v130 = v186;
    v131 = v196;
    v179(v186, v197, v196);
    v132 = sub_224DAB228();
    v133 = sub_224DAF288();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v204 = v134;
      v135 = swift_slowAlloc();
      v209[0] = v135;
      *v134 = 136446210;
      sub_224A60144(&qword_281350E40, MEMORY[0x277CF9978]);
      v197 = v132;
      v136 = sub_224DAFD28();
      v137 = v133;
      v139 = v138;
      (v199)(v130, v131);
      v140 = sub_224A33F74(v136, v139, v209);
      v76 = v205;

      v141 = v204;
      *(v204 + 1) = v140;
      v142 = v197;
      _os_log_impl(&dword_224A2F000, v197, v137, "%{public}s reload: failed with bad archive", v141, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v135);
      MEMORY[0x22AA5EED0](v135, -1, -1);
      MEMORY[0x22AA5EED0](v141, -1, -1);

      v143 = v129;
      v144 = v201;
    }

    else
    {

      (v199)(v130, v131);
      v143 = v129;
      v144 = v74;
    }

    v73(v143, v144);
    v159 = v192;
    v160 = [v200 defaultManager];
    v161 = sub_224DA95F8();
    v209[0] = 0;
    v162 = [v160 removeItemAtURL:v161 error:v209];

    v163 = v191;
    if (v162)
    {
      v164 = v209[0];
    }

    else
    {
      v165 = v209[0];
      v166 = sub_224DA9528();

      swift_willThrow();
    }

    v167 = v190;
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v167 + 104))(v159, *MEMORY[0x277CE3C40], v163);
    v168 = sub_224DAF638();
    swift_willThrow();

    (v198)(v76, v206);
    __swift_destroy_boxed_opaque_existential_1(v210);
    v44 = v168;
    goto LABEL_17;
  }

  v114 = v174;
  v177(v174, &v193[v176], v74);
  v115 = v187;
  v116 = v197;
  v117 = v196;
  v179(v187, v197, v196);
  sub_224A3317C(v210, v209);
  v118 = sub_224DAB228();
  LODWORD(v203) = sub_224DAF2A8();
  if (os_log_type_enabled(v118, v203))
  {
    v119 = swift_slowAlloc();
    v200 = swift_slowAlloc();
    v208 = v200;
    *v119 = 136446466;
    sub_224A60144(&qword_281350E40, MEMORY[0x277CF9978]);
    v193 = v118;
    v120 = sub_224DAFD28();
    v122 = v121;
    (v199)(v115, v117);
    v123 = sub_224A33F74(v120, v122, &v208);

    *(v119 + 4) = v123;
    *(v119 + 12) = 2050;
    __swift_project_boxed_opaque_existential_1(v209, v209[3]);
    v124 = *(sub_224DAEAC8() + 16);

    __swift_destroy_boxed_opaque_existential_1(v209);
    *(v119 + 14) = v124;
    v125 = v193;
    _os_log_impl(&dword_224A2F000, v193, v203, "%{public}s reload: succeeded with %{public}ld entries", v119, 0x16u);
    v126 = v200;
    __swift_destroy_boxed_opaque_existential_1(v200);
    MEMORY[0x22AA5EED0](v126, -1, -1);
    v127 = v119;
    v116 = v197;
    MEMORY[0x22AA5EED0](v127, -1, -1);

    v128 = v174;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v209);

    (v199)(v115, v117);
    v128 = v114;
  }

  v73(v128, v74);
  v145 = v198;
  v146 = v188;
  v179(v188, v116, v117);
  sub_224A3317C(v210, v209);
  sub_224A61F30(v209, v146);

  v145(v76, v206);
  __swift_destroy_boxed_opaque_existential_1(v210);
LABEL_18:
  v110 = *MEMORY[0x277D85DE8];
}

uint64_t sub_224B7EEAC()
{
  v1 = v0[3];
  sub_224A3D418(v0[2]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v2 = v0[9];
  swift_unknownObjectRelease();
  v3 = OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger;
  v4 = sub_224DAB258();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TimelineReloadStrategy()
{
  result = qword_281357238;
  if (!qword_281357238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224B7EFB4()
{
  result = sub_224DAB258();
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

uint64_t sub_224B7F144(uint64_t a1, char a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  [v5 invalidate];
  return v6(a1, a2 & 1);
}

uint64_t sub_224B7F194(uint64_t *a1)
{
  v3 = *(sub_224DABE18() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_224B7C210(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_224B7F268()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_224B7F308()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_224DABC78();
  v2 = *(*v1 + 16);
  sub_224DA9BA8();
}

uint64_t sub_224B7F38C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_224B7F44C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_224DABCC8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_224B7F4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a3;
  v75 = a2;
  v76 = a1;
  v68 = *v3;
  v4 = v68;
  v5 = sub_224DACB98();
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  MEMORY[0x28223BE20](v5);
  v61 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DABCC8();
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = *(v73 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v60 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v72 = &v60 - v12;
  v13 = v4[12];
  v71 = v4[11];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = sub_224DAF728();
  v65 = *(v15 - 8);
  v66 = v15;
  v16 = *(v65 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v60 - v17;
  v19 = v4[17];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = sub_224DAF728();
  v69 = *(v20 - 8);
  v70 = v20;
  v21 = *(v69 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v60 - v22;
  v24 = sub_224DABD68();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 104))(v28, *MEMORY[0x277CF98B0], v24);
  v29 = sub_224DABD58();
  (*(v25 + 8))(v28, v24);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

  v30 = v76;
  v31 = sub_224DABCA8();
  v32 = [v31 isRemote];

  if (v32)
  {
    return 0;
  }

  if (v75)
  {
    v77 = v75;
    v34 = v68[16];
    v35 = v71;
    sub_224DAED48();
    swift_getWitnessTable();
    sub_224DAF238();
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v18, 1, TupleTypeMetadata2) == 1)
    {
      (*(v65 + 8))(v18, v66);
      (*(*(AssociatedTypeWitness - 8) + 56))(v23, 1, 1);
    }

    else
    {
      v36 = v35;
      v37 = *(TupleTypeMetadata2 + 48);
      sub_224DABE98();
      (*(*(v13 - 8) + 8))(&v18[v37], v13);
      (*(*(v36 - 8) + 8))(v18, v36);
      if ((*(*(AssociatedTypeWitness - 8) + 48))(v23, 1) != 1)
      {
        (*(v69 + 8))(v23, v70);
        v52 = v61;
        sub_224DACC68();
        v53 = sub_224DACB78();
        (*(v62 + 8))(v52, v63);
        if ((v53 & 1) == 0)
        {
          return 0;
        }

        if (qword_281351458 != -1)
        {
          swift_once();
        }

        v54 = sub_224DAB258();
        __swift_project_value_buffer(v54, qword_281364DA8);
        v40 = v73;
        v41 = v74;
        v39 = v60;
        (*(v73 + 16))(v60, v30, v74);
        v42 = sub_224DAB228();
        v43 = sub_224DAF288();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v77 = v45;
          *v44 = 136446210;
          v55 = sub_224DABC78();
          v56 = v39;
          v58 = v57;
          (*(v40 + 8))(v56, v41);
          v59 = sub_224A33F74(v55, v58, &v77);

          *(v44 + 4) = v59;
          v51 = "[%{public}s] Ending activity because of failure to reload mandatory update repeatedly.";
          goto LABEL_13;
        }

LABEL_19:

        (*(v40 + 8))(v39, v41);
        goto LABEL_20;
      }
    }

    (*(v69 + 8))(v23, v70);
  }

  if (qword_281351458 != -1)
  {
    swift_once();
  }

  v38 = sub_224DAB258();
  __swift_project_value_buffer(v38, qword_281364DA8);
  v39 = v72;
  v40 = v73;
  v41 = v74;
  (*(v73 + 16))(v72, v30, v74);
  v42 = sub_224DAB228();
  v43 = sub_224DAF288();
  if (!os_log_type_enabled(v42, v43))
  {
    goto LABEL_19;
  }

  v44 = swift_slowAlloc();
  v45 = swift_slowAlloc();
  v77 = v45;
  *v44 = 136446210;
  v46 = sub_224DABC78();
  v47 = v39;
  v49 = v48;
  (*(v40 + 8))(v47, v41);
  v50 = sub_224A33F74(v46, v49, &v77);

  *(v44 + 4) = v50;
  v51 = "[%{public}s] Ending activity because it failed to load its initial content repeatedly.";
LABEL_13:
  _os_log_impl(&dword_224A2F000, v42, v43, v51, v44, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v45);
  MEMORY[0x22AA5EED0](v45, -1, -1);
  MEMORY[0x22AA5EED0](v44, -1, -1);

LABEL_20:
  sub_224B7F308();
  return 1;
}

uint64_t sub_224B7FD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v188 = a5;
  v187 = a4;
  v205 = a3;
  v185 = a2;
  v203 = a1;
  v193 = sub_224DACC88();
  v191 = *(v193 - 8);
  v5 = *(v191 + 64);
  MEMORY[0x28223BE20](v193);
  v190 = &v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_224DAB258();
  v195 = *(v192 - 8);
  v7 = *(v195 + 64);
  MEMORY[0x28223BE20](v192);
  v194 = &v163 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_224DABCC8();
  v204 = *(v201 - 8);
  v9 = *(v204 + 64);
  v10 = MEMORY[0x28223BE20](v201);
  v189 = &v163 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = v11;
  MEMORY[0x28223BE20](v10);
  v184 = &v163 - v12;
  v182 = sub_224DACB98();
  v181 = *(v182 - 8);
  v13 = *(v181 + 64);
  MEMORY[0x28223BE20](v182);
  v179 = &v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4030, &unk_224DB5630);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v180 = &v163 - v17;
  v178 = sub_224DA9908();
  v177 = *(v178 - 8);
  v18 = *(v177 + 64);
  MEMORY[0x28223BE20](v178);
  v176 = &v163 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_224DA9878();
  v198 = *(v20 - 1);
  v199 = v20;
  v21 = *(v198 + 64);
  MEMORY[0x28223BE20](v20);
  v174 = &v163 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for ExtensionTask.Identifier(0);
  v23 = *(*(v186 - 1) + 64);
  MEMORY[0x28223BE20](v186);
  v175 = &v163 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_224DACB08();
  v173 = *(v196 - 8);
  v25 = *(v173 + 64);
  MEMORY[0x28223BE20](v196);
  v172 = &v163 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v166 = &v163 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v165 = &v163 - v32;
  v33 = sub_224DACB28();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v163 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v200 = &v163 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v163 - v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5070, &unk_224DB3670);
  v44 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v171 = *(v28 + 72);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_224DB3100;
  v46 = *MEMORY[0x277CE3D30];
  v47 = sub_224DAE8B8();
  v48 = *(v47 - 1);
  v164 = *(v48 + 104);
  v164(v45 + v44, v46, v47);
  v49 = *(v48 + 56);
  v197 = v45;
  v170 = v44;
  v169 = v47;
  v168 = v49;
  v167 = v48 + 56;
  v49(v45 + v44, 0, 5, v47);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  v51 = *(*(v50 - 8) + 56);
  v51(v43, 1, 1, v50);
  sub_224DACC58();
  v52 = v33;
  v53 = v34;
  v54 = (*(v34 + 88))(v37, v52);
  v55 = v198;
  v56 = v199;
  if (v54 == *MEMORY[0x277CF9B58])
  {
    sub_224A3D2F8(v43, type metadata accessor for ExtensionTask.SchedulingConfiguration);
    (*(v53 + 96))(v37, v52);
    v57 = *(v50 + 48);
    (*(v55 + 32))(v43, v37, v56);
    *&v43[v57] = 0x408C200000000000;
    v51(v43, 0, 1, v50);
LABEL_8:
    v63 = v173;
    v64 = v172;
    goto LABEL_9;
  }

  if (v54 != *MEMORY[0x277CF9B50])
  {
    (*(v53 + 8))(v37, v52);
    goto LABEL_8;
  }

  v58 = v165;
  v59 = v169;
  v164(v165, *MEMORY[0x277CE3D18], v169);
  v168(v58, 0, 5, v59);
  v60 = v197;
  v62 = v197[2];
  v61 = v197[3];
  v63 = v173;
  if (v62 >= v61 >> 1)
  {
    v60 = sub_224AD946C(v61 > 1, v62 + 1, 1, v197);
  }

  v64 = v172;
  v60[2] = v62 + 1;
  v197 = v60;
  sub_224B442EC(v58, v60 + v170 + v62 * v171);
LABEL_9:
  sub_224DACC08();
  v65 = v196;
  v66 = (*(v63 + 88))(v64, v196);
  v67 = *MEMORY[0x277CF9B40];
  if (v66 == *MEMORY[0x277CF9B40])
  {
    v68 = v166;
    v168(v166, 3, 5, v169);
    v69 = v197;
    v71 = v197[2];
    v70 = v197[3];
    if (v71 >= v70 >> 1)
    {
      v69 = sub_224AD946C(v70 > 1, v71 + 1, 1, v197);
    }

    v69[2] = v71 + 1;
    v72 = v68;
    v73 = v69;
    sub_224B442EC(v72, v69 + v170 + v71 * v171);
    v74 = 0;
    v75 = v204;
  }

  else
  {
    (*(v63 + 8))(v64, v65);
    v74 = 1;
    v75 = v204;
    v73 = v197;
  }

  LODWORD(v168) = v66 == v67;
  v77 = v75 + 16;
  v76 = *(v75 + 16);
  v196 = v77;
  v197 = v76;
  v78 = v175;
  (v76)(v175);
  swift_storeEnumTagMultiPayload();
  v79 = sub_224DABCA8();
  v186 = v43;
  v80 = v43;
  v81 = v200;
  sub_224A3F63C(v80, v200, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  LODWORD(v170) = sub_224DACBD8();
  v169 = type metadata accessor for ExtensionTask(0);
  v82 = objc_allocWithZone(v169);
  sub_224DAE908();
  v83 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
  *&v82[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions] = MEMORY[0x277D84F90];
  v84 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  v172 = sub_224DAC938();
  v85 = *(v172 - 1);
  v171 = *(v85 + 56);
  v173 = v85 + 56;
  v171(&v82[v84], 1, 1, v172);
  v86 = &v82[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem];
  *v86 = 0;
  v86[1] = 0;
  v87 = &v82[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
  *v87 = 0;
  v87[1] = 0;
  v88 = &v82[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem];
  *v88 = 0;
  v88[1] = 0;
  v89 = &v82[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
  *v89 = 0;
  v89[1] = 0;
  v90 = v174;
  sub_224DA9868();
  (*(v198 + 32))(&v82[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate], v90, v199);
  *&v82[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target] = v79;
  sub_224A3F63C(v81, &v82[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration], type metadata accessor for ExtensionTask.SchedulingConfiguration);
  swift_beginAccess();
  v91 = *&v82[v83];
  *&v82[v83] = v73;
  v199 = v79;

  v92 = &v82[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost];
  *v92 = v74;
  v92[8] = v168;
  sub_224A3F63C(v78, &v82[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], type metadata accessor for ExtensionTask.Identifier);
  v93 = v176;
  sub_224DA98F8();
  v94 = v177;
  v95 = v178;
  (*(v177 + 16))(&v82[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v93, v178);
  v206[0] = sub_224DA98E8();
  sub_224A3F6A4();
  sub_224DAEF18();
  v96 = sub_224A3D19C(8);
  v98 = v97;
  v100 = v99;
  v102 = v101;

  v103 = MEMORY[0x22AA5D1C0](v96, v98, v100, v102);
  v105 = v104;

  v106 = &v82[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
  *v106 = v103;
  v106[1] = v105;
  v82[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_allowCostOverride] = v170 & 1;
  v207.receiver = v82;
  v207.super_class = v169;
  v107 = objc_msgSendSuper2(&v207, sel_init);

  (*(v94 + 8))(v93, v95);
  sub_224A3D2F8(v200, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  sub_224A3D2F8(v78, type metadata accessor for ExtensionTask.Identifier);
  v108 = v179;
  sub_224DACC68();
  v109 = v180;
  sub_224DACB38();
  (*(v181 + 8))(v108, v182);
  v171(v109, 0, 1, v172);
  v110 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  swift_beginAccess();
  sub_224A6E1D0(v109, &v107[v110]);
  swift_endAccess();
  v111 = swift_allocObject();
  v111[2] = 0;
  v112 = v184;
  v113 = v201;
  (v197)(v184, v203, v201);
  v114 = v204;
  v115 = (*(v204 + 80) + 24) & ~*(v204 + 80);
  v116 = (v183 + v115 + 7) & 0xFFFFFFFFFFFFFFF8;
  v117 = swift_allocObject();
  v118 = v202;
  *(v117 + 16) = v202;
  (*(v114 + 32))(v117 + v115, v112, v113);
  *(v117 + v116) = v185;
  *(v117 + ((v116 + 15) & 0xFFFFFFFFFFFFFFF8)) = v111;
  v119 = &v107[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
  v120 = *&v107[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
  v121 = *&v107[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem + 8];
  *v119 = sub_224B818DC;
  v119[1] = v117;

  sub_224A3D418(v120);
  v122 = swift_allocObject();
  v123 = v188;
  *(v122 + 2) = v187;
  *(v122 + 3) = v123;
  *(v122 + 4) = v111;
  v199 = v111;
  v200 = v107;
  v124 = &v107[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
  v125 = *&v107[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
  v126 = *&v107[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion + 8];
  *v124 = sub_224A8B280;
  v124[1] = v122;

  sub_224A3D418(v125);
  v127 = v195;
  v128 = v194;
  v129 = v192;
  (*(v195 + 16))(v194, v118 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger, v192);
  v130 = v189;
  (v197)(v189, v203, v113);
  v131 = v191;
  v132 = v190;
  v133 = v193;
  (*(v191 + 16))(v190, v205, v193);
  v134 = sub_224DAB228();
  v135 = sub_224DAF2A8();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v206[0] = v137;
    *v136 = 136446466;
    sub_224B819A0();
    v138 = sub_224DAFD28();
    v139 = v113;
    v140 = v129;
    v141 = v132;
    v142 = v131;
    v144 = v143;
    (*(v204 + 8))(v130, v139);
    v145 = sub_224A33F74(v138, v144, v206);

    *(v136 + 4) = v145;
    *(v136 + 12) = 2082;
    v146 = sub_224DACBA8();
    v148 = v147;
    (*(v142 + 8))(v141, v193);
    v149 = sub_224A33F74(v146, v148, v206);

    *(v136 + 14) = v149;
    _os_log_impl(&dword_224A2F000, v134, v135, "%{public}s scheduled %{public}s", v136, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v137, -1, -1);
    MEMORY[0x22AA5EED0](v136, -1, -1);

    (*(v195 + 8))(v194, v140);
  }

  else
  {

    (*(v131 + 8))(v132, v133);
    (*(v204 + 8))(v130, v113);
    (*(v127 + 8))(v128, v129);
  }

  sub_224DAD358();
  v150 = *(v202 + OBJC_IVAR____TtC10ChronoCore28MobileActivityReloadStrategy_taskService + 24);
  v151 = *(v202 + OBJC_IVAR____TtC10ChronoCore28MobileActivityReloadStrategy_taskService + 32);
  __swift_project_boxed_opaque_existential_1((v202 + OBJC_IVAR____TtC10ChronoCore28MobileActivityReloadStrategy_taskService), v150);
  v152 = v200;
  v153 = (*(v151 + 16))(v200, v150, v151);
  v155 = v154;
  v157 = v156;
  v159 = v158;
  v206[3] = &type metadata for TaskCancellable;
  v206[4] = sub_224A8B0FC();
  v160 = swift_allocObject();
  v206[0] = v160;
  v160[2] = v153;
  v160[3] = v155;
  v160[4] = v157;
  v160[5] = v159;
  v161 = sub_224DAD368();

  sub_224A3D2F8(v186, type metadata accessor for ExtensionTask.SchedulingConfiguration);

  return v161;
}

uint64_t sub_224B81198(uint64_t a1, void (*a2)(void), uint64_t *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a6;
  v49 = a4;
  v50 = a5;
  v11 = sub_224DAE6E8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v47 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_224DABCC8();
  v15 = *(v46 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DAB258();
  v19 = *(v18 - 1);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v51 = v23;
  v52 = a7;
  v23[2] = a7;
  v23[3] = a2;
  v48 = a2;
  v23[4] = a3;
  sub_224A4B83C(a1, v54);
  if (v54[3])
  {
    swift_retain_n();
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5080, &qword_224DB3690);
    if (swift_dynamicCast())
    {
      v24 = v53;
      v25 = swift_allocObject();
      v25[2] = v24;
      v25[3] = sub_224B819F8;
      v25[4] = v51;
      swift_unknownObjectRetain();

      sub_224B8D40C(v24, v50, v44, v49, sub_224B81A50, v25);

      swift_unknownObjectRelease();
    }

    v44 = v12;
  }

  else
  {
    v44 = v12;
    swift_retain_n();
    swift_retain_n();
    sub_224A3311C(v54, &qword_27D6F4760, &unk_224DB3680);
  }

  v26 = v19;
  v27 = *(v19 + 16);
  v28 = &v49[OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger];
  v49 = v18;
  v27(v22, v28, v18);
  v29 = v45;
  v30 = v46;
  (*(v15 + 16))(v45, v50, v46);
  v31 = sub_224DAB228();
  v32 = sub_224DAF288();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v50 = v11;
    v34 = v33;
    v43[0] = swift_slowAlloc();
    v54[0] = v43[0];
    *v34 = 136446210;
    sub_224B819A0();
    v35 = sub_224DAFD28();
    v43[1] = a3;
    v37 = v36;
    (*(v15 + 8))(v29, v30);
    v38 = sub_224A33F74(v35, v37, v54);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_224A2F000, v31, v32, "%{public}s No extension session", v34, 0xCu);
    v39 = v43[0];
    __swift_destroy_boxed_opaque_existential_1(v43[0]);
    MEMORY[0x22AA5EED0](v39, -1, -1);
    v40 = v34;
    v11 = v50;
    MEMORY[0x22AA5EED0](v40, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v29, v30);
  }

  (*(v26 + 8))(v22, v49);
  sub_224AD1978();
  (*(v44 + 104))(v47, *MEMORY[0x277CE3C40], v11);
  v41 = sub_224DAF638();
  v48();
}

uint64_t *sub_224B81714()
{
  v1 = v0[3];
  sub_224A3D418(v0[2]);
  v2 = v0[5];
  sub_224A3D418(v0[4]);
  sub_224A3311C((v0 + 6), &unk_27D6F57B0, qword_224DB7B48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v3 = v0[21];

  v4 = OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger;
  v5 = sub_224DAB258();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_224A3D2F8(v0 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_requestCompletor, type metadata accessor for RequestCompletionOperation);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore28MobileActivityReloadStrategy_taskService));
  return v0;
}

uint64_t sub_224B817EC()
{
  sub_224B81714();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MobileActivityReloadStrategy()
{
  result = qword_281354120;
  if (!qword_281354120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224B818DC(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  v7 = *(sub_224DABCC8() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + 16);
  v11 = *(v3 + v9);
  v12 = *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_224B81198(a1, a2, a3, v10, v3 + v8, v11, v12);
}

unint64_t sub_224B819A0()
{
  result = qword_281350EA0;
  if (!qword_281350EA0)
  {
    sub_224DABCC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350EA0);
  }

  return result;
}

uint64_t objectdestroy_25Tm_0(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_224B81B18()
{
  if (*v0)
  {
    result = 0x7465736572;
  }

  else
  {
    result = 1701736302;
  }

  *v0;
  return result;
}

uint64_t sub_224B81B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v74 = a4;
  v75 = a1;
  v76 = a2;
  v69 = sub_224DA9878();
  v67 = *(v69 - 1);
  v6 = *(v67 + 64);
  MEMORY[0x28223BE20](v69);
  v63 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_224DACB08();
  v66 = *(v68 - 1);
  v8 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v72 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DACB28();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  MEMORY[0x28223BE20](v10);
  v70 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DACC88();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v71 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DACB98();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v61 - v24);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v61 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v73 = &v61 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = (&v61 - v31);
  if (sub_224B825F8(a5))
  {
    v61 = v13;
    v62 = v14;
    if (!sub_224B82858(a5) || sub_224DACBB8() < 1)
    {
      sub_224DAE1E8();
      sub_224DAE198();
      sub_224DACC68();
      v46 = (*(v18 + 88))(v22, v17);
      v47 = *MEMORY[0x277CF9B80];
      if (v46 == v47)
      {
        v48 = *(v18 + 8);
        v48(v22, v17);
        sub_224DACC68();
      }

      else
      {
        v49 = swift_allocBox();
        sub_224DACC68();
        *v25 = v49;
        (*(v18 + 104))(v25, v47, v17);
        v48 = *(v18 + 8);
        v48(v22, v17);
      }

      v50 = v63;
      sub_224DA9868();
      v51 = v70;
      sub_224DA9768();
      (*(v67 + 8))(v50, v69);
      (*(v64 + 104))(v51, *MEMORY[0x277CF9B58], v65);
      (*(v66 + 104))(v72, *MEMORY[0x277CF9B40], v68);
      (*(v18 + 16))(v73, v25, v17);
      sub_224DACC48();
      v52 = v71;
      sub_224DACC38();
      v48(v25, v17);
      v53 = v61;
      v54 = v62;
      v55 = v75;
      (*(v62 + 32))(v75, v52, v61);
      (*(v54 + 56))(v55, 0, 1, v53);
      v56 = MEMORY[0x277CF98B0];
      goto LABEL_16;
    }

    v33 = v73;
    sub_224DACC68();
    v34 = *MEMORY[0x277CF9BF0];
    v68 = *(v18 + 104);
    v68(v28, v34, v17);
    v35 = sub_224DACB88();
    v36 = *(v18 + 8);
    v36(v28, v17);
    v69 = v36;
    v36(v33, v17);
    if (v35)
    {
      v37 = swift_allocObject();
      *(v37 + 16) = 0xD000000000000019;
      *(v37 + 24) = 0x8000000224DC58C0;
      *v32 = v37;
      v68(v32, *MEMORY[0x277CF9B70], v17);
      v68 = sub_224DACBB8();
      v38 = v75;
      v39 = v61;
LABEL_15:
      sub_224DACC58();
      sub_224DACC08();
      (*(v18 + 16))(v73, v32, v17);
      sub_224DACBD8();
      sub_224DACC28();
      v57 = v71;
      sub_224DACC18();
      v69(v32, v17);
      v58 = v62;
      (*(v62 + 32))(v38, v57, v39);
      (*(v58 + 56))(v38, 0, 1, v39);
      v56 = MEMORY[0x277CF98B8];
LABEL_16:
      v59 = *v56;
      v60 = sub_224DABD68();
      return (*(*(v60 - 8) + 104))(v76, v59, v60);
    }

    sub_224DACC68();
    result = sub_224DACBB8();
    if (!__OFSUB__(result, 1))
    {
      v38 = v75;
      v39 = v61;
      v68 = (result - 1);
      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    sub_224DAE1E8();
    sub_224DAE198();
    (*(v14 + 56))(v75, 1, 1, v13);
    v40 = *MEMORY[0x277CF98B0];
    v41 = sub_224DABD68();
    v42 = *(*(v41 - 8) + 104);
    v43 = v41;
    v44 = v76;

    return v42(v44, v40, v43);
  }

  return result;
}

uint64_t sub_224B8238C()
{
  v1 = OBJC_IVAR____TtC10ChronoCore39MobileActivityReloadConfigurationPolicy_logger;
  v2 = sub_224DAB258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MobileActivityReloadConfigurationPolicy()
{
  result = qword_281352638;
  if (!qword_281352638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224B8247C()
{
  result = sub_224DAB258();
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

unint64_t sub_224B8251C()
{
  result = qword_281350D70;
  if (!qword_281350D70)
  {
    sub_224DAC918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350D70);
  }

  return result;
}

uint64_t sub_224B82574@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_224DACC88();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

BOOL sub_224B825F8(void *a1)
{
  v2 = sub_224DAE6E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 domain];
  v8 = sub_224DAEE18();
  v10 = v9;

  v11 = [a1 code];
  v12 = *MEMORY[0x277CFA188];
  if (sub_224DAEE18() == v8 && v13 == v10)
  {
  }

  else
  {
    v15 = sub_224DAFD88();

    if ((v15 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3C10], v2);
  v16 = sub_224DAE6D8();
  (*(v3 + 8))(v6, v2);
  if (v16 == v11)
  {

    return 0;
  }

LABEL_10:
  if (sub_224DAEE18() == v8 && v18 == v10)
  {
  }

  else
  {
    v20 = sub_224DAFD88();

    if ((v20 & 1) == 0)
    {

      return 1;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3BF0], v2);
  v21 = sub_224DAE6D8();

  (*(v3 + 8))(v6, v2);
  return v21 != v11;
}

BOOL sub_224B82858(void *a1)
{
  v2 = sub_224DAE6E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 domain];
  v8 = sub_224DAEE18();
  v10 = v9;

  v11 = [a1 code];
  v12 = *MEMORY[0x277CFA188];
  if (sub_224DAEE18() == v8 && v13 == v10)
  {
  }

  else
  {
    v15 = sub_224DAFD88();

    if ((v15 & 1) == 0)
    {

      return 1;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3C60], v2);
  v16 = sub_224DAE6D8();

  (*(v3 + 8))(v6, v2);
  return v16 != v11;
}

uint64_t sub_224B82A2C()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_2813514F0);
  __swift_project_value_buffer(v0, qword_2813514F0);
  return sub_224DAB238();
}

unint64_t sub_224B82AD0()
{
  v1 = *v0;
  if (!(*v0 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_224A4AD80(sub_224B44A20);
    if (result)
    {
      return result;
    }

    v3 = *v0;
    if (*v0 >> 62)
    {
      if (v3 < 0)
      {
        v7 = *v0;
      }

      v8 = sub_224DAF838();
      v5 = __OFSUB__(v8, 1);
      result = v8 - 1;
      if (!v5)
      {
        return sub_224B82C88(result, sub_224B44A20);
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v5)
      {
        return sub_224B82C88(result, sub_224B44A20);
      }
    }

    __break(1u);
    return result;
  }

  if (v1 < 0)
  {
    v6 = *v0;
  }

  result = sub_224DAF838();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_224B82B88()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_224B82BEC()
{
  v1 = *v0;
  swift_beginAccess();

  sub_224B42B60(v2);
  return swift_endAccess();
}

uint64_t sub_224B82C88(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

size_t sub_224B82D20@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_224B42EE4(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for HandlerItem() - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_224B832A4(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

id sub_224B82E40(uint64_t a1, uint64_t a2)
{
  v5 = sub_224DA9878();
  v37 = *(v5 - 8);
  v38 = v5;
  v6 = *(v37 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v35 = &v33 - v9;
  v10 = sub_224DAB7B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DAB848();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 32) == 1)
  {
    sub_224AC319C();
    v34 = sub_224DAF3D8();
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = a2;
    aBlock[4] = sub_224B83268;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A39F40;
    aBlock[3] = &block_descriptor_15;
    v21 = _Block_copy(aBlock);

    sub_224DAB7E8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_224A3AF98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A4C290();
    sub_224DAF788();
    v22 = v34;
    MEMORY[0x22AA5D760](0, v19, v14, v21);
    _Block_release(v21);

    (*(v11 + 8))(v14, v10);
    (*(v16 + 8))(v19, v15);
  }

  swift_beginAccess();
  v23 = sub_224B82AD0();
  swift_endAccess();
  if (v23)
  {
    return v23;
  }

  v25 = v35;
  sub_224DA9868();
  v26 = v36;
  sub_224DA9868();
  v27 = sub_224DAEDE8();
  v28 = sub_224DA9778();
  v29 = sub_224DA9778();
  v30 = [objc_opt_self() activityWithName:v27 priority:0 duration:0 startingAfter:v28 startingBefore:v29];

  v31 = v38;
  v32 = *(v37 + 8);
  v32(v26, v38);
  v32(v25, v31);
  return v30;
}

uint64_t sub_224B83268()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0x7265766574616877, 0xE800000000000000);
}

uint64_t sub_224B832A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandlerItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B8336C(uint64_t a1)
{
  v1 = sub_224B83AE0(a1);
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3)
  {
    v26 = *(v1 + 16);
    v27 = MEMORY[0x277D84F90];
    sub_224ADA330(0, v3, 0);
    v4 = v27;
    v5 = v2 + 64;
    v6 = -1 << *(v2 + 32);
    result = sub_224DAF798();
    v8 = v26;
    v9 = 0;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(v2 + 32))
    {
      v11 = result >> 6;
      v12 = 1 << result;
      if ((*(v5 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_23;
      }

      v13 = *(*(v2 + 48) + result);
      v14 = *(v2 + 36);
      v16 = *(v27 + 16);
      v15 = *(v27 + 24);
      if (v16 >= v15 >> 1)
      {
        v24 = *(v2 + 36);
        v25 = result;
        sub_224ADA330((v15 > 1), v16 + 1, 1);
        v8 = v26;
        v14 = v24;
        result = v25;
      }

      *(v27 + 16) = v16 + 1;
      *(v27 + v16 + 32) = v13;
      v10 = 1 << *(v2 + 32);
      if (result >= v10)
      {
        goto LABEL_24;
      }

      v17 = *(v5 + 8 * v11);
      if ((v17 & v12) == 0)
      {
        goto LABEL_25;
      }

      if (v14 != *(v2 + 36))
      {
        goto LABEL_26;
      }

      v18 = v17 & (-2 << (result & 0x3F));
      if (v18)
      {
        v10 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v11 << 6;
        v20 = v11 + 1;
        v21 = (v2 + 72 + 8 * v11);
        while (v20 < (v10 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_224A3E204(result, v14, 0);
            v8 = v26;
            v10 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        sub_224A3E204(result, v14, 0);
        v8 = v26;
      }

LABEL_4:
      ++v9;
      result = v10;
      if (v9 == v8)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_224B83590()
{
  v1 = 0x746567646977;
  v2 = 0x6F69736E65747865;
  if (*v0 != 2)
  {
    v2 = 0x7974697669746361;
  }

  if (*v0)
  {
    v1 = 0x6C6F72746E6F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_224B8361C(char a1)
{
  if (a1)
  {
    MEMORY[0x22AA5D210](0x656372756F73, 0xE600000000000000);
    if ((a1 & 4) != 0)
    {
      MEMORY[0x22AA5D210](43, 0xE100000000000000);
      MEMORY[0x22AA5D210](0x5365737265766572, 0xED0000656372756FLL);
    }

    if ((a1 & 2) != 0)
    {
      MEMORY[0x22AA5D210](43, 0xE100000000000000);
      goto LABEL_10;
    }
  }

  else
  {
    if ((a1 & 4) == 0)
    {
      if ((a1 & 2) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    MEMORY[0x22AA5D210](0x5365737265766572, 0xED0000656372756FLL);
    if ((a1 & 2) != 0)
    {
LABEL_10:
      MEMORY[0x22AA5D210](1953722216, 0xE400000000000000);
    }
  }

  return 0;
}

void *sub_224B8373C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_224B83768@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_224B83804@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_224D56DB0();

  *a1 = v2;
  return result;
}

uint64_t sub_224B83844()
{

  return swift_deallocClassInstance();
}

unint64_t sub_224B838C4()
{
  result = qword_27D6F4828;
  if (!qword_27D6F4828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4828);
  }

  return result;
}

unint64_t sub_224B8391C()
{
  result = qword_27D6F4830;
  if (!qword_27D6F4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4830);
  }

  return result;
}

unint64_t sub_224B83974()
{
  result = qword_27D6F4838;
  if (!qword_27D6F4838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4838);
  }

  return result;
}

unint64_t sub_224B839CC()
{
  result = qword_27D6F4840;
  if (!qword_27D6F4840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4840);
  }

  return result;
}

unint64_t sub_224B83A24()
{
  result = qword_27D6F4848;
  if (!qword_27D6F4848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F4850, qword_224DB7FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4848);
  }

  return result;
}

unint64_t sub_224B83A8C()
{
  result = qword_281358EE0[0];
  if (!qword_281358EE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281358EE0);
  }

  return result;
}

uint64_t sub_224B83AE0(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_224B83C40(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_224B83D28(v9, v4, v2);
  result = MEMORY[0x22AA5EED0](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_224B83C40(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_224B2CE74(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_224B2CE74(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_224B83D28(unint64_t *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_224B83C40(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_224B83DA0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v23 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    result = sub_224DAF798();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    v20 = v1 + 72;
    v21 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v22 = v7;
      v11 = *(*(v1 + 56) + 24 * v6);
      sub_224DAF9B8();
      v12 = *(v23 + 16);
      sub_224DAF9F8();
      v1 = v21;
      sub_224DAFA08();
      result = sub_224DAF9C8();
      v9 = 1 << *(v21 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v13 = *(v4 + 8 * v10);
      if ((v13 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v21 + 36))
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (v6 & 0x3F));
      if (v14)
      {
        v9 = __clz(__rbit64(v14)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v10 << 6;
        v16 = v10 + 1;
        v17 = (v20 + 8 * v10);
        while (v16 < (v9 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = sub_224A3E204(v6, v8, 0);
            v9 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        result = sub_224A3E204(v6, v8, 0);
      }

LABEL_4:
      v7 = v22 + 1;
      v6 = v9;
      if (v22 + 1 == v2)
      {
        return v23;
      }
    }

    __break(1u);
LABEL_21:
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

id sub_224B83FBC(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_224DA95F8();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_224DA9688();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_224DA9528();

    swift_willThrow();
    v9 = sub_224DA9688();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_224B84114(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t), void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v79 = a3;
  v77 = a4;
  v78 = a5;
  v7 = sub_224DAE6E8();
  v73 = *(v7 - 8);
  v8 = *(v73 + 64);
  MEMORY[0x28223BE20](v7);
  v72 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DABCC8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v71 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v75 = &v65 - v15;
  v16 = sub_224DAB258();
  v17 = *(v16 - 8);
  v18 = *(v17 + 8);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v76 = &v65 - v22;
  v23 = *(a2 + 16);
  if (v23)
  {
    v66 = a1;
    v67 = v21;
    v68 = v11;
    v69 = v10;
    v70 = v7;
    v74 = v16;
    v24 = sub_224B0CCF8(v23, 0);
    v25 = *(sub_224DAC918() - 8);
    v26 = sub_224B2F724(&v81, (v24 + ((*(v25 + 80) + 32) & ~*(v25 + 80))), v23, a2);

    result = sub_224A3B7E4();
    if (v26 != v23)
    {
      __break(1u);
      return result;
    }

    v16 = v74;
    v10 = v69;
    v7 = v70;
    v21 = v67;
    v11 = v68;
    a1 = v66;
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v28 = v80;
  v29 = sub_224B848EC(a1, v24, v79);
  v31 = v30;
  if (v29)
  {

    v32 = &v28[OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger];
    v33 = v76;
    (*(v17 + 2))(v76, v32, v16);
    v34 = v75;
    (*(v11 + 16))(v75, a1, v10);
    v35 = sub_224DAB228();
    v36 = sub_224DAF268();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v80 = v17;
      v38 = v37;
      v39 = v34;
      v40 = swift_slowAlloc();
      v81 = v40;
      *v38 = 136446210;
      sub_224B8C88C(&qword_281350EA0, MEMORY[0x277CF9880]);
      v41 = sub_224DAFD28();
      v42 = v10;
      v44 = v43;
      (*(v11 + 8))(v39, v42);
      v45 = sub_224A33F74(v41, v44, &v81);

      *(v38 + 4) = v45;
      _os_log_impl(&dword_224A2F000, v35, v36, "%{public}s Fetched from cache", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x22AA5EED0](v40, -1, -1);
      MEMORY[0x22AA5EED0](v38, -1, -1);

      (*(v80 + 1))(v76, v16);
    }

    else
    {

      (*(v11 + 8))(v34, v10);
      (*(v17 + 1))(v33, v16);
    }

    v77(v31, 0);
  }

  else
  {

    v46 = a1;
    v47 = sub_224DABCA8();
    v48 = [v47 isRemote];

    if ((v48 & 1) == 0)
    {
      v63 = (*(*v80 + 232))(v46, v24, v79, v77, v78);

      return v63;
    }

    (*(v17 + 2))(v21, &v80[OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger], v16);
    v49 = v71;
    (*(v11 + 16))(v71, v46, v10);
    v50 = sub_224DAB228();
    v51 = sub_224DAF268();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v80 = v17;
      v53 = v52;
      v54 = swift_slowAlloc();
      v74 = v16;
      v55 = v21;
      v56 = v11;
      v57 = v54;
      v81 = v54;
      *v53 = 136446210;
      sub_224B8C88C(&qword_281350EA0, MEMORY[0x277CF9880]);
      v58 = sub_224DAFD28();
      v59 = v10;
      v61 = v60;
      (*(v56 + 8))(v49, v59);
      v62 = sub_224A33F74(v58, v61, &v81);

      *(v53 + 4) = v62;
      _os_log_impl(&dword_224A2F000, v50, v51, "%{public}s Failed to fetch from cache", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x22AA5EED0](v57, -1, -1);
      MEMORY[0x22AA5EED0](v53, -1, -1);

      (*(v80 + 1))(v55, v74);
    }

    else
    {

      (*(v11 + 8))(v49, v10);
      (*(v17 + 1))(v21, v16);
    }

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v73 + 104))(v72, *MEMORY[0x277CE3BF0], v7);
    v64 = sub_224DAF638();
    v77(v64, 1);
  }

  return 0;
}

uint64_t sub_224B848EC(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t))
{
  v154 = a3;
  v150 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4668, &unk_224DB75E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v135 = &v122 - v7;
  v142 = sub_224DAEC58();
  v136 = *(v142 - 8);
  v8 = *(v136 + 64);
  v9 = MEMORY[0x28223BE20](v142);
  v11 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v156 = &v122 - v12;
  v149 = sub_224DAC918();
  v147 = *(v149 - 8);
  v13 = *(v147 + 64);
  v14 = MEMORY[0x28223BE20](v149);
  v16 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v134 = &v122 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v133 = &v122 - v20;
  MEMORY[0x28223BE20](v19);
  v152 = &v122 - v21;
  v22 = sub_224DABCC8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v122 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_224DAB258();
  v28 = *(v27 - 8);
  v29 = v28[8];
  v30 = MEMORY[0x28223BE20](v27);
  v151 = &v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v124 = &v122 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v132 = &v122 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v122 - v36;
  v38 = v28[2];
  v141 = v3;
  v137 = OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger;
  v155 = v39;
  v138 = v38;
  v139 = v28 + 2;
  (v38)(&v122 - v36, &v3[OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger]);
  v40 = *(v23 + 16);
  v143 = a1;
  v41 = a1;
  v42 = v22;
  v40(v26, v41, v22);
  v43 = sub_224DAB228();
  v44 = sub_224DAF268();
  v45 = os_log_type_enabled(v43, v44);
  v123 = v16;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v153 = v28;
    v47 = v46;
    v48 = swift_slowAlloc();
    v157[0] = v48;
    *v47 = 136446210;
    sub_224B8C88C(&qword_281350EA0, MEMORY[0x277CF9880]);
    v49 = sub_224DAFD28();
    v50 = v42;
    v52 = v51;
    (*(v23 + 8))(v26, v50);
    v53 = sub_224A33F74(v49, v52, v157);

    *(v47 + 4) = v53;
    _os_log_impl(&dword_224A2F000, v43, v44, "%{public}s Trying cache", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x22AA5EED0](v48, -1, -1);
    MEMORY[0x22AA5EED0](v47, -1, -1);

    v54 = v153;
    v140 = *(v153 + 8);
    v140(v37, v155);
  }

  else
  {

    (*(v23 + 8))(v26, v42);
    v140 = v28[1];
    v140(v37, v155);
    v54 = v28;
  }

  v153 = sub_224DA16A4(MEMORY[0x277D84F90]);
  v55 = v141;
  v56 = sub_224B857A0(v143, v154);
  v58 = v142;
  if ((v56 & 1) == 0)
  {
    v104 = v151;
    v138(v151, &v55[v137], v155);
    v105 = sub_224DAB228();
    v106 = sub_224DAF268();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&dword_224A2F000, v105, v106, "Cache should not be consulted", v107, 2u);
      MEMORY[0x22AA5EED0](v107, -1, -1);
    }

    v140(v104, v155);
    return 0;
  }

  v59 = *(v150 + 16);
  if (v59)
  {
    v60 = v149;
    v61 = 0;
    v62 = *(v147 + 16);
    v145 = *(v147 + 72);
    v130 = (v136 + 56);
    v146 = (v136 + 32);
    v151 = (v147 + 8);
    v131 = v54 + 1;
    v129 = (v136 + 16);
    v127 = v136 + 8;
    v125 = v136 + 40;
    v63 = v150 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
    *&v57 = 136446210;
    v126 = v57;
    v147 += 16;
    v154 = v62;
    v128 = v11;
    while (1)
    {
      v149 = v63;
      v150 = v59;
      v66 = v152;
      (v62)(v152);
      v67 = *(v55 + 20);
      __swift_project_boxed_opaque_existential_1(v55 + 16, *(v55 + 19));
      v68 = *(v67 + 16);
      v69 = v135;
      sub_224DACEB8();
      if (v61)
      {
        break;
      }

      v148 = 0;
      (*v130)(v69, 0, 1, v58);
      v144 = *v146;
      v144(v156, v69, v58);
      v70 = &v55[v137];
      v71 = v132;
      v138(v132, v70, v155);
      v72 = v133;
      v62(v133, v66, v60);
      v73 = sub_224DAB228();
      v74 = sub_224DAF268();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = v72;
        v77 = swift_slowAlloc();
        v157[0] = v77;
        *v75 = v126;
        sub_224B8C88C(&qword_281350D60, MEMORY[0x277CF9A98]);
        v78 = v71;
        v79 = sub_224DAFD28();
        v81 = v80;
        v82 = *v151;
        (*v151)(v76, v60);
        v83 = sub_224A33F74(v79, v81, v157);
        v84 = v60;
        v85 = v152;

        *(v75 + 4) = v83;
        _os_log_impl(&dword_224A2F000, v73, v74, "%{public}s Cache hit", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v77);
        MEMORY[0x22AA5EED0](v77, -1, -1);
        MEMORY[0x22AA5EED0](v75, -1, -1);

        v140(v78, v155);
        v86 = v128;
      }

      else
      {

        v82 = *v151;
        (*v151)(v72, v60);
        v140(v71, v155);
        v86 = v128;
        v84 = v60;
        v85 = v152;
      }

      v87 = v153;
      v88 = v134;
      v154(v134, v85, v84);
      v58 = v142;
      (*v129)(v86, v156, v142);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v157[0] = v87;
      v90 = sub_224B0B8A4(v88);
      v92 = *(v87 + 16);
      v93 = (v91 & 1) == 0;
      v94 = __OFADD__(v92, v93);
      v95 = v92 + v93;
      if (v94)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        result = sub_224DAFDD8();
        __break(1u);
        return result;
      }

      v96 = v91;
      if (*(v87 + 24) >= v95)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v103 = v90;
          sub_224B27790();
          v90 = v103;
        }
      }

      else
      {
        sub_224B12764(v95, isUniquelyReferenced_nonNull_native);
        v90 = sub_224B0B8A4(v88);
        if ((v96 & 1) != (v97 & 1))
        {
          goto LABEL_33;
        }
      }

      v98 = v157[0];
      v153 = v157[0];
      if (v96)
      {
        v64 = v136;
        (*(v136 + 40))(*(v157[0] + 56) + *(v136 + 72) * v90, v86, v58);
        v82(v88, v84);
        (*(v64 + 8))(v156, v58);
        v65 = v85;
        v60 = v84;
        v82(v65, v84);
      }

      else
      {
        *(v157[0] + 8 * (v90 >> 6) + 64) |= 1 << v90;
        v99 = v90;
        v154((v98[6] + v90 * v145), v88, v84);
        v100 = v136;
        v144((v98[7] + *(v136 + 72) * v99), v86, v58);
        v82(v88, v84);
        (*(v100 + 8))(v156, v58);
        v82(v85, v84);
        v101 = v98[2];
        v94 = __OFADD__(v101, 1);
        v102 = v101 + 1;
        if (v94)
        {
          goto LABEL_32;
        }

        v60 = v84;
        v98[2] = v102;
      }

      v63 = v149 + v145;
      v59 = v150 - 1;
      v55 = v141;
      v62 = v154;
      v61 = v148;
      if (v150 == 1)
      {
        return 1;
      }
    }

    (*v130)(v69, 1, 1, v58);
    sub_224A3311C(v69, &qword_27D6F4668, &unk_224DB75E0);
    v109 = v124;
    v138(v124, &v55[v137], v155);
    v110 = v123;
    v62(v123, v66, v60);
    v111 = sub_224DAB228();
    v112 = v60;
    v113 = sub_224DAF2A8();
    if (os_log_type_enabled(v111, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v157[0] = v115;
      *v114 = v126;
      sub_224B8C88C(&qword_281350D60, MEMORY[0x277CF9A98]);
      v116 = sub_224DAFD28();
      v117 = v110;
      v119 = v118;
      v120 = *v151;
      (*v151)(v117, v112);
      v121 = sub_224A33F74(v116, v119, v157);

      *(v114 + 4) = v121;
      _os_log_impl(&dword_224A2F000, v111, v113, "%{public}s Cache miss", v114, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v115);
      MEMORY[0x22AA5EED0](v115, -1, -1);
      MEMORY[0x22AA5EED0](v114, -1, -1);

      v140(v124, v155);
    }

    else
    {

      v120 = *v151;
      (*v151)(v110, v112);
      v140(v109, v155);
    }

    v120(v66, v112);
    return 0;
  }

  return 1;
}

uint64_t sub_224B857A0(uint64_t a1, uint64_t a2)
{
  v120 = a2;
  v114 = sub_224DACC88();
  v117 = *(v114 - 8);
  v3 = *(v117 + 64);
  MEMORY[0x28223BE20](v114);
  v113 = &v108[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_224DABCC8();
  v122 = *(v5 - 8);
  v6 = *(v122 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v121 = &v108[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v112 = &v108[-v10];
  v11 = MEMORY[0x28223BE20](v9);
  v111 = &v108[-v12];
  MEMORY[0x28223BE20](v11);
  v118 = &v108[-v13];
  v14 = sub_224DAB258();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v108[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v17);
  v116 = &v108[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v115 = &v108[-v23];
  MEMORY[0x28223BE20](v22);
  v119 = &v108[-v24];
  v25 = sub_224DACB98();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v110 = &v108[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v31 = &v108[-v30];
  v32 = sub_224DABCA8();
  v33 = [v32 isRemote];

  if (v33)
  {
    (*(v15 + 16))(v19, v123 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger, v14);
    v34 = v19;
    v35 = v121;
    v36 = v122;
    (*(v122 + 16))(v121, a1, v5);
    v120 = v34;
    v37 = sub_224DAB228();
    v38 = sub_224DAF2A8();
    v39 = v15;
    if (os_log_type_enabled(v37, v38))
    {
      v40 = swift_slowAlloc();
      v123 = v14;
      v41 = v5;
      v42 = v40;
      v43 = swift_slowAlloc();
      v124 = v43;
      *v42 = 136446210;
      sub_224B8C88C(&qword_281350EA0, MEMORY[0x277CF9880]);
      v44 = sub_224DAFD28();
      v46 = v45;
      (*(v36 + 8))(v35, v41);
      v47 = sub_224A33F74(v44, v46, &v124);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_224A2F000, v37, v38, "%{public}s Checking cache for remote activity reload.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x22AA5EED0](v43, -1, -1);
      MEMORY[0x22AA5EED0](v42, -1, -1);

      (*(v39 + 8))(v120, v123);
    }

    else
    {

      (*(v36 + 8))(v35, v5);
      (*(v15 + 8))(v120, v14);
    }

    return 1;
  }

  v49 = v122;
  v48 = v123;
  v121 = v15;
  v50 = v120;
  sub_224DACC68();
  v51 = (*(v26 + 88))(v31, v25);
  if (v51 == *MEMORY[0x277CF9BF0])
  {
    v52 = v121;
    v53 = v119;
    v54 = v14;
    (*(v121 + 2))(v119, v48 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger, v14);
    v55 = v118;
    v56 = v5;
    (*(v49 + 16))(v118, a1, v5);
    v57 = sub_224DAB228();
    v58 = sub_224DAF2A8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v123 = v54;
      v60 = v59;
      v61 = swift_slowAlloc();
      v124 = v61;
      *v60 = 136446210;
      sub_224B8C88C(&qword_281350EA0, MEMORY[0x277CF9880]);
      v62 = sub_224DAFD28();
      v64 = v63;
      (*(v49 + 8))(v55, v56);
      v65 = sub_224A33F74(v62, v64, &v124);

      *(v60 + 4) = v65;
      _os_log_impl(&dword_224A2F000, v57, v58, "%{public}s Checking cache for initial load.", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x22AA5EED0](v61, -1, -1);
      MEMORY[0x22AA5EED0](v60, -1, -1);

      (*(v52 + 1))(v119, v123);
    }

    else
    {

      (*(v49 + 8))(v55, v56);
      (*(v52 + 1))(v53, v54);
    }

    return 1;
  }

  v66 = v25;
  v67 = *(v121 + 2);
  v68 = (v49 + 16);
  v69 = a1;
  if (v51 == *MEMORY[0x277CF9B60])
  {
    v70 = v115;
    v71 = v14;
    v67(v115, v48 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger, v14);
    v72 = v111;
    v73 = v5;
    (*v68)(v111, v69, v5);
    v74 = sub_224DAB228();
    v75 = sub_224DAF2A8();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = v49;
      v78 = swift_slowAlloc();
      v124 = v78;
      *v76 = 136446210;
      sub_224B8C88C(&qword_281350EA0, MEMORY[0x277CF9880]);
      v79 = sub_224DAFD28();
      v80 = v72;
      v81 = v79;
      v83 = v82;
      (*(v77 + 8))(v80, v73);
      v84 = sub_224A33F74(v81, v83, &v124);

      *(v76 + 4) = v84;
      _os_log_impl(&dword_224A2F000, v74, v75, "%{public}s Checking cache for replicator-driven reload.", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v78);
      MEMORY[0x22AA5EED0](v78, -1, -1);
      MEMORY[0x22AA5EED0](v76, -1, -1);

      (*(v121 + 1))(v115, v71);
    }

    else
    {

      (*(v49 + 8))(v72, v73);
      (*(v121 + 1))(v70, v71);
    }

    return 1;
  }

  v115 = v66;
  v118 = v26;
  v119 = v31;
  v86 = v116;
  v123 = v14;
  v67(v116, v48 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger, v14);
  v87 = v112;
  (*v68)(v112, a1, v5);
  v88 = v117;
  v90 = v113;
  v89 = v114;
  (*(v117 + 16))(v113, v50, v114);
  v91 = sub_224DAB228();
  v92 = sub_224DAF2A8();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = v5;
    v94 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v124 = v120;
    *v94 = 136446466;
    sub_224B8C88C(&qword_281350EA0, MEMORY[0x277CF9880]);
    v111 = v91;
    v95 = sub_224DAFD28();
    v96 = v115;
    v109 = v92;
    v98 = v97;
    (*(v49 + 8))(v87, v93);
    v99 = sub_224A33F74(v95, v98, &v124);

    *(v94 + 4) = v99;
    *(v94 + 12) = 2082;
    v100 = v110;
    sub_224DACC68();
    sub_224B8C88C(&unk_281350D28, MEMORY[0x277CF9BF8]);
    v101 = sub_224DAFD28();
    v103 = v102;
    v104 = *(v118 + 1);
    v104(v100, v96);
    (*(v117 + 8))(v90, v89);
    v105 = sub_224A33F74(v101, v103, &v124);

    *(v94 + 14) = v105;
    v106 = v111;
    _os_log_impl(&dword_224A2F000, v111, v109, "%{public}s Not checking cache (%{public}s)", v94, 0x16u);
    v107 = v120;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v107, -1, -1);
    MEMORY[0x22AA5EED0](v94, -1, -1);

    (*(v121 + 1))(v116, v123);
  }

  else
  {

    (*(v88 + 8))(v90, v89);
    (*(v49 + 8))(v87, v5);
    (*(v121 + 1))(v86, v123);
    v104 = *(v118 + 1);
    v96 = v115;
  }

  v104(v119, v96);
  return 0;
}

uint64_t sub_224B8643C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, void *a4@<X4>, void (*a5)(uint64_t, uint64_t)@<X8>)
{
  v255 = a4;
  v257 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v256 = &v207 - v10;
  v238 = sub_224DA9908();
  v237 = *(v238 - 8);
  v11 = *(v237 + 64);
  MEMORY[0x28223BE20](v238);
  v235 = &v207 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DAEB68();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v236 = &v207 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v227 = *(v228 - 8);
  v16 = *(v227 + 64);
  MEMORY[0x28223BE20](v228);
  v226 = &v207 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48C0, &qword_224DB8220);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v234 = &v207 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v217 = &v207 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v233 = &v207 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v218 = &v207 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v241 = &v207 - v29;
  MEMORY[0x28223BE20](v28);
  v248 = &v207 - v30;
  v31 = sub_224DAB258();
  v251 = *(v31 - 8);
  v252 = v31;
  v32 = *(v251 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v245 = &v207 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v225 = &v207 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v219 = &v207 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v214 = &v207 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v213 = &v207 - v42;
  MEMORY[0x28223BE20](v41);
  v240 = &v207 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48C8, &unk_224DB8228);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v224 = &v207 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v223 = &v207 - v49;
  v243 = sub_224DA9A38();
  v232 = *(v243 - 8);
  v50 = *(v232 + 64);
  v51 = MEMORY[0x28223BE20](v243);
  v231 = &v207 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v220 = &v207 - v53;
  v222 = sub_224DA9878();
  v221 = *(v222 - 8);
  v54 = *(v221 + 64);
  v55 = MEMORY[0x28223BE20](v222);
  v216 = &v207 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v215 = &v207 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48D0, &qword_224DB8238);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58 - 8);
  v61 = &v207 - v60;
  v62 = sub_224DA9A88();
  v246 = *(v62 - 8);
  v247 = v62;
  v63 = *(v246 + 64);
  MEMORY[0x28223BE20](v62);
  v249 = &v207 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48D8, &unk_224DB8240);
  v66 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65 - 8);
  v68 = &v207 - v67;
  v69 = sub_224DA9AE8();
  v70 = *(v69 - 8);
  v253 = v69;
  v254 = v70;
  v71 = *(v70 + 64);
  v72 = MEMORY[0x28223BE20](v69);
  v242 = &v207 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v250 = &v207 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4808, &unk_224DB7990);
  v76 = *(*(v75 - 8) + 64);
  v77 = MEMORY[0x28223BE20](v75 - 8);
  v230 = &v207 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77);
  v80 = &v207 - v79;
  v81 = sub_224DAE4F8();
  v82 = *(v81 - 8);
  v83 = *(v82 + 64);
  v84 = MEMORY[0x28223BE20](v81);
  v229 = &v207 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  v87 = &v207 - v86;
  v257(a3, a1);
  if ((*(v82 + 48))(v80, 1, v81) == 1)
  {
    sub_224A3311C(v80, &qword_27D6F4808, &unk_224DB7990);
    v88 = type metadata accessor for PlatterContentError(0);
    v89 = v88[5];
    v90 = sub_224DABCC8();
    (*(*(v90 - 8) + 16))(a5 + v89, a3, v90);
    v91 = v88[6];
    v92 = sub_224DAC918();
    (*(*(v92 - 8) + 16))(a5 + v91, a1, v92);
    v93 = sub_224DA9688();
    v94 = *(*(v93 - 8) + 56);
    v95 = v256;
    v94(v256, 1, 1, v93);
    v96 = a5;
    v97 = v88[7];
    v94(v96 + v97, 1, 1, v93);
    v98 = v88[8];
    *v96 = 2;
LABEL_3:
    sub_224A838C0(v95, v96 + v97, &unk_27D6F4680, &unk_224DB4610);
    *(v96 + v98) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4870, &qword_224DB81C8);
    return swift_storeEnumTagMultiPayload();
  }

  v257 = a5;
  (*(v82 + 32))(v87, v80, v81);
  v100 = v255[20];
  __swift_project_boxed_opaque_existential_1(v255 + 16, v255[19]);
  v239 = a1;
  v244 = a3;
  v101 = sub_224DAD238();
  v212 = v87;
  v210 = v81;
  v211 = v82;
  sub_224DADE38();

  v208 = sub_224DABCE8();

  v102 = v244;
  v103 = sub_224DABC78();
  v105 = v104;
  v106 = v255;
  v107 = v255[21];
  sub_224DAC868();
  v109 = v253;
  v108 = v254;
  v110 = (*(v254 + 48))(v68, 1, v253);
  v209 = v101;
  if (v110 == 1)
  {
    sub_224A3311C(v68, &qword_27D6F48D8, &unk_224DB8240);
    v112 = v251;
    v111 = v252;
    v113 = v245;
    (*(v251 + 16))(v245, v106 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger, v252);

    v114 = sub_224DAB228();
    v115 = sub_224DAF288();

    v116 = os_log_type_enabled(v114, v115);
    v117 = v239;
    if (v116)
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v258 = v119;
      *v118 = 136446210;
      v120 = sub_224A33F74(v103, v105, &v258);

      *(v118 + 4) = v120;
      _os_log_impl(&dword_224A2F000, v114, v115, "Could not find a descriptor for %{public}s", v118, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v119);
      MEMORY[0x22AA5EED0](v119, -1, -1);
      MEMORY[0x22AA5EED0](v118, -1, -1);

      (*(v112 + 8))(v245, v111);
    }

    else
    {

      (*(v112 + 8))(v113, v111);
    }

    (*(v211 + 8))(v212, v210);
    v96 = v257;
    v132 = type metadata accessor for PlatterContentError(0);
    v133 = v132[5];
    v134 = sub_224DABCC8();
    (*(*(v134 - 8) + 16))(v96 + v133, v244, v134);
    v135 = v132[6];
    v136 = sub_224DAC918();
    (*(*(v136 - 8) + 16))(v96 + v135, v117, v136);
    v137 = sub_224DA9688();
    v138 = *(*(v137 - 8) + 56);
    v95 = v256;
    v138(v256, 1, 1, v137);
    v97 = v132[7];
    v138(v96 + v97, 1, 1, v137);
    v98 = v132[8];
    *v96 = 0;
    goto LABEL_3;
  }

  (*(v108 + 32))(v250, v68, v109);
  sub_224DAC8A8();
  v122 = v246;
  v121 = v247;
  if ((*(v246 + 48))(v61, 1, v247) == 1)
  {
    v123 = v103;
    sub_224A3311C(v61, &qword_27D6F48D0, &qword_224DB8238);
    v125 = v251;
    v124 = v252;
    v126 = v225;
    (*(v251 + 16))(v225, v106 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger, v252);

    v127 = sub_224DAB228();
    v128 = sub_224DAF288();

    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v258 = v130;
      *v129 = 136446210;
      v131 = sub_224A33F74(v123, v105, &v258);

      *(v129 + 4) = v131;
      _os_log_impl(&dword_224A2F000, v127, v128, "Could not find a payload for %{public}s", v129, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v130);
      MEMORY[0x22AA5EED0](v130, -1, -1);
      MEMORY[0x22AA5EED0](v129, -1, -1);

      (*(v125 + 8))(v126, v124);
      (*(v254 + 8))(v250, v253);
    }

    else
    {

      (*(v125 + 8))(v126, v124);
      (*(v254 + 8))(v250, v109);
    }

    (*(v211 + 8))(v212, v210);
    v144 = v256;
    v143 = v257;
    v145 = v239;
    v146 = type metadata accessor for PlatterContentError(0);
    v147 = v146[5];
    v148 = sub_224DABCC8();
    (*(*(v148 - 8) + 16))(v143 + v147, v102, v148);
    v149 = v146[6];
    v150 = sub_224DAC918();
    (*(*(v150 - 8) + 16))(v143 + v149, v145, v150);
    v151 = sub_224DA9688();
    v152 = *(*(v151 - 8) + 56);
    v152(v144, 1, 1, v151);
    v153 = v146[7];
    v152(v143 + v153, 1, 1, v151);
    v154 = v146[8];
    *v143 = 1;
    sub_224A838C0(v144, v143 + v153, &unk_27D6F4680, &unk_224DB4610);
    *(v143 + v154) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4870, &qword_224DB81C8);
    return swift_storeEnumTagMultiPayload();
  }

  (*(v122 + 32))(v249, v61, v121);
  v139 = v220;
  sub_224DA9A68();
  v140 = v223;
  sub_224DA9A28();
  v245 = *(v232 + 8);
  (v245)(v139, v243);
  v141 = v221;
  v142 = v222;
  if ((*(v221 + 48))(v140, 1, v222) == 1)
  {
    sub_224A3311C(v140, &qword_27D6F32B0, &qword_224DB3EA0);
    LODWORD(v256) = 0;
  }

  else
  {
    v155 = v215;
    (*(v141 + 32))(v215, v140, v142);
    v156 = v216;
    sub_224DA9808();
    LODWORD(v256) = sub_224DA9798();
    v157 = *(v141 + 8);
    v157(v156, v142);
    v157(v155, v142);
  }

  v158 = v241;
  v159 = v240;
  v160 = v224;
  sub_224DA9A48();
  v161 = sub_224DA9C48();
  v162 = (*(*(v161 - 8) + 48))(v160, 1, v161);
  sub_224A3311C(v160, &qword_27D6F48C8, &unk_224DB8228);
  LODWORD(v232) = v162;
  if (v256)
  {
    v164 = v251;
    v163 = v252;
    (*(v251 + 16))(v159, v106 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger, v252);

    v165 = sub_224DAB228();
    v166 = sub_224DAF2A8();

    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      v258 = v168;
      *v167 = 136446210;
      v169 = sub_224A33F74(v103, v105, &v258);

      *(v167 + 4) = v169;
      v158 = v241;
      _os_log_impl(&dword_224A2F000, v165, v166, "Activity payload is stale: %{public}s", v167, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v168);
      v170 = v168;
      v106 = v255;
      MEMORY[0x22AA5EED0](v170, -1, -1);
      MEMORY[0x22AA5EED0](v167, -1, -1);

      (*(v164 + 8))(v240, v163);
    }

    else
    {

      (*(v164 + 8))(v159, v163);
    }
  }

  else
  {
  }

  v171 = v226;
  sub_224DAC8D8();
  v172 = v228;
  sub_224DAA1F8();
  v174 = v173;
  (*(v227 + 8))(v171, v172);
  if (v174)
  {
    sub_224A3796C((v106 + 6), &v258, &unk_27D6F57B0, qword_224DB7B48);
    if (v259)
    {
      __swift_project_boxed_opaque_existential_1(&v258, v259);
      v175 = v218;
      sub_224DAD4E8();

      __swift_destroy_boxed_opaque_existential_1(&v258);
      v176 = sub_224DAE7C8();
      v177 = *(v176 - 8);
      if ((*(v177 + 48))(v175, 1, v176) != 1)
      {
        (*(v177 + 32))(v158, v175, v176);
        (*(v177 + 56))(v158, 0, 1, v176);
        goto LABEL_31;
      }
    }

    else
    {

      sub_224A3311C(&v258, &unk_27D6F57B0, qword_224DB7B48);
      v176 = sub_224DAE7C8();
      v175 = v218;
      (*(*(v176 - 8) + 56))(v218, 1, 1, v176);
    }

    sub_224DAE7C8();
    v178 = *(v176 - 8);
    (*(v178 + 56))(v158, 1, 1, v176);
    if ((*(v178 + 48))(v175, 1, v176) != 1)
    {
      sub_224A3311C(v175, &qword_27D6F48C0, &qword_224DB8220);
    }
  }

  else
  {
    v176 = sub_224DAE7C8();
    (*(*(v176 - 8) + 56))(v158, 1, 1, v176);
  }

LABEL_31:
  v179 = v248;
  sub_224A44E4C(v158, v248, &qword_27D6F48C0, &qword_224DB8220);
  v180 = v179;
  v181 = v233;
  sub_224A3796C(v180, v233, &qword_27D6F48C0, &qword_224DB8220);
  sub_224DAE7C8();
  v182 = *(v176 - 8);
  v183 = (*(v182 + 48))(v181, 1, v176);
  v184 = v253;
  if (v183 == 1)
  {
    goto LABEL_32;
  }

  v191 = v217;
  sub_224A3796C(v181, v217, &qword_27D6F48C0, &qword_224DB8220);
  v192 = (*(v182 + 88))(v191, v176);
  if (v192 == *MEMORY[0x277CE3CE0])
  {
    v193 = v106 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger;
    v186 = v214;
    (*(v251 + 16))(v214, v193, v252);
    v187 = sub_224DAB228();
    v188 = sub_224DAF278();
    if (os_log_type_enabled(v187, v188))
    {
      v189 = swift_slowAlloc();
      *v189 = 0;
      v190 = "Creating v5 archive version";
      goto LABEL_40;
    }

LABEL_41:
    v195 = v212;
    goto LABEL_42;
  }

  if (v192 == *MEMORY[0x277CE3CD0])
  {
    v194 = v106 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger;
    v186 = v213;
    (*(v251 + 16))(v213, v194, v252);
    v187 = sub_224DAB228();
    v188 = sub_224DAF278();
    if (os_log_type_enabled(v187, v188))
    {
      v189 = swift_slowAlloc();
      *v189 = 0;
      v190 = "Creating v6 archive version";
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  (*(v182 + 8))(v191, v176);
LABEL_32:
  v185 = v106 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger;
  v186 = v219;
  (*(v251 + 16))(v219, v185, v252);
  v187 = sub_224DAB228();
  v188 = sub_224DAF278();
  if (!os_log_type_enabled(v187, v188))
  {
    goto LABEL_41;
  }

  v189 = swift_slowAlloc();
  *v189 = 0;
  v190 = "Creating default archive version";
LABEL_40:
  _os_log_impl(&dword_224A2F000, v187, v188, v190, v189, 2u);
  v195 = v212;
  MEMORY[0x22AA5EED0](v189, -1, -1);
LABEL_42:
  LODWORD(v241) = v232 != 1;

  (*(v251 + 8))(v186, v252);
  sub_224A3311C(v181, &qword_27D6F48C0, &qword_224DB8220);
  v252 = sub_224DAE468();
  (*(v254 + 16))(v242, v250, v184);
  sub_224DAC8F8();
  v196 = v231;
  sub_224DA9A68();
  v251 = sub_224DA9A18();
  v240 = v197;
  (v245)(v196, v243);
  v198 = v211;
  v199 = v210;
  (*(v211 + 16))(v229, v195, v210);
  v200 = v208;
  v201 = v235;
  sub_224DA9A58();
  sub_224DA9898();
  (*(v237 + 8))(v201, v238);
  sub_224A3796C(v248, v234, &qword_27D6F48C0, &qword_224DB8220);
  sub_224DA9A78();
  v202 = sub_224DAE448();
  v203 = v255[2];
  if (v203)
  {
    v204 = v255[3];

    v203(v244, v239);
    sub_224A3D418(v203);
  }

  else
  {
    (*(v198 + 56))(v230, 1, 1, v199);
  }

  v205 = v257;
  v206 = v209;
  sub_224DAE458();

  sub_224A3311C(v248, &qword_27D6F48C0, &qword_224DB8220);
  (*(v246 + 8))(v249, v247);
  (*(v254 + 8))(v250, v253);
  (*(v198 + 8))(v212, v199);
  *v205 = v202;
  v205[1] = v206;
  v205[2] = MEMORY[0x277CF9E10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4870, &qword_224DB81C8);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_224B883B8(void *a1, void (**a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, void (**a4)(void, void, void), uint64_t a5, uint64_t a6, void (*a7)(void *, void), uint64_t a8, uint64_t a9)
{
  v268 = a8;
  v269 = a7;
  v319 = a4;
  v307 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4878, &qword_224DB81D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v298 = &v255 - v14;
  v292 = type metadata accessor for PlatterFetchingError(0);
  v15 = *(*(v292 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v292);
  v289 = &v255 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v293 = &v255 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4270, &qword_224DB6580);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v262 = &v255 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v259 = &v255 - v23;
  v267 = sub_224DAB1F8();
  v266 = *(v267 - 8);
  v24 = *(v266 + 64);
  v25 = MEMORY[0x28223BE20](v267);
  v256 = &v255 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v255 = &v255 - v27;
  v280 = sub_224DABCC8();
  v281 = *(v280 - 8);
  v28 = *(v281 + 64);
  v29 = MEMORY[0x28223BE20](v280);
  v263 = &v255 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v258 = &v255 - v31;
  v299 = type metadata accessor for PlatterContentError(0);
  v308 = *(v299 - 8);
  v32 = *(v308 + 64);
  v33 = MEMORY[0x28223BE20](v299 - 8);
  v288 = &v255 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v294 = &v255 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v314 = (&v255 - v38);
  MEMORY[0x28223BE20](v37);
  v313 = (&v255 - v39);
  v284 = sub_224DAEC58();
  v285 = *(v284 - 8);
  v40 = *(v285 + 64);
  v41 = MEMORY[0x28223BE20](v284);
  v283 = &v255 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v282 = &v255 - v43;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4890, &qword_224DB81F8);
  v44 = *(*(v303 - 8) + 64);
  MEMORY[0x28223BE20](v303);
  v302 = &v255 - v45;
  v320 = sub_224DAC918();
  v312 = *(v320 - 8);
  v46 = *(v312 + 64);
  v47 = MEMORY[0x28223BE20](v320);
  v296 = &v255 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v316 = &v255 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v286 = &v255 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v315 = &v255 - v54;
  MEMORY[0x28223BE20](v53);
  v309 = &v255 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4880, &unk_224DB81D8);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x28223BE20](v56 - 8);
  v295 = &v255 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v58);
  v297 = &v255 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v306 = &v255 - v63;
  MEMORY[0x28223BE20](v62);
  v301 = &v255 - v64;
  p_isa = sub_224DAB258();
  v66 = *(p_isa - 1);
  v67 = v66[8];
  v68 = MEMORY[0x28223BE20](p_isa);
  v264 = &v255 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x28223BE20](v68);
  v261 = &v255 - v71;
  MEMORY[0x28223BE20](v70);
  v73 = &v255 - v72;
  v74 = swift_projectBox();
  v75 = sub_224DA149C(MEMORY[0x277D84F90]);
  v325 = v75;
  v76 = v66[2];
  v305 = a3;
  v272 = OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger;
  v274 = v66 + 2;
  v273 = v76;
  v76(v73, a3 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger, p_isa);
  v77 = v319;

  v78 = a1;
  v79 = sub_224DAB228();
  v80 = sub_224DAF278();

  LODWORD(v318) = v80;
  v81 = os_log_type_enabled(v79, v80);
  v265 = v74;
  v276 = a5;
  v279 = p_isa;
  v278 = v66;
  v304 = a1;
  if (v81)
  {
    v311 = v79;
    *&v317 = v73;
    v82 = swift_slowAlloc();
    p_isa = swift_slowAlloc();
    v324[0] = p_isa;
    *v82 = 134349314;
    *(v82 + 4) = v77[2];

    *(v82 + 12) = 2082;
    if (a1)
    {
      swift_getErrorValue();
      v83 = sub_224D1680C(v321);
      v85 = v84;
    }

    else
    {
      v85 = 0xE500000000000000;
      v83 = 0x3E6C696E3CLL;
    }

    v87 = v278;
    v86 = v301;
    v88 = v317;
    v89 = v311;
    v90 = sub_224A33F74(v83, v85, v324);

    *(v82 + 14) = v90;
    _os_log_impl(&dword_224A2F000, v89, v318, "Processing variant results. (count: %{public}ld, error: %{public}s", v82, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(p_isa);
    MEMORY[0x22AA5EED0](p_isa, -1, -1);
    MEMORY[0x22AA5EED0](v82, -1, -1);

    v275 = v87[1];
    v275(v88, v279);
    a5 = v276;
  }

  else
  {

    v275 = v66[1];
    v275(v73, p_isa);
    v86 = v301;
  }

  v257 = a9;
  swift_beginAccess();
  v91 = *(a5 + 16);
  v92 = *(v91 + 64);
  v291 = v91 + 64;
  v93 = 1 << *(v91 + 32);
  v94 = -1;
  if (v93 < 64)
  {
    v94 = ~(-1 << v93);
  }

  v95 = v94 & v92;
  v290 = (v93 + 63) >> 6;
  v318 = (v312 + 16);
  v319 = (v312 + 32);
  v277 = (v285 + 32);
  v271 = (v285 + 16);
  v310 = (v312 + 8);
  v270 = v285 + 8;
  v260 = v285 + 40;
  v300 = v91;

  v96 = 0;
  v287 = MEMORY[0x277D84F98];
  v97 = v320;
  while (1)
  {
    v311 = v75;
    if (!v95)
    {
      if (v290 <= v96 + 1)
      {
        v100 = v96 + 1;
      }

      else
      {
        v100 = v290;
      }

      v101 = v100 - 1;
      while (1)
      {
        v99 = v96 + 1;
        if (__OFADD__(v96, 1))
        {
          break;
        }

        if (v99 >= v290)
        {
          v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4888, &unk_224DB81E8);
          v111 = v306;
          (*(*(v139 - 8) + 56))(v306, 1, 1, v139);
          v95 = 0;
          goto LABEL_21;
        }

        v95 = *(v291 + 8 * v99);
        ++v96;
        if (v95)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
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
      swift_once();
      v243 = v256;
      goto LABEL_85;
    }

    v99 = v96;
LABEL_20:
    v102 = __clz(__rbit64(v95));
    v95 &= v95 - 1;
    v103 = v102 | (v99 << 6);
    v104 = v300;
    v105 = v312;
    v106 = v309;
    (*(v312 + 16))(v309, *(v300 + 48) + *(v312 + 72) * v103, v97);
    v107 = *(v104 + 56) + 24 * v103;
    v108 = *v107;
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4888, &unk_224DB81E8);
    v110 = v97;
    v111 = v306;
    v112 = &v306[*(v109 + 48)];
    v113 = *(v105 + 32);
    v317 = *(v107 + 8);
    v113(v306, v106, v110);
    *v112 = v108;
    *(v112 + 8) = v317;
    (*(*(v109 - 8) + 56))(v111, 0, 1, v109);
    v114 = v108;
    swift_unknownObjectRetain();
    v101 = v99;
    v86 = v301;
LABEL_21:
    sub_224A44E4C(v111, v86, &qword_27D6F4880, &unk_224DB81D8);
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4888, &unk_224DB81E8);
    v115 = *(v99 - 8);
    v97 = v115 + 48;
    v116 = *(v115 + 48);
    if ((v116)(v86, 1, v99) == 1)
    {
      break;
    }

    v96 = v101;
    v117 = v86 + *(v99 + 48);
    v118 = *v117;
    v99 = *(v117 + 8);
    v119 = *(v117 + 16);
    v97 = v320;
    v120 = v315;
    (*v319)(v315, v86, v320);

    v121 = v302;
    sub_224B8A864(v120, v99, v119, v304, v307, v305, v302);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v122 = v121;
      v123 = v313;
      sub_224B8FDD8(v122, v313, type metadata accessor for PlatterContentError);
      p_isa = *v318;
      v101 = v316;
      (*v318)(v316, v120, v97);
      sub_224B8FC30(v123, v314, type metadata accessor for PlatterContentError);
      v124 = v325;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v324[0] = v124;
      v126 = sub_224B0B8A4(v101);
      v128 = *(v124 + 16);
      v129 = (v127 & 1) == 0;
      v130 = __OFADD__(v128, v129);
      v131 = v128 + v129;
      if (v130)
      {
        goto LABEL_96;
      }

      v132 = v127;
      if (*(v124 + 24) >= v131)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_28;
        }

        v162 = v126;
        sub_224B271CC();
        v126 = v162;
        v75 = v324[0];
        if (v132)
        {
          goto LABEL_10;
        }

LABEL_29:
        v75[(v126 >> 6) + 8].isa = (v75[(v126 >> 6) + 8].isa | (1 << v126));
        v134 = v312;
        v135 = v126;
        v101 = v316;
        v97 = v320;
        (p_isa)(v75[6].isa + *(v312 + 72) * v126, v316, v320);
        sub_224B8FDD8(v314, v75[7].isa + *(v308 + 72) * v135, type metadata accessor for PlatterContentError);
        swift_unknownObjectRelease();
        v136 = *(v134 + 8);
        v136(v101, v97);
        sub_224B8FBD0(v313, type metadata accessor for PlatterContentError);
        v136(v315, v97);
        isa = v75[2].isa;
        v130 = __OFADD__(isa, 1);
        v138 = (isa + 1);
        if (v130)
        {
          goto LABEL_97;
        }

        v75[2].isa = v138;
        v325 = v75;
      }

      else
      {
        sub_224B11EAC(v131, isUniquelyReferenced_nonNull_native);
        v126 = sub_224B0B8A4(v316);
        if ((v132 & 1) != (v133 & 1))
        {
          goto LABEL_102;
        }

LABEL_28:
        v75 = v324[0];
        if ((v132 & 1) == 0)
        {
          goto LABEL_29;
        }

LABEL_10:
        sub_224B8FD74(v314, v75[7].isa + *(v308 + 72) * v126);
        swift_unknownObjectRelease();
        v98 = *v310;
        v97 = v320;
        (*v310)(v316, v320);
        sub_224B8FBD0(v313, type metadata accessor for PlatterContentError);
        v98(v315, v97);
        v325 = v75;
      }
    }

    else
    {
      p_isa = *v277;
      v140 = v282;
      v141 = v121;
      v142 = v284;
      (*v277)(v282, v141, v284);
      v143 = v120;
      v144 = *v318;
      v101 = v286;
      (*v318)(v286, v143, v97);
      (*v271)(v283, v140, v142);
      v145 = v287;
      v97 = swift_isUniquelyReferenced_nonNull_native();
      v324[0] = v145;
      v146 = sub_224B0B8A4(v101);
      v148 = *(v145 + 16);
      v149 = (v147 & 1) == 0;
      v130 = __OFADD__(v148, v149);
      v150 = v148 + v149;
      if (v130)
      {
        goto LABEL_98;
      }

      v151 = v147;
      if (*(v145 + 24) >= v150)
      {
        if ((v97 & 1) == 0)
        {
          v163 = v146;
          sub_224B27790();
          v146 = v163;
        }
      }

      else
      {
        sub_224B12764(v150, v97);
        v146 = sub_224B0B8A4(v286);
        if ((v151 & 1) != (v152 & 1))
        {
LABEL_102:
          result = sub_224DAFDD8();
          __break(1u);
          return result;
        }
      }

      v97 = v320;
      v287 = v324[0];
      if (v151)
      {
        v153 = v285;
        p_isa = v284;
        (*(v285 + 40))(*(v324[0] + 56) + *(v285 + 72) * v146, v283, v284);
        swift_unknownObjectRelease();
        v154 = *v310;
        (*v310)(v286, v97);
        (*(v153 + 8))(v282, p_isa);
        v154(v315, v97);
      }

      else
      {
        *(v324[0] + 8 * (v146 >> 6) + 64) |= 1 << v146;
        v155 = v312;
        v101 = v146;
        v156 = v286;
        v144(v287[6] + *(v312 + 72) * v146, v286, v97);
        v157 = p_isa;
        p_isa = v285;
        v158 = v284;
        v157(v287[7] + *(v285 + 72) * v101, v283, v284);
        swift_unknownObjectRelease();
        v159 = *(v155 + 8);
        v159(v156, v97);
        (p_isa[1])(v282, v158);
        v159(v315, v97);
        v160 = v287[2];
        v130 = __OFADD__(v160, 1);
        v161 = v160 + 1;
        if (v130)
        {
          goto LABEL_100;
        }

        v287[2] = v161;
      }

      v75 = v311;
    }
  }

  p_isa = &v311->isa;
  v101 = v311[2].isa;
  if (!v101)
  {
    v181 = v261;
    v182 = v279;
    v273(v261, v305 + v272, v279);
    v183 = v281;
    v184 = v258;
    v185 = v280;
    (*(v281 + 16))(v258, v307, v280);
    v186 = sub_224DAB228();
    v187 = sub_224DAF2A8();
    if (os_log_type_enabled(v186, v187))
    {
      v188 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v324[0] = v189;
      *v188 = 136446210;
      sub_224B8C88C(&qword_281350EA0, MEMORY[0x277CF9880]);
      v190 = sub_224DAFD28();
      v192 = v191;
      (*(v183 + 8))(v184, v185);
      v193 = sub_224A33F74(v190, v192, v324);

      *(v188 + 4) = v193;
      _os_log_impl(&dword_224A2F000, v186, v187, "%{public}s reload: succeeded", v188, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v189);
      MEMORY[0x22AA5EED0](v189, -1, -1);
      MEMORY[0x22AA5EED0](v188, -1, -1);

      v194 = v261;
    }

    else
    {

      (*(v183 + 8))(v184, v185);
      v194 = v181;
    }

    v275(v194, v182);
    v247 = v269;
    v248 = v267;
    v249 = v266;
    v250 = v265;
    swift_beginAccess();
    v251 = v259;
    sub_224A3796C(v250, v259, &qword_27D6F4270, &qword_224DB6580);
    if ((*(v249 + 48))(v251, 1, v248) == 1)
    {
      sub_224A3311C(v251, &qword_27D6F4270, &qword_224DB6580);
    }

    else
    {
      v252 = v255;
      (*(v249 + 32))(v255, v251, v248);
      sub_224DAF4A8();
      if (qword_2813507E8 != -1)
      {
        swift_once();
        v252 = v255;
      }

      sub_224DAB1D8();
      (*(v249 + 8))(v252, v248);
    }

    v247(v287, 0);

    v253 = v257;
    swift_beginAccess();
    v254 = *(v253 + 16);
    *(v253 + 16) = 0;
  }

  v314 = v116;
  v313 = *(v281 + 16);
  (v313)(v293, v307, v280);
  v164 = sub_224B0CCD0(v101, 0);
  *&v317 = sub_224B2F6F8(v324, v164 + ((*(v308 + 80) + 32) & ~*(v308 + 80)), v101, p_isa);
  v316 = v324[3];
  v315 = v324[4];

  sub_224A3B7E4();
  if (v317 != v101)
  {
    goto LABEL_99;
  }

  v165 = sub_224B42310(v164);

  *(v293 + *(v292 + 20)) = v165;
  v166 = v264;
  v167 = v279;
  v273(v264, v305 + v272, v279);
  v168 = v263;
  v101 = v280;
  (v313)(v263, v307, v280);
  v169 = sub_224DAB228();
  v170 = sub_224DAF288();
  v171 = v101;
  if (os_log_type_enabled(v169, v170))
  {
    v101 = swift_slowAlloc();
    *&v317 = swift_slowAlloc();
    v324[0] = v317;
    *v101 = 136446466;
    sub_224B8C88C(&qword_281350EA0, MEMORY[0x277CF9880]);
    v172 = sub_224DAFD28();
    v173 = v168;
    v175 = v174;
    (*(v281 + 8))(v173, v171);
    v176 = sub_224A33F74(v172, v175, v324);

    *(v101 + 4) = v176;
    *(v101 + 12) = 2082;
    v177 = sub_224B8BE90(&v325);
    v179 = sub_224A33F74(v177, v178, v324);

    *(v101 + 14) = v179;

    _os_log_impl(&dword_224A2F000, v169, v170, "%{public}s reload: failed during processing.\n %{public}s", v101, 0x16u);
    v180 = v317;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v180, -1, -1);
    MEMORY[0x22AA5EED0](v101, -1, -1);

    v275(v264, v167);
  }

  else
  {

    (*(v281 + 8))(v168, v101);
    v275(v166, v167);
  }

  v195 = v299;
  v196 = v296;
  p_isa = v295;
  v197 = v276;
  swift_beginAccess();
  v198 = *(v197 + 16);
  v199 = *(v198 + 64);
  v315 = (v198 + 64);
  v200 = 1 << *(v198 + 32);
  v201 = -1;
  if (v200 < 64)
  {
    v201 = ~(-1 << v200);
  }

  v202 = v201 & v199;
  v302 = ((v200 + 63) >> 6);
  v313 = (v115 + 56);
  v307 = (v308 + 56);
  v306 = (v308 + 48);
  v303 = 0x8000000224DC8220;
  v305 = v198;

  v203 = 0;
  v204 = v298;
  v304 = v99;
  while (1)
  {
    if (!v202)
    {
      if (v302 <= v203 + 1)
      {
        v213 = (v203 + 1);
      }

      else
      {
        v213 = v302;
      }

      v214 = v213 - 1;
      while (1)
      {
        v212 = v203 + 1;
        if (__OFADD__(v203, 1))
        {
          goto LABEL_95;
        }

        if (v212 >= v302)
        {
          (*v313)(p_isa, 1, 1, v99);
          v202 = 0;
          v203 = v214;
          goto LABEL_69;
        }

        v202 = *&v315[8 * v212];
        ++v203;
        if (v202)
        {
          v203 = v212;
          goto LABEL_68;
        }
      }
    }

    v212 = v203;
LABEL_68:
    v215 = __clz(__rbit64(v202));
    v202 &= v202 - 1;
    v216 = v215 | (v212 << 6);
    v217 = v305;
    v218 = v312;
    (*(v312 + 16))(v309, *(v305 + 48) + *(v312 + 72) * v216, v320);
    v219 = *(v217 + 56) + 24 * v216;
    v220 = *v219;
    v99 = v304;
    v221 = &v295[*(v304 + 12)];
    v222 = *(v218 + 32);
    v317 = *(v219 + 8);
    p_isa = v295;
    v222();
    *v221 = v220;
    *(v221 + 8) = v317;
    (*v313)(p_isa, 0, 1, v99);
    v223 = v220;
    swift_unknownObjectRetain();
    v196 = v296;
    v195 = v299;
LABEL_69:
    v224 = v297;
    sub_224A44E4C(p_isa, v297, &qword_27D6F4880, &unk_224DB81D8);
    if ((v314)(v224, 1, v99) == 1)
    {
      break;
    }

    v225 = v224 + *(v99 + 48);
    v226 = *v225;
    *&v317 = *(v225 + 8);
    v316 = *(v225 + 16);

    (*v319)(v196, v224, v320);
    v227 = v311;
    if (v311[2].isa && (v228 = sub_224B0B8A4(v196), (v229 & 1) != 0))
    {
      sub_224B8FC30(v227[7].isa + *(v308 + 72) * v228, v204, type metadata accessor for PlatterContentError);
      v230 = 0;
    }

    else
    {
      v230 = 1;
    }

    (*v307)(v204, v230, 1, v195);
    if ((*v306)(v204, 1, v195))
    {
      sub_224A3311C(v204, &qword_27D6F4878, &qword_224DB81D0);
      (*v310)(v196, v320);
      v322 = 0;
      v323 = 0xE000000000000000;
      sub_224DAF938();

      v322 = 0xD000000000000018;
      v323 = v303;
      v231 = v289;
      sub_224B8FC30(v293, v289, type metadata accessor for PlatterFetchingError);
      sub_224B8C88C(&qword_281358B68, type metadata accessor for PlatterFetchingError);
      v232 = sub_224DAFD38();
      if (v232)
      {
        v205 = v232;
        sub_224B8FBD0(v231, type metadata accessor for PlatterFetchingError);
      }

      else
      {
        v205 = swift_allocError();
        sub_224B8FDD8(v231, v206, type metadata accessor for PlatterFetchingError);
      }

      v207 = sub_224DA9518();

      v208 = [v207 debugDescription];
      v209 = sub_224DAEE18();
      v211 = v210;

      MEMORY[0x22AA5D210](v209, v211);

      v195 = v299;
    }

    else
    {
      v233 = v294;
      sub_224B8FC30(v204, v294, type metadata accessor for PlatterContentError);
      sub_224A3311C(v204, &qword_27D6F4878, &qword_224DB81D0);
      (*v310)(v196, v320);
      v234 = v233;
      v235 = v288;
      sub_224B8FC30(v234, v288, type metadata accessor for PlatterContentError);
      sub_224B8C88C(&qword_281359048, type metadata accessor for PlatterContentError);
      v236 = sub_224DAFD38();
      if (v236)
      {
        v237 = v236;
        sub_224B8FBD0(v235, type metadata accessor for PlatterContentError);
      }

      else
      {
        v237 = swift_allocError();
        sub_224B8FDD8(v235, v238, type metadata accessor for PlatterContentError);
      }

      v239 = sub_224DA9518();

      v240 = [v239 debugDescription];
      sub_224DAEE18();

      sub_224B8FBD0(v294, type metadata accessor for PlatterContentError);
    }

    v101 = v317;
    swift_getObjectType();
    sub_224DABD08();
    swift_unknownObjectRelease();

    v204 = v298;
  }

  v241 = v265;
  swift_beginAccess();
  v242 = v262;
  sub_224A3796C(v241, v262, &qword_27D6F4270, &qword_224DB6580);
  p_isa = v266;
  v101 = v267;
  if ((*(v266 + 48))(v242, 1, v267) == 1)
  {
    sub_224A3311C(v242, &qword_27D6F4270, &qword_224DB6580);
    v99 = v269;
    v97 = v293;
    goto LABEL_86;
  }

  v243 = v256;
  (p_isa[4])(v256, v242, v101);
  sub_224DAF4A8();
  v99 = v269;
  v97 = v293;
  if (qword_2813507E8 != -1)
  {
    goto LABEL_101;
  }

LABEL_85:
  sub_224DAB1D8();
  (p_isa[1])(v243, v101);
LABEL_86:
  sub_224B8C88C(&qword_281358B68, type metadata accessor for PlatterFetchingError);
  v244 = swift_allocError();
  sub_224B8FC30(v97, v245, type metadata accessor for PlatterFetchingError);
  (v99)(v244, 1);

  sub_224B8FBD0(v97, type metadata accessor for PlatterFetchingError);
}

uint64_t sub_224B8A864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v55 = a6;
  v56 = a3;
  v59 = a1;
  v60 = a5;
  v54 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4898, &qword_224DB8200);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v52[7] = v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4858, &unk_224DB8140);
  v13 = *(v12 - 8);
  v52[5] = v12;
  v52[6] = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v52 - v18;
  v20 = type metadata accessor for RequestCompletionOperation.Error(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v52 - v26;
  MEMORY[0x28223BE20](v25);
  v53 = sub_224DAB258();
  v58 = *(v53 - 8);
  v28 = *(v58 + 64);
  MEMORY[0x28223BE20](v53);
  v30 = v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = v52 - v33;
  v57 = a4;
  if (a4)
  {
    v35 = type metadata accessor for PlatterContentError(0);
    v36 = v35[5];
    v37 = sub_224DABCC8();
    (*(*(v37 - 8) + 16))(&a7[v36], v60, v37);
    v38 = v35[6];
    v39 = sub_224DAC918();
    (*(*(v39 - 8) + 16))(&a7[v38], v59, v39);
    v40 = sub_224DA9688();
    v41 = *(*(v40 - 8) + 56);
    v41(v34, 1, 1, v40);
    v42 = v34;
    v43 = v35[7];
    v41(&a7[v43], 1, 1, v40);
    v44 = v35[8];
    *a7 = 4;
    v45 = v57;
    v46 = v57;
    sub_224A838C0(v42, &a7[v43], &unk_27D6F4680, &unk_224DB4610);
    *&a7[v44] = v45;
  }

  else
  {
    v52[2] = v24;
    v52[0] = v17;
    v52[1] = v19;
    v52[3] = v27;
    v57 = v52 - v33;
    v48 = v53;
    (*(v58 + 16))(v30, v55 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger, v53);
    v49 = sub_224DABCC8();
    sub_224B8C88C(&qword_281350EA0, MEMORY[0x277CF9880]);
    v52[4] = v49;
    v50 = sub_224DAFD28();
    sub_224B8B8E8(v30, v50, v51, a7);
    (*(v58 + 8))(v30, v48);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4890, &qword_224DB81F8);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_224B8B8E8@<X0>(char *a1@<X2>, uint64_t a2@<X3>, unint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v55 = a3;
  v52 = a2;
  v53 = a1;
  v54 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4858, &unk_224DB8140);
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  v11 = sub_224DA9688();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v47 - v17;
  swift_getObjectType();
  v19 = v58;
  result = sub_224DABCF8();
  if (!v19)
  {
    v21 = v55;
    v50 = v16;
    v51 = v11;
    v22 = v57;
    sub_224B8D178();
    v58 = 0;
    sub_224A3B79C(0, &qword_281350918, 0x277CCAE18);
    if ((sub_224DA9338() & 1) == 0)
    {
      type metadata accessor for RequestCompletionOperation.Error(0);
      sub_224B8C88C(&qword_27D6F48A8, type metadata accessor for RequestCompletionOperation.Error);
      v39 = swift_allocError();
      v41 = v40;
      (*(v22 + 16))(v40, v10, v4);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48A0, &qword_224DB8208);
      (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
      v58 = v39;
      swift_willThrow();
      (*(v22 + 8))(v10, v4);
      v43 = v51;
      return (*(v12 + 8))(v18, v43);
    }

    v23 = v22;
    v24 = *(v22 + 16);
    v25 = v8;
    v56 = v4;
    v24(v8, v10, v4);

    v26 = sub_224DAB228();
    v27 = sub_224DAF2A8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v53 = v18;
      v49 = v10;
      v29 = v28;
      v48 = swift_slowAlloc();
      v59 = v48;
      *v29 = 136315394;
      *(v29 + 4) = sub_224A33F74(v52, v21, &v59);
      *(v29 + 12) = 2080;
      sub_224A33088(&qword_281351A90, &qword_27D6F4858, &unk_224DB8140);
      v30 = v27;
      v31 = sub_224DAFD28();
      v33 = v32;
      v34 = *(v23 + 8);
      v34(v25, v4);
      v35 = sub_224A33F74(v31, v33, &v59);

      *(v29 + 14) = v35;
      v36 = v4;
      _os_log_impl(&dword_224A2F000, v26, v30, "%s Consuming activity archive size %s", v29, 0x16u);
      v37 = v48;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v37, -1, -1);
      v38 = v29;
      v10 = v49;
      v18 = v53;
      MEMORY[0x22AA5EED0](v38, -1, -1);
    }

    else
    {

      v34 = *(v23 + 8);
      v36 = v56;
      v34(v25, v56);
    }

    sub_224A3B79C(0, &qword_281350B08, 0x277CCA9F8);
    v44 = v50;
    v45 = v51;
    (*(v12 + 16))(v50, v18);
    v46 = v58;
    sub_224B83FBC(v44);
    if (v46)
    {
      v58 = v46;
      v34(v10, v36);
      v43 = v45;
      return (*(v12 + 8))(v18, v43);
    }

    sub_224DAEC18();
    v58 = 0;
    v34(v10, v36);
    return (*(v12 + 8))(v18, v45);
  }

  return result;
}

uint64_t sub_224B8BE90(uint64_t *a1)
{
  v2 = type metadata accessor for PlatterContentError(0);
  v48 = *(v2 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48B8, &qword_224DB8218);
  v6 = *(*(v47 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v47);
  v53 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v46 = &v42 - v9;
  swift_beginAccess();
  v10 = *a1;
  v11 = *(*a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v56 = MEMORY[0x277D84F90];

    sub_224A3DFD8(0, v11, 0);
    v12 = v56;
    v13 = v10 + 64;
    v14 = -1 << *(v10 + 32);
    result = sub_224DAF798();
    v16 = result;
    v42 = v2;
    v43 = v10 + 64;
    v44 = v10;
    v45 = v5;
    v17 = v46;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v10 + 32))
    {
      if ((*(v13 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_18;
      }

      v51 = v16 >> 6;
      v52 = v12;
      v49 = v11;
      v50 = *(v10 + 36);
      v18 = v47;
      v19 = *(v47 + 48);
      v20 = *(v10 + 48);
      v21 = sub_224DAC918();
      v22 = *(v21 - 8);
      (*(v22 + 16))(v17, v20 + *(v22 + 72) * v16, v21);
      sub_224B8FC30(*(v10 + 56) + *(v48 + 72) * v16, &v17[v19], type metadata accessor for PlatterContentError);
      v23 = v53;
      (*(v22 + 32))(v53, v17, v21);
      v24 = *(v18 + 48);
      sub_224B8FDD8(&v17[v19], v23 + v24, type metadata accessor for PlatterContentError);
      v54 = 539828256;
      v55 = 0xE400000000000000;
      sub_224B8C88C(&qword_281350D60, MEMORY[0x277CF9A98]);
      v25 = sub_224DAFD28();
      MEMORY[0x22AA5D210](v25);

      MEMORY[0x22AA5D210](8250, 0xE200000000000000);
      v26 = v23 + v24;
      v27 = v45;
      sub_224B8FC30(v26, v45, type metadata accessor for PlatterContentError);
      sub_224B8C88C(&qword_281359048, type metadata accessor for PlatterContentError);
      v28 = sub_224DAFD38();
      if (v28)
      {
        v29 = v28;
        sub_224B8FBD0(v27, type metadata accessor for PlatterContentError);
      }

      else
      {
        v29 = swift_allocError();
        sub_224B8FDD8(v27, v30, type metadata accessor for PlatterContentError);
      }

      v31 = sub_224DA9518();

      v32 = [v31 debugDescription];
      v33 = sub_224DAEE18();
      v35 = v34;

      MEMORY[0x22AA5D210](v33, v35);

      v36 = v54;
      v37 = v55;
      result = sub_224A3311C(v53, &qword_27D6F48B8, &qword_224DB8218);
      v12 = v52;
      v56 = v52;
      v39 = *(v52 + 16);
      v38 = *(v52 + 24);
      v10 = v44;
      if (v39 >= v38 >> 1)
      {
        result = sub_224A3DFD8((v38 > 1), v39 + 1, 1);
        v12 = v56;
      }

      *(v12 + 16) = v39 + 1;
      v40 = v12 + 16 * v39;
      *(v40 + 32) = v36;
      *(v40 + 40) = v37;
      if (v16 >= -(-1 << *(v10 + 32)))
      {
        goto LABEL_19;
      }

      v13 = v43;
      if ((*(v43 + 8 * v51) & (1 << v16)) == 0)
      {
        goto LABEL_20;
      }

      if (v50 != *(v10 + 36))
      {
        goto LABEL_21;
      }

      result = sub_224DAF7B8();
      v16 = result;
      v11 = v49 - 1;
      if (v49 == 1)
      {

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_16:
    v54 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
    sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0);
    v41 = sub_224DAEDA8();

    return v41;
  }

  return result;
}

uint64_t sub_224B8C4C0()
{
  v1 = v0[3];
  sub_224A3D418(v0[2]);
  v2 = v0[5];
  sub_224A3D418(v0[4]);
  sub_224A3311C((v0 + 6), &unk_27D6F57B0, qword_224DB7B48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v3 = v0[21];

  v4 = OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger;
  v5 = sub_224DAB258();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_224B8FBD0(v0 + OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_requestCompletor, type metadata accessor for RequestCompletionOperation);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_224B8C5E8()
{
  v0 = sub_224DAB258();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_224B8C6E0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_224B8C6E0()
{
  if (!qword_281351A88)
  {
    sub_224A3B79C(255, &qword_281350918, 0x277CCAE18);
    v0 = sub_224DA9378();
    if (!v1)
    {
      atomic_store(v0, &qword_281351A88);
    }
  }
}

void sub_224B8C790()
{
  sub_224B8C6E0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_224B8C88C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_224B8C940@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_224B903E4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_224B8C978()
{
  v1 = 0xD00000000000001BLL;
  v2 = *v0;
  v3 = 0xD000000000000021;
  v4 = 0xD000000000000027;
  if (v2 != 3)
  {
    v4 = 0xD000000000000037;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

unint64_t sub_224B8CA08()
{
  v1 = v0;
  v2 = 0xD00000000000001BLL;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v46 - v5;
  v7 = sub_224DA9688();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v47 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4780, qword_224DB77A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB30F0;
  v12 = *MEMORY[0x277CCA470];
  *(inited + 32) = sub_224DAEE18();
  *(inited + 40) = v13;
  v14 = *v0;
  v15 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  if (v14 <= 1)
  {
    if (v14)
    {
      v16 = 0xD000000000000039;
      v2 = 0xD000000000000028;
      v17 = "on the reload service.";
      v18 = "Activity was started but had no payload.";
    }

    else
    {
      v16 = 0xD00000000000001FLL;
      v17 = "fore showing any content.";
      v18 = "Activity had no descriptor.";
    }
  }

  else if (v14 == 2)
  {
    v16 = 0xD000000000000036;
    v2 = 0xD000000000000021;
    v17 = "ble verification issues.";
    v18 = "No environment found for variant.";
  }

  else if (v14 == 3)
  {
    v16 = 0xD000000000000038;
    v2 = 0xD000000000000027;
    v17 = "ilures or crash causes.";
    v18 = "Returned timeline could not be accepted";
  }

  else
  {
    v16 = 0xD000000000000047;
    v2 = 0xD000000000000037;
    v17 = "cting to the extension.";
    v18 = "Something went wrong while connecting to the extension.";
  }

  *(inited + 48) = v2;
  *(inited + 56) = (v18 - 32) | 0x8000000000000000;
  v19 = *MEMORY[0x277CCA498];
  *(inited + 80) = sub_224DAEE18();
  *(inited + 88) = v20;
  *(inited + 120) = v15;
  *(inited + 96) = v16;
  *(inited + 104) = v17 | 0x8000000000000000;
  v21 = sub_224DA0AC0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F58E0, &unk_224DB6450);
  swift_arrayDestroy();
  v22 = type metadata accessor for PlatterContentError(0);
  v23 = *&v0[*(v22 + 32)];
  if (v23)
  {
    v24 = *MEMORY[0x277CCA7E8];
    v25 = v0;
    v26 = sub_224DAEE18();
    v46 = v6;
    v27 = v8;
    v28 = v7;
    v30 = v29;
    swift_getErrorValue();
    v31 = v48;
    v32 = v49;
    v53 = v49;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v52);
    (*(*(v32 - 8) + 16))(boxed_opaque_existential_1, v31, v32);
    sub_224A739A4(&v52, v51);
    v34 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v21;
    v36 = v26;
    v1 = v25;
    sub_224B20218(v51, v36, v30, isUniquelyReferenced_nonNull_native);

    v7 = v28;
    v8 = v27;
    v6 = v46;

    v21 = v50;
  }

  sub_224A3796C(&v1[*(v22 + 28)], v6, &unk_27D6F4680, &unk_224DB4610);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_224A3311C(v6, &unk_27D6F4680, &unk_224DB4610);
  }

  else
  {
    v37 = v47;
    (*(v8 + 32))(v47, v6, v7);
    v38 = *MEMORY[0x277CCA170];
    v39 = sub_224DAEE18();
    v41 = v40;
    v42 = sub_224DA9658();
    v53 = MEMORY[0x277D837D0];
    *&v52 = v42;
    *(&v52 + 1) = v43;
    sub_224A739A4(&v52, v51);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v21;
    sub_224B20218(v51, v39, v41, v44);

    (*(v8 + 8))(v37, v7);
    return v50;
  }

  return v21;
}

uint64_t sub_224B8CED8(uint64_t a1)
{
  v2 = sub_224B8C88C(&qword_281359050, type metadata accessor for PlatterContentError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_224B8CF44(uint64_t a1)
{
  v2 = sub_224B8C88C(&qword_281359050, type metadata accessor for PlatterContentError);

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_224B8CFCC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4780, qword_224DB77A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  v4 = *MEMORY[0x277CCA578];
  *(inited + 32) = sub_224DAEE18();
  *(inited + 40) = v5;
  v6 = *(v1 + *(a1 + 20));
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48E8, &unk_224DB84F8);
  *(inited + 48) = v6;

  v7 = sub_224DA0AC0(inited);
  swift_setDeallocating();
  sub_224A3311C(inited + 32, &unk_27D6F58E0, &unk_224DB6450);
  return v7;
}

uint64_t sub_224B8D0A0(uint64_t a1)
{
  v2 = sub_224B8C88C(qword_281358B70, type metadata accessor for PlatterFetchingError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_224B8D10C(uint64_t a1)
{
  v2 = sub_224B8C88C(qword_281358B70, type metadata accessor for PlatterFetchingError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_224B8D178()
{
  v1 = sub_224DA9498();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48B0, &qword_224DB8210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  v7 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v8 = v7;
  sub_224D5823C(inited);
  swift_setDeallocating();
  sub_224B8FBD0(inited + 32, type metadata accessor for URLResourceKey);
  sub_224DA95C8();

  if (!v0)
  {
    sub_224DA9488();
    if (v10)
    {
      type metadata accessor for RequestCompletionOperation.Error(0);
      sub_224B8C88C(&qword_27D6F48A8, type metadata accessor for RequestCompletionOperation.Error);
      swift_allocError();
      v12 = v11;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48A0, &qword_224DB8208);
      (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
      swift_willThrow();
    }

    else
    {
      v14 = [objc_opt_self() bytes];
      sub_224A3B79C(0, &qword_281350918, 0x277CCAE18);
      sub_224DA9348();
    }

    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

void sub_224B8D40C(void *a1, uint64_t a2, uint64_t a3, char *a4, void (*a5)(void *, uint64_t), uint64_t a6)
{
  v322 = a4;
  v292 = a3;
  v303 = a2;
  v274 = a1;
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4870, &qword_224DB81C8);
  v8 = *(*(v314 - 8) + 64);
  MEMORY[0x28223BE20](v314);
  v317 = (&v268 - v9);
  v309 = type metadata accessor for PlatterContentError(0);
  v307 = *(v309 - 8);
  v10 = *(v307 + 64);
  v11 = MEMORY[0x28223BE20](v309);
  v313 = &v268 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v312 = &v268 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v299 = &v268 - v16;
  MEMORY[0x28223BE20](v15);
  v304 = &v268 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4878, &qword_224DB81D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v308 = &v268 - v20;
  v21 = sub_224DAC918();
  v306 = *(v21 - 8);
  v22 = *(v306 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v321 = (&v268 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x28223BE20](v23);
  *&v326 = &v268 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v300 = &v268 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v325 = &v268 - v30;
  MEMORY[0x28223BE20](v29);
  v305 = &v268 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4880, &unk_224DB81D8);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v319 = &v268 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v310 = &v268 - v36;
  v301 = type metadata accessor for PlatterFetchingError(0);
  v37 = *(*(v301 - 8) + 64);
  MEMORY[0x28223BE20](v301);
  v302 = &v268 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = sub_224DAB1F8();
  v290 = *(v291 - 8);
  v39 = *(v290 + 64);
  MEMORY[0x28223BE20](v291);
  v281 = &v268 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4270, &qword_224DB6580);
  v41 = *(*(v315 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v315);
  v280 = &v268 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v269 = &v268 - v45;
  MEMORY[0x28223BE20](v44);
  v268 = &v268 - v46;
  v276 = sub_224DAE6E8();
  v275 = *(v276 - 8);
  v47 = *(v275 + 64);
  MEMORY[0x28223BE20](v276);
  v277 = &v268 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v283 = &v268 - v51;
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v320 = *(v318 - 8);
  v52 = *(v320 + 64);
  MEMORY[0x28223BE20](v318);
  v311 = &v268 - v53;
  v54 = sub_224DABCC8();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  v57 = MEMORY[0x28223BE20](v54);
  v273 = &v268 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x28223BE20](v57);
  v279 = &v268 - v60;
  v272 = v61;
  MEMORY[0x28223BE20](v59);
  v63 = &v268 - v62;
  v64 = sub_224DAB258();
  v65 = *(v64 - 8);
  v66 = *(v65 + 8);
  v67 = MEMORY[0x28223BE20](v64);
  v282 = &v268 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x28223BE20](v67);
  v271 = &v268 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v323 = &v268 - v72;
  MEMORY[0x28223BE20](v71);
  v74 = &v268 - v73;
  v75 = swift_allocObject();
  *(v75 + 16) = a5;
  *(v75 + 24) = a6;
  v287 = v75;
  v324 = v65;
  v76 = *(v65 + 2);
  v293 = OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger;
  v295 = v65 + 16;
  v294 = v76;
  v76(v74, &v322[OBJC_IVAR____TtC10ChronoCore22ActivityReloadStrategy_logger], v64);
  v297 = v55;
  v77 = *(v55 + 16);
  v289 = v55 + 16;
  v288 = v77;
  v77(v63, v303, v54);

  v78 = sub_224DAB228();
  v79 = sub_224DAF2A8();
  v80 = os_log_type_enabled(v78, v79);
  v327 = v21;
  v298 = v64;
  v285 = a6;
  v284 = a5;
  v286 = v54;
  if (v80)
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    aBlock = v82;
    *v81 = 136446210;
    sub_224B8C88C(&qword_281350EA0, MEMORY[0x277CF9880]);
    v83 = sub_224DAFD28();
    v85 = v84;
    v278 = *(v297 + 8);
    v278(v63, v54);
    v86 = sub_224A33F74(v83, v85, &aBlock);

    *(v81 + 4) = v86;
    _os_log_impl(&dword_224A2F000, v78, v79, "%{public}s reload: begin", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v82);
    MEMORY[0x22AA5EED0](v82, -1, -1);
    MEMORY[0x22AA5EED0](v81, -1, -1);
  }

  else
  {

    v278 = *(v297 + 8);
    v278(v63, v54);
  }

  v296 = *(v324 + 1);
  v296(v74, v298);
  v87 = swift_allocObject();
  sub_224DAD198();
  aBlock = 0;
  v329 = 0xE000000000000000;
  sub_224DAF938();

  aBlock = 0xD000000000000011;
  v329 = 0x8000000224DC7CA0;
  v88 = v303;
  v89 = sub_224DABCA8();
  v90 = [v89 description];
  v91 = sub_224DAEE18();
  v93 = v92;

  MEMORY[0x22AA5D210](v91, v93);

  *(v87 + 16) = sub_224DAD188();
  v316 = *(v322 + 4);
  if (!v316)
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    (*(v275 + 104))(v277, *MEMORY[0x277CE3C38], v276);
    aBlock = 0;
    v329 = 0xE000000000000000;
    sub_224DAF938();
    MEMORY[0x22AA5D210](0xD000000000000051, 0x8000000224DC81C0);
    v108 = sub_224DABCA8();
    v109 = [v108 description];
    v110 = sub_224DAEE18();
    v112 = v111;

    MEMORY[0x22AA5D210](v110, v112);

    v113 = sub_224DAF638();
    v284(v113, 1);

    return;
  }

  v270 = v87;
  v94 = *(v322 + 5);
  v95 = swift_allocBox();
  v96 = *(v290 + 56);
  v276 = v97;
  v96(v97, 1, 1, v291);
  v315 = v94;

  v98 = sub_224DABCA8();
  v99 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v100 = v283;
  sub_224A3796C(v98 + v99, v283, &unk_27D6F5060, &qword_224DB5620);

  v101 = v320;
  v102 = v318;
  i = v88;
  if ((*(v320 + 48))(v100, 1, v318) == 1)
  {
    sub_224A3311C(v100, &unk_27D6F5060, &qword_224DB5620);
    v275 = 0;
    v104 = v327;
    v105 = v292;
  }

  else
  {
    (*(v101 + 32))(v311, v100, v102);
    v114 = sub_224DA9FE8();
    v116 = v115;
    v117 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    v118 = sub_224A921B4(v114, v116, 0);
    v104 = v327;
    v105 = v292;
    v106 = v317;
    v275 = 0;
    if (!v118)
    {
      v107 = v323;
      (*(v320 + 8))(v311, v102);
      goto LABEL_12;
    }

    v283 = v118;
    if ([v118 developerType] != 1)
    {
      (*(v320 + 8))(v311, v102);

      goto LABEL_8;
    }

    if (qword_2813507E8 != -1)
    {
      swift_once();
    }

    v239 = qword_281364CC0;
    v240 = v268;
    sub_224DAB1E8();
    v241 = v291;
    v96(v240, 0, 1, v291);
    v242 = v276;
    sub_224A838C0(v240, v276, &qword_27D6F4270, &qword_224DB6580);
    LODWORD(v277) = sub_224DAF4B8();
    v243 = v269;
    sub_224A3796C(v242, v269, &qword_27D6F4270, &qword_224DB6580);
    v244 = v290;
    if ((*(v290 + 48))(v243, 1, v241) == 1)
    {

      __break(1u);
LABEL_100:

      sub_224DAFDD8();
      __break(1u);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4278, &unk_224DB79B0);
    v245 = swift_allocObject();
    *(v245 + 16) = xmmword_224DB3100;
    v246 = sub_224DABCA8();
    v247 = [v246 description];

    v248 = sub_224DAEE18();
    v250 = v249;

    *(v245 + 56) = MEMORY[0x277D837D0];
    *(v245 + 64) = sub_224A92300();
    *(v245 + 32) = v248;
    *(v245 + 40) = v250;
    i = v303;
    sub_224DAB1D8();

    (*(v320 + 8))(v311, v318);
    (*(v244 + 8))(v243, v241);
    v104 = v327;
  }

  v106 = v317;
LABEL_8:
  v107 = v323;
LABEL_12:
  v119 = swift_allocObject();
  v120 = MEMORY[0x277D84F90];
  v121 = sub_224DA12A0(MEMORY[0x277D84F90]);
  v318 = v119;
  *(v119 + 16) = v121;
  isUniquelyReferenced_nonNull_native = sub_224DA149C(v120);
  v334 = isUniquelyReferenced_nonNull_native;
  v123 = v298;
  v294(v107, &v322[v293], v298);

  v124 = sub_224DAB228();
  v125 = sub_224DAF278();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    *v126 = 134349056;
    *(v126 + 4) = *(v105 + 16);

    _os_log_impl(&dword_224A2F000, v124, v125, "Preparing variants. (count: %{public}ld)", v126, 0xCu);
    v127 = v126;
    v107 = v323;
    MEMORY[0x22AA5EED0](v127, -1, -1);
  }

  else
  {
  }

  v277 = v95;
  v283 = v324 + 8;
  v296(v107, v123);
  v128 = *(v105 + 16);
  v269 = v128;
  if (v128)
  {
    v129 = *(v306 + 16);
    v130 = v105 + ((*(v306 + 80) + 32) & ~*(v306 + 80));
    v311 = (v306 + 8);
    v323 = *(v306 + 72);
    v131 = v300;
    v320 = v306 + 16;
    v324 = v129;
    v132 = v106;
    (v129)(v300, v130, v104);
    while (1)
    {
      sub_224B8643C(v131, v316, i, v322, v132);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      v134 = i;
      v135 = v132;
      v136 = v312;
      sub_224B8FDD8(v135, v312, type metadata accessor for PlatterContentError);
      i = v321;
      (v129)(v321, v131, v104);
      sub_224B8FC30(v136, v313, type metadata accessor for PlatterContentError);
      v137 = v334;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v137;
      v138 = sub_224B0B8A4(i);
      v140 = *(v137 + 16);
      v141 = (v139 & 1) == 0;
      v142 = __OFADD__(v140, v141);
      v143 = v140 + v141;
      if (v142)
      {
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v144 = v139;
      if (*(v137 + 24) >= v143)
      {
        i = v134;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v166 = v138;
          sub_224B271CC();
          v138 = v166;
        }
      }

      else
      {
        sub_224B11EAC(v143, isUniquelyReferenced_nonNull_native);
        v138 = sub_224B0B8A4(v321);
        if ((v144 & 1) != (v145 & 1))
        {
          goto LABEL_100;
        }

        i = v134;
      }

      v134 = v320;
      isUniquelyReferenced_nonNull_native = aBlock;
      if (v144)
      {
        sub_224B8FD74(v313, *(aBlock + 56) + *(v307 + 72) * v138);
        v133 = *v311;
        v104 = v327;
        (*v311)(v321, v327);
        sub_224B8FBD0(v312, type metadata accessor for PlatterContentError);
        v133(v131, v104);
        v334 = isUniquelyReferenced_nonNull_native;
        v129 = v324;
        v132 = v317;
      }

      else
      {
        *(aBlock + 8 * (v138 >> 6) + 64) |= 1 << v138;
        v159 = v138;
        v160 = v321;
        v104 = v327;
        (v324)(*(isUniquelyReferenced_nonNull_native + 48) + v138 * v323, v321, v327);
        sub_224B8FDD8(v313, *(isUniquelyReferenced_nonNull_native + 56) + *(v307 + 72) * v159, type metadata accessor for PlatterContentError);
        v137 = *v311;
        (*v311)(v160, v104);
        sub_224B8FBD0(v312, type metadata accessor for PlatterContentError);
        (v137)(v131, v104);
        v161 = *(isUniquelyReferenced_nonNull_native + 16);
        v142 = __OFADD__(v161, 1);
        v162 = v161 + 1;
        if (v142)
        {
          goto LABEL_95;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v162;
        v334 = isUniquelyReferenced_nonNull_native;
        v129 = v324;
        v132 = v317;
        v104 = v327;
      }

LABEL_18:
      v130 += v323;
      if (!--v128)
      {
        goto LABEL_41;
      }

      (v129)(v131, v130, v104);
    }

    v146 = v132;
    v147 = isUniquelyReferenced_nonNull_native;
    v149 = *v132;
    v148 = v132[1];
    isUniquelyReferenced_nonNull_native = v146[2];
    v150 = v131;
    v131 = v326;
    (v129)(v326, v150, v104);
    v104 = v149;
    swift_unknownObjectRetain();
    i = v318;
    v151 = *(v318 + 16);
    v134 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = *(i + 16);
    v137 = aBlock;
    *(i + 16) = 0x8000000000000000;
    v152 = sub_224B0B8A4(v131);
    v154 = *(v137 + 16);
    v155 = (v153 & 1) == 0;
    v142 = __OFADD__(v154, v155);
    v156 = v154 + v155;
    if (v142)
    {
      goto LABEL_94;
    }

    v157 = v153;
    if (*(v137 + 24) >= v156)
    {
      v131 = v300;
      if ((v134 & 1) == 0)
      {
        v167 = v152;
        sub_224B274F0();
        v152 = v167;
        v134 = v327;
        v137 = aBlock;
        if (v157)
        {
          goto LABEL_36;
        }

        goto LABEL_38;
      }
    }

    else
    {
      sub_224B1234C(v156, v134);
      v152 = sub_224B0B8A4(v326);
      v131 = v300;
      if ((v157 & 1) != (v158 & 1))
      {
        goto LABEL_100;
      }
    }

    v134 = v327;
    v137 = aBlock;
    if (v157)
    {
LABEL_36:
      v163 = *(v137 + 56) + 24 * v152;
      v165 = *v163;
      v164 = *(v163 + 8);
      *v163 = v104;
      *(v163 + 8) = v148;
      *(v163 + 16) = isUniquelyReferenced_nonNull_native;
      swift_unknownObjectRelease();

LABEL_40:
      v171 = *v311;
      (*v311)(v326, v134);
      *(v318 + 16) = v137;
      swift_unknownObjectRelease();

      v104 = v134;
      v171(v131, v134);
      i = v303;
      isUniquelyReferenced_nonNull_native = v147;
      v132 = v317;
      v129 = v324;
      goto LABEL_18;
    }

LABEL_38:
    *(v137 + 8 * (v152 >> 6) + 64) |= 1 << v152;
    i = v152;
    (v324)(*(v137 + 48) + v152 * v323, v326, v134);
    v168 = (*(v137 + 56) + 24 * i);
    *v168 = v104;
    v168[1] = v148;
    v168[2] = isUniquelyReferenced_nonNull_native;
    v169 = *(v137 + 16);
    v142 = __OFADD__(v169, 1);
    v170 = v169 + 1;
    if (v142)
    {
      goto LABEL_96;
    }

    *(v137 + 16) = v170;
    goto LABEL_40;
  }

LABEL_41:
  v172 = *(isUniquelyReferenced_nonNull_native + 16);
  v323 = isUniquelyReferenced_nonNull_native;
  if (v172)
  {
    v173 = v282;
    v174 = v298;
    v294(v282, &v322[v293], v298);
    v175 = v279;
    v134 = v286;
    v288(v279, i, v286);
    v176 = sub_224DAB228();
    v177 = sub_224DAF288();
    if (os_log_type_enabled(v176, v177))
    {
      v178 = i;
      v179 = v175;
      v180 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      aBlock = v181;
      *v180 = 136446466;
      sub_224B8C88C(&qword_281350EA0, MEMORY[0x277CF9880]);
      v182 = sub_224DAFD28();
      v184 = v183;
      v185 = v179;
      i = v178;
      v278(v185, v134);
      v186 = sub_224A33F74(v182, v184, &aBlock);

      *(v180 + 4) = v186;
      *(v180 + 12) = 2082;
      v187 = sub_224B8BE90(&v334);
      v189 = sub_224A33F74(v187, v188, &aBlock);

      *(v180 + 14) = v189;
      v104 = v327;
      isUniquelyReferenced_nonNull_native = v323;
      _os_log_impl(&dword_224A2F000, v176, v177, "%{public}s reload: failed during preparation.\n %{public}s", v180, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v181, -1, -1);
      MEMORY[0x22AA5EED0](v180, -1, -1);

      v190 = v282;
    }

    else
    {

      v278(v175, v134);
      v190 = v173;
    }

    v296(v190, v174);
    v137 = v291;
    v130 = v290;
    v131 = v281;
    v197 = v280;
    sub_224A3796C(v276, v280, &qword_27D6F4270, &qword_224DB6580);
    if ((*(v130 + 48))(v197, 1, v137) != 1)
    {
      (*(v130 + 32))(v131, v197, v137);
      sub_224DAF4A8();
      if (qword_2813507E8 != -1)
      {
        goto LABEL_98;
      }

      goto LABEL_50;
    }

    sub_224A3311C(v197, &qword_27D6F4270, &qword_224DB6580);
    while (1)
    {
      v288(v302, i, v134);
      v137 = *(isUniquelyReferenced_nonNull_native + 16);
      if (!v137)
      {
        break;
      }

      v198 = sub_224B0CCD0(*(isUniquelyReferenced_nonNull_native + 16), 0);
      v130 = sub_224B2F6F8(&aBlock, v198 + ((*(v307 + 80) + 32) & ~*(v307 + 80)), v137, isUniquelyReferenced_nonNull_native);
      v131 = aBlock;
      v104 = v330;
      i = v331;
      v134 = v332;

      sub_224A3B7E4();
      if (v130 == v137)
      {
        v104 = v327;
        goto LABEL_55;
      }

LABEL_97:
      __break(1u);
LABEL_98:
      swift_once();
LABEL_50:
      sub_224DAB1D8();
      (*(v130 + 8))(v131, v137);
    }

    v198 = MEMORY[0x277D84F90];
LABEL_55:
    v134 = v319;
    v199 = sub_224B42310(v198);

    *&v302[*(v301 + 20)] = v199;
    v200 = *(v318 + 16);
    v201 = *(v200 + 64);
    v322 = (v200 + 64);
    v202 = 1 << *(v200 + 32);
    v203 = -1;
    if (v202 < 64)
    {
      v203 = ~(-1 << v202);
    }

    v204 = v203 & v201;
    v311 = ((v202 + 63) >> 6);
    v313 = v306 + 16;
    v324 = (v306 + 32);
    v320 = v307 + 48;
    v321 = (v307 + 56);
    v317 = (v306 + 8);
    v312 = "l with extension ";
    v314 = v200;

    v130 = 0;
    for (i = &qword_27D6F4888; ; i = &qword_27D6F4888)
    {
      if (!v204)
      {
        if (v311 <= v130 + 1)
        {
          v206 = (v130 + 1);
        }

        else
        {
          v206 = v311;
        }

        v137 = (v206 - 1);
        while (1)
        {
          v205 = v130 + 1;
          if (__OFADD__(v130, 1))
          {
            break;
          }

          if (v205 >= v311)
          {
            v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4888, &unk_224DB81E8);
            (*(*(v232 - 8) + 56))(v134, 1, 1, v232);
            v204 = 0;
            v130 = v137;
            goto LABEL_71;
          }

          v204 = *&v322[8 * v205];
          ++v130;
          if (v204)
          {
            v130 = v205;
            goto LABEL_70;
          }
        }

        __break(1u);
        goto LABEL_93;
      }

      v205 = v130;
LABEL_70:
      v207 = __clz(__rbit64(v204));
      v204 &= v204 - 1;
      v208 = v207 | (v205 << 6);
      v209 = v314;
      v210 = v306;
      (*(v306 + 16))(v305, *(v314 + 48) + *(v306 + 72) * v208, v104);
      v211 = *(v209 + 56) + 24 * v208;
      v212 = *v211;
      v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4888, &unk_224DB81E8);
      v214 = &v319[*(v213 + 48)];
      v215 = *(v210 + 32);
      v326 = *(v211 + 8);
      v134 = v319;
      v215();
      *v214 = v212;
      *(v214 + 8) = v326;
      (*(*(v213 - 8) + 56))(v134, 0, 1, v213);
      v216 = v212;
      swift_unknownObjectRetain();
LABEL_71:
      isUniquelyReferenced_nonNull_native = v310;
      sub_224A44E4C(v134, v310, &qword_27D6F4880, &unk_224DB81D8);
      v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4888, &unk_224DB81E8);
      if ((*(*(v217 - 8) + 48))(isUniquelyReferenced_nonNull_native, 1, v217) == 1)
      {
        break;
      }

      v218 = isUniquelyReferenced_nonNull_native + *(v217 + 48);
      v219 = *(v218 + 8);
      v131 = *(v218 + 16);

      v220 = v325;
      (*v324)(v325, isUniquelyReferenced_nonNull_native, v327);
      v221 = v323;
      if (*(v323 + 16) && (v222 = sub_224B0B8A4(v220), (v223 & 1) != 0))
      {
        v224 = *(v221 + 56) + *(v307 + 72) * v222;
        v225 = v308;
        sub_224B8FC30(v224, v308, type metadata accessor for PlatterContentError);
        v226 = 0;
      }

      else
      {
        v226 = 1;
        v225 = v308;
      }

      v227 = v309;
      (*v321)(v225, v226, 1, v309);
      if ((*v320)(v225, 1, v227))
      {
        sub_224A3311C(v225, &qword_27D6F4878, &qword_224DB81D0);
        v104 = v327;
        (*v317)(v325, v327);
        aBlock = 0;
        v329 = 0xE000000000000000;
        sub_224DAF938();
        MEMORY[0x22AA5D210](0xD000000000000018, v312 | 0x8000000000000000);
        sub_224DAFA48();
      }

      else
      {
        isUniquelyReferenced_nonNull_native = type metadata accessor for PlatterContentError;
        v228 = v304;
        sub_224B8FC30(v225, v304, type metadata accessor for PlatterContentError);
        sub_224A3311C(v225, &qword_27D6F4878, &qword_224DB81D0);
        (*v317)(v325, v327);
        v229 = v299;
        sub_224B8FC30(v228, v299, type metadata accessor for PlatterContentError);
        sub_224B8C88C(&qword_281359048, type metadata accessor for PlatterContentError);
        v230 = sub_224DAFD38();
        if (v230)
        {
          v231 = v230;
          sub_224B8FBD0(v229, type metadata accessor for PlatterContentError);
        }

        else
        {
          v231 = swift_allocError();
          sub_224B8FDD8(v229, v233, type metadata accessor for PlatterContentError);
        }

        v234 = sub_224DA9518();

        v235 = [v234 debugDescription];
        sub_224DAEE18();

        sub_224B8FBD0(v304, type metadata accessor for PlatterContentError);
        v104 = v327;
        v134 = v319;
      }

      swift_getObjectType();
      sub_224DABD08();
      swift_unknownObjectRelease();
    }

    sub_224B8C88C(&qword_281358B68, type metadata accessor for PlatterFetchingError);
    v236 = swift_allocError();
    v237 = v302;
    sub_224B8FC30(v302, v238, type metadata accessor for PlatterFetchingError);
    v284(v236, 1);
    sub_224A3D418(v316);

    sub_224B8FBD0(v237, type metadata accessor for PlatterFetchingError);
  }

  else
  {
    v191 = v271;
    v294(v271, &v322[v293], v298);

    v192 = sub_224DAB228();
    v193 = sub_224DAF278();
    v194 = os_log_type_enabled(v192, v193);
    v195 = v286;
    if (v194)
    {
      v196 = swift_slowAlloc();
      *v196 = 134349056;
      *(v196 + 4) = v269;

      _os_log_impl(&dword_224A2F000, v192, v193, "Beginning platter fetch. (count: %{public}ld)", v196, 0xCu);
      MEMORY[0x22AA5EED0](v196, -1, -1);
    }

    else
    {
    }

    v251 = v272;
    v296(v191, v298);
    v252 = *(v318 + 16);

    sub_224B83DA0(v253);

    sub_224DAE468();
    v327 = sub_224DAEFF8();

    v254 = v273;
    v288(v273, i, v195);
    v255 = v297;
    v256 = (*(v297 + 80) + 16) & ~*(v297 + 80);
    v257 = (v251 + v256 + 7) & 0xFFFFFFFFFFFFFFF8;
    v258 = (v257 + 15) & 0xFFFFFFFFFFFFFFF8;
    v259 = (v258 + 15) & 0xFFFFFFFFFFFFFFF8;
    v260 = (v259 + 15) & 0xFFFFFFFFFFFFFFF8;
    v261 = (v260 + 15) & 0xFFFFFFFFFFFFFFF8;
    v262 = (v261 + 23) & 0xFFFFFFFFFFFFFFF8;
    v263 = swift_allocObject();
    (*(v255 + 32))(v263 + v256, v254, v286);
    *(v263 + v257) = v322;
    *(v263 + v258) = v292;
    *(v263 + v259) = v318;
    *(v263 + v260) = v277;
    v264 = (v263 + v261);
    v265 = v287;
    *v264 = sub_224B8FBC4;
    v264[1] = v265;
    *(v263 + v262) = v270;
    v332 = sub_224B8FC98;
    v333 = v263;
    aBlock = MEMORY[0x277D85DD0];
    v329 = 1107296256;
    v330 = sub_224BC6D2C;
    v331 = &block_descriptor_16;
    v266 = _Block_copy(&aBlock);

    v267 = v327;
    [v274 getActivitiesWithRequests:v327 completion:v266];
    _Block_release(v266);

    sub_224A3D418(v316);
  }
}

uint64_t sub_224B8FBD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224B8FC30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224B8FC98(void *a1)
{
  v3 = *(sub_224DABCC8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_224B883B8(a1, (v1 + v4), *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + v8), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_224B8FD74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatterContentError(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B8FDD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_224B8FE88()
{
  sub_224B8FEE0();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_224B8FEE0()
{
  if (!qword_281351A98[0])
  {
    sub_224B8C6E0();
    if (!v1)
    {
      atomic_store(v0, qword_281351A98);
    }
  }
}

void sub_224B8FF50()
{
  sub_224DABCC8();
  if (v0 <= 0x3F)
  {
    sub_224B900F8(319, &qword_281350B58, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_224B90018()
{
  sub_224DABCC8();
  if (v0 <= 0x3F)
  {
    sub_224DAC918();
    if (v1 <= 0x3F)
    {
      sub_224B5A81C();
      if (v2 <= 0x3F)
      {
        sub_224B900F8(319, &qword_2813507C0, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_224B900F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F5620, &unk_224DB3350);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ReplicatedType.ArchiveType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReplicatedType.ArchiveType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_224B902B8()
{
  result = qword_27D6F48E0;
  if (!qword_27D6F48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F48E0);
  }

  return result;
}

unint64_t sub_224B903E4(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_224B90424(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v109 = a7;
  v110 = a8;
  v114 = a6;
  v112 = a4;
  v113 = a5;
  v111 = a1;
  v10 = sub_224DA9908();
  v116 = *(v10 - 8);
  v117 = v10;
  v11 = *(v116 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v107 = v13;
  v108 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v119 = &v101 - v14;
  v15 = sub_224DA9FB8();
  v105 = *(v15 - 8);
  v106 = v15;
  v16 = *(v105 + 64);
  MEMORY[0x28223BE20](v15);
  v102 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_224DA9FD8();
  v103 = *(v104 - 8);
  v18 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v101 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_224DAEB98();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v101 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v101 - v29;
  v31 = sub_224DAA548();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v101 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v35, a2, v31);
  v36 = (*(v32 + 88))(v35, v31);
  v37 = *MEMORY[0x277CFA0A8];
  v118 = a3;
  if (v36 != v37)
  {
    if (v36 != *MEMORY[0x277CFA0A0])
    {
      if (v36 != *MEMORY[0x277CFA0B0])
      {
        result = sub_224DAFD78();
        __break(1u);
        return result;
      }

      v54 = 2;
      goto LABEL_12;
    }

    v38 = v118;
    sub_224DAF658();
    v39 = v21;
    v40 = *(v21 + 104);
    v41 = *MEMORY[0x277CE3E80];
    v40(v28);
    sub_224B9388C(&qword_281350C10, MEMORY[0x277CE3E88]);
    sub_224DAEFA8();
    sub_224DAEFA8();
    v42 = *(v39 + 8);
    v42(v28, v20);
    if (v121 != v120)
    {
      (*(v39 + 32))(v25, v30, v20);
      v89 = (*(v39 + 88))(v25, v20);
      if (v89 != v41)
      {
        v55 = v117;
        if (v89 == *MEMORY[0x277CE3E78])
        {
          LODWORD(v106) = 2;
        }

        else if (v89 == *MEMORY[0x277CE3E70])
        {
          LODWORD(v106) = 1;
        }

        else
        {
          v42(v25, v20);
          LODWORD(v106) = 0;
        }

        goto LABEL_14;
      }

      goto LABEL_3;
    }

    if (sub_224B92BEC(v38))
    {
      v42(v30, v20);
      goto LABEL_3;
    }

    v90 = *(v115 + 296);
    v91 = __swift_project_boxed_opaque_existential_1((v115 + 272), v90);
    v92 = *(v90 - 8);
    v93 = *(v92 + 64);
    MEMORY[0x28223BE20](v91);
    v95 = v42;
    v96 = &v101 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v92 + 16))(v96);
    v97 = v101;
    sub_224DAA128();
    (*(v92 + 8))(v96, v90);
    v99 = v105;
    v98 = v106;
    v100 = v102;
    (*(v105 + 104))(v102, *MEMORY[0x277CF9F90], v106);
    v53 = sub_224DA9FC8();
    (*(v99 + 8))(v100, v98);
    (*(v103 + 8))(v97, v104);
    v95(v30, v20);
LABEL_9:
    v54 = v53 & 1;
LABEL_12:
    LODWORD(v106) = v54;
    goto LABEL_13;
  }

  if (!sub_224B92BEC(a3))
  {
    v43 = *(v115 + 296);
    v44 = __swift_project_boxed_opaque_existential_1((v115 + 272), v43);
    v45 = *(v43 - 8);
    v46 = *(v45 + 64);
    MEMORY[0x28223BE20](v44);
    v48 = &v101 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v45 + 16))(v48);
    v49 = v101;
    sub_224DAA128();
    (*(v45 + 8))(v48, v43);
    v51 = v105;
    v50 = v106;
    v52 = v102;
    (*(v105 + 104))(v102, *MEMORY[0x277CF9F90], v106);
    v53 = sub_224DA9FC8();
    (*(v51 + 8))(v52, v50);
    (*(v103 + 8))(v49, v104);
    goto LABEL_9;
  }

LABEL_3:
  LODWORD(v106) = 0;
LABEL_13:
  v55 = v117;
LABEL_14:
  v56 = v119;
  sub_224DA98F8();
  v57 = swift_allocObject();
  v105 = v57;
  v58 = v115;
  swift_weakInit();
  v59 = v116;
  v60 = v108;
  (*(v116 + 16))(v108, v56, v55);
  v61 = (*(v59 + 80) + 24) & ~*(v59 + 80);
  v62 = (v107 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  *(v63 + 16) = v57;
  (*(v59 + 32))(v63 + v61, v60, v55);
  v64 = (v63 + v62);
  v66 = v109;
  v65 = v110;
  *v64 = v109;
  v64[1] = v65;
  *(v63 + ((v62 + 23) & 0xFFFFFFFFFFFFFFF8)) = v118;
  type metadata accessor for InteractiveWidgetActionRunner();
  v67 = swift_allocObject();
  v67[2] = 0;
  v67[3] = 0;
  v68 = v111;
  v67[4] = v111;
  v69 = swift_allocObject();
  *(v69 + 16) = sub_224B939BC;
  *(v69 + 24) = v63;
  v70 = type metadata accessor for InteractiveWidgetActionRunner.Delegate();
  v71 = objc_allocWithZone(v70);
  v72 = &v71[OBJC_IVAR____TtCC10ChronoCore29InteractiveWidgetActionRunnerP33_BBEE03C4DECF2FA4D5B6D93BE2BEC2AD8Delegate_completion];
  *v72 = sub_224B939C0;
  v72[1] = v69;

  sub_224A364AC(v66);
  v122.receiver = v71;
  v122.super_class = v70;
  v73 = v118;
  v74 = v68;

  v67[5] = objc_msgSendSuper2(&v122, sel_init);
  v67[6] = sub_224B939BC;
  v67[7] = v63;

  v75 = *(v58 + 16);
  os_unfair_lock_lock(*(v75 + 16));
  swift_beginAccess();

  v76 = *(v58 + 144);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v120 = *(v58 + 144);
  *(v58 + 144) = 0x8000000000000000;
  sub_224B92144(v67, v119, isUniquelyReferenced_nonNull_native, &v120);
  *(v58 + 144) = v120;
  swift_endAccess();
  os_unfair_lock_unlock(*(v75 + 16));
  v78 = v67[3];
  v79 = v113;
  v67[2] = v112;
  v67[3] = v79;

  v80 = qword_281351680;

  if (v80 != -1)
  {
    swift_once();
  }

  v81 = sub_224DAB258();
  __swift_project_value_buffer(v81, qword_2813650C0);
  v82 = v73;
  v83 = sub_224DAB228();
  v84 = sub_224DAF2A8();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *v85 = 138543362;
    *(v85 + 4) = v82;
    *v86 = v82;
    v87 = v82;
    _os_log_impl(&dword_224A2F000, v83, v84, "Starting to run action: %{public}@", v85, 0xCu);
    sub_224A3311C(v86, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v86, -1, -1);
    MEMORY[0x22AA5EED0](v85, -1, -1);
  }

  sub_224D30D20(v82, v114, v106);

  return (*(v116 + 8))(v119, v117);
}

uint64_t sub_224B90FD8(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  result = sub_224DAAA18();
  if (a4)
  {
    return a4(a1, a2 & 1);
  }

  return result;
}

void sub_224B91034(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t), uint64_t a7)
{
  v44 = a5;
  v43 = a4;
  v42 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v39 - v13;
  v41 = sub_224DA9908();
  v40 = *(v41 - 8);
  v15 = *(v40 + 64);
  MEMORY[0x28223BE20](v41);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DAC248();
  v19 = [v18 extensionIdentity];

  v20 = &v19[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v21 = *v20;
  v22 = *(v20 + 1);
  v39[1] = v21;

  if (!v22)
  {
    v23 = sub_224DAC248();
    v24 = [v23 extensionIdentity];

    sub_224B90424(v24, v42, a3, v43, v44, 0, a6, a7);
    return;
  }

  v44 = a7;
  swift_beginAccess();
  if (*(v7 + 48))
  {
    sub_224A3317C(v7 + 24, &v45);
  }

  else
  {
    v25 = *(v7 + 40);
    v45 = *(v7 + 24);
    v46 = v25;
    v47 = *(v7 + 56);
  }

  if (*(&v46 + 1))
  {
    sub_224A36F98(&v45, v48);
    swift_beginAccess();
    sub_224A3796C(v7 + 104, &v45, &qword_27D6F4900, &unk_224DB8640);
    if (*(&v46 + 1))
    {
      sub_224A3311C(&v45, &qword_27D6F4900, &unk_224DB8640);
      sub_224DA9888();

      v26 = v40;
      v27 = v41;
      if ((*(v40 + 48))(v14, 1, v41) == 1)
      {
        sub_224A3311C(v14, &unk_27D6F5630, &unk_224DB34C0);
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
          *v31 = 0;
          _os_log_impl(&dword_224A2F000, v29, v30, "Unable to send interaction due to bad relationship ID", v31, 2u);
          MEMORY[0x22AA5EED0](v31, -1, -1);
        }

        if (a6)
        {
          sub_224B93694();
          v32 = swift_allocError();
          *v33 = xmmword_224DB8520;
          a6(v32, 1);
        }
      }

      else
      {
        (*(v26 + 32))(v17, v14, v27);
        v36 = v49;
        v37 = v50;
        __swift_project_boxed_opaque_existential_1(v48, v49);
        v38 = sub_224DAC248();
        (*(v37 + 48))(v38, a3, v17, a6, v44, v36, v37);

        (*(v26 + 8))(v17, v41);
      }

      __swift_destroy_boxed_opaque_existential_1(v48);
      return;
    }

    sub_224A3311C(&v45, &qword_27D6F4900, &unk_224DB8640);
    __swift_destroy_boxed_opaque_existential_1(v48);
    if (!a6)
    {
      return;
    }

LABEL_20:
    sub_224B93694();
    v34 = swift_allocError();
    *v35 = 0;
    v35[1] = 0;
    a6(v34, 1);

    return;
  }

  if (*(&v46 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v45);
  }

  if (a6)
  {
    goto LABEL_20;
  }
}

void sub_224B91570(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, void *a6)
{
  v11 = sub_224DA9908();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v46 = a3;
    if (a1)
    {
      v18 = a1;
      if (qword_281351680 != -1)
      {
        swift_once();
      }

      v19 = sub_224DAB258();
      __swift_project_value_buffer(v19, qword_2813650C0);
      v20 = a1;
      v21 = sub_224DAB228();
      v22 = sub_224DAF288();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v45 = a5;
        v24 = a4;
        v25 = v23;
        v26 = swift_slowAlloc();
        *v25 = 138543362;
        v27 = a1;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_224A2F000, v21, v22, "Failed to execute LNAction with error: %{public}@", v25, 0xCu);
        sub_224A3311C(v26, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v26, -1, -1);
        v29 = v25;
        a4 = v24;
        MEMORY[0x22AA5EED0](v29, -1, -1);
      }

      v30 = *(v17 + 16);
      v31 = *(v30 + 16);

      os_unfair_lock_lock(v31);
      (*(v12 + 16))(v15, v46, v11);
      swift_beginAccess();
      sub_224B07B08(0, 0, v15);
      swift_endAccess();
      os_unfair_lock_unlock(*(v30 + 16));

      if (a4)
      {
        v32 = a1;
        a4(a1, 1);

        return;
      }
    }

    else
    {
      if (qword_281351680 != -1)
      {
        swift_once();
      }

      v33 = sub_224DAB258();
      __swift_project_value_buffer(v33, qword_2813650C0);
      v34 = a6;
      v35 = sub_224DAB228();
      v36 = sub_224DAF2A8();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v45 = a5;
        v39 = a4;
        v40 = v38;
        *v37 = 138543362;
        *(v37 + 4) = v34;
        *v38 = v34;
        v41 = v34;
        _os_log_impl(&dword_224A2F000, v35, v36, "Successfully ran action: %{public}@", v37, 0xCu);
        sub_224A3311C(v40, &unk_27D6F69F0, &unk_224DB3900);
        v42 = v40;
        a4 = v39;
        MEMORY[0x22AA5EED0](v42, -1, -1);
        MEMORY[0x22AA5EED0](v37, -1, -1);
      }

      v43 = *(v17 + 16);
      v44 = *(v43 + 16);

      os_unfair_lock_lock(v44);
      (*(v12 + 16))(v15, v46, v11);
      swift_beginAccess();
      sub_224B07B08(0, 0, v15);
      swift_endAccess();
      os_unfair_lock_unlock(*(v43 + 16));

      if (a4)
      {
        a4(1, 0);
      }
    }
  }
}

void sub_224B91A14(void *a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_224DACB98();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_281351680 != -1)
    {
      swift_once();
    }

    v16 = sub_224DAB258();
    __swift_project_value_buffer(v16, qword_2813650C0);
    v17 = a1;
    v29 = sub_224DAB228();
    v18 = sub_224DAF288();
    sub_224B92BE0(a1, 1);
    if (os_log_type_enabled(v29, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      v21 = a1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_224A2F000, v29, v18, "Not reloading timline due to interaction failure: %{public}@", v19, 0xCu);
      sub_224A3311C(v20, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v20, -1, -1);
      MEMORY[0x22AA5EED0](v19, -1, -1);
    }

    v23 = v29;
  }

  else if ((a3 & 1) == 0)
  {
    v24 = v13;
    sub_224A3317C(a4 + 152, v30);
    v25 = v30[4];
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    v26 = *(a5 + 16);
    (*(v11 + 104))(v15, *MEMORY[0x277CF9B68], v24);
    v27 = *(v25 + 32);
    v28 = v26;
    sub_224DAC718();

    (*(v11 + 8))(v15, v24);
    __swift_destroy_boxed_opaque_existential_1(v30);
  }
}

void sub_224B91CC4(NSObject *a1, uint64_t a2)
{
  if (!a1)
  {
    if (qword_281351680 != -1)
    {
      swift_once();
    }

    v14 = sub_224DAB258();
    __swift_project_value_buffer(v14, qword_2813650C0);

    oslog = sub_224DAB228();
    v15 = sub_224DAF2A8();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      v18 = *(a2 + 16);
      *(v16 + 4) = v18;
      *v17 = v18;
      v19 = v18;
      _os_log_impl(&dword_224A2F000, oslog, v15, "%{public}@: performed remote control action", v16, 0xCu);
      sub_224A3311C(v17, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v17, -1, -1);
      MEMORY[0x22AA5EED0](v16, -1, -1);
    }

    goto LABEL_10;
  }

  v4 = a1;
  if (qword_281351680 != -1)
  {
    swift_once();
  }

  v5 = sub_224DAB258();
  __swift_project_value_buffer(v5, qword_2813650C0);
  v6 = a1;

  oslog = sub_224DAB228();
  v7 = sub_224DAF288();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543618;
    v10 = *(a2 + 16);
    *(v8 + 4) = v10;
    *v9 = v10;
    *(v8 + 12) = 2112;
    v11 = a1;
    v12 = v10;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v13;
    v9[1] = v13;
    _os_log_impl(&dword_224A2F000, oslog, v7, "%{public}@: failed to perform remote control action: %@", v8, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);

LABEL_10:
    v20 = oslog;

    goto LABEL_12;
  }

  v20 = a1;

LABEL_12:
}

uint64_t sub_224B91FB8()
{
  v1 = v0[2];

  if (v0[6])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  }

  if (v0[11])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  }

  sub_224A3311C((v0 + 13), &qword_27D6F4900, &unk_224DB8640);
  v2 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  sub_224A3311C((v0 + 29), &qword_27D6F46C0, &qword_224DB7608);
  __swift_destroy_boxed_opaque_existential_1(v0 + 34);

  return swift_deallocClassInstance();
}

uint64_t sub_224B9210C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_224B92144(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_224DA9908();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a4;
  v15 = sub_224A438E8(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_224B25F18();
      goto LABEL_7;
    }

    sub_224B105B0(v18, a3 & 1);
    v25 = *a4;
    v26 = sub_224A438E8(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *a4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_224B9231C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_224DAFDD8();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *a4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 16 * v15);
  v23 = *v22;
  *v22 = a1;
  v22[1] = &off_28382CD48;

  return swift_unknownObjectRelease();
}

uint64_t sub_224B9231C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_224DA9908();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = (a4[7] + 16 * a1);
  *v11 = a3;
  v11[1] = &off_28382CD48;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_224B923E0(uint64_t a1)
{
  v3 = type metadata accessor for RemoteControlActionRequest();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_224DA9908();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = &v60 - v11;
  sub_224B44674(a1, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48F0, &unk_224DB8630);
  type metadata accessor for InteractionMessage();
  if (swift_dynamicCast())
  {
    v13 = v71;
    v14 = [*(v71 + 16) activityIdentifier];
    v15 = v14;
    if (v14)
    {
    }

    v62 = [*(v13 + 16) extensionIdentity];
    v16 = *(v13 + 24);
    v17 = swift_allocObject();
    v63 = v15 != 0;
    *(v17 + 16) = v63;
    v18 = v1;
    *(v17 + 24) = v1;
    *(v17 + 32) = v13;
    v61 = v16;

    v64 = v13;

    sub_224DA98F8();
    v19 = swift_allocObject();
    v67 = v12;
    v20 = v19;
    swift_weakInit();
    v21 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v21, v67, v7);
    v22 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 16) = v20;
    v65 = v8;
    v66 = v7;
    (*(v8 + 32))(v24 + v22, v21, v7);
    v25 = (v24 + v23);
    *v25 = sub_224B92BC4;
    v25[1] = v17;
    v26 = v61;
    *(v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8)) = v61;
    type metadata accessor for InteractiveWidgetActionRunner();
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v28 = v62;
    v27[4] = v62;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_224B92BD4;
    *(v29 + 24) = v24;
    v30 = type metadata accessor for InteractiveWidgetActionRunner.Delegate();
    v31 = objc_allocWithZone(v30);
    v32 = &v31[OBJC_IVAR____TtCC10ChronoCore29InteractiveWidgetActionRunnerP33_BBEE03C4DECF2FA4D5B6D93BE2BEC2AD8Delegate_completion];
    *v32 = sub_224B92BD8;
    v32[1] = v29;
    v68.receiver = v31;
    v68.super_class = v30;
    v33 = v26;

    v34 = v28;

    v27[5] = objc_msgSendSuper2(&v68, sel_init);
    v27[6] = sub_224B92BD4;
    v27[7] = v24;
    v35 = v67;

    v36 = *(v18 + 16);
    os_unfair_lock_lock(*(v36 + 16));
    swift_beginAccess();

    v37 = *(v18 + 144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = *(v18 + 144);
    *(v18 + 144) = 0x8000000000000000;
    sub_224B92144(v27, v35, isUniquelyReferenced_nonNull_native, &v72);
    *(v18 + 144) = v72;
    swift_endAccess();
    os_unfair_lock_unlock(*(v36 + 16));
    v39 = v27[3];
    v27[2] = 0;
    v27[3] = 0;

    if (qword_281351680 != -1)
    {
      swift_once();
    }

    v40 = sub_224DAB258();
    __swift_project_value_buffer(v40, qword_2813650C0);
    v41 = v33;
    v42 = sub_224DAB228();
    v43 = sub_224DAF2A8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138543362;
      *(v44 + 4) = v41;
      *v45 = v41;
      v46 = v41;
      _os_log_impl(&dword_224A2F000, v42, v43, "Starting to run action: %{public}@", v44, 0xCu);
      sub_224A3311C(v45, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v45, -1, -1);
      MEMORY[0x22AA5EED0](v44, -1, -1);
    }

    sub_224D30D20(v41, v63, 2);

    (*(v65 + 8))(v35, v66);
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  type metadata accessor for ControlInteractionMessage(0);
  if (!swift_dynamicCast())
  {
    if (qword_281351680 != -1)
    {
      swift_once();
    }

    v56 = sub_224DAB258();
    __swift_project_value_buffer(v56, qword_2813650C0);
    v57 = sub_224DAB228();
    v58 = sub_224DAF288();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_224A2F000, v57, v58, "Message received is not a known type", v59, 2u);
      MEMORY[0x22AA5EED0](v59, -1, -1);
    }

    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  v47 = v72;
  v48 = *(v72 + 16);
  v49 = OBJC_IVAR____TtC10ChronoCore25ControlInteractionMessage_action;
  v50 = *(v3 + 20);
  v51 = sub_224DAE738();
  (*(*(v51 - 8) + 16))(v6 + v50, v47 + v49, v51);
  v52 = *(v3 + 24);
  *v6 = v48;
  *(v6 + v52) = xmmword_224DB8530;
  swift_beginAccess();
  result = sub_224A3796C(v1 + 232, v69, &qword_27D6F46C0, &qword_224DB7608);
  if (v70)
  {
    v54 = *__swift_project_boxed_opaque_existential_1(v69, v70);
    v55 = v48;

    sub_224C7D470(v6, sub_224B92B60, v47);

    sub_224B92B68(v6);
    __swift_destroy_boxed_opaque_existential_1(v69);
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  __break(1u);
  return result;
}

uint64_t sub_224B92B68(uint64_t a1)
{
  v2 = type metadata accessor for RemoteControlActionRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_224B92BE0(id a1, char a2)
{
  if (a2)
  {
  }
}

BOOL sub_224B92BEC(void *a1)
{
  v1 = [a1 systemProtocols];
  sub_224A3B79C(0, &qword_27D6F4910, 0x277D23938);
  v2 = sub_224DAF008();

  if (v2 >> 62)
  {
LABEL_20:
    v17 = v2 & 0xFFFFFFFFFFFFFF8;
    v18 = sub_224DAF838();
  }

  else
  {
    v17 = v2 & 0xFFFFFFFFFFFFFF8;
    v18 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  do
  {
    v4 = v3;
    if (v18 == v3)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x22AA5DCC0](v3, v2);
    }

    else
    {
      if (v3 >= *(v17 + 16))
      {
        goto LABEL_19;
      }

      v5 = *(v2 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v7 = [v5 identifier];
    v8 = [objc_opt_self() cameraCaptureProtocol];
    v9 = [v8 identifier];

    v10 = sub_224DAEE18();
    v12 = v11;
    if (v10 == sub_224DAEE18() && v12 == v13)
    {

      break;
    }

    v15 = sub_224DAFD88();

    v3 = v4 + 1;
  }

  while ((v15 & 1) == 0);

  return v18 != v4;
}

void sub_224B92DFC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  v6 = v5;
  v72 = a5;
  v74 = a4;
  v73 = a3;
  v71 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v67 = &v64 - v10;
  v69 = sub_224DA9908();
  v68 = *(v69 - 8);
  v11 = *(v68 + 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DAE6E8();
  v65 = *(v13 - 8);
  v14 = *(v65 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DAE718();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v64 - v23;
  v70 = a1;
  v25 = [a1 extensionIdentity];
  v26 = &v25[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v27 = *v26;
  v28 = *(v26 + 1);

  if (!v28)
  {
    v68 = v16;
    v69 = v13;
    v30 = v71;
    sub_224DAE728();
    (*(v18 + 104))(v22, *MEMORY[0x277CE3C68], v17);
    sub_224B9388C(&qword_27D6F4908, MEMORY[0x277CE3C78]);
    v31 = sub_224DAEDD8();
    v32 = *(v18 + 8);
    v32(v22, v17);
    v32(v24, v17);
    if ((v31 & 1) == 0)
    {
      v54 = sub_224DAE6F8();
      v55 = v74;
      if (v54)
      {
        v56 = v54;
        v57 = [v70 extensionIdentity];
        sub_224B90424(v57, v30, v56, 0, 0, 2, v55, v72);
      }

      else
      {
        sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
        (*(v65 + 104))(v68, *MEMORY[0x277CE3C00], v69);
        v62 = sub_224DAF638();
        if (v55)
        {
          v63 = v62;
          v55(v62, 1);
        }

        else
        {
        }
      }

      return;
    }

    v33 = v74;
    if (!v74)
    {
      return;
    }

    v78 = 0;
    v79 = 0xE000000000000000;
    sub_224DAF938();
    MEMORY[0x22AA5D210](0xD00000000000003ELL, 0x8000000224DC85D0);
    v34 = [v70 description];
    v35 = sub_224DAEE18();
    v37 = v36;

    MEMORY[0x22AA5D210](v35, v37);

    v38 = v78;
    v39 = v79;
    sub_224B93694();
    v40 = swift_allocError();
    *v41 = v38;
    v41[1] = v39;
    v33(v40, 1);
LABEL_25:

    return;
  }

  v29 = v73;
  swift_beginAccess();
  if (*(v6 + 88))
  {
    sub_224A3317C(v6 + 64, &v75);
  }

  else
  {
    v42 = *(v6 + 80);
    v75 = *(v6 + 64);
    v76 = v42;
    v77 = *(v6 + 96);
  }

  v43 = v74;
  if (!*(&v76 + 1))
  {

    if (!*(&v76 + 1))
    {
LABEL_23:
      if (!v43)
      {
        return;
      }

      sub_224B93694();
      v40 = swift_allocError();
      *v58 = 0;
      v58[1] = 0;
      v43(v40, 1);
      goto LABEL_25;
    }

    v53 = &v75;
LABEL_22:
    __swift_destroy_boxed_opaque_existential_1(v53);
    goto LABEL_23;
  }

  sub_224A36F98(&v75, &v78);
  swift_beginAccess();
  sub_224A3796C(v6 + 104, &v75, &qword_27D6F4900, &unk_224DB8640);
  if (!*(&v76 + 1))
  {

    sub_224A3311C(&v75, &qword_27D6F4900, &unk_224DB8640);
    v53 = &v78;
    goto LABEL_22;
  }

  sub_224A3311C(&v75, &qword_27D6F4900, &unk_224DB8640);
  v44 = v67;
  sub_224DA9888();

  v45 = v68;
  v46 = v69;
  if ((*(v68 + 6))(v44, 1, v69) == 1)
  {
    sub_224A3311C(v44, &unk_27D6F5630, &unk_224DB34C0);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v47 = sub_224DAB258();
    __swift_project_value_buffer(v47, qword_281365120);
    v48 = sub_224DAB228();
    v49 = sub_224DAF288();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_224A2F000, v48, v49, "Unable to send control interaction due to bad relationship ID", v50, 2u);
      MEMORY[0x22AA5EED0](v50, -1, -1);
    }

    if (v43)
    {
      sub_224B93694();
      v51 = swift_allocError();
      *v52 = xmmword_224DB8520;
      v43(v51, 1);
    }
  }

  else
  {
    v59 = v66;
    (*(v45 + 4))(v66, v44, v46);
    v60 = v80;
    v61 = v81;
    __swift_project_boxed_opaque_existential_1(&v78, v80);
    (*(v61 + 56))(v70, v29, v59, v43, v72, v60, v61);
    (*(v45 + 1))(v59, v46);
  }

  __swift_destroy_boxed_opaque_existential_1(&v78);
}

unint64_t sub_224B93694()
{
  result = qword_27D6F48F8;
  if (!qword_27D6F48F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F48F8);
  }

  return result;
}

uint64_t objectdestroy_13Tm()
{
  v1 = sub_224DA9908();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v7 = *(v0 + v5 + 8);
  }

  v8 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v3 | 7);
}

void sub_224B937DC(void *a1)
{
  v3 = *(sub_224DA9908() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = v1 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + v6);

  sub_224B91570(a1, v7, v1 + v4, v9, v10, v11);
}

uint64_t sub_224B9388C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_10ChronoCore18InteractionServiceC0cD5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_224B938FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
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

uint64_t sub_224B93950(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_224B939D8()
{
  result = sub_224DAB258();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_224B93AC0()
{
  if (v0[2])
  {
    v1 = v0[2];
  }

  else
  {
    v2 = v0;
    v6 = v0[3];
    v3 = *(*v0 + 88);
    sub_224DAB368();
    swift_getWitnessTable();
    v1 = sub_224DAB3A8();
    v4 = v2[2];
    v2[2] = v1;
  }

  return v1;
}

uint64_t sub_224B93BA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_224B94E88();
  *a2 = result;
  return result;
}

void sub_224B93BD4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000726564;
  v4 = 0x6C6F686563616C70;
  v5 = 0xE800000000000000;
  v6 = 0x656E696C656D6974;
  v7 = 0xEF77656976657270;
  if (v2 != 3)
  {
    v7 = 0xEC0000006576696CLL;
  }

  if (v2 != 2)
  {
    v6 = 0x2D6C6F72746E6F63;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x746F687370616E73;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}