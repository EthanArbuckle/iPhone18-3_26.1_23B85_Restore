void sub_224BF96A4(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, void (**a8)(void, void, void, void))
{
  v81 = a6;
  v91 = a5;
  v93 = a3;
  v94 = a4;
  v82 = a2;
  v11 = sub_224DAB7B8();
  v89 = *(v11 - 8);
  v90 = v11;
  v12 = *(v89 + 64);
  MEMORY[0x28223BE20](v11);
  v87 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_224DAB848();
  v86 = *(v88 - 8);
  v14 = *(v86 + 64);
  MEMORY[0x28223BE20](v88);
  v84 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_224DAD548();
  v83 = *(v85 - 8);
  v16 = *(v83 + 64);
  MEMORY[0x28223BE20](v85);
  v92 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DAD8A8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  *(v23 + 16) = a8;
  v24 = *(a7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  _Block_copy(a8);
  BSDispatchQueueAssert();
  v25 = *(a7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider + 32);
  __swift_project_boxed_opaque_existential_1((a7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider), *(a7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_keybagStateProvider + 24));
  if ((sub_224DAA158() & 1) == 0)
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v34 = sub_224CBC42C(0xAu, 0, 0);
    v95 = sub_224DA9518();
    a8[2](a8, 0, 0, v95);

    v35 = v95;

    return;
  }

  v95 = v23;
  v26 = *(a7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService + 32);
  __swift_project_boxed_opaque_existential_1((a7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService), *(a7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService + 24));
  v27 = [a1 extensionIdentity];
  sub_224DAC6D8();

  v28 = v97;
  sub_224A3311C(aBlock, &unk_27D6F4700, &unk_224DB3A10);
  if (!v28)
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v36 = sub_224CBC42C(0, 0, 0);
    v37 = sub_224DA9518();
    (a8)[2](a8, 0, 0, v37);
LABEL_49:

    return;
  }

  sub_224A3317C(a7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_descriptorService, aBlock);
  v29 = v98;
  __swift_project_boxed_opaque_existential_1(aBlock, v97);
  v30 = *(v29 + 3);
  if (!sub_224DADA38())
  {
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    goto LABEL_13;
  }

  sub_224DACA18();
  sub_224DACF08();

  (*(v19 + 8))(v22, v18);
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  if (!v100)
  {
LABEL_13:
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v38 = 1;
LABEL_48:
    v36 = sub_224CBC42C(v38, 0, 0);
    v37 = sub_224DA9518();
    (a8)[2](a8, 0, 0, v37);
    goto LABEL_49;
  }

  v31 = *(a7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService + 24);
  v32 = *(a7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService + 32);
  __swift_project_boxed_opaque_existential_1((a7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetHostService), v31);
  (*(v32 + 32))(aBlock, 768, v31, v32);
  if (!v99)
  {
    sub_224A3311C(aBlock, &qword_27D6F50E0, &qword_224DB41A0);
    sub_224BF915C(v93, v94, a1, 0);
LABEL_47:

    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v38 = 13;
    goto LABEL_48;
  }

  if (v99[2])
  {
    v33 = sub_224A79FA8(v99);
  }

  else
  {
    v33 = 0;
  }

  sub_224A699F0(aBlock);
  v39 = sub_224BF915C(v93, v94, a1, v33);
  if (!v40 || !v33)
  {
    goto LABEL_47;
  }

  v80 = v39;
  v93 = v40;
  v41 = v33 & 0xFFFFFFFFFFFFFF8;
  if (!(v33 >> 62))
  {
    v42 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  v42 = sub_224DAF838();
  if (!v42)
  {
LABEL_46:

    goto LABEL_47;
  }

LABEL_20:
  v43 = 0;
  v79 = v33 & 0xC000000000000001;
  v78 = v33;
  while (1)
  {
    if (v79)
    {
      v44 = MEMORY[0x22AA5DCC0](v43, v33);
      v45 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
LABEL_34:
        __break(1u);
        goto LABEL_47;
      }
    }

    else
    {
      if (v43 >= *(v41 + 16))
      {
        __break(1u);
        goto LABEL_45;
      }

      v44 = *(v33 + 8 * v43 + 32);
      v45 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_34;
      }
    }

    v46 = v42;
    v94 = v44;
    v47 = [v44 uniqueIdentifier];
    v48 = sub_224DAEE18();
    v50 = v49;

    v51 = v48 == v80 && v93 == v50;
    if (v51)
    {
      break;
    }

    v52 = sub_224DAFD88();

    if (v52)
    {
      goto LABEL_37;
    }

    ++v43;
    v42 = v46;
    v51 = v45 == v46;
    v33 = v78;
    if (v51)
    {
      goto LABEL_46;
    }
  }

LABEL_37:

  v53 = a1;
  v54 = v93;

  sub_224DAD538();
  v55 = *(a7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_powerlogSuggestionService + 32);
  __swift_project_boxed_opaque_existential_1((a7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_powerlogSuggestionService), *(a7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_powerlogSuggestionService + 24));
  sub_224DADAD8();
  if (qword_2813513E8 != -1)
  {
    swift_once();
  }

  v56 = sub_224DAB258();
  __swift_project_value_buffer(v56, qword_281364CE8);
  v57 = v53;

  v58 = v81;

  v59 = sub_224DAB228();
  v60 = sub_224DAF2A8();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock[0] = v63;
    *v61 = 138543874;
    *(v61 + 4) = v57;
    *v62 = v57;
    *(v61 + 12) = 2082;
    v64 = v57;
    *(v61 + 14) = sub_224A33F74(v80, v54, aBlock);
    *(v61 + 22) = 2082;
    *(v61 + 24) = sub_224A33F74(v91, v58, aBlock);
    sub_224A3311C(v62, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v62, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v63, -1, -1);
    MEMORY[0x22AA5EED0](v61, -1, -1);
  }

  if (qword_27D6F2CC8 != -1)
  {
    swift_once();
  }

  v79 = qword_27D6F4DB0;
  v65 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = swift_allocObject();
  v67 = v80;
  v66[2] = v65;
  v66[3] = v67;
  v68 = v94;
  v66[4] = v93;
  v66[5] = sub_224BFD818;
  v66[6] = v95;
  v66[7] = v57;
  v69 = v82;
  v66[8] = v82;
  v66[9] = v68;
  v66[10] = v91;
  v66[11] = v58;
  v98 = sub_224BFD820;
  v99 = v66;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  v97 = &block_descriptor_157_0;
  v70 = _Block_copy(aBlock);
  v71 = v57;

  v72 = v69;
  v73 = v68;
  v74 = v84;
  sub_224DAB7E8();
  v100 = MEMORY[0x277D84F90];
  sub_224A80F90(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  v75 = v87;
  v76 = v90;
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v74, v75, v70);
  _Block_release(v70);

  (*(v89 + 8))(v75, v76);
  (*(v86 + 8))(v74, v88);
  (*(v83 + 8))(v92, v85);
}

uint64_t sub_224BFA2A0(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_224DAD158();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  v13 = [a2 widgets];
  sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
  v14 = sub_224DAF008();

  if (v14 >> 62)
  {
    if (sub_224DAF838())
    {
      goto LABEL_3;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v43 = v5;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x22AA5DCC0](0, v14);
      goto LABEL_6;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(v14 + 32);
LABEL_6:
      v16 = v15;

      v44 = 0;
      v45 = 0xE000000000000000;
      sub_224DAF938();

      v44 = 0xD000000000000014;
      v45 = 0x8000000224DCA6D0;
      v17 = sub_224DAC248();
      v18 = [v17 description];
      v19 = sub_224DAEE18();
      v21 = v20;

      MEMORY[0x22AA5D210](v19, v21);

      v22 = (v3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService);
      v23 = *(v3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService + 32);
      __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService), *(v3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService + 24));
      v24 = *(v23 + 72);
      v25 = sub_224DAE068();

      v26 = v22[4];
      __swift_project_boxed_opaque_existential_1(v22, v22[3]);
      sub_224DAC7D8();
      v27 = v43;
      (*(v6 + 16))(v10, v12, v43);
      sub_224DADCB8();
      v28 = v22[4];
      __swift_project_boxed_opaque_existential_1(v22, v22[3]);
      v29 = sub_224DAC248();
      sub_224DAC7E8();

      (*(v6 + 8))(v12, v27);
      return v25;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (qword_2813513E8 != -1)
  {
LABEL_15:
    swift_once();
  }

  v30 = sub_224DAB258();
  __swift_project_value_buffer(v30, qword_281364CE8);
  v31 = a2;
  v32 = sub_224DAB228();
  v33 = sub_224DAF288();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v44 = v35;
    *v34 = 136315138;
    v36 = [v31 uniqueIdentifier];
    v37 = sub_224DAEE18();
    v39 = v38;

    v40 = sub_224A33F74(v37, v39, &v44);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_224A2F000, v32, v33, "Trying to prewarm a stack that has no widgets %s, prewarm will use default environment.", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x22AA5EED0](v35, -1, -1);
    MEMORY[0x22AA5EED0](v34, -1, -1);
  }

  return 0;
}

void sub_224BFA70C(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void (**a6)(const void *, void, void *))
{
  v162 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v158 = &v142 - v13;
  v153 = sub_224DAF3B8();
  v152 = *(v153 - 8);
  v14 = *(v152 + 64);
  MEMORY[0x28223BE20](v153);
  v151 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5098, &qword_224DBAE18);
  v156 = *(v157 - 8);
  v16 = *(v156 + 64);
  MEMORY[0x28223BE20](v157);
  v155 = &v142 - v17;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F50A0, &unk_224DBAE20);
  v159 = *(v160 - 8);
  v18 = *(v159 + 64);
  MEMORY[0x28223BE20](v160);
  v165 = &v142 - v19;
  v167 = sub_224DA9908();
  v170 = *(v167 - 8);
  v20 = *(v170 + 64);
  v21 = MEMORY[0x28223BE20](v167);
  v150 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v161 = &v142 - v24;
  v149 = v25;
  MEMORY[0x28223BE20](v23);
  v168 = &v142 - v26;
  v169 = sub_224DAC268();
  v166 = *(v169 - 8);
  v27 = *(v166 + 64);
  v28 = MEMORY[0x28223BE20](v169);
  v164 = &v142 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = v29;
  MEMORY[0x28223BE20](v28);
  v171 = &v142 - v30;
  v31 = sub_224DAD8A8();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v142 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = swift_allocObject();
  *(v174 + 16) = a6;
  v173 = a6;
  _Block_copy(a6);
  LODWORD(v172) = [a3 BOOLValue];
  [a4 doubleValue];
  v37 = v36;
  v163 = *(a5 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();
  if (qword_2813514B8 != -1)
  {
    swift_once();
  }

  v38 = sub_224DAB258();
  __swift_project_value_buffer(v38, qword_281364E50);
  v39 = a1;
  v40 = sub_224DAB228();
  v41 = sub_224DAF2A8();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138543874;
    *(v42 + 4) = v39;
    *v43 = v39;
    *(v42 + 12) = 1026;
    *(v42 + 14) = v172;
    *(v42 + 18) = 2050;
    *(v42 + 20) = v37;
    v44 = v39;
    _os_log_impl(&dword_224A2F000, v40, v41, "Request to acquire lifetime assertion for %{public}@ (prewarm: %{BOOL,public}d, timeout: %{public}fs)", v42, 0x1Cu);
    sub_224A3311C(v43, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v43, -1, -1);
    MEMORY[0x22AA5EED0](v42, -1, -1);
  }

  v45 = *(a5 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService + 32);
  __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService), *(a5 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_extensionService + 24));
  v46 = [v39 extensionIdentity];
  sub_224DAC6D8();

  v47 = v179;
  sub_224A3311C(aBlock, &unk_27D6F4700, &unk_224DB3A10);
  if (!v47)
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v72 = 0;
LABEL_13:
    v73 = sub_224CBC42C(v72, 0, 0);
    v74 = sub_224DA9518();
    v173[2](v173, 0, v74);

    return;
  }

  sub_224A3317C(a5 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_descriptorService, aBlock);
  v48 = v180;
  __swift_project_boxed_opaque_existential_1(aBlock, v179);
  v49 = *(v48 + 3);
  if (!sub_224DADA38())
  {
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    goto LABEL_12;
  }

  sub_224DACA18();
  sub_224DACF08();

  (*(v32 + 8))(v35, v31);
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  if (!*&v176[0])
  {
LABEL_12:
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v72 = 1;
    goto LABEL_13;
  }

  v148 = a5;

  v50 = v39;
  v51 = v162;
  v52 = v171;
  v146 = v51;
  sub_224DAC238();
  v53 = v168;
  sub_224DA98F8();
  v54 = v170;
  v55 = *(v170 + 16);
  v56 = v161;
  v57 = v167;
  v145 = v170 + 16;
  v144 = v55;
  (v55)(v161, v53, v167);
  v58 = v50;
  v59 = sub_224DAB228();
  v60 = sub_224DAF2A8();
  v162 = v58;

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v64 = v162;
    v65 = v63;
    aBlock[0] = v63;
    *v61 = 138543874;
    *(v61 + 4) = v64;
    *v62 = v64;
    *(v61 + 12) = 2082;
    sub_224A80F90(&qword_281351A00, MEMORY[0x277CC95F0]);
    v66 = v64;
    v67 = sub_224DAFD28();
    v69 = v68;
    v147 = *(v54 + 8);
    v147(v56, v57);
    v70 = sub_224A33F74(v67, v69, aBlock);

    *(v61 + 14) = v70;
    *(v61 + 22) = 1026;
    *(v61 + 24) = v172;
    _os_log_impl(&dword_224A2F000, v59, v60, "Acquired lifetime assertion for %{public}@: uuid=%{public}s (prewarm: %{BOOL,public}d)", v61, 0x1Cu);
    sub_224A3311C(v62, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v62, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v65);
    v71 = v65;
    v52 = v171;
    MEMORY[0x22AA5EED0](v71, -1, -1);
    MEMORY[0x22AA5EED0](v61, -1, -1);
  }

  else
  {

    v147 = *(v54 + 8);
    v147(v56, v57);
  }

  v75 = swift_allocObject();
  *(v75 + 16) = 0u;
  v76 = (v75 + 16);
  *(v75 + 32) = 0u;
  *(v75 + 48) = 0;
  v77 = [v162 kind];
  sub_224DAEE18();

  LOBYTE(v77) = sub_224DAEEE8();

  if (v77 & 1) != 0 || (v78 = [v162 kind], sub_224DAEE18(), v78, LOBYTE(v78) = sub_224DAEEE8(), , (v78))
  {
    sub_224A3311C(v76, &qword_27D6F3AE8, &unk_224DB9600);
    *v76 = 0u;
    *(v75 + 32) = 0u;
    *(v75 + 48) = 0;
  }

  else
  {
    if (qword_281352038 != -1)
    {
      swift_once();
    }

    v79 = *__swift_project_boxed_opaque_existential_1((qword_2813651B0 + 88), *(qword_2813651B0 + 112));
    sub_224CCDCE8(v52, aBlock);
    sub_224A838C0(aBlock, v76, &qword_27D6F3AE8, &unk_224DB9600);
  }

  v80 = v148;
  v161 = v75;
  if (v172)
  {
    v81 = (v148 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService);
    v82 = *(v148 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService + 32);
    __swift_project_boxed_opaque_existential_1((v148 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService), *(v148 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_timelineService + 24));
    v83 = *(v82 + 64);
    sub_224DAD7C8();
    v84 = swift_allocObject();
    v150 = v84;
    *(v84 + 16) = 0;
    v149 = (v84 + 16);
    v172 = swift_allocObject();
    *(v172 + 16) = 1;
    v85 = swift_allocObject();
    v173 = v85;
    *(v85 + 16) = 0;
    v147 = (v85 + 16);
    v86 = v81[3];
    v87 = v81[4];
    v143 = v81;
    __swift_project_boxed_opaque_existential_1(v81, v86);
    v88 = *(v87 + 16);
    v146 = sub_224DAD7B8();
    *&v176[0] = v146;
    v89 = v151;
    sub_224DAF368();
    v90 = v163;
    v175[1] = v163;
    v91 = sub_224DAF358();
    v92 = *(v91 - 8);
    v144 = *(v92 + 56);
    v145 = v92 + 56;
    v93 = v158;
    v144(v158, 1, 1, v91);
    v163 = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F50B0, &qword_224DBAE30);
    sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
    sub_224A33088(&unk_2813510D0, &unk_27D6F50B0, &qword_224DBAE30);
    sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78);
    v94 = v155;
    sub_224DAB458();
    sub_224A3311C(v93, &qword_27D6F5090, &qword_224DB5C30);
    (*(v152 + 8))(v89, v153);

    v95 = v163;
    *&v176[0] = v163;
    v144(v93, 1, 1, v91);
    sub_224A33088(&qword_27D6F50C0, &qword_27D6F5098, &qword_224DBAE18);
    v96 = v157;
    sub_224DAB448();
    sub_224A3311C(v93, &qword_27D6F5090, &qword_224DB5C30);

    (*(v156 + 8))(v94, v96);
    v97 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v98 = swift_allocObject();
    v99 = v172;
    v98[2] = v97;
    v98[3] = v99;
    v100 = v150;
    v98[4] = v162;
    v98[5] = v100;
    v163 = sub_224A5A398;
    v98[6] = v173;
    v98[7] = sub_224A5A398;
    v98[8] = v174;
    v158 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v101 = v166;
    (*(v166 + 16))(v164, v171, v169);
    sub_224A3796C(aBlock, v176, &qword_27D6F3AE8, &unk_224DB9600);
    v102 = (*(v101 + 80) + 24) & ~*(v101 + 80);
    v103 = (v154 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
    v104 = (v103 + 15) & 0xFFFFFFFFFFFFFFF8;
    v105 = (v104 + 15) & 0xFFFFFFFFFFFFFFF8;
    v106 = (v105 + 15) & 0xFFFFFFFFFFFFFFF8;
    v107 = (v106 + 15) & 0xFFFFFFFFFFFFFFF8;
    v157 = (v107 + 47) & 0xFFFFFFFFFFFFFFF8;
    v108 = (v157 + 15) & 0xFFFFFFFFFFFFFFF8;
    v109 = swift_allocObject();
    *(v109 + 16) = v158;
    (*(v101 + 32))(v109 + v102, v164, v169);
    v110 = v162;
    *(v109 + v103) = v162;
    *(v109 + v104) = v172;
    *(v109 + v105) = v150;
    *(v109 + v106) = v173;
    v111 = v171;
    v112 = v109 + v107;
    v113 = v176[1];
    *v112 = v176[0];
    *(v112 + 16) = v113;
    *(v112 + 32) = v177;
    *(v109 + v157) = v161;
    v114 = (v109 + v108);
    v115 = v174;
    *v114 = v163;
    v114[1] = v115;
    v164 = sub_224A33088(&unk_27D6F50C8, &unk_27D6F50A0, &unk_224DBAE20);
    v116 = v110;
    v117 = v111;
    v118 = v116;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v119 = v118;

    v120 = v160;
    v121 = v165;
    v122 = sub_224DAB408();

    (*(v159 + 8))(v121, v120);
    v123 = v147;
    swift_beginAccess();
    v124 = *v123;
    *v123 = v122;

    v125 = v149;
    swift_beginAccess();
    if ((*v125 & 1) == 0)
    {
      swift_beginAccess();
      swift_retain_n();
      sub_224ADC248(v175, v122);
      swift_endAccess();

      v126 = v143[4];
      __swift_project_boxed_opaque_existential_1(v143, v143[3]);
      sub_224DAC7F8();
    }

    sub_224A3311C(aBlock, &qword_27D6F3AE8, &unk_224DB9600);
    (*(v170 + 8))(v168, v167);
    (*(v166 + 8))(v117, v169);
  }

  else
  {
    v127 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v128 = v150;
    v129 = v168;
    (v144)(v150, v168, v57);
    v130 = v170;
    v131 = (*(v170 + 80) + 24) & ~*(v170 + 80);
    v132 = &v149[v131 + 7] & 0xFFFFFFFFFFFFFFF8;
    v133 = swift_allocObject();
    *(v133 + 16) = v127;
    (*(v130 + 32))(v133 + v131, v128, v57);
    *(v133 + v132) = v161;
    v180 = sub_224BFD664;
    v181 = v133;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A3837C;
    v179 = &block_descriptor_126;
    v134 = _Block_copy(aBlock);
    v135 = objc_opt_self();

    v136 = [v135 responderWithHandler_];
    _Block_release(v134);

    [v136 setQueue_];
    v137 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_widgetLifetimeAssertionResponders;
    swift_beginAccess();
    v138 = v136;
    v139 = *(v80 + v137);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v176[0] = *(v80 + v137);
    *(v80 + v137) = 0x8000000000000000;
    sub_224B21AE0(v138, v129, isUniquelyReferenced_nonNull_native);
    *(v80 + v137) = *&v176[0];
    swift_endAccess();
    v141 = [objc_allocWithZone(MEMORY[0x277CF0B58]) initWithInfo:0 responder:v138];
    (v173)[2](v173, v141, 0);

    v147(v129, v57);
    (*(v166 + 8))(v171, v169);
  }
}

uint64_t sub_224BFBD94(uint64_t a1)
{
  v2 = *MEMORY[0x277CFA198];
  v3 = sub_224DAEE18();
  if (!*(a1 + 16))
  {

    goto LABEL_12;
  }

  v5 = sub_224A3A40C(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_224A33E0C(*(a1 + 56) + 32 * v5, v20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v8 = *MEMORY[0x277CFA190];
  v9 = sub_224DAEE18();
  if (!*(a1 + 16))
  {

    goto LABEL_11;
  }

  v11 = sub_224A3A40C(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  sub_224A33E0C(*(a1 + 56) + 32 * v11, v20);

  sub_224A3B79C(0, &qword_281350850, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v14 = sub_224DAEE18();
    v16 = v15;
    sub_224BFD5C8();
    swift_allocError();
    *v17 = v14;
    v17[1] = v16;
    swift_willThrow();
    return v14 & 1;
  }

  LOBYTE(v14) = [v19 BOOLValue];

  return v14 & 1;
}

void sub_224BFBF7C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = *(a3 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  _Block_copy(a4);
  BSDispatchQueueAssert();
  v10 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_deviceService;
  swift_beginAccess();
  sub_224A3796C(a3 + v10, &v14, &unk_27D6F5050, &unk_224DBAE08);
  if (v15)
  {
    sub_224A36F98(&v14, v16);
    v11 = *__swift_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_224CFB4FC(a1, a2, sub_224BFDE1C, v8);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_224A3311C(&v14, &unk_27D6F5050, &unk_224DBAE08);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v12 = sub_224CBC42C(0x12u, 0, 0);
    v13 = sub_224DA9518();
    (a4)[2](a4, v13);
  }
}

void sub_224BFC108(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();
  v5 = sub_224A5D694(0, 0);
  v6 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_deviceService;
  swift_beginAccess();
  sub_224A3796C(a1 + v6, v18, &unk_27D6F5050, &unk_224DBAE08);
  v7 = v19;
  if (v19)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v18, v19);
    v9 = *(v7 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
    (*(v9 + 16))(v12);
    sub_224A3311C(v18, &unk_27D6F5050, &unk_224DBAE08);
    v13 = *v12;
    sub_224CFAFFC();
    (*(v9 + 8))(v12, v7);
  }

  else
  {
    sub_224A3311C(v18, &unk_27D6F5050, &unk_224DBAE08);
  }

  v14 = objc_allocWithZone(MEMORY[0x277CFA308]);
  sub_224A3B79C(0, &qword_27D6F40C0, 0x277CFA2F0);
  v15 = sub_224DAEFF8();

  v16 = [v14 initWithDevices_];

  (*(a2 + 16))(a2, v16, v5, 0);
}

void sub_224BFC3CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();
  v4 = sub_224A5D694(2, 0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_224BE64D8();
  }

  else
  {
    v7 = 0;
  }

  (*(a2 + 16))(a2, v7, v4, 0);
}

void sub_224BFC4EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();
  sub_224A3796C(a1 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetRelevanceService, &v15, &unk_27D6F4FB0, &unk_224DBADC8);
  v5 = *(&v16 + 1);
  sub_224A3311C(&v15, &unk_27D6F4FB0, &unk_224DBADC8);
  if (v5)
  {
    v9 = sub_224A5D694(3, 0);
    (*(a2 + 16))(a2, v9, 0);

    if ([*(a1 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection) remoteTarget])
    {
      sub_224DAF758();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15 = v13;
    v16 = v14;
    if (*(&v14 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5040, &unk_224DBADF8);
      if (swift_dynamicCast())
      {
        v11 = [objc_opt_self() reloadEvent];
        [v12 handleWidgetRelevanceEvent_];
        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_224A3311C(&v15, &qword_27D6F4760, &unk_224DB3680);
    }
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v6 = *MEMORY[0x277CFA188];
    sub_224DAEE18();
    v7 = sub_224DAF648();
    v8 = sub_224DA9518();
    (*(a2 + 16))(a2, 0, v8);
  }
}

void sub_224BFC780(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  BSDispatchQueueAssert();
  v5 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_activityService;
  swift_beginAccess();
  sub_224A3796C(a1 + v5, v11, &unk_27D6F4FD0, &qword_224DB75F0);
  v6 = v12;
  sub_224A3311C(v11, &unk_27D6F4FD0, &qword_224DB75F0);
  if (v6)
  {
    v10 = sub_224A5D694(5, 0);
    (*(a2 + 16))(a2, v10, 0);
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v7 = *MEMORY[0x277CFA188];
    sub_224DAEE18();
    v8 = sub_224DAF648();
    v9 = sub_224DA9518();
    (*(a2 + 16))(a2, 0, v9);
  }
}

void sub_224BFC938(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  v11 = *(a4 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  _Block_copy(a5);
  _Block_copy(a5);
  BSDispatchQueueAssert();
  sub_224A3796C(a4 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetRelevanceService, &v17, &unk_27D6F4FB0, &unk_224DBADC8);
  if (v18)
  {
    sub_224A36F98(&v17, v19);
    if (a3)
    {
      v12 = *__swift_project_boxed_opaque_existential_1(v19, v20);
      _Block_copy(a5);
      sub_224B66C04(a1, a2, a3, v12, a5);
      _Block_release(a5);
    }

    else
    {
      v16 = *__swift_project_boxed_opaque_existential_1(v19, v20);
      sub_224B5CF4C(a1, sub_224BFDE1C, v10);
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    sub_224A3311C(&v17, &unk_27D6F4FB0, &unk_224DBADC8);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v13 = *MEMORY[0x277CFA188];
    sub_224DAEE18();
    v14 = sub_224DAF648();
    v15 = sub_224DA9518();
    (a5)[2](a5, v15);
  }

  _Block_release(a5);
}

void sub_224BFCB40(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  v81 = a3;
  v82 = a1;
  v10 = sub_224DAB7B8();
  v75 = *(v10 - 8);
  v76 = v10;
  v11 = *(v75 + 64);
  MEMORY[0x28223BE20](v10);
  v73 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_224DAB848();
  v72 = *(v74 - 8);
  v13 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v71 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v79 = &v68 - v18;
  v19 = sub_224DADE98();
  v80 = *(v19 - 8);
  v20 = v80[8];
  MEMORY[0x28223BE20](v19);
  v78 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a6;
  _Block_copy(a6);
  if (qword_2813513D8 != -1)
  {
    swift_once();
  }

  v23 = sub_224DAB258();
  v24 = __swift_project_value_buffer(v23, qword_281364CD0);

  v77 = v24;
  v25 = sub_224DAB228();
  v26 = sub_224DAF288();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v70 = v19;
    v69 = v15;
    v28 = a5;
    v29 = v27;
    v30 = a6;
    v31 = v22;
    v32 = swift_slowAlloc();
    *&aBlock = v32;
    *v29 = 136446466;
    *(v29 + 4) = sub_224A33F74(v81, a4, &aBlock);
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_224A33F74(v82, a2, &aBlock);
    _os_log_impl(&dword_224A2F000, v25, v26, "ChronoServices request to invalidate relevance for %{public}s-%{public}s", v29, 0x16u);
    swift_arrayDestroy();
    v33 = v32;
    v22 = v31;
    a6 = v30;
    MEMORY[0x22AA5EED0](v33, -1, -1);
    v34 = v29;
    a5 = v28;
    v15 = v69;
    v19 = v70;
    MEMORY[0x22AA5EED0](v34, -1, -1);
  }

  sub_224A3796C(a5 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_widgetRelevanceService, &aBlock, &unk_27D6F4FB0, &unk_224DBADC8);
  if (!v85)
  {
    sub_224A3311C(&aBlock, &unk_27D6F4FB0, &unk_224DBADC8);
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v57 = *MEMORY[0x277CFA188];
    sub_224DAEE18();
    v58 = sub_224DAF648();
    v59 = sub_224DA9518();
    (a6)[2](a6, v59);

    return;
  }

  sub_224A36F98(&aBlock, v89);
  sub_224A3317C(a5 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_descriptorService, &aBlock);
  v35 = v86;
  __swift_project_boxed_opaque_existential_1(&aBlock, v85);
  v36 = *(v35 + 3);
  if (!sub_224DADA38())
  {
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    goto LABEL_12;
  }

  v37 = v79;
  sub_224DA9FF8();
  v38 = v78;
  sub_224DACA08();
  (*(v16 + 8))(v37, v15);
  sub_224DACF08();

  (v80[1])(v38, v19);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v39 = v88;
  if (!v88)
  {
LABEL_12:
    v60 = sub_224DAB228();
    v61 = sub_224DAF288();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_224A2F000, v60, v61, "No matching descriptors found", v62, 2u);
      MEMORY[0x22AA5EED0](v62, -1, -1);
    }

    sub_224BFD554();
    v63 = swift_allocError();
    *v64 = 1;
    v65 = sub_224DA9518();
    (a6)[2](a6, v65);

    goto LABEL_15;
  }

  v40 = a6;
  v41 = __swift_project_boxed_opaque_existential_1(v89, v89[3]);
  v42 = v39;
  v43 = [v42 extensionIdentity];
  v44 = [v42 kind];
  v45 = sub_224DAEE18();
  v47 = v46;

  v48 = swift_allocObject();
  *(v48 + 16) = sub_224B67834;
  *(v48 + 24) = v22;
  v49 = *v41;
  swift_retain_n();
  sub_224B5BA90(v43);
  if (v50)
  {
    v51 = v50;
    v82 = *(v49 + OBJC_IVAR____TtC10ChronoCore22WidgetRelevanceService__queue);
    v52 = swift_allocObject();
    v52[2] = v49;
    v52[3] = v51;
    v52[4] = v45;
    v52[5] = v47;
    v52[6] = sub_224B9D69C;
    v52[7] = v48;
    v86 = sub_224BFD5A8;
    v87 = v52;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v84 = sub_224A39F40;
    v85 = &block_descriptor_26;
    v53 = _Block_copy(&aBlock);

    v80 = v51;

    v81 = v43;
    v54 = v71;
    sub_224DAB7E8();
    v88 = MEMORY[0x277D84F90];
    sub_224A80F90(&qword_281350ED0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
    sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
    v55 = v73;
    v56 = v76;
    sub_224DAF788();
    MEMORY[0x22AA5D760](0, v54, v55, v53);
    _Block_release(v53);

    (*(v75 + 8))(v55, v56);
    (*(v72 + 8))(v54, v74);
  }

  else
  {
    sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
    v66 = sub_224CBC42C(0x18u, 0xD000000000000025, 0x8000000224DC72C0);
    v67 = sub_224DA9518();
    (v40)[2](v40, v67);
  }

LABEL_15:
  __swift_destroy_boxed_opaque_existential_1(v89);
}

unint64_t sub_224BFD554()
{
  result = qword_28135CCC0;
  if (!qword_28135CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135CCC0);
  }

  return result;
}

void sub_224BFD5B8(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  sub_224BF3140(a1, a2, a3, *(v3 + 16));
}

unint64_t sub_224BFD5C8()
{
  result = qword_27D6F5078;
  if (!qword_27D6F5078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5078);
  }

  return result;
}

uint64_t sub_224BFD61C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  [v3 invalidate];
  return v4(a1);
}

void sub_224BFD664(uint64_t a1)
{
  v3 = *(sub_224DA9908() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_224BF0754(a1, v5, v1 + v4, v6);
}

uint64_t sub_224BFD718(uint64_t a1)
{
  v3 = *(sub_224DAC268() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_224BF0D60(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + v8), v1 + v9, *(v1 + ((v9 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v9 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v9 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_224BFD898(uint64_t a1)
{
  v3 = *(sub_224DAC268() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_224BEF4C8(a1, *(v1 + 16), *(v1 + 24), (v1 + v4), *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + v7), *(v1 + v8), *(v1 + v9), v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8), *(v1 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_224BFD990()
{
  v1 = *(sub_224DAC268() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = (v0 + ((*(v1 + 64) + ((*(v1 + 80) + 40) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_224BF04A8(v2, v3, v4);
}

uint64_t sub_224BFDA48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F50F8, &qword_224DBAE40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_224BFDAC8(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  sub_224BEC94C(a1, v5, v6, v1 + v4, v8, v9);
}

void sub_224BFDB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_224BECF5C(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), v4 + v10, *(v4 + v11), *(v4 + v11 + 8), *(v4 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_224BFDC78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5050, &unk_224DBAE08);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_224BFDCF8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_224BE7608(a1);
}

void sub_224BFDD00(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_224BE78BC(a1);
}

uint64_t objectdestroy_272Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

void *sub_224BFDE80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  [v0 mutableCopy];
  sub_224DAF758();
  swift_unknownObjectRelease();
  sub_224BFE0B8();
  swift_dynamicCast();
  v10 = v16[1];
  v11 = [v0 extensionIdentity];
  sub_224DAF538();
  v12 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  (*(v6 + 16))(v9, &v11[v12], v5);
  v13 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224AFD468(&v11[v13], v4);
  sub_224DA9898();
  v14 = sub_224DAF508();

  [v10 setExtensionIdentity_];
  return v10;
}

unint64_t sub_224BFE0B8()
{
  result = qword_27D6F5228;
  if (!qword_27D6F5228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D6F5228);
  }

  return result;
}

uint64_t sub_224BFE104(void *a1)
{
  v88 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v89 = &v87 - v4;
  v5 = sub_224DA9688();
  v90 = *(v5 - 8);
  v91 = v5;
  v6 = *(v90 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v94 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v93 = &v87 - v10;
  MEMORY[0x28223BE20](v9);
  v97 = &v87 - v11;
  v12 = sub_224DA9908();
  v101 = *(v12 - 8);
  v13 = *(v101 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v103 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v106 = &v87 - v17;
  MEMORY[0x28223BE20](v16);
  v87 = &v87 - v18;
  v19 = sub_224DAAE38();
  v20 = *(v19 - 1);
  v21 = v20[8];
  v22 = MEMORY[0x28223BE20](v19);
  v104 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v102 = (&v87 - v25);
  MEMORY[0x28223BE20](v24);
  v27 = &v87 - v26;
  v28 = v1[3];
  v29 = v1[4];
  v92 = v1;
  __swift_project_boxed_opaque_existential_1(v1, v28);
  v30 = sub_224DAAC78();
  v31 = v30;
  v32 = *(v30 + 16);
  v33 = MEMORY[0x277D84F90];
  v107 = v12;
  v100 = v32;
  if (!v32)
  {
LABEL_12:

    v41 = *(v33 + 16);
    if (v41)
    {
      v108 = MEMORY[0x277D84F90];
      sub_224ADA3D0(0, v41, 0);
      v42 = v108;
      v102 = v20[2];
      v43 = v20 + 2;
      v44 = v33 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
      v45 = v43[7];
      v105 = v43;
      v46 = (v43 - 1);
      v99 = (v101 + 32);
      v100 = v45;
      v47 = v87;
      do
      {
        v48 = v104;
        (v102)(v104, v44, v19);
        sub_224DAAD98();
        (*v46)(v48, v19);
        v108 = v42;
        v50 = *(v42 + 16);
        v49 = *(v42 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_224ADA3D0(v49 > 1, v50 + 1, 1);
          v42 = v108;
        }

        *(v42 + 16) = v50 + 1;
        (*(v101 + 32))(v42 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v50, v47, v107);
        v44 += v100;
        --v41;
      }

      while (v41);

      v12 = v107;
    }

    else
    {

      v42 = MEMORY[0x277D84F90];
    }

    v51 = sub_224AE9AE8(v42);

    v52 = v88[5];
    __swift_project_boxed_opaque_existential_1(v88 + 1, v88[4]);
    v53 = *(type metadata accessor for UnpairedRelationshipURLProposer() + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48B0, &qword_224DB8210);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_224DB3100;
    v55 = *MEMORY[0x277CBE7B0];
    *(v54 + 32) = *MEMORY[0x277CBE7B0];
    v56 = v55;
    v65 = sub_224DAA3C8();

    v108 = MEMORY[0x277D84FA0];
    v100 = *(v65 + 16);
    if (!v100)
    {

      return MEMORY[0x277D84FA0];
    }

    v66 = 0;
    v67 = v90;
    v98 = (v65 + ((*(v67 + 80) + 32) & ~*(v67 + 80)));
    v95 = (v101 + 48);
    v96 = v90 + 16;
    v92 = (v101 + 32);
    v102 = (v101 + 16);
    v99 = (v90 + 8);
    v104 = (v51 + 56);
    v105 = (v101 + 8);
    v88 = ((v101 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v19 = v89;
    v68 = v91;
    v69 = v106;
    v87 = v65;
    while (1)
    {
      if (v66 >= *(v65 + 16))
      {
        goto LABEL_44;
      }

      (*(v67 + 16))(v97, v98 + *(v67 + 72) * v66, v68);
      sub_224DA95E8();
      sub_224DA9888();

      if ((*v95)(v19, 1, v12) == 1)
      {
        sub_224A3311C(v19, &unk_27D6F5630, &unk_224DB34C0);
      }

      else
      {
        (*v92)(v69, v19, v12);
        if (*(v51 + 16))
        {
          v74 = *(v51 + 40);
          sub_224A43A94(&qword_281351A18);
          v75 = sub_224DAED88();
          v76 = -1 << *(v51 + 32);
          v77 = v75 & ~v76;
          if ((*&v104[(v77 >> 3) & 0xFFFFFFFFFFFFFF8] >> v77))
          {
            v78 = ~v76;
            v79 = *(v101 + 72);
            v80 = *(v101 + 16);
            while (1)
            {
              v81 = v51;
              v82 = *(v51 + 48) + v79 * v77;
              v83 = v103;
              v80(v103, v82, v12);
              sub_224A43A94(&qword_281351A10);
              v84 = sub_224DAEDD8();
              v85 = *v105;
              (*v105)(v83, v12);
              if (v84)
              {
                break;
              }

              v77 = (v77 + 1) & v78;
              v51 = v81;
              if (((*&v104[(v77 >> 3) & 0xFFFFFFFFFFFFFF8] >> v77) & 1) == 0)
              {
                v19 = v89;
                v69 = v106;
                v65 = v87;
                goto LABEL_37;
              }
            }

            v69 = v106;
            v85(v106, v12);
            v68 = v91;
            (*v99)(v97, v91);
            v19 = v89;
            v67 = v90;
            v51 = v81;
            v65 = v87;
            goto LABEL_26;
          }

          v85 = *v105;
LABEL_37:
          v85(v69, v12);
          v67 = v90;
          v68 = v91;
        }

        else
        {
          (*v105)(v69, v12);
        }
      }

      v70 = v94;
      v71 = v97;
      sub_224DA9548();
      v72 = v93;
      sub_224ADB390(v93, v70);
      v73 = *v99;
      (*v99)(v72, v68);
      v73(v71, v68);
      v69 = v106;
      v12 = v107;
LABEL_26:
      if (++v66 == v100)
      {

        return v108;
      }
    }
  }

  v34 = 0;
  v95 = (v20 + 1);
  v96 = v30;
  v98 = (v20 + 4);
  v99 = v20 + 2;
  v105 = v20;
  while (v34 < *(v31 + 16))
  {
    v35 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v36 = v20[9];
    (v20[2])(v27, v31 + v35 + v36 * v34, v19);
    if (sub_224DAAE28())
    {
      v37 = *v98;
      (*v98)(v102, v27, v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v108 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_224ADA1C0(0, *(v33 + 16) + 1, 1);
        v33 = v108;
      }

      v40 = *(v33 + 16);
      v39 = *(v33 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_224ADA1C0(v39 > 1, v40 + 1, 1);
        v33 = v108;
      }

      *(v33 + 16) = v40 + 1;
      v37((v33 + v35 + v40 * v36), v102, v19);
      v12 = v107;
      v20 = v105;
      v31 = v96;
    }

    else
    {
      (*v95)(v27, v19);
    }

    if (v100 == ++v34)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  swift_once();
  v57 = sub_224DAB258();
  __swift_project_value_buffer(v57, qword_281364DD8);
  v58 = v19;
  v59 = sub_224DAB228();
  v60 = sub_224DAF288();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v61 = 138543362;
    v63 = v19;
    v64 = _swift_stdlib_bridgeErrorToNSError();
    *(v61 + 4) = v64;
    *v62 = v64;
    _os_log_impl(&dword_224A2F000, v59, v60, "Failed to get list of remote archive URLs: %{public}@", v61, 0xCu);
    sub_224A3311C(v62, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v62, -1, -1);
    MEMORY[0x22AA5EED0](v61, -1, -1);
  }

  else
  {
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_224BFEC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v51 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = v40 - v4;
  v5 = sub_224DA9688();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v50 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v54 = v40 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v53 = v40 - v12;
  MEMORY[0x28223BE20](v11);
  v52 = v40 - v13;
  v14 = sub_224DA9878();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v43 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DA9908();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v44 = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v40 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = v40 - v27;
  v29 = sub_224DACDC8();
  sub_224DAF538();
  v30 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  (*(v25 + 16))(v28, &v29[v30], v24);
  v31 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224AFD468(&v29[v31], v23);
  sub_224DA9898();
  v49 = sub_224DAF508();

  v32 = sub_224DACE08();
  v47 = v33;
  v48 = v32;
  v34 = sub_224DACD38();
  v45 = v35;
  v46 = v34;
  sub_224DACCB8();
  sub_224DACD08();
  v42 = sub_224DACCA8();
  sub_224DACE28();
  sub_224DACCF8();
  sub_224DACD68();
  sub_224DACD78();
  v41 = sub_224DACCE8();
  sub_224DACD28();
  v40[6] = sub_224DACDD8();
  v40[5] = v36;
  v40[4] = sub_224DACD98();
  v40[3] = v37;
  v40[2] = sub_224DACD58();
  v40[1] = v38;
  sub_224DACCC8();
  sub_224DACE18();
  sub_224DACC98();
  sub_224DACD48();
  sub_224DACD88();
  sub_224DACDE8();
  sub_224DACCD8();
  return sub_224DACDB8();
}

uint64_t sub_224BFF164@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v54 = v39 - v3;
  v4 = sub_224DA9688();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v49 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v53 = v39 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v52 = v39 - v11;
  MEMORY[0x28223BE20](v10);
  v51 = v39 - v12;
  v13 = sub_224DA9878();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v42 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DA9908();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v43 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v39 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = v39 - v26;
  v28 = sub_224DACDC8();
  sub_224DAF538();
  v29 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  (*(v24 + 16))(v27, &v28[v29], v23);
  v30 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224AFD468(&v28[v30], v22);
  v48 = sub_224DAF508();

  v31 = sub_224DACE08();
  v46 = v32;
  v47 = v31;
  v33 = sub_224DACD38();
  v44 = v34;
  v45 = v33;
  sub_224DACCB8();
  sub_224DACD08();
  v41 = sub_224DACCA8();
  sub_224DACE28();
  sub_224DACCF8();
  sub_224DACD68();
  sub_224DACD78();
  v40 = sub_224DACCE8();
  sub_224DACD28();
  v39[6] = sub_224DACDD8();
  v39[5] = v35;
  v39[4] = sub_224DACD98();
  v39[3] = v36;
  v39[2] = sub_224DACD58();
  v39[1] = v37;
  sub_224DACCC8();
  sub_224DACE18();
  sub_224DACC98();
  sub_224DACD48();
  sub_224DACD88();
  sub_224DACDE8();
  sub_224DACCD8();
  return sub_224DACDB8();
}

uint64_t sub_224BFF638(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v8 = sub_224DAAF28();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v25 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v18 = &v2[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  if (!*(v18 + 1))
  {
    v23 = sub_224DA9908();
    (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
    goto LABEL_5;
  }

  v25 = a2;
  v19 = *v18;

  sub_224DA9888();
  v20 = sub_224DA9908();
  v21 = *(v20 - 8);
  result = (*(v21 + 48))(v7, 1, v20);
  if (result != 1)
  {

    (*(v21 + 32))(v15, v7, v20);
    (*(v21 + 56))(v15, 0, 1, v20);
LABEL_5:
    sub_224BFF92C(v15, v17);
    v24 = [v2 tokenString];
    sub_224DAEE18();

    sub_224ACFD88(v17, v12);

    sub_224DAAEE8();
    return sub_224ACFD2C(v17);
  }

  __break(1u);
  return result;
}

uint64_t sub_224BFF92C(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAAF28();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224BFF990()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v5 = *(v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5530, &unk_224DBB320);
    sub_224A33088(&qword_281350F10, &qword_27D6F5530, &unk_224DBB320);
    v2 = v0;
    v1 = sub_224DAB3A8();
    v3 = *(v0 + 40);
    *(v2 + 40) = v1;
  }

  return v1;
}

uint64_t sub_224BFFA54()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v2 = v0;
    v3 = *(v0 + 176);
    v1 = sub_224DAC0D8();
    v4 = *(v2 + 48);
    *(v2 + 48) = v1;
  }

  return v1;
}

uint64_t sub_224BFFABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224C04BE8(a1, a2);
  }

  else
  {
    v5 = sub_224DAE4F8();
    return (*(*(v5 - 8) + 56))(a2, 1, 1, v5);
  }
}

uint64_t sub_224BFFB70@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_224DAC2B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_224DB2780;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5240, &qword_224DBB330);
  MEMORY[0x22AA5BB00](v8);
  v9 = sub_224DAC2A8();
  result = (*(v3 + 8))(v6, v2);
  *(v7 + 32) = v9;
  *a1 = v7;
  return result;
}

uint64_t sub_224BFFC98(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 32);

    sub_224DAB348();
  }

  return result;
}

uint64_t sub_224BFFD18(uint64_t a1)
{
  v2 = sub_224DAE918();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = sub_224DAB258();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v10 + 16))(v13, Strong + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger, v9);

    (*(v3 + 16))(v8, a1, v2);
    v15 = v3;
    v16 = sub_224DAB228();
    v17 = sub_224DAF278();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v33 = v2;
      v19 = v18;
      v30 = swift_slowAlloc();
      v35 = v30;
      *v19 = 136446210;
      sub_224C086C4(&qword_281350C28, MEMORY[0x277CE3D70]);
      v31 = v9;
      v20 = v15;
      v21 = sub_224DAFD28();
      v32 = a1;
      v23 = v22;
      (*(v20 + 8))(v8, v33);
      v24 = sub_224A33F74(v21, v23, &v35);
      a1 = v32;

      *(v19 + 4) = v24;
      _os_log_impl(&dword_224A2F000, v16, v17, "Protection Type changed to %{public}s", v19, 0xCu);
      v25 = v30;
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x22AA5EED0](v25, -1, -1);
      v26 = v19;
      v2 = v33;
      MEMORY[0x22AA5EED0](v26, -1, -1);

      (*(v10 + 8))(v13, v31);
      v3 = v20;
    }

    else
    {

      (*(v15 + 8))(v8, v2);
      (*(v10 + 8))(v13, v9);
      v3 = v15;
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v28 = *(result + 176);

    (*(v3 + 16))(v34, a1, v2);
    sub_224DAC0A8();
  }

  return result;
}

uint64_t sub_224C000FC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224C00154();
  }

  return result;
}

uint64_t sub_224C00154()
{
  v1 = sub_224DAD158();
  v204 = *(v1 - 8);
  v2 = *(v204 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v191 = &v165 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v199 = &v165 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5238, &qword_224DBB1E0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v165 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v192 = &v165 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v198 = &v165 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v197 = &v165 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v217 = &v165 - v18;
  MEMORY[0x28223BE20](v17);
  v221 = &v165 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v203 = &v165 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v165 - v24;
  v218 = sub_224DAC2B8();
  v210 = *(v218 - 8);
  v26 = *(v210 + 64);
  v27 = MEMORY[0x28223BE20](v218);
  v216 = &v165 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v219 = &v165 - v30;
  MEMORY[0x28223BE20](v29);
  v222 = &v165 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v169 = *(v32 - 8);
  v33 = *(v169 + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v188 = &v165 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v205 = &v165 - v37;
  MEMORY[0x28223BE20](v36);
  v167 = &v165 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3388, &unk_224DB35A0);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v172 = &v165 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v171 = &v165 - v43;
  v45 = v0[10];
  v44 = v0[11];
  v179 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 7, v45);
  v46 = (*(*(v44 + 8) + 24))(768, v45);
  v182 = v10;
  v196 = v25;
  if (v46)
  {
    v47 = sub_224CFEA64(v46);
  }

  else
  {
    v47 = sub_224DA08CC(MEMORY[0x277D84F90]);
  }

  v48 = 0;
  v187 = 0;
  v168 = v47;
  v49 = v47 + 64;
  v50 = 1 << *(v47 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & *(v47 + 64);
  v178 = OBJC_IVAR____TtC10ChronoCore21PreviewControlService__queue;
  v166 = (v50 + 63) >> 6;
  v183 = (v169 + 16);
  v186 = (v169 + 32);
  v195 = (v169 + 56);
  v194 = (v169 + 48);
  v185 = (v169 + 8);
  v209 = (v204 + 56);
  v177 = v204 + 16;
  v193 = (v204 + 48);
  v208 = (v204 + 32);
  v181 = (v204 + 8);
  v220 = (v210 + 16);
  v176 = v204 + 40;
  v215 = (v210 + 8);
  v190 = v210 + 32;
  v53 = MEMORY[0x277D84F98];
  v223 = MEMORY[0x277D84F90];
  v189 = MEMORY[0x277D84F90];
  v207 = v1;
  v54 = v222;
  v206 = v32;
  v170 = v47 + 64;
  while (v52)
  {
    v55 = v53;
    v175 = v48;
    v56 = v48;
LABEL_18:
    v174 = (v52 - 1) & v52;
    v59 = __clz(__rbit64(v52)) | (v56 << 6);
    v60 = v168;
    v61 = v169;
    v62 = v167;
    (*(v169 + 16))(v167, *(v168 + 48) + *(v169 + 72) * v59, v32);
    v63 = *(*(v60 + 56) + 8 * v59);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
    v65 = *(v64 + 48);
    v66 = *(v61 + 32);
    v67 = v172;
    v68 = v62;
    v69 = v32;
    v66(v172, v68, v32);
    *(v67 + v65) = v63;
    (*(*(v64 - 8) + 56))(v67, 0, 1, v64);
    v70 = v63;
    v53 = v55;
LABEL_19:
    v71 = v171;
    sub_224C08978(v67, v171);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
    if ((*(*(v72 - 8) + 48))(v71, 1, v72) == 1)
    {

      v161 = v179;
      v162 = *(v179 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_lock);

      os_unfair_lock_lock(v162 + 4);
      v163 = *(v161 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_lock_configurationLifetimeAssertions);
      *(v161 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_lock_configurationLifetimeAssertions) = v189;

      os_unfair_lock_unlock(v162 + 4);
    }

    v73 = *(v71 + *(v72 + 48));
    v74 = v69;
    v184 = *v186;
    v184(v205, v71, v69);
    v173 = v73;
    v75 = [v73 controlItems];
    sub_224DAF5D8();
    v76 = sub_224DAF008();

    v77 = v76;
    if (v76 >> 62)
    {
      v160 = sub_224DAF838();
      v77 = v76;
      v78 = v160;
    }

    else
    {
      v78 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v79 = v203;
    if (v78)
    {
      v80 = 0;
      v202 = v77 & 0xC000000000000001;
      v180 = v77 & 0xFFFFFFFFFFFFFF8;
      v201 = v77;
      v200 = v78;
      while (1)
      {
        if (v202)
        {
          v81 = MEMORY[0x22AA5DCC0](v80);
        }

        else
        {
          if (v80 >= *(v180 + 16))
          {
            goto LABEL_88;
          }

          v81 = *(v77 + 8 * v80 + 32);
        }

        v224 = v81;
        v82 = v80 + 1;
        if (__OFADD__(v80, 1))
        {
          break;
        }

        v83 = v53;
        v84 = v1;
        v212 = v80;
        v85 = v224;
        v214 = [v224 canAppearInSecureEnvironment];
        v86 = v205;
        sub_224DAA1F8();
        v87 = sub_224DAA048();

        v88 = [v85 controlIdentity];
        if (v87)
        {
          v89 = v196;
          (*v183)(v196, v86, v74);
          v90 = 0;
        }

        else
        {
          v90 = 1;
          v89 = v196;
        }

        (*v195)(v89, v90, 1, v74);
        sub_224DAC298();
        sub_224DAC288();
        v91 = v84;
        if ((*v194)(v79, 1, v74) == 1)
        {
          sub_224A3311C(v79, &qword_27D6F56C0, &unk_224DB3580);
          v92 = v209;
          v93 = v193;
          v94 = v53;
        }

        else
        {
          v95 = v188;
          v184(v188, v79, v74);
          sub_224DAA1F8();
          v94 = v83;
          if (v96)
          {

            v98 = *(v179 + v178);
            MEMORY[0x28223BE20](v97);
            *(&v165 - 2) = v99;
            *(&v165 - 1) = v54;
            v101 = v100;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3698, &qword_224DB3C70);
            v102 = v187;
            sub_224DAF3E8();

            sub_224A3317C(&v226, &v225);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v187 = v102;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v189 = sub_224AD97A8(0, v189[2] + 1, 1, v189);
            }

            v92 = v209;
            v93 = v193;
            v105 = v189[2];
            v104 = v189[3];
            v54 = v222;
            v106 = v206;
            if (v105 >= v104 >> 1)
            {
              v189 = sub_224AD97A8((v104 > 1), v105 + 1, 1, v189);
            }

            __swift_destroy_boxed_opaque_existential_1(&v226);
            (*v185)(v188, v106);
            v107 = v189;
            v189[2] = v105 + 1;
            sub_224A39D14(&v225, &v107[5 * v105 + 4]);
          }

          else
          {
            (*v185)(v95, v74);
            v92 = v209;
            v93 = v193;
          }
        }

        v108 = v199;
        v109 = v94[2];
        v213 = v94;
        v211 = v82;
        if (v109 && (v110 = sub_224B0BBA8(v54), (v111 & 1) != 0))
        {
          (*(v204 + 16))(v221, v94[7] + *(v204 + 72) * v110, v91);
          v112 = 0;
        }

        else
        {
          v112 = 1;
        }

        v113 = v197;
        v114 = *v92;
        v115 = v221;
        (*v92)(v221, v112, 1, v91);
        v116 = v217;
        v114(v217, 1, 1, v91);
        sub_224A3796C(v115, v113, &qword_27D6F5238, &qword_224DBB1E0);
        v117 = *v93;
        if ((*v93)(v113, 1, v91) == 1)
        {
          sub_224A3311C(v113, &qword_27D6F5238, &qword_224DBB1E0);
          v118 = v198;
          sub_224DAD148();
          v114(v118, 0, 1, v91);
          sub_224C089E8(v118, v116);
          if (v117(v116, 1, v91) == 1)
          {
            goto LABEL_94;
          }

          sub_224DACFF8();
          v119 = v224;
          [v224 supportedColorSchemes];
          if (v117(v116, 1, v91) == 1)
          {
            goto LABEL_91;
          }

          sub_224DAD098();
          [v119 supportsLowLuminance];
          if (v117(v116, 1, v91) == 1)
          {
            goto LABEL_95;
          }

          sub_224DAD108();
          v120 = v218;
        }

        else
        {
          (*v208)(v108, v113, v91);
          v121 = v198;
          sub_224DAD148();
          v114(v121, 0, 1, v91);
          sub_224C089E8(v121, v116);
          sub_224DACFE8();
          if (v117(v116, 1, v91) == 1)
          {
            goto LABEL_97;
          }

          sub_224DACFF8();
          sub_224DAD088();
          if (v117(v116, 1, v91) == 1)
          {
            goto LABEL_92;
          }

          sub_224DAD098();
          v122 = v224;
          v123 = [v224 supportedColorSchemes];
          if (v117(v116, 1, v91) == 1)
          {
            goto LABEL_96;
          }

          v125 = sub_224DAD078();
          if ((v123 & ~*v124) != 0)
          {
            *v124 |= v123;
          }

          v125(&v226, 0);
          if ((sub_224DAD0F8() & 1) == 0)
          {
            [v122 supportsLowLuminance];
          }

          v120 = v218;
          if (v117(v116, 1, v91) == 1)
          {
            goto LABEL_93;
          }

          sub_224DAD108();
          (*v181)(v108, v91);
        }

        v126 = v219;
        v127 = *v220;
        (*v220)(v219, v222, v120);
        v128 = v192;
        sub_224A3796C(v116, v192, &qword_27D6F5238, &qword_224DBB1E0);
        if (v117(v128, 1, v91) == 1)
        {
          v129 = v210;
          sub_224A3311C(v128, &qword_27D6F5238, &qword_224DBB1E0);
          v53 = v213;
          v130 = sub_224B0BBA8(v126);
          if (v131)
          {
            v132 = v130;
            v133 = swift_isUniquelyReferenced_nonNull_native();
            v226 = v53;
            v54 = v222;
            if (!v133)
            {
              sub_224B285C8();
              v53 = v226;
            }

            v134 = *(v129 + 8);
            v135 = v218;
            v134(v53[6] + *(v129 + 72) * v132, v218);
            v136 = v182;
            v137 = v207;
            (*(v204 + 32))(v182, v53[7] + *(v204 + 72) * v132, v207);
            sub_224B1CFB4(v132, v53);
            v134(v219, v135);
            v138 = 0;
          }

          else
          {
            v134 = *v215;
            v135 = v218;
            (*v215)(v126, v218);
            v138 = 1;
            v136 = v182;
            v137 = v207;
            v54 = v222;
          }

          v114(v136, v138, 1, v137);
          sub_224A3311C(v136, &qword_27D6F5238, &qword_224DBB1E0);
          v150 = v216;
          v74 = v206;
        }

        else
        {
          v139 = *v208;
          (*v208)(v191, v128, v91);
          v140 = v213;
          v141 = swift_isUniquelyReferenced_nonNull_native();
          v226 = v140;
          v142 = sub_224B0BBA8(v126);
          v144 = *(v140 + 16);
          v145 = (v143 & 1) == 0;
          v146 = __OFADD__(v144, v145);
          v147 = v144 + v145;
          if (v146)
          {
            goto LABEL_87;
          }

          v148 = v143;
          if (*(v140 + 24) >= v147)
          {
            v54 = v222;
            if ((v141 & 1) == 0)
            {
              v158 = v142;
              sub_224B285C8();
              v142 = v158;
            }
          }

          else
          {
            sub_224B14F0C(v147, v141);
            v142 = sub_224B0BBA8(v219);
            v54 = v222;
            if ((v148 & 1) != (v149 & 1))
            {
              goto LABEL_98;
            }
          }

          v74 = v206;
          v53 = v226;
          if (v148)
          {
            (*(v204 + 40))(v226[7] + *(v204 + 72) * v142, v191, v91);
            v135 = v218;
          }

          else
          {
            v226[(v142 >> 6) + 8] |= 1 << v142;
            v151 = v142;
            v135 = v218;
            v127(v53[6] + *(v210 + 72) * v142, v219, v218);
            v139((v53[7] + *(v204 + 72) * v151), v191, v91);
            v152 = v53[2];
            v146 = __OFADD__(v152, 1);
            v153 = v152 + 1;
            if (v146)
            {
              goto LABEL_90;
            }

            v53[2] = v153;
          }

          v134 = *v215;
          (*v215)(v219, v135);
          v150 = v216;
        }

        v127(v150, v54, v135);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v223 = sub_224AD990C(0, v223[2] + 1, 1, v223);
        }

        v154 = v207;
        v156 = v223[2];
        v155 = v223[3];
        if (v156 >= v155 >> 1)
        {
          v223 = sub_224AD990C(v155 > 1, v156 + 1, 1, v223);
        }

        sub_224A3311C(v221, &qword_27D6F5238, &qword_224DBB1E0);
        v157 = v223;
        v223[2] = v156 + 1;
        (*(v210 + 32))(v157 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v156, v216, v135);
        v134(v54, v135);
        sub_224A3311C(v217, &qword_27D6F5238, &qword_224DBB1E0);
        v80 = v212 + 1;
        v79 = v203;
        v1 = v154;
        v77 = v201;
        if (v211 == v200)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

LABEL_7:

    v32 = v74;
    (*v185)(v205, v74);
    v48 = v175;
    v49 = v170;
    v52 = v174;
  }

  if (v166 <= v48 + 1)
  {
    v57 = v48 + 1;
  }

  else
  {
    v57 = v166;
  }

  v58 = v57 - 1;
  while (1)
  {
    v56 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v56 >= v166)
    {
      v69 = v32;
      v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
      v67 = v172;
      (*(*(v159 - 8) + 56))(v172, 1, 1, v159);
      v174 = 0;
      v175 = v58;
      goto LABEL_19;
    }

    v52 = *(v49 + 8 * v56);
    ++v48;
    if (v52)
    {
      v55 = v53;
      v175 = v56;
      goto LABEL_18;
    }
  }

LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224C01838(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224C031B4(a1);
  }

  return result;
}

uint64_t sub_224C01898(char *a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224C01968(a1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_224B3E234(a1);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_224C01968(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  sub_224DAC288();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_224A3311C(v7, &qword_27D6F56C0, &unk_224DB3580);
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_224DAA1F8();
  if (v14)
  {
  }

  else
  {
    v15 = sub_224DAC2A8();
    v16 = [v15 extensionIdentity];

    v17 = &v16[*MEMORY[0x277CFA128]];
    swift_beginAccess();
    v18 = *(v17 + 1);

    if (v18)
    {

      v19 = *__swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
      sub_224AB2FC8(a1);
    }
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_224C01B9C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 176);
    MEMORY[0x28223BE20](result);
    sub_224DAC128();
  }

  return result;
}

uint64_t sub_224C01C48()
{
  v1 = OBJC_IVAR____TtC10ChronoCore21PreviewControlService__queue;
  v2 = *(v0 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService__queue);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_224C088A8;
  *(v3 + 24) = v0;
  v19[4] = sub_224A8A838;
  v19[5] = v3;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_224A9B6F8;
  v19[3] = &block_descriptor_27;
  v4 = _Block_copy(v19);
  v5 = v2;

  dispatch_sync(v5, v4);

  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v7 = v0[2];
    swift_unknownObjectRelease();
    v8 = v0[4];

    v9 = v0[5];

    v10 = v0[6];

    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    __swift_destroy_boxed_opaque_existential_1(v0 + 12);
    __swift_destroy_boxed_opaque_existential_1(v0 + 17);
    v11 = v0[22];

    __swift_destroy_boxed_opaque_existential_1(v0 + 23);
    __swift_destroy_boxed_opaque_existential_1(v0 + 28);
    v12 = v0[33];

    __swift_destroy_boxed_opaque_existential_1(v0 + 34);
    __swift_destroy_boxed_opaque_existential_1(v0 + 39);
    v13 = OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger;
    v14 = sub_224DAB258();
    (*(*(v14 - 8) + 8))(v0 + v13, v14);

    v15 = *(v0 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService__queue_persistentSubscriptions);

    v16 = *(v0 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_lock);

    v17 = *(v0 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_lock_configurationLifetimeAssertions);

    v18 = *(v0 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService__statefulStoreCalloutQueue_environmentSubscriptions);

    return v0;
  }

  return result;
}

uint64_t sub_224C01E88(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10ChronoCore21PreviewControlService__queue_persistentSubscriptions;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3 >> 62)
  {
LABEL_15:
    v4 = sub_224DAF838();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AA5DCC0](v5, v3);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_12:
          __break(1u);
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }
      }

      sub_224DAB328();

      ++v5;
    }

    while (v7 != v4);
  }
}

uint64_t sub_224C01F94()
{
  sub_224C01C48();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PreviewControlService()
{
  result = qword_281357D38;
  if (!qword_281357D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224C02040()
{
  result = sub_224DAB258();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_224C0212C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37C8, &unk_224DB4020);
  v6 = *(v24 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v23 - v8;
  v10 = sub_224DAB258();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger, v10);
  v15 = sub_224DAB228();
  v16 = sub_224DAF2A8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_224A2F000, v15, v16, "Start", v17, 2u);
    MEMORY[0x22AA5EED0](v17, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v18 = a1[21];
  __swift_project_boxed_opaque_existential_1(a1 + 17, a1[20]);
  v25 = sub_224DAC698();
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v19 = sub_224DAF3D8();
  v26 = v19;
  v20 = sub_224DAF358();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5500, &unk_224DB4040);
  sub_224A33088(&qword_281351048, &unk_27D6F5500, &unk_224DB4040);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v5, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351230, &qword_27D6F37C8, &unk_224DB4020);
  v21 = v24;
  sub_224DAB488();

  (*(v6 + 8))(v9, v21);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54F0, &qword_224DBA400);
  sub_224A33088(&unk_281350BC0, &unk_27D6F54F0, &qword_224DBA400);
  sub_224DAB318();
  swift_endAccess();
}

uint64_t sub_224C025B8(uint64_t *a1)
{
  v2 = sub_224DAC2B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v51 = result;
  if (!result)
  {
    return result;
  }

  v43 = *(v7 + 16);
  if (!v43)
  {
  }

  v9 = 0;
  v44 = v7 + 32;
  v57 = "Reloading all content: ";
  v10 = (v3 + 8);
  v49 = v3;
  v50 = v2;
  v47 = v3 + 16;
  v48 = v6;
  v42 = v7;
  v46 = (v3 + 8);
  while (1)
  {
    if (v9 >= *(v7 + 16))
    {
      goto LABEL_36;
    }

    v45 = v9;
    sub_224A3317C(v44 + 40 * v9, v60);
    v12 = *(v51 + 176);
    v13 = sub_224DAC108();
    v56 = *(v13 + 16);
    if (v56)
    {
      break;
    }

LABEL_5:
    v11 = v45 + 1;
    result = __swift_destroy_boxed_opaque_existential_1(v60);
    v9 = v11;
    if (v11 == v43)
    {
    }
  }

  v14 = v13;
  v55 = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  result = v14;
  v15 = 0;
  v16 = *(v3 + 80);
  v53 = v14;
  v54 = v14 + ((v16 + 32) & ~v16);
LABEL_11:
  if (v15 >= *(result + 16))
  {
    goto LABEL_35;
  }

  (*(v3 + 16))(v6, v54 + *(v3 + 72) * v15, v2);
  v17 = sub_224DAC2A8();
  v18 = [v17 extensionIdentity];

  __swift_project_boxed_opaque_existential_1(v60, v60[3]);
  v19 = sub_224DAE338();
  LOBYTE(v17) = sub_224DAF6A8();

  if ((v17 & 1) == 0)
  {
    goto LABEL_10;
  }

  v20 = *(v51 + 176);
  result = sub_224DAC168();
  if (!result)
  {
    goto LABEL_10;
  }

  v21 = result;
  if ((result & 0xC000000000000001) != 0)
  {
    result = sub_224DAFA68();
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v21 = result | 0x8000000000000000;
  }

  else
  {
    v25 = -1 << *(result + 32);
    v22 = result + 64;
    v23 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v24 = v27 & *(result + 64);
  }

  v28 = 0;
  v52 = v23;
  v29 = (v23 + 64) >> 6;
  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v30 = v28;
    v31 = v24;
    v32 = v28;
    if (!v24)
    {
      break;
    }

LABEL_25:
    v33 = (v31 - 1) & v31;
    v34 = (v32 << 9) | (8 * __clz(__rbit64(v31)));
    v35 = *(*(v21 + 48) + v34);
    v36 = *(*(v21 + 56) + v34);

    if (!v35)
    {
LABEL_9:
      sub_224A3B7E4();
      v3 = v49;
      v2 = v50;
      v6 = v48;
      v10 = v46;
LABEL_10:
      ++v15;
      (*v10)(v6, v2);
      result = v53;
      if (v15 == v56)
      {

        v7 = v42;
        goto LABEL_5;
      }

      goto LABEL_11;
    }

    while (1)
    {

      sub_224DABF38();
      sub_224DABEA8();

      v28 = v32;
      v24 = v33;
      if ((v21 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_27:
      v37 = sub_224DAFB18();
      if (v37)
      {
        v39 = v38;
        v58 = v37;
        type metadata accessor for EmptyKey();
        swift_dynamicCast();
        v40 = v59;
        v58 = v39;
        sub_224DABF48();
        swift_dynamicCast();
        v32 = v28;
        v33 = v24;
        if (v40)
        {
          continue;
        }
      }

      goto LABEL_9;
    }
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v29)
    {
      goto LABEL_9;
    }

    v31 = *(v22 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_224C02A5C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_224DACB08();
  v81 = *(v6 - 8);
  v82 = v6;
  v7 = *(v81 + 64);
  MEMORY[0x28223BE20](v6);
  v83 = &v61[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v77 = sub_224DACB28();
  v75 = *(v77 - 8);
  v9 = *(v75 + 64);
  MEMORY[0x28223BE20](v77);
  v78 = &v61[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_224DACC88();
  v79 = *(v11 - 8);
  v80 = v11;
  v12 = *(v79 + 64);
  MEMORY[0x28223BE20](v11);
  v76 = &v61[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v70 = &v61[-v16];
  v17 = sub_224DAC2B8();
  v73 = *(v17 - 8);
  v74 = v17;
  v18 = *(v73 + 64);
  MEMORY[0x28223BE20](v17);
  v72 = &v61[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_224DACB98();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v71 = &v61[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v26 = &v61[-v25];
  v27 = sub_224DAB258();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v61[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = *(v28 + 16);
  v67 = v33;
  v32(v31, &v3[OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger]);
  v34 = *(v21 + 16);
  v84 = v20;
  v68 = v34;
  v69 = v21 + 16;
  v34(v26, a2, v20);
  v35 = a1;
  v36 = sub_224DAB228();
  v37 = sub_224DAF2A8();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v66 = v3;
    v39 = v38;
    v40 = swift_slowAlloc();
    v63 = v40;
    v64 = swift_slowAlloc();
    v85 = v64;
    *v39 = 138543618;
    *(v39 + 4) = v35;
    *v40 = v35;
    *(v39 + 12) = 2082;
    sub_224C086C4(&unk_281350D28, MEMORY[0x277CF9BF8]);
    v65 = a2;
    v41 = v35;
    v62 = v37;
    v42 = v35;
    v43 = v84;
    v44 = sub_224DAFD28();
    v46 = v45;
    v47 = v43;
    v35 = v42;
    (*(v21 + 8))(v26, v47);
    v48 = sub_224A33F74(v44, v46, &v85);
    a2 = v65;

    *(v39 + 14) = v48;
    _os_log_impl(&dword_224A2F000, v36, v62, "Reload preview control: %{public}@ for reason: %{public}s", v39, 0x16u);
    v49 = v63;
    sub_224A3311C(v63, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v49, -1, -1);
    v50 = v64;
    __swift_destroy_boxed_opaque_existential_1(v64);
    MEMORY[0x22AA5EED0](v50, -1, -1);
    v51 = v39;
    v3 = v66;
    MEMORY[0x22AA5EED0](v51, -1, -1);
  }

  else
  {

    (*(v21 + 8))(v26, v84);
  }

  (*(v28 + 8))(v31, v67);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v53 = v70;
  (*(*(v52 - 8) + 56))(v70, 1, 1, v52);
  v54 = v72;
  sub_224C07F90(v35, v53, v72);
  sub_224A3311C(v53, &qword_27D6F56C0, &unk_224DB3580);
  v56 = *(v3 + 2);
  v55 = *(v3 + 3);
  swift_getObjectType();
  v57 = *(*(v55 + 16) + 16);
  sub_224DAC468();
  (*(v75 + 104))(v78, *MEMORY[0x277CF9B50], v77);
  (*(v81 + 104))(v83, *MEMORY[0x277CF9B40], v82);
  v68(v71, a2, v84);
  sub_224DACC48();
  v58 = v76;
  sub_224DACC38();
  v59 = *(v3 + 22);
  sub_224DAC138();
  (*(v79 + 8))(v58, v80);
  return (*(v73 + 8))(v54, v74);
}

uint64_t sub_224C031B4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v33 - v6;
  v44 = sub_224DAF3B8();
  v42 = *(v44 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CA0, &qword_224DBA450);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v45 = &v33 - v13;
  v14 = sub_224DAC2B8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v41 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v18 = *(v15 + 16);
  v46 = &v33 - v19;
  v40 = v18;
  v18();
  v20 = *(v1 + 176);
  v21 = sub_224DAC168();
  if (v21 && (v39 = a1, v22 = sub_224D5D150(v21), , v22))
  {
    sub_224DABEB8();

    v38 = v2;
    __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    v35 = sub_224DAD178();
    v48 = v35;
    sub_224DAF378();
    sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
    v34 = sub_224DAF3D8();
    v47 = v34;
    v23 = sub_224DAF358();
    v24 = v43;
    (*(*(v23 - 8) + 56))(v43, 1, 1, v23);
    v36 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
    v37 = v11;
    sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810);
    sub_224B67CF4();
    sub_224DAB468();
    sub_224A3311C(v24, &qword_27D6F5090, &qword_224DB5C30);

    (*(v42 + 8))(v9, v44);

    __swift_destroy_boxed_opaque_existential_1(v49);
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = v41;
    (v40)(v41, v39, v14);
    v27 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    (*(v15 + 32))(v28 + v27, v26, v14);
    sub_224A33088(&qword_281351338, &qword_27D6F4CA0, &qword_224DBA450);
    v29 = v36;
    v30 = v45;
    v31 = sub_224DAB488();

    (*(v37 + 8))(v30, v29);
  }

  else
  {
    v31 = 0;
  }

  swift_beginAccess();
  sub_224B08CD8(v31, v46);
  return swift_endAccess();
}

uint64_t sub_224C03704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_224DAC2B8();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v43 = v6;
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DABD68();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v42 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C28, qword_224DBA340);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C30, &unk_224DBB310);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v41 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v41 - v23;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = result;
    v27 = *(result + 176);

    v47 = a3;
    sub_224DAC118();

    (*(v8 + 104))(v22, *MEMORY[0x277CF98C0], v7);
    (*(v8 + 56))(v22, 0, 1, v7);
    v28 = *(v11 + 48);
    sub_224A3796C(v24, v14, &qword_27D6F4C30, &unk_224DBB310);
    sub_224A3796C(v22, &v14[v28], &qword_27D6F4C30, &unk_224DBB310);
    v29 = *(v8 + 48);
    if (v29(v14, 1, v7) == 1)
    {
      sub_224A3311C(v22, &qword_27D6F4C30, &unk_224DBB310);
      if (v29(&v14[v28], 1, v7) == 1)
      {
        sub_224A3311C(v14, &qword_27D6F4C30, &unk_224DBB310);
        v30 = v47;
LABEL_10:
        v47 = *(v26 + 176);
        v35 = swift_allocObject();
        swift_weakInit();
        v36 = v44;
        v37 = v45;
        v38 = v46;
        (*(v45 + 16))(v44, v30, v46);
        v39 = (*(v37 + 80) + 24) & ~*(v37 + 80);
        v40 = swift_allocObject();
        *(v40 + 16) = v35;
        (*(v37 + 32))(v40 + v39, v36, v38);

        sub_224DAC0B8();

        sub_224A3311C(v24, &qword_27D6F4C30, &unk_224DBB310);
      }
    }

    else
    {
      sub_224A3796C(v14, v19, &qword_27D6F4C30, &unk_224DBB310);
      if (v29(&v14[v28], 1, v7) != 1)
      {
        v31 = &v14[v28];
        v32 = v42;
        (*(v8 + 32))(v42, v31, v7);
        sub_224C086C4(&unk_281350E90, MEMORY[0x277CF98C8]);
        v33 = sub_224DAEDD8();
        v34 = *(v8 + 8);
        v34(v32, v7);
        sub_224A3311C(v22, &qword_27D6F4C30, &unk_224DBB310);
        v34(v19, v7);
        sub_224A3311C(v14, &qword_27D6F4C30, &unk_224DBB310);
        v30 = v47;
        if (v33)
        {
          goto LABEL_10;
        }

LABEL_8:
        sub_224C03D78(v30);

        return sub_224A3311C(v24, &qword_27D6F4C30, &unk_224DBB310);
      }

      sub_224A3311C(v22, &qword_27D6F4C30, &unk_224DBB310);
      (*(v8 + 8))(v19, v7);
    }

    sub_224A3311C(v14, &qword_27D6F4C28, qword_224DBA340);
    v30 = v47;
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_224C03D18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224C03D78(a2);
  }

  return result;
}

uint64_t sub_224C03D78(uint64_t a1)
{
  v3 = sub_224DACB98();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_224DACB08();
  v113 = *(v114 - 8);
  v8 = *(v113 + 64);
  MEMORY[0x28223BE20](v114);
  v115 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_224DACB28();
  v107 = *(v108 - 8);
  v10 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v110 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_224DACC88();
  v111 = *(v112 - 8);
  v12 = *(v111 + 64);
  MEMORY[0x28223BE20](v112);
  v109 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_224DAC2B8();
  v14 = *(v116 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v116);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v104 = &v91 - v19;
  v121 = sub_224DAB258();
  v127 = *(v121 - 8);
  v20 = *(v127 + 64);
  v21 = MEMORY[0x28223BE20](v121);
  v23 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v105 = &v91 - v24;
  v126 = sub_224DAB728();
  v119 = *(v126 - 8);
  v25 = *(v119 + 64);
  MEMORY[0x28223BE20](v126);
  v125 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_224DAE4F8();
  v27 = *(v124 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v124);
  v123 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v1;
  v106 = *(v1 + 176);
  result = sub_224DAC168();
  if (result)
  {
    v31 = result;
    v102 = v4;
    v103 = v7;
    v32 = sub_224DAC2A8();
    v33 = [v32 extensionIdentity];

    v34 = &v33[*MEMORY[0x277CFA128]];
    swift_beginAccess();
    v36 = *v34;
    v35 = *(v34 + 1);

    LOBYTE(v36) = sub_224DAA048();

    if (v36)
    {

      v37 = v127;
      v38 = v121;
      (*(v127 + 16))(v23, v117 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger, v121);
      v39 = v116;
      (*(v14 + 16))(v18, a1, v116);
      v40 = sub_224DAB228();
      v41 = sub_224DAF278();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = v37;
        v44 = swift_slowAlloc();
        v129[0] = v44;
        *v42 = 136446210;
        sub_224C086C4(&unk_281350E08, MEMORY[0x277CF99B8]);
        v45 = sub_224DAFD28();
        v46 = v39;
        v48 = v47;
        (*(v14 + 8))(v18, v46);
        v49 = sub_224A33F74(v45, v48, v129);

        *(v42 + 4) = v49;
        _os_log_impl(&dword_224A2F000, v40, v41, "Ignoring proactive reload for timeline %{public}s becasue it is remote", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        MEMORY[0x22AA5EED0](v44, -1, -1);
        MEMORY[0x22AA5EED0](v42, -1, -1);

        return (*(v43 + 8))(v23, v121);
      }

      else
      {

        (*(v14 + 8))(v18, v39);
        return (*(v37 + 8))(v23, v38);
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_224DBB050;
      *(v50 + 32) = swift_getKeyPath();
      *(v50 + 40) = swift_getKeyPath();
      *(v50 + 48) = swift_getKeyPath();
      *(v50 + 56) = swift_getKeyPath();
      result = swift_getKeyPath();
      v122 = v50;
      *(v50 + 64) = result;
      v101 = a1;
      v99 = v3;
      if ((v31 & 0xC000000000000001) != 0)
      {
        result = sub_224DAFA68();
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v31 = result | 0x8000000000000000;
      }

      else
      {
        v55 = -1 << *(v31 + 32);
        v52 = v31 + 64;
        v53 = ~v55;
        v56 = -v55;
        if (v56 < 64)
        {
          v57 = ~(-1 << v56);
        }

        else
        {
          v57 = -1;
        }

        v54 = v57 & *(v31 + 64);
      }

      v100 = 0;
      v58 = 0;
      v98 = v53;
      v59 = (v53 + 64) >> 6;
      v119 += 8;
      v118 = (v27 + 8);
      v97 = (v127 + 16);
      v96 = (v14 + 16);
      v95 = (v14 + 8);
      v94 = (v127 + 8);
      *&v51 = 136446210;
      v93 = v51;
      v120 = v52;
LABEL_13:
      v60 = v58;
      if ((v31 & 0x8000000000000000) != 0)
      {
LABEL_16:
        v61 = sub_224DAFB18();
        if (v61)
        {
          v63 = v62;
          v128[0] = v61;
          type metadata accessor for EmptyKey();
          swift_dynamicCast();
          v64 = v129[0];
          v128[0] = v63;
          sub_224DABF48();
          swift_dynamicCast();
          v58 = v60;
          v65 = v54;
          if (v64)
          {
            goto LABEL_24;
          }
        }

LABEL_32:
        sub_224A3B7E4();

        v87 = v99;
        v88 = v103;
        v89 = v102;
        if (v100)
        {
          (*(v107 + 104))(v110, *MEMORY[0x277CF9B50], v108);
          (*(v113 + 104))(v115, *MEMORY[0x277CF9B40], v114);
          (*(v89 + 104))(v88, *MEMORY[0x277CF9BA8], v87);
          sub_224DACC48();
          v90 = v109;
          sub_224DACC38();
          sub_224DAC138();
          return (*(v111 + 8))(v90, v112);
        }
      }

      else
      {
        while (1)
        {
          v66 = v60;
          v67 = v54;
          v58 = v60;
          if (!v54)
          {
            break;
          }

LABEL_23:
          v65 = (v67 - 1) & v67;
          v68 = (v58 << 9) | (8 * __clz(__rbit64(v67)));
          v69 = *(*(v31 + 48) + v68);
          v70 = *(*(v31 + 56) + v68);

          if (!v69)
          {
            goto LABEL_32;
          }

LABEL_24:

          if (sub_224DABF28())
          {
            v127 = v65;
            v71 = v31;
            sub_224DAC9F8();
            __swift_project_boxed_opaque_existential_1(v129, v129[3]);
            v72 = v123;
            sub_224DAE7E8();
            sub_224DABEB8();
            __swift_project_boxed_opaque_existential_1(v128, v128[3]);
            v73 = v125;
            sub_224DAD168();

            v74 = sub_224DAE4E8();

            (*v119)(v73, v126);
            (*v118)(v72, v124);
            __swift_destroy_boxed_opaque_existential_1(v128);
            __swift_destroy_boxed_opaque_existential_1(v129);
            if ((v74 & 1) == 0)
            {
              v75 = v121;
              (*v97)(v105, v117 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger, v121);
              v76 = v104;
              v77 = v116;
              (*v96)(v104, v101, v116);
              v78 = sub_224DAB228();
              v100 = sub_224DAF2A8();
              v31 = v71;
              if (os_log_type_enabled(v78, v100))
              {
                v79 = swift_slowAlloc();
                v92 = swift_slowAlloc();
                v129[0] = v92;
                *v79 = v93;
                sub_224C086C4(&unk_281350E08, MEMORY[0x277CF99B8]);
                v80 = v78;
                v81 = sub_224DAFD28();
                v82 = v76;
                v84 = v83;
                (*v95)(v82, v77);
                v85 = sub_224A33F74(v81, v84, v129);

                *(v79 + 4) = v85;
                _os_log_impl(&dword_224A2F000, v80, v100, "Proactively reloading timeline for %{public}s because environment no longer matches.", v79, 0xCu);
                v86 = v92;
                __swift_destroy_boxed_opaque_existential_1(v92);
                MEMORY[0x22AA5EED0](v86, -1, -1);
                MEMORY[0x22AA5EED0](v79, -1, -1);

                result = (*v94)(v105, v121);
              }

              else
              {

                (*v95)(v76, v77);
                result = (*v94)(v105, v75);
              }

              v100 = 1;
              v52 = v120;
              v54 = v127;
              goto LABEL_13;
            }

            v60 = v58;
            v54 = v127;
            v31 = v71;
            v52 = v120;
            if ((v71 & 0x8000000000000000) != 0)
            {
              goto LABEL_16;
            }
          }

          else
          {

            v60 = v58;
            v54 = v65;
            if ((v31 & 0x8000000000000000) != 0)
            {
              goto LABEL_16;
            }
          }
        }

        while (1)
        {
          v58 = v66 + 1;
          if (__OFADD__(v66, 1))
          {
            break;
          }

          if (v58 >= v59)
          {
            goto LABEL_32;
          }

          v67 = *(v52 + 8 * v58);
          ++v66;
          if (v67)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_224C04BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v154 = sub_224DAC2B8();
  v160 = *(v154 - 8);
  v5 = *(v160 + 64);
  v6 = MEMORY[0x28223BE20](v154);
  v149 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v143 = &v132 - v9;
  MEMORY[0x28223BE20](v8);
  v151 = &v132 - v10;
  v11 = sub_224DAB258();
  v155 = *(v11 - 8);
  v12 = v155[8];
  v13 = MEMORY[0x28223BE20](v11);
  v150 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v144 = &v132 - v16;
  MEMORY[0x28223BE20](v15);
  v152 = &v132 - v17;
  v153 = sub_224DAD158();
  v156 = *(v153 - 8);
  v18 = *(v156 + 64);
  MEMORY[0x28223BE20](v153);
  v20 = &v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_224DAE4F8();
  v165 = *(v161 - 8);
  v21 = *(v165 + 64);
  MEMORY[0x28223BE20](v161);
  v164 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_224DAB728();
  v158 = *(v23 - 8);
  v159 = v23;
  v24 = *(v158 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v157 = &v132 - v28;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5238, &qword_224DBB1E0);
  v29 = *(*(v147 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v147);
  v148 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v132 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v132 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v132 - v39;
  MEMORY[0x28223BE20](v38);
  v166 = &v132 - v41;
  v162 = v2;
  KeyPath = a1;
  v42 = *(v2 + 176);
  v43 = sub_224DAC168();
  if (v43)
  {
    v44 = sub_224D5D26C(v43);
    v46 = v45;

    if (v44)
    {
      v146 = v11;
      v142 = a2;

      v47 = *(v162 + 264);

      v48 = v166;
      sub_224DADDE8();

      v141 = v46;
      sub_224DABEB8();
      __swift_project_boxed_opaque_existential_1(v168, v168[3]);
      v49 = v157;
      sub_224DAD168();
      __swift_destroy_boxed_opaque_existential_1(v168);
      (*(v158 + 16))(v27, v49, v159);
      sub_224DAE4D8();
      sub_224A3796C(v48, v40, &qword_27D6F5238, &qword_224DBB1E0);
      v50 = v156;
      v51 = *(v156 + 48);
      v52 = v153;
      v140 = v156 + 48;
      v145 = v51;
      v53 = v51(v40, 1, v153);
      v134 = v34;
      if (v53 == 1)
      {
        sub_224A3311C(v40, &qword_27D6F5238, &qword_224DBB1E0);
        swift_getKeyPath();
        sub_224DAB518();
        sub_224DAE4B8();
      }

      else
      {
        (*(v50 + 32))(v20, v40, v52);
        swift_getKeyPath();
        sub_224DAD038();
        sub_224DAE4B8();
        (*(v50 + 8))(v20, v52);
      }

      v57 = v146;
      v58 = v160;
      v59 = v155;
      v60 = v155[2];
      v135 = OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger;
      v61 = v152;
      v137 = v155 + 2;
      v136 = v60;
      v60(v152, v162 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger, v146);
      v62 = *(v58 + 16);
      v63 = v151;
      v64 = v154;
      v139 = v58 + 16;
      v138 = v62;
      v62(v151, KeyPath, v154);
      sub_224A3796C(v166, v37, &qword_27D6F5238, &qword_224DBB1E0);
      v65 = sub_224DAB228();
      v133 = sub_224DAF278();
      if (os_log_type_enabled(v65, v133))
      {
        v66 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v167 = v132;
        *v66 = 136446722;
        swift_getKeyPath();
        swift_beginAccess();
        v67 = sub_224DAE4A8();
        if (v67)
        {
          v68 = v67;
          swift_endAccess();

          v69 = sub_224DAB528();
          v70 = MEMORY[0x22AA5D380](v68, v69);
          v72 = v71;
        }

        else
        {
          swift_endAccess();

          v72 = 0xE300000000000000;
          v70 = 7104878;
        }

        v76 = v151;
        v77 = v65;
        v75 = v134;
        v78 = sub_224A33F74(v70, v72, &v167);

        *(v66 + 4) = v78;
        *(v66 + 12) = 2082;
        sub_224C086C4(&unk_281350E08, MEMORY[0x277CF99B8]);
        v79 = v76;
        v80 = v154;
        v81 = sub_224DAFD28();
        v83 = v82;
        v151 = *(v160 + 8);
        (v151)(v79, v80);
        v84 = sub_224A33F74(v81, v83, &v167);

        *(v66 + 14) = v84;
        *(v66 + 22) = 2082;
        v85 = sub_224DAF708();
        v87 = v86;
        v88 = v37;
        v73 = v80;
        sub_224A3311C(v88, &qword_27D6F5238, &qword_224DBB1E0);
        v89 = sub_224A33F74(v85, v87, &v167);

        *(v66 + 24) = v89;
        _os_log_impl(&dword_224A2F000, v77, v133, "Using color scheme(s): %{public}s for key: %{public}s, modifiers: %{public}s", v66, 0x20u);
        v90 = v132;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v90, -1, -1);
        MEMORY[0x22AA5EED0](v66, -1, -1);

        v91 = v152;
        v74 = v146;
        v152 = v155[1];
        (v152)(v91, v146);
        v52 = v153;
      }

      else
      {

        sub_224A3311C(v37, &qword_27D6F5238, &qword_224DBB1E0);
        v151 = *(v58 + 8);
        (v151)(v63, v64);
        v152 = v59[1];
        (v152)(v61, v57);
        v73 = v64;
        v74 = v57;
        v75 = v134;
      }

      swift_getKeyPath();
      sub_224A3796C(v166, v75, &qword_27D6F5238, &qword_224DBB1E0);
      v92 = v145(v75, 1, v52);
      v93 = v150;
      if (v92 == 1)
      {
        sub_224A3311C(v75, &qword_27D6F5238, &qword_224DBB1E0);
      }

      else
      {
        sub_224DAD0F8();
        (*(v156 + 8))(v75, v52);
      }

      v94 = v149;
      swift_beginAccess();
      sub_224DAE4B8();
      swift_endAccess();
      v95 = v148;
      sub_224A3796C(v166, v148, &qword_27D6F5238, &qword_224DBB1E0);
      if (v145(v95, 1, v52) == 1)
      {
        sub_224A3311C(v95, &qword_27D6F5238, &qword_224DBB1E0);
      }

      else
      {
        v96 = sub_224DACFE8();
        (*(v156 + 8))(v95, v52);
        if (v96)
        {
          v97 = v144;
          v136(v144, v162 + v135, v74);
          v98 = v143;
          v138(v143, KeyPath, v73);
          v99 = sub_224DAB228();
          v100 = sub_224DAF278();
          if (os_log_type_enabled(v99, v100))
          {
            v101 = v97;
            v102 = swift_slowAlloc();
            v103 = swift_slowAlloc();
            v168[0] = v103;
            *v102 = 136446210;
            sub_224C086C4(&unk_281350E08, MEMORY[0x277CF99B8]);
            v104 = sub_224DAFD28();
            v105 = v73;
            v107 = v106;
            (v151)(v98, v105);
            v108 = sub_224A33F74(v104, v107, v168);

            *(v102 + 4) = v108;
            __swift_destroy_boxed_opaque_existential_1(v103);
            MEMORY[0x22AA5EED0](v103, -1, -1);
            MEMORY[0x22AA5EED0](v102, -1, -1);

            v109 = v101;
            v110 = v146;
          }

          else
          {

            (v151)(v98, v73);
            v109 = v97;
            v110 = v74;
          }

          (v152)(v109, v110);
          KeyPath = swift_getKeyPath();
          v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB0, &qword_224DBCF60);
          v126 = *(sub_224DAB558() - 8);
          v127 = *(v126 + 72);
          v128 = (*(v126 + 80) + 32) & ~*(v126 + 80);
          *(swift_allocObject() + 16) = xmmword_224DB30F0;
          v168[0] = MEMORY[0x277D84F90];
          sub_224C086C4(&qword_281350ED8, MEMORY[0x277CDFB98]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB8, &qword_224DBA500);
          sub_224A33088(&qword_281350BB8, &qword_27D6F4CB8, &qword_224DBA500);
          sub_224DAF788();
          v129 = swift_allocObject();
          *(v129 + 16) = xmmword_224DB3100;
          sub_224DAB548();
          v168[0] = v129;
          sub_224DAF788();
          v125 = v164;
          swift_beginAccess();
          goto LABEL_29;
        }
      }

      v136(v93, v162 + v135, v74);
      v138(v94, KeyPath, v73);
      v111 = sub_224DAB228();
      v112 = sub_224DAF278();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v168[0] = v114;
        *v113 = 136446210;
        sub_224C086C4(&unk_281350E08, MEMORY[0x277CF99B8]);
        v115 = sub_224DAFD28();
        v116 = v73;
        v118 = v117;
        (v151)(v94, v116);
        v119 = sub_224A33F74(v115, v118, v168);

        *(v113 + 4) = v119;
        __swift_destroy_boxed_opaque_existential_1(v114);
        MEMORY[0x22AA5EED0](v114, -1, -1);
        MEMORY[0x22AA5EED0](v113, -1, -1);

        v120 = v93;
        v121 = v146;
      }

      else
      {

        (v151)(v94, v73);
        v120 = v93;
        v121 = v74;
      }

      (v152)(v120, v121);
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB0, &qword_224DBCF60);
      v122 = *(sub_224DAB558() - 8);
      v123 = *(v122 + 72);
      v124 = (*(v122 + 80) + 32) & ~*(v122 + 80);
      *(swift_allocObject() + 16) = xmmword_224DB3100;
      v168[0] = MEMORY[0x277D84F90];
      sub_224C086C4(&qword_281350ED8, MEMORY[0x277CDFB98]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB8, &qword_224DBA500);
      sub_224A33088(&qword_281350BB8, &qword_27D6F4CB8, &qword_224DBA500);
      sub_224DAF788();
      v125 = v164;
      swift_beginAccess();
LABEL_29:
      sub_224DAE4B8();
      swift_endAccess();

      (*(v158 + 8))(v157, v159);
      sub_224A3311C(v166, &qword_27D6F5238, &qword_224DBB1E0);
      v130 = v142;
      v131 = v161;
      (*(v165 + 16))(v142, v125, v161);
      (*(v165 + 56))(v130, 0, 1, v131);
      return (*(v165 + 8))(v125, v131);
    }
  }

  v54 = *(v165 + 56);
  v55 = v161;

  return v54(a2, 1, 1, v55);
}

uint64_t sub_224C05F9C(void *a1, uint64_t a2, uint64_t a3)
{
  v92 = sub_224DACB98();
  v90 = *(v92 - 8);
  v6 = *(v90 + 64);
  MEMORY[0x28223BE20](v92);
  v91 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_224DACB08();
  v87 = *(v88 - 8);
  v8 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v89 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_224DACB28();
  v84 = *(v85 - 8);
  v10 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v86 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_224DACC88();
  v93 = *(v94 - 8);
  v12 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v109 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_224DAC2B8();
  v112 = *(v115 - 8);
  v14 = *(v112 + 64);
  v15 = MEMORY[0x28223BE20](v115);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v83 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v101 = &v83 - v22;
  MEMORY[0x28223BE20](v21);
  v102 = (&v83 - v23);
  v24 = sub_224DAB258();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v32 = &v83 - v30;
  v100 = a3;
  v107 = a1;
  v108 = v29;
  v110 = v20;
  v114 = v28;
  v95 = v31;
  if (a2)
  {
    v83 = v17;

    v34 = sub_224A3DADC(v33);

    v35 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    result = sub_224DAD3C8();
    v37 = *(result + 16);
    v113 = v34;
    v106 = v37;
    if (v37)
    {
      v38 = 0;
      v103 = (v34 & 0xC000000000000001);
      v104 = (v112 + 16);
      if (v34 < 0)
      {
        v39 = v34;
      }

      else
      {
        v39 = v34 & 0xFFFFFFFFFFFFFF8;
      }

      v111 = v34 + 56;
      v97 = v39;
      *&v98 = v112 + 32;
      v96 = (v112 + 8);
      v99 = MEMORY[0x277D84F90];
      v28 = v114;
      v40 = v115;
      v41 = v102;
      v105 = result;
      while (1)
      {
        if (v38 >= *(result + 16))
        {
          __break(1u);
          return result;
        }

        v42 = (*(v112 + 80) + 32) & ~*(v112 + 80);
        v43 = *(v112 + 72);
        (*(v112 + 16))(v41, result + v42 + v43 * v38, v40);
        v44 = sub_224DAC2A8();
        v45 = [v44 extensionIdentity];

        if (v103)
        {
          v46 = v45;
          v47 = sub_224DAF888();

          if (v47)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v53 = v113;
          if (*(v113 + 16))
          {
            sub_224DAF538();
            v54 = *(v53 + 40);
            v55 = sub_224DAF698();
            v56 = -1 << *(v53 + 32);
            v57 = v55 & ~v56;
            if ((*(v111 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
            {
              v58 = ~v56;
              while (1)
              {
                v59 = *(*(v53 + 48) + 8 * v57);
                v60 = sub_224DAF6A8();

                if (v60)
                {
                  break;
                }

                v57 = (v57 + 1) & v58;
                v53 = v113;
                if (((*(v111 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
                {
                  goto LABEL_7;
                }
              }

              a3 = v100;
              v20 = v110;
              v41 = v102;
LABEL_13:
              v48 = *v98;
              (*v98)(v101, v41, v115);
              v49 = v99;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v116 = v49;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_224ADA520(0, *(v49 + 16) + 1, 1);
                v49 = v116;
              }

              v52 = *(v49 + 16);
              v51 = *(v49 + 24);
              if (v52 >= v51 >> 1)
              {
                sub_224ADA520(v51 > 1, v52 + 1, 1);
                v49 = v116;
              }

              *(v49 + 16) = v52 + 1;
              v99 = v49;
              v40 = v115;
              v48(v49 + v42 + v52 * v43, v101, v115);
              v28 = v114;
              v41 = v102;
              goto LABEL_9;
            }
          }

LABEL_7:

          a3 = v100;
          v20 = v110;
          v28 = v114;
          v41 = v102;
        }

        v40 = v115;
        (*v96)(v41, v115);
LABEL_9:
        ++v38;
        result = v105;
        if (v38 == v106)
        {
          goto LABEL_29;
        }
      }
    }

    v99 = MEMORY[0x277D84F90];
    v28 = v114;
    v40 = v115;
LABEL_29:

    v17 = v83;
    v66 = v99;
  }

  else
  {
    (*(v31 + 16))(&v83 - v30, a3 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger);
    v61 = sub_224DAB228();
    v62 = sub_224DAF2A8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_224A2F000, v61, v62, "Locale change detected - reloading all controls", v63, 2u);
      v64 = v63;
      v28 = v114;
      MEMORY[0x22AA5EED0](v64, -1, -1);
    }

    (*(v95 + 8))(v32, v108);
    v65 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v66 = sub_224DAD3C8();
    v40 = v115;
  }

  (*(v84 + 104))(v86, *MEMORY[0x277CF9B50], v85);
  (*(v87 + 104))(v89, *MEMORY[0x277CF9B40], v88);
  (*(v90 + 104))(v91, *MEMORY[0x277CF9BA8], v92);
  sub_224DACC48();
  sub_224DACC38();
  v68 = *(v66 + 16);
  if (v68)
  {
    v111 = OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger;
    v106 = *(v112 + 16);
    v69 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v99 = v66;
    v70 = v66 + v69;
    v105 = *(v112 + 72);
    v104 = (v95 + 16);
    v112 += 16;
    v102 = (v95 + 8);
    *&v67 = 138543362;
    v98 = v67;
    v103 = (v112 - 8);
    v101 = ((v112 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v71 = v108;
    do
    {
      v113 = v68;
      v74 = v106;
      v106(v20, v70, v40);
      (*v104)(v28, a3 + v111, v71);
      v74(v17, v20, v40);
      v75 = sub_224DAB228();
      v76 = v17;
      v77 = sub_224DAF2A8();
      if (os_log_type_enabled(v75, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *v78 = v98;
        v80 = sub_224DAC2A8();
        v81 = [v80 extensionIdentity];

        v72 = *v103;
        (*v103)(v76, v115);
        *(v78 + 4) = v81;
        *v79 = v81;
        a3 = v100;
        _os_log_impl(&dword_224A2F000, v75, v77, "Locale change detected - reloading controls for %{public}@", v78, 0xCu);
        sub_224A3311C(v79, &unk_27D6F69F0, &unk_224DB3900);
        v82 = v79;
        v28 = v114;
        MEMORY[0x22AA5EED0](v82, -1, -1);
        MEMORY[0x22AA5EED0](v78, -1, -1);
      }

      else
      {

        v72 = *v103;
        (*v103)(v76, v40);
      }

      v17 = v76;
      v71 = v108;
      (*v102)(v28, v108);
      v73 = v107[4];
      __swift_project_boxed_opaque_existential_1(v107, v107[3]);
      v20 = v110;
      v28 = v114;
      sub_224DAD3E8();
      v40 = v115;
      v72(v20, v115);
      v70 += v105;
      v68 = v113 - 1;
    }

    while (v113 != 1);
  }

  return (*(v93 + 8))(v109, v94);
}

uint64_t sub_224C06B14(uint64_t a1)
{
  v40 = sub_224DAC2B8();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v40);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB258();
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAB8C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v1 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService__queue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v17 = v16;
  LOBYTE(v16) = sub_224DAB8F8();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    type metadata accessor for EmptyKey();
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0xE000000000000000;
    v20 = *(v1 + 176);
    v43 = v19;
    sub_224DAD288();
    v21 = *(v41 + 16);
    v39 = v1;
    v21(v10, v1 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger, v42);
    v22 = *(v3 + 16);
    v38 = a1;
    v23 = v40;
    v22(v6, a1, v40);
    v24 = sub_224DAB228();
    v25 = sub_224DAF278();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37 = v20;
      v28 = v27;
      v43 = v27;
      *v26 = 136446210;
      sub_224C086C4(&unk_281350E08, MEMORY[0x277CF99B8]);
      v29 = sub_224DAFD28();
      v30 = v23;
      v32 = v31;
      (*(v3 + 8))(v6, v30);
      v33 = sub_224A33F74(v29, v32, &v43);

      *(v26 + 4) = v33;
      _os_log_impl(&dword_224A2F000, v24, v25, "making preview control entry if needed for %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x22AA5EED0](v28, -1, -1);
      MEMORY[0x22AA5EED0](v26, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v23);
    }

    v34 = (*(v41 + 8))(v10, v42);
    LOBYTE(v43) = 0;
    MEMORY[0x28223BE20](v34);
    v36 = v38;
    v35 = v39;
    *(&v37 - 4) = v38;
    *(&v37 - 3) = v19;
    *(&v37 - 2) = v35;
    *(&v37 - 1) = &v43;
    sub_224DAC128();
    if (v43 == 1)
    {
      sub_224C06FA4(v36);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_224C06FA4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DA9908();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v15 = sub_224DAC2B8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v38 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v36 - v20;
  v22 = sub_224DAC2A8();
  v23 = [v22 extensionIdentity];

  v24 = &v23[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v25 = *(v24 + 1);

  if (v25)
  {
    v37 = v2;

    (*(v16 + 16))(v21, a1, v15);
    sub_224DAC288();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v27 = *(v26 - 8);
    v28 = (*(v27 + 48))(v14, 1, v26);
    sub_224A3311C(v14, &qword_27D6F56C0, &unk_224DB3580);
    if (v28 == 1)
    {
      sub_224DAC2A8();
      if (qword_27D6F2C58 != -1)
      {
        swift_once();
      }

      v29 = __swift_project_value_buffer(v26, qword_27D6F7180);
      (*(v27 + 16))(v12, v29, v26);
      (*(v27 + 56))(v12, 0, 1, v26);
      v30 = v38;
      sub_224DAC298();
      (*(v16 + 8))(v21, v15);
      (*(v16 + 32))(v21, v30, v15);
    }

    sub_224DA98F8();
    sub_224DA9898();
    (*(v39 + 8))(v7, v40);
    v31 = sub_224DAC2A8();
    v32 = objc_allocWithZone(MEMORY[0x277CFA200]);
    v33 = sub_224DAEDE8();

    v34 = [v32 initWithUniqueIdentifier:v33 controlIdentity:v31 location:0];

    v35 = *__swift_project_boxed_opaque_existential_1((v37 + 56), *(v37 + 80));
    sub_224AB2B00(v21, v34);

    (*(v16 + 8))(v21, v15);
  }
}

uint64_t sub_224C07424(void *a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v103 = a5;
  v104 = a4;
  v100 = sub_224DACB98();
  v98 = *(v100 - 8);
  v8 = *(v98 + 64);
  MEMORY[0x28223BE20](v100);
  v99 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_224DACB08();
  v95 = *(v96 - 8);
  v10 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v97 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_224DACB28();
  v92 = *(v93 - 8);
  v12 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v94 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_224DACC88();
  v101 = *(v102 - 8);
  v14 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v111 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v91 = &v81 - v18;
  v19 = sub_224DAE918();
  v109 = *(v19 - 8);
  v110 = v19;
  v20 = *(v109 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v81 - v24;
  v108 = sub_224DAC2B8();
  v105 = *(v108 - 8);
  v26 = *(v105 + 64);
  v27 = MEMORY[0x28223BE20](v108);
  v29 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v89 = &v81 - v30;
  v90 = sub_224DAB258();
  v107 = *(v90 - 8);
  v31 = v107[8];
  MEMORY[0x28223BE20](v90);
  v106 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v115[0] = a3;
  sub_224DAD3D8();
  if (v115[7])
  {
  }

  v84 = v29;
  v85 = v23;
  v87 = v25;
  v86 = a1;
  v35 = v104;
  v36 = v90;
  (v107[2])(v106, v104 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger, v90);
  v37 = *(v105 + 16);
  v38 = v89;
  v88 = a2;
  v39 = v108;
  v83 = v105 + 16;
  v82 = v37;
  v37(v89, a2, v108);

  v40 = sub_224DAB228();
  v41 = sub_224DAF2A8();

  v42 = os_log_type_enabled(v40, v41);
  v43 = a3;
  v44 = v39;
  v81 = v43;
  if (v42)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v115[0] = v46;
    *v45 = 136446466;
    sub_224C086C4(&unk_281350E08, MEMORY[0x277CF99B8]);
    v47 = v41;
    v48 = sub_224DAFD28();
    v49 = v38;
    v51 = v50;
    (*(v105 + 8))(v49, v44);
    v52 = sub_224A33F74(v48, v51, v115);

    *(v45 + 4) = v52;
    *(v45 + 12) = 2082;
    v54 = *(v43 + 16);
    v53 = *(v43 + 24);

    v55 = sub_224A33F74(v54, v53, v115);

    *(v45 + 14) = v55;
    _os_log_impl(&dword_224A2F000, v40, v47, "%{public}s:%{public}s Creating preview control entry", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v46, -1, -1);
    v56 = v45;
    v35 = v104;
    MEMORY[0x22AA5EED0](v56, -1, -1);
  }

  else
  {

    (*(v105 + 8))(v38, v39);
  }

  (v107[1])(v106, v36);
  v57 = v86;
  v58 = v91;
  v59 = sub_224DAC2A8();
  v60 = [v59 extensionIdentity];

  sub_224A3317C((v35 + 28), v115);
  __swift_project_boxed_opaque_existential_1(v115, v115[3]);
  v107 = v60;
  v61 = v112;
  sub_224DADBE8();
  v112 = v61;
  v62 = v97;
  if (v61)
  {

    __swift_destroy_boxed_opaque_existential_1(v115);
    v64 = v109;
    v63 = v110;
    (*(v109 + 56))(v58, 1, 1, v110);
    v112 = 0;
    v65 = v87;
    v66 = v98;
    goto LABEL_10;
  }

  v64 = v109;
  v63 = v110;
  (*(v109 + 56))(v58, 0, 1, v110);
  __swift_destroy_boxed_opaque_existential_1(v115);
  v67 = (*(v64 + 48))(v58, 1, v63);
  v66 = v98;
  if (v67 == 1)
  {
    v65 = v87;
LABEL_10:
    (*(v64 + 104))(v65, *MEMORY[0x277CE3D50], v63);
    if ((*(v64 + 48))(v58, 1, v63) != 1)
    {
      sub_224A3311C(v58, &qword_27D6F46D8, &unk_224DB7630);
    }

    goto LABEL_13;
  }

  (*(v64 + 32))(v87, v58, v63);
LABEL_13:
  v68 = v100;
  v69 = v99;
  (*(v92 + 104))(v94, *MEMORY[0x277CF9B50], v93);
  (*(v95 + 104))(v62, *MEMORY[0x277CF9B40], v96);
  (*(v66 + 104))(v69, *MEMORY[0x277CF9BF0], v68);
  sub_224DACC48();
  sub_224DACC38();
  v70 = v35[16];
  __swift_project_boxed_opaque_existential_1(v35 + 12, v35[15]);
  v71 = v88;
  v72 = sub_224DAC2A8();
  v73 = [v72 extensionIdentity];

  sub_224DADA58();
  sub_224DABF48();
  v82(v84, v71, v108);
  sub_224A3317C(v115, &v114);
  v75 = v109;
  v74 = v110;
  v76 = v87;
  (*(v109 + 16))(v85, v87, v110);
  v77 = sub_224DABEF8();
  v78 = v57[4];
  __swift_project_boxed_opaque_existential_1(v57, v57[3]);
  v113 = v77;
  v114 = v81;
  sub_224DAD3B8();
  v79 = v57[4];
  __swift_project_boxed_opaque_existential_1(v57, v57[3]);
  v80 = v111;
  sub_224DAD3E8();

  __swift_destroy_boxed_opaque_existential_1(v115);
  (*(v101 + 8))(v80, v102);
  (*(v75 + 8))(v76, v74);

  *v103 = 1;
  return result;
}

uint64_t sub_224C07F90@<X0>(void *a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v24 = a1;
  v25 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v22 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  v18 = *(v4 + 56);
  v18(&v22 - v16, 1, 1, v3);
  sub_224A3796C(v23, v15, &qword_27D6F56C0, &unk_224DB3580);
  if ((*(v4 + 48))(v15, 1, v3) == 1)
  {
    sub_224A3311C(v15, &qword_27D6F56C0, &unk_224DB3580);
  }

  else
  {
    v23 = *(v4 + 32);
    v23(v7, v15, v3);
    sub_224DAA1F8();
    v19 = sub_224DAA048();

    if (v19)
    {
      sub_224A3311C(v17, &qword_27D6F56C0, &unk_224DB3580);
      v23(v17, v7, v3);
      v18(v17, 0, 1, v3);
    }

    else
    {
      (*(v4 + 8))(v7, v3);
    }
  }

  sub_224A3796C(v17, v12, &qword_27D6F56C0, &unk_224DB3580);
  v20 = v24;
  sub_224DAC298();
  return sub_224A3311C(v17, &qword_27D6F56C0, &unk_224DB3580);
}

uint64_t sub_224C082D4()
{
  v1 = *(*v0 + 264);

  v2 = sub_224DADDD8();

  return v2;
}

uint64_t sub_224C08334(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17[-v5];
  v7 = sub_224DAC2B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *v1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  sub_224C07F90(a1, v6, v11);
  sub_224A3311C(v6, &qword_27D6F56C0, &unk_224DB3580);
  v14 = *(v12 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService__queue);
  v18 = v12;
  v19 = v11;
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3698, &qword_224DB3C70);
  sub_224DAF3E8();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_224C0852C()
{
  v2 = **v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5230, &unk_224DBB1D0);
  return sub_224DAEE28();
}

uint64_t sub_224C085B8(uint64_t a1)
{
  result = sub_224C086C4(&qword_281357D60, type metadata accessor for PreviewControlService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224C08610()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_224C06B14(v1);
}

uint64_t sub_224C08660(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(a1 + 48);

  v6 = sub_224C08CD0(v5, v2, v3);

  return v6;
}

uint64_t sub_224C086C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_224C0870C(uint64_t a1)
{
  v3 = *(sub_224DAC2B8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_224C03704(a1, v4, v5);
}

uint64_t objectdestroy_61Tm()
{
  v1 = sub_224DAC2B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224C08844()
{
  v1 = *(sub_224DAC2B8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_224C03D18(v2, v3);
}

unint64_t *sub_224C088D4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_224C08A68(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_224C08978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3388, &unk_224DB35A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224C089E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5238, &qword_224DBB1E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_224C08A68(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a2;
  v37 = a4;
  v38 = a5;
  v30 = a1;
  v36 = sub_224DA9688();
  v6 = *(*(v36 - 8) + 64);
  result = MEMORY[0x28223BE20](v36);
  v34 = v8;
  v35 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v39 = a3;
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
  v33 = v8 + 16;
  v31 = 0;
  v32 = v8 + 8;
  v18 = v35;
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v44 = (v16 - 1) & v16;
LABEL_11:
    v22 = v34;
    v23 = v19 | (v10 << 6);
    v24 = v36;
    (*(v34 + 16))(v18, *(v39 + 48) + *(v34 + 72) * v23, v36);
    v42 = sub_224DA95A8();
    v43 = v25;
    v40 = v37;
    v41 = v38;
    sub_224AFC154();
    v26 = sub_224DAF748();

    result = (*(v22 + 8))(v18, v24);
    v16 = v44;
    if (v26)
    {
      *(v30 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_15:
        v28 = v39;

        return sub_224B04F30(v30, v29, v31, v28);
      }
    }
  }

  v20 = v10;
  while (1)
  {
    v10 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_15;
    }

    v21 = *(v12 + 8 * v10);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v44 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224C08CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a2;
  v49 = *MEMORY[0x277D85DE8];
  v40 = sub_224DA9688();
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v10 = v9 & 0x3F;
  v34 = ((1 << v9) + 63) >> 6;
  v11 = 8 * v34;
  v43 = a3;

  if (v10 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v33[0] = v33;
    v33[1] = v4;
    MEMORY[0x28223BE20](v12);
    v35 = v33 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v35, v11);
    v4 = 0;
    v42 = a1;
    v14 = *(a1 + 56);
    a1 += 56;
    v13 = v14;
    v15 = 1 << *(a1 - 24);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v13;
    v18 = (v15 + 63) >> 6;
    v38 = v7 + 16;
    v36 = 0;
    v37 = v7 + 8;
    v19 = v40;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v44 = (v17 - 1) & v17;
LABEL_12:
      v23 = v20 | (v4 << 6);
      v24 = v39;
      (*(v7 + 16))(v39, *(v42 + 48) + *(v7 + 72) * v23, v19);
      v47 = sub_224DA95A8();
      v48 = v25;
      v45 = v41;
      v46 = v43;
      sub_224AFC154();
      v11 = sub_224DAF748();

      (*(v7 + 8))(v24, v19);
      v17 = v44;
      if (v11)
      {
        *&v35[(v23 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v23;
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
LABEL_16:
          v27 = sub_224B04F30(v35, v34, v36, v42);

          goto LABEL_17;
        }
      }
    }

    v21 = v4;
    while (1)
    {
      v4 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v4 >= v18)
      {
        goto LABEL_16;
      }

      v22 = *(a1 + 8 * v4);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v44 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v30 = swift_slowAlloc();
  v31 = a1;
  v32 = v43;

  v27 = sub_224C088D4(v30, v34, v31, v41, v32);

  MEMORY[0x22AA5EED0](v30, -1, -1);

LABEL_17:
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t sub_224C09088(uint64_t a1)
{
  v2 = sub_224C15F9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224C090C4(uint64_t a1)
{
  v2 = sub_224C15F9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224C09100(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5298, &qword_224DBB5D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224C15F9C();
  sub_224DAFF08();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_224C09214()
{
  v0 = sub_224DAB0F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DAAB88();
  __swift_allocate_value_buffer(v5, qword_27D6F5248);
  __swift_project_value_buffer(v5, qword_27D6F5248);
  if (qword_2813592A8 != -1)
  {
    swift_once();
  }

  v6 = qword_2813652C8;
  if (*(qword_2813652C8 + 16))
  {

    v7 = sub_224B0B668(0);
    if (v8)
    {
      (*(v1 + 16))(v4, *(v6 + 56) + *(v1 + 72) * v7, v0);

      sub_224DAB0C8();
      return (*(v1 + 8))(v4, v0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224C093A0()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  sub_224C09558();
  v6 = sub_224DAF128();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v0;
  v8[5] = v1;

  sub_224D8E744(0, 0, v5, &unk_224DBB440, v8);

  v7(v5, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v0;
  v9[5] = v1;

  sub_224D8E744(0, 0, v5, &unk_224DBB450, v9);
}

uint64_t sub_224C09558()
{
  v1 = v0;
  v20 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5260, &qword_224DBB468);
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v19);
  v9 = &v19 - v8;
  v10 = *__swift_project_boxed_opaque_existential_1(v0 + 11, v0[14]);
  v21 = sub_224BCE2D4();
  v22 = v1[3];
  v11 = v22;
  v12 = sub_224DAF358();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5800, &unk_224DBB470);
  sub_224AC319C();
  sub_224A33088(&qword_2813510E0, &unk_27D6F5800, &unk_224DBB470);
  sub_224C15EDC(&qword_281350A80, sub_224AC319C);
  sub_224DAB448();
  sub_224A3311C(v5, &qword_27D6F5090, &qword_224DB5C30);

  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v16 = v20;
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  sub_224A33088(&qword_281351280, &qword_27D6F5260, &qword_224DBB468);
  v17 = v19;
  sub_224DAB488();

  (*(v6 + 8))(v9, v17);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();
}

uint64_t sub_224C098C4()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  v2 = *(v0 + 128);

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  __swift_destroy_boxed_opaque_existential_1((v0 + 224));
  v3 = *(v0 + 264);

  v4 = *(v0 + 272);

  return v0;
}

uint64_t sub_224C0992C()
{
  sub_224C098C4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord()
{
  result = qword_2813533B0;
  if (!qword_2813533B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224C099F8()
{
  result = sub_224DAB018();
  if (v1 <= 0x3F)
  {
    result = sub_224DAD9C8();
    if (v2 <= 0x3F)
    {
      result = sub_224DA9878();
      if (v3 <= 0x3F)
      {
        result = sub_224DAAC58();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_224C09AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_224DAB0B8();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = sub_224DADE68();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  v11 = *(*(sub_224DAAF28() - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v12 = sub_224DAAF48();
  v4[10] = v12;
  v13 = *(v12 - 8);
  v4[11] = v13;
  v14 = *(v13 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v15 = sub_224DA9908();
  v4[15] = v15;
  v16 = *(v15 - 8);
  v4[16] = v16;
  v17 = *(v16 + 64) + 15;
  v4[17] = swift_task_alloc();
  v18 = sub_224DAD9C8();
  v4[18] = v18;
  v19 = *(v18 - 8);
  v4[19] = v19;
  v20 = *(v19 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B60, &qword_224DBB460);
  v4[24] = v22;
  v23 = *(v22 - 8);
  v4[25] = v23;
  v24 = *(v23 + 64) + 15;
  v4[26] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B68, &unk_224DB9C40);
  v4[27] = v25;
  v26 = *(v25 - 8);
  v4[28] = v26;
  v27 = *(v26 + 64) + 15;
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C09E40, 0, 0);
}

uint64_t sub_224C09E40()
{
  v1 = *(v0 + 232);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 192);
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 136), *(*(v0 + 16) + 160));
  v5 = off_283831820;
  type metadata accessor for RemoteActivitySubscriptionCache();
  v5();
  sub_224DAF158();
  (*(v3 + 8))(v2, v4);
  *(v0 + 256) = *MEMORY[0x277D46828];
  *(v0 + 240) = 0;
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  *(v0 + 248) = v7;
  *v7 = v0;
  v7[1] = sub_224C09F88;
  v8 = *(v0 + 232);
  v9 = *(v0 + 216);
  v10 = *(v0 + 184);

  return MEMORY[0x2822003E8](v10, 0, 0, v9);
}

uint64_t sub_224C09F88()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224C0A084, 0, 0);
}

uint64_t sub_224C0A084()
{
  v145 = v0;
  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[19];
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    v5 = v0[26];
    v7 = v0[21];
    v6 = v0[22];
    v8 = v0[20];
    v9 = v0[17];
    v11 = v0[13];
    v10 = v0[14];
    v12 = v0[12];
    v133 = v0[9];
    v137 = v0[8];
    v141 = v0[5];
    (*(v0[28] + 8))(v0[29], v0[27]);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[22];
    v16 = v0[17];
    v134 = v0[15];
    v138 = v0[16];
    v17 = v0[2];
    (*(v3 + 32))(v0[21], v1, v2);
    v142 = v0;
    v19 = v17[20];
    v18 = v17[21];
    __swift_project_boxed_opaque_existential_1(v17 + 17, v19);
    sub_224DAD988();
    v20 = v18;
    v21 = v142;
    sub_224D2F410(v16, v19, v20, v15);
    v22 = *(v138 + 8);
    v22(v16, v134);
    v23 = v4(v15, 1, v2);
    v24 = v142[21];
    v25 = v142[22];
    if (v23 == 1)
    {
      v26 = v22;
      v28 = v142[16];
      v27 = v142[17];
      v29 = v142[15];
      v30 = v142[9];
      v128 = v142[14];
      sub_224A3311C(v25, &qword_27D6F3BD8, &qword_224DB9C20);
      sub_224DAD988();
      sub_224DA9898();
      v135 = v26;
      v26(v27, v29);
      (*(v28 + 56))(v30, 1, 1, v29);
      sub_224DAAEE8();
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v32 = v142[20];
      v31 = v142[21];
      v34 = v142[18];
      v33 = v142[19];
      v36 = v142[13];
      v35 = v142[14];
      v37 = v142[10];
      v38 = v142[11];
      v39 = sub_224DAB258();
      __swift_project_value_buffer(v39, qword_281365120);
      (*(v33 + 16))(v32, v31, v34);
      v40 = v35;
      v41 = *(v38 + 16);
      v41(v36, v40, v37);
      v42 = sub_224DAB228();
      v129 = sub_224DAF2A8();
      v43 = os_log_type_enabled(v42, v129);
      v45 = v142[19];
      v44 = v142[20];
      v46 = v142[18];
      v47 = v142[13];
      v49 = v142[10];
      v48 = v142[11];
      v120 = v41;
      if (v43)
      {
        v50 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v144[0] = v125;
        *v50 = 136446466;
        sub_224C15EDC(&qword_27D6F4B70, MEMORY[0x277CF9D80]);
        v51 = sub_224DAFD28();
        v52 = v42;
        v54 = v53;
        v121 = *(v45 + 8);
        v121(v44, v46);
        v55 = sub_224A33F74(v51, v54, v144);

        *(v50 + 4) = v55;
        *(v50 + 12) = 2082;
        sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790]);
        v56 = sub_224DAFD28();
        v58 = v57;
        v122 = *(v48 + 8);
        v122(v47, v49);
        v59 = sub_224A33F74(v56, v58, v144);

        *(v50 + 14) = v59;
        _os_log_impl(&dword_224A2F000, v52, v129, "Subscription %{public}s deleted; removing record %{public}s and budgets", v50, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v125, -1, -1);
        MEMORY[0x22AA5EED0](v50, -1, -1);
      }

      else
      {

        v122 = *(v48 + 8);
        v122(v47, v49);
        v121 = *(v45 + 8);
        v121(v44, v46);
      }

      v61 = v142;
      v62 = *(v142[2] + 16);

      v63 = sub_224DADE58();
      v64 = *(v63 + 16);
      if (v64)
      {
        v65 = v142[7];
        v66 = v63 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
        v123 = *(v65 + 16);
        v126 = *(v65 + 72);
        v130 = v62;
        do
        {
          v67 = v61[21];
          v68 = v61[17];
          v69 = v61[15];
          v70 = v61[7];
          v71 = v61[8];
          v72 = v142[6];
          v123(v71, v66, v72);
          sub_224DAD988();
          sub_224DADB58();
          v135(v68, v69);
          v73 = *(v130 + 16);
          sub_224DADED8();

          v74 = v72;
          v61 = v142;
          (*(v70 + 8))(v71, v74);
          v66 += v126;
          --v64;
        }

        while (v64);
      }

      v131 = *(v61 + 64);
      v75 = v61[14];
      v77 = v61[10];
      v76 = v61[11];
      v79 = v61[4];
      v78 = v61[5];
      v80 = v61[2];
      v81 = v61[3];
      v21 = v61;
      v136 = v80[10];
      v139 = v61[30];
      __swift_project_boxed_opaque_existential_1(v80 + 4, v80[7]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
      v82 = *(v76 + 72);
      v83 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_224DB3100;
      v120(v84 + v83, v75, v77);
      (*(v79 + 104))(v78, v131, v81);
      v85 = v139;
      sub_224DAABF8();
      if (v139)
      {
        v86 = v61[14];
        v87 = v61[12];
        v88 = v61[10];
        (*(v61[4] + 8))(v61[5], v61[3]);

        v120(v87, v86, v88);
        v89 = v139;
        v90 = sub_224DAB228();
        v91 = sub_224DAF288();

        v92 = os_log_type_enabled(v90, v91);
        v93 = v21[21];
        v95 = v21[18];
        v94 = v21[19];
        v140 = v21[14];
        v97 = v21[11];
        v96 = v21[12];
        v98 = v21[10];
        if (v92)
        {
          v132 = v21[18];
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v144[0] = v124;
          *v99 = 136446466;
          sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790]);
          v127 = v93;
          v101 = sub_224DAFD28();
          v103 = v102;
          v122(v96, v98);
          v104 = sub_224A33F74(v101, v103, v144);

          *(v99 + 4) = v104;
          *(v99 + 12) = 2114;
          v105 = v85;
          v106 = _swift_stdlib_bridgeErrorToNSError();
          *(v99 + 14) = v106;
          *v100 = v106;
          _os_log_impl(&dword_224A2F000, v90, v91, "Failed to delete activity archive record %{public}s: %{public}@", v99, 0x16u);
          sub_224A3311C(v100, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v100, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v124);
          MEMORY[0x22AA5EED0](v124, -1, -1);
          MEMORY[0x22AA5EED0](v99, -1, -1);

          v122(v140, v98);
          v121(v127, v132);
        }

        else
        {

          v122(v96, v98);
          v122(v140, v98);
          v121(v93, v95);
        }

        v60 = 0;
        v21 = v142;
      }

      else
      {
        v143 = v61[21];
        v107 = v61[18];
        v108 = v61[19];
        v109 = v61[14];
        v110 = v61[10];
        v111 = v61[11];
        v113 = v21[4];
        v112 = v21[5];
        v114 = v21[3];

        (*(v113 + 8))(v112, v114);
        v122(v109, v110);
        v121(v143, v107);
        v60 = 0;
      }
    }

    else
    {
      (*(v142[19] + 8))(v142[21], v142[18]);
      sub_224A3311C(v25, &qword_27D6F3BD8, &qword_224DB9C20);
      v60 = v142[30];
    }

    v21[30] = v60;
    v115 = *(MEMORY[0x277D85798] + 4);
    v116 = swift_task_alloc();
    v21[31] = v116;
    *v116 = v21;
    v116[1] = sub_224C09F88;
    v117 = v21[29];
    v118 = v21[27];
    v119 = v21[23];

    return MEMORY[0x2822003E8](v119, 0, 0, v118);
  }
}

uint64_t sub_224C0ABDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_224ACFF60;

  return sub_224C09AAC(a1, v4, v5, v7);
}

uint64_t sub_224C0AC9C(uint64_t a1)
{
  v2 = sub_224DAAC58();
  v612 = *(v2 - 8);
  v3 = *(v612 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v453 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v535 = sub_224DAB0B8();
  v596 = *(v535 - 8);
  v6 = *(v596 + 64);
  v7 = MEMORY[0x28223BE20](v535);
  v9 = &v453 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v453 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C08, &qword_224DB48D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v530 = &v453 - v14;
  v531 = type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord();
  v552 = *(v531 - 8);
  v15 = *(v552 + 64);
  v16 = MEMORY[0x28223BE20](v531);
  v515 = &v453 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v509 = &v453 - v19;
  MEMORY[0x28223BE20](v18);
  v508 = &v453 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4668, &unk_224DB75E0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v529 = &v453 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v528 = &v453 - v25;
  v527 = sub_224DAEC58();
  v595 = *(v527 - 8);
  v26 = *(v595 + 64);
  v27 = MEMORY[0x28223BE20](v527);
  v514 = &v453 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v516 = &v453 - v29;
  v526 = sub_224DACC88();
  v590 = *(v526 - 8);
  v30 = v590[8];
  MEMORY[0x28223BE20](v526);
  v525 = &v453 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v524 = sub_224DACB98();
  v586 = *(v524 - 8);
  v32 = v586[8];
  MEMORY[0x28223BE20](v524);
  v523 = &v453 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C90, &qword_224DBA440);
  v585 = *(v34 - 8);
  v35 = v585[8];
  v36 = MEMORY[0x28223BE20](v34);
  v534 = &v453 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v512 = &v453 - v39;
  MEMORY[0x28223BE20](v38);
  v522 = &v453 - v40;
  v521 = sub_224DAAFC8();
  v584 = *(v521 - 8);
  v41 = *(v584 + 8);
  MEMORY[0x28223BE20](v521);
  v520 = &v453 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_224DAAF28();
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v536 = &v453 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v539 = sub_224DAAF48();
  v583 = *(v539 - 8);
  isa = v583[8].isa;
  v47 = MEMORY[0x28223BE20](v539);
  v511 = &v453 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v537 = &v453 - v50;
  MEMORY[0x28223BE20](v49);
  v540 = &v453 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v53 = *(*(v52 - 8) + 64);
  v54 = MEMORY[0x28223BE20](v52 - 8);
  v519 = &v453 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v544 = &v453 - v56;
  v545 = sub_224DA9878();
  v550 = *(v545 - 8);
  v57 = *(v550 + 8);
  v58 = MEMORY[0x28223BE20](v545);
  v513 = &v453 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v58);
  v532 = &v453 - v61;
  MEMORY[0x28223BE20](v60);
  v543 = &v453 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v64 = *(*(v63 - 8) + 64);
  v65 = MEMORY[0x28223BE20](v63 - 8);
  v518 = &v453 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v548 = &v453 - v67;
  v549 = sub_224DA9688();
  v611 = *(v549 - 8);
  v68 = *(v611 + 64);
  MEMORY[0x28223BE20](v549);
  v546 = &v453 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v533 = sub_224DAB018();
  v551 = *(v533 - 8);
  v70 = *(v551 + 64);
  MEMORY[0x28223BE20](v533);
  v538 = &v453 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v568 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v608 = *(v568 - 8);
  v72 = *(v608 + 64);
  v73 = MEMORY[0x28223BE20](v568);
  v553 = &v453 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v565 = &v453 - v75;
  v564 = sub_224DAC918();
  v605 = *(v564 - 8);
  v76 = *(v605 + 64);
  v77 = MEMORY[0x28223BE20](v564);
  v563 = &v453 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77);
  v571 = &v453 - v79;
  v580 = sub_224DAE7A8();
  v602 = *(v580 - 8);
  v80 = *(v602 + 64);
  v81 = MEMORY[0x28223BE20](v580);
  v562 = &v453 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v81);
  v576 = &v453 - v83;
  v579 = sub_224DAEB68();
  v591 = *(v579 - 8);
  v84 = v591[8];
  v85 = MEMORY[0x28223BE20](v579);
  v561 = &v453 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v85);
  v578 = &v453 - v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v89 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88 - 8);
  v589 = &v453 - v90;
  v607 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v587 = *(v607 - 8);
  v91 = *(v587 + 64);
  v92 = MEMORY[0x28223BE20](v607);
  v560 = &v453 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = MEMORY[0x28223BE20](v92);
  v575 = &v453 - v95;
  MEMORY[0x28223BE20](v94);
  v597 = &v453 - v96;
  v610 = sub_224DAD9C8();
  v600 = *(v610 - 8);
  v97 = *(v600 + 64);
  v98 = MEMORY[0x28223BE20](v610);
  v588 = &v453 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = MEMORY[0x28223BE20](v98);
  v517 = &v453 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v510 = &v453 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v547 = &v453 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v614 = &v453 - v107;
  MEMORY[0x28223BE20](v106);
  v592 = &v453 - v108;
  v613 = sub_224DA9908();
  v601 = *(v613 - 8);
  v109 = *(v601 + 64);
  v110 = MEMORY[0x28223BE20](v613);
  v542 = &v453 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = MEMORY[0x28223BE20](v110);
  v581 = &v453 - v113;
  MEMORY[0x28223BE20](v112);
  v603 = &v453 - v114;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C60, &unk_224DBA3D0);
  v116 = *(*(v115 - 8) + 64);
  v117 = MEMORY[0x28223BE20](v115 - 8);
  v599 = &v453 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v117);
  v609 = &v453 - v119;
  v569 = sub_224DABCC8();
  v120 = *(v569 - 8);
  v121 = *(v120 + 64);
  v122 = MEMORY[0x28223BE20](v569);
  v570 = &v453 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = MEMORY[0x28223BE20](v122);
  v582 = &v453 - v125;
  MEMORY[0x28223BE20](v124);
  v127 = &v453 - v126;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v129 = result;
  v491 = v11;
  v473 = v9;
  v474 = v5;
  v487 = v2;
  v500 = v34;
  v489 = a1;
  MEMORY[0x22AA5BB00](v34);
  v130 = v129[20];
  v131 = v129[21];
  __swift_project_boxed_opaque_existential_1(v129 + 17, v130);
  v604 = v127;
  v132 = sub_224DABC78();
  v134 = sub_224D2F628(v132, v133, v130, v131);

  v135 = *(v134 + 64);
  v598 = v134 + 64;
  v593 = v134;
  v136 = 1 << *(v134 + 32);
  v137 = -1;
  if (v136 < 64)
  {
    v137 = ~(-1 << v136);
  }

  v138 = v137 & v135;
  v577 = v129;
  result = swift_beginAccess();
  v139 = 0;
  v594 = 0;
  v140 = (v136 + 63) >> 6;
  v606 = (v587 + 8);
  v574 = (v602 + 8);
  v573 = (v591 + 1);
  v559 = (v591 + 2);
  v558 = (v602 + 16);
  v557 = (v587 + 16);
  v556 = (v120 + 16);
  v555 = (v605 + 16);
  v566 = (v608 + 8);
  v554 = (v605 + 8);
  v567 = (v120 + 8);
  v541 = (v611 + 56);
  v506 = (v611 + 32);
  v505 = (v611 + 8);
  v497 = "ate.HeartRateWidgetExtension";
  v496 = "liveControlReplicator";
  v486 = (v611 + 16);
  v472 = *MEMORY[0x277D46820];
  *&v141 = 136446466;
  v572 = v141;
  *&v141 = 136446210;
  v503 = v141;
  *(&v141 + 1) = 2;
  v499 = xmmword_224DB3100;
  *&v141 = 136446722;
  v463 = v141;
  *&v141 = 136446978;
  v465 = v141;
  v471 = *MEMORY[0x277D46828];
  v485 = *MEMORY[0x277D46558];
  v591 = (v601 + 16);
  v142 = v600;
  v608 = v600 + 16;
  v602 = v601 + 32;
  v611 = v600 + 32;
  v587 = v601 + 48;
  v605 = v601 + 8;
  v504 = (v550 + 48);
  v501 = (v550 + 32);
  v502 = (v550 + 8);
  v495 = (v601 + 56);
  v498 = v583 + 1;
  v484 = v583 + 2;
  v483 = (v584 + 4);
  v488 = (v550 + 16);
  v482 = (v550 + 56);
  v481 = (v584 + 2);
  v494 = (v585 + 2);
  v493 = (v585 + 1);
  v476 = (v590 + 1);
  v475 = v586 + 1;
  v492 = (v595 + 48);
  v466 = (v595 + 32);
  v467 = (v595 + 8);
  v464 = (v595 + 16);
  v470 = (v596 + 104);
  v469 = (v596 + 16);
  v490 = (v596 + 8);
  v596 = v600 + 8;
  v480 = (v552 + 56);
  v479 = (v551 + 16);
  v478 = (v612 + 104);
  v468 = (v612 + 8);
  v477 = (v551 + 8);
  v143 = v613;
  v144 = v614;
  v145 = v601;
  v146 = v609;
  v595 = v140;
  while (v138)
  {
    v147 = v139;
    v148 = v139;
LABEL_17:
    v612 = (v138 - 1) & v138;
    v152 = __clz(__rbit64(v138)) | (v148 << 6);
    v153 = v593;
    v154 = v603;
    v155 = v145;
    (*(v145 + 16))(v603, *(v593 + 48) + *(v145 + 72) * v152, v143);
    v156 = *(v153 + 56) + *(v142 + 72) * v152;
    v157 = v592;
    v158 = v610;
    (*(v142 + 16))(v592, v156, v610);
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
    v160 = v143;
    v161 = *(v159 + 48);
    v162 = *(v155 + 32);
    v163 = v599;
    v162(v599, v154, v160);
    v164 = &v163[v161];
    v165 = v163;
    v166 = v158;
    (*(v142 + 32))(v164, v157, v158);
    (*(*(v159 - 8) + 56))(v165, 0, 1, v159);
    v146 = v609;
    v151 = v604;
    v139 = v147;
    v144 = v614;
LABEL_18:
    sub_224A44E4C(v165, v146, &qword_27D6F4C60, &unk_224DBA3D0);
    v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
    if ((*(*(v167 - 8) + 48))(v146, 1, v167) == 1)
    {

      sub_224C0F5C4();

      return (*v567)(v151, v569);
    }

    (*v611)(v144, v146 + *(v167 + 48), v166);
    v168 = v597;
    sub_224DAD958();
    v169 = v607;
    sub_224DAA1F8();
    v171 = v170;
    v172 = v144;
    v173 = *v606;
    (*v606)(v168, v169);
    if (!v171)
    {
      (*v596)(v172, v166);
      v143 = v613;
      result = (*v605)(v146, v613);
      v142 = v600;
      v144 = v172;
      goto LABEL_6;
    }

    v174 = v589;
    sub_224DA9888();

    v175 = v613;
    if ((*v587)(v174, 1, v613) == 1)
    {
      sub_224A3311C(v174, &unk_27D6F5630, &unk_224DB34C0);
      sub_224C15C8C();
      v176 = swift_allocError();
      *v177 = 1;
      swift_willThrow();
      v143 = v613;
LABEL_22:
      v178 = v588;
      goto LABEL_25;
    }

    v586 = v173;
    v179 = v581;
    (*v602)(v581, v174, v175);
    v180 = __swift_project_boxed_opaque_existential_1(v577 + 11, v577[14]);
    v181 = sub_224DAD938();
    v183 = v182;
    v184 = v578;
    sub_224DAD9B8();
    v185 = v576;
    sub_224DAD9A8();
    v186 = v575;
    sub_224DAD958();
    v187 = *v180;
    v188 = v181;
    v189 = v175;
    v190 = v594;
    sub_224BD7040(v188, v183, v582);
    v176 = v190;
    if (v190)
    {

      (v586)(v186, v607);
      (*v574)(v185, v580);
      (*v573)(v184, v579);
      (*v605)(v179, v189);
      v166 = v610;
      v178 = v588;
      v143 = v189;
      goto LABEL_25;
    }

    (*v559)(v561, v184, v579);
    (*v558)(v562, v185, v580);
    v217 = *v557;
    v590 = 0;
    v217(v560, v186, v607);
    v218 = v571;
    sub_224DAC908();
    v219 = v569;
    (*v556)(v570, v582, v569);
    v220 = v218;
    v221 = v564;
    (*v555)(v563, v220, v564);
    v222 = MEMORY[0x277CF9880];
    v594 = sub_224C15EDC(&qword_281350EA0, MEMORY[0x277CF9880]);
    sub_224C15EDC(&unk_281350EB0, v222);
    v223 = MEMORY[0x277CF9A98];
    sub_224C15EDC(&qword_281350D60, MEMORY[0x277CF9A98]);
    v224 = v223;
    v225 = v219;
    sub_224C15EDC(&qword_281350D70, v224);
    v226 = v565;
    v227 = v221;
    sub_224DAC848();
    v228 = v590;
    v229 = sub_224BD746C(v226, 0);
    if (v228)
    {
      (*v566)(v226, v568);
      (*v554)(v571, v221);
      (*v567)(v582, v225);
      (v586)(v186, v607);
      (*v574)(v185, v580);
      (*v573)(v578, v579);
      v230 = v613;
      (*v605)(v581, v613);
      v176 = v228;
      v143 = v230;
      v166 = v610;
      goto LABEL_22;
    }

    v231 = v229;
    v232 = v225;
    v233 = *v566;
    (*v566)(v226, v568);
    (*v554)(v571, v227);
    (*v567)(v582, v232);
    (v586)(v186, v607);
    (*v574)(v185, v580);
    (*v573)(v578, v579);
    v234 = v553;
    if (v231)
    {
      v594 = v233;
      v584 = v139;
      v235 = v577;
      v236 = v231;
      v237 = v577[31];
      v507 = v577[32];
      v238 = __swift_project_boxed_opaque_existential_1(v577 + 28, v237);
      v585 = &v453;
      v239 = *(*(v237 - 8) + 64);
      MEMORY[0x28223BE20](v238);
      v241 = (&v453 - ((v240 + 15) & 0xFFFFFFFFFFFFFFF0));
      v550 = v242;
      (*(v242 + 16))(v241);
      v243 = v235[7];
      v462 = v235[9];
      v244 = __swift_project_boxed_opaque_existential_1(v235 + 4, v243);
      v583 = &v453;
      v245 = *(v243 - 8);
      v246 = *(v245 + 64);
      MEMORY[0x28223BE20](v244);
      v248 = &v453 - ((v247 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v245 + 16))(v248);
      v590 = v236;
      sub_224DABF98();
      v249 = v507[2].isa;
      v250 = v548;
      v586 = v241;
      sub_224DACEA8();
      v461 = v248;
      v507 = v245;
      v460 = v243;
      v270 = v550;
      v459 = v237;
      v594(v234, v568);
      v271 = *v541;
      v272 = v549;
      (*v541)(v250, 0, 1, v549);
      v273 = v546;
      (*v506)(v546, v250, v272);
      v274 = v544;
      sub_224C15AC4();
      if ((*v504)(v274, 1, v545) == 1)
      {
        sub_224A3311C(v274, &qword_27D6F32B0, &qword_224DB3EA0);
        sub_224C15C8C();
        v176 = swift_allocError();
        *v275 = 0;
        swift_willThrow();

        (*v505)(v273, v272);
        (v507[1].isa)(v461, v460);
        (v270[1])(v586, v459);
        v143 = v613;
        (*v605)(v581, v613);
        v166 = v610;
        v139 = v584;
        goto LABEL_22;
      }

      v458 = v271;
      (*v501)();
      sub_224C15EDC(&qword_281351A48, MEMORY[0x277CC9578]);
      sub_224DAAE48();
      v139 = v584;
      v277 = v270;
      v278 = v603;
      sub_224DAD988();
      v594 = sub_224DA9898();
      v279 = v613;
      v457 = *v605;
      v457(v278, v613);
      (*v495)(v536, 1, 1, v279);
      sub_224DAAEE8();
      v280 = *(v462 + 16);
      sub_224C15CE0();
      sub_224C15D34();
      v281 = sub_224DAAB38();
      v594 = 0;
      v282 = *v486;
      v283 = v281;
      v455 = v281;
      v284 = v518;
      v286 = v285;
      v456 = v285;
      v287 = v549;
      v454 = v288;
      v282(v518, v546, v549);
      (v458)(v284, 0, 1, v287);
      sub_224A77FD0(v283, v286);
      v289 = v520;
      sub_224DAAFB8();
      v290 = v532;
      sub_224DA9768();
      v291 = v540;
      (v484->isa)(v537, v540, v539);
      v462 = *v591;
      (v462)(v278, v542, v279);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5710, &unk_224DB4160);
      v292 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6FE0, &unk_224DB9C50) - 8);
      v293 = *(*v292 + 72);
      v294 = (*(*v292 + 80) + 32) & ~*(*v292 + 80);
      v295 = swift_allocObject();
      *(v295 + 16) = v499;
      v296 = v295 + v294;
      v297 = v292[14];
      *(v295 + v294) = v454;
      v298 = v295 + v294 + v297;
      v299 = v521;
      (*v483)(v298, v289, v521);
      sub_224DA06F0(v295);
      swift_setDeallocating();
      sub_224A3311C(v296, &unk_27D6F6FE0, &unk_224DB9C50);
      swift_deallocClassInstance();
      v300 = v519;
      v301 = v545;
      v454 = *v488;
      v454(v519, v290, v545);
      (*v482)(v300, 0, 1, v301);
      sub_224DAAF68();
      sub_224A78024(v455, v456);
      v302 = *v502;
      (*v502)(v290, v301);
      (*v481)(v289, v299);
      v456 = v498->isa;
      v456(v291, v539);
      v457(v542, v279);
      v458 = v302;
      v302(v543, v301);
      (*v505)(v546, v549);
      (v507[1].isa)(v461, v460);
      (v277[1])(v586, v459);
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v303 = sub_224DAB258();
      v304 = __swift_project_value_buffer(v303, qword_281365120);
      v305 = *v494;
      v306 = v522;
      v307 = v489;
      v308 = v500;
      (*v494)(v522, v489, v500);
      v309 = sub_224DAB228();
      v310 = sub_224DAF2A8();
      v311 = os_log_type_enabled(v309, v310);
      v585 = v304;
      v583 = v305;
      if (v311)
      {
        v312 = v306;
        v313 = swift_slowAlloc();
        v550 = swift_slowAlloc();
        v615 = v550;
        *v313 = v503;
        v314 = v525;
        v315 = v312;
        sub_224DAD788();
        v316 = v523;
        sub_224DACC68();
        (*v476)(v314, v526);
        sub_224C15EDC(&unk_281350D28, MEMORY[0x277CF9BF8]);
        v317 = v524;
        v318 = sub_224DAFD28();
        v319 = v308;
        v321 = v320;
        (*v475)(v316, v317);
        v586 = *v493;
        (v586)(v315, v319);
        v322 = sub_224A33F74(v318, v321, &v615);

        *(v313 + 4) = v322;
        _os_log_impl(&dword_224A2F000, v309, v310, "Got replication request with reason %{public}s", v313, 0xCu);
        v323 = v550;
        __swift_destroy_boxed_opaque_existential_1(v550);
        v307 = v489;
        MEMORY[0x22AA5EED0](v323, -1, -1);
        MEMORY[0x22AA5EED0](v313, -1, -1);
      }

      else
      {

        v586 = *v493;
        (v586)(v306, v308);
      }

      v324 = v552;
      v325 = v529;
      v326 = v528;
      sub_224DABFB8();
      v327 = *v492;
      v328 = v527;
      if ((*v492)(v326, 1, v527) == 1)
      {
        sub_224A3311C(v326, &qword_27D6F4668, &unk_224DB75E0);
      }

      else
      {
        v329 = v516;
        (*v466)(v516, v326, v328);
        v330 = sub_224DAEC28();
        (*v467)(v329, v328);
        if (v330)
        {
          v331 = 1;
          v332 = v500;
          goto LABEL_55;
        }
      }

      sub_224DABFB8();
      v333 = v327(v325, 1, v328);
      v332 = v500;
      if (!v333)
      {
        v393 = v514;
        (*v464)(v514, v325, v328);
        sub_224A3311C(v325, &qword_27D6F4668, &unk_224DB75E0);
        v394 = sub_224DAEC38();
        (*v467)(v393, v328);
        v335 = v614;
        if (v394)
        {
          v395 = v511;
          sub_224DAAF88();
          v396 = v577[33];
          if (*(v396 + 16))
          {
            v397 = v577[33];

            v398 = sub_224B0B3CC(v395);
            if (v399)
            {
              v400 = v509;
              sub_224C15D88(*(v396 + 56) + *(v324 + 72) * v398, v509, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
              v456(v395, v539);

              v401 = v508;
              sub_224C15DF0(v400, v508);
              v402 = v513;
              v403 = v545;
              v404 = v454;
              v454(v513, (v401 + *(v531 + 24)), v545);
              v405 = v401;
              v406 = v403;
              sub_224C15E54(v405, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
              goto LABEL_73;
            }
          }

          v456(v395, v539);
          v407 = v532;
          sub_224DA9808();
          v402 = v513;
          sub_224DA9768();
          v408 = v407;
          v406 = v545;
          v458(v408, v545);
          v404 = v454;
LABEL_73:
          v409 = v515;
          (*v479)(v515, v538, v533);
          v410 = v531;
          v411 = *(v531 + 20);
          v550 = *v608;
          v550((v409 + v411), v335, v610);
          swift_beginAccess();
          v404(v409 + *(v410 + 24), v402, v406);
          v412 = *(v410 + 28);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BC0, &unk_224DB9C60);
          v413 = *(v601 + 72);
          v414 = (*(v601 + 80) + 32) & ~*(v601 + 80);
          v415 = swift_allocObject();
          *(v415 + 16) = v499;
          (v462)(v415 + v414, v581, v613);
          *(v409 + v412) = v415;
          (*v478)(v409 + v412, v485, v487);
          v416 = v537;
          sub_224DAAF88();
          v417 = v530;
          sub_224C15D88(v409, v530, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
          (*v480)(v417, 0, 1, v410);
          swift_beginAccess();
          sub_224B08F00(v417, v416);
          swift_endAccess();
          v418 = v510;
          v550(v510, v335, v610);
          v419 = v512;
          v420 = v500;
          (v583)(v512, v307, v500);
          v421 = sub_224DAB228();
          v422 = sub_224DAF2A8();
          v423 = v422;
          if (os_log_type_enabled(v421, v422))
          {
            v424 = swift_slowAlloc();
            LODWORD(v583) = v423;
            v425 = v424;
            v585 = swift_slowAlloc();
            v615 = v585;
            *v425 = v463;
            v426 = v603;
            v550 = v421;
            sub_224DAD988();
            sub_224C15EDC(&qword_281351A00, MEMORY[0x277CC95F0]);
            v427 = v613;
            v428 = sub_224DAFD28();
            v429 = v418;
            v431 = v430;
            v457(v426, v427);
            v507 = *v596;
            (v507)(v429, v610);
            v432 = sub_224A33F74(v428, v431, &v615);

            *(v425 + 4) = v432;
            *(v425 + 12) = 2082;
            v433 = v525;
            sub_224DAD788();
            v434 = v523;
            sub_224DACC68();
            (*v476)(v433, v526);
            sub_224C15EDC(&unk_281350D28, MEMORY[0x277CF9BF8]);
            v435 = v524;
            v436 = sub_224DAFD28();
            v438 = v437;
            (*v475)(v434, v435);
            (v586)(v419, v420);
            v439 = sub_224A33F74(v436, v438, &v615);

            *(v425 + 14) = v439;
            *(v425 + 22) = 2082;
            sub_224C15EDC(&qword_27D6F32B8, MEMORY[0x277CC9578]);
            v440 = v513;
            v441 = v545;
            v442 = sub_224DAFD28();
            v444 = sub_224A33F74(v442, v443, &v615);

            *(v425 + 24) = v444;
            v445 = v550;
            _os_log_impl(&dword_224A2F000, v550, v583, "Delaying activity archive replication for remote subscription %{public}s reason: %{public}s until %{public}s", v425, 0x20u);
            v446 = v585;
            swift_arrayDestroy();
            MEMORY[0x22AA5EED0](v446, -1, -1);
            v447 = v425;
            v392 = v457;
            MEMORY[0x22AA5EED0](v447, -1, -1);

            sub_224C15E54(v515, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
            (*v477)(v538, v533);
            v448 = v613;
            v392(v581, v613);
            v144 = v614;
            (v507)(v614, v610);
            v458(v440, v441);
            v142 = v600;
            v143 = v448;
          }

          else
          {

            (v586)(v419, v420);
            v449 = *v596;
            v450 = v418;
            v451 = v610;
            (*v596)(v450, v610);
            sub_224C15E54(v515, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
            (*v477)(v538, v533);
            v452 = v613;
            v392 = v457;
            v457(v581, v613);
            v144 = v614;
            (v449)(v614, v451);
            v458(v513, v545);
            v142 = v600;
            v143 = v452;
          }

          goto LABEL_65;
        }

        v331 = 0;
        v334 = v534;
        v336 = v577;
        v337 = v535;
        v332 = v500;
        goto LABEL_56;
      }

      sub_224A3311C(v325, &qword_27D6F4668, &unk_224DB75E0);
      v331 = 0;
LABEL_55:
      v334 = v534;
      v335 = v614;
      v336 = v577;
      v337 = v535;
LABEL_56:
      v338 = v336[2];

      v339 = sub_224DA4EBC(v335, v331);

      if (v339)
      {
        v340 = v471;
      }

      else
      {
        v340 = v472;
      }

      v341 = v491;
      (*v470)(v491, v340, v337);
      v342 = v517;
      v343 = v335;
      v344 = v610;
      (*v608)(v517, v343, v610);
      (v583)(v334, v307, v332);
      v345 = v473;
      (*v469)(v473, v341, v337);
      v346 = sub_224DAB228();
      v347 = sub_224DAF2A8();
      v348 = v347;
      if (os_log_type_enabled(v346, v347))
      {
        v349 = swift_slowAlloc();
        v550 = swift_slowAlloc();
        v615 = v550;
        *v349 = v465;
        v350 = v603;
        v507 = v346;
        sub_224DAD988();
        sub_224C15EDC(&qword_281351A00, MEMORY[0x277CC95F0]);
        LODWORD(v585) = v331;
        v351 = v613;
        v352 = sub_224DAFD28();
        LODWORD(v461) = v348;
        v353 = v342;
        v355 = v354;
        v457(v350, v351);
        v583 = *v596;
        (v583)(v353, v344);
        v356 = sub_224A33F74(v352, v355, &v615);

        *(v349 + 4) = v356;
        *(v349 + 12) = 2082;
        v357 = v525;
        v358 = v500;
        v359 = v534;
        sub_224DAD788();
        v360 = v523;
        sub_224DACC68();
        (*v476)(v357, v526);
        sub_224C15EDC(&unk_281350D28, MEMORY[0x277CF9BF8]);
        v361 = v524;
        v362 = sub_224DAFD28();
        v364 = v363;
        (*v475)(v360, v361);
        (v586)(v359, v358);
        v365 = sub_224A33F74(v362, v364, &v615);

        *(v349 + 14) = v365;
        *(v349 + 22) = 1026;
        *(v349 + 24) = v585;
        *(v349 + 28) = 2082;
        sub_224C15EDC(&qword_27D6F5280, MEMORY[0x277D46830]);
        v366 = sub_224DAFD28();
        v368 = v367;
        v585 = *v490;
        (v585)(v345, v337);
        v369 = sub_224A33F74(v366, v368, &v615);

        *(v349 + 30) = v369;
        v370 = v507;
        _os_log_impl(&dword_224A2F000, v507, v461, "Adding activity archive for remote subscription: %{public}s reason: %{public}s alerting: %{BOOL,public}d with schedule: %{public}s", v349, 0x26u);
        v371 = v550;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v371, -1, -1);
        v372 = v349;
        v336 = v577;
        MEMORY[0x22AA5EED0](v372, -1, -1);
      }

      else
      {

        v585 = *v490;
        (v585)(v345, v337);
        (v586)(v334, v500);
        v583 = *v596;
        (v583)(v342, v344);
      }

      v373 = v537;
      v374 = v538;
      sub_224DAAF88();
      v375 = v530;
      (*v480)(v530, 1, 1, v531);
      swift_beginAccess();
      sub_224B08F00(v375, v373);
      swift_endAccess();
      v376 = v336[7];
      v586 = v336[10];
      __swift_project_boxed_opaque_existential_1(v336 + 4, v376);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3550, &qword_224DB3B00);
      v377 = v551;
      v378 = *(v551 + 72);
      v379 = (*(v551 + 80) + 32) & ~*(v551 + 80);
      v380 = swift_allocObject();
      *(v380 + 16) = v499;
      v381 = v533;
      (*(v377 + 16))(v380 + v379, v374, v533);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BC0, &unk_224DB9C60);
      v382 = *(v601 + 72);
      v383 = (*(v601 + 80) + 32) & ~*(v601 + 80);
      v384 = swift_allocObject();
      *(v384 + 16) = v499;
      v385 = v581;
      (v462)(v384 + v383, v581, v613);
      v386 = v474;
      *v474 = v384;
      v387 = v487;
      (*v478)(v386, v485, v487);
      v388 = v491;
      v389 = v594;
      sub_224DAABD8();
      if (!v389)
      {
        v594 = 0;

        (*v468)(v386, v387);
        (v585)(v388, v535);
        (*v477)(v538, v381);
        v391 = v385;
        v143 = v613;
        v392 = v457;
        v457(v391, v613);
        v144 = v614;
        (v583)(v614, v610);
        v142 = v600;
LABEL_65:
        v146 = v609;
        result = v392(v609, v143);
        goto LABEL_6;
      }

      (*v468)(v386, v387);
      (v585)(v388, v535);
      (*v477)(v538, v381);
      v390 = v613;
      v457(v385, v613);
      v176 = v389;
      v166 = v610;
      v178 = v588;
      v143 = v390;
LABEL_25:
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v594 = 0;
      v191 = sub_224DAB258();
      __swift_project_value_buffer(v191, qword_281365120);
      v192 = v614;
      (*v608)(v178, v614, v166);
      v193 = v176;
      v194 = sub_224DAB228();
      v195 = sub_224DAF2A8();

      if (os_log_type_enabled(v194, v195))
      {
        v196 = swift_slowAlloc();
        v590 = v176;
        v197 = v196;
        v585 = swift_slowAlloc();
        v586 = swift_slowAlloc();
        v615 = v586;
        *v197 = v572;
        v198 = v603;
        LODWORD(v584) = v195;
        sub_224DAD988();
        sub_224C15EDC(&qword_281351A00, MEMORY[0x277CC95F0]);
        v199 = sub_224DAFD28();
        v200 = v178;
        v202 = v201;
        v203 = *v605;
        v583 = v194;
        v204 = v166;
        v203(v198, v613);
        v205 = *v596;
        v206 = v200;
        v143 = v613;
        (*v596)(v206, v204);
        v207 = sub_224A33F74(v199, v202, &v615);

        *(v197 + 4) = v207;
        *(v197 + 12) = 2114;
        v208 = v590;
        v209 = v590;
        v210 = _swift_stdlib_bridgeErrorToNSError();
        *(v197 + 14) = v210;
        v211 = v585;
        *v585 = v210;
        v212 = v583;
        _os_log_impl(&dword_224A2F000, v583, v584, "Cannot replicate activity archive for remote subscription: %{public}s: %{public}@", v197, 0x16u);
        sub_224A3311C(v211, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v211, -1, -1);
        v213 = v586;
        __swift_destroy_boxed_opaque_existential_1(v586);
        MEMORY[0x22AA5EED0](v213, -1, -1);
        MEMORY[0x22AA5EED0](v197, -1, -1);

        v144 = v614;
        (v205)(v614, v610);
        v214 = v203;
      }

      else
      {

        v215 = *v596;
        (*v596)(v178, v166);
        (v215)(v192, v166);
        v214 = *v605;
        v144 = v192;
      }

      v146 = v609;
      result = v214(v609, v143);
      v142 = v600;
LABEL_6:
      v145 = v601;
      v140 = v595;
      v138 = v612;
    }

    else
    {
      v251 = v610;
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v594 = 0;
      v252 = sub_224DAB258();
      __swift_project_value_buffer(v252, qword_281365120);
      v253 = v547;
      v254 = v614;
      (*v608)(v547, v614, v251);
      v255 = sub_224DAB228();
      v256 = sub_224DAF2A8();
      v257 = os_log_type_enabled(v255, v256);
      v258 = v605;
      v590 = (v605 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      if (v257)
      {
        v259 = swift_slowAlloc();
        v584 = v259;
        v586 = swift_slowAlloc();
        v615 = v586;
        *v259 = v503;
        v260 = v603;
        LODWORD(v585) = v256;
        sub_224DAD988();
        sub_224C15EDC(&qword_281351A00, MEMORY[0x277CC95F0]);
        v143 = v613;
        v261 = sub_224DAFD28();
        v263 = v262;
        v264 = *v258;
        (*v258)(v260, v143);
        v265 = *v596;
        (*v596)(v253, v610);
        v266 = sub_224A33F74(v261, v263, &v615);

        v267 = v584;
        *(v584 + 1) = v266;
        v268 = v267;
        _os_log_impl(&dword_224A2F000, v255, v585, "Cannot fetch activity entry for remote subscription: %{public}s", v267, 0xCu);
        v269 = v586;
        __swift_destroy_boxed_opaque_existential_1(v586);
        MEMORY[0x22AA5EED0](v269, -1, -1);
        MEMORY[0x22AA5EED0](v268, -1, -1);

        v264(v581, v143);
        (v265)(v614, v610);
      }

      else
      {

        v276 = *v596;
        (*v596)(v253, v251);
        v264 = *v258;
        v143 = v613;
        (*v258)(v581, v613);
        (v276)(v254, v251);
      }

      v146 = v609;
      v138 = v612;
      result = (v264)(v609, v143);
      v142 = v600;
      v144 = v614;
      v145 = v601;
      v140 = v595;
    }
  }

  if (v140 <= v139 + 1)
  {
    v149 = v139 + 1;
  }

  else
  {
    v149 = v140;
  }

  v150 = v149 - 1;
  v151 = v604;
  while (1)
  {
    v148 = v139 + 1;
    if (__OFADD__(v139, 1))
    {
      break;
    }

    if (v148 >= v140)
    {
      v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
      v165 = v599;
      (*(*(v216 - 8) + 56))(v599, 1, 1, v216);
      v612 = 0;
      v139 = v150;
      v166 = v610;
      goto LABEL_18;
    }

    v138 = *(v598 + 8 * v148);
    v139 = (v139 + 1);
    if (v138)
    {
      v147 = v148;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

void sub_224C0F5C4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v43 - v4;
  v6 = sub_224DA9878();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v47 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = sub_224DAB8C8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v1 + 24);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v46 = v21;
  LOBYTE(v21) = sub_224DAB8F8();
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = *(v1 + 272);

  sub_224DAA948();

  sub_224C0FB84(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_224A3311C(v5, &qword_27D6F32B0, &qword_224DB3EA0);
    if (qword_2813516C8 == -1)
    {
LABEL_4:
      v23 = sub_224DAB258();
      __swift_project_value_buffer(v23, qword_281365120);
      v24 = sub_224DAB228();
      v25 = sub_224DAF2A8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_224A2F000, v24, v25, "Not starting pending replication timer", v26, 2u);
        MEMORY[0x22AA5EED0](v26, -1, -1);
      }

      return;
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  (*(v7 + 32))(v15, v5, v6);
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v27 = sub_224DAB258();
  __swift_project_value_buffer(v27, qword_281365120);
  v28 = *(v7 + 16);
  v45 = v15;
  v28(v13, v15, v6);
  v29 = sub_224DAB228();
  v30 = sub_224DAF2A8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v43 = v31;
    v44 = swift_slowAlloc();
    v48 = v44;
    *v31 = 136446210;
    sub_224C15EDC(&qword_27D6F32B8, MEMORY[0x277CC9578]);
    v32 = sub_224DAFD28();
    v34 = v33;
    v35 = *(v7 + 8);
    v35(v13, v6);
    v36 = sub_224A33F74(v32, v34, &v48);

    v37 = v43;
    *(v43 + 1) = v36;
    v38 = v37;
    _os_log_impl(&dword_224A2F000, v29, v30, "Pending replication timer will fire at %{public}s", v37, 0xCu);
    v39 = v44;
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x22AA5EED0](v39, -1, -1);
    MEMORY[0x22AA5EED0](v38, -1, -1);
  }

  else
  {

    v35 = *(v7 + 8);
    v35(v13, v6);
  }

  v40 = *(v1 + 272);

  v41 = v47;
  sub_224DA9808();
  v42 = v45;
  sub_224DA9758();
  v35(v41, v6);

  sub_224DAA938();

  v35(v42, v6);
}

uint64_t sub_224C0FB84@<X0>(char *a1@<X8>)
{
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5288, &unk_224DBB480);
  v3 = *(*(v77 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v77);
  v76 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v75 = &v66 - v6;
  v7 = sub_224DA9878();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v74 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v73 = &v66 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v66 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v66 - v18;
  MEMORY[0x28223BE20](v17);
  v69 = &v66 - v20;
  v21 = sub_224DAB8C8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = (&v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v1 + 24);
  *v25 = v26;
  (*(v22 + 104))(v25, *MEMORY[0x277D85200], v21);
  v27 = v26;
  LOBYTE(v26) = sub_224DAB8F8();
  result = (*(v22 + 8))(v25, v21);
  if (v26)
  {
    v66 = v16;
    v81 = v7;
    v68 = a1;
    swift_beginAccess();
    v29 = *(v1 + 264);

    sub_224DA9748();
    v30 = *(v29 + 64);
    v70 = v29 + 64;
    v31 = 1 << *(v29 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & v30;
    v34 = (v31 + 63) >> 6;
    v71 = (v8 + 16);
    v67 = v8;
    v78 = (v8 + 32);
    v79 = (v8 + 8);
    v80 = v29;

    v35 = 0;
    v72 = v19;
    if (v33)
    {
      while (1)
      {
        v36 = v35;
LABEL_10:
        v37 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        v38 = v37 | (v36 << 6);
        v39 = v80;
        v40 = *(v80 + 48);
        v41 = sub_224DAAF48();
        v42 = *(v41 - 8);
        v82 = v41;
        v83 = v42;
        v43 = v75;
        (*(v42 + 16))(v75, v40 + *(v42 + 72) * v38, v41);
        v44 = *(v39 + 56);
        v45 = (type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord() - 8);
        v46 = v44 + *(*v45 + 72) * v38;
        v47 = v77;
        sub_224C15D88(v46, v43 + *(v77 + 48), type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
        v48 = v76;
        sub_224A3796C(v43, v76, &qword_27D6F5288, &unk_224DBB480);
        v49 = v48 + *(v47 + 48);
        v50 = v49 + v45[8];
        v51 = v74;
        v52 = v81;
        (*v71)(v74, v50, v81);
        sub_224C15E54(v49, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
        sub_224C15EDC(&qword_281351A40, MEMORY[0x277CC9578]);
        v19 = v72;
        v53 = sub_224DAEDB8();
        sub_224A3311C(v43, &qword_27D6F5288, &unk_224DBB480);
        if (v53)
        {
          v54 = v19;
        }

        else
        {
          v54 = v51;
        }

        if (v53)
        {
          v55 = v51;
        }

        else
        {
          v55 = v19;
        }

        (*v79)(v54, v52);
        v56 = *v78;
        v57 = v73;
        (*v78)(v73, v55, v52);
        (*(v83 + 8))(v48, v82);
        result = (v56)(v19, v57, v52);
        if (!v33)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v36 >= v34)
      {
        break;
      }

      v33 = *(v70 + 8 * v36);
      ++v35;
      if (v33)
      {
        v35 = v36;
        goto LABEL_10;
      }
    }

    v58 = *v78;
    v59 = v69;
    v60 = v81;
    (*v78)(v69, v19, v81);

    v61 = v66;
    sub_224DA9748();
    v62 = sub_224DA97E8();
    v63 = *v79;
    (*v79)(v61, v60);
    if (v62)
    {
      v63(v59, v60);
      v64 = 1;
      v65 = v68;
    }

    else
    {
      v65 = v68;
      v58(v68, v59, v60);
      v64 = 0;
    }

    return (*(v67 + 56))(v65, v64, 1, v60);
  }

  else
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_224C10208(uint64_t a1)
{
  v2 = sub_224DAB8C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 24);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_224DAB8F8();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v10 = sub_224C10328();
    sub_224C1091C(v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224C10328()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C08, &qword_224DB48D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v53 = &v48 - v3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5288, &unk_224DBB480);
  v4 = *(*(v61 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v61);
  v60 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = &v48 - v7;
  v50 = sub_224DA9878();
  v49 = *(v50 - 8);
  v8 = *(v49 + 64);
  MEMORY[0x28223BE20](v50);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DA9808();
  swift_beginAccess();
  v11 = *(v0 + 264);
  v48 = v10;
  v63 = v10;

  v12 = sub_224BA0958(sub_224C15EBC, v62, v11);

  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;

  v19 = 0;
  v51 = v12 + 64;
  v54 = v0;
  v52 = v12;
  while (v16)
  {
LABEL_11:
    v26 = __clz(__rbit64(v16)) | (v19 << 6);
    v27 = *(v12 + 48);
    v28 = sub_224DAAF48();
    v58 = *(v28 - 8);
    v56 = *(v58 + 72);
    v29 = v59;
    v30 = v28;
    (*(v58 + 16))(v59, v27 + v56 * v26);
    v31 = *(v12 + 56);
    v32 = type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord();
    v33 = *(v32 - 8);
    v55 = *(v33 + 72);
    sub_224C15D88(v31 + v55 * v26, v29 + *(v61 + 48), type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
    v34 = v60;
    sub_224A3796C(v29, v60, &qword_27D6F5288, &unk_224DBB480);
    v35 = v54;
    swift_beginAccess();
    v36 = *(v35 + 264);
    v37 = sub_224B0B3CC(v34);
    v57 = v32;
    if (v38)
    {
      v39 = v37;
      v40 = *(v35 + 264);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = *(v35 + 264);
      v65 = v42;
      *(v35 + 264) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_224B28668();
        v42 = v65;
      }

      v22 = v58;
      (*(v58 + 8))(*(v42 + 48) + v39 * v56, v30);
      v21 = v53;
      sub_224C15DF0(*(v42 + 56) + v39 * v55, v53);
      sub_224B1D340(v39, v42);
      v43 = *(v35 + 264);
      *(v35 + 264) = v42;

      v20 = 0;
    }

    else
    {
      v20 = 1;
      v21 = v53;
      v22 = v58;
    }

    v13 = v51;
    v16 &= v16 - 1;
    (*(v33 + 56))(v21, v20, 1, v57);
    v23 = *(v61 + 48);
    sub_224A3311C(v21, &qword_27D6F3C08, &qword_224DB48D0);
    v24 = v60;
    (*(v22 + 8))(v60, v30);
    swift_endAccess();
    sub_224A3311C(v59, &qword_27D6F5288, &unk_224DBB480);
    result = sub_224C15E54(v24 + v23, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
    v12 = v52;
  }

  while (1)
  {
    v25 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v25 >= v17)
    {

      v44 = *(v12 + 16);
      if (!v44)
      {
        goto LABEL_18;
      }

      v45 = sub_224B0CD20(*(v12 + 16), 0);
      v46 = *(type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord() - 8);
      v47 = sub_224B2F9EC(&v64, v45 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v44, v12);
      sub_224A3B7E4();
      if (v47 != v44)
      {
        __break(1u);
LABEL_18:

        v45 = MEMORY[0x277D84F90];
      }

      (*(v49 + 8))(v48, v50);
      return v45;
    }

    v16 = *(v13 + 8 * v25);
    ++v19;
    if (v16)
    {
      v19 = v25;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224C1091C(uint64_t a1)
{
  v2 = v1;
  v90 = sub_224DA9908();
  v4 = *(v90 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v90);
  v89 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB0B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v108 = &v84 - v13;
  v14 = type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v85 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v84 - v19;
  result = MEMORY[0x28223BE20](v18);
  v25 = &v84 - v23;
  v26 = *(a1 + 16);
  if (v26)
  {
    v107 = 0;
    result = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v96 = (v8 + 104);
    v94 = *(v22 + 72);
    v95 = (v8 + 16);
    v106 = (v8 + 8);
    v87 = (v4 + 8);
    v93 = *MEMORY[0x277D46820];
    v92 = *MEMORY[0x277D46828];
    *&v24 = 136446466;
    v86 = v24;
    v91 = xmmword_224DB3100;
    v88 = v7;
    v97 = v12;
    v98 = v2;
    v100 = &v84 - v23;
    v101 = v20;
    v99 = v14;
    do
    {
      v104 = result;
      v105 = v26;
      sub_224C15D88(result, v25, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
      v27 = v2[2];
      v28 = *(v14 + 20);

      LOBYTE(v28) = sub_224DA4EBC(&v25[v28], 0);

      if (v28)
      {
        v29 = v92;
      }

      else
      {
        v29 = v93;
      }

      (*v96)(v108, v29, v7);
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v30 = sub_224DAB258();
      v31 = __swift_project_value_buffer(v30, qword_281365120);
      sub_224C15D88(v25, v20, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
      (*v95)(v12, v108, v7);
      v102 = v31;
      v32 = sub_224DAB228();
      v33 = sub_224DAF2A8();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v109[0] = v35;
        *v34 = v86;
        v36 = &v20[*(v14 + 20)];
        v37 = v89;
        sub_224DAD988();
        sub_224C15EDC(&qword_281351A00, MEMORY[0x277CC95F0]);
        v38 = v2;
        v39 = v90;
        v40 = sub_224DAFD28();
        v41 = v12;
        v43 = v42;
        v44 = v37;
        v7 = v88;
        v45 = v39;
        v2 = v38;
        (*v87)(v44, v45);
        sub_224C15E54(v101, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
        v46 = sub_224A33F74(v40, v43, v109);

        *(v34 + 4) = v46;
        *(v34 + 12) = 2082;
        sub_224C15EDC(&qword_27D6F5280, MEMORY[0x277D46830]);
        v47 = sub_224DAFD28();
        v49 = v48;
        v50 = v41;
        v20 = v101;
        v103 = *v106;
        v103(v50, v7);
        v51 = sub_224A33F74(v47, v49, v109);

        *(v34 + 14) = v51;
        _os_log_impl(&dword_224A2F000, v32, v33, "Adding pended activity archive for remote subscription: %{public}s with schedule: %{public}s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v35, -1, -1);
        MEMORY[0x22AA5EED0](v34, -1, -1);
      }

      else
      {

        v103 = *v106;
        v103(v12, v7);
        sub_224C15E54(v20, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
      }

      v52 = v2[10];
      __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3550, &qword_224DB3B00);
      v53 = *(sub_224DAB018() - 8);
      v54 = *(v53 + 72);
      v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v56 = swift_allocObject();
      *(v56 + 16) = v91;
      v25 = v100;
      (*(v53 + 16))(v56 + v55);
      v57 = v99;
      v58 = *(v99 + 28);
      v59 = v107;
      sub_224DAABD8();
      v60 = v59;
      v14 = v57;
      if (v60)
      {

        v61 = v85;
        sub_224C15D88(v25, v85, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
        v62 = v60;
        v63 = sub_224DAB228();
        v64 = sub_224DAF2A8();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v107 = v60;
          v66 = v65;
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v109[0] = v68;
          *v66 = v86;
          v69 = v61 + *(v14 + 20);
          v70 = v89;
          sub_224DAD988();
          sub_224C15EDC(&qword_281351A00, MEMORY[0x277CC95F0]);
          v71 = v90;
          v72 = sub_224DAFD28();
          v74 = v73;
          v75 = v70;
          v7 = v88;
          (*v87)(v75, v71);
          v102 = type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord;
          sub_224C15E54(v61, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
          v76 = v72;
          v20 = v101;
          v77 = sub_224A33F74(v76, v74, v109);

          *(v66 + 4) = v77;
          *(v66 + 12) = 2114;
          v78 = v107;
          v79 = v107;
          v80 = _swift_stdlib_bridgeErrorToNSError();
          *(v66 + 14) = v80;
          *v67 = v80;
          v14 = v99;
          _os_log_impl(&dword_224A2F000, v63, v64, "Cannot replicate pended activity archive for remote subscription: %{public}s: %{public}@", v66, 0x16u);
          sub_224A3311C(v67, &unk_27D6F69F0, &unk_224DB3900);
          v81 = v67;
          v25 = v100;
          MEMORY[0x22AA5EED0](v81, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v68);
          MEMORY[0x22AA5EED0](v68, -1, -1);
          MEMORY[0x22AA5EED0](v66, -1, -1);

          v103(v108, v7);
          v82 = v25;
          v83 = v102;
        }

        else
        {

          sub_224C15E54(v61, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
          v103(v108, v7);
          v82 = v25;
          v83 = type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord;
        }

        sub_224C15E54(v82, v83);
        v107 = 0;
      }

      else
      {
        v107 = 0;

        v103(v108, v7);
        sub_224C15E54(v25, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
      }

      v12 = v97;
      v2 = v98;
      result = v104 + v94;
      v26 = v105 - 1;
    }

    while (v105 != 1);
  }

  return result;
}

BOOL sub_224C11344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[0] = a2;
  v22[1] = a3;
  v4 = sub_224DA9878();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5288, &unk_224DBB480);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  v17 = sub_224DAAF48();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a1, v17);
  sub_224C15D88(v22[0], &v16[*(v10 + 56)], type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
  sub_224A3796C(v16, v14, &qword_27D6F5288, &unk_224DBB480);
  v19 = &v14[*(v10 + 56)];
  v20 = type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord();
  (*(v5 + 16))(v8, v19 + *(v20 + 24), v4);
  sub_224C15E54(v19, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
  sub_224C15EDC(&qword_281351A40, MEMORY[0x277CC9578]);
  LOBYTE(v19) = sub_224DAEDB8();
  (*(v5 + 8))(v8, v4);
  sub_224A3311C(v16, &qword_27D6F5288, &unk_224DBB480);
  (*(v18 + 8))(v14, v17);
  return (v19 & 1) == 0;
}

uint64_t sub_224C11604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_224DAAF48();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = sub_224DAAB18();
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v11 = sub_224DAAA98();
  v4[11] = v11;
  v12 = *(v11 - 8);
  v4[12] = v12;
  v13 = *(v12 + 64) + 15;
  v4[13] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4220, &unk_224DB60D0);
  v4[14] = v14;
  v15 = *(v14 - 8);
  v4[15] = v15;
  v16 = *(v15 + 64) + 15;
  v4[16] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4228, &unk_224DB9BE0);
  v4[17] = v17;
  v18 = *(v17 - 8);
  v4[18] = v18;
  v19 = *(v18 + 64) + 15;
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C11858, 0, 0);
}

uint64_t sub_224C11858()
{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[3];
  v6 = v5[10];
  __swift_project_boxed_opaque_existential_1(v5 + 4, v5[7]);
  sub_224DAAB98();
  sub_224DAF158();
  (*(v3 + 8))(v2, v4);
  v0[20] = 0;
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_224C11994;
  v9 = v0[19];
  v10 = v0[17];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v10);
}

uint64_t sub_224C11994()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224C11A90, 0, 0);
}

uint64_t sub_224C11A90()
{
  v55 = v0;
  v1 = v0[2];
  if (v1)
  {
    v2 = *(v1 + 16);
    v44 = v0[2];
    if (v2)
    {
      v3 = v0[12];
      v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v5 = *(v3 + 72);
      v6 = v0[20];
      v53 = v5;
      do
      {
        v7 = v0[11];
        sub_224C15D88(v4, v0[13], MEMORY[0x277D46518]);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_224C15E54(v0[13], MEMORY[0x277D46518]);
        }

        else
        {
          v8 = v0[10];
          v9 = v0[3];
          (*(v0[8] + 32))(v8, v0[13], v0[7]);
          sub_224C12078(v8);
          if (v6)
          {
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v10 = v0[9];
            v11 = v0[10];
            v12 = v0[7];
            v13 = v0[8];
            v14 = sub_224DAB258();
            __swift_project_value_buffer(v14, qword_281365120);
            (*(v13 + 16))(v10, v11, v12);
            v15 = v6;
            v16 = sub_224DAB228();
            v17 = sub_224DAF288();

            v18 = os_log_type_enabled(v16, v17);
            v20 = v0[9];
            v19 = v0[10];
            v21 = v0[7];
            v22 = v0[8];
            if (v18)
            {
              v48 = v0[7];
              v23 = v0[6];
              v47 = v0[5];
              v45 = v0[4];
              v52 = v0[10];
              v24 = swift_slowAlloc();
              v50 = swift_slowAlloc();
              v51 = swift_slowAlloc();
              v54 = v51;
              *v24 = 136446466;
              v49 = v16;
              sub_224DAAAF8();
              sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790]);
              v25 = sub_224DAFD28();
              v46 = v17;
              v27 = v26;
              (*(v47 + 8))(v23, v45);
              v28 = *(v22 + 8);
              v28(v20, v48);
              v29 = sub_224A33F74(v25, v27, &v54);

              *(v24 + 4) = v29;
              *(v24 + 12) = 2114;
              v30 = v6;
              v31 = _swift_stdlib_bridgeErrorToNSError();
              *(v24 + 14) = v31;
              *v50 = v31;
              _os_log_impl(&dword_224A2F000, v49, v46, "Failed to handle archive update for %{public}s: %{public}@", v24, 0x16u);
              sub_224A3311C(v50, &unk_27D6F69F0, &unk_224DB3900);
              MEMORY[0x22AA5EED0](v50, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v51);
              MEMORY[0x22AA5EED0](v51, -1, -1);
              MEMORY[0x22AA5EED0](v24, -1, -1);

              v28(v52, v48);
            }

            else
            {

              v32 = *(v22 + 8);
              v32(v20, v21);
              v32(v19, v21);
            }

            v6 = 0;
            v5 = v53;
          }

          else
          {
            (*(v0[8] + 8))(v0[10], v0[7]);
          }
        }

        v4 += v5;
        --v2;
      }

      while (v2);
    }

    else
    {
      v6 = v0[20];
    }

    v0[20] = v6;
    v40 = *(MEMORY[0x277D85798] + 4);
    v41 = swift_task_alloc();
    v0[21] = v41;
    *v41 = v0;
    v41[1] = sub_224C11994;
    v42 = v0[19];
    v43 = v0[17];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v43);
  }

  else
  {
    v33 = v0[16];
    v34 = v0[13];
    v36 = v0[9];
    v35 = v0[10];
    v37 = v0[6];
    (*(v0[18] + 8))(v0[19], v0[17]);

    v38 = v0[1];

    return v38();
  }
}

uint64_t sub_224C11FB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_224ACED1C;

  return sub_224C11604(a1, v4, v5, v7);
}

void sub_224C12078(uint64_t *a1)
{
  v400 = sub_224DACB98();
  v399 = *(v400 - 8);
  v2 = *(v399 + 64);
  MEMORY[0x28223BE20](v400);
  v401 = &v392 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v410 = sub_224DAAFC8();
  v409 = *(v410 - 8);
  v4 = *(v409 + 64);
  MEMORY[0x28223BE20](v410);
  v408 = &v392 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B30, &unk_224DB9BF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v418 = &v392 - v8;
  v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B38, &unk_224DB9C00);
  v417 = *(v419 - 8);
  v9 = *(v417 + 64);
  v10 = MEMORY[0x28223BE20](v419);
  v414 = &v392 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v416 = &v392 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v406 = &v392 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v426 = &v392 - v18;
  MEMORY[0x28223BE20](v17);
  v430 = &v392 - v19;
  v434 = sub_224DA9688();
  v433 = *(v434 - 8);
  v20 = *(v433 + 64);
  v21 = MEMORY[0x28223BE20](v434);
  v407 = &v392 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v429 = &v392 - v23;
  v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v441 = *(v442 - 8);
  v24 = *(v441 + 64);
  v25 = MEMORY[0x28223BE20](v442);
  v403 = &v392 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v405 = &v392 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v432 = &v392 - v30;
  MEMORY[0x28223BE20](v29);
  v438 = &v392 - v31;
  v440 = sub_224DAC918();
  v439 = *(v440 - 8);
  v32 = *(v439 + 64);
  v33 = MEMORY[0x28223BE20](v440);
  v444 = &v392 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v445 = &v392 - v35;
  v446 = sub_224DABCC8();
  v447 = *(v446 - 8);
  v36 = *(v447 + 64);
  v37 = MEMORY[0x28223BE20](v446);
  v398 = &v392 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v443 = &v392 - v40;
  MEMORY[0x28223BE20](v39);
  v456 = &v392 - v41;
  v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v453 = *(v454 - 8);
  v42 = *(v453 + 64);
  v43 = MEMORY[0x28223BE20](v454);
  v437 = &v392 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v462 = &v392 - v45;
  v452 = sub_224DAE7A8();
  v451 = *(v452 - 8);
  v46 = *(v451 + 64);
  v47 = MEMORY[0x28223BE20](v452);
  v436 = &v392 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v461 = &v392 - v49;
  v450 = sub_224DAEB68();
  v449 = *(v450 - 8);
  v50 = *(v449 + 64);
  v51 = MEMORY[0x28223BE20](v450);
  v435 = &v392 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v460 = &v392 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54 - 8);
  v458 = &v392 - v56;
  v57 = sub_224DAD9C8();
  v463 = *(v57 - 8);
  v464 = v57;
  v58 = *(v463 + 64);
  MEMORY[0x28223BE20](v57);
  v455 = &v392 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_224DA9908();
  v480 = *(v60 - 8);
  v61 = v480[8];
  v62 = MEMORY[0x28223BE20](v60);
  v402 = &v392 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x28223BE20](v62);
  v421 = &v392 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v422 = &v392 - v67;
  MEMORY[0x28223BE20](v66);
  v465 = &v392 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v70 = *(*(v69 - 8) + 64);
  v71 = MEMORY[0x28223BE20](v69 - 8);
  v431 = &v392 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x28223BE20](v71);
  v466 = &v392 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v469 = (&v392 - v76);
  MEMORY[0x28223BE20](v75);
  v470 = (&v392 - v77);
  v78 = sub_224DAAB18();
  v477 = *(v78 - 8);
  v478 = v78;
  v79 = v477[8];
  v80 = MEMORY[0x28223BE20](v78);
  v467 = &v392 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = MEMORY[0x28223BE20](v80);
  v457 = &v392 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v448 = &v392 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v427 = &v392 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v425 = &v392 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v413 = &v392 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v412 = &v392 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v411 = &v392 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v404 = &v392 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v420 = &v392 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v415 = &v392 - v101;
  MEMORY[0x28223BE20](v100);
  v103 = &v392 - v102;
  v104 = sub_224DAAF28();
  v105 = *(*(v104 - 8) + 64);
  v106 = MEMORY[0x28223BE20](v104 - 8);
  v468 = (&v392 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0));
  v108 = MEMORY[0x28223BE20](v106);
  v110 = &v392 - v109;
  MEMORY[0x28223BE20](v108);
  v112 = &v392 - v111;
  v113 = sub_224DAAF48();
  v114 = *(v113 - 8);
  v115 = *(v114 + 64);
  v116 = MEMORY[0x28223BE20](v113);
  v118 = &v392 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v116);
  v120 = &v392 - v119;
  v479 = a1;
  sub_224DAAAF8();
  sub_224DAAF38();
  v424 = v114;
  v121 = *(v114 + 8);
  v472 = v120;
  v473 = v113;
  v474 = v121;
  v475 = v114 + 8;
  v121(v120, v113);
  v123 = v480 + 7;
  v122 = v480[7];
  v471 = v60;
  v122(v110, 1, 1, v60);
  LOBYTE(a1) = MEMORY[0x22AA59280](v112, v110);
  v124 = MEMORY[0x277D46780];
  sub_224C15E54(v110, MEMORY[0x277D46780]);
  sub_224C15E54(v112, v124);
  if ((a1 & 1) == 0)
  {
    v428 = v122;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v125 = sub_224DAB258();
    v126 = __swift_project_value_buffer(v125, qword_281365120);
    v128 = v477;
    v127 = v478;
    v129 = v477[2];
    v395 = v477 + 2;
    v394 = v129;
    v129(v103, v479, v478);
    v396 = v126;
    v130 = sub_224DAB228();
    v131 = sub_224DAF2A8();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v392 = v132;
      v423 = swift_slowAlloc();
      v481 = v423;
      *v132 = 136446210;
      v133 = v472;
      sub_224DAAAF8();
      sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790]);
      v134 = v473;
      v135 = sub_224DAFD28();
      v393 = v123;
      v137 = v136;
      v138 = v474;
      v474(v133, v134);
      v397 = v477[1];
      v397(v103, v478);
      v139 = sub_224A33F74(v135, v137, &v481);
      v123 = v393;
      v140 = v471;

      v141 = v392;
      *(v392 + 1) = v139;
      v142 = v141;
      _os_log_impl(&dword_224A2F000, v130, v131, "Updating activity archive for record ID %{public}s", v141, 0xCu);
      v143 = v423;
      __swift_destroy_boxed_opaque_existential_1(v423);
      MEMORY[0x22AA5EED0](v143, -1, -1);
      MEMORY[0x22AA5EED0](v142, -1, -1);

      v144 = v428;
    }

    else
    {

      v397 = v128[1];
      v397(v103, v127);
      v134 = v473;
      v138 = v474;
      v144 = v428;
      v140 = v471;
    }

    sub_224DAAAF8();
    v145 = v468;
    sub_224DAAF38();
    v138(v118, v134);
    v146 = v480;
    v147 = 1;
    v423 = v480[6];
    v148 = v480 + 6;
    v149 = (v423)(v145, 1, v140);
    v150 = v469;
    if (v149 != 1)
    {
      (v146[4])(v469, v145, v140);
      v147 = 0;
    }

    v144(v150, v147, 1, v140);
    v151 = v470;
    sub_224A44E4C(v150, v470, &unk_27D6F5630, &unk_224DB34C0);
    v152 = v423;
    v153 = (v423)(v151, 1, v140);
    sub_224A3311C(v151, &unk_27D6F5630, &unk_224DB34C0);
    if (v153 == 1)
    {
      v154 = v467;
      v155 = v478;
      v394(v467, v479, v478);
      v156 = sub_224DAB228();
      v157 = sub_224DAF288();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        v480 = swift_slowAlloc();
        v481 = v480;
        *v158 = 136446210;
        v159 = v472;
        sub_224DAAAF8();
        sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790]);
        v160 = v473;
        v161 = sub_224DAFD28();
        v163 = v162;
        v474(v159, v160);
        v397(v154, v155);
        v164 = sub_224A33F74(v161, v163, &v481);

        *(v158 + 4) = v164;
        v165 = "Cannot receive archive as no relationship exists for record ID %{public}s";
LABEL_15:
        _os_log_impl(&dword_224A2F000, v156, v157, v165, v158, 0xCu);
        v175 = v480;
        __swift_destroy_boxed_opaque_existential_1(v480);
        MEMORY[0x22AA5EED0](v175, -1, -1);
        MEMORY[0x22AA5EED0](v158, -1, -1);

        return;
      }

LABEL_16:

      v397(v154, v155);
      return;
    }

    v166 = v472;
    v167 = v479;
    sub_224DAAAF8();
    sub_224DAAEF8();
    v474(v166, v134);
    v168 = v466;
    sub_224DA9888();

    if ((v152)(v168, 1, v140) == 1)
    {
      sub_224A3311C(v168, &unk_27D6F5630, &unk_224DB34C0);
      v154 = v457;
      v155 = v478;
      v394(v457, v167, v478);
      v156 = sub_224DAB228();
      v157 = sub_224DAF288();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        v480 = swift_slowAlloc();
        v481 = v480;
        *v158 = 136446210;
        v169 = v472;
        sub_224DAAAF8();
        sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790]);
        v170 = v473;
        v171 = sub_224DAFD28();
        v173 = v172;
        v474(v169, v170);
        v397(v154, v155);
        v174 = sub_224A33F74(v171, v173, &v481);

        *(v158 + 4) = v174;
        v165 = "Cannot receive archive as subscription ID is malformed for record ID %{public}s";
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    v176 = v140;
    v177 = v480 + 4;
    v178 = v465;
    v470 = v480[4];
    (v470)(v465, v168, v176);
    v179 = v459;
    v180 = v459[20];
    v181 = v459[21];
    __swift_project_boxed_opaque_existential_1(v459 + 17, v180);
    v182 = v458;
    sub_224D2F410(v178, v180, v181, v458);
    v183 = v463;
    v184 = v464;
    if ((*(v463 + 48))(v182, 1, v464) == 1)
    {
      sub_224A3311C(v182, &qword_27D6F3BD8, &qword_224DB9C20);
      v185 = v448;
      v186 = v478;
      v394(v448, v479, v478);
      v187 = sub_224DAB228();
      v188 = sub_224DAF288();
      if (!os_log_type_enabled(v187, v188))
      {

        v397(v185, v186);
        (v480[1])(v178, v471);
        return;
      }

      v189 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v481 = v190;
      *v189 = 136446210;
      v191 = v472;
      sub_224DAAAF8();
      sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790]);
      v192 = v473;
      v193 = sub_224DAFD28();
      v195 = v194;
      v474(v191, v192);
      v397(v185, v478);
      v196 = sub_224A33F74(v193, v195, &v481);

      *(v189 + 4) = v196;
      _os_log_impl(&dword_224A2F000, v187, v188, "Cannot receive archive as no subscription exists for record ID %{public}s", v189, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v190);
      MEMORY[0x22AA5EED0](v190, -1, -1);
      MEMORY[0x22AA5EED0](v189, -1, -1);

      goto LABEL_25;
    }

    v393 = v123;
    v197 = v455;
    (*(v183 + 32))(v455, v182, v184);
    v198 = __swift_project_boxed_opaque_existential_1(v179 + 11, v179[14]);
    v199 = sub_224DAD938();
    v200 = v183;
    v202 = v201;
    sub_224DAD9B8();
    sub_224DAD9A8();
    sub_224DAD958();
    v203 = *v198;
    v204 = v476;
    sub_224BD7040(v199, v202, v456);
    if (v204)
    {

      (*(v453 + 8))(v462, v454);
      (*(v451 + 8))(v461, v452);
      (*(v449 + 8))(v460, v450);
      (*(v200 + 8))(v197, v464);
      (v480[1])(v465, v471);
      return;
    }

    v468 = v177;
    v469 = v148;

    (*(v449 + 16))(v435, v460, v450);
    (*(v451 + 16))(v436, v461, v452);
    (*(v453 + 16))(v437, v462, v454);
    v205 = v445;
    sub_224DAC908();
    (*(v447 + 16))(v443, v456, v446);
    v206 = v439;
    v207 = v205;
    v208 = v440;
    (*(v439 + 16))(v444, v207, v440);
    v209 = MEMORY[0x277CF9880];
    v476 = sub_224C15EDC(&qword_281350EA0, MEMORY[0x277CF9880]);
    sub_224C15EDC(&unk_281350EB0, v209);
    v210 = MEMORY[0x277CF9A98];
    sub_224C15EDC(&qword_281350D60, MEMORY[0x277CF9A98]);
    v211 = v210;
    v212 = v208;
    sub_224C15EDC(&qword_281350D70, v211);
    v213 = v438;
    sub_224DAC848();
    v214 = sub_224BD746C(v213, 0);
    v215 = v213;
    v216 = v441 + 8;
    v467 = *(v441 + 8);
    (v467)(v215, v442);
    (*(v206 + 8))(v445, v212);
    v218 = v447 + 8;
    v217 = *(v447 + 8);
    v217(v456, v446);
    (*(v453 + 8))(v462, v454);
    (*(v451 + 8))(v461, v452);
    (*(v449 + 8))(v460, v450);
    if (!v214)
    {
      v223 = v427;
      v224 = v478;
      v394(v427, v479, v478);
      v225 = sub_224DAB228();
      v226 = sub_224DAF288();
      if (os_log_type_enabled(v225, v226))
      {
        v227 = swift_slowAlloc();
        v476 = v227;
        v479 = swift_slowAlloc();
        v481 = v479;
        *v227 = 136446210;
        v228 = v472;
        sub_224DAAAF8();
        sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790]);
        v229 = v473;
        v230 = sub_224DAFD28();
        v232 = v231;
        v474(v228, v229);
        v397(v223, v224);
        v233 = sub_224A33F74(v230, v232, &v481);

        v234 = v476;
        *(v476 + 4) = v233;
        v235 = v234;
        _os_log_impl(&dword_224A2F000, v225, v226, "Cannot receive archive as no entry exists for record ID %{public}s", v234, 0xCu);
        v236 = v479;
        __swift_destroy_boxed_opaque_existential_1(v479);
        MEMORY[0x22AA5EED0](v236, -1, -1);
        MEMORY[0x22AA5EED0](v235, -1, -1);
      }

      else
      {

        v397(v223, v224);
      }

      goto LABEL_24;
    }

    v462 = v217;
    v447 = v218;
    v219 = v179[32];
    __swift_project_boxed_opaque_existential_1(v179 + 28, v179[31]);
    v220 = v432;
    v466 = v214;
    sub_224DABF98();
    v221 = *(*(v219 + 16) + 8);
    v222 = v431;
    sub_224DAD9D8();
    v441 = v216;
    v237 = 0;
    (v467)(v220, v442);
    v238 = v471;
    if ((v423)(v222, 1, v471) == 1)
    {
      v239 = v434;
      v240 = v430;
      sub_224A3311C(v222, &unk_27D6F5630, &unk_224DB34C0);
      v241 = v433;
    }

    else
    {
      v267 = v222;
      v268 = v422;
      (v470)(v422, v267, v238);
      v269 = v421;
      v270 = v479;
      sub_224DAAB08();
      v271 = sub_224DA98D8();
      v272 = v480[1];
      v272(v269, v238);
      v476 = 0;
      v273 = v238;
      if (v271)
      {
        v274 = v415;
        v275 = v478;
        v276 = v394;
        v394(v415, v270, v478);
        v276(v420, v270, v275);
        v277 = sub_224DAB228();
        v278 = sub_224DAF2A8();
        if (os_log_type_enabled(v277, v278))
        {
          v279 = swift_slowAlloc();
          v480 = swift_slowAlloc();
          v481 = v480;
          *v279 = 136446466;
          v479 = v277;
          v280 = v421;
          LODWORD(v476) = v278;
          sub_224DAAB08();
          sub_224C15EDC(&qword_281351A00, MEMORY[0x277CC95F0]);
          v281 = sub_224DAFD28();
          v282 = v273;
          v284 = v283;
          v272(v280, v282);
          ++v477;
          v397(v274, v275);
          v285 = sub_224A33F74(v281, v284, &v481);

          v470 = v279;
          *(v279 + 4) = v285;
          *(v279 + 12) = 2082;
          v286 = v420;
          v287 = v472;
          sub_224DAAAF8();
          sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790]);
          v288 = v473;
          v289 = sub_224DAFD28();
          v291 = v290;
          v474(v287, v288);
          v397(v286, v275);
          v292 = sub_224A33F74(v289, v291, &v481);

          v293 = v470;
          *(v470 + 14) = v292;
          v294 = v479;
          _os_log_impl(&dword_224A2F000, v479, v476, "Archive with version %{public}s already exists for record ID %{public}s", v293, 0x16u);
          v295 = v480;
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v295, -1, -1);
          MEMORY[0x22AA5EED0](v293, -1, -1);

          v296 = v471;
          v272(v422, v471);
          (*(v463 + 8))(v455, v464);
          v272(v465, v296);
        }

        else
        {

          v335 = v397;
          v397(v420, v275);
          v335(v274, v275);
          v272(v422, v273);
          (*(v463 + 8))(v455, v464);
          v272(v465, v273);
        }

        return;
      }

      v272(v268, v238);
      v241 = v433;
      v239 = v434;
      v240 = v430;
      v237 = v476;
    }

    sub_224AEFFB4(v240);
    v242 = *(v241 + 48);
    if (v242(v240, 1, v239) == 1)
    {
      sub_224A3311C(v240, &unk_27D6F4680, &unk_224DB4610);
      v243 = v425;
      v244 = v478;
      v394(v425, v479, v478);
      v245 = sub_224DAB228();
      v246 = sub_224DAF288();
      v247 = os_log_type_enabled(v245, v246);
      v248 = v455;
      if (!v247)
      {

        v397(v243, v244);
        (*(v463 + 8))(v248, v464);
        goto LABEL_25;
      }

      v249 = swift_slowAlloc();
      v250 = swift_slowAlloc();
      v476 = v237;
      v479 = v250;
      v481 = v250;
      *v249 = 136446210;
      v251 = v472;
      sub_224DAAAF8();
      sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790]);
      v252 = v473;
      v253 = sub_224DAFD28();
      v254 = v243;
      v256 = v255;
      v474(v251, v252);
      v397(v254, v244);
      v257 = sub_224A33F74(v253, v256, &v481);

      *(v249 + 4) = v257;
      _os_log_impl(&dword_224A2F000, v245, v246, "Cannot receive archive as temporary URL does not exist for record ID %{public}s", v249, 0xCu);
      v258 = v479;
      __swift_destroy_boxed_opaque_existential_1(v479);
      MEMORY[0x22AA5EED0](v258, -1, -1);
      MEMORY[0x22AA5EED0](v249, -1, -1);

LABEL_24:
      (*(v463 + 8))(v455, v464);
LABEL_25:
      (v480[1])(v465, v471);
      return;
    }

    v461 = (v241 + 48);
    v468 = v242;
    v476 = v237;
    v259 = v179;
    v260 = v429;
    v469 = *(v241 + 32);
    (v469)(v429, v240, v239);
    v261 = v259[7];
    v470 = v259[10];
    __swift_project_boxed_opaque_existential_1(v259 + 4, v261);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
    v262 = *(v424 + 72);
    v263 = (*(v424 + 80) + 32) & ~*(v424 + 80);
    *(swift_allocObject() + 16) = xmmword_224DB3100;
    sub_224DAAAF8();
    v264 = v426;
    (*(v241 + 16))(v426, v260, v239);
    (*(v241 + 56))(v264, 0, 1, v239);
    v265 = v476;
    v266 = sub_224DAAC08();
    v476 = v265;
    if (v265)
    {

      sub_224A3311C(v264, &unk_27D6F4680, &unk_224DB4610);
      (*(v241 + 8))(v260, v239);
      goto LABEL_24;
    }

    v297 = v469;
    v298 = v266;
    sub_224A3311C(v264, &unk_27D6F4680, &unk_224DB4610);

    v299 = v418;
    sub_224D5D3A0(v298, v418);

    v300 = v419;
    if ((*(v417 + 48))(v299, 1, v419) == 1)
    {
      sub_224A3311C(v299, &qword_27D6F4B30, &unk_224DB9BF0);
      v301 = v413;
      v302 = v478;
      v394(v413, v479, v478);
      v303 = sub_224DAB228();
      v304 = sub_224DAF288();
      v305 = os_log_type_enabled(v303, v304);
      v306 = v429;
      if (!v305)
      {

        v397(v301, v302);
        (*(v433 + 8))(v306, v434);
        goto LABEL_24;
      }

      v307 = swift_slowAlloc();
      v479 = swift_slowAlloc();
      v481 = v479;
      *v307 = 136446210;
      v308 = v472;
      sub_224DAAAF8();
      sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790]);
      v309 = v473;
      v310 = sub_224DAFD28();
      v312 = v311;
      v474(v308, v309);
      v397(v301, v302);
      v313 = sub_224A33F74(v310, v312, &v481);

      *(v307 + 4) = v313;
      _os_log_impl(&dword_224A2F000, v303, v304, "Cannot receive archive as no record exists for record ID %{public}s", v307, 0xCu);
      v314 = v479;
      __swift_destroy_boxed_opaque_existential_1(v479);
      MEMORY[0x22AA5EED0](v314, -1, -1);
      MEMORY[0x22AA5EED0](v307, -1, -1);

LABEL_62:
      (*(v433 + 8))(v429, v434);
      goto LABEL_24;
    }

    v315 = v416;
    sub_224A44E4C(v299, v416, &qword_27D6F4B38, &unk_224DB9C00);
    v316 = *(v300 + 48);
    v317 = v429;
    v318 = v479;
    if (qword_27D6F2CD0 != -1)
    {
      swift_once();
    }

    v319 = sub_224DAAB88();
    __swift_project_value_buffer(v319, qword_27D6F5248);
    v320 = sub_224DAAEB8();
    if (v321)
    {
      v322 = v412;
      v323 = v478;
      v394(v412, v318, v478);
      v324 = sub_224DAB228();
      v325 = sub_224DAF288();
      if (os_log_type_enabled(v324, v325))
      {
        v326 = swift_slowAlloc();
        v479 = swift_slowAlloc();
        v481 = v479;
        *v326 = 136446210;
        v327 = v472;
        sub_224DAAAF8();
        sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790]);
        v328 = v473;
        v329 = sub_224DAFD28();
        v331 = v330;
        v474(v327, v328);
        v397(v322, v323);
        v332 = sub_224A33F74(v329, v331, &v481);

        *(v326 + 4) = v332;
        _os_log_impl(&dword_224A2F000, v324, v325, "Cannot receive archive as we have no compatible protocol versions for record ID %{public}s", v326, 0xCu);
        v333 = v479;
        __swift_destroy_boxed_opaque_existential_1(v479);
        MEMORY[0x22AA5EED0](v333, -1, -1);
        v334 = v326;
LABEL_60:
        MEMORY[0x22AA5EED0](v334, -1, -1);

LABEL_61:
        sub_224A3311C(v416, &qword_27D6F4B38, &unk_224DB9C00);
        goto LABEL_62;
      }

      v397(v322, v323);
      v371 = v315;
      goto LABEL_65;
    }

    v336 = v320;
    v337 = v315;
    v338 = v414;
    sub_224A3796C(v337, v414, &qword_27D6F4B38, &unk_224DB9C00);
    v339 = *(v300 + 48);
    v340 = sub_224DAAFD8();
    v341 = sub_224DAB018();
    (*(*(v341 - 8) + 8))(v338 + v339, v341);
    v342 = v473;
    if (!*(v340 + 16) || (v343 = sub_224B31510(v336), (v344 & 1) == 0))
    {

      v357 = v474;
      v474(v414, v342);
      v358 = v411;
      v359 = v478;
      v394(v411, v318, v478);
      v324 = sub_224DAB228();
      v360 = sub_224DAF288();
      if (os_log_type_enabled(v324, v360))
      {
        v361 = swift_slowAlloc();
        v470 = v361;
        v479 = swift_slowAlloc();
        v481 = v479;
        *v361 = 136446210;
        v362 = v472;
        sub_224DAAAF8();
        sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790]);
        v363 = sub_224DAFD28();
        v364 = v358;
        v366 = v365;
        v357(v362, v342);
        v397(v364, v359);
        v367 = sub_224A33F74(v363, v366, &v481);

        v368 = v470;
        *(v470 + 1) = v367;
        v369 = v368;
        _os_log_impl(&dword_224A2F000, v324, v360, "Cannot receive archive as no compatible version exists for record ID %{public}s", v368, 0xCu);
        v370 = v479;
        __swift_destroy_boxed_opaque_existential_1(v479);
        MEMORY[0x22AA5EED0](v370, -1, -1);
        v334 = v369;
        goto LABEL_60;
      }

      v397(v358, v359);
      v371 = v416;
LABEL_65:
      sub_224A3311C(v371, &qword_27D6F4B38, &unk_224DB9C00);
      (*(v433 + 8))(v317, v434);
      goto LABEL_24;
    }

    (*(v409 + 16))(v408, *(v340 + 56) + *(v409 + 72) * v343, v410);

    v474(v414, v342);
    v345 = v406;
    sub_224DAAF98();
    if ((v468)(v345, 1, v434) == 1)
    {
      sub_224A3311C(v345, &unk_27D6F4680, &unk_224DB4610);
      v394(v404, v479, v478);
      v346 = sub_224DAB228();
      v347 = sub_224DAF288();
      if (os_log_type_enabled(v346, v347))
      {
        v348 = swift_slowAlloc();
        v349 = swift_slowAlloc();
        v481 = v349;
        *v348 = 136446210;
        v350 = v472;
        v351 = v404;
        sub_224DAAAF8();
        sub_224C15EDC(&qword_281351720, MEMORY[0x277D46790]);
        v352 = v473;
        v353 = sub_224DAFD28();
        v355 = v354;
        v474(v350, v352);
        v397(v351, v478);
        v356 = sub_224A33F74(v353, v355, &v481);

        *(v348 + 4) = v356;
        _os_log_impl(&dword_224A2F000, v346, v347, "Cannot receive archive as no source URL exists for record ID %{public}s", v348, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v349);
        MEMORY[0x22AA5EED0](v349, -1, -1);
        MEMORY[0x22AA5EED0](v348, -1, -1);
      }

      else
      {

        v397(v404, v478);
      }

      (*(v409 + 8))(v408, v410);
      goto LABEL_61;
    }

    (v297)(v407, v345, v434);
    v372 = v459[32];
    __swift_project_boxed_opaque_existential_1(v459 + 28, v459[31]);
    sub_224DABF98();
    v373 = *(v372 + 8);
    v374 = v476;
    sub_224DAD438();
    if (v374)
    {

      (v467)(v405, v442);
      v375 = *(v433 + 8);
      v376 = v434;
      v375(v407, v434);
      (*(v409 + 8))(v408, v410);
      sub_224A3311C(v416, &qword_27D6F4B38, &unk_224DB9C00);
      v375(v429, v376);
      (*(v463 + 8))(v455, v464);
      (v480[1])(v465, v471);
    }

    else
    {
      (v467)(v405, v442);
      v377 = v459[32];
      __swift_project_boxed_opaque_existential_1(v459 + 28, v459[31]);
      sub_224DABF98();
      sub_224DAAB08();
      v378 = *(v377 + 24);
      sub_224DAD9E8();
      v379 = v480[1];
      v379(v402, v471);
      (v467)(v403, v442);
      v380 = __swift_project_boxed_opaque_existential_1(v459 + 11, v459[14]);
      v381 = sub_224DAD938();
      v383 = v382;
      (*(v399 + 104))(v401, *MEMORY[0x277CF9B60], v400);
      v384 = *v380;
      v385 = sub_224BD7040(v381, v383, v398);
      v386 = MEMORY[0x28223BE20](v385);
      v387 = v398;
      *(&v392 - 4) = v384;
      *(&v392 - 3) = v387;
      *(&v392 - 2) = v401;
      LOBYTE(v481) = 1;
      v388 = *(v384 + 336);
      MEMORY[0x28223BE20](v386);
      *(&v392 - 4) = &v481;
      *(&v392 - 3) = sub_224B7A900;
      *(&v392 - 2) = v389;

      sub_224DAC128();

      if (v481)
      {
        __break(1u);
      }

      else
      {

        v390 = *(v433 + 8);
        v391 = v434;
        v390(v407, v434);
        (*(v409 + 8))(v408, v410);
        sub_224A3311C(v416, &qword_27D6F4B38, &unk_224DB9C00);
        v390(v429, v391);
        (*(v463 + 8))(v455, v464);
        v379(v465, v471);
        (v462)(v398, v446);
        (*(v399 + 8))(v401, v400);
      }
    }
  }
}

uint64_t sub_224C15AC4()
{
  v0 = sub_224DA9498();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48B0, &qword_224DB8210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  v6 = *MEMORY[0x277CBE7C0];
  *(inited + 32) = *MEMORY[0x277CBE7C0];
  v7 = v6;
  sub_224D5823C(inited);
  swift_setDeallocating();
  sub_224C15E54(inited + 32, type metadata accessor for URLResourceKey);
  sub_224DA95C8();

  sub_224DA9478();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_224C15C84(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_224C0AC9C(a1);
}

unint64_t sub_224C15C8C()
{
  result = qword_27D6F5268;
  if (!qword_27D6F5268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5268);
  }

  return result;
}

unint64_t sub_224C15CE0()
{
  result = qword_27D6F5270;
  if (!qword_27D6F5270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5270);
  }

  return result;
}

unint64_t sub_224C15D34()
{
  result = qword_27D6F5278;
  if (!qword_27D6F5278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5278);
  }

  return result;
}

uint64_t sub_224C15D88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224C15DF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224C15E54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224C15EDC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_224C15F48()
{
  result = qword_27D6F5290;
  if (!qword_27D6F5290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5290);
  }

  return result;
}

unint64_t sub_224C15F9C()
{
  result = qword_27D6F52A0;
  if (!qword_27D6F52A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F52A0);
  }

  return result;
}

unint64_t sub_224C16004()
{
  result = qword_27D6F52A8;
  if (!qword_27D6F52A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F52A8);
  }

  return result;
}

unint64_t sub_224C1605C()
{
  result = qword_27D6F52B0;
  if (!qword_27D6F52B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F52B0);
  }

  return result;
}

uint64_t sub_224C160B0()
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34A0, &unk_224DB3A20);
  v1 = *(*(v48 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v48);
  v47 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v46 = &v40 - v5;
  MEMORY[0x28223BE20](v4);
  v45 = &v40 - v6;
  v7 = *(v0 + 40);
  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0;
  }

  v51 = MEMORY[0x277D84F90];
  sub_224DAF9E8();
  v9 = v7 + 64;
  v10 = -1 << *(v7 + 32);
  result = sub_224DAF798();
  v12 = result;
  v13 = 0;
  v14 = *(v7 + 36);
  v41 = v7 + 72;
  v42 = v14;
  v43 = v7 + 64;
  v44 = v8;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v7 + 32))
  {
    v16 = v12 >> 6;
    if ((*(v9 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_22;
    }

    if (v14 != *(v7 + 36))
    {
      goto LABEL_23;
    }

    v49 = v13;
    v50 = 1 << v12;
    v17 = *(v7 + 48);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    v19 = *(v18 - 8);
    v14 = v7;
    v20 = v45;
    (*(v19 + 16))(v45, v17 + *(v19 + 72) * v12, v18);
    v21 = *(*(v14 + 56) + 8 * v12);
    v22 = v46;
    (*(v19 + 32))(v46, v20, v18);
    v23 = v47;
    v24 = v48;
    *(v22 + *(v48 + 48)) = v21;
    sub_224A3796C(v22, v23, &qword_27D6F34A0, &unk_224DB3A20);
    v25 = *(v23 + *(v24 + 48));
    v26 = *(v25 + *(*v25 + 104));

    v27 = v26;

    v28 = [v27 metricsSpecification];

    sub_224A3311C(v22, &qword_27D6F34A0, &unk_224DB3A20);
    v29 = v23;
    v7 = v14;
    (*(v19 + 8))(v29, v18);
    sub_224DAF9B8();
    v30 = *(v51 + 16);
    sub_224DAF9F8();
    sub_224DAFA08();
    result = sub_224DAF9C8();
    v15 = 1 << *(v14 + 32);
    if (v12 >= v15)
    {
      goto LABEL_24;
    }

    v9 = v43;
    v31 = v44;
    v32 = *(v43 + 8 * v16);
    if ((v32 & v50) == 0)
    {
      goto LABEL_25;
    }

    v33 = *(v14 + 36);
    LODWORD(v14) = v42;
    if (v42 != v33)
    {
      goto LABEL_26;
    }

    v34 = v32 & (-2 << (v12 & 0x3F));
    if (v34)
    {
      v15 = __clz(__rbit64(v34)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v35 = v16 << 6;
      v36 = v16 + 1;
      v37 = (v41 + 8 * v16);
      while (v36 < (v15 + 63) >> 6)
      {
        v39 = *v37++;
        v38 = v39;
        v35 += 64;
        ++v36;
        if (v39)
        {
          result = sub_224A3E204(v12, v42, 0);
          v15 = __clz(__rbit64(v38)) + v35;
          goto LABEL_4;
        }
      }

      result = sub_224A3E204(v12, v42, 0);
    }

LABEL_4:
    v13 = v49 + 1;
    v12 = v15;
    if (v49 + 1 == v31)
    {
      return v51;
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
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_224C164EC()
{
  v0 = type metadata accessor for HostDescriptorPredicate();
  __swift_allocate_value_buffer(v0, qword_281365218);
  v1 = __swift_project_value_buffer(v0, qword_281365218);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  *(v1 + v0[5]) = 3;
  *(v1 + v0[6]) = 3;
  v3 = v0[7];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = v0[8];
  v6 = sub_224DABE18();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = v0[9];
  v8 = sub_224DAC268();
  result = (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v10 = v1 + v0[10];
  *v10 = 0;
  *(v10 + 8) = 1;
  return result;
}

uint64_t sub_224C16688(uint64_t result, unint64_t a2, int a3, char a4, uint64_t a5)
{
  v7 = result;
  if ((a5 & 0xC000000000000001) == 0)
  {
    if (a4)
    {
      result = sub_224DAFAA8();
      if (result != *(a5 + 36))
      {
        __break(1u);
        goto LABEL_15;
      }

      sub_224DAFAB8();
      type metadata accessor for EmptyKey();
      swift_dynamicCast();
      a2 = sub_224B304F8();
      v10 = v9;

      if (v10)
      {
LABEL_12:
        v11 = *(a5 + 56);
        v8 = *(*(a5 + 48) + 8 * a2);
        *v7 = *(v11 + 8 * a2);

        return v8;
      }

      __break(1u);
    }

    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a4)
  {
    sub_224DAFAF8();
    type metadata accessor for EmptyKey();
    swift_dynamicCast();
    v8 = v12;
    sub_224DABF48();
    swift_dynamicCast();
    *v7 = v12;
    return v8;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_224C1683C(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = *(a5 + 48);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  (*(*(v9 - 8) + 16))(v7, v8 + *(*(v9 - 8) + 72) * a2, v9);
  v10 = *(*(a5 + 56) + 8 * a2);
}

uint64_t sub_224C16918(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a6 + 36) != a4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = *(a6 + 48);
  v11 = sub_224DAAF48();
  (*(*(v11 - 8) + 16))(v9, v10 + *(*(v11 - 8) + 72) * a3, v11);
  v12 = *(a6 + 56);
  v13 = sub_224DAB018();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v16 = v12 + *(v14 + 72) * a3;

  return v15(a2, v16, v13);
}

void sub_224C16A2C(void *a1, unint64_t a2, int a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_224DAFAF8();
      sub_224DAF538();
      swift_dynamicCast();
      type metadata accessor for ExtensionInfo(0);
      swift_dynamicCast();
      *a1 = v11;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_224DAFAA8() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_224DAFAB8();
  sub_224DAF538();
  swift_dynamicCast();
  a2 = sub_224A3E7EC(v11);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  *a1 = *(*(a5 + 56) + 8 * a2);
  v10;
}

void sub_224C16BE4(void *a1, unint64_t a2, int a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_224DAFAF8();
      sub_224DAF538();
      swift_dynamicCast();
      sub_224DAE9F8();
      swift_dynamicCast();
      *a1 = v13;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_224DAFAA8() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_224DAFAB8();
  sub_224DAF538();
  swift_dynamicCast();
  a2 = sub_224A3E7EC(v13);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  v11 = *(*(a5 + 56) + 8 * a2);
  *a1 = v11;
  v10;
  v12 = v11;
}

unint64_t sub_224C16D98()
{
  result = qword_281351828;
  if (!qword_281351828)
  {
    sub_224DAA428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281351828);
  }

  return result;
}

void sub_224C16DF0()
{
  sub_224C16F84(319, &qword_281351988, &qword_27D6F30E0, &unk_224DB2AD0);
  if (v0 <= 0x3F)
  {
    sub_224C1702C(319, &qword_281359058);
    if (v1 <= 0x3F)
    {
      sub_224C1702C(319, &qword_28135C2E8);
      if (v2 <= 0x3F)
      {
        sub_224C16F84(319, &qword_2813518B8, &unk_27D6F3920, &qword_224DB35B0);
        if (v3 <= 0x3F)
        {
          sub_224C16FD8(319, &qword_281350E68, MEMORY[0x277CF98E0]);
          if (v4 <= 0x3F)
          {
            sub_224C16FD8(319, &qword_281350E28, MEMORY[0x277CF9978]);
            if (v5 <= 0x3F)
            {
              sub_224C1702C(319, &qword_281350B50);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_224C16F84(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_224DAF728();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}