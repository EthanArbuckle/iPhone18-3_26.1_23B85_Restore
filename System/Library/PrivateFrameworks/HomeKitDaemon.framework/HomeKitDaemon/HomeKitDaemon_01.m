uint64_t sub_22955E2BC(char a1)
{
  v2 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 463) = a1;

  return MEMORY[0x2822009F8](sub_22955E3BC, 0, 0);
}

uint64_t sub_22955E3BC()
{
  if (*(v0 + 463) != 1)
  {
    v1 = *(v0 + 408);
    v2 = *(v0 + 416);
    v3 = *(v0 + 392);
    sub_229562DC0(*(v0 + 400), v3);
    if ((*(v2 + 48))(v3, 1, v1) == 1)
    {
      sub_22953EAE4(*(v0 + 392), &qword_27D881900, &unk_22A576E70);
    }

    else
    {
      v4 = *(v0 + 456);
      v5 = *(v0 + 424);
      v6 = *(v0 + 408);
      v7 = *(v0 + 416);
      (*(v7 + 32))(*(v0 + 432), *(v0 + 392), v6);
      (*(v7 + 104))(v5, v4, v6);
      sub_22955AFD0(&qword_27D87C398, MEMORY[0x277D172F0]);
      sub_22A4DD7DC();
      sub_22A4DD7DC();
      v8 = *(v7 + 8);
      v8(v5, v6);
      v9 = *(v0 + 432);
      v10 = *(v0 + 408);
      if (*(v0 + 460) == *(v0 + 461))
      {
        v11 = *(v0 + 400);
        v12 = sub_22A4DD5AC();
        v13 = HMDLocalizedStringForKey(v12);

        sub_22A4DD5EC();
        v14 = sub_22A4DD5BC();
        v41 = v15;
        v42 = v14;

        v8(v9, v10);
        goto LABEL_8;
      }

      v8(*(v0 + 432), *(v0 + 408));
    }
  }

  v11 = *(v0 + 400);
  v16 = sub_22A4DD5AC();
  v17 = HMDLocalizedStringForKey(v16);

  sub_22A4DD5EC();
  v18 = sub_22A4DD5BC();
  v41 = v19;
  v42 = v18;

LABEL_8:
  sub_22953EAE4(v11, &qword_27D881900, &unk_22A576E70);
  v21 = *(v0 + 432);
  v20 = *(v0 + 440);
  v22 = *(v0 + 424);
  v23 = *(v0 + 392);
  v24 = *(v0 + 400);
  v26 = *(v0 + 376);
  v25 = *(v0 + 384);
  v28 = *(v0 + 360);
  v27 = *(v0 + 368);
  v29 = *(v0 + 352);
  v32 = *(v0 + 344);
  v33 = *(v0 + 336);
  v34 = *(v0 + 312);
  v35 = *(v0 + 304);
  v36 = *(v0 + 296);
  v37 = *(v0 + 288);
  v38 = *(v0 + 280);
  v39 = *(v0 + 272);
  v40 = *(v0 + 264);

  v30 = *(v0 + 8);

  return v30(v42, v41);
}

uint64_t sub_22955E790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  v7 = sub_22A4DCA0C();
  v6[15] = v7;
  v8 = *(v7 - 8);
  v6[16] = v8;
  v9 = *(v8 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v10 = sub_22A4DD07C();
  v6[19] = v10;
  v11 = *(v10 - 8);
  v6[20] = v11;
  v12 = *(v11 + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v13 = sub_22A4DC8EC();
  v6[23] = v13;
  v14 = *(v13 - 8);
  v6[24] = v14;
  v15 = *(v14 + 64) + 15;
  v6[25] = swift_task_alloc();
  v16 = sub_22A4DC99C();
  v6[26] = v16;
  v17 = *(v16 - 8);
  v6[27] = v17;
  v18 = *(v17 + 64) + 15;
  v6[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22955E984, 0, 0);
}

uint64_t sub_22955E984()
{
  v109 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[9];
  sub_22A4DC9AC();
  v5 = (*(v2 + 88))(v1, v3);
  if (v5 == *MEMORY[0x277D17330])
  {
    goto LABEL_2;
  }

  if (v5 != *MEMORY[0x277D17328])
  {
    v30 = v0[21];
    v32 = v0[16];
    v31 = v0[17];
    v33 = v0[15];
    v35 = v0[9];
    v34 = v0[10];

    sub_229562F68(0, &unk_27D87C380, off_278666068);
    sub_229557898();
    (*(v32 + 16))(v31, v35, v33);
    v36 = sub_22A4DD05C();
    v37 = sub_22A4DDCDC();
    v38 = os_log_type_enabled(v36, v37);
    v40 = v0[20];
    v39 = v0[21];
    v41 = v0[19];
    v42 = v0[16];
    v43 = v0[17];
    v44 = v0[15];
    v45 = v0[13];
    v104 = v45;
    v106 = v0[14];
    v46 = v0[9];
    if (v38)
    {
      v96 = v0[12];
      v102 = v0[9];
      v47 = swift_slowAlloc();
      log = v36;
      v48 = swift_slowAlloc();
      v108 = v48;
      *v47 = 136315138;
      v98 = v41;
      v100 = v39;
      v49 = sub_22A4DBA6C();
      v51 = v50;
      v52 = *(v42 + 8);
      v52(v43, v44);
      v53 = sub_2295A3E30(v49, v51, &v108);

      *(v47 + 4) = v53;
      _os_log_impl(&dword_229538000, log, v37, "Ignoring event with unhandled activePresetChangedReason: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x22AAD4E50](v48, -1, -1);
      MEMORY[0x22AAD4E50](v47, -1, -1);

      v52(v102, v44);
      (*(v40 + 8))(v100, v98);
    }

    else
    {

      v54 = *(v42 + 8);
      v54(v46, v44);
      v54(v43, v44);
      (*(v40 + 8))(v39, v41);
    }

    v56 = v0[27];
    v55 = v0[28];
    v57 = v0[26];
    goto LABEL_19;
  }

  v20 = v0[24];
  v19 = v0[25];
  v21 = v0[23];
  v22 = v0[9];
  sub_22A4DC9CC();
  v23 = (*(v20 + 88))(v19, v21);
  if (v23 != *MEMORY[0x277D172E0] && v23 != *MEMORY[0x277D172B8])
  {
    if (v23 == *MEMORY[0x277D172D8])
    {
LABEL_2:
      v6 = v0[15];
      v7 = v0[16];
      v9 = v0[13];
      v8 = v0[14];
      v10 = v0[12];
      v12 = v0[9];
      v11 = v0[10];

      v13 = sub_22A4DD5AC();
      v14 = HMDLocalizedStringForKey(v13);
LABEL_3:
      v15 = v14;

      sub_22A4DD5EC();
      v16 = sub_22A4DD5BC();
      v18 = v17;

      (*(v7 + 8))(v12, v6);
LABEL_20:
      v58 = v0[28];
      v59 = v0[25];
      v61 = v0[21];
      v60 = v0[22];
      v63 = v0[17];
      v62 = v0[18];

      v64 = v0[1];

      return v64(v16, v18);
    }

    v65 = v0[10];
    v66 = *MEMORY[0x277D172E8];
    v67 = v23;

    if (v67 == v66)
    {
      v6 = v0[15];
      v7 = v0[16];
      v9 = v0[13];
      v8 = v0[14];
      v68 = v0[12];
      v12 = v0[9];
      v13 = sub_22A4DD5AC();
      v14 = HMDLocalizedStringForKey(v13);
      goto LABEL_3;
    }

    v69 = v0[22];
    v70 = v0[18];
    v71 = v0[15];
    v72 = v0[16];
    v73 = v0[9];
    sub_229562F68(0, &unk_27D87C380, off_278666068);
    sub_229557898();
    (*(v72 + 16))(v70, v73, v71);
    v74 = sub_22A4DD05C();
    v75 = sub_22A4DDCDC();
    v76 = os_log_type_enabled(v74, v75);
    v77 = v0[22];
    v78 = v0[19];
    v79 = v0[20];
    v80 = v0[18];
    v82 = v0[15];
    v81 = v0[16];
    v105 = v0[13];
    v107 = v0[14];
    v83 = v0[12];
    v84 = v0[9];
    if (v76)
    {
      v97 = v0[12];
      v103 = v0[9];
      v85 = swift_slowAlloc();
      loga = v74;
      v86 = swift_slowAlloc();
      v108 = v86;
      *v85 = 136315138;
      v99 = v78;
      v101 = v77;
      v87 = sub_22A4DBA6C();
      v89 = v88;
      v90 = *(v81 + 8);
      v90(v80, v82);
      v91 = sub_2295A3E30(v87, v89, &v108);

      *(v85 + 4) = v91;
      _os_log_impl(&dword_229538000, loga, v75, "Ignoring event with unhandled scenario: %s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v86);
      MEMORY[0x22AAD4E50](v86, -1, -1);
      MEMORY[0x22AAD4E50](v85, -1, -1);

      v90(v103, v82);
      (*(v79 + 8))(v101, v99);
    }

    else
    {
      v92 = v0[12];

      v93 = *(v81 + 8);
      v93(v84, v82);
      v93(v80, v82);
      (*(v79 + 8))(v77, v78);
    }

    v56 = v0[24];
    v55 = v0[25];
    v57 = v0[23];
LABEL_19:
    (*(v56 + 8))(v55, v57);
    v16 = 0;
    v18 = 0;
    goto LABEL_20;
  }

  v25 = swift_task_alloc();
  v0[29] = v25;
  *v25 = v0;
  v25[1] = sub_22955F124;
  v26 = v0[13];
  v27 = v0[14];
  v28 = v0[12];

  return sub_229558F18(v25, v28, v26, v27);
}

uint64_t sub_22955F124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v6 = v4[29];
  v8 = *v3;
  v5[30] = a3;

  return MEMORY[0x2822009F8](sub_22955F22C, 0, 0);
}

uint64_t sub_22955F22C()
{
  if (v0[30] == 1)
  {
    v2 = v0[13];
    v1 = v0[14];
    v3 = v0[12];
    v4 = v0[10];
    (*(v0[16] + 8))(v0[9], v0[15]);

    v5 = v0[28];
    v6 = v0[25];
    v8 = v0[21];
    v7 = v0[22];
    v10 = v0[17];
    v9 = v0[18];

    v11 = v0[1];

    return v11(0, 0);
  }

  else
  {
    v14 = v0[3];
    v13 = v0[4];
    v0[31] = v13;
    v0[32] = v14;
    v15 = swift_task_alloc();
    v0[33] = v15;
    *v15 = v0;
    v15[1] = sub_22955F3A8;
    v16 = v0[30];
    v17 = v0[13];
    v18 = v0[14];
    v20 = v0[9];
    v19 = v0[10];

    return sub_22955D004(v20, v19, v17, v18, v14, v13, v16);
  }
}

uint64_t sub_22955F3A8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[6] = v2;
  v4[7] = a1;
  v4[8] = a2;
  v5 = v3[33];
  v6 = v3[32];
  v7 = v3[31];
  v8 = v3[30];
  v9 = v3[10];
  v11 = *v2;
  v4[34] = a2;

  sub_229562EE0(v6, v7, v8);

  return MEMORY[0x2822009F8](sub_22955F520, 0, 0);
}

uint64_t sub_22955F520()
{
  v1 = v0[34];
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = v0[9];

  (*(v3 + 8))(v7, v2);
  if (v1)
  {
    v8 = v0[34];
    v9 = v0[7];
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = v0[28];
  v11 = v0[25];
  v13 = v0[21];
  v12 = v0[22];
  v15 = v0[17];
  v14 = v0[18];

  v16 = v0[1];

  return v16(v9, v8);
}

uint64_t sub_22955F624(int a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3D8, &qword_22A576EB0);
  v49 = *(v2 - 8);
  v3 = *(v49 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - v7;
  v9 = sub_22A4DB48C();
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3E0, &qword_22A576EB8);
  v47 = *(v44 - 8);
  v13 = *(v47 + 64);
  v14 = MEMORY[0x28223BE20](v44);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v43 = &v39 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3E8, &qword_22A576EC0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_22A4DB82C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  result = 0;
  v48 = a1;
  if ((a1 & 0x10000) == 0)
  {
    v40 = v6;
    v41 = v8;
    v42 = v2;
    sub_229562F68(0, &qword_27D87C3F0, 0x277CCAE48);
    sub_22A4DB80C();
    sub_22A4DB46C();
    v23 = sub_22A4DDD2C();
    v24 = objc_opt_self();
    v25 = [v24 fahrenheit];
    v26 = sub_22A4DDEDC();

    if ((v26 & 1) == 0)
    {
      v27 = [v24 celsius];
      sub_22A4DDEDC();
    }

    sub_22A4DB80C();
    sub_229562F14();
    sub_22A4DB42C();
    v28 = [v24 celsius];
    sub_22A4DDEDC();

    sub_22A4DB47C();
    v29 = v43;
    v30 = v44;
    MEMORY[0x22AACE610](v12, v44);
    (*(v45 + 8))(v12, v46);
    v47 = *(v47 + 8);
    (v47)(v16, v30);
    sub_22A4DE73C();
    v31 = [v24 celsius];
    v32 = v41;
    sub_22A4DB12C();
    v33 = v40;
    v34 = v42;
    sub_22A4DB14C();
    sub_22A4DB13C();
    v36 = v35;
    v37 = *(v49 + 8);
    v37(v33, v34);
    v50 = v36;
    v38 = sub_22A4DB41C();

    v37(v32, v34);
    (v47)(v29, v30);
    return v38;
  }

  return result;
}

uint64_t sub_22955FB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v7 = sub_22A4DD07C();
  v6[25] = v7;
  v8 = *(v7 - 8);
  v6[26] = v8;
  v9 = *(v8 + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v10 = sub_22A4DC86C();
  v6[34] = v10;
  v11 = *(v10 - 8);
  v6[35] = v11;
  v12 = *(v11 + 64) + 15;
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v13 = sub_22A4DC8EC();
  v6[38] = v13;
  v14 = *(v13 - 8);
  v6[39] = v14;
  v15 = *(v14 + 64) + 15;
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881900, &unk_22A576E70) - 8) + 64) + 15;
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v17 = sub_22A4DCA0C();
  v6[45] = v17;
  v18 = *(v17 - 8);
  v6[46] = v18;
  v19 = *(v18 + 64) + 15;
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  v20 = type metadata accessor for ClimateBulletinBuilder.ValenciaContent.MatterEventDetails(0);
  v6[55] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v6[56] = swift_task_alloc();
  v22 = sub_22A4DC99C();
  v6[57] = v22;
  v23 = *(v22 - 8);
  v6[58] = v23;
  v24 = *(v23 + 64) + 15;
  v6[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22955FE8C, 0, 0);
}

uint64_t sub_22955FE8C()
{
  v283 = v0;
  v1 = v0;
  v4 = v0 + 58;
  v3 = v0[58];
  v2 = v4[1];
  v5 = v1[57];
  v6 = v1[19];
  sub_22A4DC9AC();
  v7 = (*(v3 + 88))(v2, v5);
  if (v7 == *MEMORY[0x277D17330])
  {
    v8 = v1[45];
    v9 = v1[46];
    v10 = v1;
    v13 = v1 + 23;
    v12 = v1[23];
    v11 = v13[1];
    v14 = v10[21];
    v15 = v10[22];
    v17 = v10[19];
    v16 = v10[20];
    v234 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_22A576180;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = sub_229562E8C();
    *(v18 + 32) = v14;
    *(v18 + 40) = v15;

    v19 = sub_22A4DD5AC();
    v20 = HMDLocalizedStringForKey(v19);

    sub_22A4DD5EC();
    v21 = sub_22A4DD5BC();
    v272 = v22;
    v276 = v21;

    (*(v9 + 8))(v17, v8);
LABEL_67:
    v1 = v234;
    goto LABEL_68;
  }

  if (v7 != *MEMORY[0x277D17328])
  {
    v46 = v1[46];
    v45 = v1[47];
    v47 = v1[45];
    v48 = v1[27];
    v50 = v1[19];
    v49 = v1[20];

    sub_229562F68(0, &unk_27D87C380, off_278666068);
    sub_229557898();
    (*(v46 + 16))(v45, v50, v47);
    v51 = sub_22A4DD05C();
    v52 = sub_22A4DDCDC();
    v53 = os_log_type_enabled(v51, v52);
    v55 = v1[46];
    v54 = v1[47];
    v56 = v1[45];
    v58 = v1[26];
    v57 = v1[27];
    v59 = v1[24];
    v60 = v1[25];
    v273 = v1[23];
    v267 = v1[22];
    v277 = v1[19];
    if (v53)
    {
      v235 = v1;
      v61 = swift_slowAlloc();
      v262 = v59;
      v62 = swift_slowAlloc();
      v282 = v62;
      *v61 = 136315138;
      v252 = v60;
      v256 = v57;
      v63 = sub_22A4DBA6C();
      v65 = v64;
      v66 = *(v55 + 8);
      v66(v54);
      v67 = sub_2295A3E30(v63, v65, &v282);

      *(v61 + 4) = v67;
      _os_log_impl(&dword_229538000, v51, v52, "Ignoring event with unhandled activePresetChangedReason: %s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x22AAD4E50](v62, -1, -1);
      v68 = v61;
      v1 = v235;
      MEMORY[0x22AAD4E50](v68, -1, -1);

      (v66)(v277, v56);
      (*(v58 + 8))(v256, v252);
    }

    else
    {

      v69 = *(v55 + 8);
      v69(v277, v56);
      v69(v54, v56);
      (*(v58 + 8))(v57, v60);
    }

    v71 = v1[58];
    v70 = v1[59];
    v72 = v1[57];
    goto LABEL_13;
  }

  v24 = v1[55];
  v23 = v1[56];
  v25 = v1[54];
  v26 = v1[45];
  v27 = v1[46];
  v28 = v1[19];
  v29 = v1[20];
  v30 = *(v27 + 16);
  v1[60] = v30;
  v1[61] = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v30(v25, v28, v26);
  v31 = sub_22A4DC9DC();
  v32 = sub_22A4DC9EC();
  *(v1 + 144) = *(v24 + 24);
  sub_22A4DC9BC();
  v33 = sub_22955F624(v31 & 0x1FFFF);
  v1[62] = v33;
  v1[63] = v34;
  *v23 = v33;
  v23[1] = v34;
  v35 = sub_22955F624(v32 & 0x1FFFF);
  v37 = v36;
  v1[64] = v35;
  v1[65] = v36;
  v38 = *(v27 + 8);
  v1[66] = v38;
  v1[67] = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38(v25, v26);
  v23[2] = v35;
  v23[3] = v37;
  if (!v29)
  {
    (*(v1[39] + 56))(v1[44], 1, 1, v1[38]);
    v73 = 2;
    goto LABEL_30;
  }

  v39 = v1[20];
  if (*(v39 + 16))
  {
    v40 = v1[20];

    v41 = sub_229543DBC(0xD000000000000017, 0x800000022A589450);
    if (v42)
    {
      sub_2295404B0(*(v39 + 56) + 32 * v41, (v1 + 2));

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      if (swift_dynamicCast())
      {
        v43 = v1[44];
        v44 = *(v1 + 596);
        sub_22A4DC8CC();
        goto LABEL_17;
      }
    }

    else
    {
    }
  }

  (*(v1[39] + 56))(v1[44], 1, 1, v1[38]);
LABEL_17:
  if (!*(v39 + 16))
  {
    goto LABEL_25;
  }

  v74 = sub_229543DBC(0x6E69746165487369, 0xE900000000000067);
  if ((v75 & 1) == 0)
  {

LABEL_25:
    v73 = 2;
    if (*(v39 + 16))
    {
      goto LABEL_26;
    }

LABEL_30:
    v79 = 2;
    goto LABEL_31;
  }

  sub_2295404B0(*(v39 + 56) + 32 * v74, (v1 + 6));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  if (swift_dynamicCast())
  {
    v73 = *(v1 + 595);
  }

  else
  {
    v73 = 2;
  }

  if (!*(v39 + 16))
  {
    goto LABEL_30;
  }

LABEL_26:

  v76 = sub_229543DBC(0x6E696C6F6F437369, 0xE900000000000067);
  if ((v77 & 1) == 0)
  {

    goto LABEL_30;
  }

  sub_2295404B0(*(v39 + 56) + 32 * v76, (v1 + 10));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v78 = swift_dynamicCast();
  v79 = *(v1 + 594);
  if (!v78)
  {
    v79 = 2;
  }

LABEL_31:
  *(v1 + 598) = v79;
  *(v1 + 597) = v73;
  v80 = v1[43];
  v81 = v1[38];
  v82 = v1[39];
  sub_229562DC0(v1[44], v80);
  v83 = (*(v82 + 48))(v80, 1, v81);
  v84 = v1[43];
  if (v83 == 1)
  {
    v85 = v1[20];

    sub_22953EAE4(v84, &qword_27D881900, &unk_22A576E70);
LABEL_39:
    v102 = v1[35];
    v101 = v1[36];
    v103 = v1[34];
    (*(v102 + 16))(v101, v1[56] + *(v1 + 144), v103);
    v104 = (*(v102 + 88))(v101, v103);
    v234 = v1;
    if (v104 == *MEMORY[0x277D17278])
    {
      v105 = v1[21];
      v106 = v1[22];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
      v107 = swift_allocObject();
      *(v107 + 16) = xmmword_22A576180;
      *(v107 + 56) = MEMORY[0x277D837D0];
      *(v107 + 64) = sub_229562E8C();
      *(v107 + 32) = v105;
      *(v107 + 40) = v106;
LABEL_41:
      v108 = v1[66];
      v268 = v1[56];
      v109 = v1[45];
      v257 = v1[67];
      v263 = v1[44];
      v110 = v1[23];
      v111 = v1[24];
      v112 = v1[19];

      v113 = sub_22A4DD5AC();
      v114 = HMDLocalizedStringForKey(v113);

      sub_22A4DD5EC();
      v115 = sub_22A4DD5BC();
      v272 = v116;
      v276 = v115;

      v108(v112, v109);
      sub_22953EAE4(v263, &qword_27D881900, &unk_22A576E70);
      sub_229562E30(v268);
      goto LABEL_67;
    }

    if (v104 == *MEMORY[0x277D17280])
    {
      v117 = v1[63];
      if (v117)
      {
        v118 = v1[65];
        if (v118)
        {
          v119 = v1[64];
          v279 = v1[62];
          v120 = v1[21];
          v121 = v1[22];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
          v122 = swift_allocObject();
          *(v122 + 16) = xmmword_22A5761B0;
          v123 = MEMORY[0x277D837D0];
          *(v122 + 56) = MEMORY[0x277D837D0];
          v124 = sub_229562E8C();
          *(v122 + 32) = v120;
          *(v122 + 40) = v121;
          *(v122 + 96) = v123;
          *(v122 + 104) = v124;
          *(v122 + 64) = v124;
          *(v122 + 72) = v119;
          *(v122 + 80) = v118;
          *(v122 + 136) = v123;
          *(v122 + 144) = v124;
          *(v122 + 112) = v279;
          *(v122 + 120) = v117;

          goto LABEL_41;
        }

        v183 = v1[60];
        v182 = v1[61];
        v184 = v1[52];
        v185 = v1[45];
        v186 = v1[32];
        v187 = v1[19];
        sub_229562F68(0, &unk_27D87C380, off_278666068);
        sub_229557898();
        v183(v184, v187, v185);
        v145 = sub_22A4DD05C();
        v188 = v1;
        v147 = sub_22A4DDCEC();
        v189 = os_log_type_enabled(v145, v147);
        v190 = v188[67];
        v150 = v188[66];
        v151 = v188[56];
        v152 = v188[52];
        v153 = v188[44];
        v154 = v188[45];
        v191 = v188[32];
LABEL_62:
        v281 = v191;
        v199 = v188[26];
        v275 = v188[25];
        v265 = v188[23];
        v270 = v188[24];
        v260 = v188[22];
        v200 = v188[19];
        if (v189)
        {
          v250 = v200;
          v201 = swift_slowAlloc();
          v254 = v151;
          v202 = swift_slowAlloc();
          v282 = v202;
          *v201 = 136315138;
          v244 = v154;
          v247 = v153;
          v216 = sub_22A4DBA6C();
          v217 = v154;
          v219 = v218;
          v150(v152, v217);
          v220 = sub_2295A3E30(v216, v219, &v282);

          *(v201 + 4) = v220;
          v208 = "Ignoring event missing heatingSetpoint: %s";
          goto LABEL_64;
        }

        goto LABEL_65;
      }

      v140 = v1[60];
      v139 = v1[61];
      v141 = v1[51];
      v142 = v1[45];
      v143 = v1[31];
      v144 = v1[19];
      sub_229562F68(0, &unk_27D87C380, off_278666068);
      sub_229557898();
      v140(v141, v144, v142);
      v145 = sub_22A4DD05C();
      v146 = v1;
      v147 = sub_22A4DDCEC();
      v148 = os_log_type_enabled(v145, v147);
      v149 = v146[67];
      v150 = v146[66];
      v151 = v146[56];
      v152 = v146[51];
      v153 = v146[44];
      v154 = v146[45];
      v155 = v146[31];
LABEL_57:
      v281 = v155;
      v199 = v146[26];
      v275 = v146[25];
      v265 = v146[23];
      v270 = v146[24];
      v259 = v146[22];
      v200 = v146[19];
      if (v148)
      {
        v250 = v200;
        v201 = swift_slowAlloc();
        v254 = v151;
        v202 = swift_slowAlloc();
        v282 = v202;
        *v201 = 136315138;
        v244 = v154;
        v247 = v153;
        v203 = sub_22A4DBA6C();
        v204 = v154;
        v206 = v205;
        v150(v152, v204);
        v207 = sub_2295A3E30(v203, v206, &v282);

        *(v201 + 4) = v207;
        v208 = "Ignoring event missing coolingSetpoint: %s";
LABEL_64:
        _os_log_impl(&dword_229538000, v145, v147, v208, v201, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v202);
        MEMORY[0x22AAD4E50](v202, -1, -1);
        MEMORY[0x22AAD4E50](v201, -1, -1);

        v150(v250, v244);
        (*(v199 + 8))(v281, v275);
        sub_22953EAE4(v247, &qword_27D881900, &unk_22A576E70);
        v221 = v254;
LABEL_66:
        sub_229562E30(v221);
        v272 = 0;
        v276 = 0;
        goto LABEL_67;
      }

LABEL_65:

      v150(v200, v154);
      v150(v152, v154);
      (*(v199 + 8))(v281, v275);
      sub_22953EAE4(v153, &qword_27D881900, &unk_22A576E70);
      v221 = v151;
      goto LABEL_66;
    }

    if (v104 == *MEMORY[0x277D17288])
    {
      v125 = v1[63];
      if (v125)
      {
        v126 = v1[62];
        v127 = v1[21];
        v128 = v1[22];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
        v129 = swift_allocObject();
        *(v129 + 16) = xmmword_22A5761A0;
        v130 = MEMORY[0x277D837D0];
        *(v129 + 56) = MEMORY[0x277D837D0];
        v131 = sub_229562E8C();
        *(v129 + 32) = v127;
        *(v129 + 40) = v128;
        *(v129 + 96) = v130;
        *(v129 + 104) = v131;
        *(v129 + 64) = v131;
        *(v129 + 72) = v126;
        *(v129 + 80) = v125;

        goto LABEL_41;
      }

      v193 = v1[60];
      v192 = v1[61];
      v194 = v1[50];
      v195 = v1[45];
      v196 = v1[30];
      v197 = v1[19];
      sub_229562F68(0, &unk_27D87C380, off_278666068);
      sub_229557898();
      v193(v194, v197, v195);
      v145 = sub_22A4DD05C();
      v146 = v1;
      v147 = sub_22A4DDCEC();
      v148 = os_log_type_enabled(v145, v147);
      v198 = v146[67];
      v150 = v146[66];
      v151 = v146[56];
      v152 = v146[50];
      v153 = v146[44];
      v154 = v146[45];
      v155 = v146[30];
      goto LABEL_57;
    }

    if (v104 == *MEMORY[0x277D17290])
    {
      v132 = v1[65];
      if (v132)
      {
        v133 = v1[64];
        v134 = v1[21];
        v135 = v1[22];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
        v136 = swift_allocObject();
        *(v136 + 16) = xmmword_22A5761A0;
        v137 = MEMORY[0x277D837D0];
        *(v136 + 56) = MEMORY[0x277D837D0];
        v138 = sub_229562E8C();
        *(v136 + 32) = v134;
        *(v136 + 40) = v135;
        *(v136 + 96) = v137;
        *(v136 + 104) = v138;
        *(v136 + 64) = v138;
        *(v136 + 72) = v133;
        *(v136 + 80) = v132;

        goto LABEL_41;
      }

      v210 = v1[60];
      v209 = v1[61];
      v211 = v1[49];
      v212 = v1[45];
      v213 = v1[29];
      v214 = v1[19];
      sub_229562F68(0, &unk_27D87C380, off_278666068);
      sub_229557898();
      v210(v211, v214, v212);
      v145 = sub_22A4DD05C();
      v188 = v1;
      v147 = sub_22A4DDCEC();
      v189 = os_log_type_enabled(v145, v147);
      v215 = v188[67];
      v150 = v188[66];
      v151 = v188[56];
      v152 = v188[49];
      v153 = v188[44];
      v154 = v188[45];
      v191 = v188[29];
      goto LABEL_62;
    }

    v157 = v1[60];
    v156 = v1[61];
    v158 = v1[48];
    v159 = v1[45];
    v160 = v1[28];
    v161 = v1[19];
    sub_229562F68(0, &unk_27D87C380, off_278666068);
    sub_229557898();
    v157(v158, v161, v159);
    v162 = sub_22A4DD05C();
    v163 = v1;
    v164 = sub_22A4DDCDC();
    v165 = os_log_type_enabled(v162, v164);
    v166 = v163[67];
    v167 = v163[66];
    v168 = v163[56];
    v169 = v163[48];
    v170 = v163[44];
    v171 = v163[45];
    v172 = v163[26];
    v274 = v163[25];
    v280 = v163[28];
    v264 = v163[23];
    v269 = v163[24];
    v258 = v163[22];
    v173 = v163[19];
    if (v165)
    {
      v249 = v173;
      v174 = swift_slowAlloc();
      v253 = v168;
      v175 = swift_slowAlloc();
      v282 = v175;
      *v174 = 136315138;
      v243 = v171;
      v246 = v170;
      v176 = sub_22A4DBA6C();
      v177 = v171;
      v179 = v178;
      v167(v169, v177);
      v180 = sub_2295A3E30(v176, v179, &v282);

      *(v174 + 4) = v180;
      _os_log_impl(&dword_229538000, v162, v164, "Ignoring event with unhandled systemMode: %s", v174, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v175);
      MEMORY[0x22AAD4E50](v175, -1, -1);
      MEMORY[0x22AAD4E50](v174, -1, -1);

      v167(v249, v243);
      (*(v172 + 8))(v280, v274);
      sub_22953EAE4(v246, &qword_27D881900, &unk_22A576E70);
      v181 = v253;
    }

    else
    {

      v167(v173, v171);
      v167(v169, v171);
      (*(v172 + 8))(v280, v274);
      sub_22953EAE4(v170, &qword_27D881900, &unk_22A576E70);
      v181 = v168;
    }

    sub_229562E30(v181);
    v1 = v234;
    v71 = v234[35];
    v70 = v234[36];
    v72 = v234[34];
LABEL_13:
    (*(v71 + 8))(v70, v72);
    v272 = 0;
    v276 = 0;
LABEL_68:
    v222 = v1[59];
    v223 = v1[56];
    v225 = v1[53];
    v224 = v1[54];
    v226 = v1;
    v227 = v1[52];
    v229 = v226[50];
    v228 = v226[51];
    v230 = v226[48];
    v231 = v226[49];
    v232 = v226[47];
    v236 = v226[44];
    v237 = v226[43];
    v238 = v226[42];
    v239 = v226[41];
    v240 = v226[40];
    v241 = v226[37];
    v242 = v226[36];
    v245 = v226[33];
    v248 = v226[32];
    v251 = v226[31];
    v255 = v226[30];
    v261 = v226[29];
    v266 = v226[28];
    v271 = v226[27];

    v233 = v226[1];

    return v233(v276, v272);
  }

  v86 = v1[41];
  v88 = v1[38];
  v87 = v1[39];
  (*(v87 + 32))(v1[42], v1[43], v88);
  v89 = *MEMORY[0x277D172E0];
  v278 = *(v87 + 104);
  v278(v86, v89, v88);
  sub_22955AFD0(&qword_27D87C398, MEMORY[0x277D172F0]);
  sub_22A4DD7DC();
  sub_22A4DD7DC();
  v90 = *(v87 + 8);
  v1[68] = v90;
  v1[69] = (v87 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v90(v86, v88);
  if (*(v1 + 580) != *(v1 + 581))
  {
    goto LABEL_38;
  }

  v92 = v1[40];
  v91 = v1[41];
  v93 = v1[38];
  v94 = v1[19];
  sub_22A4DC9CC();
  v278(v92, v89, v93);
  sub_22A4DD7DC();
  sub_22A4DD7DC();
  v90(v92, v93);
  v90(v91, v93);
  if (*(v1 + 582) != *(v1 + 583))
  {
LABEL_38:
    v100 = v1[20];
    v90(v1[42], v1[38]);

    goto LABEL_39;
  }

  v95 = swift_task_alloc();
  v1[70] = v95;
  *v95 = v1;
  v95[1] = sub_229561318;
  v96 = v1[23];
  v97 = v1[24];
  v98 = v1[22];

  return sub_229558F18(v95, v98, v96, v97);
}

uint64_t sub_229561318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  v5[14] = v3;
  v5[15] = a1;
  v5[16] = a2;
  v5[17] = a3;
  v6 = v4[70];
  v8 = *v3;
  v5[71] = a3;

  return MEMORY[0x2822009F8](sub_229561420, 0, 0);
}

uint64_t sub_229561420()
{
  v329 = v0;
  v1 = *(v0 + 568);
  if (v1 == 1)
  {
    v303 = *(v0 + 544);
    v309 = *(v0 + 552);
    v2 = *(v0 + 536);
    v3 = *(v0 + 528);
    v315 = *(v0 + 448);
    v4 = *(v0 + 360);
    v294 = *(v0 + 352);
    v5 = *(v0 + 336);
    v6 = *(v326 + 304);
    v7 = *(v326 + 192);
    v8 = *(v326 + 184);
    v9 = *(v326 + 176);
    v10 = *(v326 + 160);
    v11 = *(v326 + 152);

    v3(v11, v4);
    v12 = v6;
    v13 = v326;
    v303(v5, v12);
    sub_22953EAE4(v294, &qword_27D881900, &unk_22A576E70);
    v14 = v315;
LABEL_3:
    sub_229562E30(v14);
LABEL_4:
    v316 = 0;
    v310 = 0;
    goto LABEL_36;
  }

  v15 = *(v0 + 120);
  sub_229562EE0(v15, *(v0 + 128), v1);
  if (v15 == 1)
  {
    v16 = *(v0 + 520);
    if (v16)
    {
      v317 = *(v0 + 597);
      v17 = *(v0 + 576);
      v18 = *(v0 + 448);
      v19 = *(v0 + 296);
      v20 = *(v0 + 280);
      v21 = *(v326 + 272);
      v22 = *(v20 + 104);
      v22(v19, *MEMORY[0x277D17280], v21);
      sub_22955AFD0(&qword_27D87C3A0, MEMORY[0x277D17298]);

      sub_22A4DD7DC();
      sub_22A4DD7DC();
      v23 = *(v20 + 8);
      v0 = v326;
      v23(v19, v21);
      if (*(v0 + 590) == *(v0 + 591) && v317 != 2 && (*(v326 + 597) & 1) != 0)
      {
        goto LABEL_11;
      }

      v24 = *(v326 + 576);
      v25 = *(v326 + 448);
      v26 = *(v326 + 296);
      v27 = *(v326 + 272);
      v22(v26, *MEMORY[0x277D17290], v27);
      sub_22A4DD7DC();
      sub_22A4DD7DC();
      v28 = v26;
      v0 = v326;
      v23(v28, v27);
      if (*(v0 + 592) == *(v0 + 593))
      {
LABEL_11:
        v318 = *(v0 + 552);
        v289 = *(v0 + 528);
        v295 = *(v0 + 536);
        v29 = *(v0 + 512);
        v30 = *(v0 + 448);
        v304 = *(v0 + 352);
        v311 = *(v0 + 544);
        v285 = *(v0 + 336);
        v275 = *(v0 + 360);
        v280 = *(v0 + 304);
        v31 = *(v0 + 184);
        v32 = *(v0 + 168);
        v33 = *(v0 + 176);
        v34 = *(v0 + 160);
        v266 = *(v0 + 152);
        v269 = *(v0 + 192);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_22A5761A0;
        v36 = MEMORY[0x277D837D0];
        *(v35 + 56) = MEMORY[0x277D837D0];
        v37 = sub_229562E8C();
        *(v35 + 32) = v32;
        *(v35 + 40) = v33;
        *(v35 + 96) = v36;
        *(v35 + 104) = v37;
        *(v35 + 64) = v37;
        *(v35 + 72) = v29;
        *(v35 + 80) = v16;

        v38 = v30;
        v39 = sub_22A4DD5AC();
        v40 = HMDLocalizedStringForKey(v39);

        sub_22A4DD5EC();
        v41 = sub_22A4DD5BC();
        v43 = v42;

        v44 = v266;
LABEL_34:
        v289(v44, v275);
        v62 = v280;
        v61 = v285;
        goto LABEL_35;
      }
    }

    v79 = *(v0 + 504);
    if (v79)
    {
      v320 = *(v0 + 598);
      v80 = *(v0 + 576);
      v81 = *(v0 + 448);
      v82 = *(v0 + 296);
      v83 = *(v0 + 280);
      v84 = *(v326 + 272);
      v85 = *(v83 + 104);
      v85(v82, *MEMORY[0x277D17280], v84);
      sub_22955AFD0(&qword_27D87C3A0, MEMORY[0x277D17298]);

      sub_22A4DD7DC();
      sub_22A4DD7DC();
      v86 = *(v83 + 8);
      v87 = v84;
      v88 = v326;
      v86(v82, v87);
      if (*(v88 + 586) == *(v88 + 587) && v320 != 2 && (*(v326 + 598) & 1) != 0)
      {
        goto LABEL_28;
      }

      v89 = *(v326 + 576);
      v90 = *(v326 + 448);
      v91 = *(v326 + 296);
      v92 = *(v326 + 272);
      v85(v91, *MEMORY[0x277D17288], v92);
      sub_22A4DD7DC();
      sub_22A4DD7DC();
      v93 = v92;
      v88 = v326;
      v86(v91, v93);
      if (*(v88 + 588) == *(v88 + 589))
      {
LABEL_28:
        v321 = *(v88 + 552);
        v289 = *(v88 + 528);
        v297 = *(v88 + 536);
        v94 = *(v88 + 496);
        v95 = *(v88 + 448);
        v304 = *(v88 + 352);
        v311 = *(v88 + 544);
        v285 = *(v88 + 336);
        v275 = *(v88 + 360);
        v280 = *(v88 + 304);
        v96 = *(v88 + 184);
        v270 = *(v88 + 192);
        v97 = *(v88 + 168);
        v98 = *(v88 + 176);
        v100 = *(v88 + 152);
        v99 = *(v88 + 160);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
        v101 = swift_allocObject();
        *(v101 + 16) = xmmword_22A5761A0;
        v102 = MEMORY[0x277D837D0];
        *(v101 + 56) = MEMORY[0x277D837D0];
        v103 = sub_229562E8C();
        *(v101 + 32) = v97;
        *(v101 + 40) = v98;
        *(v101 + 96) = v102;
        *(v101 + 104) = v103;
        *(v101 + 64) = v103;
        *(v101 + 72) = v94;
        *(v101 + 80) = v79;

        v38 = v95;
        v104 = sub_22A4DD5AC();
        v105 = HMDLocalizedStringForKey(v104);

        sub_22A4DD5EC();
        v41 = sub_22A4DD5BC();
        v43 = v106;

LABEL_33:
        v44 = v100;
        goto LABEL_34;
      }

      v107 = v326;
      v108 = *(v326 + 280);
    }

    else
    {
      v107 = v0;
      v108 = *(v0 + 280);
      v85 = *(v108 + 104);
    }

    v109 = *(v107 + 576);
    v110 = *(v107 + 448);
    v111 = *(v107 + 296);
    v112 = *(v107 + 272);
    v85(v111, *MEMORY[0x277D17278], v112);
    sub_22955AFD0(&qword_27D87C3A0, MEMORY[0x277D17298]);
    sub_22A4DD7DC();
    sub_22A4DD7DC();
    (*(v108 + 8))(v111, v112);
    if (*(v107 + 584) != *(v107 + 585))
    {
      v137 = *(v326 + 488);
      v138 = *(v326 + 480);
      v139 = *(v326 + 424);
      v140 = *(v326 + 360);
      v141 = *(v326 + 264);
      v142 = *(v326 + 160);
      v143 = *(v326 + 152);
      sub_229562F68(0, &unk_27D87C380, off_278666068);
      sub_229557898();
      v138(v139, v143, v140);
      v13 = v326;

      v144 = sub_22A4DD05C();
      v145 = sub_22A4DDCEC();

      v146 = os_log_type_enabled(v144, v145);
      v282 = *(v326 + 552);
      v323 = *(v326 + 544);
      v147 = *(v326 + 536);
      v148 = *(v326 + 528);
      v149 = *(v326 + 448);
      v150 = *(v326 + 424);
      v151 = *(v326 + 360);
      v306 = *(v326 + 336);
      v312 = *(v326 + 352);
      v291 = *(v326 + 264);
      v300 = *(v326 + 304);
      v152 = *(v326 + 208);
      v287 = *(v326 + 200);
      v272 = *(v326 + 184);
      v277 = *(v326 + 192);
      v268 = *(v326 + 176);
      if (v146)
      {
        v257 = *(v326 + 160);
        v263 = *(v326 + 152);
        v265 = *(v326 + 448);
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v328 = v154;
        *v153 = 136315394;
        v155 = sub_22A4DBA6C();
        v156 = v151;
        v261 = v151;
        v157 = v155;
        v259 = v145;
        v159 = v158;
        v148(v150, v156);
        v160 = sub_2295A3E30(v157, v159, &v328);

        *(v153 + 4) = v160;
        *(v153 + 12) = 2080;
        *(v326 + 144) = v257;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3A8, &qword_22A576E88);
        v161 = sub_22A4DBA6C();
        v163 = v162;

        v164 = sub_2295A3E30(v161, v163, &v328);

        *(v153 + 14) = v164;
        _os_log_impl(&dword_229538000, v144, v259, "Ignoring event - expected Arrival Prediction but we received an unexpected event: %s, custom fields %s", v153, 0x16u);
        swift_arrayDestroy();
        v165 = v154;
        v13 = v326;
        MEMORY[0x22AAD4E50](v165, -1, -1);
        MEMORY[0x22AAD4E50](v153, -1, -1);

        v148(v263, v261);
        (*(v152 + 8))(v291, v287);
        v323(v306, v300);
        sub_22953EAE4(v312, &qword_27D881900, &unk_22A576E70);
        v14 = v265;
      }

      else
      {
        v189 = *(v326 + 152);

        v148(v189, v151);
        v148(v150, v151);
        (*(v152 + 8))(v291, v287);
        v323(v306, v300);
        sub_22953EAE4(v312, &qword_27D881900, &unk_22A576E70);
        v14 = v149;
      }

      goto LABEL_3;
    }

    v322 = *(v107 + 552);
    v289 = *(v107 + 528);
    v298 = *(v107 + 536);
    v38 = *(v107 + 448);
    v304 = *(v107 + 352);
    v311 = *(v107 + 544);
    v285 = *(v107 + 336);
    v275 = *(v107 + 360);
    v280 = *(v107 + 304);
    v114 = *(v107 + 184);
    v113 = *(v107 + 192);
    v115 = *(v107 + 168);
    v116 = *(v107 + 176);
    v118 = v107 + 152;
    v100 = *(v107 + 152);
    v117 = *(v118 + 8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_22A576180;
    *(v119 + 56) = MEMORY[0x277D837D0];
    *(v119 + 64) = sub_229562E8C();
    *(v119 + 32) = v115;
    *(v119 + 40) = v116;

    v120 = sub_22A4DD5AC();
    v121 = HMDLocalizedStringForKey(v120);

    sub_22A4DD5EC();
    v41 = sub_22A4DD5BC();
    v43 = v122;

    goto LABEL_33;
  }

  v45 = *(v0 + 552);
  v46 = *(v0 + 160);
  (*(v0 + 544))(*(v0 + 336), *(v0 + 304));

  v47 = *(v0 + 280);
  v48 = *(v0 + 288);
  v49 = *(v0 + 272);
  (*(v47 + 16))(v48, *(v0 + 448) + *(v0 + 576), v49);
  v50 = (*(v47 + 88))(v48, v49);
  if (v50 != *MEMORY[0x277D17278])
  {
    if (v50 == *MEMORY[0x277D17280])
    {
      v63 = *(v0 + 504);
      if (v63)
      {
        v64 = *(v0 + 520);
        if (v64)
        {
          v65 = *(v0 + 512);
          v66 = *(v326 + 496);
          v67 = *(v326 + 176);
          v68 = *(v326 + 168);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
          v69 = swift_allocObject();
          *(v69 + 16) = xmmword_22A5761B0;
          v70 = MEMORY[0x277D837D0];
          *(v69 + 56) = MEMORY[0x277D837D0];
          v71 = sub_229562E8C();
          *(v69 + 32) = v68;
          *(v69 + 40) = v67;
          *(v69 + 96) = v70;
          *(v69 + 104) = v71;
          *(v69 + 64) = v71;
          *(v69 + 72) = v65;
          *(v69 + 80) = v64;
          *(v69 + 136) = v70;
          *(v69 + 144) = v71;
          *(v69 + 112) = v66;
          *(v69 + 120) = v63;
          v0 = v326;

          goto LABEL_14;
        }

        v215 = *(v326 + 488);
        v216 = *(v326 + 480);
        v217 = *(v326 + 416);
        v218 = *(v326 + 360);
        v219 = *(v326 + 256);
        v220 = *(v326 + 152);
        sub_229562F68(0, &unk_27D87C380, off_278666068);
        sub_229557898();
        v216(v217, v220, v218);
        v13 = v326;
        v179 = sub_22A4DD05C();
        v180 = sub_22A4DDCEC();
        v221 = os_log_type_enabled(v179, v180);
        v222 = *(v326 + 536);
        v183 = *(v326 + 528);
        v184 = *(v326 + 448);
        v185 = *(v326 + 416);
        v186 = *(v326 + 352);
        v187 = *(v326 + 360);
        v223 = *(v326 + 256);
LABEL_55:
        v325 = v223;
        v231 = v13[26];
        v249 = v13[24];
        v308 = v249;
        v314 = v13[25];
        v293 = v13[23];
        v302 = v13[19];
        if (v221)
        {
          v284 = v186;
          v233 = swift_slowAlloc();
          v279 = v184;
          v234 = swift_slowAlloc();
          v328 = v234;
          *v233 = 136315138;
          v250 = sub_22A4DBA6C();
          v251 = v187;
          v274 = v187;
          v252 = v250;
          v254 = v253;
          v183(v185, v251);
          v255 = sub_2295A3E30(v252, v254, &v328);
          v13 = v326;

          *(v233 + 4) = v255;
          v241 = "Ignoring event missing heatingSetpoint: %s";
          goto LABEL_57;
        }

        goto LABEL_58;
      }

      v173 = *(v326 + 488);
      v174 = *(v326 + 480);
      v175 = *(v326 + 408);
      v176 = *(v326 + 360);
      v177 = *(v326 + 248);
      v178 = *(v326 + 152);
      sub_229562F68(0, &unk_27D87C380, off_278666068);
      sub_229557898();
      v174(v175, v178, v176);
      v13 = v326;
      v179 = sub_22A4DD05C();
      v180 = sub_22A4DDCEC();
      v181 = os_log_type_enabled(v179, v180);
      v182 = *(v326 + 536);
      v183 = *(v326 + 528);
      v184 = *(v326 + 448);
      v185 = *(v326 + 408);
      v186 = *(v326 + 352);
      v187 = *(v326 + 360);
      v188 = *(v326 + 248);
    }

    else
    {
      if (v50 != *MEMORY[0x277D17288])
      {
        if (v50 != *MEMORY[0x277D17290])
        {
          v190 = *(v326 + 488);
          v191 = *(v326 + 480);
          v192 = *(v326 + 384);
          v193 = *(v326 + 360);
          v194 = *(v326 + 224);
          v195 = *(v326 + 152);
          sub_229562F68(0, &unk_27D87C380, off_278666068);
          sub_229557898();
          v191(v192, v195, v193);
          v13 = v326;
          v196 = sub_22A4DD05C();
          v197 = sub_22A4DDCDC();
          v198 = os_log_type_enabled(v196, v197);
          v199 = *(v326 + 536);
          v200 = *(v326 + 528);
          v201 = *(v326 + 448);
          v202 = *(v326 + 384);
          v203 = *(v326 + 352);
          v204 = *(v326 + 360);
          v324 = *(v326 + 224);
          v205 = *(v326 + 208);
          v307 = *(v326 + 192);
          v313 = *(v326 + 200);
          v288 = *(v326 + 176);
          v292 = *(v326 + 184);
          v301 = *(v326 + 152);
          if (v198)
          {
            v283 = *(v326 + 352);
            v206 = swift_slowAlloc();
            v278 = v201;
            v207 = swift_slowAlloc();
            v328 = v207;
            *v206 = 136315138;
            v208 = sub_22A4DBA6C();
            v209 = v204;
            v273 = v204;
            v210 = v208;
            v212 = v211;
            v200(v202, v209);
            v213 = sub_2295A3E30(v210, v212, &v328);
            v13 = v326;

            *(v206 + 4) = v213;
            _os_log_impl(&dword_229538000, v196, v197, "Ignoring event with unhandled systemMode: %s", v206, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v207);
            MEMORY[0x22AAD4E50](v207, -1, -1);
            MEMORY[0x22AAD4E50](v206, -1, -1);

            v200(v301, v273);
            (*(v205 + 8))(v324, v313);
            sub_22953EAE4(v283, &qword_27D881900, &unk_22A576E70);
            v214 = v278;
          }

          else
          {

            v200(v301, v204);
            v200(v202, v204);
            (*(v205 + 8))(v324, v313);
            sub_22953EAE4(v203, &qword_27D881900, &unk_22A576E70);
            v214 = v201;
          }

          sub_229562E30(v214);
          (*(v13[35] + 8))(v13[36], v13[34]);
          goto LABEL_4;
        }

        v166 = *(v0 + 520);
        if (v166)
        {
          v167 = *(v0 + 512);
          v168 = *(v0 + 168);
          v169 = *(v0 + 176);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
          v170 = swift_allocObject();
          *(v170 + 16) = xmmword_22A5761A0;
          v171 = MEMORY[0x277D837D0];
          *(v170 + 56) = MEMORY[0x277D837D0];
          v172 = sub_229562E8C();
          *(v170 + 32) = v168;
          *(v170 + 40) = v169;
          *(v170 + 96) = v171;
          *(v170 + 104) = v172;
          v0 = v326;
          *(v170 + 64) = v172;
          *(v170 + 72) = v167;
          *(v170 + 80) = v166;

          goto LABEL_14;
        }

        v242 = *(v326 + 488);
        v243 = *(v326 + 480);
        v244 = *(v326 + 392);
        v245 = *(v326 + 360);
        v246 = *(v326 + 232);
        v247 = *(v326 + 152);
        sub_229562F68(0, &unk_27D87C380, off_278666068);
        sub_229557898();
        v243(v244, v247, v245);
        v13 = v326;
        v179 = sub_22A4DD05C();
        v180 = sub_22A4DDCEC();
        v221 = os_log_type_enabled(v179, v180);
        v248 = *(v326 + 536);
        v183 = *(v326 + 528);
        v184 = *(v326 + 448);
        v185 = *(v326 + 392);
        v186 = *(v326 + 352);
        v187 = *(v326 + 360);
        v223 = *(v326 + 232);
        goto LABEL_55;
      }

      v72 = *(v0 + 504);
      if (v72)
      {
        v73 = *(v0 + 496);
        v74 = *(v0 + 168);
        v75 = *(v0 + 176);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_22A5761A0;
        v77 = MEMORY[0x277D837D0];
        *(v76 + 56) = MEMORY[0x277D837D0];
        v78 = sub_229562E8C();
        *(v76 + 32) = v74;
        *(v76 + 40) = v75;
        *(v76 + 96) = v77;
        *(v76 + 104) = v78;
        v0 = v326;
        *(v76 + 64) = v78;
        *(v76 + 72) = v73;
        *(v76 + 80) = v72;

        goto LABEL_14;
      }

      v224 = *(v326 + 488);
      v225 = *(v326 + 480);
      v226 = *(v326 + 400);
      v227 = *(v326 + 360);
      v228 = *(v326 + 240);
      v229 = *(v326 + 152);
      sub_229562F68(0, &unk_27D87C380, off_278666068);
      sub_229557898();
      v225(v226, v229, v227);
      v13 = v326;
      v179 = sub_22A4DD05C();
      v180 = sub_22A4DDCEC();
      v181 = os_log_type_enabled(v179, v180);
      v230 = *(v326 + 536);
      v183 = *(v326 + 528);
      v184 = *(v326 + 448);
      v185 = *(v326 + 400);
      v186 = *(v326 + 352);
      v187 = *(v326 + 360);
      v188 = *(v326 + 240);
    }

    v325 = v188;
    v231 = v13[26];
    v232 = v13[24];
    v308 = v232;
    v314 = v13[25];
    v293 = v13[23];
    v302 = v13[19];
    if (v181)
    {
      v284 = v186;
      v233 = swift_slowAlloc();
      v279 = v184;
      v234 = swift_slowAlloc();
      v328 = v234;
      *v233 = 136315138;
      v235 = sub_22A4DBA6C();
      v236 = v187;
      v274 = v187;
      v237 = v235;
      v239 = v238;
      v183(v185, v236);
      v240 = sub_2295A3E30(v237, v239, &v328);
      v13 = v326;

      *(v233 + 4) = v240;
      v241 = "Ignoring event missing coolingSetpoint: %s";
LABEL_57:
      _os_log_impl(&dword_229538000, v179, v180, v241, v233, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v234);
      MEMORY[0x22AAD4E50](v234, -1, -1);
      MEMORY[0x22AAD4E50](v233, -1, -1);

      v183(v302, v274);
      (*(v231 + 8))(v325, v314);
      sub_22953EAE4(v284, &qword_27D881900, &unk_22A576E70);
      v14 = v279;
      goto LABEL_3;
    }

LABEL_58:

    v183(v302, v187);
    v183(v185, v187);
    (*(v231 + 8))(v325, v314);
    sub_22953EAE4(v186, &qword_27D881900, &unk_22A576E70);
    v14 = v184;
    goto LABEL_3;
  }

  v52 = *(v0 + 168);
  v51 = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E4F0, &unk_22A585570);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_22A576180;
  *(v53 + 56) = MEMORY[0x277D837D0];
  *(v53 + 64) = sub_229562E8C();
  *(v53 + 32) = v52;
  *(v53 + 40) = v51;
LABEL_14:
  v319 = *(v0 + 536);
  v54 = *(v0 + 448);
  v296 = *(v0 + 360);
  v304 = *(v0 + 352);
  v311 = *(v0 + 528);
  v56 = *(v0 + 184);
  v55 = *(v0 + 192);
  v57 = *(v0 + 152);

  v58 = sub_22A4DD5AC();
  v59 = HMDLocalizedStringForKey(v58);

  sub_22A4DD5EC();
  v41 = sub_22A4DD5BC();
  v43 = v60;

  v38 = v54;
  v61 = v57;
  v62 = v296;
LABEL_35:
  v311(v61, v62);
  v310 = v43;
  v316 = v41;
  sub_22953EAE4(v304, &qword_27D881900, &unk_22A576E70);
  sub_229562E30(v38);
  v13 = v326;
LABEL_36:
  v123 = v13[59];
  v124 = v13[56];
  v126 = v13[53];
  v125 = v13[54];
  v128 = v13[51];
  v127 = v13[52];
  v129 = v13;
  v132 = v13 + 49;
  v131 = v13[49];
  v130 = v132[1];
  v133 = v129[47];
  v134 = v129[48];
  v256 = v129[44];
  v258 = v129[43];
  v260 = v129[42];
  v262 = v129[41];
  v264 = v129[40];
  v267 = v129[37];
  v271 = v129[36];
  v276 = v129[33];
  v281 = v129[32];
  v286 = v129[31];
  v290 = v129[30];
  v299 = v129[29];
  v305 = v129[28];
  v327 = v129[27];

  v135 = v129[1];

  return v135(v316, v310);
}

uint64_t sub_229562C94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_229562CCC()
{
  result = qword_27D87C360;
  if (!qword_27D87C360)
  {
    sub_229562F68(255, &qword_27D87CEE0, 0x277CD1878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87C360);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_229562DC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881900, &unk_22A576E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_229562E30(uint64_t a1)
{
  v2 = type metadata accessor for ClimateBulletinBuilder.ValenciaContent.MatterEventDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_229562E8C()
{
  result = qword_27D87C390;
  if (!qword_27D87C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87C390);
  }

  return result;
}

uint64_t sub_229562EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_229562F14()
{
  result = qword_27D87C3F8;
  if (!qword_27D87C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87C3F8);
  }

  return result;
}

uint64_t sub_229562F68(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_229562FD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2295632B0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_229563360()
{
  sub_2295638EC(319, &qword_281401CE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22A4DC86C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22A4DB57C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22A4DB57C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_229563590()
{
  result = sub_22A4DB57C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2295638EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id sub_2295639D8@<X0>(char **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE0, &unk_22A577880);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v94 = &v85 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v95 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v99 = &v85 - v13;
  v100 = _s21EventMetadataInternalV6DeviceVMa(0);
  v107 = *(v100 - 8);
  v14 = *(v107 + 64);
  v15 = MEMORY[0x28223BE20](v100);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v97 = &v85 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE8, &qword_22A577890);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v104 = &v85 - v21;
  v22 = sub_22A4DB7DC();
  v98 = *(v22 - 8);
  v23 = *(v98 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v106 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = (&v85 - v26);
  v28 = _s21EventMetadataInternalV4HomeVMa(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v103 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_22A4DB74C();
  v31 = *(v92 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v92);
  v105 = &v85 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = _s21EventMetadataInternalVMa(0);
  v34 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v36 = &v85 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = _s17HomeActivityStateO5EventVMa();
  v101 = *(v37 - 8);
  v102 = v37;
  v38 = *(v101 + 64);
  MEMORY[0x28223BE20](v37);
  v91 = &v85 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = [a1 currentAccessory];
  if (v40)
  {
    v41 = v40;
    v90 = a2;
    objc_opt_self();
    v42 = swift_dynamicCastObjCClass();
    if (v42)
    {
      a2 = v42;
      v86 = a3;
      sub_22A4DB71C();
      v43 = [a1 uuid];
      sub_22A4DB79C();

      v44 = [a1 users];
      v89 = a1;
      v88 = v31;
      if (!v44)
      {
        LODWORD(a3) = 1;
        goto LABEL_14;
      }

      v45 = v44;
      sub_229564C44();
      v46 = sub_22A4DD83C();

      if (v46 >> 62)
      {
        goto LABEL_33;
      }

      a3 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);

      while (1)
      {
        a1 = v89;
        if (HIDWORD(a3))
        {
          __break(1u);
          goto LABEL_8;
        }

LABEL_14:
        v96 = v17;
        v50 = v98;
        v51 = v103;
        (*(v98 + 32))(v103, v27, v22);
        *(v51 + *(v28 + 20)) = a3;
        v52 = *(v107 + 56);
        v53 = v100;
        v107 += 56;
        v87 = v52;
        v52(v104, 1, 1, v100);
        v54 = v41;
        v55 = [a2 uuid];
        sub_22A4DB79C();

        v56 = [a2 room];
        v85 = v54;

        v57 = [v56 uuid];
        v58 = v99;
        sub_22A4DB79C();

        v59 = *(v50 + 56);
        v59(v58, 0, 1, v22);
        LOBYTE(v56) = [a1 isCurrentDevicePrimaryResident];
        v60 = v53[5];
        v59(&v96[v60], 1, 1, v22);
        v61 = &v96[v53[9]];
        *v61 = 0;
        v61[1] = 0;
        v62 = v50;
        v63 = v96;
        (*(v62 + 16))(v96, v106, v22);
        v64 = v95;
        sub_229564F88(v58, v95, &unk_27D87D2A0, &unk_22A578BD0);
        sub_22953EAE4(v63 + v60, &qword_27D87CBF0, &qword_22A577898);
        sub_229564B0C(v64, v63 + v60);
        *(v63 + v53[6]) = 1;
        *(v63 + v53[7]) = 0;
        *(v63 + v53[8]) = v56;
        result = MobileGestalt_get_current_device();
        if (!result)
        {
LABEL_35:
          __break(1u);
          return result;
        }

        v65 = result;
        v66 = MobileGestalt_copy_deviceColor_obj();

        if (v66)
        {
          v67 = sub_22A4DD5EC();
          v69 = v68;
        }

        else
        {
          v67 = 0;
          v69 = 0;
        }

        sub_22953EAE4(v99, &unk_27D87D2A0, &unk_22A578BD0);
        (*(v98 + 8))(v106, v22);
        *v61 = v67;
        v61[1] = v69;
        v70 = v97;
        sub_229564F20(v63, v97, _s21EventMetadataInternalV6DeviceVMa);
        v71 = _s21EventMetadataInternalV4UserVMa(0);
        v72 = *(*(v71 - 8) + 56);
        v73 = v94;
        v72(v94, 1, 1, v71);
        *v36 = 1;
        v41 = v93;
        v74 = (v36 + *(v93 + 24));
        sub_22A4DB7CC();
        a2 = v41[9];
        v87(v36 + a2, 1, 1, v100);
        v17 = v41[11];
        v72(&v17[v36], 1, 1, v71);
        *(v36 + 8) = 0xD000000000000017;
        *(v36 + 16) = 0x800000022A589C60;
        v75 = v88;
        v22 = v92;
        (*(v88 + 16))(v36 + v41[7], v105, v92);
        sub_229564EB8(v103, v36 + v41[8], _s21EventMetadataInternalV4HomeVMa);
        sub_229564B7C(v104, v36 + a2, &qword_27D87CBE8, &qword_22A577890);
        sub_229564EB8(v70, v36 + v41[10], _s21EventMetadataInternalV6DeviceVMa);
        sub_229564B7C(v73, &v17[v36], &qword_27D87CBE0, &unk_22A577880);
        v27 = &selRef_identifyEndpoint_identifyTime_message_;
        v28 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
        [v28 systemUptime];
        v77 = v76;

        v78 = v77 * 1000.0;
        if (COERCE__INT64(fabs(v77 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v78 <= -1.0)
        {
          goto LABEL_27;
        }

        if (v78 >= 1.84467441e19)
        {
          goto LABEL_28;
        }

        *(v36 + v41[12]) = v78;
        v28 = [objc_allocWithZone(MEMORY[0x277D0F7F0]) init];
        [v28 timeIntervalSince1970];
        v80 = v79;

        sub_22953EAE4(v73, &qword_27D87CBE0, &unk_22A577880);
        sub_229564BE4(v97, _s21EventMetadataInternalV6DeviceVMa);
        sub_22953EAE4(v104, &qword_27D87CBE8, &qword_22A577890);
        sub_229564BE4(v103, _s21EventMetadataInternalV4HomeVMa);
        (*(v75 + 8))(v105, v22);
        v81 = v80 * 1000.0;
        if (COERCE__INT64(fabs(v80 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_29;
        }

        if (v81 <= -1.0)
        {
          goto LABEL_30;
        }

        if (v81 < 1.84467441e19)
        {
          *(v36 + v41[13]) = v81;
          v82 = v36;
          v36 = v91;
          sub_229564F20(v82, v91, _s21EventMetadataInternalVMa);
          v27 = v90;
          v28 = [v90 state];

          if (!HIDWORD(v28))
          {
            v83 = v102;
            *(v36 + *(v102 + 20)) = v28;
            v84 = v86;
            sub_229564F20(v36, v86, _s17HomeActivityStateO5EventVMa);
            return (*(v101 + 56))(v84, 0, 1, v83);
          }

          goto LABEL_32;
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        a3 = sub_22A4DE0EC();

        if ((a3 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    a1 = v90;
  }

  else
  {
LABEL_8:
    v41 = a2;
  }

  v47 = v102;
  v48 = *(v101 + 56);

  return v48(a3, 1, 1, v47);
}

uint64_t sub_2295645D4()
{
  v5 = _s21EventMetadataInternalVMa(0);
  v6 = &off_283CE1720;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  sub_229564EB8(v0, boxed_opaque_existential_1, _s21EventMetadataInternalVMa);
  sub_2297A1124(0x617461646174656DLL, 0xE800000000000000, v4);
  sub_22953EAE4(v4, &qword_27D882000, &qword_22A578390);
  v2 = *(v0 + *(_s17HomeActivityStateO5EventVMa() + 20));
  v5 = MEMORY[0x277D84CC0];
  v6 = &off_283CDFC58;
  LODWORD(v4[0]) = v2;
  return sub_229890DC4(v4, 0xD000000000000011, 0x800000022A589C40);
}

uint64_t sub_2295646C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC38, &unk_22A5784B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHomeActivityStateEvent(0);
  sub_229564F88(a1 + *(v8 + 20), v7, &qword_27D87CC38, &unk_22A5784B0);
  v9 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_229564F20(v7, a2, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  }

  sub_22A4DC28C();
  v11 = *(v9 + 20);
  if (qword_27D87B910 != -1)
  {
    swift_once();
  }

  *(a2 + v11) = qword_27D87DF28;
  v12 = v10(v7, 1, v9);

  if (v12 != 1)
  {
    return sub_22953EAE4(v7, &qword_27D87CC38, &unk_22A5784B0);
  }

  return result;
}

uint64_t sub_229564870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229564EB8(a1, v8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  v9 = *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHomeActivityStateEvent(0) + 20);
  sub_22953EAE4(a2 + v9, &qword_27D87CC38, &unk_22A5784B0);
  sub_229564F20(v8, a2 + v9, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t _s17HomeActivityStateO5EventVMa()
{
  result = qword_27D87CBF8;
  if (!qword_27D87CBF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2295649F4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  KeyPath = swift_getKeyPath();
  v13 = _s21EventMetadataInternalVMa(0);
  v14 = sub_229564E70(&qword_27D87CC28, _s21EventMetadataInternalVMa);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  sub_229564EB8(v4, boxed_opaque_existential_1, _s21EventMetadataInternalVMa);
  sub_229679F28(KeyPath, v12);

  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  v8 = *(v4 + *(a2 + 20));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CC30, &unk_22A577960) + 36);
  result = type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHomeActivityStateEvent(0);
  v11 = a1 + *(result + 24) + v9;
  *v11 = v8;
  *(v11 + 4) = 0;
  return result;
}

uint64_t sub_229564B0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_229564B7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_229564BE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_229564C44()
{
  result = qword_281401790;
  if (!qword_281401790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281401790);
  }

  return result;
}

void sub_229564CC8()
{
  _s21EventMetadataInternalVMa(319);
  if (v0 <= 0x3F)
  {
    sub_229564D4C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_229564D4C()
{
  if (!qword_27D87CC08)
  {
    v0 = _s7SecuredVMa();
    if (!v1)
    {
      atomic_store(v0, &qword_27D87CC08);
    }
  }
}

uint64_t sub_229564DEC(uint64_t a1)
{
  *(a1 + 16) = sub_229564E70(&qword_27D87CC18, _s17HomeActivityStateO5EventVMa);
  result = sub_229564E70(&qword_27D87CC20, _s17HomeActivityStateO5EventVMa);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_229564E70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_229564EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_229564F20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_229564F88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_229565114()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CCC0, &unk_22A5779A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A5761A0;
  *(inited + 32) = 0x6E6F697461727564;
  *(inited + 40) = 0xE800000000000000;
  result = [v1 durationMilliseconds];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
    *(inited + 56) = 0x73736563637573;
    *(inited + 64) = 0xE700000000000000;
    *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v4 = sub_22956AC48(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD90, &qword_22A5779F0);
    swift_arrayDestroy();
    return v4;
  }

  __break(1u);
  return result;
}

id sub_2295653A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMDHomeKeySetupWalletLogEventV2();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22956540C()
{
  result = qword_281401760;
  if (!qword_281401760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281401760);
  }

  return result;
}

unint64_t sub_2295656D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CCC0, &unk_22A5779A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A5779B0;
  *(inited + 32) = 0x644965646F6ELL;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  *(inited + 56) = 0x746E696F70646E65;
  *(inited + 64) = 0xEA00000000006449;
  v2 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_endpointId);
  *(inited + 72) = v2;
  *(inited + 80) = 0x4972657473756C63;
  *(inited + 88) = 0xE900000000000064;
  v3 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_clusterId);
  *(inited + 96) = v3;
  *(inited + 104) = 0x7475626972747461;
  *(inited + 112) = 0xEB00000000644965;
  v4 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_attributeId);
  *(inited + 120) = v4;
  v5 = v2;
  v6 = v3;
  v7 = v4;
  v8 = sub_22956AC48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD90, &qword_22A5779F0);
  swift_arrayDestroy();
  return v8;
}

id sub_229565950()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatterAccessoryWriteAttributeLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_229565A48(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v30 = a6;
  v31 = sub_22A4DB7DC();
  v15 = *(v31 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v31);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v19 = &v8[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_coreAnalyticsEventName];
  *v19 = 0xD00000000000003BLL;
  *(v19 + 1) = 0x800000022A58A010;
  *&v8[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_coreAnalyticsEventOptions] = 0;
  swift_unknownObjectWeakAssign();
  *&v8[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_nodeId] = a2;
  *&v8[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_endpointId] = a3;
  *&v8[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_clusterId] = a4;
  *&v8[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_attributeId] = a5;
  v20 = v30;
  sub_2295404B0(v30, &v8[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_value]);
  *&v8[OBJC_IVAR____TtC13HomeKitDaemon37MatterAccessoryWriteAttributeLogEvent_timedWriteTimeout] = a7;
  v21 = a7;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = [a1 uuid];
  sub_22A4DB79C();

  v26 = sub_22A4DB77C();
  (*(v15 + 8))(v18, v31);
  v27 = type metadata accessor for MatterAccessoryWriteAttributeLogEvent();
  v32.receiver = v8;
  v32.super_class = v27;
  v28 = objc_msgSendSuper2(&v32, sel_initWithHomeUUID_, v26);

  __swift_destroy_boxed_opaque_existential_0(v20);
  return v28;
}

uint64_t sub_229565C58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a7;
  v35 = a1;
  v36 = a3;
  v37 = a5;
  v40 = sub_22A4DD26C();
  v43 = *(v40 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22A4DD29C();
  v41 = *(v12 - 8);
  v42 = v12;
  v13 = *(v41 + 64);
  MEMORY[0x28223BE20](v12);
  v38 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  v20 = type metadata accessor for HindsightDigestController.TaskConfiguration(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229568DA8(v34, v23);
  (*(v16 + 16))(v19, v35, v15);
  v24 = (*(v21 + 80) + 56) & ~*(v21 + 80);
  v25 = (v22 + *(v16 + 80) + v24) & ~*(v16 + 80);
  v26 = swift_allocObject();
  v27 = v37;
  *(v26 + 2) = v36;
  *(v26 + 3) = a4;
  *(v26 + 4) = a2;
  *(v26 + 5) = v27;
  *(v26 + 6) = a6;
  sub_229568E0C(v23, &v26[v24]);
  (*(v16 + 32))(&v26[v25], v19, v15);
  aBlock[4] = sub_229568E70;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor;
  v28 = _Block_copy(aBlock);

  a2;

  v29 = v38;
  sub_22A4DD28C();
  v44 = MEMORY[0x277D84F90];
  sub_22953E0B0(&qword_281401CF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_22953E5DC();
  v31 = v39;
  v30 = v40;
  sub_22A4DE03C();
  MEMORY[0x22AAD0F80](0, v29, v31, v28);
  _Block_release(v28);
  (*(v43 + 8))(v31, v30);
  (*(v41 + 8))(v29, v42);
}

void sub_22956609C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v81 = a7;
  v79 = a3;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v82 = sub_22A4DD07C();
  v80 = *(v82 - 8);
  v12 = *(v80 + 64);
  v13 = MEMORY[0x28223BE20](v82);
  v75 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v74 = &v73 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v76 = &v73 - v18;
  MEMORY[0x28223BE20](v17);
  v78 = &v73 - v19;
  v20 = type metadata accessor for HindsightDigestController.TaskConfiguration(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [objc_opt_self() sharedScheduler];
  v25 = sub_22A4DD5AC();
  v77 = a6;
  sub_229568DA8(a6, v23);
  v26 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v27 = swift_allocObject();
  v27[2] = a4;
  v27[3] = a5;
  sub_229568E0C(v23, v27 + v26);
  aBlock[4] = sub_229568F54;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_229566C20;
  aBlock[3] = &block_descriptor_8;
  v28 = _Block_copy(aBlock);

  [v24 registerForTaskWithIdentifier:v25 usingQueue:v79 launchHandler:v28];
  _Block_release(v28);

  v29 = sub_22A4DD5AC();
  v30 = [v24 taskRequestForIdentifier_];

  if (v30)
  {
    v31 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    if (qword_27D87B890 != -1)
    {
      swift_once();
    }

    v32 = v78;
    sub_22A4DD06C();
    v33 = v30;
    v34 = sub_22A4DD05C();
    v35 = sub_22A4DDD0C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = v24;
      v38 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v33;
      *v38 = v30;
      v39 = v33;
      _os_log_impl(&dword_229538000, v34, v35, "Task already scheduled: %@", v36, 0xCu);
      sub_22953EAE4(v38, &qword_27D87D7D0, &unk_22A578D90);
      v40 = v38;
      v24 = v37;
      MEMORY[0x22AAD4E50](v40, -1, -1);
      MEMORY[0x22AAD4E50](v36, -1, -1);
    }

    (*(v80 + 8))(v32, v82);
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    sub_22A4DD8FC();

    goto LABEL_16;
  }

  v41 = v76;
  v42 = sub_229568FD8(a1, a2, v77);
  v43 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  if (qword_27D87B890 != -1)
  {
    swift_once();
  }

  sub_22A4DD06C();
  v44 = v42;
  v45 = sub_22A4DD05C();
  v46 = sub_22A4DDCDC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 138412290;
    *(v47 + 4) = v44;
    *v48 = v44;
    v49 = v44;
    _os_log_impl(&dword_229538000, v45, v46, "Scheduling new task: %@", v47, 0xCu);
    sub_22953EAE4(v48, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v48, -1, -1);
    MEMORY[0x22AAD4E50](v47, -1, -1);
  }

  v80 = *(v80 + 8);
  (v80)(v41, v82);
  aBlock[0] = 0;
  v50 = [v24 submitTaskRequest:v44 error:aBlock];
  v51 = aBlock[0];
  if (v50)
  {
    sub_22A4DD5EC();

    v52 = v51;
    v53 = v74;
    sub_22A4DD06C();
    v33 = v44;
    v54 = sub_22A4DD05C();
    v55 = sub_22A4DDD0C();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      *(v56 + 4) = v33;
      *v57 = v33;
      v58 = v33;
      _os_log_impl(&dword_229538000, v54, v55, "Scheduled new task: %@", v56, 0xCu);
      sub_22953EAE4(v57, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v57, -1, -1);
      MEMORY[0x22AAD4E50](v56, -1, -1);
    }

    (v80)(v53, v82);
    goto LABEL_15;
  }

  v79 = v24;
  v60 = aBlock[0];
  v61 = sub_22A4DB3EC();

  swift_willThrow();
  sub_22A4DD5EC();

  v62 = v75;
  sub_22A4DD06C();
  v63 = v44;
  v64 = v61;
  v65 = sub_22A4DD05C();
  v66 = sub_22A4DDCEC();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v67 = 138412546;
    *(v67 + 4) = v63;
    *v68 = v63;
    *(v67 + 12) = 2112;
    v69 = v63;
    v70 = v61;
    v71 = _swift_stdlib_bridgeErrorToNSError();
    *(v67 + 14) = v71;
    v68[1] = v71;
    _os_log_impl(&dword_229538000, v65, v66, "Failed to schedule new task: %@, %@", v67, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v68, -1, -1);
    MEMORY[0x22AAD4E50](v67, -1, -1);
  }

  (v80)(v62, v82);
  aBlock[0] = v61;
  v72 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  sub_22A4DD8EC();

LABEL_16:
  v59 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2295669E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  if (qword_27D87B890 != -1)
  {
    swift_once();
  }

  sub_22A4DD06C();
  v13 = a1;
  v14 = sub_22A4DD05C();
  v15 = sub_22A4DDD0C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_229538000, v14, v15, "Task started: %@", v16, 0xCu);
    sub_22953EAE4(v17, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v17, -1, -1);
    MEMORY[0x22AAD4E50](v16, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v19 = type metadata accessor for HindsightDigestController.TaskConfiguration(0);
  return sub_2295695BC(v13, a2, v22, a4 + *(v19 + 28));
}

void sub_229566C20(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_229566C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v6[6] = a5;
  v6[7] = v7;
  return MEMORY[0x2822009F8](sub_229566CB4, 0, 0);
}

uint64_t sub_229566CB4()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = *(v0 + 40);
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v6;
  *(v5 + 56) = v2;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_229566DC8;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_229566DC8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_229566EFC;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_229566EE4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229566EFC()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

void sub_229566F60(void *a1, uint64_t a2)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  if (qword_27D87B890 != -1)
  {
    swift_once();
  }

  sub_22A4DD06C();
  v10 = a1;
  v11 = sub_22A4DD05C();
  v12 = sub_22A4DDD0C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_229538000, v11, v12, "Expiration handler was called for task: %@", v13, 0xCu);
    sub_22953EAE4(v14, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v14, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  os_unfair_lock_lock((a2 + 16));
  *(a2 + 24) = 1;
  if (*(a2 + 32))
  {
    sub_22A4DDA7C();
  }

  os_unfair_lock_unlock((a2 + 16));
}

uint64_t sub_2295671B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = *MEMORY[0x277D85DE8];
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = sub_22A4DD90C();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();
  v10 = sub_22A4DD07C();
  v6[10] = v10;
  v11 = *(v10 - 8);
  v6[11] = v11;
  v12 = *(v11 + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_229567344, 0, 0);
}

uint64_t sub_229567344()
{
  v33 = *MEMORY[0x277D85DE8];
  v0[19] = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  if (qword_27D87B890 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[4];
  v3 = unk_27D8AB620;
  v0[20] = qword_27D8AB618;
  v0[21] = v3;

  sub_22A4DD06C();
  v4 = v2;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDD0C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_229538000, v5, v6, "Running detached handler for task: %@", v8, 0xCu);
    sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  v11 = v0[18];
  v12 = v0[10];
  v13 = v0[11];

  v14 = *(v13 + 8);
  v0[22] = v14;
  v0[23] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v12);
  sub_22A4DDABC();
  v15 = v0[17];
  v16 = v0[4];
  sub_22A4DD5EC();

  sub_22A4DD06C();
  v17 = v16;
  v18 = sub_22A4DD05C();
  v19 = sub_22A4DDD0C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = v0[4];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v20;
    *v22 = v20;
    v23 = v20;
    _os_log_impl(&dword_229538000, v18, v19, "Running task handler for task: %@", v21, 0xCu);
    sub_22953EAE4(v22, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v22, -1, -1);
    MEMORY[0x22AAD4E50](v21, -1, -1);
  }

  v24 = v0[17];
  v25 = v0[10];
  v26 = v0[5];

  v14(v24, v25);
  v32 = (v26 + *v26);
  v27 = v26[1];
  v28 = swift_task_alloc();
  v0[24] = v28;
  *v28 = v0;
  v28[1] = sub_229567EC8;
  v29 = v0[6];
  v30 = *MEMORY[0x277D85DE8];

  return v32();
}

uint64_t sub_229567EC8()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_229568228;
  }

  else
  {
    v3 = sub_229568008;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229568008()
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[15];
  v5 = v0[4];
  sub_22A4DD5EC();

  sub_22A4DD06C();
  v6 = v5;
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDD0C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&dword_229538000, v7, v8, "Marking completed for task: %@", v10, 0xCu);
    sub_22953EAE4(v11, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  v14 = v0[22];
  v13 = v0[23];
  v15 = v0[15];
  v16 = v0[10];
  v17 = v0[4];

  v14(v15, v16);
  [v17 setTaskCompleted];
  v19 = v0[17];
  v18 = v0[18];
  v21 = v0[15];
  v20 = v0[16];
  v23 = v0[13];
  v22 = v0[14];
  v24 = v0[12];
  v25 = v0[9];

  v26 = v0[1];
  v27 = *MEMORY[0x277D85DE8];

  return v26();
}

uint64_t sub_229568228()
{
  v101 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 200);
  *(v0 + 16) = v1;
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  v5 = swift_dynamicCast();
  v7 = *(v0 + 160);
  v6 = *(v0 + 168);
  v8 = *(v0 + 152);
  v9 = *(v0 + 32);
  if (v5)
  {
    v10 = *(v0 + 112);

    sub_22A4DD5EC();

    sub_22A4DD06C();
    v11 = v9;
    v12 = sub_22A4DD05C();
    v13 = sub_22A4DDD0C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 32);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v14;
      *v16 = v14;
      v17 = v14;
      _os_log_impl(&dword_229538000, v12, v13, "Task handler was canceled for task: %@", v15, 0xCu);
      sub_22953EAE4(v16, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v16, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }

    v19 = *(v0 + 176);
    v18 = *(v0 + 184);
    v20 = *(v0 + 112);
    v22 = *(v0 + 72);
    v21 = *(v0 + 80);
    v23 = v12;
    v25 = *(v0 + 56);
    v24 = *(v0 + 64);
    v26 = *(v0 + 32);

    v19(v20, v21);
    (*(v24 + 8))(v22, v25);

    *(v0 + 24) = 0;
    v27 = [v26 setTaskExpiredWithRetryAfter:v0 + 24 error:0.0];
    v29 = *(v0 + 160);
    v28 = *(v0 + 168);
    v30 = *(v0 + 152);
    v31 = *(v0 + 24);
    v32 = *(v0 + 32);
    if (v27)
    {
      v33 = *(v0 + 128);
      v34 = *(v0 + 152);
      sub_22A4DD5EC();

      v35 = v31;
      sub_22A4DD06C();
      v36 = v32;
      v37 = sub_22A4DD05C();
      v38 = sub_22A4DDD0C();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = *(v0 + 32);
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        *(v40 + 4) = v39;
        *v41 = v39;
        v42 = v39;
        _os_log_impl(&dword_229538000, v37, v38, "Successfully expired task: %@", v40, 0xCu);
        sub_22953EAE4(v41, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v41, -1, -1);
        MEMORY[0x22AAD4E50](v40, -1, -1);
      }

      v44 = *(v0 + 176);
      v43 = *(v0 + 184);
      v45 = *(v0 + 128);
      v46 = *(v0 + 80);

      v44(v45, v46);
      goto LABEL_19;
    }

    v58 = *(v0 + 96);
    v59 = v31;
    v60 = sub_22A4DB3EC();

    swift_willThrow();
    sub_22A4DD5EC();

    sub_22A4DD06C();
    v61 = v32;
    v62 = v60;
    v63 = sub_22A4DD05C();
    v64 = sub_22A4DDCEC();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = *(v0 + 32);
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138412546;
      *(v66 + 4) = v65;
      *v67 = v65;
      *(v66 + 12) = 2112;
      v68 = v65;
      v69 = v60;
      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v66 + 14) = v70;
      v67[1] = v70;
      _os_log_impl(&dword_229538000, v63, v64, "Failed to expire task: %@, %@", v66, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v67, -1, -1);
      MEMORY[0x22AAD4E50](v66, -1, -1);
    }

    else
    {
    }

    v72 = *(v0 + 184);
    (*(v0 + 176))(*(v0 + 96), *(v0 + 80));
  }

  else
  {
    v47 = *(v0 + 104);

    sub_22A4DD5EC();

    sub_22A4DD06C();
    v48 = v9;
    v49 = v1;
    v50 = sub_22A4DD05C();
    v51 = sub_22A4DDCEC();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = *(v0 + 32);
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412546;
      *(v53 + 4) = v52;
      *v54 = v52;
      *(v53 + 12) = 2112;
      v55 = v52;
      v56 = v1;
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 14) = v57;
      v54[1] = v57;
      _os_log_impl(&dword_229538000, v50, v51, "Task handler threw error for task: %@, %@", v53, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v54, -1, -1);
      MEMORY[0x22AAD4E50](v53, -1, -1);
    }

    else
    {
    }

    v71 = *(v0 + 184);
    (*(v0 + 176))(*(v0 + 104), *(v0 + 80));
  }

  v73 = *(v0 + 160);
  v74 = *(v0 + 168);
  v75 = *(v0 + 152);
  v76 = *(v0 + 120);
  v77 = *(v0 + 32);
  sub_22A4DD5EC();

  sub_22A4DD06C();
  v78 = v77;
  v79 = sub_22A4DD05C();
  v80 = sub_22A4DDD0C();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = *(v0 + 32);
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *v82 = 138412290;
    *(v82 + 4) = v81;
    *v83 = v81;
    v84 = v81;
    _os_log_impl(&dword_229538000, v79, v80, "Marking completed for task: %@", v82, 0xCu);
    sub_22953EAE4(v83, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v83, -1, -1);
    MEMORY[0x22AAD4E50](v82, -1, -1);
  }

  v86 = *(v0 + 176);
  v85 = *(v0 + 184);
  v87 = *(v0 + 120);
  v88 = *(v0 + 80);
  v89 = *(v0 + 32);

  v86(v87, v88);
  [v89 setTaskCompleted];
LABEL_19:
  v91 = *(v0 + 136);
  v90 = *(v0 + 144);
  v93 = *(v0 + 120);
  v92 = *(v0 + 128);
  v95 = *(v0 + 104);
  v94 = *(v0 + 112);
  v96 = *(v0 + 96);
  v97 = *(v0 + 72);

  v98 = *(v0 + 8);
  v99 = *MEMORY[0x277D85DE8];

  return v98();
}

uint64_t sub_229568A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_229569C24(a3, v27 - v11);
  v13 = sub_22A4DD9DC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22953EAE4(v12, &unk_27D87D8F0, &qword_22A578D70);
  }

  else
  {
    sub_22A4DD9CC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22A4DD8CC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22A4DD67C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_229568CDC()
{
  type metadata accessor for HindsightDigestController(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD18, &unk_22A577A50);
  result = sub_22A4DD64C();
  qword_27D8AB618 = result;
  unk_27D8AB620 = v1;
  return result;
}

uint64_t sub_229568D30()
{
  if (qword_27D87B890 != -1)
  {
    swift_once();
  }

  v0 = qword_27D8AB618;

  return v0;
}

uint64_t sub_229568DA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HindsightDigestController.TaskConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_229568E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HindsightDigestController.TaskConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_229568E70()
{
  v1 = *(type metadata accessor for HindsightDigestController.TaskConfiguration(0) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0) - 8);
  v5 = *(v0 + 2);
  v6 = *(v0 + 3);
  v7 = *(v0 + 4);
  v8 = *(v0 + 5);
  v9 = *(v0 + 6);
  v10 = &v0[(v3 + *(v4 + 80)) & ~*(v4 + 80)];

  sub_22956609C(v5, v6, v7, v8, v9, &v0[v2], v10);
}

uint64_t sub_229568F54(void *a1)
{
  v3 = *(type metadata accessor for HindsightDigestController.TaskConfiguration(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_2295669E4(a1, v4, v5, v6);
}

uint64_t sub_229568FD8(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = sub_22A4DD9DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = objc_allocWithZone(MEMORY[0x277CF07D8]);
  v13 = sub_22A4DD5AC();
  v14 = [v12 initWithIdentifier_];

  v15 = 24 * *a3;
  if ((*a3 * 24) >> 64 != v15 >> 63)
  {
    __break(1u);
    goto LABEL_20;
  }

  if ((v15 * 60) >> 64 != (1440 * *a3) >> 63)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((1440 * *a3 * 60) >> 64 != (86400 * *a3) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v14 setMinDurationBetweenInstances_];
  v16 = *(a3 + 1);
  v17 = 24 * v16;
  if ((v16 * 24) >> 64 != (24 * v16) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = 1440 * v16;
  if ((v17 * 60) >> 64 != v18 >> 63)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((v18 * 60) >> 64 != (60 * v18) >> 63)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v14 setInterval_];
  v19 = *(a3 + 2);
  v20 = 60 * v19;
  if ((v19 * 60) >> 64 != (60 * v19) >> 63)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v21 = 3600 * v19;
  if ((v20 * 60) >> 64 != v21 >> 63)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v22 = v21;
  v23 = v14;
  [v23 setRandomInitialDelay_];
  v24 = type metadata accessor for HindsightDigestController.TaskConfiguration(0);
  (*(v5 + 16))(v11, &a3[*(v24 + 28)], v4);
  sub_22A4DD97C();
  sub_22953E0B0(&qword_27D87CD20, MEMORY[0x277D85720]);
  v25 = sub_22A4DD58C();
  v26 = *(v5 + 8);
  v26(v9, v4);
  if (v25 & 1) != 0 || (sub_22A4DD97C(), v27 = sub_22A4DD58C(), v26(v9, v4), (v27))
  {
    v28 = 3;
LABEL_12:
    v26(v11, v4);
    [v23 setPriority_];
    [v23 setRequiresNetworkConnectivity_];
    [v23 setRequiresUserInactivity_];
    [v23 setPowerNap_];
    [v23 setShouldWakeDevice_];
    [v23 setRequiresBuddyComplete_];
    [v23 setResources_];
    [v23 setNetworkDownloadSize_];
    [v23 setExpectedDuration_];

    return v23;
  }

  sub_22A4DD9BC();
  v30 = sub_22A4DD58C();
  v26(v9, v4);
  if (v30 & 1) != 0 || (sub_22A4DD98C(), v31 = sub_22A4DD58C(), v26(v9, v4), (v31))
  {
    v28 = 2;
    goto LABEL_12;
  }

  sub_22A4DD98C();
  v32 = sub_22A4DD58C();
  v26(v9, v4);
  if (v32 & 1) != 0 || (sub_22A4DD96C(), v33 = sub_22A4DD58C(), v26(v9, v4), (v33))
  {
    v28 = 1;
    goto LABEL_12;
  }

LABEL_27:
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_22A4DE1FC();

  v35 = 0xD000000000000014;
  v36 = 0x800000022A58A0E0;
  sub_22953E0B0(&qword_27D87CD28, MEMORY[0x277D85720]);
  v34 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v34);

  result = sub_22A4DE39C();
  __break(1u);
  return result;
}

uint64_t sub_2295695BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v38 = a2;
  v39 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v34 - v7;
  v35 = sub_22A4DD07C();
  v9 = *(v35 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v35);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = (v13 + 16);
  *(v13 + 24) = 0;
  v36 = (v13 + 24);
  *(v13 + 32) = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v13;
  aBlock[4] = sub_229569A60;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_17;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  [v17 setExpirationHandler_];
  _Block_release(v16);
  v18 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  if (qword_27D87B890 != -1)
  {
    swift_once();
  }

  sub_22A4DD06C();
  v19 = v17;
  v20 = sub_22A4DD05C();
  v21 = sub_22A4DDCCC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&dword_229538000, v20, v21, "Starting detached handler for task: %@", v22, 0xCu);
    sub_22953EAE4(v23, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v23, -1, -1);
    MEMORY[0x22AAD4E50](v22, -1, -1);
  }

  (*(v9 + 8))(v12, v35);
  v25 = sub_22A4DD9DC();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v8, v37, v25);
  (*(v26 + 56))(v8, 0, 1, v25);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v28 = v38;
  v29 = v39;
  v27[4] = v19;
  v27[5] = v28;
  v27[6] = v29;
  v30 = v19;

  v31 = sub_229568A2C(0, 0, v8, &unk_22A577A78, v27);
  sub_22953EAE4(v8, &unk_27D87D8F0, &qword_22A578D70);
  os_unfair_lock_lock(v14);
  if (*v36 == 1)
  {
    sub_22A4DDA7C();
  }

  else
  {
    v32 = *(v13 + 32);
    *(v13 + 32) = v31;
  }

  os_unfair_lock_unlock(v14);
}

uint64_t sub_229569A68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229569B30;

  return sub_2295671B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_229569B30()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_229569C24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_229569C94(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229569B30;

  return sub_22953E774(a1, v5);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_229569D58(uint64_t a1, unsigned int a2)
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

uint64_t sub_229569DB4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_229569E40()
{
  v1 = *v0;
  sub_22A4DE77C();
  MEMORY[0x22AAD1960](v1);
  return sub_22A4DE7BC();
}

uint64_t sub_229569E88()
{
  v1 = *v0;
  sub_22A4DE77C();
  MEMORY[0x22AAD1960](v1);
  return sub_22A4DE7BC();
}

id RestrictedGuestInfoLogEvent.init(home:)(void *a1)
{
  v2 = v1;
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v2[OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_coreAnalyticsEventName];
  *v9 = 0xD000000000000025;
  v9[1] = 0x800000022A589230;
  *&v2[OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_coreAnalyticsEventOptions] = 2;
  v2[OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_hasHomeKey] = 0;
  v10 = [a1 currentUser];
  if (v10 && (v11 = v10, v12 = [v10 accessCode], v11, v12))
  {

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  v2[OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_hasPinCode] = v13;
  v2[OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_isChildWatch] = isTinkerWatch();
  v14 = [a1 currentUser];
  if (!v14)
  {
    goto LABEL_11;
  }

  v15 = v14;
  v16 = [v14 restrictedGuestAccessSettings];

  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = [v16 schedule];

  if (v17)
  {
    v18 = [v17 weekDayRules];

    sub_229562F68(0, &qword_27D87CD80, 0x277CD1F20);
    v19 = sub_22A4DD83C();

    if (v19 >> 62)
    {
      v16 = sub_22A4DE0EC();
    }

    else
    {
      v16 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
LABEL_11:
    v16 = 0;
  }

LABEL_12:
  v20 = [a1 currentUser];
  if (!v20)
  {
    goto LABEL_20;
  }

  v21 = v20;
  v22 = [v20 restrictedGuestAccessSettings];

  if (!v22)
  {
    goto LABEL_21;
  }

  v23 = [v22 schedule];

  if (v23)
  {
    v24 = [v23 yearDayRules];

    sub_229562F68(0, &qword_27D87CD78, 0x277CD1F48);
    v25 = sub_22A4DD83C();

    if (v25 >> 62)
    {
      v22 = sub_22A4DE0EC();
    }

    else
    {
      v22 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = &v22[v16]; __OFADD__(v16, v22); i = &v22[v16])
    {
      __break(1u);
LABEL_20:
      v22 = 0;
LABEL_21:
      ;
    }
  }

  else
  {
    v22 = 0;
    i = v16;
  }

  *&v2[OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_numberOfSchedules] = i;
  v27 = v16 != 0;
  if (v16)
  {
    v28 = 3;
  }

  else
  {
    v28 = 2;
  }

  if (v22)
  {
    v27 = v28;
  }

  v2[OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_scheduleType] = v27;
  v29 = [a1 uuid];
  sub_22A4DB79C();

  v30 = sub_22A4DB77C();
  (*(v5 + 8))(v8, v4);
  v31 = type metadata accessor for RestrictedGuestInfoLogEvent();
  v34.receiver = v2;
  v34.super_class = v31;
  v32 = objc_msgSendSuper2(&v34, sel_initWithHomeUUID_, v30);

  return v32;
}

uint64_t RestrictedGuestInfoLogEvent.coreAnalyticsEventName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_coreAnalyticsEventName);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t RestrictedGuestInfoLogEvent.coreAnalyticsEventName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_coreAnalyticsEventName);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

unint64_t RestrictedGuestInfoLogEvent.coreAnalyticsEventDictionary.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CCC0, &unk_22A5779A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A577B20;
  *(inited + 32) = 0x4B656D6F48736168;
  *(inited + 40) = 0xEA00000000007965;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 56) = 0x6F436E6950736168;
  *(inited + 64) = 0xEA00000000006564;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  strcpy((inited + 80), "isChildWatch");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 104) = 0xD000000000000011;
  *(inited + 112) = 0x800000022A58A100;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  strcpy((inited + 128), "scheduleType");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v2 = sub_22956B300(inited, &unk_27D87CE60, &qword_22A577CD8);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD90, &qword_22A5779F0);
  swift_arrayDestroy();
  return v2;
}

uint64_t RestrictedGuestInfoLogEvent.coreAnalyticsEventOptions.getter()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_coreAnalyticsEventOptions;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RestrictedGuestInfoLogEvent.coreAnalyticsEventOptions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13HomeKitDaemon27RestrictedGuestInfoLogEvent_coreAnalyticsEventOptions;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id RestrictedGuestInfoLogEvent.__allocating_init(homeUUID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_22A4DB77C();
  v5 = [v3 initWithHomeUUID_];

  v6 = sub_22A4DB7DC();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v5;
}

id RestrictedGuestInfoLogEvent.__allocating_init(startTime:homeUUID:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_22A4DB77C();
  v7 = [v5 initWithStartTime:v6 homeUUID:a2];

  v8 = sub_22A4DB7DC();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id RestrictedGuestInfoLogEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RestrictedGuestInfoLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22956AC5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CE50, &qword_22A577CC8);
    v3 = sub_22A4DE40C();
    v4 = a1 + 32;

    while (1)
    {
      sub_229564F88(v4, &v13, &unk_27D87DE50, &qword_22A577CD0);
      v5 = v13;
      v6 = v14;
      result = sub_229543DBC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_229543C5C(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22956AD8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D882050, &unk_22A577C10);
    v3 = sub_22A4DE40C();
    v4 = a1 + 32;

    while (1)
    {
      sub_229564F88(v4, &v13, &qword_27D87CDA0, &unk_22A57A930);
      v5 = v13;
      v6 = v14;
      result = sub_229543DBC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_229543C5C(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22956AF0C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_22A4DE40C();

    for (i = (a1 + 48); ; i += 24)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_229543DBC(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22956B000(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CE30, &qword_22A577CB0);
    v3 = sub_22A4DE40C();

    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 4);
      v6 = *i;
      result = sub_2296DBDF0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22956B0EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDF8, &qword_22A577C78);
    v3 = sub_22A4DE40C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *i;
      result = sub_2296DBE78(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22956B1CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDF0, &qword_22A577C70);
  v3 = sub_22A4DE40C();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_2296DBE78(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    v10 = (v3[7] + 16 * result);
    *v10 = v5;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_22956C148(v5, v6);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v9 - 4);
    v5 = *(v9 - 1);
    v6 = *v9;
    result = sub_2296DBE78(v4);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22956B300(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_22A4DE40C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_229543DBC(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22956B3FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CE00, &unk_22A577C80);
    v3 = sub_22A4DE40C();
    v4 = a1 + 32;

    while (1)
    {
      sub_229564F88(v4, v13, &qword_27D87CE08, &qword_22A57BC60);
      result = sub_2295402E8(v13);
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
      result = sub_229543C5C(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22956B538(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D882070, &qword_22A586C60);
    v3 = sub_22A4DE40C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_229543DBC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22956B634(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D882120, &unk_22A577CE0);
    v3 = sub_22A4DE40C();
    v4 = a1 + 32;

    while (1)
    {
      sub_229564F88(v4, &v13, &unk_27D87CE70, &qword_22A583FC0);
      v5 = v13;
      v6 = v14;
      result = sub_229543DBC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_229557188(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22956B768(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDD8, &qword_22A577C58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CDE0, &unk_22A577C60);
    v8 = sub_22A4DE40C();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_229564F88(v10, v6, &qword_27D87CDD8, &qword_22A577C58);
      result = sub_2296DBEC0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22A4DB7DC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 16 * v14;
      v18 = v9[8];
      *v17 = *v9;
      *(v17 + 8) = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22956B974(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_22A4DE40C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_229543DBC(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22956BA84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_22A4DE40C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      swift_unknownObjectRetain();
      result = sub_229543DBC(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22956BB80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDB0, &qword_22A577C28);
    v3 = sub_22A4DE40C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_229543DBC(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22956BC7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDB8, &qword_22A577C30);
    v3 = sub_22A4DE40C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_229543DBC(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22956BD80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDC0, &qword_22A577C38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CDC8, &unk_22A577C40);
    v8 = sub_22A4DE40C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_229564F88(v10, v6, &qword_27D87CDC0, &qword_22A577C38);
      v12 = *v6;
      v13 = v6[1];
      result = sub_229543DBC(*v6, v13);
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
      v19 = sub_22A4DC09C();
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22956BF94()
{
  result = qword_27D87CD98;
  if (!qword_27D87CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87CD98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RestrictedGuestInfoLogEvent.ScheduleType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RestrictedGuestInfoLogEvent.ScheduleType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22956C148(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22956C1A0()
{
  v10 = sub_22A4DDD7C();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22A4DDD5C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_22A4DD29C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_229562F68(0, &qword_281401980, 0x277D85C78);
  v11 = type metadata accessor for DemoAccessoryServerBrowser();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEC8, &qword_22A577D38);
  v9[0] = sub_22A4DD64C();
  sub_22A4DD28C();
  v11 = MEMORY[0x277D84F90];
  sub_22953E0F8(&qword_281401990, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87BAF0, &unk_22A5761E0);
  sub_229579858(&qword_281401CA0, &unk_27D87BAF0, &unk_22A5761E0);
  sub_22A4DE03C();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_22A4DDDCC();
  qword_27D8AB628 = result;
  return result;
}

void sub_22956C41C()
{
  if (qword_27D87B898 != -1)
  {
    swift_once();
  }

  v0 = qword_27D8AB628;
  v1 = objc_allocWithZone(type metadata accessor for DemoAccessoryServerBrowser());
  v2 = v0;
  v3 = [v1 initWithQueue_];

  if (v3)
  {
    qword_27D8AB630 = v3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22956C548()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22A4DD26C();
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22A4DD29C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v0 workQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  *(v12 + 24) = ObjectType;
  if (v11)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_22957A430;
    *(v13 + 24) = v12;
    aBlock[4] = sub_22957A47C;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22953E640;
    aBlock[3] = &block_descriptor_83;
    v22 = _Block_copy(aBlock);
    v23 = v7;
    v14 = v0;
    v15 = v11;

    sub_22A4DD28C();
    v25 = MEMORY[0x277D84F90];
    sub_22953E0F8(&qword_281401CF0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
    v16 = v24;
    v21 = v6;
    sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
    sub_22A4DE03C();
    v17 = v22;
    MEMORY[0x22AAD0F80](0, v10, v5, v22);
    _Block_release(v17);

    (*(v16 + 8))(v5, v2);
    (*(v23 + 8))(v10, v21);
  }

  else
  {
    v19 = v0;
  }
}

uint64_t sub_22956C8B4(void *a1, uint64_t a2)
{
  v69 = sub_22A4DD26C();
  v4 = *(v69 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v69);
  v68 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_22A4DD29C();
  v7 = *(v67 - 8);
  v8 = *(v7 + 8);
  MEMORY[0x28223BE20](v67);
  v66 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22A4DD07C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(a2, &off_283CDC748);
  v15 = a1;
  v16 = sub_22A4DD05C();
  v17 = sub_22A4DDCCC();

  v18 = os_log_type_enabled(v16, v17);
  v73 = v15;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v74 = v4;
    v72 = v7;
    v20 = v19;
    v21 = swift_slowAlloc();
    v79[0] = v21;
    *v20 = 136315138;
    aBlock = 91;
    v77 = 0xE100000000000000;
    v22 = [v15 shortDescription];
    v71 = v10;
    v23 = v22;
    v24 = sub_22A4DD5EC();
    v26 = v25;

    MEMORY[0x22AAD08C0](v24, v26);
    v15 = v73;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v27 = sub_2295A3E30(aBlock, v77, v79);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_229538000, v16, v17, "%s Start discovering accessory servers", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x22AAD4E50](v21, -1, -1);
    v28 = v20;
    v7 = v72;
    v4 = v74;
    MEMORY[0x22AAD4E50](v28, -1, -1);

    (*(v11 + 8))(v14, v71);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v15[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_browsing] = 1;
  v29 = OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_discoveredAccessoryServers;
  swift_beginAccess();
  v61 = *&v15[v29];
  if ((v61 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_22A4DE09C();
    type metadata accessor for DemoAccessoryServer();
    sub_22953E0F8(&qword_27D87CEB0, type metadata accessor for DemoAccessoryServer);
    result = sub_22A4DDBAC();
    v31 = v79[1];
    v74 = v79[0];
    v33 = v79[2];
    v32 = v79[3];
    v34 = v79[4];
  }

  else
  {
    v35 = -1 << *(v61 + 32);
    v31 = v61 + 56;
    v33 = ~v35;
    v36 = -v35;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v34 = v37 & *(v61 + 56);
    v38 = v61;
    result = swift_bridgeObjectRetain_n();
    v32 = 0;
    v74 = v38;
  }

  v60[1] = v33;
  v39 = (v33 + 64) >> 6;
  v64 = v78;
  v63 = (v4 + 8);
  v62 = (v7 + 8);
  v65 = v39;
  if ((v74 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_19:
  v56 = sub_22A4DE12C();
  v53 = v73;
  if (v56 && (v75 = v56, type metadata accessor for DemoAccessoryServer(), swift_dynamicCast(), v55 = aBlock, v52 = v32, v54 = v34, aBlock))
  {
    while (1)
    {
      v57 = *&v53[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegateQueue];
      v58 = swift_allocObject();
      *(v58 + 16) = v53;
      *(v58 + 24) = v55;
      if (v57)
      {
        v40 = swift_allocObject();
        *(v40 + 16) = sub_22957A438;
        *(v40 + 24) = v58;
        v78[2] = sub_22957A47C;
        v78[3] = v40;
        aBlock = MEMORY[0x277D85DD0];
        v77 = 1107296256;
        v78[0] = sub_22953E640;
        v78[1] = &block_descriptor_93;
        v72 = _Block_copy(&aBlock);
        v41 = v57;
        v42 = v53;
        v43 = v41;
        v70 = v55;

        v44 = v66;
        sub_22A4DD28C();
        v75 = MEMORY[0x277D84F90];
        sub_22953E0F8(&qword_281401CF0, MEMORY[0x277D85198]);
        v71 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
        sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
        v45 = v68;
        v46 = v31;
        v47 = v69;
        sub_22A4DE03C();
        v48 = v72;
        MEMORY[0x22AAD0F80](0, v44, v45, v72);
        _Block_release(v48);

        v49 = v47;
        v31 = v46;
        v39 = v65;
        (*v63)(v45, v49);
        (*v62)(v44, v67);

        v32 = v52;
        v34 = v71;
        if (v74 < 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v59 = v53;

        v32 = v52;
        v34 = v54;
        if (v74 < 0)
        {
          goto LABEL_19;
        }
      }

LABEL_13:
      v50 = v32;
      v51 = v34;
      v52 = v32;
      v53 = v73;
      if (!v34)
      {
        break;
      }

LABEL_17:
      v54 = (v51 - 1) & v51;
      v55 = *(*(v74 + 48) + ((v52 << 9) | (8 * __clz(__rbit64(v51)))));
      if (!v55)
      {
        goto LABEL_24;
      }
    }

    while (1)
    {
      v52 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v52 >= v39)
      {
        goto LABEL_24;
      }

      v51 = *(v31 + 8 * v52);
      ++v50;
      if (v51)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    sub_22953EE84();
  }

  return result;
}

uint64_t sub_22956D0FC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22A4DD26C();
  v24 = *(v2 - 8);
  v3 = *(v24 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22A4DD29C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v0 workQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  *(v12 + 24) = ObjectType;
  if (v11)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_22957A428;
    *(v13 + 24) = v12;
    aBlock[4] = sub_22957A47C;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22953E640;
    aBlock[3] = &block_descriptor_73;
    v22 = _Block_copy(aBlock);
    v23 = v7;
    v14 = v0;
    v15 = v11;

    sub_22A4DD28C();
    v25 = MEMORY[0x277D84F90];
    sub_22953E0F8(&qword_281401CF0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
    v16 = v24;
    v21 = v6;
    sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
    sub_22A4DE03C();
    v17 = v22;
    MEMORY[0x22AAD0F80](0, v10, v5, v22);
    _Block_release(v17);

    (*(v16 + 8))(v5, v2);
    (*(v23 + 8))(v10, v21);
  }

  else
  {
    v19 = v0;
  }
}

uint64_t sub_22956D468(void *a1, uint64_t a2)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(a2, &off_283CDC748);
  v9 = a1;
  v10 = sub_22A4DD05C();
  v11 = sub_22A4DDCCC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = v4;
    v13 = v12;
    v14 = swift_slowAlloc();
    *v13 = 136315138;
    v22 = 91;
    v23 = 0xE100000000000000;
    v24 = v14;
    v15 = [v9 shortDescription];
    v16 = sub_22A4DD5EC();
    v18 = v17;

    MEMORY[0x22AAD08C0](v16, v18);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v19 = sub_2295A3E30(v22, v23, &v24);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_229538000, v10, v11, "%s Stop discovering accessory servers", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AAD4E50](v14, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    result = (*(v5 + 8))(v8, v21);
  }

  else
  {

    result = (*(v5 + 8))(v8, v4);
  }

  *(v9 + OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_browsing) = 0;
  return result;
}

uint64_t sub_22956D6F0(uint64_t a1, uint64_t a2)
{
  v5 = sub_22A4DD26C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22A4DD29C();
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v2[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegateQueue];
  v15 = swift_allocObject();
  v15[2] = v2;
  v15[3] = a1;
  v15[4] = a2;
  if (v14)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = sub_22957A3FC;
    *(v16 + 24) = v15;
    aBlock[4] = sub_22957A47C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22953E640;
    aBlock[3] = &block_descriptor_63;
    v22 = _Block_copy(aBlock);
    v23 = v10;
    v17 = v14;
    v18 = v2;

    sub_22A4DD28C();
    v25 = MEMORY[0x277D84F90];
    sub_22953E0F8(&qword_281401CF0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
    sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
    sub_22A4DE03C();
    v19 = v22;
    MEMORY[0x22AAD0F80](0, v13, v9, v22);
    _Block_release(v19);

    (*(v6 + 8))(v9, v5);
    (*(v24 + 8))(v13, v23);
  }

  else
  {
    v21 = v2;
  }
}

void sub_22956DA58(char *a1)
{
  v2 = [a1 workQueue];
  if (v2)
  {
    v3 = v2;
    MEMORY[0x28223BE20](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881EB0, &qword_22A577DE0);
    sub_22A4DDD9C();

    v4 = v11;
    if (v11)
    {
      v5 = *&a1[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegate];
      if (v5)
      {
        v6 = *&a1[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegate];
        swift_unknownObjectRetain();
        v4 = v11;
        [v4 stateNumber];
        v7 = sub_22A4DDBDC();
        [v5 accessoryServerBrowser:a1 didFindAccessoryServer:v4 stateChanged:0 stateNumber:v7];

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v8 = *&a1[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegate];
      if (v8)
      {
        v9 = *&a1[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegate];
        swift_unknownObjectRetain();
        v10 = sub_22A4DD5AC();
        [v8 accessoryServerBrowser:a1 didFailToDiscoverAccessoryServerWithIdentifier:v10];

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_22956DD10(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_discoveredAccessoryServers;
  swift_beginAccess();
  v9 = *(a1 + v8);
  v35 = a4;
  if ((v9 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v10 = *(a1 + v8);
    }

    swift_unknownObjectRetain();
    sub_22A4DE09C();
    type metadata accessor for DemoAccessoryServer();
    sub_22953E0F8(&qword_27D87CEB0, type metadata accessor for DemoAccessoryServer);
    sub_22A4DDBAC();
    v11 = v38;
    v12 = v39;
    v13 = v40;
    v14 = v41;
    v15 = v42;
  }

  else
  {
    v16 = -1 << *(v9 + 32);
    v12 = v9 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v9 + 56);
    v11 = v9;
    swift_bridgeObjectRetain_n();
    v14 = 0;
  }

  v19 = (v13 + 64) >> 6;
  v36 = v11;
  if ((v11 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (sub_22A4DE12C() && (type metadata accessor for DemoAccessoryServer(), swift_dynamicCast(), v20 = v43, v21 = v14, v22 = v15, v43))
  {
    while (1)
    {
      v25 = v12;
      v37 = v20;
      v26 = a2;
      v27 = a3;
      v28 = [v20 identifier];
      v29 = sub_22A4DD5EC();
      v31 = v30;

      a3 = v27;
      if (v29 == v26 && v31 == v27)
      {

LABEL_27:
        v34 = v37;
        goto LABEL_28;
      }

      a2 = v26;
      v33 = sub_22A4DE60C();

      v12 = v25;
      if (v33)
      {
        goto LABEL_27;
      }

      v14 = v21;
      v15 = v22;
      v11 = v36;
      if (v36 < 0)
      {
        goto LABEL_10;
      }

LABEL_13:
      v23 = v14;
      v24 = v15;
      v21 = v14;
      if (!v15)
      {
        break;
      }

LABEL_17:
      v22 = (v24 - 1) & v24;
      v20 = *(*(v11 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v24)))));
      if (!v20)
      {
        goto LABEL_25;
      }
    }

    while (1)
    {
      v21 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v21 >= v19)
      {
        goto LABEL_25;
      }

      v24 = *(v12 + 8 * v21);
      ++v23;
      if (v24)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_25:
    v34 = 0;
LABEL_28:
    sub_22953EE84();

    *v35 = v34;
  }
}

uint64_t sub_22956DFF4(void *a1)
{
  v3 = sub_22A4DD26C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DD29C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v1[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegateQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  if (v13)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = sub_22957A480;
    *(v15 + 24) = v14;
    aBlock[4] = sub_22957A47C;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22953E640;
    aBlock[3] = &block_descriptor_53;
    v16 = _Block_copy(aBlock);
    v28 = v7;
    v29 = v16;
    v17 = v13;
    v30 = v8;
    v18 = v4;
    v19 = v17;
    v20 = v1;
    v21 = a1;

    sub_22A4DD28C();
    v31 = MEMORY[0x277D84F90];
    sub_22953E0F8(&qword_281401CF0, MEMORY[0x277D85198]);
    v22 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
    sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
    v23 = v28;
    sub_22A4DE03C();
    v24 = v29;
    MEMORY[0x22AAD0F80](0, v22, v23, v29);
    _Block_release(v24);

    (*(v18 + 8))(v23, v3);
    (*(v9 + 8))(v22, v30);
  }

  else
  {
    v26 = v1;
    v27 = a1;
  }
}

uint64_t sub_22956E358(void *a1)
{
  v27 = sub_22A4DD26C();
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v27);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22A4DD29C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v1 workQueue];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v1;
  if (v12)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = sub_2295798AC;
    *(v14 + 24) = v13;
    aBlock[4] = sub_22957A47C;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22953E640;
    aBlock[3] = &block_descriptor_33;
    v25 = _Block_copy(aBlock);
    v26 = v8;
    v15 = a1;
    v16 = v1;
    v17 = v12;

    sub_22A4DD28C();
    v28 = MEMORY[0x277D84F90];
    sub_22953E0F8(&qword_281401CF0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
    v18 = v27;
    v24 = v7;
    sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
    sub_22A4DE03C();
    v19 = v25;
    MEMORY[0x22AAD0F80](0, v11, v6, v25);
    _Block_release(v19);

    (*(v3 + 8))(v6, v18);
    (*(v26 + 8))(v11, v24);
  }

  else
  {
    v21 = a1;
    v22 = v1;
  }
}

uint64_t sub_22956E6C4(char *a1, char *a2)
{
  v4 = sub_22A4DD26C();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DD29C();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setReachable_];
  v12 = *&a1[OBJC_IVAR____TtC13HomeKitDaemon19DemoAccessoryServer_browser];
  *&a1[OBJC_IVAR____TtC13HomeKitDaemon19DemoAccessoryServer_browser] = a2;

  v13 = OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_discoveredAccessoryServers;
  swift_beginAccess();
  v14 = *&a2[v13];
  v15 = a2;

  v16 = sub_22956EABC(a1, v14);

  if ((v16 & 1) == 0)
  {
    swift_beginAccess();
    sub_22957053C(&v35, a1);
    swift_endAccess();
  }

  v17 = *&v15[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegateQueue];
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = a1;
  if (v17)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = sub_2295798B4;
    *(v19 + 24) = v18;
    aBlock[4] = sub_22957A47C;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22953E640;
    aBlock[3] = &block_descriptor_43;
    v31 = _Block_copy(aBlock);
    v20 = v17;
    v21 = v15;
    v22 = a1;
    v23 = v20;

    v24 = v11;
    sub_22A4DD28C();
    v35 = MEMORY[0x277D84F90];
    sub_22953E0F8(&qword_281401CF0, MEMORY[0x277D85198]);
    v25 = v32;
    v30 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
    sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
    sub_22A4DE03C();
    v26 = v31;
    MEMORY[0x22AAD0F80](0, v24, v7, v31);
    _Block_release(v26);

    (*(v25 + 8))(v7, v4);
    (*(v33 + 8))(v24, v30);
  }

  else
  {
    v27 = v15;
    v28 = a1;
  }
}

uint64_t sub_22956EABC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_22A4DE13C();
  }

  else if (*(a2 + 16) && (type metadata accessor for DemoAccessoryServer(), v5 = *(a2 + 40), v6 = sub_22A4DDECC(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      v4 = sub_22A4DDEDC();

      if (v4)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_22956EBD8(void *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = a1;
    v6 = sub_22A4DE13C();
  }

  else if (*(a2 + 16) && (sub_229562F68(0, a3, a4), v7 = *(a2 + 40), v8 = sub_22A4DDECC(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v11 = ~v9;
    do
    {
      v12 = *(*(a2 + 48) + 8 * v10);
      v6 = sub_22A4DDEDC();

      if (v6)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_22956ECE8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_22A4DE13C();

    return v3 & 1;
  }

  else
  {
    if (*(a2 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF98, &qword_22A577DB0), v5 = *(a2 + 40), v6 = sub_22A4DD4EC(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
    {
      v9 = ~v7;
      do
      {
        v11 = *(*(a2 + 48) + 8 * v8);
        v10 = sub_22A4DD58C();
        if (v10)
        {
          break;
        }

        v8 = (v8 + 1) & v9;
      }

      while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    else
    {
      v10 = 0;
    }

    return v10 & 1;
  }
}

uint64_t sub_22956EE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_22A4DE77C();
  sub_22A4DD6BC();
  v7 = sub_22A4DE7BC();
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
    if (v12 || (sub_22A4DE60C() & 1) != 0)
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

uint64_t sub_22956EF18(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v47 = *MEMORY[0x277D85DE8];
  if (!*(a3 + 16) || (v6 = *(a3 + 40), sub_22A4DE77C(), sub_22A4DB63C(), v7 = sub_22A4DE7BC(), v8 = a3 + 56, v9 = -1 << *(a3 + 32), v10 = v7 & ~v9, ((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0))
  {
LABEL_64:
    result = 0;
    goto LABEL_65;
  }

  v11 = ~v9;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v44 = v13;
  v14 = a2 >> 62;
  v15 = __OFSUB__(HIDWORD(a1), a1);
  v41 = v15;
  v39 = a2;
  v40 = HIDWORD(a1) - a1;
  v42 = v11;
  v43 = BYTE6(a2);
  v38 = a1;
  while (1)
  {
    v16 = (*(a3 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      break;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_37;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_68;
      }

      if (v14 <= 1)
      {
        goto LABEL_34;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_69;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_34:
        v27 = v43;
        if (v14)
        {
          v27 = v40;
          if (v41)
          {
            goto LABEL_67;
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_63;
      }

      goto LABEL_14;
    }

    v29 = *(a1 + 16);
    v28 = *(a1 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
    }

LABEL_40:
    if (v23 == v27)
    {
      if (v23 < 1)
      {
        goto LABEL_63;
      }

      if (v19 <= 1)
      {
        if (!v19)
        {
          *v46 = v18;
          *&v46[8] = v17;
          v46[10] = BYTE2(v17);
          v46[11] = BYTE3(v17);
          v46[12] = BYTE4(v17);
          v46[13] = BYTE5(v17);
          sub_22956C148(v18, v17);
          sub_229838464(v46, a1, a2, v45);
          sub_2295798D4(v18, v17);
          if (v45[0])
          {
            goto LABEL_63;
          }

LABEL_61:
          v11 = v42;
          goto LABEL_14;
        }

        if (v18 >> 32 < v18)
        {
          goto LABEL_70;
        }

        sub_22956C148(v18, v17);
        v32 = sub_22A4DB24C();
        if (v32)
        {
          v34 = sub_22A4DB27C();
          if (__OFSUB__(v18, v34))
          {
            goto LABEL_73;
          }

          v32 += v18 - v34;
        }

LABEL_59:
        sub_22A4DB26C();
        v35 = v32;
        a1 = v38;
        a2 = v39;
        sub_229838464(v35, v38, v39, v46);
        sub_2295798D4(v18, v17);
        if (v46[0])
        {
          goto LABEL_63;
        }

        v8 = a3 + 56;
        goto LABEL_61;
      }

      if (v19 == 2)
      {
        v31 = *(v18 + 16);
        v30 = *(v18 + 24);
        sub_22956C148(v18, v17);
        v32 = sub_22A4DB24C();
        if (v32)
        {
          v33 = sub_22A4DB27C();
          if (__OFSUB__(v31, v33))
          {
            goto LABEL_72;
          }

          v32 += v31 - v33;
        }

        if (__OFSUB__(v30, v31))
        {
          goto LABEL_71;
        }

        goto LABEL_59;
      }

      *&v46[6] = 0;
      *v46 = 0;
      sub_22956C148(v18, v17);
      sub_229838464(v46, a1, a2, v45);
      sub_2295798D4(v18, v17);
      if (v45[0])
      {
        goto LABEL_63;
      }
    }

LABEL_14:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17 == 0xC000000000000000;
  }

  v22 = !v20 || v14 < 3;
  if ((v22 | v44))
  {
LABEL_37:
    v23 = 0;
    if (v14 <= 1)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

LABEL_63:
  result = 1;
LABEL_65:
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22956F33C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0]), v9 = sub_22A4DD4EC(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_22953E0F8(&qword_281403870, MEMORY[0x277CC95F0]);
      v17 = sub_22A4DD58C();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_22956F568(uint64_t result, void *a2, char a3)
{
  v3 = *(result + OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegate);
  if (v3)
  {
    v6 = result;
    v7 = *(result + OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegate);
    swift_unknownObjectRetain();
    [a2 stateNumber];
    v8 = sub_22A4DDBDC();
    [v3 accessoryServerBrowser:v6 didFindAccessoryServer:a2 stateChanged:a3 & 1 stateNumber:v8];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22956F61C(char *a1, char *a2)
{
  v4 = sub_22A4DD26C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DD29C();
  v31 = *(v9 - 8);
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&a1[OBJC_IVAR____TtC13HomeKitDaemon19DemoAccessoryServer_browser];
  *&a1[OBJC_IVAR____TtC13HomeKitDaemon19DemoAccessoryServer_browser] = 0;

  v14 = OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_discoveredAccessoryServers;
  swift_beginAccess();
  v15 = *&a2[v14];

  v16 = sub_22956EABC(a1, v15);

  if (v16)
  {
    v30 = v9;
    swift_beginAccess();
    v18 = sub_229578A9C(a1);
    swift_endAccess();

    v19 = *&a2[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegateQueue];
    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    *(v20 + 24) = a1;
    if (v19)
    {
      v21 = swift_allocObject();
      *(v21 + 16) = sub_229578C34;
      *(v21 + 24) = v20;
      aBlock[4] = sub_22957A47C;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22953E640;
      aBlock[3] = &block_descriptor_23;
      v29 = _Block_copy(aBlock);
      v22 = v19;
      v23 = a2;
      v24 = a1;

      sub_22A4DD28C();
      v32 = MEMORY[0x277D84F90];
      sub_22953E0F8(&qword_281401CF0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
      sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
      sub_22A4DE03C();
      v25 = v29;
      MEMORY[0x22AAD0F80](0, v12, v8, v29);
      _Block_release(v25);

      (*(v5 + 8))(v8, v4);
      (*(v31 + 8))(v12, v30);
    }

    else
    {
      v26 = a2;
      v27 = a1;
    }
  }

  return result;
}

uint64_t sub_22956F9DC()
{
  v1 = sub_22A4DD26C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22A4DD29C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v0 workQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  if (v11)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_2295704E0;
    *(v13 + 24) = v12;
    aBlock[4] = sub_2295704E8;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22953E640;
    aBlock[3] = &block_descriptor_0;
    v20 = _Block_copy(aBlock);
    v21 = v7;
    v14 = v0;
    v15 = v11;

    sub_22A4DD28C();
    v22 = MEMORY[0x277D84F90];
    sub_22953E0F8(&qword_281401CF0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
    v19 = v6;
    sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
    sub_22A4DE03C();
    v16 = v20;
    MEMORY[0x22AAD0F80](0, v10, v5, v20);
    _Block_release(v16);

    (*(v2 + 8))(v5, v1);
    (*(v21 + 8))(v10, v19);
  }

  else
  {
    v18 = v0;
  }
}

uint64_t sub_22956FD3C(char *a1)
{
  v47 = sub_22A4DD26C();
  v2 = *(v47 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22A4DD29C();
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_discoveredAccessoryServers;
  swift_beginAccess();
  v39 = v8;
  v38 = *&a1[v8];
  if ((v38 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_22A4DE09C();
    type metadata accessor for DemoAccessoryServer();
    sub_22953E0F8(&qword_27D87CEB0, type metadata accessor for DemoAccessoryServer);
    result = sub_22A4DDBAC();
    v10 = v54[7];
    v51 = v54[8];
    v12 = v54[9];
    v11 = v54[10];
    v13 = v54[11];
  }

  else
  {
    v14 = -1 << *(v38 + 32);
    v15 = *(v38 + 56);
    v51 = v38 + 56;
    v12 = ~v14;
    v16 = -v14;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v13 = v17 & v15;
    v10 = v38;
    result = swift_bridgeObjectRetain_n();
    v11 = 0;
  }

  v37[1] = v12;
  v18 = (v12 + 64) >> 6;
  v42 = v54;
  v41 = (v2 + 8);
  v40 = (v5 + 8);
  v43 = v18;
  if ((v10 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  v32 = sub_22A4DE12C();
  if (v32 && (v52 = v32, type metadata accessor for DemoAccessoryServer(), swift_dynamicCast(), v31 = aBlock[0], v29 = v11, v30 = v13, aBlock[0]))
  {
    while (1)
    {
      v33 = [a1 workQueue];
      v34 = swift_allocObject();
      *(v34 + 16) = v31;
      *(v34 + 24) = a1;
      if (v33)
      {
        v19 = swift_allocObject();
        *(v19 + 16) = sub_229570510;
        *(v19 + 24) = v34;
        v54[2] = sub_22957A47C;
        v54[3] = v19;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v54[0] = sub_22953E640;
        v54[1] = &block_descriptor_13;
        v48 = _Block_copy(aBlock);
        v50 = v31;
        v20 = a1;
        v21 = v33;

        v22 = v44;
        sub_22A4DD28C();
        v52 = MEMORY[0x277D84F90];
        sub_22953E0F8(&qword_281401CF0, MEMORY[0x277D85198]);
        v49 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
        sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
        v23 = v46;
        v24 = v47;
        sub_22A4DE03C();
        v25 = v48;
        MEMORY[0x22AAD0F80](0, v22, v23, v48);
        _Block_release(v25);

        (*v41)(v23, v24);
        v26 = v22;
        v18 = v43;
        (*v40)(v26, v45);

        v11 = v29;
        v13 = v49;
        if (v10 < 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v35 = a1;

        v11 = v29;
        v13 = v30;
        if (v10 < 0)
        {
          goto LABEL_16;
        }
      }

LABEL_10:
      v27 = v11;
      v28 = v13;
      v29 = v11;
      if (!v13)
      {
        break;
      }

LABEL_14:
      v30 = (v28 - 1) & v28;
      v31 = *(*(v10 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
      if (!v31)
      {
        goto LABEL_21;
      }
    }

    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= v18)
      {
        goto LABEL_21;
      }

      v28 = *(v51 + 8 * v29);
      ++v27;
      if (v28)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    sub_22953EE84();

    v36 = *&a1[v39];
    *&a1[v39] = MEMORY[0x277D84FA0];
  }

  return result;
}

id sub_22957033C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegate] = 0;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_delegateQueue] = 0;
  v1[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_browsing] = 0;
  *&v1[OBJC_IVAR____TtC13HomeKitDaemon26DemoAccessoryServerBrowser_discoveredAccessoryServers] = MEMORY[0x277D84FA0];
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithQueue_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_229570410()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2295704E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22957053C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22A4DE0FC();

    if (v9)
    {

      type metadata accessor for DemoAccessoryServer();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_22A4DE0EC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_229572298(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_229574598(v22 + 1, &unk_27D87CEB8, &qword_22A577D30);
    }

    v20 = v8;
    sub_229574968(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for DemoAccessoryServer();
  v11 = *(v6 + 40);
  v12 = sub_22A4DDECC();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_2295749EC(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_22A4DDEDC();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_229570788(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22A4DE77C();
  sub_22A4DD6BC();
  v9 = sub_22A4DE7BC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_22A4DE60C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_229574D0C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2295708D8(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v4 = type metadata accessor for HomeDeviceEntity();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0]);
  sub_22A4DD4FC();
  v11 = sub_22A4DE7BC();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v5 + 72);
    while (1)
    {
      sub_229579FEC(*(v9 + 48) + v15 * v13, v8, type metadata accessor for HomeDeviceEntity);
      v16 = sub_22A4DB78C();
      sub_22957A054(v8, type metadata accessor for HomeDeviceEntity);
      if (v16)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_22957A054(a2, type metadata accessor for HomeDeviceEntity);
    sub_229579FEC(*(v9 + 48) + v15 * v13, v24, type metadata accessor for HomeDeviceEntity);
    return 0;
  }

  else
  {
LABEL_5:
    v17 = v23;
    v18 = *v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_229579FEC(a2, v8, type metadata accessor for HomeDeviceEntity);
    v25 = *v17;
    sub_229574E8C(v8, v13, isUniquelyReferenced_nonNull_native);
    v20 = v24;
    *v17 = v25;
    sub_22957A0B4(a2, v20, type metadata accessor for HomeDeviceEntity);
    return 1;
  }
}

uint64_t sub_229570B40(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v4 = type metadata accessor for HomeGroupEntity();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_22A4DE77C();
  v27 = v4;
  v11 = *(v4 + 20);
  sub_22A4DB7DC();
  sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0]);
  v28 = a2;
  sub_22A4DD4FC();
  v12 = sub_22A4DE7BC();
  v13 = -1 << *(v9 + 32);
  v14 = v12 & ~v13;
  if ((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v5 + 72);
    while (1)
    {
      sub_229579FEC(*(v9 + 48) + v16 * v14, v8, type metadata accessor for HomeGroupEntity);
      v17 = &v8[*(v27 + 20)];
      v18 = sub_22A4DB78C();
      sub_22957A054(v8, type metadata accessor for HomeGroupEntity);
      if (v18)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_22957A054(v28, type metadata accessor for HomeGroupEntity);
    sub_229579FEC(*(v9 + 48) + v16 * v14, v26, type metadata accessor for HomeGroupEntity);
    return 0;
  }

  else
  {
LABEL_5:
    v19 = v25;
    v20 = *v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v28;
    sub_229579FEC(v28, v8, type metadata accessor for HomeGroupEntity);
    v29 = *v19;
    sub_22957513C(v8, v14, isUniquelyReferenced_nonNull_native);
    *v19 = v29;
    sub_22957A0B4(v22, v26, type metadata accessor for HomeGroupEntity);
    return 1;
  }
}

uint64_t sub_229570E2C(_BYTE *a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(uint64_t, unint64_t, uint64_t))
{
  v6 = v4;
  v8 = *v4;
  v9 = *(*v4 + 40);
  sub_22A4DE77C();
  a3(a2);
  sub_22A4DD6BC();

  v10 = sub_22A4DE7BC();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = (a3)(*(*(v8 + 48) + v12));
      v16 = v15;
      if (v14 == (a3)(a2) && v16 == v17)
      {
        break;
      }

      v19 = sub_22A4DE60C();

      if (v19)
      {
        goto LABEL_11;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v8 + 48) + v12);
  }

  else
  {
LABEL_9:
    v20 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v6;
    a4(a2, v12, isUniquelyReferenced_nonNull_native);
    *v6 = v25;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_229570FD0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_22A4DE0FC();

    if (v8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF98, &qword_22A577DB0);
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = sub_22A4DE0EC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_2295726BC(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_229573748(v19 + 1);
    }

    sub_2295747B8(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF98, &qword_22A577DB0);
  v10 = *(v6 + 40);
  v11 = sub_22A4DD4EC();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_229575848(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (sub_22A4DD58C())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_229571224(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_22A4DE77C();
  sub_22A4DB63C();
  v8 = sub_22A4DE7BC();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_62:
    v36 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v53 = *v43;
    sub_22956C148(a2, a3);
    sub_2295759EC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v43 = *v53;
    *a1 = a2;
    a1[1] = a3;
    result = 1;
    goto LABEL_64;
  }

  v12 = ~v10;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v51 = v14;
  v15 = a3 >> 62;
  v16 = __OFSUB__(HIDWORD(a2), a2);
  v48 = v16;
  v47 = a3;
  v49 = v12;
  v50 = BYTE6(a3);
  v45 = v6 + 56;
  v46 = v6;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == 0xC000000000000000;
      }

      v23 = !v21 || v15 < 3;
      if (((v23 | v51) & 1) == 0)
      {
        v39 = 0;
        v40 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v24 = 0;
      if (v15 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_66;
      }

      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_67;
      }

      v24 = v24;
      if (v15 <= 1)
      {
LABEL_33:
        v28 = v50;
        if (v15)
        {
          v28 = HIDWORD(a2) - a2;
          if (v48)
          {
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v15 != 2)
    {
      if (!v24)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v30 = *(a2 + 16);
    v29 = *(a2 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_65;
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_61;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        *v53 = v19;
        *&v53[8] = v18;
        v53[10] = BYTE2(v18);
        v53[11] = BYTE3(v18);
        v53[12] = BYTE4(v18);
        v53[13] = BYTE5(v18);
        sub_22956C148(v19, v18);
        v12 = v49;
        goto LABEL_60;
      }

      if (v19 >> 32 < v19)
      {
        goto LABEL_68;
      }

      sub_22956C148(v19, v18);
      v33 = sub_22A4DB24C();
      if (v33)
      {
        v35 = sub_22A4DB27C();
        if (__OFSUB__(v19, v35))
        {
          goto LABEL_71;
        }

        v33 += v19 - v35;
      }

      goto LABEL_57;
    }

    if (v20 != 2)
    {
      break;
    }

    v32 = *(v19 + 16);
    v31 = *(v19 + 24);
    sub_22956C148(v19, v18);
    v33 = sub_22A4DB24C();
    if (v33)
    {
      v34 = sub_22A4DB27C();
      if (__OFSUB__(v32, v34))
      {
        goto LABEL_70;
      }

      v33 += v32 - v34;
    }

    if (__OFSUB__(v31, v32))
    {
      goto LABEL_69;
    }

LABEL_57:
    sub_22A4DB26C();
    a3 = v47;
    sub_229838464(v33, a2, v47, v53);
    sub_2295798D4(v19, v18);
    v9 = v45;
    v6 = v46;
    v12 = v49;
    if (v53[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v53[6] = 0;
  *v53 = 0;
  sub_22956C148(v19, v18);
LABEL_60:
  sub_229838464(v53, a2, a3, &v52);
  sub_2295798D4(v19, v18);
  if (!v52)
  {
    goto LABEL_13;
  }

LABEL_61:
  v39 = a2;
  v40 = a3;
LABEL_63:
  sub_2295798D4(v39, v40);
  v41 = *(*(v6 + 48) + 16 * v11);
  *a1 = v41;
  sub_22956C148(v41, *(&v41 + 1));
  result = 0;
LABEL_64:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2295716AC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22A4DCCAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22953E0F8(&qword_27D87CF18, MEMORY[0x277D173F0]);
  v36 = a2;
  v13 = sub_22A4DD4EC();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_22953E0F8(&qword_27D87CF20, MEMORY[0x277D173F0]);
      v23 = sub_22A4DD58C();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_229575E64(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_22957198C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_22A4DD4EC();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_22953E0F8(&qword_281403870, MEMORY[0x277CC95F0]);
      v23 = sub_22A4DD58C();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_22957612C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_229571C90(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_22A4DE0FC();

    if (v8)
    {

      type metadata accessor for AssertionHandle.Assertion(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
    }

    else
    {
      result = sub_22A4DE0EC();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v20 = sub_2295728C8(v7, result + 1);
        v21 = *(v20 + 16);
        if (*(v20 + 24) <= v21)
        {
          sub_2295742DC(v21 + 1);
        }

        sub_229574870(v22, v20);

        *v3 = v20;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v10 = *(v6 + 40);
    sub_22A4DE77C();
    sub_22A4DB7DC();
    sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0]);
    sub_22A4DD4FC();
    v11 = sub_22A4DE7BC();
    v12 = -1 << *(v6 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v14 = ~v12;
      while (1)
      {
        v15 = *(*(v6 + 48) + 8 * v13);

        v16 = sub_22A4DB78C();

        if (v16)
        {
          break;
        }

        v13 = (v13 + 1) & v14;
        if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v13);

      return 0;
    }

    else
    {
LABEL_11:
      v17 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *v3;

      sub_2295763F4(v19, v13, isUniquelyReferenced_nonNull_native);
      *v3 = v25;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_229572024(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_22A4DE0FC();

    if (v17)
    {

      sub_229562F68(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_22A4DE0EC();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_2295724BC(v15, result + 1, a5, a6, a3, a4);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_229574598(v30 + 1, a5, a6);
        }

        v31 = v16;
        sub_229574968(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_229562F68(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_22A4DDECC();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_22A4DDEDC();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_229574B7C(v28, v22, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_229572298(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEB8, &qword_22A577D30);
    v2 = sub_22A4DE1BC();
    v16 = v2;
    sub_22A4DE09C();
    if (sub_22A4DE12C())
    {
      type metadata accessor for DemoAccessoryServer();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_229574598(v10 + 1, &unk_27D87CEB8, &qword_22A577D30);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_22A4DDECC();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_22A4DE12C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2295724BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_22A4DE1BC();
    v24 = v10;
    sub_22A4DE09C();
    if (sub_22A4DE12C())
    {
      sub_229562F68(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_229574598(v18 + 1, a3, a4);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_22A4DDECC();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_22A4DE12C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_2295726BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CFA0, &qword_22A577DB8);
    v2 = sub_22A4DE1BC();
    v16 = v2;
    sub_22A4DE09C();
    for (; sub_22A4DE12C(); ++*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF98, &qword_22A577DB0);
      swift_dynamicCast();
      v10 = *(v2 + 16);
      if (*(v2 + 24) <= v10)
      {
        sub_229573748(v10 + 1);
        v2 = v16;
      }

      v3 = *(v2 + 40);
      result = sub_22A4DD4EC();
      v5 = v2 + 56;
      v6 = -1 << *(v2 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6))) != 0)
      {
        v9 = __clz(__rbit64((-1 << v7) & ~*(v2 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = 0;
        v12 = (63 - v6) >> 6;
        do
        {
          if (++v8 == v12 && (v11 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v13 = v8 == v12;
          if (v8 == v12)
          {
            v8 = 0;
          }

          v11 |= v13;
          v14 = *(v5 + 8 * v8);
        }

        while (v14 == -1);
        v9 = __clz(__rbit64(~v14)) + (v8 << 6);
      }

      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v2 + 48) + 8 * v9) = v15;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2295728C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF10, &qword_22A577D58);
    v2 = sub_22A4DE1BC();
    v16 = v2;
    sub_22A4DE09C();
    if (sub_22A4DE12C())
    {
      type metadata accessor for AssertionHandle.Assertion(0);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_2295742DC(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        sub_22A4DE77C();
        sub_22A4DB7DC();
        sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0]);
        sub_22A4DD4FC();
        result = sub_22A4DE7BC();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_22A4DE12C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_229572BC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CED8, &qword_22A57C0E0);
  result = sub_22A4DE1AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_22A4DE77C();
      sub_22A4DD6BC();
      result = sub_22A4DE7BC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_229572E24(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomeDeviceEntity();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CFA8, &qword_22A577DC0);
  result = sub_22A4DE1AC();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v35 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v36 + 72);
      sub_22957A0B4(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for HomeDeviceEntity);
      v25 = *(v11 + 40);
      sub_22A4DE77C();
      sub_22A4DB7DC();
      sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0]);
      sub_22A4DD4FC();
      result = sub_22A4DE7BC();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_22957A0B4(v7, *(v11 + 48) + v19 * v24, type metadata accessor for HomeDeviceEntity);
      ++*(v11 + 16);
      v8 = v35;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v8 + 32);
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    v2 = v34;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_229573178(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomeGroupEntity();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CFB8, &qword_22A577DD0);
  result = sub_22A4DE1AC();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v38 + 72);
      sub_22957A0B4(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for HomeGroupEntity);
      v25 = *(v11 + 40);
      sub_22A4DE77C();
      v26 = *(v39 + 20);
      sub_22A4DB7DC();
      sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0]);
      sub_22A4DD4FC();
      result = sub_22A4DE7BC();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_22957A0B4(v7, *(v11 + 48) + v19 * v24, type metadata accessor for HomeGroupEntity);
      ++*(v11 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_2295734D8(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v7 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22A4DE1AC();
  v9 = result;
  if (*(v6 + 16))
  {
    v31 = v5;
    v10 = 0;
    v11 = (v6 + 56);
    v12 = 1 << *(v6 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v6 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = *(*(v6 + 48) + (v18 | (v10 << 6)));
      v22 = *(v9 + 40);
      sub_22A4DE77C();
      a4(v21);
      sub_22A4DD6BC();

      result = sub_22A4DE7BC();
      v23 = -1 << *(v9 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero((v6 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v30;
    }

    v5 = v31;
    *(v6 + 16) = 0;
  }

  *v5 = v9;
  return result;
}

uint64_t sub_229573748(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CFA0, &qword_22A577DB8);
  result = sub_22A4DE1AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF98, &qword_22A577DB0);
      result = sub_22A4DD4EC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2295739B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CFD0, &unk_22A57C090);
  result = sub_22A4DE1AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_22A4DE77C();
      sub_22A4DB63C();
      result = sub_22A4DE7BC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_229573C10(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22A4DCCAC();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CF28, &qword_22A577D60);
  result = sub_22A4DE1AC();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_22953E0F8(&qword_27D87CF18, MEMORY[0x277D173F0]);
      result = sub_22A4DD4EC();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_229573F6C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_22A4DB7DC();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF40, &qword_22A577D70);
  result = sub_22A4DE1AC();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0]);
      result = sub_22A4DD4EC();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_2295742DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CF10, &qword_22A577D58);
  result = sub_22A4DE1AC();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_22A4DE77C();
      sub_22A4DB7DC();
      sub_22953E0F8(&qword_281403880, MEMORY[0x277CC95F0]);
      sub_22A4DD4FC();
      result = sub_22A4DE7BC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_229574598(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22A4DE1AC();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_22A4DDECC();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}