uint64_t sub_1B712F3F8()
{
  v9 = v0;
  if (qword_1EB982800 != -1)
  {
    swift_once();
  }

  v1 = sub_1B715DEE0();
  v0[36] = v1;
  v0[37] = __swift_project_value_buffer(v1, qword_1EB982808);
  v2 = sub_1B715DEC0();
  v3 = sub_1B715E550();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1B70B461C(0xD000000000000019, 0x80000001B716FFD0, &v8);
    _os_log_impl(&dword_1B70B0000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1B8CA2750](v5, -1, -1);
    MEMORY[0x1B8CA2750](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  v0[38] = v6;
  *v6 = v0;
  v6[1] = sub_1B712F5A8;

  return sub_1B71327DC();
}

uint64_t sub_1B712F5A8(uint64_t a1)
{
  v2 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B712F6A8, 0, 0);
}

uint64_t sub_1B712F6A8()
{
  v82 = v0;
  v1 = *(v0 + 312);
  if (!v1)
  {
    v12 = *(v0 + 200);
    v13 = 2;
LABEL_7:
    *v12 = v13;
LABEL_8:
    v15 = *(v0 + 272);
    v14 = *(v0 + 280);
    v17 = *(v0 + 256);
    v16 = *(v0 + 264);
    v18 = *(v0 + 248);
    v19 = *(v0 + 224);

    v20 = *(v0 + 8);

    return v20();
  }

  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 224);
  v5 = *(v0 + 208);
  v6 = *(v0 + 312);
  sub_1B712EB78(v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v7 = *(v0 + 296);
    sub_1B70B4B7C(*(v0 + 224), &qword_1EB983928, &qword_1B71662D0);
    v8 = sub_1B715DEC0();
    v9 = sub_1B715E550();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v81[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1B70B461C(0xD000000000000019, 0x80000001B716FFD0, v81);
      _os_log_impl(&dword_1B70B0000, v8, v9, "%s wakeup not needed", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1B8CA2750](v11, -1, -1);
      MEMORY[0x1B8CA2750](v10, -1, -1);
    }

    v12 = *(v0 + 200);
    v13 = 3;
    goto LABEL_7;
  }

  v22 = *(v0 + 280);
  v23 = *(v0 + 216);
  v24 = *(v0 + 208);
  (*(*(v0 + 240) + 32))(v22, *(v0 + 224), *(v0 + 232));
  sub_1B70F7DA4(v24 + OBJC_IVAR___FAFamilyCFUScheduler_factory, v0 + 96);
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  v26 = v24;
  sub_1B712E708(v0 + 96, v22, &unk_1B7167BB8, v25, v0 + 56);

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  if (!*(v0 + 80))
  {
    v70 = *(v0 + 200);
    (*(*(v0 + 240) + 8))(*(v0 + 280), *(v0 + 232));

    sub_1B70B4B7C(v0 + 56, &qword_1EB983C28, &qword_1B7167B80);
    *v70 = 4;
    goto LABEL_8;
  }

  v27 = *(v0 + 208);
  sub_1B70B9AD4((v0 + 56), v0 + 16);
  sub_1B70F7DA4(v0 + 16, v0 + 136);
  v28 = OBJC_IVAR___FAFamilyCFUScheduler_scheduler;
  swift_beginAccess();
  sub_1B711C738(v0 + 136, v27 + v28);
  swift_endAccess();
  v29 = *(v0 + 40);
  v30 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v29);
  (*(v30 + 24))(v29, v30);
  v31 = *(v0 + 40);
  v32 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v31);
  (*(v32 + 24))(v31, v32);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = *(AssociatedConformanceWitness + 24);
  v35 = swift_checkMetadataState();
  v34(v76, v35, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  v74 = v76[0];
  v36 = *(v0 + 40);
  v37 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v36);
  (*(v37 + 24))(v36, v37);
  swift_getAssociatedTypeWitness();
  v38 = swift_getAssociatedConformanceWitness();
  v39 = *(v38 + 24);
  v40 = swift_checkMetadataState();
  v39(&v77, v40, v38);
  swift_unknownObjectRelease();
  v73 = BYTE1(v77);
  v41 = *(v0 + 40);
  v42 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v41);
  (*(v42 + 24))(v41, v42);
  swift_getAssociatedTypeWitness();
  v43 = swift_getAssociatedConformanceWitness();
  v44 = *(v43 + 24);
  v45 = swift_checkMetadataState();
  v44(v78, v45, v43);
  swift_unknownObjectRelease();
  v72 = v78[1];
  v46 = *(v0 + 40);
  v47 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v46);
  (*(v47 + 24))(v46, v47);
  swift_getAssociatedTypeWitness();
  v48 = swift_getAssociatedConformanceWitness();
  v49 = *(v48 + 24);
  v50 = swift_checkMetadataState();
  v49(v79, v50, v48);
  swift_unknownObjectRelease();
  v71 = v79[2];
  v51 = *(v0 + 40);
  v52 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v51);
  (*(v52 + 24))(v51, v52);
  swift_getAssociatedTypeWitness();
  v53 = swift_getAssociatedConformanceWitness();
  v54 = *(v53 + 24);
  v55 = swift_checkMetadataState();
  v54(v80, v55, v53);
  swift_unknownObjectRelease();
  v56 = v80[3];
  v57 = *(v0 + 40);
  v58 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v57);
  (*(v58 + 24))(v57, v58);
  swift_getAssociatedTypeWitness();
  v59 = swift_getAssociatedConformanceWitness();
  v60 = *(v59 + 24);
  v61 = swift_checkMetadataState();
  v60(v81, v61, v59);
  swift_unknownObjectRelease();
  LOBYTE(v81[0]) = v74;
  BYTE1(v81[0]) = v73;
  v81[1] = v72;
  v81[2] = v71;
  v81[3] = v56;
  swift_getAssociatedTypeWitness();
  v62 = swift_getAssociatedConformanceWitness();
  v63 = *(v62 + 32);
  v64 = swift_checkMetadataState();
  v63(v81, v64, v62);
  swift_unknownObjectRelease();
  v65 = *(v0 + 40);
  v66 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v65);
  v67 = *(v66 + 32);
  v75 = (v67 + *v67);
  v68 = v67[1];
  v69 = swift_task_alloc();
  *(v0 + 320) = v69;
  *v69 = v0;
  v69[1] = sub_1B712FF88;

  return v75(v65, v66);
}

uint64_t sub_1B712FF88()
{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_1B71304D4;
  }

  else
  {
    v3 = sub_1B713009C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B713009C()
{
  v51 = v0;
  v1 = *(v0 + 272);
  v46 = *(v0 + 280);
  v48 = *(v0 + 296);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v43 = *(v0 + 256);
  v44 = *(v0 + 248);
  v4 = *(v0 + 232);
  sub_1B715DC70();
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
  (*(v5 + 24))(v6, v5);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(AssociatedConformanceWitness + 24);
  v9 = swift_checkMetadataState();
  v8(&v50, v9, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  sub_1B715DC10();
  v10 = *(v3 + 16);
  v10(v43, v2, v4);
  v10(v44, v46, v4);
  v11 = sub_1B715DEC0();
  v49 = sub_1B715E570();
  v12 = os_log_type_enabled(v11, v49);
  v13 = *(v0 + 312);
  v15 = *(v0 + 272);
  v14 = *(v0 + 280);
  v16 = *(v0 + 256);
  v17 = *(v0 + 264);
  v19 = *(v0 + 240);
  v18 = *(v0 + 248);
  v20 = *(v0 + 232);
  if (v12)
  {
    v47 = *(v0 + 264);
    v21 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v50 = v42;
    *v21 = 136315394;
    sub_1B710C884(&qword_1EB982908);
    log = v11;
    v45 = v14;
    v22 = sub_1B715EAE0();
    v41 = v13;
    v24 = v23;
    v25 = *(v19 + 8);
    v25(v16, v20);
    v26 = sub_1B70B461C(v22, v24, &v50);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    v27 = sub_1B715EAE0();
    v29 = v28;
    v25(v18, v20);
    v30 = sub_1B70B461C(v27, v29, &v50);

    *(v21 + 14) = v30;
    _os_log_impl(&dword_1B70B0000, log, v49, "Schedule CFU signal at %s for %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CA2750](v42, -1, -1);
    MEMORY[0x1B8CA2750](v21, -1, -1);

    v25(v47, v20);
    v25(v15, v20);
    v25(v45, v20);
  }

  else
  {

    v31 = *(v19 + 8);
    v31(v18, v20);
    v31(v16, v20);
    v31(v17, v20);
    v31(v15, v20);
    v31(v14, v20);
  }

  **(v0 + 200) = 0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v33 = *(v0 + 272);
  v32 = *(v0 + 280);
  v35 = *(v0 + 256);
  v34 = *(v0 + 264);
  v36 = *(v0 + 248);
  v37 = *(v0 + 224);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1B71304D4()
{
  if (qword_1ED7CFA80 != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[35];
  v4 = v0[29];
  v5 = v0[30];
  v6 = v0[25];
  __swift_project_value_buffer(v0[36], qword_1ED7CFA88);
  v7 = v1;
  sub_1B7157F10(v1);

  (*(v5 + 8))(v3, v4);
  *v6 = 1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v9 = v0[34];
  v8 = v0[35];
  v11 = v0[32];
  v10 = v0[33];
  v12 = v0[31];
  v13 = v0[28];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B713063C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B71306D4;

  return sub_1B71307E4(v0 + 24);
}

uint64_t sub_1B71306D4()
{
  v1 = *(*v0 + 16);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B71307D0, 0, 0);
}

uint64_t sub_1B71307E4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983928, &qword_1B71662D0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v4 = sub_1B715DC80();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7130930, 0, 0);
}

uint64_t sub_1B7130930()
{
  v9 = v0;
  if (qword_1EB982800 != -1)
  {
    swift_once();
  }

  v1 = sub_1B715DEE0();
  *(v0 + 120) = __swift_project_value_buffer(v1, qword_1EB982808);
  v2 = sub_1B715DEC0();
  v3 = sub_1B715E550();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1B70B461C(0x6F466B636568635FLL, 0xEE00292855464372, &v8);
    _os_log_impl(&dword_1B70B0000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1B8CA2750](v5, -1, -1);
    MEMORY[0x1B8CA2750](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = sub_1B7130AE4;

  return sub_1B71327DC();
}

uint64_t sub_1B7130AE4(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B7130BE4, 0, 0);
}

uint64_t sub_1B7130BE4()
{
  v112 = v0;
  v1 = *(v0 + 136);
  if (!v1)
  {
    v13 = 2;
LABEL_24:
    **(v0 + 16) = v13;
    v73 = *(v0 + 104);
    v72 = *(v0 + 112);
    v75 = *(v0 + 88);
    v74 = *(v0 + 96);
    v77 = *(v0 + 72);
    v76 = *(v0 + 80);
    v79 = *(v0 + 40);
    v78 = *(v0 + 48);
    v80 = *(v0 + 32);

    v81 = *(v0 + 8);

    return v81();
  }

  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = *(v0 + 136);
  sub_1B712EB78(v4);
  v7 = *(v3 + 48);
  if (v7(v4, 1, v2) == 1)
  {
    v8 = *(v0 + 120);
    sub_1B70B4B7C(*(v0 + 48), &qword_1EB983928, &qword_1B71662D0);
    v9 = sub_1B715DEC0();
    v10 = sub_1B715E570();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v111 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1B70B461C(0x6F466B636568635FLL, 0xEE00292855464372, &v111);
      _os_log_impl(&dword_1B70B0000, v9, v10, "%s No longer need a wakeup it seems", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1B8CA2750](v12, -1, -1);
      MEMORY[0x1B8CA2750](v11, -1, -1);
    }

    v13 = 3;
    goto LABEL_24;
  }

  v14 = *(v0 + 104);
  v15 = *(v0 + 64);
  v16 = *(v15 + 32);
  v16(*(v0 + 112), *(v0 + 48), *(v0 + 56));
  sub_1B715DC70();
  sub_1B710C884(&qword_1EB983930);
  v17 = sub_1B715E030();
  v18 = *(v15 + 16);
  v19 = *(v0 + 120);
  v20 = *(v0 + 104);
  v21 = *(v0 + 56);
  if ((v17 & 1) == 0)
  {
    v105 = v16;
    v18(*(v0 + 96), v20, v21);
    v36 = sub_1B715DEC0();
    v106 = sub_1B715E550();
    log = v36;
    v37 = os_log_type_enabled(v36, v106);
    v38 = *(v0 + 96);
    v40 = *(v0 + 56);
    v39 = *(v0 + 64);
    if (v37)
    {
      buf = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v111 = v103;
      *buf = 136315138;
      sub_1B710C884(&qword_1EB982908);
      v104 = v18;
      v41 = sub_1B715EAE0();
      v43 = v42;
      v44 = v40;
      v45 = *(v39 + 8);
      v45(v38, v44);
      v46 = v41;
      v18 = v104;
      v47 = sub_1B70B461C(v46, v43, &v111);

      *(buf + 4) = v47;
      _os_log_impl(&dword_1B70B0000, log, v106, "Signal CFU: %s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v103);
      MEMORY[0x1B8CA2750](v103, -1, -1);
      MEMORY[0x1B8CA2750](buf, -1, -1);
    }

    else
    {

      v53 = v40;
      v45 = *(v39 + 8);
      v45(v38, v53);
    }

    v54 = *(v0 + 56);
    v55 = *(v0 + 64);
    v56 = *(v0 + 40);
    v18(v56, *(v0 + 112), v54);
    (*(v55 + 56))(v56, 0, 1, v54);
    _s12FamilyCircle18CoreFollowupSenderO13sendInviteCFU14invitationDatey10Foundation0J0VSg_tFZ_0(v56);
    sub_1B70B4B7C(v56, &qword_1EB983928, &qword_1B71662D0);
    v57 = [v1 me];
    if (v57 && (v58 = v57, v59 = [v57 isOrganizer], v58, v59))
    {
      v60 = *(v0 + 56);
      v61 = *(v0 + 32);
      FAFamilyCircle.oldestSentInviteSignalDate()(v61);
      v62 = v7(v61, 1, v60);
      v63 = *(v0 + 56);
      v64 = *(v0 + 32);
      if (v62 == 1)
      {
        v66 = *(v0 + 104);
        v65 = *(v0 + 112);
        v67 = *(v0 + 64);

        v45(v66, v63);
        v45(v65, v63);
        sub_1B70B4B7C(v64, &qword_1EB983928, &qword_1B71662D0);
LABEL_23:
        v13 = 5;
        goto LABEL_24;
      }

      v82 = *(v0 + 104);
      v105(*(v0 + 88), *(v0 + 32), *(v0 + 56));
      v83 = sub_1B715E030();
      v69 = *(v0 + 104);
      v70 = *(v0 + 56);
      if ((v83 & 1) == 0)
      {
        v86 = *(v0 + 120);
        v18(*(v0 + 80), *(v0 + 104), *(v0 + 56));
        v87 = sub_1B715DEC0();
        v88 = sub_1B715E570();
        v89 = os_log_type_enabled(v87, v88);
        v90 = *(v0 + 80);
        v92 = *(v0 + 56);
        v91 = *(v0 + 64);
        if (v89)
        {
          v93 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v111 = v110;
          *v93 = 136315138;
          sub_1B710C884(&qword_1EB982908);
          loga = v88;
          v94 = sub_1B715EAE0();
          v96 = v95;
          v45(v90, v92);
          v97 = sub_1B70B461C(v94, v96, &v111);

          *(v93 + 4) = v97;
          _os_log_impl(&dword_1B70B0000, v87, loga, "Wakeup for familyCircleUI for row badging check %s", v93, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v110);
          MEMORY[0x1B8CA2750](v110, -1, -1);
          MEMORY[0x1B8CA2750](v93, -1, -1);
        }

        else
        {

          v45(v90, v92);
        }

        v99 = *(v0 + 104);
        v98 = *(v0 + 112);
        v100 = *(v0 + 88);
        v101 = *(v0 + 56);
        [objc_opt_self() broadcastFamilyChangedNotification];

        v45(v100, v101);
        v45(v99, v101);
        v45(v98, v101);
        goto LABEL_23;
      }

      v68 = *(v0 + 112);
      v84 = *(v0 + 88);
      v85 = *(v0 + 64);

      v45(v84, v70);
    }

    else
    {
      v69 = *(v0 + 104);
      v68 = *(v0 + 112);
      v70 = *(v0 + 56);
      v71 = *(v0 + 64);
    }

    v45(v69, v70);
    v45(v68, v70);
    goto LABEL_23;
  }

  v18(*(v0 + 72), v20, v21);
  v22 = sub_1B715DEC0();
  v23 = sub_1B715E570();
  v24 = os_log_type_enabled(v22, v23);
  v26 = *(v0 + 64);
  v25 = *(v0 + 72);
  v27 = *(v0 + 56);
  if (v24)
  {
    v28 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v111 = v109;
    *v28 = 136315138;
    sub_1B710C884(&qword_1EB982908);
    v29 = sub_1B715EAE0();
    v31 = v30;
    v34 = *(v26 + 8);
    v33 = v26 + 8;
    v32 = v34;
    v34(v25, v27);
    v35 = sub_1B70B461C(v29, v31, &v111);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_1B70B0000, v22, v23, "Not time for CFU: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v109);
    MEMORY[0x1B8CA2750](v109, -1, -1);
    MEMORY[0x1B8CA2750](v28, -1, -1);
  }

  else
  {

    v48 = *(v26 + 8);
    v33 = v26 + 8;
    v32 = v48;
    v48(v25, v27);
  }

  *(v0 + 144) = v33;
  *(v0 + 152) = v32;
  v49 = swift_task_alloc();
  *(v0 + 160) = v49;
  *v49 = v0;
  v49[1] = sub_1B7131548;
  v50 = *(v0 + 16);
  v51 = *(v0 + 24);

  return sub_1B712F2C4(v50);
}

uint64_t sub_1B7131548()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B7131644, 0, 0);
}

uint64_t sub_1B7131644()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 56);

  v1(v3, v5);
  v1(v4, v5);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  v11 = *(v0 + 72);
  v10 = *(v0 + 80);
  v13 = *(v0 + 40);
  v12 = *(v0 + 48);
  v14 = *(v0 + 32);

  v15 = *(v0 + 8);

  return v15();
}

id FAFamilyCFUScheduler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FAFamilyCFUScheduler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B7131874(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9839A0, &unk_1B716A7F0);
  v72 = *(v2 - 8);
  v73 = v2;
  v3 = *(v72 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v70 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v71 = &v67 - v6;
  v7 = sub_1B715DCF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983928, &qword_1B71662D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v69 = &v67 - v14;
  v76 = sub_1B715DD00();
  v15 = *(v76 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v76);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v67 - v20;
  v22 = sub_1B715DC80();
  v75 = *(v22 - 8);
  v23 = *(v75 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v74 = &v67 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v67 - v29;
  sub_1B715DC70();
  v77 = v30;
  if (sub_1B715DC00())
  {
    v31 = v75;
    if (qword_1EB982800 != -1)
    {
      swift_once();
    }

    v32 = sub_1B715DEE0();
    __swift_project_value_buffer(v32, qword_1EB982808);
    v33 = sub_1B715DEC0();
    v34 = sub_1B715E570();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v77;
    if (v35)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v78 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_1B70B461C(0xD000000000000012, 0x80000001B7170060, &v78);
      _os_log_impl(&dword_1B70B0000, v33, v34, "%s 'real soon'", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1B8CA2750](v38, -1, -1);
      MEMORY[0x1B8CA2750](v37, -1, -1);
    }

    (*(v31 + 8))(v36, v22);
    return 120;
  }

  v68 = v21;
  sub_1B715DCE0();
  sub_1B715DCE0();
  (*(v8 + 104))(v11, *MEMORY[0x1E6969A48], v7);
  v40 = v69;
  v41 = a1;
  sub_1B715DCD0();
  (*(v8 + 8))(v11, v7);
  v42 = *(v15 + 8);
  v42(v19, v76);
  v43 = v75;
  v44 = *(v75 + 48);
  if (v44(v40, 1, v22) == 1)
  {
    (*(v43 + 16))(v26, v41, v22);
    v45 = v44(v40, 1, v22);
    v46 = v77;
    if (v45 != 1)
    {
      sub_1B70B4B7C(v40, &qword_1EB983928, &qword_1B71662D0);
    }
  }

  else
  {
    (*(v43 + 32))(v26, v40, v22);
    v46 = v77;
  }

  v47 = v74;
  v48 = v68;
  sub_1B715DCC0();
  v49 = *(v43 + 8);
  v49(v26, v22);
  v42(v48, v76);
  sub_1B715DB60();
  v50 = v46;
  sub_1B715DB60();
  v51 = objc_opt_self();
  v52 = [v51 milliseconds];
  sub_1B71332D8();
  v53 = v70;
  sub_1B715D860();
  v54 = [v51 seconds];
  v55 = v71;
  v56 = v73;
  sub_1B715D880();

  v57 = *(v72 + 8);
  v57(v53, v56);
  sub_1B715D870();
  v59 = v58;
  v60 = v58;
  v57(v55, v56);
  if ((*&v60 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v59 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v59 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (qword_1EB982800 != -1)
  {
LABEL_22:
    swift_once();
  }

  v39 = v59;
  v61 = sub_1B715DEE0();
  __swift_project_value_buffer(v61, qword_1EB982808);
  v62 = sub_1B715DEC0();
  v63 = sub_1B715E570();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v78 = v65;
    *v64 = 136315394;
    *(v64 + 4) = sub_1B70B461C(0xD000000000000012, 0x80000001B7170060, &v78);
    *(v64 + 12) = 2048;
    *(v64 + 14) = v39;
    _os_log_impl(&dword_1B70B0000, v62, v63, "%s computed %lld", v64, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v65);
    MEMORY[0x1B8CA2750](v65, -1, -1);
    MEMORY[0x1B8CA2750](v64, -1, -1);
  }

  v49(v47, v22);
  v49(v50, v22);
  return v39;
}

uint64_t (*sub_1B71320B8())(uint64_t a1)
{
  v1 = v0;
  v2 = *v0;
  if (qword_1EB982800 != -1)
  {
    swift_once();
  }

  v3 = sub_1B715DEE0();
  __swift_project_value_buffer(v3, qword_1EB982808);
  v4 = sub_1B715DEC0();
  v5 = sub_1B715E550();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1B70B461C(0xD000000000000011, 0x80000001B716E5D0, &v12);
    _os_log_impl(&dword_1B70B0000, v4, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B8CA2750](v7, -1, -1);
    MEMORY[0x1B8CA2750](v6, -1, -1);
  }

  v9 = v1[2];
  v8 = v1[3];
  v10 = swift_allocObject();
  v10[2] = *(v2 + 80);
  v10[3] = *(v2 + 88);
  v10[4] = v9;
  v10[5] = v8;

  return sub_1B7133018;
}

uint64_t sub_1B7132278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9833F8, &qword_1B7164C30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v21 - v15;
  v17 = sub_1B715E450();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v12, a1, a4);
  v18 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  *(v19 + 6) = a2;
  *(v19 + 7) = a3;
  (*(v10 + 32))(&v19[v18], v12, a4);

  sub_1B71219AC(0, 0, v16, &unk_1B7167B78, v19);
}

uint64_t sub_1B7132464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B713248C, 0, 0);
}

uint64_t sub_1B713248C()
{
  v12 = v0;
  if (qword_1EB982800 != -1)
  {
    swift_once();
  }

  v1 = sub_1B715DEE0();
  __swift_project_value_buffer(v1, qword_1EB982808);
  v2 = sub_1B715DEC0();
  v3 = sub_1B715E550();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1B70B461C(0xD000000000000011, 0x80000001B716E5D0, &v11);
    _os_log_impl(&dword_1B70B0000, v2, v3, "%s called block", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1B8CA2750](v5, -1, -1);
    MEMORY[0x1B8CA2750](v4, -1, -1);
  }

  v10 = (v0[2] + *v0[2]);
  v6 = *(v0[2] + 4);
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1B70E46C4;
  v8 = v0[3];

  return v10();
}

uint64_t sub_1B7132694()
{
  v1 = *(v0 + 24);

  return v0;
}

id sub_1B71326F4()
{
  v8[3] = &type metadata for SystemBackgroundRequestFactory;
  v8[4] = &protocol witness table for SystemBackgroundRequestFactory;
  v7[3] = &type metadata for CFUSchedulerFamilyProvider;
  v7[4] = &off_1F2F2A260;
  v0 = type metadata accessor for FAFamilyCFUScheduler();
  v1 = objc_allocWithZone(v0);
  __swift_mutable_project_boxed_opaque_existential_1(v7, &type metadata for CFUSchedulerFamilyProvider);
  v6[3] = &type metadata for CFUSchedulerFamilyProvider;
  v6[4] = &off_1F2F2A260;
  v2 = &v1[OBJC_IVAR___FAFamilyCFUScheduler_scheduler];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  sub_1B70F7DA4(v8, &v1[OBJC_IVAR___FAFamilyCFUScheduler_factory]);
  sub_1B70F7DA4(v6, &v1[OBJC_IVAR___FAFamilyCFUScheduler_familyProvider]);
  v5.receiver = v1;
  v5.super_class = v0;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v8);
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v3;
}

uint64_t sub_1B71327F8()
{
  v1 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
  v0[19] = v1;
  [v1 setCachePolicy_];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B7132940;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983B28, &unk_1B7166958);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B7129764;
  v0[13] = &block_descriptor_9;
  v0[14] = v2;
  [v1 startRequestWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7132940()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_1B7132AB4;
  }

  else
  {
    v3 = sub_1B7132A50;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7132A50()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B7132AB4()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_willThrow();

  if (qword_1EB982800 != -1)
  {
    swift_once();
  }

  v3 = v0[20];
  v4 = sub_1B715DEE0();
  __swift_project_value_buffer(v4, qword_1EB982808);
  v5 = v3;
  sub_1B7157F10(v3);

  v6 = v0[1];

  return v6(0);
}

void _s12FamilyCircle20FAFamilyCFUSchedulerC22scheduleWakeupIfNeededyyFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9833F8, &qword_1B7164C30);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v14 = 8;
  if (_s12FamilyCircle0A12FeatureFlagsO7enabledySbACFZ_0(&v14))
  {
    v4 = sub_1B715E450();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    sub_1B70FA6F4(0, 0, v3, &unk_1B7167B90, v5);
  }

  else
  {
    if (qword_1EB982800 != -1)
    {
      swift_once();
    }

    v6 = sub_1B715DEE0();
    __swift_project_value_buffer(v6, qword_1EB982808);
    v12 = sub_1B715DEC0();
    v7 = sub_1B715E570();
    if (os_log_type_enabled(v12, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1B70B461C(0xD000000000000018, 0x80000001B716FFB0, &v13);
      _os_log_impl(&dword_1B70B0000, v12, v7, "%s Required FF not set", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1B8CA2750](v9, -1, -1);
      MEMORY[0x1B8CA2750](v8, -1, -1);
    }

    else
    {
      v10 = v12;
    }
  }
}

unint64_t sub_1B7132DF8()
{
  result = qword_1EB983F00;
  if (!qword_1EB983F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB983F00);
  }

  return result;
}

uint64_t sub_1B7132E4C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B70F4D0C;

  return v9(a1, a2);
}

uint64_t sub_1B7133024(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B70E5228;

  return sub_1B7132464(a1, v7, v8, v9, v10, v1 + v6, v4, v5);
}

uint64_t sub_1B7133134(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B70E5228;

  return sub_1B712F0E4(a1);
}

uint64_t sub_1B71331E0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B70E54FC;

  return sub_1B713063C();
}

unint64_t sub_1B7133274()
{
  result = qword_1EB983FB8;
  if (!qword_1EB983FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB983FB0, &unk_1B7167BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB983FB8);
  }

  return result;
}

unint64_t sub_1B71332D8()
{
  result = qword_1EB983FC0;
  if (!qword_1EB983FC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB983FC0);
  }

  return result;
}

uint64_t FamilySettings.XPC.UpdateValueMessage.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FamilySettings.XPC.UpdateValueMessage.altDSID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FamilySettings.XPC.UpdateValueMessage.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 48);
  *(a1 + 16) = v4;
  return sub_1B71333C4(v2, v3, v4);
}

uint64_t sub_1B71333C4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B71333D8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1B71333D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}

__n128 FamilySettings.XPC.UpdateValueMessage.init(key:altDSID:value:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X4>, __n128 *a6@<X8>)
{
  v6 = a5[1].n128_u8[0];
  a6->n128_u64[0] = a1;
  a6->n128_u64[1] = a2;
  a6[1].n128_u64[0] = a3;
  a6[1].n128_u64[1] = a4;
  result = *a5;
  a6[2] = *a5;
  a6[3].n128_u8[0] = v6;
  return result;
}

uint64_t sub_1B713340C()
{
  v1 = 0x44495344746C61;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1B713345C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7136214(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7133484(uint64_t a1)
{
  v2 = sub_1B7133724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B71334C0(uint64_t a1)
{
  v2 = sub_1B7133724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FamilySettings.XPC.UpdateValueMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983FC8, &qword_1B7167C30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v20 = v1[3];
  v21 = v10;
  v11 = v1[4];
  v18 = v1[5];
  v19 = v11;
  v26 = *(v1 + 48);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7133724();
  sub_1B715ECE0();
  LOBYTE(v23) = 0;
  v13 = v22;
  sub_1B715EA60();
  if (!v13)
  {
    v15 = v26;
    v17 = v18;
    v16 = v19;
    LOBYTE(v23) = 1;
    sub_1B715EA60();
    v23 = v16;
    v24 = v17;
    v25 = v15;
    v27 = 2;
    sub_1B71333C4(v16, v17, v15);
    sub_1B7133778();
    sub_1B715EA50();
    sub_1B71337CC(v23, v24, v25);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1B7133724()
{
  result = qword_1EB983FD0;
  if (!qword_1EB983FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB983FD0);
  }

  return result;
}

unint64_t sub_1B7133778()
{
  result = qword_1EB983FD8;
  if (!qword_1EB983FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB983FD8);
  }

  return result;
}

uint64_t sub_1B71337CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B71337E0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1B71337E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}

uint64_t FamilySettings.XPC.UpdateValueMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983FE0, &qword_1B7167C38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7133724();
  sub_1B715ECC0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v23) = 0;
  v11 = sub_1B715E9C0();
  v13 = v12;
  v22 = v11;
  LOBYTE(v23) = 1;
  v20 = sub_1B715E9C0();
  v21 = v14;
  v26 = 2;
  sub_1B7133AA0();
  sub_1B715E9B0();
  (*(v6 + 8))(v9, v5);
  v15 = v23;
  v16 = v24;
  v17 = v25;
  v18 = v21;
  *a2 = v22;
  *(a2 + 8) = v13;
  *(a2 + 16) = v20;
  *(a2 + 24) = v18;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = v17;

  sub_1B71333C4(v15, v16, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_1B71337CC(v15, v16, v17);
}

unint64_t sub_1B7133AA0()
{
  result = qword_1EB983FE8;
  if (!qword_1EB983FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB983FE8);
  }

  return result;
}

uint64_t sub_1B7133B34(uint64_t a1)
{
  v2 = sub_1B7133BF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7133B70(uint64_t a1)
{
  v2 = sub_1B7133BF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B7133BF0()
{
  result = qword_1EB983FF8;
  if (!qword_1EB983FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB983FF8);
  }

  return result;
}

uint64_t FamilySettings.XPC.ShareSettingsMessage.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FamilySettings.XPC.ShareSettingsMessage.altDSID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FamilySettings.XPC.ShareSettingsMessage.recordZone.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t FamilySettings.XPC.ShareSettingsMessage.init(key:altDSID:recordZone:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_1B7133D28()
{
  v1 = 0x44495344746C61;
  if (*v0 != 1)
  {
    v1 = 0x6F5A64726F636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1B7133D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7136328(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7133DA8(uint64_t a1)
{
  v2 = sub_1B7133FE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7133DE4(uint64_t a1)
{
  v2 = sub_1B7133FE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FamilySettings.XPC.ShareSettingsMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984000, &qword_1B7167C48);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7133FE4();
  sub_1B715ECE0();
  v18 = 0;
  v13 = v15[5];
  sub_1B715EA60();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_1B715EA60();
  v16 = 2;
  sub_1B715EA60();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1B7133FE4()
{
  result = qword_1EB984008;
  if (!qword_1EB984008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984008);
  }

  return result;
}

uint64_t FamilySettings.XPC.ShareSettingsMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984010, &qword_1B7167C50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7133FE4();
  sub_1B715ECC0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_1B715E9C0();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_1B715E9C0();
  v23 = v14;
  v25 = 2;
  v15 = sub_1B715E9C0();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B71342E4(uint64_t a1)
{
  v2 = sub_1B71344C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7134320(uint64_t a1)
{
  v2 = sub_1B71344C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B71343A0(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1B715ECE0();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1B71344C0()
{
  result = qword_1EB984020;
  if (!qword_1EB984020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984020);
  }

  return result;
}

uint64_t sub_1B7134580(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1B715ECE0();
  return (*(v9 + 8))(v12, v8);
}

uint64_t FamilySettings.XPC.ReadValueMessage.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FamilySettings.XPC.ReadValueMessage.altDSID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FamilySettings.XPC.ReadValueMessage.init(key:altDSID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1B713470C()
{
  if (*v0)
  {
    result = 0x44495344746C61;
  }

  else
  {
    result = 7955819;
  }

  *v0;
  return result;
}

uint64_t sub_1B7134740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_1B715EB10() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B715EB10();

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

uint64_t sub_1B713481C(uint64_t a1)
{
  v2 = sub_1B7134A28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7134858(uint64_t a1)
{
  v2 = sub_1B7134A28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FamilySettings.XPC.ReadValueMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984028, &qword_1B7167C60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7134A28();
  sub_1B715ECE0();
  v16 = 0;
  v12 = v14[3];
  sub_1B715EA60();
  if (!v12)
  {
    v15 = 1;
    sub_1B715EA60();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1B7134A28()
{
  result = qword_1EB984030;
  if (!qword_1EB984030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984030);
  }

  return result;
}

uint64_t FamilySettings.XPC.ReadValueMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984038, &qword_1B7167C68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7134A28();
  sub_1B715ECC0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_1B715E9C0();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1B715E9C0();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B7134CB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984040, &qword_1B7167C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7134D30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984040, &qword_1B7167C70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7134DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001B71700D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B715EB10();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1B7134E50(uint64_t a1)
{
  v2 = sub_1B7135040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7134E8C(uint64_t a1)
{
  v2 = sub_1B7135040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FamilySettings.XPC.ReadValueResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984048, &qword_1B7167C78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7135040();
  sub_1B715ECE0();
  type metadata accessor for FamilySettings.ValueWithMetadata();
  sub_1B7135794(&qword_1EB984058, type metadata accessor for FamilySettings.ValueWithMetadata);
  sub_1B715EA50();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1B7135040()
{
  result = qword_1EB984050;
  if (!qword_1EB984050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984050);
  }

  return result;
}

uint64_t FamilySettings.XPC.ReadValueResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984040, &qword_1B7167C70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984060, &qword_1B7167C80);
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  ValueResponse = type metadata accessor for FamilySettings.XPC.ReadValueResponse();
  v13 = *(*(ValueResponse - 8) + 64);
  MEMORY[0x1EEE9AC00](ValueResponse - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7135040();
  sub_1B715ECC0();
  if (!v2)
  {
    v17 = v20;
    type metadata accessor for FamilySettings.ValueWithMetadata();
    sub_1B7135794(&qword_1EB984068, type metadata accessor for FamilySettings.ValueWithMetadata);
    sub_1B715E9B0();
    (*(v21 + 8))(v11, v8);
    sub_1B7134D30(v7, v15);
    sub_1B7135330(v15, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for FamilySettings.XPC.ReadValueResponse()
{
  result = qword_1EB9840A0;
  if (!qword_1EB9840A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7135330(uint64_t a1, uint64_t a2)
{
  ValueResponse = type metadata accessor for FamilySettings.XPC.ReadValueResponse();
  (*(*(ValueResponse - 8) + 32))(a2, a1, ValueResponse);
  return a2;
}

unint64_t sub_1B7135398()
{
  result = qword_1EB9826F0;
  if (!qword_1EB9826F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9826F0);
  }

  return result;
}

unint64_t sub_1B71353F0()
{
  result = qword_1EB9826F8;
  if (!qword_1EB9826F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9826F8);
  }

  return result;
}

unint64_t sub_1B7135448()
{
  result = qword_1EB984070;
  if (!qword_1EB984070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984070);
  }

  return result;
}

unint64_t sub_1B71354A0()
{
  result = qword_1EB984078;
  if (!qword_1EB984078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984078);
  }

  return result;
}

unint64_t sub_1B71354F8()
{
  result = qword_1EB982710;
  if (!qword_1EB982710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB982710);
  }

  return result;
}

unint64_t sub_1B7135550()
{
  result = qword_1EB982718;
  if (!qword_1EB982718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB982718);
  }

  return result;
}

unint64_t sub_1B71355A8()
{
  result = qword_1EB984080;
  if (!qword_1EB984080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984080);
  }

  return result;
}

unint64_t sub_1B7135600()
{
  result = qword_1EB984088;
  if (!qword_1EB984088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984088);
  }

  return result;
}

unint64_t sub_1B7135658()
{
  result = qword_1EB982700;
  if (!qword_1EB982700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB982700);
  }

  return result;
}

unint64_t sub_1B71356B0()
{
  result = qword_1EB982708;
  if (!qword_1EB982708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB982708);
  }

  return result;
}

uint64_t sub_1B7135794(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B71357F4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984048, &qword_1B7167C78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7135040();
  sub_1B715ECE0();
  type metadata accessor for FamilySettings.ValueWithMetadata();
  sub_1B7135794(&qword_1EB984058, type metadata accessor for FamilySettings.ValueWithMetadata);
  sub_1B715EA50();
  return (*(v3 + 8))(v6, v2);
}

uint64_t get_enum_tag_for_layout_string_12FamilyCircle0A8SettingsC5ValueOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
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

uint64_t sub_1B71359B8(uint64_t a1, int a2)
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

uint64_t sub_1B7135A00(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1B7135A84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B7135ACC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B7135B70()
{
  sub_1B7135BDC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B7135BDC()
{
  if (!qword_1EB9840B0)
  {
    type metadata accessor for FamilySettings.ValueWithMetadata();
    v0 = sub_1B715E6D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB9840B0);
    }
  }
}

unint64_t sub_1B7135C98()
{
  result = qword_1EB9840B8;
  if (!qword_1EB9840B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9840B8);
  }

  return result;
}

unint64_t sub_1B7135CF0()
{
  result = qword_1EB9840C0;
  if (!qword_1EB9840C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9840C0);
  }

  return result;
}

unint64_t sub_1B7135D48()
{
  result = qword_1EB9840C8;
  if (!qword_1EB9840C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9840C8);
  }

  return result;
}

unint64_t sub_1B7135DA0()
{
  result = qword_1EB9840D0;
  if (!qword_1EB9840D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9840D0);
  }

  return result;
}

unint64_t sub_1B7135DF8()
{
  result = qword_1EB9840D8;
  if (!qword_1EB9840D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9840D8);
  }

  return result;
}

unint64_t sub_1B7135E50()
{
  result = qword_1EB9840E0;
  if (!qword_1EB9840E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9840E0);
  }

  return result;
}

unint64_t sub_1B7135EA8()
{
  result = qword_1EB9840E8;
  if (!qword_1EB9840E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9840E8);
  }

  return result;
}

unint64_t sub_1B7135F00()
{
  result = qword_1EB9840F0;
  if (!qword_1EB9840F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9840F0);
  }

  return result;
}

unint64_t sub_1B7135F58()
{
  result = qword_1EB9840F8;
  if (!qword_1EB9840F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9840F8);
  }

  return result;
}

unint64_t sub_1B7135FB0()
{
  result = qword_1EB984100;
  if (!qword_1EB984100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984100);
  }

  return result;
}

unint64_t sub_1B7136008()
{
  result = qword_1EB984108;
  if (!qword_1EB984108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984108);
  }

  return result;
}

unint64_t sub_1B7136060()
{
  result = qword_1EB984110;
  if (!qword_1EB984110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984110);
  }

  return result;
}

unint64_t sub_1B71360B8()
{
  result = qword_1EB984118;
  if (!qword_1EB984118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984118);
  }

  return result;
}

unint64_t sub_1B7136110()
{
  result = qword_1EB984120;
  if (!qword_1EB984120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984120);
  }

  return result;
}

unint64_t sub_1B7136168()
{
  result = qword_1EB984128;
  if (!qword_1EB984128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984128);
  }

  return result;
}

unint64_t sub_1B71361C0()
{
  result = qword_1EB984130;
  if (!qword_1EB984130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984130);
  }

  return result;
}

uint64_t sub_1B7136214(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1B715EB10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000 || (sub_1B715EB10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B715EB10();

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

uint64_t sub_1B7136328(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1B715EB10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44495344746C61 && a2 == 0xE700000000000000 || (sub_1B715EB10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F5A64726F636572 && a2 == 0xEA0000000000656ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B715EB10();

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

unint64_t sub_1B713648C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983648, &qword_1B71657F0);
    v2 = sub_1B715E950();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_1B70E89DC(*(a1 + 48) + 40 * v14, v29);
        sub_1B70B46E8(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_1B70E89DC(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1B70B46E8(v27 + 8, v22);
        sub_1B7137404(v26);
        v23 = v20;
        sub_1B70E74F4(v22, v24);
        v15 = v23;
        sub_1B70E74F4(v24, v25);
        sub_1B70E74F4(v25, &v23);
        result = sub_1B70E747C(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_1B70E74F4(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_1B70E74F4(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_1B7137404(v26);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1B7136748(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983630, &qword_1B71657D8);
    v2 = sub_1B715E950();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5)) | (v12 << 6);
        sub_1B70E89DC(*(a1 + 48) + 40 * v13, v25);
        sub_1B70B46E8(*(a1 + 56) + 32 * v13, v26 + 8);
        v23[0] = v26[0];
        v23[1] = v26[1];
        v24 = v27;
        v22[0] = v25[0];
        v22[1] = v25[1];
        sub_1B70E89DC(v22, v21);
        if (!swift_dynamicCast())
        {
          sub_1B7137404(v22);

          goto LABEL_23;
        }

        sub_1B70B46E8(v23 + 8, v21);
        sub_1B7137404(v22);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_1B70E747C(v19, v20);
        if (v14)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v19;
          v9[1] = v20;
          v11 = result;

          *(v2[7] + v11) = v19 & 1;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v15 = (v2[6] + 16 * result);
          *v15 = v19;
          v15[1] = v20;
          *(v2[7] + result) = v19 & 1;
          v16 = v2[2];
          v17 = __OFADD__(v16, 1);
          v18 = v16 + 1;
          if (v17)
          {
            goto LABEL_27;
          }

          v2[2] = v18;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t FABuildInviteRequest.__allocating_init(inviteRecipients:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_allocWithZone(FAFamilyCircleRequest) init];
  *(v2 + 24) = a1;
  return v2;
}

uint64_t FABuildInviteRequest.init(inviteRecipients:)(uint64_t a1)
{
  *(v1 + 16) = [objc_allocWithZone(FAFamilyCircleRequest) init];
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_1B7136AAC()
{
  v1 = *(MEMORY[0x1E69E8920] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984138, &qword_1B71686A8);
  *v2 = v0;
  v2[1] = sub_1B7136B90;
  v4 = *(v0 + 24);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0x29286863746566, 0xE700000000000000, sub_1B7136FB0, v4, v3);
}

uint64_t sub_1B7136B90()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1B7136CA4;
  }

  else
  {
    v3 = sub_1B70E5888;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1B7136CBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984140, &unk_1B7168700);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = *(a2 + 16);
  v20 = *(v5 + 16);
  v21 = a1;
  v20(&v18 - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v19 = *(v5 + 32);
  v19(v11 + v10, v8, v4);
  v26 = sub_1B7137260;
  v27 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v18 = &v24;
  v24 = sub_1B70F4BA8;
  v25 = &block_descriptor_10;
  v12 = _Block_copy(&aBlock);

  v13 = [v9 serviceRemoteObjectWithErrorHandler_];
  _Block_release(v12);
  if (v13)
  {
    v14 = *(a2 + 24);
    swift_unknownObjectRetain();
    sub_1B70F4510(v14);
    v15 = sub_1B715E310();

    v20(v8, v21, v4);
    v16 = swift_allocObject();
    v19(v16 + v10, v8, v4);
    v26 = sub_1B7137378;
    v27 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1B70F31BC;
    v25 = &block_descriptor_11;
    v17 = _Block_copy(&aBlock);

    [v13 buildInvite:v15 replyBlock:v17];
    swift_unknownObjectRelease_n();
    _Block_release(v17);
  }
}

void *sub_1B7136FB8(void *result)
{
  if (result)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984140, &unk_1B7168700);
    return sub_1B715E3D0();
  }

  return result;
}

uint64_t sub_1B7137010(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984140, &unk_1B7168700);
    return sub_1B715E3D0();
  }

  else
  {
    if (a1)
    {
      sub_1B713648C(a1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984140, &unk_1B7168700);
    return sub_1B715E3E0();
  }
}

uint64_t FABuildInviteRequest.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t FABuildInviteRequest.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t dispatch thunk of FABuildInviteRequest.fetch()()
{
  v2 = *(*v0 + 104);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B70E7674;

  return v6();
}

void *sub_1B7137260(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984140, &unk_1B7168700) - 8) + 80);

  return sub_1B7136FB8(a1);
}

uint64_t objectdestroyTm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984140, &unk_1B7168700);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B7137378(uint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984140, &unk_1B7168700) - 8) + 80);

  return sub_1B7137010(a1, a2);
}

uint64_t sub_1B7137404(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984148, qword_1B7168710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FAFamilyChecklistRankingConfigRequest.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(FAFamilyCircleRequest) init];
  return v0;
}

uint64_t sub_1B71374F8(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B7137518, 0, 0);
}

uint64_t sub_1B7137518()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984150, &qword_1B7168728);
  *v5 = v0;
  v5[1] = sub_1B7137620;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001B7170140, sub_1B7137A1C, v3, v6);
}

uint64_t sub_1B7137620()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1B70E58A4;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1B713773C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1B7137758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984158, &unk_1B7168790);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = *(a2 + 16);
  v18 = *(v6 + 16);
  v19 = a1;
  v18(&v17 - v8, a1, v5);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v17 = *(v6 + 32);
  v17(v12 + v11, v9, v5);
  v25 = sub_1B7137E5C;
  v26 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1B70F4BA8;
  v24 = &block_descriptor_11;
  v13 = _Block_copy(&aBlock);

  v14 = [v10 serviceRemoteObjectWithErrorHandler_];
  _Block_release(v13);
  if (v14)
  {
    v18(v9, v19, v5);
    v15 = swift_allocObject();
    v17(v15 + v11, v9, v5);
    v25 = sub_1B7137F74;
    v26 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_1B7137B00;
    v24 = &block_descriptor_11_0;
    v16 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [v14 familyChecklistRankingConfigWithCachePolicy:v20 replyBlock:v16];
    swift_unknownObjectRelease_n();
    _Block_release(v16);
  }
}

void *sub_1B7137A24(void *result)
{
  if (result)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984158, &unk_1B7168790);
    return sub_1B715E3D0();
  }

  return result;
}

uint64_t sub_1B7137A7C(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984158, &unk_1B7168790);
    return sub_1B715E3D0();
  }

  else
  {
    sub_1B70FFB50(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984158, &unk_1B7168790);
    return sub_1B715E3E0();
  }
}

uint64_t sub_1B7137B00(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_1B715DB50();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_1B70FFF9C(v4, v9);
}

uint64_t FAFamilyChecklistRankingConfigRequest.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t dispatch thunk of FAFamilyChecklistRankingConfigRequest.fetch(cachePolicy:)(uint64_t a1)
{
  v4 = *(*v1 + 96);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B7137D50;

  return v8(a1);
}

uint64_t sub_1B7137D50(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

void *sub_1B7137E5C(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984158, &unk_1B7168790) - 8) + 80);

  return sub_1B7137A24(a1);
}

uint64_t objectdestroyTm_2()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984158, &unk_1B7168790);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B7137F74(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984158, &unk_1B7168790) - 8) + 80);

  return sub_1B7137A7C(a1, a2, a3);
}

uint64_t sub_1B7138010(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v28 = MEMORY[0x1E69E7CC0];
    v26 = a1;
    sub_1B715E8A0();
    v4 = v26 + 56;
    v5 = -1 << *(v26 + 32);
    result = sub_1B715E750();
    v6 = v26;
    v7 = result;
    v8 = 0;
    v9 = *(v26 + 36);
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v6 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      if (v9 != *(v6 + 36))
      {
        goto LABEL_22;
      }

      v27 = v8;
      v12 = v4;
      v13 = (*(v6 + 48) + 16 * v7);
      v14 = *v13;
      v15 = v13[1];
      v16 = objc_allocWithZone(MEMORY[0x1E695BAE8]);

      v17 = sub_1B715E070();
      [v16 initWithEmailAddress_];

      sub_1B715E880();
      v18 = *(v28 + 16);
      sub_1B715E8B0();
      sub_1B715E8C0();
      result = sub_1B715E890();
      v6 = v26;
      v10 = 1 << *(v26 + 32);
      if (v7 >= v10)
      {
        goto LABEL_23;
      }

      v19 = *(v12 + 8 * v11);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (v9 != *(v26 + 36))
      {
        goto LABEL_25;
      }

      v4 = v12;
      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v10 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v11 << 6;
        v22 = v11 + 1;
        v23 = (v26 + 64 + 8 * v11);
        while (v22 < (v10 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_1B710FCC4(v7, v9, 0);
            v6 = v26;
            v10 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_1B710FCC4(v7, v9, 0);
        v6 = v26;
      }

LABEL_4:
      v8 = v27 + 1;
      v7 = v10;
      if (v27 + 1 == v2)
      {
        return v28;
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

uint64_t sub_1B713828C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1B715EC60();
  sub_1B715E160();
  v7 = sub_1B715EC90();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1B715EB10() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void *FamilyCoreDataSharingService.__allocating_init(container:privateStore:sharedStore:manateeContainer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[8] = a3;
  result[9] = a4;
  result[10] = a5;
  result[11] = a6;
  result[4] = a7;
  result[5] = a8;
  result[6] = &unk_1B71687A0;
  result[7] = 0;
  return result;
}

uint64_t sub_1B7138430()
{
  v1 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
  v0[19] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B7138568;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983B28, &unk_1B7166958);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B7129764;
  v0[13] = &block_descriptor_12;
  v0[14] = v2;
  [v1 startRequestWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7138568()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_1B71386E0;
  }

  else
  {
    v3 = sub_1B7138678;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7138678()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B71386E0()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[20];

  return v3();
}

void *FamilyCoreDataSharingService.__allocating_init(container:privateStore:sharedStore:manateeContainer:familyProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[8] = a3;
  result[9] = a4;
  result[10] = a5;
  result[11] = a6;
  result[4] = a7;
  result[5] = a8;
  result[6] = a9;
  result[7] = a10;
  return result;
}

void *FamilyCoreDataSharingService.init(container:privateStore:sharedStore:manateeContainer:familyProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10[2] = a1;
  v10[3] = a2;
  v10[8] = a3;
  v10[9] = a4;
  v10[10] = a5;
  v10[11] = a6;
  v10[4] = a7;
  v10[5] = a8;
  v10[6] = a9;
  v10[7] = a10;
  return v10;
}

uint64_t sub_1B7138800(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7 = *v4;
  *(v5 + 48) = *(*v4 + 88);
  v8 = *(v7 + 80);
  *(v5 + 56) = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 64) = AssociatedTypeWitness;
  v10 = sub_1B715E6D0();
  *(v5 + 72) = v10;
  v11 = *(v10 - 8);
  *(v5 + 80) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  v13 = *(AssociatedTypeWitness - 8);
  *(v5 + 96) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  v15 = *(v8 - 8);
  *(v5 + 112) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 202) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1B71389E0, 0, 0);
}

uint64_t sub_1B71389E0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 40);
  v3 = *(v2 + 24);
  v4 = (*(v2 + 16))();
  v5 = *(v0 + 120);
  v6 = *(v0 + 40);
  v7 = *(v6 + 40);
  (*(v6 + 32))(v4);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  sub_1B713B9E8(*(v0 + 24), *(v0 + 88));
  v11 = *(v0 + 88);
  v10 = *(v0 + 96);
  v12 = *(v0 + 64);
  v13 = *(v10 + 48);
  if (v13(v11, 1, v12) == 1)
  {
    v14 = *(v0 + 48);
    v35 = *(v0 + 56);
    v37 = *(v0 + 128);
    v15 = *(v0 + 32);
    v33 = *(v0 + 24);
    v34 = *(v0 + 104);
    sub_1B70F8CF0(0, &qword_1EB984160, 0x1E695BA90);
    v16 = *MEMORY[0x1E695B728];
    sub_1B715E0A0();

    v17 = sub_1B715E580();
    (*(v14 + 56))(v17, v35, v14);

    if (v13(v11, 1, v12) != 1)
    {
      (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
    }
  }

  else
  {
    (*(v10 + 32))(*(v0 + 104), v11, v12);
  }

  v18 = *(v0 + 202);
  v19 = *(v0 + 128);
  v38 = *(v0 + 48);
  v20 = (*(v38 + 104))(*(v0 + 56));
  *(v0 + 136) = v21;
  if (v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  *(v0 + 200) = v18;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  v24 = *(v38 + 96);
  v36 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  *(v0 + 144) = v26;
  *v26 = v0;
  v26[1] = sub_1B7138D7C;
  v27 = *(v0 + 120);
  v29 = *(v0 + 48);
  v28 = *(v0 + 56);
  v30 = *(v0 + 24);
  v31 = *(v0 + 32);

  return v36(v22, v23, v30, v31, v0 + 200, v28, v29);
}

uint64_t sub_1B7138D7C()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  *(v3 + 152) = v0;

  if (v0)
  {
    if (*(v3 + 136))
    {
      v4 = *(v3 + 136);
    }

    return MEMORY[0x1EEE6DFA0](sub_1B7139454, 0, 0);
  }

  else
  {
    v5 = *(v3 + 202);
    if (*(v3 + 136))
    {
      v6 = *(v3 + 136);
    }

    *(v3 + 201) = v5;
    v7 = swift_task_alloc();
    *(v3 + 160) = v7;
    *v7 = v3;
    v7[1] = sub_1B7138F24;
    v8 = *(v3 + 40);
    v9 = *(v3 + 104);

    return sub_1B713C3D8(v9, (v3 + 201));
  }
}

uint64_t sub_1B7138F24()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1B7139534;
  }

  else
  {
    v3 = sub_1B7139038;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7139038()
{
  v1 = v0[21];
  v2 = v0[5];
  v3 = *(v2 + 72);
  v4 = (*(v2 + 64))();
  v0[22] = v4;
  if (v1)
  {
    v5 = v0[15];
    v6 = v0[16];
    v7 = v0[14];
    v8 = v0[7];
    (*(v0[12] + 8))(v0[13], v0[8]);
    v9 = *(v7 + 8);
    v9(v5, v8);
    v9(v6, v8);
    v11 = v0[15];
    v10 = v0[16];
    v12 = v0[13];
    v13 = v0[11];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v4;
    v24 = (v0[6] + 40);
    v25 = (*v24 + **v24);
    v17 = (*v24)[1];
    v18 = swift_task_alloc();
    v0[23] = v18;
    *v18 = v0;
    v18[1] = sub_1B713923C;
    v19 = v0[16];
    v20 = v0[13];
    v22 = v0[6];
    v21 = v0[7];
    v23 = v0[2];

    return v25(v23, v20, v16, v21, v22);
  }
}

uint64_t sub_1B713923C()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_1B7139614;
  }

  else
  {
    v5 = sub_1B7139370;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B7139370()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[7];
  (*(v0[12] + 8))(v0[13], v0[8]);
  v6 = *(v3 + 8);
  v6(v1, v5);
  v6(v2, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B7139454()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[7];
  (*(v0[12] + 8))(v0[13], v0[8]);
  v5 = *(v3 + 8);
  v5(v1, v4);
  v5(v2, v4);
  v6 = v0[19];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[13];
  v10 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B7139534()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[7];
  (*(v0[12] + 8))(v0[13], v0[8]);
  v5 = *(v3 + 8);
  v5(v1, v4);
  v5(v2, v4);
  v6 = v0[21];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[13];
  v10 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B7139614()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[7];
  (*(v0[12] + 8))(v0[13], v0[8]);
  v5 = *(v3 + 8);
  v5(v1, v4);
  v5(v2, v4);
  v6 = v0[24];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[13];
  v10 = v0[11];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B71396F4()
{
  v1[4] = v0;
  v2 = *v0;
  v1[5] = *(*v0 + 88);
  v3 = *(v2 + 80);
  v1[6] = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[7] = AssociatedTypeWitness;
  v5 = *(AssociatedTypeWitness - 8);
  v1[8] = v5;
  v1[9] = *(v5 + 64);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v6 = *(v3 - 8);
  v1[15] = v6;
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7139884, 0, 0);
}

uint64_t sub_1B7139884()
{
  v1 = v0[16];
  v2 = v0[4];
  v3 = *(v2 + 24);
  v4 = (*(v2 + 16))();
  v5 = v0[4];
  v6 = *(v5 + 72);
  v7 = (*(v5 + 64))(v4);
  v9 = v0[15];
  v8 = v0[16];
  v10 = v7;
  v11 = v0[6];
  v0[17] = (*(v0[5] + 48))();
  (*(v9 + 8))(v8, v11);

  v12 = v0[7];
  v13 = sub_1B715DFC0();
  v0[2] = v13;
  if (sub_1B715E390())
  {
    v14 = v0[17];
    v15 = v0[7];
    v16 = sub_1B715E360();
    sub_1B715E330();
    if (v16)
    {
      v17 = v0[8];
      v18 = *(v17 + 16);
      v18(v0[14], v0[17] + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v0[7]);
    }

    else
    {
      v31 = v0[17];
      v32 = v0[9];
      v33 = v0[7];
      result = sub_1B715E810();
      if (v32 != 8)
      {
        __break(1u);
        return result;
      }

      v34 = result;
      v35 = v0[14];
      v36 = v0[7];
      v37 = v0[8];
      v0[3] = v34;
      v18 = *(v37 + 16);
      v18(v35, (v0 + 3), v36);
      swift_unknownObjectRelease();
    }

    v0[18] = v18;
    v0[19] = 1;
    (*(v0[8] + 32))(v0[13], v0[14], v0[7]);
    v19 = swift_task_alloc();
    v0[20] = v19;
    *v19 = v0;
    v19[1] = sub_1B7139BC0;
    v20 = v0[12];
    v21 = v0[13];
    v22 = v0[4];

    return sub_1B713A3E4(v20, v21);
  }

  else
  {

    v24 = v0[16];
    v26 = v0[13];
    v25 = v0[14];
    v28 = v0[11];
    v27 = v0[12];
    v29 = v0[10];

    v30 = v0[1];

    return v30(v13);
  }
}

uint64_t sub_1B7139BC0()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1B7139F38;
  }

  else
  {
    v3 = sub_1B7139CD4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7139CD4()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[7];
  v4 = v0[8];
  sub_1B715E3A0();
  sub_1B715E380();
  (*(v4 + 8))(v1, v3);
  v5 = v0[19];
  v6 = v0[17];
  v7 = v0[7];
  if (v5 == sub_1B715E390())
  {
    v8 = v0[17];

    v9 = v0[2];
    v10 = v0[16];
    v12 = v0[13];
    v11 = v0[14];
    v14 = v0[11];
    v13 = v0[12];
    v15 = v0[10];

    v16 = v0[1];

    return v16(v9);
  }

  v18 = v0[19];
  v19 = v0[17];
  v20 = v0[7];
  v21 = sub_1B715E360();
  sub_1B715E330();
  if (v21)
  {
    v22 = v0[8];
    v23 = *(v22 + 16);
    result = v23(v0[14], v0[17] + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18, v0[7]);
  }

  else
  {
    v28 = v0[9];
    v29 = v0[7];
    result = sub_1B715E810();
    if (v28 != 8)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v30 = v0[14];
    v31 = v0[7];
    v32 = v0[8];
    v0[3] = result;
    v23 = *(v32 + 16);
    v23(v30, (v0 + 3), v31);
    result = swift_unknownObjectRelease();
  }

  v0[18] = v23;
  v0[19] = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  (*(v0[8] + 32))(v0[13], v0[14], v0[7]);
  v24 = swift_task_alloc();
  v0[20] = v24;
  *v24 = v0;
  v24[1] = sub_1B7139BC0;
  v25 = v0[12];
  v26 = v0[13];
  v27 = v0[4];

  return sub_1B713A3E4(v25, v26);
}

uint64_t sub_1B7139F38()
{
  v66 = v0;
  if (qword_1EB982FF0 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[7];
  v6 = v0[8] + 16;
  v7 = sub_1B715DEE0();
  __swift_project_value_buffer(v7, qword_1EB983760);
  v2(v4, v3, v5);
  v8 = v1;
  v9 = sub_1B715DEC0();
  v10 = sub_1B715E560();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[21];
  if (v11)
  {
    v13 = v0[18];
    v64 = v0[13];
    v15 = v0[10];
    v14 = v0[11];
    v16 = v0[7];
    v60 = v0[8];
    v61 = v0[21];
    v17 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v65 = v63;
    *v17 = 136315394;
    v13(v15, v14, v16);
    v18 = sub_1B715E0F0();
    v20 = v19;
    v21 = *(v60 + 8);
    v21(v14, v16);
    v22 = sub_1B70B461C(v18, v20, &v65);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    v23 = v61;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    *v62 = v24;
    _os_log_impl(&dword_1B70B0000, v9, v10, "failed to update membership for share: %s, error: %@", v17, 0x16u);
    sub_1B7116DBC(v62);
    MEMORY[0x1B8CA2750](v62, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x1B8CA2750](v63, -1, -1);
    MEMORY[0x1B8CA2750](v17, -1, -1);

    v21(v64, v16);
  }

  else
  {
    v25 = v0[13];
    v26 = v0[11];
    v28 = v0[7];
    v27 = v0[8];

    v29 = *(v27 + 8);
    v29(v26, v28);
    v29(v25, v28);
  }

  v30 = v0[19];
  v31 = v0[17];
  v32 = v0[7];
  v33 = sub_1B715E390();
  v34 = v0[17];
  if (v30 == v33)
  {
    v35 = v0[17];

    v36 = v0[2];
    v37 = v0[16];
    v39 = v0[13];
    v38 = v0[14];
    v41 = v0[11];
    v40 = v0[12];
    v42 = v0[10];

    v43 = v0[1];

    return v43(v36);
  }

  v45 = v0[19];
  v46 = v0[7];
  v47 = v0[17];
  v48 = sub_1B715E360();
  sub_1B715E330();
  if (v48)
  {
    v49 = v0[8];
    v50 = *(v49 + 16);
    result = v50(v0[14], v0[17] + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v45, v0[7]);
  }

  else
  {
    v55 = v0[9];
    v56 = v0[7];
    result = sub_1B715E810();
    if (v55 != 8)
    {
LABEL_19:
      __break(1u);
      return result;
    }

    v57 = v0[14];
    v58 = v0[7];
    v59 = v0[8];
    v0[3] = result;
    v50 = *(v59 + 16);
    v50(v57, (v0 + 3), v58);
    result = swift_unknownObjectRelease();
  }

  v0[18] = v50;
  v0[19] = v45 + 1;
  if (__OFADD__(v45, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  (*(v0[8] + 32))(v0[13], v0[14], v0[7]);
  v51 = swift_task_alloc();
  v0[20] = v51;
  *v51 = v0;
  v51[1] = sub_1B7139BC0;
  v52 = v0[12];
  v53 = v0[13];
  v54 = v0[4];

  return sub_1B713A3E4(v52, v53);
}

uint64_t sub_1B713A3E4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *v2;
  v3[10] = *v2;
  v5 = *(v4 + 80);
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v7 = *(v6 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B713A4EC, 0, 0);
}

uint64_t sub_1B713A4EC()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = *(v0[10] + 88);
  v0[15] = v5;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[16] = AssociatedConformanceWitness;
  v7 = *(AssociatedConformanceWitness + 56);
  v0[17] = swift_checkMetadataState();
  v8 = v7();
  v9 = [v8 zoneID];

  v10 = [v9 zoneName];
  v11 = sub_1B715E0A0();
  v13 = v12;

  v0[18] = v13;
  v14 = *(v4 + 24);
  v15 = (*(v4 + 16))();
  v16 = v0[13];
  v17 = v0[9];
  v18 = *(v17 + 40);
  (*(v17 + 32))(v15);
  v19 = v0[14];
  v20 = (*(v5 + 104))(v0[11], v5);
  v0[19] = v21;
  if (v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  v24 = *(v5 + 88);
  v30 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  v0[20] = v26;
  *v26 = v0;
  v26[1] = sub_1B713A7E0;
  v27 = v0[13];
  v28 = v0[11];

  return v30(v22, v23, v11, v13, v28, v5);
}

uint64_t sub_1B713A7E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  v4[21] = v1;

  v7 = v4[18];
  if (v1)
  {

    v8 = sub_1B713B008;
  }

  else
  {
    if (v4[19])
    {
      v9 = v4[19];
    }

    v4[22] = a1;

    v8 = sub_1B713A960;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1B713A960()
{
  v1 = *(v0 + 176);
  if (v1 && (v2 = *(v1 + 48), v2 <= 1))
  {
    *(v0 + 224) = v2;
    v3 = swift_task_alloc();
    *(v0 + 184) = v3;
    *v3 = v0;
    v3[1] = sub_1B713AB30;
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);

    return sub_1B713C3D8(v4, (v0 + 224));
  }

  else
  {
    v7 = *(v0 + 128);
    v8 = *(v0 + 136);
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v11 = *(v0 + 88);
    v12 = *(v0 + 96);
    v13 = *(v0 + 64);
    *(v0 + 40) = v8;
    *(v0 + 48) = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v13, v8);
    sub_1B713DE64();
    swift_allocError();
    sub_1B70B9AD4((v0 + 16), v15);
    swift_willThrow();

    v16 = *(v12 + 8);
    v16(v10, v11);
    v16(v9, v11);
    v18 = *(v0 + 104);
    v17 = *(v0 + 112);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1B713AB30()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_1B713B0AC;
  }

  else
  {
    v3 = sub_1B713AC44;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B713AC44()
{
  v1 = v0[24];
  v2 = v0[9];
  v3 = *(v2 + 72);
  v4 = (*(v2 + 64))();
  v0[25] = v4;
  if (v1)
  {
    v5 = v0[22];
    v6 = v0[13];
    v7 = v0[14];
    v8 = v0[11];
    v9 = v0[12];

    v10 = *(v9 + 8);
    v10(v6, v8);
    v10(v7, v8);
    v12 = v0[13];
    v11 = v0[14];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v4;
    v23 = (v0[15] + 40);
    v24 = (*v23 + **v23);
    v16 = (*v23)[1];
    v17 = swift_task_alloc();
    v0[26] = v17;
    *v17 = v0;
    v17[1] = sub_1B713AE1C;
    v19 = v0[14];
    v18 = v0[15];
    v20 = v0[11];
    v21 = v0[7];
    v22 = v0[8];

    return v24(v21, v22, v15, v20, v18);
  }
}

uint64_t sub_1B713AE1C()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v5 = sub_1B713B164;
  }

  else
  {
    v5 = sub_1B713AF50;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B713AF50()
{
  v1 = v0[22];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];

  v6 = *(v5 + 8);
  v6(v2, v4);
  v6(v3, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B713B008()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = *(v0[12] + 8);
  v3(v0[13], v2);
  v3(v1, v2);
  v4 = v0[21];
  v6 = v0[13];
  v5 = v0[14];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B713B0AC()
{
  v1 = v0[22];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];

  v6 = *(v5 + 8);
  v6(v2, v4);
  v6(v3, v4);
  v7 = v0[24];
  v9 = v0[13];
  v8 = v0[14];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B713B164()
{
  v1 = v0[22];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];

  v6 = *(v5 + 8);
  v6(v2, v4);
  v6(v3, v4);
  v7 = v0[27];
  v9 = v0[13];
  v8 = v0[14];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B713B21C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v3[5] = *(*v2 + 88);
  v5 = *(v4 + 80);
  v3[6] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[7] = AssociatedTypeWitness;
  v7 = sub_1B715E6D0();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = *(v5 - 8);
  v3[11] = v10;
  v11 = *(v10 + 64) + 15;
  v3[12] = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  v3[13] = v12;
  v13 = *(v12 - 8);
  v3[14] = v13;
  v14 = *(v13 + 64) + 15;
  v3[15] = swift_task_alloc();
  v15 = *(AssociatedTypeWitness - 8);
  v3[16] = v15;
  v16 = *(v15 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B713B460, 0, 0);
}

uint64_t sub_1B713B460()
{
  v1 = v0[12];
  v2 = v0[4];
  v3 = *(v2 + 24);
  (*(v2 + 16))();
  v4 = v0[16];
  v5 = v0[10];
  v6 = v0[7];
  v22 = v0[5];
  v8 = v0[2];
  v7 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983798, &unk_1B71662C0);
  v9 = swift_allocObject();
  v0[18] = v9;
  *(v9 + 16) = xmmword_1B71662A0;
  *(v9 + 32) = v8;
  (*(v4 + 16))(v5, v7, v6);
  (*(v4 + 56))(v5, 0, 1, v6);
  v10 = *(v22 + 64);
  v11 = v8;
  v21 = (v10 + *v10);
  v12 = v10[1];
  v13 = swift_task_alloc();
  v0[19] = v13;
  *v13 = v0;
  v13[1] = sub_1B713B6B4;
  v14 = v0[17];
  v15 = v0[15];
  v16 = v0[12];
  v17 = v0[10];
  v19 = v0[5];
  v18 = v0[6];

  return v21(v14, v15, v9, v17, v18, v19);
}

uint64_t sub_1B713B6B4()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v27 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v6 = v2[11];
    v5 = v2[12];
    v8 = v2[9];
    v7 = v2[10];
    v9 = v2[8];
    v10 = v2[6];
    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v5, v10);
    v11 = sub_1B713B958;
  }

  else
  {
    v12 = v2[16];
    v13 = v2[14];
    v25 = v2[15];
    v26 = v2[17];
    v15 = v2[12];
    v14 = v2[13];
    v16 = v2[10];
    v17 = v2[11];
    v19 = v2[8];
    v18 = v2[9];
    v21 = v2 + 6;
    v20 = v2[6];
    v23 = v14;
    v24 = v21[1];

    (*(v18 + 8))(v16, v19);
    (*(v17 + 8))(v15, v20);
    (*(v13 + 8))(v25, v23);
    (*(v12 + 8))(v26, v24);
    v11 = sub_1B713B8C8;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1B713B8C8()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B713B958()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

void sub_1B713B9E8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v20 = a2;
  v21 = *v2;
  v5 = *(v21 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v20 - v8;
  sub_1B70F8CF0(0, &qword_1EB984160, 0x1E695BA90);
  v10 = *MEMORY[0x1E695B728];
  sub_1B715E0A0();

  v11 = sub_1B715E580();
  v12 = v2[3];
  v13 = (v4[2])(v11);
  if (!v3)
  {
    v14 = v21;
    v15 = v4[9];
    v16 = (v4[8])(v13);
    v17 = *(v14 + 88);
    v18 = (*(v17 + 48))(v16, v5, v17);
    (*(v6 + 8))(v9, v5);

    v22 = v18;
    MEMORY[0x1EEE9AC00](v19);
    *(&v20 - 4) = v5;
    *(&v20 - 3) = v17;
    *(&v20 - 2) = v11;
    swift_getAssociatedTypeWitness();
    sub_1B715E3A0();
    swift_getWitnessTable();
    sub_1B715E250();
  }
}

uint64_t sub_1B713BCBC()
{
  sub_1B70F8CF0(0, &unk_1EB982330, 0x1E69E58C0);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 56);
  v2 = swift_checkMetadataState();
  v3 = v1(v2, AssociatedConformanceWitness);
  v4 = [v3 zoneID];

  LOBYTE(v3) = sub_1B715E6A0();
  return v3 & 1;
}

uint64_t sub_1B713BDD8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v2[4] = *v1;
  v4 = *(v3 + 80);
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B713BED0, 0, 0);
}

uint64_t sub_1B713BED0()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = *(v2 + 24);
  (*(v2 + 16))();
  v4 = v0[2];
  v5 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984170, &qword_1B71687E8);
  v6 = sub_1B715DB20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v0[8] = v10;
  *(v10 + 16) = xmmword_1B7164C50;
  v11 = (*(v7 + 16))(v10 + v9, v4, v6);
  v12 = *(v5 + 88);
  v13 = (*(v5 + 80))(v11);
  v0[9] = v13;
  v14 = v13;
  v15 = *(v0[4] + 88);
  v21 = (*(v15 + 72) + **(v15 + 72));
  v16 = *(*(v15 + 72) + 4);
  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_1B713C158;
  v18 = v0[7];
  v19 = v0[5];

  return v21(v10, v14, v19, v15);
}

uint64_t sub_1B713C158()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = v2[9];
  v6 = v2[8];
  v7 = v2[7];
  v8 = v2[6];
  v9 = v2[5];
  if (v0)
  {
    (*(v8 + 8))(v2[7], v2[5]);

    return MEMORY[0x1EEE6DFA0](sub_1B713C374, 0, 0);
  }

  else
  {

    (*(v8 + 8))(v7, v9);

    v10 = *(v4 + 8);

    return v10();
  }
}

uint64_t sub_1B713C374()
{
  v1 = v0[11];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B713C3D8(uint64_t a1, _BYTE *a2)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v5 = *v2;
  v6 = *(*v2 + 80);
  *(v3 + 72) = v6;
  v7 = *(v6 - 8);
  *(v3 + 80) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = *(v5 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v3 + 104) = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  *(v3 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 224) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1B713C560, 0, 0);
}

uint64_t sub_1B713C560()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 56);
  v6 = (*(v1 + 48) + **(v1 + 48));
  v3 = *(*(v1 + 48) + 4);
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_1B713C64C;

  return v6();
}

uint64_t sub_1B713C64C(uint64_t a1)
{
  v3 = *(*v2 + 144);
  v4 = *v2;
  v4[19] = a1;
  v4[20] = v1;

  if (v1)
  {
    v6 = v4[16];
    v5 = v4[17];
    v7 = v4[15];
    v8 = v4[11];

    v9 = v4[1];

    return v9();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B713C7B4, 0, 0);
  }
}

uint64_t sub_1B713C7B4()
{
  v134 = v0;
  v1 = v0[19];
  v2 = FAFamilyCircle.membersNotMe()();
  v3 = v2;
  v133[0] = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v4; i = v0)
  {
    v5 = 0;
    v0 = (v3 & 0xC000000000000001);
    while (1)
    {
      if (v0)
      {
        v7 = MEMORY[0x1B8CA14D0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (*(i + 224) != 1 || ([v7 isGuardian] & 1) != 0 || (objc_msgSend(v8, sel_isParent) & 1) != 0)
      {
        sub_1B715E880();
        v6 = *(v133[0] + 16);
        sub_1B715E8B0();
        sub_1B715E8C0();
        sub_1B715E890();
      }

      else
      {
      }

      ++v5;
      if (v9 == v4)
      {
        v0 = i;
        v10 = v133[0];
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v4 = sub_1B715E920();
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_20:

  if ((v10 & 0x8000000000000000) == 0 && (v10 & 0x4000000000000000) == 0)
  {
    v11 = *(v10 + 16);
    if (v11)
    {
      goto LABEL_23;
    }

LABEL_43:
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_44;
  }

LABEL_42:
  v11 = sub_1B715E920();
  if (!v11)
  {
    goto LABEL_43;
  }

LABEL_23:
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  do
  {
    v14 = v12;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1B8CA14D0](v14, v10);
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v14 >= *(v10 + 16))
        {
          goto LABEL_41;
        }

        v15 = *(v10 + 8 * v14 + 32);
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }
      }

      v16 = v15;
      v17 = [v16 appleID];
      if (v17)
      {
        break;
      }

      ++v14;
      if (v12 == v11)
      {
        goto LABEL_44;
      }
    }

    v18 = v17;
    v19 = sub_1B715E0A0();
    v21 = v20;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1B70F17B4(0, *(v13 + 2) + 1, 1, v13);
    }

    v23 = *(v13 + 2);
    v22 = *(v13 + 3);
    if (v23 >= v22 >> 1)
    {
      v13 = sub_1B70F17B4((v22 > 1), v23 + 1, 1, v13);
    }

    *(v13 + 2) = v23 + 1;
    v24 = &v13[16 * v23];
    *(v24 + 4) = v19;
    *(v24 + 5) = v21;
    v0 = i;
  }

  while (v12 != v11);
LABEL_44:
  v25 = v0[20];
  v27 = v0[12];
  v26 = v0[13];
  v28 = i[9];
  v29 = i[7];

  v128 = sub_1B711EFF4(v13);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  i[21] = AssociatedConformanceWitness;
  v129 = *(AssociatedConformanceWitness + 48);
  i[2] = v129(v26, AssociatedConformanceWitness);
  v31 = swift_task_alloc();
  *(v31 + 16) = v28;
  *(v31 + 24) = v27;
  v124 = AssociatedConformanceWitness;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  i[22] = AssociatedTypeWitness;
  sub_1B715E3A0();
  swift_getWitnessTable();
  v33 = sub_1B715E870();

  i[3] = v33;
  v34 = swift_task_alloc();
  *v34 = v28;
  v34[1] = v27;
  KeyPath = swift_getKeyPath();

  v36 = swift_task_alloc();
  v36[2] = v28;
  v36[3] = v27;
  v36[4] = KeyPath;
  swift_getWitnessTable();
  v37 = sub_1B715E240();
  v115 = v25;

  v38 = sub_1B711EFF4(v37);

  if (*(v128 + 16) <= *(v38 + 16) >> 3)
  {
    v133[0] = v38;

    sub_1B713E038(v128);
    v39 = v38;
  }

  else
  {

    v39 = sub_1B713E164(v128, v38);
  }

  if (*(v38 + 16) <= *(v128 + 16) >> 3)
  {
    v133[0] = v128;
    sub_1B713E038(v38);

    v114 = v128;
  }

  else
  {
    v114 = sub_1B713E164(v38, v128);
  }

  v40 = i[7];
  v41 = v129(i[13], v124);
  if (sub_1B715E390())
  {
    v42 = i[13];
    v43 = i[14];
    v44 = swift_getAssociatedConformanceWitness();
    v45 = 0;
    v127 = *(v44 + 16);
    v130 = v39 + 56;
    v121 = (v43 + 8);
    v122 = (v43 + 16);
    v125 = v44;
    v126 = v39;
    while (1)
    {
      v52 = sub_1B715E360();
      sub_1B715E330();
      if (v52)
      {
        v53 = *(v41 + 32 + 8 * v45);
        result = swift_unknownObjectRetain();
        v55 = __OFADD__(v45++, 1);
        if (v55)
        {
          goto LABEL_91;
        }
      }

      else
      {
        result = sub_1B715E810();
        v53 = result;
        v55 = __OFADD__(v45++, 1);
        if (v55)
        {
LABEL_91:
          __break(1u);
          return result;
        }
      }

      v56 = v127(AssociatedTypeWitness, v44);
      if (v56)
      {
        v57 = v56;
        v58 = [v56 emailAddress];

        if (v58)
        {
          break;
        }
      }

      if (qword_1EB982FF0 != -1)
      {
        swift_once();
      }

      v69 = sub_1B715DEE0();
      __swift_project_value_buffer(v69, qword_1EB983760);
      swift_unknownObjectRetain();
      v70 = sub_1B715DEC0();
      v71 = sub_1B715E560();
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v70, v71))
      {

LABEL_72:
        swift_unknownObjectRelease();
        goto LABEL_53;
      }

      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v133[0] = v47;
      *v46 = 136315138;
      i[5] = v53;
      swift_unknownObjectRetain();
      v48 = sub_1B715E0F0();
      v50 = sub_1B70B461C(v48, v49, v133);
      v39 = v126;

      *(v46 + 4) = v50;
      _os_log_impl(&dword_1B70B0000, v70, v71, "participant %s does not have email address", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      v51 = v47;
      v44 = v125;
      MEMORY[0x1B8CA2750](v51, -1, -1);
      MEMORY[0x1B8CA2750](v46, -1, -1);
      swift_unknownObjectRelease();

LABEL_53:
      if (v45 == sub_1B715E390())
      {
        goto LABEL_82;
      }
    }

    v59 = sub_1B715E0A0();
    v61 = v60;

    if (*(v39 + 16))
    {
      v62 = *(v39 + 40);
      sub_1B715EC60();
      sub_1B715E160();
      v63 = sub_1B715EC90();
      v64 = -1 << *(v39 + 32);
      v65 = v63 & ~v64;
      if ((*(v130 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65))
      {
        v66 = ~v64;
        while (1)
        {
          v67 = (*(v39 + 48) + 16 * v65);
          v68 = *v67 == v59 && v67[1] == v61;
          if (v68 || (sub_1B715EB10() & 1) != 0)
          {
            break;
          }

          v65 = (v65 + 1) & v66;
          if (((*(v130 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
          {
            goto LABEL_67;
          }
        }

        if (qword_1EB982FF0 != -1)
        {
          swift_once();
        }

        v72 = i[17];
        v73 = i[13];
        v74 = i[7];
        v75 = sub_1B715DEE0();
        __swift_project_value_buffer(v75, qword_1EB983760);
        v123 = *v122;
        (*v122)(v72, v74, v73);
        swift_unknownObjectRetain();
        v76 = sub_1B715DEC0();
        v77 = sub_1B715E550();
        swift_unknownObjectRelease();
        v78 = os_log_type_enabled(v76, v77);
        v79 = i[17];
        if (v78)
        {
          v116 = i[16];
          v117 = i[13];
          log = v76;
          v80 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v133[0] = v120;
          *v80 = 136315394;
          i[6] = v53;
          swift_unknownObjectRetain();
          v81 = sub_1B715E0F0();
          v118 = v77;
          v83 = sub_1B70B461C(v81, v82, v133);

          *(v80 + 4) = v83;
          *(v80 + 12) = 2080;
          v123(v116, v79, v117);
          v84 = sub_1B715E0F0();
          v86 = v85;
          (*v121)(v79, v117);
          v87 = sub_1B70B461C(v84, v86, v133);

          *(v80 + 14) = v87;
          _os_log_impl(&dword_1B70B0000, log, v118, "removing %s from %s", v80, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B8CA2750](v120, -1, -1);
          MEMORY[0x1B8CA2750](v80, -1, -1);
        }

        else
        {
          v88 = i[13];

          (*v121)(v79, v88);
        }

        v89 = i[7];
        (*(v124 + 88))(v53, i[13]);
        swift_unknownObjectRelease();
        v44 = v125;
        v39 = v126;
        goto LABEL_53;
      }
    }

LABEL_67:

    goto LABEL_72;
  }

LABEL_82:
  v90 = i[11];
  v91 = i[8];

  v93 = *(v91 + 16);
  v94 = *(v91 + 24);
  v93(v92);
  if (v115)
  {
    v95 = i[19];

    v103 = i[16];
    v102 = i[17];
    v104 = i[15];
    v105 = i[11];

    v106 = i[1];

    return v106();
  }

  else
  {
    v96 = i[8];
    v97 = sub_1B7138010(v114);
    i[23] = v97;

    v99 = *(v96 + 64);
    v100 = *(v96 + 72);
    v101 = v99(v98);
    i[24] = v101;
    v107 = v101;
    v108 = *(i[12] + 80);
    v131 = (v108 + *v108);
    v109 = v108[1];
    v110 = swift_task_alloc();
    i[25] = v110;
    *v110 = i;
    v110[1] = sub_1B713D4E8;
    v112 = i[11];
    v111 = i[12];
    v113 = i[9];

    return v131(v97, v107, v113, v111);
  }
}

uint64_t sub_1B713D4E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  v4[26] = a1;
  v4[27] = v1;

  v7 = v3[24];
  v8 = v3[23];
  (*(v3[10] + 8))(v3[11], v3[9]);

  if (v1)
  {
    v9 = sub_1B713DB04;
  }

  else
  {
    v9 = sub_1B713D694;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1B713D694()
{
  v63 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 176);
  if (sub_1B715E390())
  {
    v3 = *(v0 + 208);
    v5 = *(v0 + 168);
    v4 = *(v0 + 176);
    v6 = *(v0 + 104);
    v7 = *(v0 + 112);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v9 = 0;
    v58 = *(AssociatedConformanceWitness + 32);
    v59 = AssociatedConformanceWitness;
    v57 = *(AssociatedConformanceWitness + 56);
    v55 = v3 + 32;
    v56 = *(v5 + 96);
    v54 = (v7 + 8);
    v60 = (v7 + 16);
    do
    {
      v14 = *(v0 + 208);
      v15 = *(v0 + 176);
      v16 = sub_1B715E360();
      sub_1B715E330();
      if (v16)
      {
        v17 = *(v55 + 8 * v9);
        result = swift_unknownObjectRetain();
        v19 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        v43 = *(v0 + 208);
        v44 = *(v0 + 176);
        result = sub_1B715E810();
        v17 = result;
        v19 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_17:
          __break(1u);
          return result;
        }
      }

      v61 = v19;
      v21 = *(v0 + 168);
      v20 = *(v0 + 176);
      v22 = *(v0 + 104);
      v23 = *(v0 + 56);
      v58(3, v20, v59);
      v57(3, v20, v59);
      v56(v17, v22, v21);
      if (qword_1EB982FF0 != -1)
      {
        swift_once();
      }

      v24 = *(v0 + 120);
      v25 = *(v0 + 104);
      v26 = *(v0 + 56);
      v27 = sub_1B715DEE0();
      __swift_project_value_buffer(v27, qword_1EB983760);
      v28 = *v60;
      (*v60)(v24, v26, v25);
      swift_unknownObjectRetain();
      v29 = sub_1B715DEC0();
      v30 = sub_1B715E550();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = *(v0 + 176);
        log = v29;
        v32 = *(v0 + 120);
        v33 = *(v0 + 128);
        v53 = v30;
        v34 = *(v0 + 104);
        v35 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v62 = v52;
        *v35 = 136315394;
        *(v0 + 32) = v17;
        swift_unknownObjectRetain();
        v36 = sub_1B715E0F0();
        v38 = sub_1B70B461C(v36, v37, &v62);

        *(v35 + 4) = v38;
        *(v35 + 12) = 2080;
        v28(v33, v32, v34);
        v39 = sub_1B715E0F0();
        v41 = v40;
        (*v54)(v32, v34);
        v42 = sub_1B70B461C(v39, v41, &v62);

        *(v35 + 14) = v42;
        _os_log_impl(&dword_1B70B0000, log, v53, "adding %s to %s", v35, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8CA2750](v52, -1, -1);
        MEMORY[0x1B8CA2750](v35, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = *(v0 + 120);
        v11 = *(v0 + 104);
        swift_unknownObjectRelease();

        (*v54)(v10, v11);
      }

      v12 = *(v0 + 208);
      v13 = *(v0 + 176);
      ++v9;
    }

    while (v61 != sub_1B715E390());
  }

  v45 = *(v0 + 208);
  v47 = *(v0 + 128);
  v46 = *(v0 + 136);
  v48 = *(v0 + 120);
  v49 = *(v0 + 88);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_1B713DB04()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(v0 + 88);

  v6 = *(v0 + 8);

  return v6();
}

BOOL sub_1B713DB98(uint64_t *a1)
{
  v1 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 8);
  v4 = swift_checkMetadataState();
  return (v3(v4, AssociatedConformanceWitness) & 1) == 0;
}

uint64_t sub_1B713DC94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a2 + a3 - 16);
  v5 = *(a2 + a3 - 8);
  v7 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 16);
  v10 = swift_checkMetadataState();
  result = v9(v10, AssociatedConformanceWitness);
  *a4 = result;
  return result;
}

void sub_1B713DD88(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 emailAddress];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B715E0A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void *FamilyCoreDataSharingService.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return v0;
}

uint64_t FamilyCoreDataSharingService.__deallocating_deinit()
{
  FamilyCoreDataSharingService.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

unint64_t sub_1B713DE64()
{
  result = qword_1EB984168;
  if (!qword_1EB984168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984168);
  }

  return result;
}

uint64_t sub_1B713DEB8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B713BCBC() & 1;
}

void *sub_1B713DEDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983D88, &unk_1B71688E0);
  v2 = *v0;
  v3 = sub_1B715E7B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1B713E038(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1B713E6D4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1B713E164(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x1E69E7CD0];
LABEL_53:
    v50 = *MEMORY[0x1E69E9840];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_1B715EC60();

    sub_1B715E160();
    v24 = sub_1B715EC90();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_1B715EB10() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x1EEE9AC00](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_1B713EA48(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_1B715EC60();

            sub_1B715E160();
            v43 = sub_1B715EC90();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_1B715EB10() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_1B713E810(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x1B8CA2750](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_1B713F67C();
    goto LABEL_53;
  }

  result = MEMORY[0x1B8CA2750](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1B713E6D4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1B715EC60();
  sub_1B715E160();
  v7 = sub_1B715EC90();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1B715EB10() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B713DEDC();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1B713EC6C(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_1B713E810(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_1B713EA48(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_1B715EC60();

        sub_1B715E160();
        v20 = sub_1B715EC90();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_1B715EB10() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t sub_1B713EA48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983D88, &unk_1B71688E0);
  result = sub_1B715E7D0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_1B715EC60();

    sub_1B715E160();
    result = sub_1B715EC90();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1B713EC6C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1B715E760();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1B715EC60();

        sub_1B715E160();
        v15 = sub_1B715EC90();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

BOOL sub_1B713EE30(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1B713DB98(a1);
}

uint64_t sub_1B713EE5C(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v4 = *a1;
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  return swift_unknownObjectRelease();
}

uint64_t dispatch thunk of FamilyCoreDataSharingService.setupShare(zoneID:audience:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 144);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1B70E5228;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of FamilyCoreDataSharingService.repairShares()()
{
  v2 = *(*v0 + 152);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B70E7674;

  return v6();
}

uint64_t dispatch thunk of FamilyCoreDataSharingService.updateMembership(of:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B70E54FC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of FamilyCoreDataSharingService.share(record:to:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 168);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B70E54FC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of FamilyCoreDataSharingService.acceptShare(with:)(uint64_t a1)
{
  v4 = *(*v1 + 184);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B70E54FC;

  return v8(a1);
}

uint64_t dispatch thunk of FamilyCoreDataSharingService.updateMembership(of:to:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 192);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B70E54FC;

  return v10(a1, a2);
}

uint64_t sub_1B713F68C(uint64_t a1, uint64_t *a2, void **a3)
{
  v4 = v3;
  v31 = a3;
  v7 = sub_1B715D8C0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;
  v29 = v9 + 32;
  v30 = v9;

  v16 = 0;
  while (v13)
  {
LABEL_11:
    sub_1B70E89DC(*(a1 + 48) + 40 * (__clz(__rbit64(v13)) | (v16 << 6)), v33);
    v18 = *a2;
    if (*(*a2 + 16))
    {
      v19 = sub_1B70E7D68(v33);
      if (v20)
      {
        sub_1B70B46E8(*(v18 + 56) + 32 * v19, v32);
        if (swift_dynamicCast())
        {
          v27 = v7;
          v28 = a2;
          sub_1B70E89DC(v33, v32);
          if (swift_dynamicCast())
          {
            v26 = v4;
            sub_1B715D8B0();

            v21 = v31;
            v22 = *v31;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v21 = v22;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v22 = sub_1B70F1AD0(0, v22[2] + 1, 1, v22);
              *v31 = v22;
            }

            a2 = v28;
            v25 = v22[2];
            v24 = v22[3];
            if (v25 >= v24 >> 1)
            {
              v22 = sub_1B70F1AD0(v24 > 1, v25 + 1, 1, v22);
              *v31 = v22;
            }

            v22[2] = v25 + 1;
            v7 = v27;
            (*(v30 + 32))(v22 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25, v34, v27);
            v4 = v26;
          }

          else
          {

            v7 = v27;
            a2 = v28;
          }
        }
      }
    }

    v13 &= v13 - 1;
    result = sub_1B70E8A38(v33);
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
    }

    v13 = *(a1 + 64 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B713FA18(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a1;
  v5 = *a2;

  return v4;
}

uint64_t sub_1B713FA7C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *a4;
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_1B713FB34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9841B0, &qword_1B71689B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B71688F0;
  *(inited + 32) = xmmword_1B7168900;
  *(inited + 48) = 0x80000001B7170310;
  *(inited + 56) = xmmword_1B7168910;
  *(inited + 72) = 0x80000001B7170340;
  *(inited + 80) = xmmword_1B7168920;
  *(inited + 96) = 0x80000001B7170380;
  *(inited + 104) = 2;
  sub_1B715E7F0();
  MEMORY[0x1B8CA0E30](0xD000000000000044, 0x80000001B71703B0);
  swift_beginAccess();
  v1 = aAltdsid_5[0];
  v2 = aAltdsid_5[1];

  MEMORY[0x1B8CA0E30](v1, v2);

  MEMORY[0x1B8CA0E30](0x75426F546B73612FLL, 0xE900000000000079);
  *(inited + 112) = 0;
  *(inited + 120) = 0xE000000000000000;
  *(inited + 128) = xmmword_1B7168930;
  *(inited + 144) = 0x80000001B7170400;
  *(inited + 152) = 13;
  sub_1B715E7F0();
  MEMORY[0x1B8CA0E30](0xD000000000000044, 0x80000001B71703B0);
  v4 = aAltdsid_5[0];
  v3 = aAltdsid_5[1];

  MEMORY[0x1B8CA0E30](v4, v3);

  MEMORY[0x1B8CA0E30](0x6143656C7070612FLL, 0xEA00000000006873);
  *(inited + 160) = 0;
  *(inited + 168) = 0xE000000000000000;
  *(inited + 176) = xmmword_1B7168940;
  *(inited + 192) = 0x80000001B7170450;
  *(inited + 200) = xmmword_1B7168950;
  *(inited + 216) = 0x80000001B71704B0;
  *(inited + 224) = xmmword_1B7168960;
  *(inited + 240) = 0x80000001B7170500;
  *(inited + 248) = xmmword_1B7168970;
  *(inited + 264) = 0x80000001B7170550;
  *(inited + 272) = xmmword_1B7168980;
  *(inited + 288) = 0x80000001B7170590;
  *(inited + 296) = 10;
  sub_1B715E7F0();
  MEMORY[0x1B8CA0E30](0xD000000000000020, 0x80000001B71705D0);
  swift_beginAccess();
  v5 = *aUuid;
  v6 = qword_1EB984180;

  MEMORY[0x1B8CA0E30](v5, v6);

  MEMORY[0x1B8CA0E30](0xD000000000000011, 0x80000001B7170600);
  *(inited + 304) = 0;
  *(inited + 312) = 0xE000000000000000;
  *(inited + 320) = xmmword_1B7168990;
  *(inited + 336) = 0x80000001B7170620;
  *(inited + 344) = 12;
  *(inited + 352) = 0xD000000000000018;
  *(inited + 360) = 0x80000001B7170640;
  v7 = sub_1B71413F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9841B8, &qword_1B71689B8);
  result = swift_arrayDestroy();
  qword_1EB98E480 = v7;
  return result;
}

void static FamilySettingsDestinations.urlDestination(to:)(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1B71412B4(MEMORY[0x1E69E7CC0]);
  v3 = sub_1B715DFD0();

  v9[0] = 0;
  v4 = [ObjCClassFromMetadata urlDestinationTo:a1 params:v3 error:v9];

  v5 = v9[0];
  if (v4)
  {
    sub_1B715DAF0();
    v6 = v5;
  }

  else
  {
    v7 = v9[0];
    sub_1B715DAA0();

    swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t static FamilySettingsDestinations.urlDestination(to:params:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983448, &qword_1B7164B40);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  if (qword_1EB982340 != -1)
  {
    swift_once();
  }

  v13 = qword_1EB98E480;
  if (!*(qword_1EB98E480 + 16) || (v14 = sub_1B70E7DAC(a1), (v15 & 1) == 0))
  {
    if (qword_1ED7CFAD8 != -1)
    {
      swift_once();
    }

    v22 = sub_1B715DEE0();
    __swift_project_value_buffer(v22, qword_1ED7CFAE0);
    v23 = sub_1B715DEC0();
    v24 = sub_1B715E560();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1B70B0000, v23, v24, "destination does not contain a value so returning default path", v25, 2u);
      MEMORY[0x1B8CA2750](v25, -1, -1);
    }

    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1B715E7F0();
    MEMORY[0x1B8CA0E30](0xD000000000000021, 0x80000001B7170210);
    *&v37[0] = a1;
    type metadata accessor for Destination(0);
    sub_1B715E900();
    v26 = v35;
    LOBYTE(v35) = 14;
    _s12FamilyCircle0A5ErrorO06createC9WithTrace_4code6domain4files0C0_pSS_ACS2StFZ_0(v26, v36, &v35, 0xD000000000000010, 0x80000001B716E8E0, 0xD00000000000002DLL, 0x80000001B7170240);

    return swift_willThrow();
  }

  v16 = *(v13 + 56) + 16 * v14;
  v18 = *v16;
  v17 = *(v16 + 8);
  v38 = a2;
  if (a1 != 10)
  {

    goto LABEL_16;
  }

  swift_beginAccess();
  v34 = xmmword_1EB984178;

  sub_1B715E7A0();
  if (!*(a2 + 16) || (v19 = sub_1B70E7D68(&v35), (v20 & 1) == 0))
  {
    sub_1B70E8A38(&v35);
    goto LABEL_23;
  }

  sub_1B70B46E8(*(a2 + 56) + 32 * v19, v37);
  sub_1B70E8A38(&v35);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:

    LOBYTE(v35) = 14;
    _s12FamilyCircle0A5ErrorO06createC9WithTrace_4code6domain4files0C0_pSS_ACS2StFZ_0(0xD00000000000001CLL, 0x80000001B71702A0, &v35, 0xD000000000000010, 0x80000001B716E8E0, 0xD00000000000002DLL, 0x80000001B7170240);
    swift_willThrow();
  }

  v21 = *(&v34 + 1);
  v33 = v34;
  v37[0] = xmmword_1EB984178;

  sub_1B715E7A0();
  sub_1B7140A24(&v35, v37);
  sub_1B70B4B7C(v37, &qword_1EB9838F8, &qword_1B71660E0);
  sub_1B70E8A38(&v35);
  v35 = v18;
  v36 = v17;
  v37[0] = xmmword_1EB984178;
  *&v34 = v33;
  *(&v34 + 1) = v21;
  sub_1B70F8C9C();
  sub_1B715E710();

LABEL_16:
  sub_1B715DB10();

  if (*(v38 + 16))
  {
    v35 = MEMORY[0x1E69E7CC0];

    sub_1B713F68C(v28, &v38, &v35);

    v29 = sub_1B715DB20();
    if (!(*(*(v29 - 8) + 48))(v12, 1, v29))
    {
      sub_1B715DB00();
    }
  }

  sub_1B70B45B4(v12, v10, &qword_1EB983448, &qword_1B7164B40);
  v30 = sub_1B715DB20();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v10, 1, v30) != 1)
  {
    (*(v31 + 32))(a3, v10, v30);
    sub_1B70B4B7C(v12, &qword_1EB983448, &qword_1B7164B40);
  }

  sub_1B70B4B7C(v10, &qword_1EB983448, &qword_1B7164B40);
  result = sub_1B715E910();
  __break(1u);
  return result;
}

FamilySettingsDestinations __swiftcall FamilySettingsDestinations.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_1B7140A24@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1B70E7D68(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B70F74F4();
      v11 = v13;
    }

    sub_1B70E8A38(*(v11 + 48) + 40 * v8);
    sub_1B70E74F4((*(v11 + 56) + 32 * v8), a2);
    sub_1B7140B6C(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1B7140AC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1B70E747C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B70F7810();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1B70E74F4((*(v12 + 56) + 32 * v9), a3);
    sub_1B7140EC0(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1B7140B6C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B715E760() + 1) & ~v5;
    do
    {
      sub_1B70E89DC(*(a2 + 48) + 40 * v6, v26);
      v10 = *(a2 + 40);
      v11 = sub_1B715E780();
      result = sub_1B70E8A38(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v9 = v22[1];
            *v21 = *v22;
            v21[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B7140D10(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B715E760() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1B715EC60();

      sub_1B715E160();
      v13 = sub_1B715EC90();

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

uint64_t sub_1B7140EC0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B715E760() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1B715EC60();

      sub_1B715E160();
      v14 = sub_1B715EC90();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B7141070(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983648, &qword_1B71657F0);
    v3 = sub_1B715E950();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B70B45B4(v4, &v13, &qword_1EB983950, &qword_1B7166378);
      v5 = v13;
      v6 = v14;
      result = sub_1B70E747C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B70E74F4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1B71411A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983638, &qword_1B71657E0);
    v3 = sub_1B715E950();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1B70E747C(v5, v6);
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

unint64_t sub_1B71412B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983650, &qword_1B71657F8);
    v3 = sub_1B715E950();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B70B45B4(v4, v13, &qword_1EB983990, &unk_1B7166500);
      result = sub_1B70E7D68(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1B70E74F4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

void *sub_1B71413F0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9841C0, &qword_1B71689C0);
  v3 = sub_1B715E950();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_1B70E7DAC(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1B70E7DAC(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B7141504(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9841A8, &qword_1B71689A8);
    v3 = sub_1B715E950();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1B70E8CF8(v6);
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

unint64_t sub_1B71415FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9841A0, &qword_1B71689A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983640, &qword_1B71657E8);
    v8 = sub_1B715E950();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B70B45B4(v10, v6, &qword_1EB9841A0, &qword_1B71689A0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1B70E747C(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1B715DC80();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t type metadata accessor for FamilySettingsDestinations()
{
  result = qword_1EB984198;
  if (!qword_1EB984198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB984198);
  }

  return result;
}

uint64_t sub_1B7141834()
{
  sub_1B715E160();
}

FamilyCircle::RemoteGuardianInviteKeys_optional __swiftcall RemoteGuardianInviteKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B715E970();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t RemoteGuardianInviteKeys.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000013;
    v7 = 0xD000000000000015;
    if (v1 != 8)
    {
      v7 = 0xD000000000000016;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000014;
    if (v1 != 5)
    {
      v8 = 0xD000000000000010;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x79654B656C746974;
    v3 = 0x5255657469766E69;
    v4 = 0x6F43657469766E69;
    if (v1 != 3)
    {
      v4 = 0x4B4C52556E6F6369;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x656C746974627573;
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
}

uint64_t sub_1B7141BA8()
{
  v1 = *v0;
  sub_1B715EC60();
  sub_1B7141834();
  return sub_1B715EC90();
}

uint64_t sub_1B7141BF8()
{
  v1 = *v0;
  sub_1B715EC60();
  sub_1B7141834();
  return sub_1B715EC90();
}

unint64_t sub_1B7141C48@<X0>(unint64_t *a1@<X8>)
{
  result = RemoteGuardianInviteKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t HelpTopic.id.getter()
{
  v1 = 0x616664326C68636DLL;
  if (*v0 != 2)
  {
    v1 = 0x346438626C68636DLL;
  }

  v2 = 0x636566316C68636DLL;
  if (!*v0)
  {
    v2 = *v0;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

FamilyCircle::HelpTopic_optional __swiftcall HelpTopic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B715E970();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B7141D5C()
{
  v1 = *v0;
  sub_1B715EC60();
  sub_1B715E160();

  return sub_1B715EC90();
}

uint64_t sub_1B7141E28()
{
  *v0;
  sub_1B715E160();
}

uint64_t sub_1B7141EE0()
{
  v1 = *v0;
  sub_1B715EC60();
  sub_1B715E160();

  return sub_1B715EC90();
}

void sub_1B7141FB4(uint64_t *a1@<X8>)
{
  v2 = 0xE000000000000000;
  v3 = 0xEC00000065323937;
  v4 = 0x616664326C68636DLL;
  if (*v1 != 2)
  {
    v4 = 0x346438626C68636DLL;
    v3 = 0xEC00000064333038;
  }

  v5 = 0x636566316C68636DLL;
  if (*v1)
  {
    v2 = 0xEC00000030313834;
  }

  else
  {
    v5 = *v1;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v3;
  }

  *a1 = v6;
  a1[1] = v2;
}

id FamilyDefaultSuites.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::Bool __swiftcall NSUserDefaults.exists(key:)(Swift::String key)
{
  v2 = sub_1B715E070();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1B715E720();
    swift_unknownObjectRelease();
    sub_1B70E74F4(&v5, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  sub_1B711E824(v6);
  return v3 != 0;
}

Swift::Void __swiftcall NSUserDefaults.clear(key:)(Swift::String key)
{
  v2 = sub_1B715E070();
  [v1 removeObjectForKey_];
}

id sub_1B7142380()
{
  v1 = *v0;
  v2 = sub_1B715E070();
  v3 = [v1 integerForKey_];

  return v3;
}

void sub_1B71423EC(uint64_t a1)
{
  sub_1B712C5F0(a1, v10);
  v2 = v11;
  if (v11)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v10, v11);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x1EEE9AC00](v3);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7);
    v8 = sub_1B715EB00();
    (*(v4 + 8))(v7, v2);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1B715E070();
  [v1 setObject:v8 forKey:v9];
  swift_unknownObjectRelease();
}

BOOL sub_1B714254C()
{
  v1 = *v0;
  v2 = sub_1B715E070();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1B715E720();
    swift_unknownObjectRelease();
    sub_1B70E74F4(&v5, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  sub_1B711E824(v6);
  return v3 != 0;
}

void sub_1B71425E4()
{
  v1 = *v0;
  v2 = sub_1B715E070();
  [v1 removeObjectForKey_];
}

id sub_1B7142670(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1B71426E4(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1B7142740(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B714281C()
{
  result = sub_1B715ED10();
  qword_1EB9841C8 = result;
  unk_1EB9841D0 = v1;
  return result;
}

uint64_t static FamilyTimeouts.maxScreenTimeWait.getter()
{
  if (qword_1EB9830B8 != -1)
  {
    swift_once();
  }

  return qword_1EB9841C8;
}

unint64_t sub_1B71428B8()
{
  result = qword_1EB9841D8;
  if (!qword_1EB9841D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9841D8);
  }

  return result;
}

unint64_t sub_1B7142910()
{
  result = qword_1EB9841E0;
  if (!qword_1EB9841E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9841E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteGuardianInviteKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteGuardianInviteKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t XPCActivityScheduler.__allocating_init(taskProvider:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  return result;
}

uint64_t sub_1B7142B84(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t XPCActivityScheduler.taskProvider.getter()
{
  sub_1B7144298();

  return swift_unknownObjectRetain();
}

uint64_t XPCActivityScheduler.init(taskProvider:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_1B7142BC8()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B7142C10, 0, 0);
}

uint64_t sub_1B7142C10()
{
  v1 = v0[4];
  v2 = *(v0[3] + 24);
  v4 = *(v1 + 80);
  v3 = *(v1 + 88);
  v5 = *(v3 + 48);
  v6 = v5(v4, v3);
  if (v8)
  {
LABEL_4:
    v11 = HIDWORD(v6);
    if (HIDWORD(v6))
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
        __break(1u);
        return MEMORY[0x1EEDE8BA8](v6, v7, v8, v9, v10);
      }

      v11 = v6 >> 16;
      if (v6 >> 16 <= 0x10)
      {
        if (v6 <= 0x7F)
        {
          v12 = v6 + 1;
LABEL_9:
          v0[2] = (v12 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v12) >> 3))));
          goto LABEL_10;
        }

LABEL_20:
        v38 = (v6 & 0x3F) << 8;
        v39 = (v6 >> 6) + v38 + 33217;
        v40 = (v38 | (v6 >> 6) & 0x3F) << 8;
        v41 = (v6 >> 18) + ((v40 | (v6 >> 12) & 0x3F) << 8) - 2122219023;
        v42 = (v6 >> 12) + v40 + 8487393;
        if (v11)
        {
          v12 = v41;
        }

        else
        {
          v12 = v42;
        }

        if (v6 < 0x800)
        {
          v12 = v39;
        }

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_4;
  }

LABEL_10:
  v13 = sub_1B715E140();
  v15 = v14;
  v16 = v0[3];
  if (*(v16 + 16))
  {
  }

  else
  {
    v45 = v5;
    v17 = swift_allocObject();
    v17[2] = v4;
    v17[3] = v3;
    v17[4] = v2;
    v18 = *(v3 + 56);
    swift_unknownObjectRetain();
    v19 = v18(v4, v3);
    v44 = v4;
    v21 = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v21;
    if (qword_1ED7CFA80 != -1)
    {
      swift_once();
    }

    v23 = sub_1B715DEE0();
    v24 = __swift_project_value_buffer(v23, qword_1ED7CFA88);
    v4 = v44;
    v25 = sub_1B7143C7C(sub_1B71442A0, v17, v13, v15, sub_1B7121904, v22, v24);

    v26 = *(v16 + 16);
    *(v16 + 16) = v25;

    v5 = v45;
  }

  sub_1B715DDA0();
  v27 = v5(v4, v3);
  v29 = v28;
  v31 = v30;
  v32 = *(v16 + 16);
  v0[5] = v32;
  v33 = swift_task_alloc();
  v34 = v4;
  v35 = v33;
  v0[6] = v33;
  v33[2] = v34;
  v33[3] = v3;
  v33[4] = v2;
  v33[5] = v32;
  v36 = *(MEMORY[0x1E6985E70] + 4);

  v37 = swift_task_alloc();
  v0[7] = v37;
  *v37 = v0;
  v37[1] = sub_1B7142F94;
  v9 = &unk_1B7168CA0;
  v6 = v27;
  v7 = v29;
  v8 = v31;
  v10 = v35;

  return MEMORY[0x1EEDE8BA8](v6, v7, v8, v9, v10);
}

void sub_1B7142F94()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = *(v2 + 48);

    v7 = *(v4 + 8);

    v7();
  }
}

uint64_t sub_1B71430D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B71430F8, 0, 0);
}

uint64_t sub_1B71430F8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1B71431F4;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v5, 0, 0, 0x656C756465686373, 0xEA00000000002928, sub_1B7144560, v3, v6);
}

uint64_t sub_1B71431F4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B70E6EAC, 0, 0);
}

uint64_t sub_1B714330C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a3;
  v37 = a5;
  v34 = a2;
  v35 = a4;
  v33 = a1;
  v38 = sub_1B715DF70();
  v41 = *(v38 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B715DFB0();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9841E8, &unk_1B7168D50);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  v17 = sub_1B715DF80();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B70B4E34();
  (*(v18 + 104))(v21, *MEMORY[0x1E69E7F98], v17);
  v32 = sub_1B715E5F0();
  (*(v18 + 8))(v21, v17);
  (*(v13 + 16))(v16, v33, v12);
  v22 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v23 = swift_allocObject();
  v24 = v34;
  v26 = v36;
  v25 = v37;
  *(v23 + 2) = v35;
  *(v23 + 3) = v25;
  *(v23 + 4) = v24;
  *(v23 + 5) = v26;
  (*(v13 + 32))(&v23[v22], v16, v12);
  aBlock[4] = sub_1B714456C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B70E2C8C;
  aBlock[3] = &block_descriptor_18_0;
  v27 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_1B715DFA0();
  v42 = MEMORY[0x1E69E7CC0];
  sub_1B7144660(&unk_1ED7CFAC8, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB983EF8, &qword_1B71678F8);
  sub_1B70B4F10(&qword_1ED7CFAC0, &qword_1EB983EF8, &qword_1B71678F8);
  v28 = v38;
  sub_1B715E740();
  v29 = v32;
  MEMORY[0x1B8CA1280](0, v11, v7, v27);
  _Block_release(v27);

  (*(v41 + 8))(v7, v28);
  (*(v39 + 8))(v11, v40);
}

uint64_t sub_1B7143784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 24))(v13, a4, a5);
  v6 = v13[3];
  if (qword_1ED7CFA80 != -1)
  {
    swift_once();
  }

  v7 = sub_1B715DEE0();
  __swift_project_value_buffer(v7, qword_1ED7CFA88);
  v8 = sub_1B715DEC0();
  v9 = sub_1B715E550();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_1B70B461C(0x656C756465686373, 0xEA00000000002928, v13);
    *(v10 + 12) = 2048;
    *(v10 + 14) = v6;
    _os_log_impl(&dword_1B70B0000, v8, v9, "FAFamilyFetchActivityScheduler %s updating criteria interval: %lld", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1B8CA2750](v11, -1, -1);
    MEMORY[0x1B8CA2750](v10, -1, -1);
  }

  if (a2)
  {
    XPCActivity.updateCriteria()();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9841E8, &unk_1B7168D50);
  return sub_1B715E3E0();
}

uint64_t sub_1B7143934(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t (*a4)(uint64_t))
{
  v6 = *a3;
  result = MEMORY[0x1B8CA0A40]();
  switch(v6)
  {
    case 4:
      return XPCActivity.continue()();
    case 3:
      return XPCActivity.defer()();
    case 2:
      return a4(a1);
  }

  return result;
}

void sub_1B71439B8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1B70F2334;
    *(v3 + 24) = v1;
    v5[4] = sub_1B7144384;
    v5[5] = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1B70ED408;
    v5[3] = &block_descriptor_13;
    v4 = _Block_copy(v5);
    swift_retain_n();

    dispatch_sync(v2, v4);
    _Block_release(v4);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }
  }
}

uint64_t XPCActivityScheduler.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t XPCActivityScheduler.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B7143B64()
{
  v1 = *v0;
  sub_1B7144298();

  return swift_unknownObjectRetain();
}

uint64_t sub_1B7143B98()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B70E5228;

  return sub_1B7142BC8();
}

uint64_t sub_1B7143C4C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1B7143C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a5;
  v49 = a1;
  v60 = a4;
  v56 = a3;
  v58 = sub_1B715E5A0();
  v10 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1B715E5B0();
  v53 = *(v55 - 8);
  v12 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B715DEE0();
  v59 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v18;
  v19 = sub_1B715DFB0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v42 - v25;
  sub_1B715DF90();
  v45 = v15;
  v54 = *(v15 + 16);
  v54(v18, a7, v14);
  v27 = swift_allocObject();
  v50 = v27;
  *(v27 + 16) = v49;
  *(v27 + 24) = a2;
  v28 = swift_allocObject();
  v49 = v28;
  *(v28 + 16) = v48;
  *(v28 + 24) = a6;
  v29 = type metadata accessor for XPCActivity();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v32 + 80) = 0;
  v48 = sub_1B70B4E34();
  *(v32 + 88) = 0;
  *(v32 + 96) = 0;
  strcpy(&aBlock, "XPCActivity-");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;

  v33 = v56;
  MEMORY[0x1B8CA0E30](v56, v60);
  v46 = *(&aBlock + 1);
  v47 = aBlock;
  v43 = v20;
  v34 = *(v20 + 16);
  v42 = v26;
  v44 = v19;
  v34(v24, v26, v19);
  (*(v53 + 104))(v52, *MEMORY[0x1E69E8098], v55);
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_1B7144660(&qword_1ED7CFAA8, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB983510, &qword_1B7165800);
  sub_1B70B4F10(&qword_1ED7CFAB8, &unk_1EB983510, &qword_1B7165800);
  sub_1B715E740();
  v35 = v51;
  v36 = sub_1B715E5E0();
  *(v32 + 16) = v36;
  *(v32 + 24) = v33;
  v37 = v59;
  *(v32 + 32) = v60;
  *(v32 + 40) = sub_1B71445F8;
  v38 = v49;
  *(v32 + 48) = v50;
  *(v32 + 56) = sub_1B7144658;
  *(v32 + 64) = v38;
  v54((v32 + OBJC_IVAR____TtC12FamilyCircle11XPCActivity_logger), v35, v37);
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1B70F22FC;
  *(v39 + 24) = v32;
  v64 = sub_1B71446B0;
  v65 = v39;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v62 = sub_1B70ED408;
  v63 = &block_descriptor_31_0;
  v40 = _Block_copy(&aBlock);

  dispatch_sync(v36, v40);
  _Block_release(v40);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  else
  {
    (*(v45 + 8))(v35, v59);
    (*(v43 + 8))(v42, v44);
    return v32;
  }

  return result;
}

uint64_t sub_1B71442A0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return (*(v2 + 24))(v1);
}

uint64_t sub_1B71442D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B70E54FC;

  return sub_1B71430D4(v5, v4, v2, v3);
}

uint64_t dispatch thunk of XPCActivityScheduler.schedule()()
{
  v2 = *(*v0 + 144);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B70E5228;

  return v6();
}

uint64_t sub_1B714456C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9841E8, &unk_1B7168D50) - 8);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1B7143784(v4, v5, v6, v1, v2);
}

__n128 sub_1B71445F8@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3(&v7);
  v5 = 256;
  if (!BYTE1(v7))
  {
    v5 = 0;
  }

  *a1 = v5 | v7;
  result = v9;
  *(a1 + 8) = v8;
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B7144660(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SharingCenter.XPC.ShareRecordZoneMessage.init(recordZone:audience:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t SharingCenter.XPC.AcceptShareMessage.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B715DB20();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t SharingCenter.XPC.AcceptShareMessage.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B715DB20();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1B71447B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B715EB10();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B714483C(uint64_t a1)
{
  v2 = sub_1B7144A2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7144878(uint64_t a1)
{
  v2 = sub_1B7144A2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SharingCenter.XPC.AcceptShareMessage.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9841F0, &qword_1B7168D60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7144A2C();
  sub_1B715ECE0();
  sub_1B715DB20();
  sub_1B7144D28(&qword_1EB9837C8, MEMORY[0x1E6968FB0]);
  sub_1B715EAA0();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1B7144A2C()
{
  result = qword_1EB9841F8;
  if (!qword_1EB9841F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9841F8);
  }

  return result;
}

uint64_t SharingCenter.XPC.AcceptShareMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1B715DB20();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984200, &qword_1B7168D68);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SharingCenter.XPC.AcceptShareMessage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7144A2C();
  sub_1B715ECC0();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_1B7144D28(&qword_1EB9837F0, MEMORY[0x1E6968FB0]);
    sub_1B715EA00();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_1B7144D70(v14, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B7144D28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7144D70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharingCenter.XPC.AcceptShareMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7144DEC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9841F0, &qword_1B7168D60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7144A2C();
  sub_1B715ECE0();
  sub_1B715DB20();
  sub_1B7144D28(&qword_1EB9837C8, MEMORY[0x1E6968FB0]);
  sub_1B715EAA0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1B7144F68(uint64_t a1)
{
  v2 = sub_1B7145024();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7144FA4(uint64_t a1)
{
  v2 = sub_1B7145024();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B7145024()
{
  result = qword_1EB984210;
  if (!qword_1EB984210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984210);
  }

  return result;
}

uint64_t SharingCenter.XPC.ShareRecordZoneMessage.recordZone.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1B7145120()
{
  if (*v0)
  {
    result = 0x65636E6569647561;
  }

  else
  {
    result = 0x6F5A64726F636572;
  }

  *v0;
  return result;
}

uint64_t sub_1B7145160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F5A64726F636572 && a2 == 0xEA0000000000656ELL;
  if (v6 || (sub_1B715EB10() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65636E6569647561 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B715EB10();

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

uint64_t sub_1B7145244(uint64_t a1)
{
  v2 = sub_1B7145450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7145280(uint64_t a1)
{
  v2 = sub_1B7145450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SharingCenter.XPC.ShareRecordZoneMessage.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984218, &qword_1B7168D78);
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7145450();
  sub_1B715ECE0();
  v17 = 0;
  sub_1B715EA60();
  if (!v2)
  {
    v16 = v14;
    v15 = 1;
    sub_1B71454A4();
    sub_1B715EAA0();
  }

  return (*(v13 + 8))(v7, v4);
}

unint64_t sub_1B7145450()
{
  result = qword_1EB984220;
  if (!qword_1EB984220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984220);
  }

  return result;
}

unint64_t sub_1B71454A4()
{
  result = qword_1EB984228;
  if (!qword_1EB984228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984228);
  }

  return result;
}

uint64_t SharingCenter.XPC.ShareRecordZoneMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984230, &qword_1B7168D80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7145450();
  sub_1B715ECC0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v11 = sub_1B715E9C0();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  sub_1B71456EC();
  sub_1B715EA00();
  (*(v6 + 8))(v9, v5);
  v15 = v19;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B71456EC()
{
  result = qword_1EB984238;
  if (!qword_1EB984238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984238);
  }

  return result;
}

uint64_t SharingCenter.XPC.ShareRecordZoneResponse.ParticipantInfo.token.getter()
{
  v1 = *v0;
  sub_1B70FFB50(*v0, *(v0 + 8));
  return v1;
}

uint64_t SharingCenter.XPC.ShareRecordZoneResponse.ParticipantInfo.emailAddress.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SharingCenter.XPC.ShareRecordZoneResponse.ParticipantInfo.init(token:emailAddress:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[2] = a3;
  a5[3] = a4;
  *a5 = result;
  a5[1] = a2;
  return result;
}

uint64_t sub_1B71457E0()
{
  if (*v0)
  {
    result = 0x6464416C69616D65;
  }

  else
  {
    result = 0x6E656B6F74;
  }

  *v0;
  return result;
}

uint64_t sub_1B7145820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B715EB10() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B715EB10();

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

uint64_t sub_1B71458FC(uint64_t a1)
{
  v2 = sub_1B7145B14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7145938(uint64_t a1)
{
  v2 = sub_1B7145B14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SharingCenter.XPC.ShareRecordZoneResponse.ParticipantInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984240, &qword_1B7168D88);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v13[1] = v1[3];
  v13[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B70FFB50(v8, v9);
  sub_1B7145B14();
  sub_1B715ECE0();
  v15 = v8;
  v16 = v9;
  v17 = 0;
  sub_1B70FFF48();
  sub_1B715EA50();
  sub_1B70FFF9C(v15, v16);
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_1B715EA60();
  }

  return (*(v14 + 8))(v7, v4);
}

unint64_t sub_1B7145B14()
{
  result = qword_1EB984248;
  if (!qword_1EB984248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984248);
  }

  return result;
}

uint64_t SharingCenter.XPC.ShareRecordZoneResponse.ParticipantInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984250, &qword_1B7168D90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7145B14();
  sub_1B715ECC0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  sub_1B7100224();
  sub_1B715E9B0();
  v11 = v19;
  v18 = v20;
  LOBYTE(v19) = 1;
  v12 = sub_1B715E9C0();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  v15 = v18;
  *a2 = v11;
  a2[1] = v15;
  a2[2] = v12;
  a2[3] = v14;
  sub_1B70FFB50(v11, v15);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1B70FFF9C(v11, v15);
}

uint64_t SharingCenter.XPC.ShareRecordZoneResponse.recordZoneID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SharingCenter.XPC.ShareRecordZoneResponse.shareURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SharingCenter.XPC.ShareRecordZoneResponse(0) + 20);
  v4 = sub_1B715DB20();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1B7145E90(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SharingCenter.XPC.ShareRecordZoneResponse.participants.getter()
{
  v1 = *(v0 + *(type metadata accessor for SharingCenter.XPC.ShareRecordZoneResponse(0) + 24));
}

uint64_t SharingCenter.XPC.ShareRecordZoneResponse.init(recordZoneID:shareURL:participants:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for SharingCenter.XPC.ShareRecordZoneResponse(0);
  v9 = *(v8 + 20);
  v10 = sub_1B715DB20();
  result = (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  *&a5[*(v8 + 24)] = a4;
  return result;
}

uint64_t sub_1B7145F8C()
{
  v1 = 0x4C52556572616873;
  if (*v0 != 1)
  {
    v1 = 0x7069636974726170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F5A64726F636572;
  }
}

uint64_t sub_1B7145FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B714808C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7146020(uint64_t a1)
{
  v2 = sub_1B71462DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B714605C(uint64_t a1)
{
  v2 = sub_1B71462DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SharingCenter.XPC.ShareRecordZoneResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984258, &qword_1B7168D98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B71462DC();
  sub_1B715ECE0();
  v11 = *v3;
  v12 = v3[1];
  v19 = 0;
  sub_1B715EA60();
  if (!v2)
  {
    v13 = type metadata accessor for SharingCenter.XPC.ShareRecordZoneResponse(0);
    v14 = *(v13 + 20);
    v18 = 1;
    sub_1B715DB20();
    sub_1B7144D28(&qword_1EB9837C8, MEMORY[0x1E6968FB0]);
    sub_1B715EAA0();
    v17 = *(v3 + *(v13 + 24));
    v16[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984268, &qword_1B7168DA0);
    sub_1B7146794(&qword_1EB984270, sub_1B7146330);
    sub_1B715EAA0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1B71462DC()
{
  result = qword_1EB984260;
  if (!qword_1EB984260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984260);
  }

  return result;
}

unint64_t sub_1B7146330()
{
  result = qword_1EB984278;
  if (!qword_1EB984278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984278);
  }

  return result;
}

uint64_t SharingCenter.XPC.ShareRecordZoneResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_1B715DB20();
  v31 = *(v29 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984280, &qword_1B7168DA8);
  v28 = *(v30 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v8 = v25 - v7;
  v9 = type metadata accessor for SharingCenter.XPC.ShareRecordZoneResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B71462DC();
  v14 = v32;
  sub_1B715ECC0();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v15 = v5;
  v26 = v9;
  v17 = v28;
  v16 = v29;
  v18 = v30;
  v19 = v31;
  v36 = 0;
  v20 = sub_1B715E9C0();
  v22 = v21;
  *v12 = v20;
  v12[1] = v21;
  v35 = 1;
  sub_1B7144D28(&qword_1EB9837F0, MEMORY[0x1E6968FB0]);
  sub_1B715EA00();
  v25[1] = v22;
  (*(v19 + 32))(v12 + *(v26 + 20), v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB984268, &qword_1B7168DA0);
  v34 = 2;
  sub_1B7146794(&qword_1EB984288, sub_1B714680C);
  sub_1B715EA00();
  (*(v17 + 8))(v8, v18);
  v23 = v27;
  *(v12 + *(v26 + 24)) = v33;
  sub_1B7146860(v12, v23);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return sub_1B71468C4(v12);
}

uint64_t sub_1B7146794(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB984268, &qword_1B7168DA0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B714680C()
{
  result = qword_1EB984290;
  if (!qword_1EB984290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984290);
  }

  return result;
}

uint64_t sub_1B7146860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharingCenter.XPC.ShareRecordZoneResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B71468C4(uint64_t a1)
{
  v2 = type metadata accessor for SharingCenter.XPC.ShareRecordZoneResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7146950(uint64_t a1)
{
  v2 = sub_1B7146B2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B714698C(uint64_t a1)
{
  v2 = sub_1B7146B2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7146A0C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1B715ECE0();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1B7146B2C()
{
  result = qword_1EB9842A0;
  if (!qword_1EB9842A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9842A0);
  }

  return result;
}

uint64_t sub_1B7146BC4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1B715ECE0();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1B7146D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x53676E69646E6570 && a2 == 0xED00007365726168)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B715EB10();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B7146DA8(uint64_t a1)
{
  v2 = sub_1B7146FCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7146DE4(uint64_t a1)
{
  v2 = sub_1B7146FCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SharingCenter.XPC.RepairSharesResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9842A8, &qword_1B7168DB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7146FCC();

  sub_1B715ECE0();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9842B8, &qword_1B7168DC0);
  sub_1B71471D8(&qword_1EB9842C0, &qword_1EB9842C8);
  sub_1B715EAA0();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1B7146FCC()
{
  result = qword_1EB9842B0;
  if (!qword_1EB9842B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9842B0);
  }

  return result;
}

uint64_t SharingCenter.XPC.RepairSharesResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9842D0, &qword_1B7168DC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7146FCC();
  sub_1B715ECC0();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9842B8, &qword_1B7168DC0);
    sub_1B71471D8(&qword_1EB9842D8, &qword_1EB9842E0);
    sub_1B715EA00();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B71471D8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9842B8, &qword_1B7168DC0);
    sub_1B7144D28(a2, type metadata accessor for SharingCenter.ShareDescriptor);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7147308()
{
  result = qword_1EB9842E8;
  if (!qword_1EB9842E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9842E8);
  }

  return result;
}

unint64_t sub_1B7147360()
{
  result = qword_1EB9842F0;
  if (!qword_1EB9842F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9842F0);
  }

  return result;
}

unint64_t sub_1B71473B8()
{
  result = qword_1EB982598;
  if (!qword_1EB982598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB982598);
  }

  return result;
}

unint64_t sub_1B7147410()
{
  result = qword_1EB9825A0;
  if (!qword_1EB9825A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9825A0);
  }

  return result;
}

unint64_t sub_1B71474F8()
{
  result = qword_1EB9825A8;
  if (!qword_1EB9825A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9825A8);
  }

  return result;
}

unint64_t sub_1B7147550()
{
  result = qword_1EB9825B0;
  if (!qword_1EB9825B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9825B0);
  }

  return result;
}

unint64_t sub_1B71475A8()
{
  result = qword_1EB984308;
  if (!qword_1EB984308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984308);
  }

  return result;
}

unint64_t sub_1B7147600()
{
  result = qword_1EB984310;
  if (!qword_1EB984310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB984310);
  }

  return result;
}

uint64_t sub_1B71476BC()
{
  result = sub_1B715DB20();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B7147738(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1B7147780(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}