uint64_t sub_21BD4DBDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = sub_21BE28DAC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_21BC54908(0, 0, v4, &unk_21BE462A8, v6);
}

uint64_t sub_21BD4DCE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BD4DF2C();
}

uint64_t sub_21BD4DD70()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BD4DCE0();
}

uint64_t sub_21BD4DF2C()
{
  v1[12] = v0;
  v2 = sub_21BE26A4C();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v7 = sub_21BE25B9C();
  v1[20] = v7;
  v8 = *(v7 - 8);
  v1[21] = v8;
  v1[22] = *(v8 + 64);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD4E0E4, 0, 0);
}

uint64_t sub_21BD4E0E4()
{
  v79 = v0;
  v1 = *(v0[12] + OBJC_IVAR___FACacheImageMarqueeOperation_familyCircle);
  if (!v1)
  {
    v3 = v0[15];
    sub_21BE2614C();
    v4 = sub_21BE26A2C();
    v5 = sub_21BE28FFC();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[13];
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v78[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_21BB3D81C(0xD000000000000014, 0x800000021BE5FA10, v78);
      _os_log_impl(&dword_21BB35000, v4, v5, "%s No family, cleaning up marquee files", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x21CF05C50](v11, -1, -1);
      MEMORY[0x21CF05C50](v10, -1, -1);
    }

    (*(v8 + 8))(v7, v9);
    v12 = v0[12];
    sub_21BD4CE9C();
    goto LABEL_18;
  }

  v2 = v1;
  FAFamilyCircle.rowStatusForFamily()();
  if (LOBYTE(v78[0]) <= 1u && !LOBYTE(v78[0]))
  {

LABEL_10:
    v14 = v0[16];
    sub_21BE2614C();
    v15 = sub_21BE26A2C();
    v16 = sub_21BE28FFC();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[16];
    v19 = v0[13];
    v20 = v0[14];
    if (v17)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v78[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_21BB3D81C(0xD000000000000014, 0x800000021BE5FA10, v78);
      _os_log_impl(&dword_21BB35000, v15, v16, "%s Family row hidden, cleaning up marquee files", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x21CF05C50](v22, -1, -1);
      MEMORY[0x21CF05C50](v21, -1, -1);
    }

    (*(v20 + 8))(v18, v19);
    v23 = v0[12];
    sub_21BD4CE9C();

    goto LABEL_18;
  }

  v13 = sub_21BE2995C();

  if (v13)
  {
    goto LABEL_10;
  }

  v24 = v0[20];
  v25 = v0[21];
  v26 = v0[19];
  sub_21BBA3854(v0[12] + OBJC_IVAR___FACacheImageMarqueeOperation_rootURL, v26, &unk_27CDB57F0, &qword_21BE328A0);
  if ((*(v25 + 48))(v26, 1, v24) != 1)
  {
    v46 = v0[23];
    v45 = v0[24];
    v47 = v0[21];
    v68 = v46;
    v70 = v0[22];
    v48 = v0[20];
    v49 = v0[18];
    v73 = v45;
    v50 = v0[12];
    v77 = *(v47 + 32);
    v67 = v48;
    v77(v45, v0[19], v48);
    v75 = sub_21BD4C698();
    v51 = sub_21BE28DAC();
    (*(*(v51 - 8) + 56))(v49, 1, 1, v51);
    (*(v47 + 16))(v46, v45, v48);
    sub_21BE28D7C();
    v52 = v2;
    v53 = v50;
    v54 = sub_21BE28D6C();
    v55 = (*(v47 + 80) + 40) & ~*(v47 + 80);
    v56 = (v70 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    v58 = MEMORY[0x277D85700];
    *(v57 + 2) = v54;
    *(v57 + 3) = v58;
    *(v57 + 4) = v53;
    v77(&v57[v55], v68, v67);
    *&v57[v56] = v52;
    *&v57[(v56 + 15) & 0xFFFFFFFFFFFFFFF8] = v75;
    sub_21BC54908(0, 0, v49, &unk_21BE462E8, v57);

    (*(v47 + 8))(v73, v67);
LABEL_18:
    v60 = v0[23];
    v59 = v0[24];
    v62 = v0[18];
    v61 = v0[19];
    v64 = v0[16];
    v63 = v0[17];
    v65 = v0[15];

    v44 = v0[1];
    goto LABEL_19;
  }

  v27 = v0[17];
  sub_21BB3A4CC(v0[19], &unk_27CDB57F0, &qword_21BE328A0);
  sub_21BE2614C();
  v28 = sub_21BE26A2C();
  v29 = sub_21BE28FFC();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v0[17];
  v32 = v0[13];
  v33 = v0[14];
  if (v30)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v78[0] = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_21BB3D81C(0xD000000000000014, 0x800000021BE5FA10, v78);
    _os_log_impl(&dword_21BB35000, v28, v29, "%s Root url is missing", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x21CF05C50](v35, -1, -1);
    MEMORY[0x21CF05C50](v34, -1, -1);
  }

  (*(v33 + 8))(v31, v32);
  v36 = v0[23];
  v37 = v0[24];
  v69 = v0[19];
  v71 = v0[18];
  v72 = v0[16];
  v74 = v0[17];
  v76 = v0[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57B8, &qword_21BE32840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  v39 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_21BE28A0C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v40;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x800000021BE5FA30;
  sub_21BBB52D8(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57D8, &qword_21BE32860);
  v41 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v42 = sub_21BE289CC();
  v43 = sub_21BE288EC();

  [v41 initWithDomain:v42 code:-1 userInfo:v43];

  swift_willThrow();

  v44 = v0[1];
LABEL_19:

  return v44();
}

uint64_t sub_21BD4E904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v8 = sub_21BE26A4C();
  v7[24] = v8;
  v9 = *(v8 - 8);
  v7[25] = v9;
  v10 = *(v9 + 64) + 15;
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v11 = sub_21BE25B9C();
  v7[29] = v11;
  v12 = *(v11 - 8);
  v7[30] = v12;
  v13 = *(v12 + 64) + 15;
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v14 = sub_21BE25D6C();
  v7[35] = v14;
  v15 = *(v14 - 8);
  v7[36] = v15;
  v16 = *(v15 + 64) + 15;
  v7[37] = swift_task_alloc();
  sub_21BE28D7C();
  v7[38] = sub_21BE28D6C();
  v18 = sub_21BE28D0C();
  v7[39] = v18;
  v7[40] = v17;

  return MEMORY[0x2822009F8](sub_21BD4EAF0, v18, v17);
}

uint64_t sub_21BD4EAF0()
{
  v121 = v0;
  v1 = *(v0[20] + OBJC_IVAR___FACacheImageMarqueeOperation_pictureStore);
  v0[41] = v1;
  if (v1)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_21BD4F674;
    v2 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC820, &unk_21BE4B450);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21BD9CFA0;
    v0[13] = &block_descriptor_43;
    v0[14] = v2;
    [v1 fetchProfileImagesWithCompletion_];
    v3 = (v0 + 2);

    return MEMORY[0x282200938](v3);
  }

  v4 = v0[38];

  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[35];
  v8 = v0[20];
  sub_21BE25D5C();
  v9 = sub_21BE25D2C();
  v11 = v10;
  (*(v6 + 8))(v5, v7);
  v119 = v9;
  v120 = v11;
  v3 = MEMORY[0x21CF03CA0](64, 0xE100000000000000);
  v12 = *(v8 + OBJC_IVAR___FACacheImageMarqueeOperation_deviceScale);
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    return MEMORY[0x282200938](v3);
  }

  v13 = v0[34];
  v114 = v0[33];
  v14 = v0[20];
  v15 = v0[21];
  v0[19] = v12;
  v16 = sub_21BE2992C();
  MEMORY[0x21CF03CA0](v16);

  MEMORY[0x21CF03CA0](11896, 0xE200000000000000);
  MEMORY[0x21CF03CA0](*(v14 + OBJC_IVAR___FACacheImageMarqueeOperation_imageExtension), *(v14 + OBJC_IVAR___FACacheImageMarqueeOperation_imageExtension + 8));
  v18 = v119;
  v17 = v120;
  sub_21BE264AC();
  sub_21BE2647C();
  MEMORY[0x21CF03CA0](45, 0xE100000000000000);
  MEMORY[0x21CF03CA0](v119, v120);
  sub_21BE25B3C();

  v19 = sub_21BD4BE18(0);
  v21 = v20;
  v119 = sub_21BE2646C();
  v120 = v22;
  MEMORY[0x21CF03CA0](45, 0xE100000000000000);
  MEMORY[0x21CF03CA0](v18, v17);

  sub_21BE25B3C();

  v23 = sub_21BD4BE18(1);
  v25 = v24;
  v117 = v19;
  v118 = v21;
  if (v21 >> 60 != 15)
  {
    v26 = v0[34];
    sub_21BBBEE74(v19, v21);
    sub_21BE25C0C();
    sub_21BBBF0B4(v19, v21);
  }

  if (v25 >> 60 != 15)
  {
    v27 = v0[33];
    sub_21BBBEE74(v23, v25);
    sub_21BE25C0C();
    sub_21BBBF0B4(v23, v25);
  }

  v111 = v23;
  v112 = v25;
  v28 = v0[34];
  v29 = v0[32];
  v30 = v0[29];
  v31 = v0[30];
  v32 = v0[28];
  sub_21BE2614C();
  v108 = *(v31 + 16);
  v108(v29, v28, v30);
  v33 = sub_21BE26A2C();
  v34 = sub_21BE28FBC();
  v35 = os_log_type_enabled(v33, v34);
  v36 = v0[32];
  v37 = v0[30];
  v115 = v0[29];
  v38 = v0[28];
  v39 = v0[24];
  v40 = v0[25];
  if (v35)
  {
    v106 = v0[24];
    v41 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v119 = v103;
    *v41 = 136315394;
    v104 = v38;
    v42 = sub_21BE2647C();
    v44 = sub_21BB3D81C(v42, v43, &v119);

    *(v41 + 4) = v44;
    *(v41 + 12) = 2080;
    v45 = sub_21BE25AFC();
    v47 = v46;
    v48 = v115;
    v116 = *(v37 + 8);
    v116(v36, v48);
    v49 = sub_21BB3D81C(v45, v47, &v119);

    *(v41 + 14) = v49;
    _os_log_impl(&dword_21BB35000, v33, v34, "Saving light mode image with key: %s url: %s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v103, -1, -1);
    MEMORY[0x21CF05C50](v41, -1, -1);

    v50 = *(v40 + 8);
    v50(v104, v106);
  }

  else
  {

    v51 = v115;
    v116 = *(v37 + 8);
    v116(v36, v51);
    v50 = *(v40 + 8);
    v50(v38, v39);
  }

  v52 = v0[33];
  v53 = v0[31];
  v54 = v0[29];
  v55 = v0[27];
  sub_21BE2614C();
  v108(v53, v52, v54);
  v56 = sub_21BE26A2C();
  v57 = sub_21BE28FBC();
  v58 = os_log_type_enabled(v56, v57);
  v60 = v0[30];
  v59 = v0[31];
  v61 = v0[29];
  v62 = v0[27];
  v63 = v0[24];
  v64 = v0[25];
  if (v58)
  {
    v109 = v50;
    v65 = swift_slowAlloc();
    v107 = v63;
    v66 = swift_slowAlloc();
    v119 = v66;
    *v65 = 136315394;
    v105 = v62;
    v67 = sub_21BE2646C();
    v69 = sub_21BB3D81C(v67, v68, &v119);

    *(v65 + 4) = v69;
    *(v65 + 12) = 2080;
    v70 = sub_21BE25AFC();
    v72 = v71;
    v116(v59, v61);
    v73 = sub_21BB3D81C(v70, v72, &v119);

    *(v65 + 14) = v73;
    _os_log_impl(&dword_21BB35000, v56, v57, "Saving dark mode image with key: %s url: %s", v65, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v66, -1, -1);
    MEMORY[0x21CF05C50](v65, -1, -1);

    v109(v105, v107);
  }

  else
  {

    v116(v59, v61);
    v50(v62, v63);
  }

  v74 = v0[34];
  v75 = *(v0[20] + OBJC_IVAR___FACacheImageMarqueeOperation_userDefaults);
  sub_21BE25AFC();
  v76 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v77 = sub_21BE289CC();

  v78 = [v76 initWithString_];

  v79 = [v78 stringByExpandingTildeInPath];
  if (!v79)
  {
    sub_21BE28A0C();
    v79 = sub_21BE289CC();
  }

  v80 = v0[33];
  sub_21BE2647C();
  v81 = sub_21BE289CC();

  [v75 setObject:v79 forKey:v81];

  sub_21BE25AFC();
  v82 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v83 = sub_21BE289CC();

  v84 = [v82 initWithString_];

  v85 = [v84 stringByExpandingTildeInPath];
  if (!v85)
  {
    sub_21BE28A0C();
    v85 = sub_21BE289CC();
  }

  v86 = v0[22];
  v87 = v0[23];
  sub_21BE2646C();
  v88 = sub_21BE289CC();

  [v75 setObject:v85 forKey:v88];

  sub_21BD50A68(v86, v75);
  [v75 synchronize];
  v89 = *(v87 + 16);
  if (v89)
  {
    v90 = v0[30];
    v91 = v0[23] + ((*(v90 + 80) + 32) & ~*(v90 + 80));
    v92 = *(v90 + 72);
    do
    {
      sub_21BD4D13C(v91, v0[20]);
      v91 += v92;
      --v89;
    }

    while (v89);
  }

  v93 = v0[37];
  v95 = v0[33];
  v94 = v0[34];
  v97 = v0[31];
  v96 = v0[32];
  v99 = v0[29];
  v98 = v0[30];
  v100 = v0[28];
  v110 = v0[27];
  v113 = v0[26];
  [objc_opt_self() broadcastFamilyMarqueeChangedNotification];
  sub_21BBBF0B4(v111, v112);
  sub_21BBBF0B4(v117, v118);
  v116(v95, v99);
  v116(v94, v99);

  v101 = v0[1];

  return v101();
}

uint64_t sub_21BD4F674()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 336) = v3;
  v4 = *(v1 + 320);
  v5 = *(v1 + 312);
  if (v3)
  {
    v6 = sub_21BD5022C;
  }

  else
  {
    v6 = sub_21BD4F7A4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BD4F7A4()
{
  v120 = v0;
  v1 = v0[41];
  v2 = v0[38];

  v3 = v0[18];

  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];
  v7 = v0[20];
  sub_21BE25D5C();
  v8 = sub_21BE25D2C();
  v10 = v9;
  (*(v5 + 8))(v4, v6);
  v118 = v8;
  v119 = v10;
  result = MEMORY[0x21CF03CA0](64, 0xE100000000000000);
  v12 = *(v7 + OBJC_IVAR___FACacheImageMarqueeOperation_deviceScale);
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v13 = v0[34];
  v113 = v0[33];
  v14 = v0[20];
  v15 = v0[21];
  v0[19] = v12;
  v16 = sub_21BE2992C();
  MEMORY[0x21CF03CA0](v16);

  MEMORY[0x21CF03CA0](11896, 0xE200000000000000);
  MEMORY[0x21CF03CA0](*(v14 + OBJC_IVAR___FACacheImageMarqueeOperation_imageExtension), *(v14 + OBJC_IVAR___FACacheImageMarqueeOperation_imageExtension + 8));
  v18 = v118;
  v17 = v119;
  sub_21BE264AC();
  sub_21BE2647C();
  MEMORY[0x21CF03CA0](45, 0xE100000000000000);
  MEMORY[0x21CF03CA0](v118, v119);
  sub_21BE25B3C();

  v19 = sub_21BD4BE18(0);
  v21 = v20;
  v118 = sub_21BE2646C();
  v119 = v22;
  MEMORY[0x21CF03CA0](45, 0xE100000000000000);
  MEMORY[0x21CF03CA0](v18, v17);

  sub_21BE25B3C();

  v23 = sub_21BD4BE18(1);
  v25 = v24;
  v116 = v19;
  v117 = v21;
  if (v21 >> 60 != 15)
  {
    v26 = v0[34];
    sub_21BBBEE74(v19, v21);
    sub_21BE25C0C();
    sub_21BBBF0B4(v19, v21);
  }

  if (v25 >> 60 != 15)
  {
    v27 = v0[33];
    sub_21BBBEE74(v23, v25);
    sub_21BE25C0C();
    sub_21BBBF0B4(v23, v25);
  }

  v110 = v23;
  v111 = v25;
  v28 = v0[34];
  v29 = v0[32];
  v30 = v0[29];
  v31 = v0[30];
  v32 = v0[28];
  sub_21BE2614C();
  v107 = *(v31 + 16);
  v107(v29, v28, v30);
  v33 = sub_21BE26A2C();
  v34 = sub_21BE28FBC();
  v35 = os_log_type_enabled(v33, v34);
  v36 = v0[32];
  v37 = v0[30];
  v114 = v0[29];
  v38 = v0[28];
  v39 = v0[24];
  v40 = v0[25];
  if (v35)
  {
    v105 = v0[24];
    v41 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v118 = v102;
    *v41 = 136315394;
    v103 = v38;
    v42 = sub_21BE2647C();
    v44 = sub_21BB3D81C(v42, v43, &v118);

    *(v41 + 4) = v44;
    *(v41 + 12) = 2080;
    v45 = sub_21BE25AFC();
    v47 = v46;
    v48 = v114;
    v115 = *(v37 + 8);
    v115(v36, v48);
    v49 = sub_21BB3D81C(v45, v47, &v118);

    *(v41 + 14) = v49;
    _os_log_impl(&dword_21BB35000, v33, v34, "Saving light mode image with key: %s url: %s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v102, -1, -1);
    MEMORY[0x21CF05C50](v41, -1, -1);

    v50 = *(v40 + 8);
    v50(v103, v105);
  }

  else
  {

    v51 = v114;
    v115 = *(v37 + 8);
    v115(v36, v51);
    v50 = *(v40 + 8);
    v50(v38, v39);
  }

  v52 = v0[33];
  v53 = v0[31];
  v54 = v0[29];
  v55 = v0[27];
  sub_21BE2614C();
  v107(v53, v52, v54);
  v56 = sub_21BE26A2C();
  v57 = sub_21BE28FBC();
  v58 = os_log_type_enabled(v56, v57);
  v60 = v0[30];
  v59 = v0[31];
  v61 = v0[29];
  v62 = v0[27];
  v63 = v0[24];
  v64 = v0[25];
  if (v58)
  {
    v108 = v50;
    v65 = swift_slowAlloc();
    v106 = v63;
    v66 = swift_slowAlloc();
    v118 = v66;
    *v65 = 136315394;
    v104 = v62;
    v67 = sub_21BE2646C();
    v69 = sub_21BB3D81C(v67, v68, &v118);

    *(v65 + 4) = v69;
    *(v65 + 12) = 2080;
    v70 = sub_21BE25AFC();
    v72 = v71;
    v115(v59, v61);
    v73 = sub_21BB3D81C(v70, v72, &v118);

    *(v65 + 14) = v73;
    _os_log_impl(&dword_21BB35000, v56, v57, "Saving dark mode image with key: %s url: %s", v65, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v66, -1, -1);
    MEMORY[0x21CF05C50](v65, -1, -1);

    v108(v104, v106);
  }

  else
  {

    v115(v59, v61);
    v50(v62, v63);
  }

  v74 = v0[34];
  v75 = *(v0[20] + OBJC_IVAR___FACacheImageMarqueeOperation_userDefaults);
  sub_21BE25AFC();
  v76 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v77 = sub_21BE289CC();

  v78 = [v76 initWithString_];

  v79 = [v78 stringByExpandingTildeInPath];
  if (!v79)
  {
    sub_21BE28A0C();
    v79 = sub_21BE289CC();
  }

  v80 = v0[33];
  sub_21BE2647C();
  v81 = sub_21BE289CC();

  [v75 setObject:v79 forKey:v81];

  sub_21BE25AFC();
  v82 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v83 = sub_21BE289CC();

  v84 = [v82 initWithString_];

  v85 = [v84 stringByExpandingTildeInPath];
  if (!v85)
  {
    sub_21BE28A0C();
    v85 = sub_21BE289CC();
  }

  v86 = v0[22];
  v87 = v0[23];
  sub_21BE2646C();
  v88 = sub_21BE289CC();

  [v75 setObject:v85 forKey:v88];

  sub_21BD50A68(v86, v75);
  [v75 synchronize];
  v89 = *(v87 + 16);
  if (v89)
  {
    v90 = v0[30];
    v91 = v0[23] + ((*(v90 + 80) + 32) & ~*(v90 + 80));
    v92 = *(v90 + 72);
    do
    {
      sub_21BD4D13C(v91, v0[20]);
      v91 += v92;
      --v89;
    }

    while (v89);
  }

  v93 = v0[37];
  v95 = v0[33];
  v94 = v0[34];
  v97 = v0[31];
  v96 = v0[32];
  v99 = v0[29];
  v98 = v0[30];
  v100 = v0[28];
  v109 = v0[27];
  v112 = v0[26];
  [objc_opt_self() broadcastFamilyMarqueeChangedNotification];
  sub_21BBBF0B4(v110, v111);
  sub_21BBBF0B4(v116, v117);
  v115(v95, v99);
  v115(v94, v99);

  v101 = v0[1];

  return v101();
}

uint64_t sub_21BD5022C()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[38];

  swift_willThrow();

  v4 = v0[42];
  v5 = v0[37];
  v7 = v0[33];
  v6 = v0[34];
  v9 = v0[31];
  v8 = v0[32];
  v11 = v0[27];
  v10 = v0[28];
  v12 = v0[26];

  v13 = v0[1];

  return v13();
}

uint64_t sub_21BD50480(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_21BD50528;

  return sub_21BD4DF2C();
}

uint64_t sub_21BD50528()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_21BE25A7C();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_21BD506AC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - v7;
  if (a1)
  {
    if (a1 == 2)
    {
      v9 = &unk_21BE462F8;
LABEL_8:
      v16 = sub_21BE28DAC();
      (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = v2;
      v18 = v2;
      sub_21BC54908(0, 0, v8, v9, v17);
    }

    if (a1 != 1)
    {
      result = sub_21BE2978C();
      __break(1u);
      return result;
    }

    sub_21BE264AC();
    v10 = sub_21BE2647C();
    v12 = sub_21BD4D5D4(v10, v11);

    if (!v12 || (v13 = sub_21BE2646C(), v15 = sub_21BD4D5D4(v13, v14), result = , !v15))
    {
      v9 = &unk_21BE462F0;
      goto LABEL_8;
    }
  }

  return result;
}

id FACacheImageMarqueeOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FACacheImageMarqueeOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FACacheImageMarqueeOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BD50A68(uint64_t a1, void *a2)
{
  v3 = sub_21BE25D1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21BB3A2A4(0, &qword_280BD8A28, 0x277CBEBD0);
  v24 = MEMORY[0x277D08080];
  v22[0] = a2;
  v8 = __swift_project_boxed_opaque_existential_1Tm(v22, v23);
  a2;
  FAFamilyCircle.rowStatusForFamily()();
  if (HIBYTE(v19) <= 1u)
  {
    v9 = 0xE600000000000000;
    if (HIBYTE(v19))
    {
      v10 = 0x796C696D6166;
    }

    else
    {
      v10 = 0x6E6564646968;
    }
  }

  else if (HIBYTE(v19) == 2)
  {
    v9 = 0xEA00000000006574;
    v10 = 0x69766E49746E6573;
  }

  else if (HIBYTE(v19) == 3)
  {
    v9 = 0xEE00657469766E49;
    v10 = 0x6465766965636572;
  }

  else
  {
    v9 = 0x800000021BE54640;
    v10 = 0xD000000000000013;
  }

  v21 = MEMORY[0x277D837D0];
  v20[0] = v10;
  v20[1] = v9;
  sub_21BE264AC();
  v11 = sub_21BE2648C();
  sub_21BBB95AC(v20, v11, v12);

  sub_21BB3A4CC(v20, &qword_27CDB5940, &unk_21BE32B10);
  sub_21BE25D0C();
  sub_21BE25C2C();
  v14 = v13;
  (*(v4 + 8))(v7, v3);
  v21 = MEMORY[0x277D839F8];
  v20[0] = v14;
  v15 = sub_21BE2649C();
  v16 = *v8;
  sub_21BBB95AC(v20, v15, v17);

  sub_21BB3A4CC(v20, &qword_27CDB5940, &unk_21BE32B10);
  return __swift_destroy_boxed_opaque_existential_0Tm(v22);
}

uint64_t sub_21BD50CFC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_21BE25B9C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_21BBB7EB8;

  return sub_21BD4E904(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_21BD50E40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BD4DCE0();
}

void sub_21BD50EFC()
{
  sub_21BBF088C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of FACacheImageMarqueeOperation.createAndCacheData()()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0xD0))();
}

{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xD8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return v6();
}

uint64_t sub_21BD51160()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBA6A64;

  return sub_21BD50480(v2, v3);
}

uint64_t Publisher<>.onValueChange(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v28 = a1;
  v29 = a2;
  v25 = a4;
  v6 = sub_21BE26B8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  swift_getWitnessTable();
  v11 = sub_21BE26BAC();
  v27 = *(v11 - 8);
  v12 = *(v27 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = sub_21BE2635C();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_21BE2634C();
  v19 = v26;
  sub_21BE26D0C();
  sub_21BE26CFC();
  (*(v7 + 8))(v10, v6);
  v20 = swift_allocObject();
  v21 = v25;
  v20[2] = a3;
  v20[3] = v21;
  v20[4] = v19;
  v20[5] = v18;
  v22 = v29;
  v20[6] = v28;
  v20[7] = v22;

  swift_getWitnessTable();
  v23 = sub_21BE26D1C();

  (*(v27 + 8))(v14, v11);
  return v23;
}

uint64_t Publisher<>.onAllValueChanges(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a1;
  v9 = sub_21BE26B8C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = sub_21BE2635C();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_21BE2634C();
  sub_21BE26D0C();
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = v17;
  v18[6] = v22;
  v18[7] = a2;

  swift_getWitnessTable();
  v19 = sub_21BE26D1C();

  (*(v10 + 8))(v13, v9);
  return v19;
}

uint64_t sub_21BD51674(int *a1, uint64_t a2, uint64_t a3)
{
  v8 = (a1 + *a1);
  v5 = a1[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21BBA6A64;

  return v8(a3);
}

uint64_t sub_21BD5176C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a2;
  v23 = a7;
  v24 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v22 - v17;
  (*(v15 + 16))(&v22 - v17, a1, AssociatedTypeWitness);
  v19 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a5;
  *(v20 + 3) = a6;
  *(v20 + 4) = v23;
  *(v20 + 5) = a3;
  *(v20 + 6) = a4;
  (*(v15 + 32))(&v20[v19], v18, AssociatedTypeWitness);

  sub_21BE2633C();
}

uint64_t objectdestroyTm_23()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_21BD51984(int *a1, uint64_t a2, uint64_t a3)
{
  v8 = (a1 + *a1);
  v5 = a1[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21BBB7EB8;

  return v8(a3);
}

uint64_t sub_21BD51A7C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v0[5];
  v8 = v0[6];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_21BBB7EB8;

  return sub_21BD51984(v7, v8, v0 + v6);
}

uint64_t objectdestroy_5Tm()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(v0 + 6);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_21BD51C6C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v0[5];
  v8 = v0[6];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_21BBA6A64;

  return sub_21BD51674(v7, v8, v0 + v6);
}

uint64_t sub_21BD51D84@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB268, &qword_21BE46438);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v70[4] = v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB270, &qword_21BE46440);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v70[3] = v70 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB278, &qword_21BE46448);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v70[2] = v70 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB280, &qword_21BE46450);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v70[1] = v70 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB288, &unk_21BE46458);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = sub_21BE26A4C();
  v75 = *(v19 - 8);
  v76 = v19;
  v20 = *(v75 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v70 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = v70 - v25;
  v27 = sub_21BE28A4C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_21BE2679C();
  v72 = *(v32 - 8);
  v73 = v32;
  v33 = *(v72 + 64);
  MEMORY[0x28223BE20](v32);
  v71 = v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE28A3C();
  v35 = sub_21BE28A1C();
  v37 = v36;
  v38 = v27;
  v39 = v37;
  (*(v28 + 8))(v31, v38);
  if (v39 >> 60 == 15)
  {
    sub_21BE2614C();

    v40 = sub_21BE26A2C();
    v41 = sub_21BE28FDC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v78 = v43;
      *v42 = 136315394;
      *(v42 + 4) = sub_21BB3D81C(0x7274732874696E69, 0xED0000293A676E69, &v78);
      *(v42 + 12) = 2080;
      v44 = sub_21BB3D81C(a1, a2, &v78);

      *(v42 + 14) = v44;
      _os_log_impl(&dword_21BB35000, v40, v41, "STExpressSettingsDefaults.%s converting string to data: %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v43, -1, -1);
      MEMORY[0x21CF05C50](v42, -1, -1);
    }

    else
    {
    }

    (*(v75 + 8))(v24, v76);
    v48 = 1;
    v50 = v73;
    v49 = v74;
    v51 = v72;
    return (*(v51 + 56))(v49, v48, 1, v50);
  }

  v45 = sub_21BE2578C();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  sub_21BE2577C();
  sub_21BD56CA0();
  sub_21BE2576C();

  v52 = v78;
  sub_21BE2614C();

  v53 = sub_21BE26A2C();
  v54 = sub_21BE28FFC();

  if (os_log_type_enabled(v53, v54))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v78 = v57;
    *v56 = 136315394;
    *(v56 + 4) = sub_21BB3D81C(0x7274732874696E69, 0xED0000293A676E69, &v78);
    *(v56 + 12) = 2080;
    v77 = v52;

    v58 = sub_21BE28A5C();
    v60 = sub_21BB3D81C(v58, v59, &v78);

    *(v56 + 14) = v60;
    _os_log_impl(&dword_21BB35000, v53, v54, "STExpressSettingsDefaults.%s loaded presets: %s", v56, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v57, -1, -1);
    MEMORY[0x21CF05C50](v56, -1, -1);
  }

  (*(v75 + 8))(v26, v76);
  v61 = v71;
  v62 = sub_21BD55AC8();
  v63 = v62;
  if (!v62)
  {
    goto LABEL_18;
  }

  v64 = [v62 sources];
  sub_21BB3A2A4(0, &qword_27CDBB298, 0x277D08320);
  v65 = sub_21BE28C3C();

  if (!(v65 >> 62))
  {
    result = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  result = sub_21BE2951C();
  if (!result)
  {
LABEL_17:

LABEL_18:
    v69 = 0;
    goto LABEL_19;
  }

LABEL_12:
  if ((v65 & 0xC000000000000001) != 0)
  {
    v67 = MEMORY[0x21CF047C0](0, v65);
    goto LABEL_15;
  }

  if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v67 = *(v65 + 32);
LABEL_15:
    v68 = v67;

    v69 = [v68 configuration];

LABEL_19:
    sub_21BD531E0(v52, v69, v61);

    sub_21BBBF0B4(v35, v39);
    v49 = v74;
    v51 = v72;
    v50 = v73;
    (*(v72 + 32))(v74, v61, v73);
    v48 = 0;
    return (*(v51 + 56))(v49, v48, 1, v50);
  }

  __break(1u);
  return result;
}

uint64_t sub_21BD528AC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      v4 = sub_21BE2672C();
      v5 = *(*(v4 - 8) + 56);
      v6 = v4;
      v7 = a2;
      v8 = 1;
      goto LABEL_15;
    }

    if (a1 == 4)
    {
      v3 = MEMORY[0x277D4BCF8];
    }

    else
    {
      v3 = MEMORY[0x277D4BD20];
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = MEMORY[0x277D4BD00];
    }

    else
    {
      v3 = MEMORY[0x277D4BD18];
    }
  }

  else if (a1)
  {
    v3 = MEMORY[0x277D4BD08];
  }

  else
  {
    v3 = MEMORY[0x277D4BD10];
  }

  v9 = *v3;
  v10 = sub_21BE2672C();
  v12 = *(v10 - 8);
  (*(v12 + 104))(a2, v9, v10);
  v5 = *(v12 + 56);
  v7 = a2;
  v8 = 0;
  v6 = v10;
LABEL_15:

  return v5(v7, v8, 1, v6);
}

unint64_t sub_21BD52A2C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB2B0, &qword_21BE46470);
    v2 = sub_21BE297DC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v14);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v5)) | (v14 << 6);
        sub_21BBB71DC(*(a1 + 48) + 40 * v15, v27);
        sub_21BB3DCD4(*(a1 + 56) + 32 * v15, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_21BBB71DC(v24, v23);
        if (!swift_dynamicCast())
        {
          sub_21BB3A4CC(v24, &qword_27CDBB2B8, &qword_21BE46478);

          goto LABEL_23;
        }

        sub_21BB3DCD4(v25 + 8, v23);
        sub_21BB3A4CC(v24, &qword_27CDBB2B8, &qword_21BE46478);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_21BBB3108(v21, v22);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v21;
          v9[1] = v22;
          v11 = result;

          v12 = v2[7];
          v13 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v21;
          result = swift_unknownObjectRelease();
          v8 = v14;
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
          v17 = (v2[6] + 16 * result);
          *v17 = v21;
          v17[1] = v22;
          *(v2[7] + 8 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v2[2] = v20;
          v8 = v14;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v14 = v8;
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

void sub_21BD52CFC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB2C0, &unk_21BE46480);
    v2 = sub_21BE297DC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v14 = __clz(__rbit64(v5)) | (v13 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_21BD572E0(*(a1 + 56) + 40 * v14, &v25);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8568, &unk_21BE3BF70);
    sub_21BB3A2A4(0, &qword_27CDB6730, 0x277D82BB8);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v18 = sub_21BBB3108(v17, v16);
    if (v19)
    {
      v8 = (v2[6] + 16 * v18);
      v9 = v8[1];
      *v8 = v17;
      v8[1] = v16;
      v10 = v18;

      v11 = v2[7];
      v12 = *(v11 + 8 * v10);
      *(v11 + 8 * v10) = v24;

      v7 = v13;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v18;
      v20 = (v2[6] + 16 * v18);
      *v20 = v17;
      v20[1] = v16;
      *(v2[7] + 8 * v18) = v24;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_23;
      }

      v2[2] = v23;
      v7 = v13;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v13 = v7;
  }
}

void sub_21BD52F6C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58C8, &qword_21BE329C0);
    v2 = sub_21BE297DC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v14 = __clz(__rbit64(v5)) | (v13 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_21BB3DCD4(*(a1 + 56) + 32 * v14, v28);
    *&v27 = v16;
    *(&v27 + 1) = v17;
    v25[2] = v27;
    v26[0] = v28[0];
    v26[1] = v28[1];
    v18 = v27;
    sub_21BB414D0(v26, v25);
    sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);

    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v19 = sub_21BBB3108(v18, *(&v18 + 1));
    if (v20)
    {
      v8 = v2[6] + 16 * v19;
      v9 = *(v8 + 8);
      *v8 = v18;
      v10 = v19;

      v11 = v2[7];
      v12 = *(v11 + 8 * v10);
      *(v11 + 8 * v10) = v24;

      v7 = v13;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v19;
      *(v2[6] + 16 * v19) = v18;
      *(v2[7] + 8 * v19) = v24;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_23;
      }

      v2[2] = v23;
      v7 = v13;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v13 = v7;
  }
}

id sub_21BD531E0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v192 = a2;
  v193 = a3;
  v196 = a1;
  v3 = sub_21BE2667C();
  v189 = *(v3 - 8);
  v190 = v3;
  v4 = *(v189 + 64);
  MEMORY[0x28223BE20](v3);
  v174 = &v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21BE2687C();
  v187 = *(v6 - 8);
  v188 = v6;
  v7 = *(v187 + 64);
  MEMORY[0x28223BE20](v6);
  v173 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21BE2681C();
  v186 = *(v9 - 8);
  v10 = *(v186 + 64);
  MEMORY[0x28223BE20](v9);
  v168 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21BE267EC();
  v185 = *(v12 - 8);
  v13 = *(v185 + 64);
  MEMORY[0x28223BE20](v12);
  v157 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB2A0, &qword_21BE46468);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v161 = &v151 - v17;
  v164 = sub_21BE267AC();
  v163 = *(v164 - 8);
  v18 = *(v163 + 64);
  v19 = MEMORY[0x28223BE20](v164);
  v155 = &v151 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v156 = &v151 - v21;
  v22 = sub_21BE26A4C();
  v23 = *(v22 - 8);
  v197 = v22;
  v198 = v23;
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v181 = &v151 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v184 = &v151 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v191 = &v151 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v182 = &v151 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v151 - v33;
  v35 = sub_21BE2684C();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v178 = &v151 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB268, &qword_21BE46438);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v42 = &v151 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB270, &qword_21BE46440);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  v46 = &v151 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB278, &qword_21BE46448);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v50 = &v151 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB280, &qword_21BE46450);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v54 = &v151 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB288, &unk_21BE46458);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8);
  v58 = &v151 - v57;
  v179 = v36;
  v180 = v35;
  v59 = *(v36 + 56);
  v176 = v36 + 56;
  v175 = v59;
  v59(v58, 1, 1, v35);
  v60 = *(v186 + 56);
  v169 = v9;
  v160 = v186 + 56;
  v159 = v60;
  v60(v54, 1, 1, v9);
  v61 = *(v185 + 56);
  v158 = v12;
  v153 = v185 + 56;
  v152 = v61;
  v61(v50, 1, 1, v12);
  v62 = *(v187 + 56);
  v166 = v187 + 56;
  v165 = v62;
  v62(v46, 1, 1, v188);
  v63 = *(v189 + 56);
  v171 = v189 + 56;
  v170 = v63;
  v63(v42, 1, 1, v190);
  v177 = v58;
  v64 = v196;
  v162 = v54;
  v154 = v50;
  v167 = v46;
  v172 = v42;
  sub_21BE2676C();
  if (!*(v64 + 16) || (v65 = *(v64 + 32)) == 0)
  {
    sub_21BE2614C();
    v90 = sub_21BE26A2C();
    v91 = sub_21BE28FFC();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v199 = v93;
      *v92 = 136315138;
      *(v92 + 4) = sub_21BB3D81C(0xD00000000000001CLL, 0x800000021BE5FC30, &v199);
      _os_log_impl(&dword_21BB35000, v90, v91, "STExpressSettingsDefaults.%s contentRestrictions missing", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v93);
      MEMORY[0x21CF05C50](v93, -1, -1);
      MEMORY[0x21CF05C50](v92, -1, -1);
    }

    v74 = v197;
    (*(v198 + 8))(v34, v197);
    v94 = v184;
    v95 = v191;
    v96 = v182;
    if (!*(v64 + 16))
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58C8, &qword_21BE329C0);
  v66 = sub_21BE297BC();
  v67 = v65 + 64;
  v68 = 1 << *(v65 + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v70 = v69 & *(v65 + 64);
  v71 = (v68 + 63) >> 6;
  v194 = v66;
  v183 = v66 + 64;

  v73 = 0;
  v74 = v197;
  if (!v70)
  {
LABEL_7:
    v76 = v73;
    while (1)
    {
      v73 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        __break(1u);
        goto LABEL_54;
      }

      if (v73 >= v71)
      {
        break;
      }

      v77 = *(v67 + 8 * v73);
      ++v76;
      if (v77)
      {
        v75 = __clz(__rbit64(v77));
        v70 = (v77 - 1) & v77;
        goto LABEL_12;
      }
    }

    if (v192)
    {
      v97 = v192;
      v98 = sub_21BD55DD0(v97);

      v194 = v98;
      v74 = v197;
    }

    v94 = v184;
    v95 = v191;
    v96 = v182;
    v99 = v180;
    v100 = *(v65 + 16);

    if (*(v64 + 16))
    {
      v101 = *(v64 + 40);
    }

    v102 = v178;
    sub_21BE2682C();
    v103 = v179;
    v104 = v177;
    (*(v179 + 16))(v177, v102, v99);
    v175(v104, 0, 1, v99);
    sub_21BE2677C();
    (*(v103 + 8))(v102, v99);
    if (!*(v64 + 16))
    {
      goto LABEL_25;
    }

LABEL_24:
    v105 = *(v64 + 41);
    v106 = v105 | (*(v64 + 43) << 16);
    if (v105 != 3)
    {
      if (HIWORD(v106) - 2 >= 2u)
      {
        if (HIWORD(v106))
        {
          v142 = MEMORY[0x277D4BD60];
        }

        else
        {
          v142 = MEMORY[0x277D4BD58];
        }

        v143 = v163;
        v144 = v161;
        v145 = v164;
        (*(v163 + 104))(v161, *v142, v164);
        (*(v143 + 56))(v144, 0, 1, v145);
        v146 = v156;
        (*(v143 + 32))(v156, v144, v145);
        (*(v143 + 16))(v155, v146, v145);
        v147 = v157;
        sub_21BE267BC();
        v148 = v185;
        v149 = v154;
        v150 = v158;
        (*(v185 + 16))(v154, v147, v158);
        v152(v149, 0, 1, v150);
        sub_21BE2674C();
        (*(v148 + 8))(v147, v150);
        (*(v143 + 8))(v146, v145);
        v94 = v184;
      }

      else
      {
        v119 = v161;
        (*(v163 + 56))(v161, 1, 1, v164);
        sub_21BB3A4CC(v119, &qword_27CDBB2A0, &qword_21BE46468);
      }

      goto LABEL_28;
    }

LABEL_25:
    sub_21BE2614C();
    v107 = sub_21BE26A2C();
    v108 = sub_21BE28FFC();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v199 = v110;
      *v109 = 136315138;
      *(v109 + 4) = sub_21BB3D81C(0xD00000000000001CLL, 0x800000021BE5FC30, &v199);
      _os_log_impl(&dword_21BB35000, v107, v108, "STExpressSettingsDefaults.%s communicationLimits missing", v109, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v110);
      MEMORY[0x21CF05C50](v110, -1, -1);
      v111 = v109;
      v95 = v191;
      MEMORY[0x21CF05C50](v111, -1, -1);
    }

    (*(v198 + 8))(v96, v74);
LABEL_28:
    if (*(v64 + 16) && *(v64 + 44) != 3)
    {
      v120 = v168;
      sub_21BE2665C();
      v121 = v186;
      v122 = v162;
      v123 = v169;
      (*(v186 + 16))(v162, v120, v169);
      v159(v122, 0, 1, v123);
      sub_21BE2675C();
      (*(v121 + 8))(v120, v123);
      if (!*(v64 + 16))
      {
        goto LABEL_39;
      }
    }

    else
    {
      sub_21BE2614C();
      v112 = sub_21BE26A2C();
      v113 = sub_21BE28FFC();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = v94;
        v115 = v95;
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v199 = v117;
        *v116 = 136315138;
        *(v116 + 4) = sub_21BB3D81C(0xD00000000000001CLL, 0x800000021BE5FC30, &v199);
        _os_log_impl(&dword_21BB35000, v112, v113, "STExpressSettingsDefaults.%s communicationSafety missing", v116, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v117);
        MEMORY[0x21CF05C50](v117, -1, -1);
        MEMORY[0x21CF05C50](v116, -1, -1);

        v118 = v115;
        v94 = v114;
        (*(v198 + 8))(v118, v74);
      }

      else
      {

        (*(v198 + 8))(v95, v74);
      }

      if (!*(v64 + 16))
      {
        goto LABEL_39;
      }
    }

    if (*(v64 + 46) != 3)
    {
      v133 = v173;
      sub_21BE2685C();
      v135 = v187;
      v134 = v188;
      v136 = v167;
      (*(v187 + 16))(v167, v133, v188);
      v165(v136, 0, 1, v134);
      sub_21BE2678C();
      (*(v135 + 8))(v133, v134);
      if (*(v64 + 16))
      {
        goto LABEL_42;
      }

      goto LABEL_45;
    }

LABEL_39:
    sub_21BE2614C();
    v124 = sub_21BE26A2C();
    v125 = sub_21BE28FFC();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v199 = v127;
      *v126 = 136315138;
      *(v126 + 4) = sub_21BB3D81C(0xD00000000000001CLL, 0x800000021BE5FC30, &v199);
      _os_log_impl(&dword_21BB35000, v124, v125, "STExpressSettingsDefaults.%s appAndWebActivity missing", v126, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v127);
      MEMORY[0x21CF05C50](v127, -1, -1);
      MEMORY[0x21CF05C50](v126, -1, -1);
    }

    (*(v198 + 8))(v94, v74);
    if (*(v64 + 16))
    {
LABEL_42:
      v128 = *(v64 + 48);

      if (v128 != 3)
      {
        v129 = v174;
        sub_21BE2665C();
        v130 = v189;
        v131 = v190;
        v132 = v172;
        (*(v189 + 16))(v172, v129, v190);
        v170(v132, 0, 1, v131);
        sub_21BE2673C();

        return (*(v130 + 8))(v129, v131);
      }

      goto LABEL_46;
    }

LABEL_45:

LABEL_46:
    v137 = v181;
    sub_21BE2614C();
    v138 = sub_21BE26A2C();
    v139 = sub_21BE28FFC();
    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v199 = v141;
      *v140 = 136315138;
      *(v140 + 4) = sub_21BB3D81C(0xD00000000000001CLL, 0x800000021BE5FC30, &v199);
      _os_log_impl(&dword_21BB35000, v138, v139, "STExpressSettingsDefaults.%s screenDistance missing", v140, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v141);
      MEMORY[0x21CF05C50](v141, -1, -1);
      MEMORY[0x21CF05C50](v140, -1, -1);
    }

    return (*(v198 + 8))(v137, v74);
  }

  while (1)
  {
    v75 = __clz(__rbit64(v70));
    v70 &= v70 - 1;
LABEL_12:
    v78 = v75 | (v73 << 6);
    v79 = *(v65 + 56);
    v80 = v65;
    v81 = (*(v65 + 48) + 16 * v78);
    v82 = v81[1];
    v195 = *v81;
    v83 = *(v79 + 8 * v78);
    v84 = objc_allocWithZone(MEMORY[0x277CCABB0]);

    result = [v84 initWithInteger_];
    *(v183 + ((v78 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v78;
    v85 = v194;
    v86 = (*(v194 + 48) + 16 * v78);
    *v86 = v195;
    v86[1] = v82;
    *(*(v85 + 56) + 8 * v78) = result;
    v87 = *(v85 + 16);
    v88 = __OFADD__(v87, 1);
    v89 = v87 + 1;
    if (v88)
    {
      break;
    }

    *(v85 + 16) = v89;
    v64 = v196;
    v74 = v197;
    v65 = v80;
    if (!v70)
    {
      goto LABEL_7;
    }
  }

LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_21BD5451C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB2F0, &qword_21BE46518);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BD57514();
  sub_21BE29B6C();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB2D8, &qword_21BE46510);
  sub_21BD575BC(&qword_27CDBB2F8, sub_21BD57634);
  sub_21BE298FC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21BD546A8(void *a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v16 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB358, &qword_21BE466C0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BD57DF0();
  sub_21BE29B6C();
  v18 = a2;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57D0, &qword_21BE32858);
  sub_21BD57F94(&qword_27CDBB360);
  sub_21BE298CC();
  if (!v4)
  {
    LOBYTE(v18) = 1;
    v14 = v16;
    sub_21BE298BC();
    BYTE2(v18) = BYTE3(v14);
    LOWORD(v18) = v14 >> 8;
    v17 = 2;
    sub_21BD58004();
    sub_21BE298CC();
    LOWORD(v18) = WORD2(v14);
    v17 = 3;
    sub_21BD58058();
    sub_21BE298CC();
    LOWORD(v18) = HIWORD(v14);
    v17 = 4;
    sub_21BD580AC();
    sub_21BE298CC();
    LOWORD(v18) = a4;
    v17 = 5;
    sub_21BD58100();
    sub_21BE298CC();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_21BD54990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656372756F73 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21BE2995C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21BD54A18(uint64_t a1)
{
  v2 = sub_21BD57514();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BD54A54(uint64_t a1)
{
  v2 = sub_21BD57514();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21BD54A90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_21BD57360(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_21BD54AD8()
{
  v1 = *v0;
  v2 = 0x7365756C6176;
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x69446E6565726373;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F50746369727473;
  if (v1 != 1)
  {
    v5 = 0xD000000000000013;
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

uint64_t sub_21BD54BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21BD57874(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21BD54BE0(uint64_t a1)
{
  v2 = sub_21BD57DF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BD54C1C(uint64_t a1)
{
  v2 = sub_21BD57DF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BD54C58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21BD57A84(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 11) = BYTE3(v5);
    *(a2 + 9) = v5 >> 8;
    *(a2 + 12) = WORD2(v5);
    *(a2 + 14) = HIWORD(v5);
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_21BD54CCC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000014;
  v4 = 0x800000021BE55780;
  v5 = 0xE700000000000000;
  if (v2 == 1)
  {
    v5 = 0x800000021BE55780;
  }

  else
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x61746E6F43796E61;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000007463;
  }

  v8 = 0xD000000000000014;
  if (*a2 != 1)
  {
    v8 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x61746E6F43796E61;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000007463;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21BE2995C();
  }

  return v11 & 1;
}

uint64_t sub_21BD54DC8()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BD54E74()
{
  *v0;
  *v0;
  sub_21BE28ABC();
}

uint64_t sub_21BD54F0C()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BD54FB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21BD585C8();
  *a2 = result;
  return result;
}

void sub_21BD54FE4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007463;
  v4 = 0x800000021BE55780;
  v5 = 0xD000000000000014;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x61746E6F43796E61;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_21BD5504C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21BD55078(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21BD55078(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BE29B2C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(v7, v7[3]);
    sub_21BE2998C();
    v6 = sub_21BE2980C();

    if (v6 >= 3)
    {
      v4 = 2;
    }

    else
    {
      v4 = v6;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v4;
}

uint64_t sub_21BD551CC(void *a1, int a2)
{
  v3 = BYTE2(a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB3E8, &qword_21BE469C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BD58924();
  sub_21BE29B6C();
  v12[15] = 0;
  sub_21BE298BC();
  if (!v2)
  {
    v12[14] = 1;
    sub_21BE298BC();
    v12[13] = v3;
    v12[12] = 2;
    sub_21BD58C80();
    sub_21BE298CC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21BD553AC(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  a5();
  sub_21BE29B6C();
  v17 = 0;
  v13 = v15[1];
  sub_21BE298BC();
  if (!v13)
  {
    v16 = 1;
    sub_21BE298BC();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_21BD55538()
{
  v1 = 0x6F50746369727473;
  if (*v0 != 1)
  {
    v1 = 0x70795474696D696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t sub_21BD555A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21BD58614(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21BD555C8(uint64_t a1)
{
  v2 = sub_21BD58924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BD55604(uint64_t a1)
{
  v2 = sub_21BD58924();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BD55640@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21BD58738(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
  }

  return result;
}

uint64_t sub_21BD556A0(uint64_t a1)
{
  v2 = sub_21BD589CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BD556DC(uint64_t a1)
{
  v2 = sub_21BD589CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BD557A4(uint64_t a1)
{
  v2 = sub_21BD58BD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BD557E0(uint64_t a1)
{
  v2 = sub_21BD58BD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BD558A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v6 || (sub_21BE2995C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F50746369727473 && a2 == 0xEC0000007963696CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21BE2995C();

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

uint64_t sub_21BD55988(uint64_t a1)
{
  v2 = sub_21BD58C2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BD559C4(uint64_t a1)
{
  v2 = sub_21BD58C2C();

  return MEMORY[0x2821FE720](a1, v2);
}

void (*sub_21BD55A44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, _WORD *a5@<X8>))(void)
{
  result = sub_21BD58A20(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

id sub_21BD55AC8()
{
  v21[4] = *MEMORY[0x277D85DE8];
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v5 = objc_opt_self();
  v6 = sub_21BE25BCC();
  v21[0] = 0;
  v7 = [v5 JSONObjectWithData:v6 options:0 error:v21];

  if (v7)
  {
    v8 = v21[0];
    sub_21BE294BC();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8D28, &unk_21BE45710);
    if (swift_dynamicCast())
    {
      v9 = objc_allocWithZone(MEMORY[0x277D08310]);
      v10 = sub_21BE288EC();

      v11 = [v9 initWithDictionary_];

      result = v11;
      goto LABEL_8;
    }
  }

  else
  {
    v13 = v21[0];
    v14 = sub_21BE25A8C();

    swift_willThrow();
  }

  sub_21BE2614C();
  v15 = sub_21BE26A2C();
  v16 = sub_21BE28FDC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v21[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21BB3D81C(0x7465736572506166, 0xEF293A6D6F726628, v21);
    _os_log_impl(&dword_21BB35000, v15, v16, "STExpressSettingsDefaults.%s could not parse JSON", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x21CF05C50](v18, -1, -1);
    MEMORY[0x21CF05C50](v17, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  result = 0;
LABEL_8:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_21BD55DD0(void *a1)
{
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 allValues];
  v8 = sub_21BE2890C();

  sub_21BD52F6C(v8);
  v10 = v9;

  if (v10)
  {
    return v10;
  }

  sub_21BE2614C();
  v12 = sub_21BE26A2C();
  v13 = sub_21BE28FDC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_21BB3D81C(0xD000000000000041, 0x800000021BE5FC50, &v17);
    _os_log_impl(&dword_21BB35000, v12, v13, "STExpressSettingsDefaults.%s unexpected types. Returning empty dictionary", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x21CF05C50](v15, -1, -1);
    MEMORY[0x21CF05C50](v14, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return sub_21BBB686C(MEMORY[0x277D84F90]);
}

id sub_21BD55FDC(uint64_t a1)
{
  v2 = sub_21BE25DFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = 1684632420;
  v18[1] = 0xE400000000000000;
  sub_21BE2958C();
  if (!*(a1 + 16) || (v7 = sub_21BBB31E8(v17), (v8 & 1) == 0))
  {
    sub_21BBB7238(v17);
    goto LABEL_6;
  }

  sub_21BB3DCD4(*(a1 + 56) + 32 * v7, v18);
  sub_21BBB7238(v17);
  if (!swift_dynamicCast())
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v9 = v16[2];
LABEL_7:
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  sub_21BE25D7C();
  v11 = sub_21BE25DAC();
  (*(v3 + 8))(v6, v2);
  [v10 setLocale_];

  if (v9 && (, v12 = sub_21BE289CC(), v13 = [v10 numberFromString_], swift_bridgeObjectRelease_n(), v12, v13))
  {
    v14 = [v13 integerValue];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

unint64_t sub_21BD56220(uint64_t a1)
{
  v61 = sub_21BE2667C();
  v60 = *(v61 - 8);
  v2 = *(v60 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_21BE2687C();
  v57 = *(v58 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v58);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_21BE2681C();
  v54 = *(v55 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x28223BE20](v55);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21BE267AC();
  v52 = *(v8 - 8);
  v9 = *(v52 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v51 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - v12;
  v14 = sub_21BE267EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21BE2684C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21BBB5D24(MEMORY[0x277D84F90]);
  v62 = a1;
  sub_21BE266BC();
  LOBYTE(a1) = sub_21BE2683C();
  (*(v20 + 8))(v23, v19);
  if (a1)
  {
    *&v65 = 0xD000000000000013;
    *(&v65 + 1) = 0x800000021BE54570;
    sub_21BE2958C();
    v25 = sub_21BBB6B88(&unk_282D85930);
    sub_21BB3A4CC(&unk_282D85950, &qword_27CDBB248, &qword_21BE46420);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB250, &qword_21BE46428);
    *&v65 = v25;
    sub_21BB414D0(&v65, &v67);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v64[0] = v24;
    sub_21BC80224(&v67, v69, isUniquelyReferenced_nonNull_native);
    sub_21BBB7238(v69);
    v24 = *&v64[0];
  }

  sub_21BE2669C();
  v27 = sub_21BE267CC();
  v28 = *(v15 + 8);
  v28(v18, v14);
  if (v27)
  {
    *&v65 = 0xD000000000000013;
    *(&v65 + 1) = 0x800000021BE545B0;
    sub_21BE2958C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB258, &qword_21BE46430);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BE33260;
    *(inited + 32) = 0x64656C62616E65;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = 1;
    *(inited + 56) = 0x656C626174696465;
    *(inited + 64) = 0xE800000000000000;
    sub_21BE2669C();
    sub_21BE267DC();
    v28(v18, v14);
    v30 = v52;
    v31 = v51;
    (*(v52 + 104))(v51, *MEMORY[0x277D4BD68], v8);
    sub_21BD56C48();
    v32 = sub_21BE2899C();
    v33 = *(v30 + 8);
    v33(v31, v8);
    v33(v13, v8);
    *(inited + 72) = (v32 & 1) == 0;
    v34 = sub_21BBB6B88(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB248, &qword_21BE46420);
    swift_arrayDestroy();
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB250, &qword_21BE46428);
    *&v65 = v34;
    sub_21BB414D0(&v65, &v67);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    *&v64[0] = v24;
    sub_21BC80224(&v67, v69, v35);
    sub_21BBB7238(v69);
    v24 = *&v64[0];
  }

  v36 = v53;
  sub_21BE266AC();
  v37 = sub_21BE2666C();
  (*(v54 + 8))(v36, v55);
  if (v37)
  {
    *&v65 = 0xD000000000000013;
    *(&v65 + 1) = 0x800000021BE54590;
    sub_21BE2958C();
    *&v67 = 0xD000000000000013;
    *(&v67 + 1) = 0x800000021BE54590;
    sub_21BE2958C();
    v38 = sub_21BBB6B88(&unk_282D85968);
    sub_21BB3A4CC(&unk_282D85988, &qword_27CDBB248, &qword_21BE46420);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB250, &qword_21BE46428);
    *&v67 = v38;
    sub_21BB414D0(&v67, v64);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v63 = v24;
    sub_21BC80224(v64, &v65, v39);
    sub_21BBB7238(&v65);
    v40 = v63;
    v66 = MEMORY[0x277D84F78] + 8;
    sub_21BB414D0(&v65, &v67);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    *&v64[0] = v40;
    sub_21BC80224(&v67, v69, v41);
    sub_21BBB7238(v69);
    v24 = *&v64[0];
  }

  v42 = v56;
  sub_21BE266CC();
  v43 = sub_21BE2686C();
  (*(v57 + 8))(v42, v58);
  if (v43)
  {
    *&v65 = 0xD000000000000011;
    *(&v65 + 1) = 0x800000021BE545D0;
    sub_21BE2958C();
    v44 = sub_21BBB6B88(&unk_282D859A0);
    sub_21BB3A4CC(&unk_282D859C0, &qword_27CDBB248, &qword_21BE46420);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB250, &qword_21BE46428);
    *&v65 = v44;
    sub_21BB414D0(&v65, &v67);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    *&v64[0] = v24;
    sub_21BC80224(&v67, v69, v45);
    sub_21BBB7238(v69);
    v24 = *&v64[0];
  }

  v46 = v59;
  sub_21BE2668C();
  v47 = sub_21BE2666C();
  (*(v60 + 8))(v46, v61);
  if (v47)
  {
    strcpy(&v65, "screenDistance");
    HIBYTE(v65) = -18;
    sub_21BE2958C();
    v48 = sub_21BBB6B88(&unk_282D859D8);
    sub_21BB3A4CC(&unk_282D859F8, &qword_27CDBB248, &qword_21BE46420);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB250, &qword_21BE46428);
    *&v65 = v48;
    sub_21BB414D0(&v65, &v67);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    *&v64[0] = v24;
    sub_21BC80224(&v67, v69, v49);
    sub_21BBB7238(v69);
    return *&v64[0];
  }

  return v24;
}

unint64_t sub_21BD56C48()
{
  result = qword_27CDBB260;
  if (!qword_27CDBB260)
  {
    sub_21BE267AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB260);
  }

  return result;
}

unint64_t sub_21BD56CA0()
{
  result = qword_27CDBB290;
  if (!qword_27CDBB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB290);
  }

  return result;
}

uint64_t sub_21BD56CF4(uint64_t a1)
{
  sub_21BE2958C();
  if (!*(a1 + 16) || (v2 = sub_21BBB31E8(v6), (v3 & 1) == 0))
  {
    sub_21BBB7238(v6);
    goto LABEL_6;
  }

  sub_21BB3DCD4(*(a1 + 56) + 32 * v2, v7);
  sub_21BBB7238(v6);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v5 = 0;
    return v5 & 1;
  }

  v5 = sub_21BE2995C();

  return v5 & 1;
}

uint64_t sub_21BD56E10()
{
  v0 = sub_21BE2980C();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21BD56E5C(uint64_t a1, unint64_t a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  if (sub_21BE28B6C())
  {
    v28 = a1;
    v29 = a2;
    v27[0] = 0xD000000000000019;
    v27[1] = 0x800000021BE58C00;
    sub_21BD5728C();

    sub_21BE28F9C();
    sub_21BE2614C();
    v12 = v28;
    v13 = v29;

    v14 = sub_21BE26A2C();
    v15 = sub_21BE28FFC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v26 = v4;
      v17 = v16;
      v18 = swift_slowAlloc();
      v27[0] = v18;
      *v17 = 136315650;
      *(v17 + 4) = sub_21BB3D81C(0xD000000000000011, 0x800000021BE5FCA0, v27);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_21BB3D81C(a1, a2, v27);
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_21BB3D81C(v12, v13, v27);
      _os_log_impl(&dword_21BB35000, v14, v15, "ActionType.%s %s initialized with %s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v18, -1, -1);
      MEMORY[0x21CF05C50](v17, -1, -1);

      (*(v5 + 8))(v11, v26);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }

    return sub_21BD56E10();
  }

  else
  {
    sub_21BE2614C();

    v19 = sub_21BE26A2C();
    v20 = sub_21BE28FDC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v4;
      v23 = v22;
      v28 = v22;
      *v21 = 136315650;
      *(v21 + 4) = sub_21BB3D81C(0xD000000000000011, 0x800000021BE5FCA0, &v28);
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_21BB3D81C(a1, a2, &v28);
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_21BB3D81C(0xD000000000000019, 0x800000021BE58C00, &v28);
      _os_log_impl(&dword_21BB35000, v19, v20, "ActionType.%s %s does not start with %s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v23, -1, -1);
      MEMORY[0x21CF05C50](v21, -1, -1);

      (*(v5 + 8))(v9, v26);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }

    return 8;
  }
}

unint64_t sub_21BD5728C()
{
  result = qword_27CDBB2A8;
  if (!qword_27CDBB2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB2A8);
  }

  return result;
}

uint64_t sub_21BD572E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8568, &unk_21BE3BF70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_21BD57360(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB2C8, &qword_21BE46508);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BD57514();
  sub_21BE29B4C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB2D8, &qword_21BE46510);
    sub_21BD575BC(&qword_27CDBB2E0, sub_21BD57568);
    sub_21BE298AC();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v9;
}

unint64_t sub_21BD57514()
{
  result = qword_27CDBB2D0;
  if (!qword_27CDBB2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB2D0);
  }

  return result;
}

unint64_t sub_21BD57568()
{
  result = qword_27CDBB2E8;
  if (!qword_27CDBB2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB2E8);
  }

  return result;
}

uint64_t sub_21BD575BC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB2D8, &qword_21BE46510);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BD57634()
{
  result = qword_27CDBB300;
  if (!qword_27CDBB300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB300);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_21BD576AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21BD57708(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_21BD57770()
{
  result = qword_27CDBB308;
  if (!qword_27CDBB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB308);
  }

  return result;
}

unint64_t sub_21BD577C8()
{
  result = qword_27CDBB310;
  if (!qword_27CDBB310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB310);
  }

  return result;
}

unint64_t sub_21BD57820()
{
  result = qword_27CDBB318;
  if (!qword_27CDBB318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB318);
  }

  return result;
}

uint64_t sub_21BD57874(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365756C6176 && a2 == 0xE600000000000000;
  if (v4 || (sub_21BE2995C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F50746369727473 && a2 == 0xEC0000007963696CLL || (sub_21BE2995C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021BE545B0 == a2 || (sub_21BE2995C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021BE54590 == a2 || (sub_21BE2995C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021BE545D0 == a2 || (sub_21BE2995C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69446E6565726373 && a2 == 0xEE0065636E617473)
  {

    return 5;
  }

  else
  {
    v6 = sub_21BE2995C();

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

uint64_t sub_21BD57A84(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB320, &unk_21BE466B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1Tm(a1, v8);
  sub_21BD57DF0();
  sub_21BE29B4C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57D0, &qword_21BE32858);
    v14 = 0;
    sub_21BD57F94(&qword_27CDBB330);
    sub_21BE2985C();
    v8 = v15;
    LOBYTE(v15) = 1;
    sub_21BE2983C();
    v14 = 2;
    sub_21BD57E44();
    sub_21BE2985C();
    v13 = BYTE2(v15);
    v10 = v15;
    v14 = 3;
    sub_21BD57E98();
    sub_21BE2985C();
    v12 = v10;
    v14 = 4;
    sub_21BD57EEC();
    sub_21BE2985C();
    v11[1] = v15;
    v14 = 5;
    sub_21BD57F40();
    sub_21BE2985C();
    (*(v4 + 8))(v7, v3);

    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v8;
}

unint64_t sub_21BD57DF0()
{
  result = qword_27CDBB328;
  if (!qword_27CDBB328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB328);
  }

  return result;
}

unint64_t sub_21BD57E44()
{
  result = qword_27CDBB338;
  if (!qword_27CDBB338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB338);
  }

  return result;
}

unint64_t sub_21BD57E98()
{
  result = qword_27CDBB340;
  if (!qword_27CDBB340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB340);
  }

  return result;
}

unint64_t sub_21BD57EEC()
{
  result = qword_27CDBB348;
  if (!qword_27CDBB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB348);
  }

  return result;
}

unint64_t sub_21BD57F40()
{
  result = qword_27CDBB350;
  if (!qword_27CDBB350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB350);
  }

  return result;
}

uint64_t sub_21BD57F94(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB57D0, &qword_21BE32858);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BD58004()
{
  result = qword_27CDBB368;
  if (!qword_27CDBB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB368);
  }

  return result;
}

unint64_t sub_21BD58058()
{
  result = qword_27CDBB370;
  if (!qword_27CDBB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB370);
  }

  return result;
}

unint64_t sub_21BD580AC()
{
  result = qword_27CDBB378;
  if (!qword_27CDBB378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB378);
  }

  return result;
}

unint64_t sub_21BD58100()
{
  result = qword_27CDBB380;
  if (!qword_27CDBB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB380);
  }

  return result;
}

uint64_t _s6SourceV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6SourceV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21BD582C4(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s19CommunicationLimitsVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *a1;
  if (v4 >= 2)
  {
    v5 = ((v4 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s19CommunicationLimitsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_21BD584C4()
{
  result = qword_27CDBB388;
  if (!qword_27CDBB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB388);
  }

  return result;
}

unint64_t sub_21BD5851C()
{
  result = qword_27CDBB390;
  if (!qword_27CDBB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB390);
  }

  return result;
}

unint64_t sub_21BD58574()
{
  result = qword_27CDBB398;
  if (!qword_27CDBB398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB398);
  }

  return result;
}

uint64_t sub_21BD585C8()
{
  v0 = sub_21BE2980C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21BD58614(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v4 || (sub_21BE2995C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F50746369727473 && a2 == 0xEC0000007963696CLL || (sub_21BE2995C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70795474696D696CLL && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_21BE2995C();

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

uint64_t sub_21BD58738(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB3A0, &qword_21BE469A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BD58924();
  sub_21BE29B4C();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v13[15] = 0;
  v9 = sub_21BE2983C();
  v13[14] = 1;
  v10 = sub_21BE2983C();
  v13[12] = 2;
  sub_21BD58978();
  sub_21BE2985C();
  (*(v4 + 8))(v7, v3);
  v11 = v13[13];
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return (v10 << 8) | (v11 << 16) | v9;
}

unint64_t sub_21BD58924()
{
  result = qword_27CDBB3A8;
  if (!qword_27CDBB3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB3A8);
  }

  return result;
}

unint64_t sub_21BD58978()
{
  result = qword_27CDBB3B0;
  if (!qword_27CDBB3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB3B0);
  }

  return result;
}

unint64_t sub_21BD589CC()
{
  result = qword_27CDBB3C0;
  if (!qword_27CDBB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB3C0);
  }

  return result;
}

void (*sub_21BD58A20(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void)))(void)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v17 = *(v7 - 8);
  v8 = *(v17 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  a4();
  sub_21BE29B4C();
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v12 = v17;
    v19 = 0;
    v13 = sub_21BE2983C();
    v18 = 1;
    v14 = sub_21BE2983C();
    (*(v12 + 8))(v10, v7);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return (v13 | (v14 << 8));
  }

  return a4;
}

unint64_t sub_21BD58BD8()
{
  result = qword_27CDBB3D0;
  if (!qword_27CDBB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB3D0);
  }

  return result;
}

unint64_t sub_21BD58C2C()
{
  result = qword_27CDBB3E0;
  if (!qword_27CDBB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB3E0);
  }

  return result;
}

unint64_t sub_21BD58C80()
{
  result = qword_27CDBB3F0;
  if (!qword_27CDBB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB3F0);
  }

  return result;
}

unint64_t sub_21BD58D24(uint64_t a1)
{
  *(a1 + 8) = sub_21BD58978();
  result = sub_21BD58D54();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21BD58D54()
{
  result = qword_27CDBB410;
  if (!qword_27CDBB410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB410);
  }

  return result;
}

unint64_t sub_21BD58DAC()
{
  result = qword_27CDBB418;
  if (!qword_27CDBB418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB418);
  }

  return result;
}

unint64_t sub_21BD58E04()
{
  result = qword_27CDBB420;
  if (!qword_27CDBB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB420);
  }

  return result;
}

unint64_t sub_21BD58E5C()
{
  result = qword_27CDBB428;
  if (!qword_27CDBB428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB428);
  }

  return result;
}

unint64_t sub_21BD58EB4()
{
  result = qword_27CDBB430;
  if (!qword_27CDBB430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB430);
  }

  return result;
}

unint64_t sub_21BD58F0C()
{
  result = qword_27CDBB438;
  if (!qword_27CDBB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB438);
  }

  return result;
}

unint64_t sub_21BD58F64()
{
  result = qword_27CDBB440;
  if (!qword_27CDBB440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB440);
  }

  return result;
}

unint64_t sub_21BD58FBC()
{
  result = qword_27CDBB448;
  if (!qword_27CDBB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB448);
  }

  return result;
}

unint64_t sub_21BD59014()
{
  result = qword_27CDBB450;
  if (!qword_27CDBB450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB450);
  }

  return result;
}

unint64_t sub_21BD5906C()
{
  result = qword_27CDBB458;
  if (!qword_27CDBB458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB458);
  }

  return result;
}

unint64_t sub_21BD590C4()
{
  result = qword_27CDBB460;
  if (!qword_27CDBB460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB460);
  }

  return result;
}

unint64_t sub_21BD5911C()
{
  result = qword_27CDBB468;
  if (!qword_27CDBB468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB468);
  }

  return result;
}

unint64_t sub_21BD59174()
{
  result = qword_27CDBB470;
  if (!qword_27CDBB470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB470);
  }

  return result;
}

unint64_t sub_21BD591CC()
{
  result = qword_27CDBB478;
  if (!qword_27CDBB478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB478);
  }

  return result;
}

uint64_t sub_21BD59278(uint64_t a1)
{
  v2 = sub_21BE26FEC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21BE2749C();
}

uint64_t sub_21BD59340()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    sub_21BE28FEC();
    v8 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

void sub_21BD59480(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE26A4C();
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ChecklistStateVars();
  sub_21BBEAC94();
  v7 = sub_21BE26E9C();
  *a2 = v7;
  *(a2 + 8) = v8 & 1;
  sub_21BB3A2A4(0, &qword_280BD6980, 0x277D08248);
  sub_21BCA1818();
  v9 = sub_21BE2727C();
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  v11 = type metadata accessor for HomeView();
  v12 = v11[6];
  *(a2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  swift_storeEnumTagMultiPayload();
  v13 = (a2 + v11[7]);
  v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB480, &unk_21BE46F48);
  sub_21BE283EC();
  v14 = v41[0];
  *v13 = v41[0];
  v15 = a2 + v11[8];
  v16 = *(a1 + 48);
  *(v15 + 32) = *(a1 + 32);
  *(v15 + 48) = v16;
  *(v15 + 64) = *(a1 + 64);
  v17 = *(a1 + 16);
  *v15 = *a1;
  *(v15 + 16) = v17;
  v18 = *(a1 + 40);
  if (v18)
  {
    *(a2 + v11[10]) = v18;
    v19 = qword_27CDB4E98;
    v20 = v18;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = [objc_allocWithZone(FAHomeUISoftLinking) initWithHome:v20 notificationName:qword_27CDB7E48];

    if (v21)
    {
      *(a2 + v11[9]) = v21;
      *(a2 + v11[11]) = [v21 getPeopleAddController];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v37 = v14;
    v35 = v7;
    v36 = v9;
    v39 = v4;
    v22 = *(a1 + 48);
    v23 = *(a1 + 56);
    sub_21BD5992C(a1, v41);
    sub_21BE261BC();
    sub_21BD5992C(a1, v41);
    v24 = sub_21BE26A2C();
    v25 = sub_21BE28FDC();
    sub_21BD59988(a1);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43 = v34;
      *v26 = 136315138;
      *&v41[0] = 0x6D657449656D6F68;
      *(&v41[0] + 1) = 0xE800000000000000;
      v33 = v25;
      MEMORY[0x21CF03CA0](v22, v23);
      sub_21BD59988(a1);
      v27 = sub_21BB3D81C(*&v41[0], *(&v41[0] + 1), &v43);

      *(v26 + 4) = v27;
      _os_log_impl(&dword_21BB35000, v24, v33, "Home is nil in HomeView for item: %s", v26, 0xCu);
      v28 = v34;
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x21CF05C50](v28, -1, -1);
      MEMORY[0x21CF05C50](v26, -1, -1);
    }

    else
    {
      sub_21BD59988(a1);
    }

    (*(v38 + 8))(v40, v39);
    v29 = v36;
    sub_21BD599DC();
    swift_allocError();
    swift_willThrow();

    sub_21BB3A4CC(a2 + v12, &qword_27CDB5EB0, &unk_21BE38920);

    v30 = *(v15 + 48);
    v41[2] = *(v15 + 32);
    v41[3] = v30;
    v42 = *(v15 + 64);
    v31 = *(v15 + 16);
    v41[0] = *v15;
    v41[1] = v31;
    sub_21BD59988(v41);
  }
}

uint64_t type metadata accessor for HomeView()
{
  result = qword_27CDBB490;
  if (!qword_27CDBB490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21BD599DC()
{
  result = qword_27CDBB488;
  if (!qword_27CDBB488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB488);
  }

  return result;
}

uint64_t sub_21BD59A30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_21BE33260;
  v2 = type metadata accessor for HomeView();
  v3 = *(v0 + *(v2 + 32));
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v15 = *(v0 + *(v2 + 32));
    }

    v4 = sub_21BE2951C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D83B88];
  v6 = MEMORY[0x277D83C10];
  *(v1 + 56) = MEMORY[0x277D83B88];
  *(v1 + 64) = v6;
  *(v1 + 32) = v4;
  v7 = *(v0 + 16);
  if (v7)
  {
    v8 = [v7 members];
    sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
    v9 = sub_21BE28C3C();

    if (v9 >> 62)
    {
      v0 = sub_21BE2951C();
    }

    else
    {
      v0 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!__OFSUB__(v0, 1))
    {
      *(v1 + 96) = v5;
      *(v1 + 104) = v6;
      *(v1 + 72) = (v0 - 1) & ~((v0 - 1) >> 63);
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = objc_opt_self();

      v12 = [v11 bundleForClass_];
      sub_21BE2599C();

      v13 = sub_21BE289DC();

      return v13;
    }

    __break(1u);
  }

  v16 = *(v0 + 24);
  sub_21BB3A2A4(v7, &qword_280BD6980, 0x277D08248);
  sub_21BCA1818();
  result = sub_21BE2726C();
  __break(1u);
  return result;
}

void sub_21BD59C80(void *a1)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (v8 = *(v1 + *(type metadata accessor for HomeView() + 44))) != 0)
  {
    v9 = objc_allocWithZone(MEMORY[0x277D757A0]);
    v10 = a1;
    v11 = v8;
    v17 = [v9 initWithRootViewController_];
    [v10 presentViewController:v17 animated:1 completion:0];

    v12 = v17;
  }

  else
  {
    sub_21BE261BC();
    v13 = sub_21BE26A2C();
    v14 = sub_21BE28FDC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21BB35000, v13, v14, "Unable to navigate to home contact picker", v15, 2u);
      MEMORY[0x21CF05C50](v15, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }
}

double sub_21BD59E60@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_21BE2838C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v1 + *(type metadata accessor for HomeView() + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB4D0, &qword_21BE47098);
  sub_21BE283FC();
  if (v13)
  {
    (*(v4 + 104))(v7, *MEMORY[0x277CE0FE0], v3);
    v8 = sub_21BE283CC();
    (*(v4 + 8))(v7, v3);
    sub_21BE2869C();
    sub_21BE26F2C();
    v20 = v22;
    v18 = v24;
    v16 = 0;
    *&v26 = v8;
    *(&v26 + 1) = v21;
    LOBYTE(v27) = v22;
    *(&v27 + 1) = *v19;
    DWORD1(v27) = *&v19[3];
    *(&v27 + 1) = v23;
    v28[0] = v24;
    *&v28[1] = *v17;
    *&v28[4] = *&v17[3];
    *&v28[8] = v25;
    v28[24] = 0;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8110, &unk_21BE3AE10);
    sub_21BC65EA8();
    sub_21BE2784C();

    v26 = v13;
    v27 = v14;
    *v28 = *v15;
    *&v28[9] = *&v15[9];
  }

  else
  {
    sub_21BE2837C();
    (*(v4 + 104))(v7, *MEMORY[0x277CE0FE0], v3);
    v9 = sub_21BE283CC();

    (*(v4 + 8))(v7, v3);
    sub_21BE2869C();
    sub_21BE26F2C();
    v20 = v22;
    v18 = v24;
    v16 = 1;
    *&v13 = v9;
    *(&v13 + 1) = v21;
    LOBYTE(v14) = v22;
    *(&v14 + 1) = *v19;
    DWORD1(v14) = *&v19[3];
    *(&v14 + 1) = v23;
    v15[0] = v24;
    *&v15[1] = *v17;
    *&v15[4] = *&v17[3];
    *&v15[8] = v25;
    v15[24] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8110, &unk_21BE3AE10);
    sub_21BC65EA8();
    sub_21BE2784C();
  }

  v10 = v27;
  *a1 = v26;
  a1[1] = v10;
  a1[2] = *v28;
  result = *&v28[9];
  *(a1 + 41) = *&v28[9];
  return result;
}

void sub_21BD5A210()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v8 = sub_21BE289CC();
  v9 = [v7 initWithBundleIdentifier_];

  v10 = [objc_opt_self() imageDescriptorNamed_];
  v11 = [v9 prepareImageForDescriptor_];

  if (v11)
  {
    v12 = [v11 CGImage];
    if (v12)
    {
      v13 = v12;
      [v11 iconSize];
      [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

      v14 = sub_21BE2836C();
      v15 = (v1 + *(type metadata accessor for HomeView() + 28));
      v16 = v15[1];
      v25 = *v15;
      v26 = v16;
      v24 = v14;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB4D0, &qword_21BE47098);
      sub_21BE2840C();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_21BE261BC();
    v17 = sub_21BE26A2C();
    v18 = sub_21BE28FDC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_21BB35000, v17, v18, "Failed to load Home app icon, falling back to SF Symbol", v19, 2u);
      MEMORY[0x21CF05C50](v19, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v20 = sub_21BE2837C();
    v21 = (v1 + *(type metadata accessor for HomeView() + 28));
    v22 = v21[1];
    v25 = *v21;
    v26 = v22;
    v24 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB4D0, &qword_21BE47098);
    sub_21BE2840C();
  }
}

id sub_21BD5A570@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HomeView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BD5BA4C(v1, v6);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_21BD5BAB0(v6, v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v21 = v9;
  sub_21BE283EC();
  v10 = v19;
  v11 = v20;
  sub_21BD5BA4C(v1, v6);
  v12 = swift_allocObject();
  sub_21BD5BAB0(v6, v12 + v7);
  if (qword_27CDB4EA0 != -1)
  {
    swift_once();
  }

  v18 = qword_27CDB7E50;
  v13 = sub_21BD59340();
  swift_getKeyPath();
  v19 = v13;
  sub_21BBEAC94();
  sub_21BE25F1C();

  swift_beginAccess();
  v14 = *(v13 + 22);

  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = sub_21BD5BB14;
  *(a1 + 24) = v8;
  *(a1 + 32) = sub_21BD5BD38;
  *(a1 + 40) = v12;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v15 = v18;
  *(a1 + 64) = v18;
  *(a1 + 72) = v14;

  return v15;
}

uint64_t sub_21BD5A7D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a1;
  v96 = a3;
  v4 = 1701670728;
  v5 = type metadata accessor for HomeView();
  v93 = *(v5 - 8);
  v6 = *(v93 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v84 - v10;
  v12 = a2 + *(v9 + 40);
  v13 = *(v12 + 8);
  v95 = v12;
  if (v13 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21BE32770;
    v15 = *(v12 + 40);
    if (v15)
    {
      v16 = [v15 name];
      v4 = sub_21BE28A0C();
      v18 = v17;
    }

    else
    {
      v18 = 0xE400000000000000;
    }

    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_21BBBEFE8();
    *(v14 + 32) = v4;
    *(v14 + 40) = v18;
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v26 = objc_opt_self();

    v27 = [v26 &selRef:ObjCClassFromMetadata :? launchScreenTimeSetupForUser:? inObjectModel:? isExpressSetup:? withCompletion:? + 3];
    sub_21BE2599C();

    v28 = sub_21BE289DC();
    v91 = v29;
    v92 = v28;

    v90 = sub_21BD59A30();
    v31 = v30;
    v32 = [v26 bundleForClass_];
    v33 = sub_21BE2599C();
    v35 = v34;

    sub_21BD59E60(&v110);
    v107 = v110;
    v108 = v111;
    v109[0] = *v112;
    *(v109 + 9) = *&v112[9];
    sub_21BD5BA4C(a2, v11);
    v36 = (*(v93 + 80) + 16) & ~*(v93 + 80);
    v37 = (v6 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    sub_21BD5BAB0(v11, v38 + v36);
    v40 = v94;
    v39 = v95;
    *(v38 + v37) = v94;
    v41 = v39[3];
    v101 = v39[2];
    v102 = v41;
    v103 = *(v39 + 64);
    v42 = v39[1];
    v99 = *v39;
    v100 = v42;
    v43 = sub_21BD5BE20();
    v44 = swift_allocObject();
    v45 = v39[3];
    *(v44 + 48) = v39[2];
    *(v44 + 64) = v45;
    *(v44 + 80) = *(v39 + 64);
    v46 = v39[1];
    *(v44 + 16) = *v39;
    *(v44 + 32) = v46;
    v104 = v107;
    v105 = v108;
    v106[0] = v109[0];
    *(v106 + 9) = *(v109 + 9);
    v47 = v40;
    sub_21BD5992C(&v99, v97);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB4E0, &qword_21BE470A0);
    sub_21BD5BE74();
    v48 = sub_21BE2852C();
    *&v110 = v92;
    *(&v110 + 1) = v91;
    *&v111 = v90;
    *(&v111 + 1) = v31;
    *v112 = v33;
    *&v112[8] = v35;
    *&v112[16] = 0;
    *&v112[24] = sub_21BD5C0B0;
    v113 = v38;
    v114 = 0;
    v115 = v44;
    v117 = &type metadata for HomeDataItem;
    v118 = v43;
    v119 = v48;
    sub_21BBC7A18(&v110, v97);
    v98 = 0;
    sub_21BBC24D4();
    sub_21BBC2528();
    sub_21BE2784C();
    return sub_21BBC7A74(&v110);
  }

  else
  {
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v19 = swift_allocObject();
    v86 = xmmword_21BE32770;
    *(v19 + 16) = xmmword_21BE32770;
    v20 = *(v12 + 40);
    v84 = v20;
    v85 = v6;
    if (v20)
    {
      v21 = [v20 name];
      v22 = sub_21BE28A0C();
      v24 = v23;
    }

    else
    {
      v24 = 0xE400000000000000;
      v22 = 1701670728;
    }

    *(v19 + 56) = MEMORY[0x277D837D0];
    v87 = sub_21BBBEFE8();
    *(v19 + 64) = v87;
    *(v19 + 32) = v22;
    *(v19 + 40) = v24;
    type metadata accessor for ConfirmChildAgeViewModel();
    v50 = swift_getObjCClassFromMetadata();
    v51 = objc_opt_self();

    v52 = [v51 bundleForClass_];
    sub_21BE2599C();

    v53 = sub_21BE289DC();
    v91 = v54;
    v92 = v53;

    v55 = [v51 bundleForClass_];
    v56 = sub_21BE2599C();
    v89 = v57;
    v90 = v56;

    sub_21BD59E60(&v104);
    v107 = v104;
    v108 = v105;
    v109[0] = v106[0];
    *(v109 + 9) = *(v106 + 9);
    sub_21BD5BA4C(a2, v8);
    v58 = (*(v93 + 80) + 16) & ~*(v93 + 80);
    v59 = (v85 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    sub_21BD5BAB0(v8, v60 + v58);
    v61 = v94;
    *(v60 + v59) = v94;
    v62 = v61;
    v63 = swift_allocObject();
    *(v63 + 16) = v86;
    v64 = v84;
    if (v84)
    {
      v65 = v62;
      v66 = [v64 name];
      v67 = sub_21BE28A0C();
      v69 = v68;
    }

    else
    {
      v70 = v62;
      v69 = 0xE400000000000000;
      v67 = 1701670728;
    }

    v71 = v87;
    *(v63 + 56) = MEMORY[0x277D837D0];
    *(v63 + 64) = v71;
    *(v63 + 32) = v67;
    *(v63 + 40) = v69;

    v72 = [v51 bundleForClass_];
    sub_21BE2599C();

    v73 = sub_21BE289DC();
    v75 = v74;

    v76 = v95;
    v77 = *(v95 + 48);
    v101 = *(v95 + 32);
    v102 = v77;
    v103 = *(v95 + 64);
    v78 = *(v95 + 16);
    v99 = *v95;
    v100 = v78;
    v79 = sub_21BD5BE20();
    v80 = swift_allocObject();
    v81 = *(v76 + 48);
    *(v80 + 48) = *(v76 + 32);
    *(v80 + 64) = v81;
    *(v80 + 80) = *(v76 + 64);
    v82 = *(v76 + 16);
    *(v80 + 16) = *v76;
    *(v80 + 32) = v82;
    v110 = v107;
    v111 = v108;
    *v112 = v109[0];
    *&v112[9] = *(v109 + 9);
    sub_21BD5992C(&v99, v97);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB4E0, &qword_21BE470A0);
    sub_21BD5BE74();
    v83 = sub_21BE2852C();
    *&v110 = v92;
    *(&v110 + 1) = v91;
    *&v111 = v90;
    *(&v111 + 1) = v89;
    *v112 = 0;
    *&v112[8] = sub_21BD5BD98;
    *&v112[16] = v60;
    *&v112[24] = v73;
    v113 = v75;
    v114 = 0;
    v115 = v80;
    v116 = v109[2];
    v117 = &type metadata for HomeDataItem;
    v118 = v79;
    v119 = v83;
    sub_21BBC7968(&v110, v97);
    v98 = 1;
    sub_21BBC24D4();
    sub_21BBC2528();
    sub_21BE2784C();
    return sub_21BBC79C4(&v110);
  }
}

void sub_21BD5B0F8(uint64_t a1, void *a2)
{
  v46 = a2;
  v3 = sub_21BE26FEC();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21BE26A4C();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_21BE2590C();
  v9 = *(v47 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v47);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v39 - v15;
  v17 = sub_21BE25B9C();
  v48 = *(v17 - 8);
  v18 = *(v48 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for HomeView();
  v22 = v21;
  v23 = *(a1 + *(v21 + 32));
  if (!(v23 >> 62))
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = *(a1 + 16);
    if (v25)
    {
      goto LABEL_3;
    }

LABEL_17:
    v12 = *(a1 + 24);
    sub_21BB3A2A4(0, &qword_280BD6980, 0x277D08248);
    sub_21BCA1818();
    sub_21BE2726C();
    __break(1u);
    goto LABEL_18;
  }

  if (v23 < 0)
  {
    v38 = *(a1 + *(v21 + 32));
  }

  v24 = sub_21BE2951C();
  v25 = *(a1 + 16);
  if (!v25)
  {
    goto LABEL_17;
  }

LABEL_3:
  v26 = v25;
  v27 = sub_21BE2905C();

  if (!(v27 >> 62))
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

LABEL_18:
  v28 = sub_21BE2951C();
LABEL_5:

  if (v24 == v28)
  {
    sub_21BE258FC();
    v29 = [objc_opt_self() getURLScheme];
    if (v29)
    {
      v30 = v29;
      sub_21BE28A0C();
    }

    sub_21BE258DC();
    MEMORY[0x21CF00A60](0x6174654472657375, 0xEB00000000736C69);
    sub_21BE258AC();
    (*(v9 + 8))(v12, v47);
    v31 = v48;
    if ((*(v48 + 48))(v16, 1, v17) == 1)
    {
      sub_21BB3A4CC(v16, &unk_27CDB57F0, &qword_21BE328A0);
      v32 = v43;
      sub_21BE261BC();
      v33 = sub_21BE26A2C();
      v34 = sub_21BE28FDC();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_21BB35000, v33, v34, "Unable to create homeAppURL", v35, 2u);
        MEMORY[0x21CF05C50](v35, -1, -1);
      }

      (*(v44 + 8))(v32, v45);
    }

    else
    {
      (*(v31 + 32))(v20, v16, v17);
      v36 = a1 + *(v22 + 24);
      v37 = v40;
      sub_21BD20368(v40);
      sub_21BE26FBC();
      (*(v41 + 8))(v37, v42);
      (*(v31 + 8))(v20, v17);
    }
  }

  else
  {
    sub_21BD59C80(v46);
  }
}

void sub_21BD5B638(uint64_t a1)
{
  v2 = *(a1 + *(type metadata accessor for HomeView() + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB4D0, &qword_21BE47098);
  sub_21BE283FC();
  if (v1)
  {
  }

  else
  {
    sub_21BD5A210();
  }
}

void sub_21BD5B6E8()
{
  sub_21BD5B8B8(319, &qword_27CDB56D8, type metadata accessor for ChecklistStateVars);
  if (v0 <= 0x3F)
  {
    sub_21BD5B844();
    if (v1 <= 0x3F)
    {
      sub_21BD5B8B8(319, &qword_27CDB5EC8, MEMORY[0x277CDF708]);
      if (v2 <= 0x3F)
      {
        sub_21BD5B90C();
        if (v3 <= 0x3F)
        {
          sub_21BB3A2A4(319, &qword_27CDBB4B0, off_2782F0C38);
          if (v4 <= 0x3F)
          {
            sub_21BB3A2A4(319, &qword_27CDBB4B8, 0x277CD1A60);
            if (v5 <= 0x3F)
            {
              sub_21BD5B970();
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

void sub_21BD5B844()
{
  if (!qword_27CDBB4A0)
  {
    sub_21BB3A2A4(255, &qword_280BD6980, 0x277D08248);
    sub_21BCA1818();
    v0 = sub_21BE2728C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBB4A0);
    }
  }
}

void sub_21BD5B8B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21BE26E8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21BD5B90C()
{
  if (!qword_27CDBB4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB480, &unk_21BE46F48);
    v0 = sub_21BE2842C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBB4A8);
    }
  }
}

void sub_21BD5B970()
{
  if (!qword_27CDBB4C0)
  {
    sub_21BB3A2A4(255, &qword_27CDB6358, 0x277D75D28);
    v0 = sub_21BE2946C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDBB4C0);
    }
  }
}

unint64_t sub_21BD5B9DC()
{
  result = qword_27CDBB4C8;
  if (!qword_27CDBB4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB4C8);
  }

  return result;
}

uint64_t sub_21BD5BA4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD5BAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD5BB14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HomeView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21BD5A7D8(a1, v6, a2);
}

uint64_t objectdestroyTm_24()
{
  v1 = type metadata accessor for HomeView();
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *v3;

  v5 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21BE26FEC();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
    v7 = *(v3 + v5);
  }

  v8 = (v3 + v1[7]);
  v9 = *v8;

  v10 = v8[1];

  v11 = (v3 + v1[8]);
  v12 = *v11;

  v13 = v11[2];

  v14 = v11[3];

  v15 = v11[4];

  v16 = v11[7];

  return swift_deallocObject();
}

void sub_21BD5BD38()
{
  v1 = *(type metadata accessor for HomeView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_21BD5B638(v2);
}

unint64_t sub_21BD5BE20()
{
  result = qword_27CDBB4D8;
  if (!qword_27CDBB4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB4D8);
  }

  return result;
}

unint64_t sub_21BD5BE74()
{
  result = qword_27CDBB4E8;
  if (!qword_27CDBB4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB4E0, &qword_21BE470A0);
    sub_21BC65EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB4E8);
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{
  v1 = type metadata accessor for HomeView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = *(v0 + v2);

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21BE26FEC();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
    v8 = *(v4 + v6);
  }

  v9 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v4 + v1[7]);
  v11 = *v10;

  v12 = v10[1];

  v13 = (v4 + v1[8]);
  v14 = *v13;

  v15 = v13[2];

  v16 = v13[3];

  v17 = v13[4];

  v18 = v13[7];

  return swift_deallocObject();
}

void sub_21BD5C0B0()
{
  v1 = *(type metadata accessor for HomeView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_21BD5B0F8(v0 + v2, v3);
}

unint64_t sub_21BD5C13C()
{
  result = qword_27CDBB4F0;
  if (!qword_27CDBB4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB4F8, &qword_21BE470A8);
    sub_21BD5C1C8();
    sub_21BCB1380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB4F0);
  }

  return result;
}

unint64_t sub_21BD5C1C8()
{
  result = qword_27CDBB500;
  if (!qword_27CDBB500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB508, &qword_21BE470B0);
    sub_21BCE8D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB500);
  }

  return result;
}

uint64_t FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = sub_21BE26A4C();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD5C314, 0, 0);
}

uint64_t sub_21BD5C314()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BD5C430;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC830, &qword_21BE4B460);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BBB25CC;
  v0[13] = &block_descriptor_44;
  v0[14] = v2;
  [v1 fetchFamilyCircleWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BD5C430()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_21BD5C618;
  }

  else
  {
    v3 = sub_21BD5C540;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21BD5C540()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = [v2 ageCategory] == 2;
  v4 = [v2 ageCategory];
  v5 = sub_21BE2902C();

  v6 = v0[23];
  v7 = v0[19];
  v8 = v0[24] != 0;
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 9) = v5 & 1;
  *(v7 + 10) = 4;
  *(v7 + 11) = v3;

  v9 = v0[1];

  return v9();
}

uint64_t sub_21BD5C618()
{
  v2 = v0[23];
  v1 = v0[24];
  swift_willThrow();
  sub_21BE260EC();
  v3 = v1;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FDC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[24];
  v8 = v0[20];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_21BB35000, v4, v5, "FamilyDeclaredAgeRangeAnalyticsPackage: Failed to fetch family circle: %@", v9, 0xCu);
    sub_21BB3A4CC(v10, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v10, -1, -1);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[22] + 8))(v0[23], v0[21]);
  v13 = v0[23];
  v14 = v0[19];
  v15 = v0[24] != 0;
  *v14 = 0;
  *(v14 + 8) = v15;
  *(v14 + 9) = 1026;
  *(v14 + 11) = 0;

  v16 = v0[1];

  return v16();
}

uint64_t sub_21BD5C870@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 4)
  {
    type metadata accessor for AgeRangeGlobalState(0);
    result = sub_21BE299DC();
    __break(1u);
  }

  else
  {
    *a2 = 0x2010003u >> (8 * result);
  }

  return result;
}

unint64_t static AgeRangeNavigationEntryPoint.convert(from:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x2030100u >> (8 * result);
  if (result >= 4)
  {
    LOBYTE(v2) = 4;
  }

  *a2 = v2;
  return result;
}

uint64_t FamilyDeclaredAgeRangeAnalyticsPackage.init(ageCategory:isPartOfFamily:onChildDevice:entryPoint:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  *a6 = result;
  *(a6 + 8) = a2 & 1;
  *(a6 + 9) = a3;
  *(a6 + 10) = v6;
  *(a6 + 11) = a4;
  return result;
}

void FamilyDeclaredAgeRangeAnalyticsPackage.init(from:onChildDevice:entryPoint:)(void *a1@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = [a1 ageCategory];
  v9 = sub_21BE2902C();

  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 9) = v9 & 1;
  *(a4 + 10) = v7;
  *(a4 + 11) = a2;
}

uint64_t FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_21BD5DFA8();
  sub_21BE25F1C();

  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  swift_getKeyPath();
  sub_21BE25F1C();

  v6 = *(a1 + 80);
  v7 = [*(a1 + 72) entryPoint];
  if (v7)
  {
    if (v7 == 3)
    {
      v8 = 2;
    }

    else if (v7 == 1)
    {
      v8 = 1;
    }

    else if (v7 == 2)
    {
      v8 = 3;
    }

    else
    {
      v8 = 4;
    }
  }

  else
  {
    v8 = 0;
  }

  swift_getKeyPath();
  sub_21BE25F1C();

  v9 = *(a1 + 88);
  v10 = *(a1 + 96);

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6;
  *(a2 + 10) = v8;
  *(a2 + 11) = (v9 == 2) & ~v10;
  return result;
}

uint64_t sub_21BD5CB34()
{
  v0 = sub_21BE26A4C();
  __swift_allocate_value_buffer(v0, qword_27CDBB510);
  __swift_project_value_buffer(v0, qword_27CDBB510);
  return sub_21BE26A3C();
}

void sub_21BD5CC68(uint64_t *a1, char a2, const char *a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = *(a1 + 11);
  v16 = a2;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  sub_21BD5DC44(&v16, &v12);
  if (qword_27CDB4FB8 != -1)
  {
    swift_once();
  }

  v8 = sub_21BE26A4C();
  __swift_project_value_buffer(v8, qword_27CDBB510);
  oslog = sub_21BE26A2C();
  v9 = sub_21BE28FBC();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21BB35000, oslog, v9, a3, v10, 2u);
    MEMORY[0x21CF05C50](v10, -1, -1);
  }
}

id FamilyDeclaredAgeRangeAnalytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FamilyDeclaredAgeRangeAnalytics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyDeclaredAgeRangeAnalytics();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FamilyDeclaredAgeRangeAnalytics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyDeclaredAgeRangeAnalytics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BD5CEB0(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_21BD5CF10(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_21BD5CF84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_21BD572E0((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_21BD5CFD0@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v4 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_21BD572E0(*(v4 + 56) + 40 * v13, &v23);
    v21 = v24;
    v22 = v23;
    v17 = v25;
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;

    if (v15)
    {
      v20 = v1[5];
      v19 = v1[6];
      *&v23 = v16;
      *(&v23 + 1) = v15;
      v25 = v21;
      v24 = v22;
      v26 = v17;
      v20(&v23);
      return sub_21BB3A4CC(&v23, &qword_27CDBB550, qword_21BE474C8);
    }

    else
    {
LABEL_13:
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_21BD5D11C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v56 = a1;
  v57 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v58 = v8;
  v59 = 0;
  v60 = v11 & v9;
  v61 = a2;
  v62 = a3;

  sub_21BD5CFD0(&v51);
  v12 = v52;
  if (!v52)
  {
    goto LABEL_25;
  }

  v13 = v51;
  v48 = v53;
  v49 = v54;
  v50 = v55;
  v14 = *a5;
  result = sub_21BBB3108(v51, v52);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_21BC7BC58(v20, a4 & 1);
    v22 = *a5;
    result = sub_21BBB3108(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_21BE299FC();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_21BC80CC4();
    result = v26;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    sub_21BCA6258(&v48, v24[7] + 40 * v25);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v27 = (v24[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  v28 = v24[7] + 40 * result;
  v29 = v48;
  v30 = v49;
  *(v28 + 32) = v50;
  *v28 = v29;
  *(v28 + 16) = v30;
  v31 = v24[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (!v19)
  {
    v24[2] = v32;
LABEL_15:
    sub_21BD5CFD0(&v51);
    v12 = v52;
    if (v52)
    {
      v21 = 1;
      do
      {
        v13 = v51;
        v48 = v53;
        v49 = v54;
        v50 = v55;
        v34 = *a5;
        result = sub_21BBB3108(v51, v12);
        v36 = v34[2];
        v37 = (v35 & 1) == 0;
        v19 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v35;
        if (v34[3] < v38)
        {
          sub_21BC7BC58(v38, 1);
          v39 = *a5;
          result = sub_21BBB3108(v13, v12);
          if ((a4 & 1) != (v40 & 1))
          {
            goto LABEL_8;
          }
        }

        v41 = *a5;
        if (a4)
        {
          v33 = result;

          sub_21BCA6258(&v48, v41[7] + 40 * v33);
        }

        else
        {
          v41[(result >> 6) + 8] |= 1 << result;
          v42 = (v41[6] + 16 * result);
          *v42 = v13;
          v42[1] = v12;
          v43 = v41[7] + 40 * result;
          v44 = v48;
          v45 = v49;
          *(v43 + 32) = v50;
          *v43 = v44;
          *(v43 + 16) = v45;
          v46 = v41[2];
          v19 = __OFADD__(v46, 1);
          v47 = v46 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v41[2] = v47;
        }

        sub_21BD5CFD0(&v51);
        v12 = v52;
      }

      while (v52);
    }

LABEL_25:
    sub_21BC50480();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21BD5D43C(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  v8 = *(a2 + 10);
  v9 = *(a2 + 11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE374E0;
  *(inited + 32) = 0x65676E6152656761;
  *(inited + 40) = 0xE800000000000000;
  if (v6)
  {
    goto LABEL_2;
  }

  if (v5 > 0)
  {
    if (v5 == 2)
    {
      v11 = 0xE500000000000000;
      v12 = 0x646C696843;
      goto LABEL_3;
    }

    if (v5 == 1)
    {
      v11 = 0xE400000000000000;
      v12 = 1852138836;
      goto LABEL_3;
    }

    goto LABEL_26;
  }

  if (v5 != -1)
  {
    if (!v5)
    {
      v11 = 0xE500000000000000;
      v12 = 0x746C756441;
      goto LABEL_3;
    }

LABEL_26:
    type metadata accessor for FAMemberType(0);
    result = sub_21BE299DC();
    __break(1u);
    return result;
  }

LABEL_2:
  v11 = 0xE700000000000000;
  v12 = 0x6E776F6E6B6E55;
LABEL_3:
  v13 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 48) = v12;
  *(inited + 56) = v11;
  *(inited + 88) = 0x696D61466E497369;
  *(inited + 96) = 0xEA0000000000796CLL;
  v14 = MEMORY[0x277D839B0];
  if (v7 == 2)
  {
    v15 = 0;
    v16 = 0;
    *(inited + 104) = 0;
    *(inited + 112) = 0;
    *(inited + 120) = 0;
  }

  else
  {
    *(inited + 104) = v7 & 1;
    v16 = &protocol witness table for Bool;
    v15 = MEMORY[0x277D839B0];
  }

  *(inited + 128) = v15;
  *(inited + 136) = v16;
  strcpy((inited + 144), "onChildDevice");
  *(inited + 158) = -4864;
  *(inited + 184) = v14;
  *(inited + 192) = &protocol witness table for Bool;
  *(inited + 160) = v9;
  *(inited + 200) = 0x696F507972746E65;
  *(inited + 208) = 0xEA0000000000746ELL;
  if (v8 <= 1)
  {
    if (v8)
    {
      v17 = 0x800000021BE5FE70;
      v18 = 0xD000000000000016;
    }

    else
    {
      v17 = 0xE300000000000000;
      v18 = 4804673;
    }
  }

  else if (v8 == 2)
  {
    v17 = 0xE300000000000000;
    v18 = 5588547;
  }

  else if (v8 == 3)
  {
    v17 = 0xEF73676E69747465;
    v18 = 0x5320796C696D6146;
  }

  else
  {
    v17 = 0xE700000000000000;
    v18 = 0x6E776F6E6B6E55;
  }

  *(inited + 240) = v13;
  *(inited + 248) = &protocol witness table for String;
  *(inited + 216) = v18;
  *(inited + 224) = v17;
  v19 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  swift_arrayDestroy();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v19;
  sub_21BD5D11C(a3, sub_21BD5CF84, 0, isUniquelyReferenced_nonNull_native, &v23);

  v21 = v23;
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  LOBYTE(v23) = v4;

  sub_21BCA55DC(&v23, v21);
}

void _s14FamilyCircleUI0A25DeclaredAgeRangeAnalyticsC33sendOnboardingViewNavigationEvent4with4viewyAA0adefG7PackageV_AA0efgiJ0OtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = 0xEB00000000656741;
  v3 = 0x206D7269666E6F43;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = *(a1 + 10);
  v28 = *(a1 + 11);
  v8 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F38, &qword_21BE36340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 2003134838;
  v10 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  if (v8 > 1)
  {
    v12 = 0x206D7269666E6F43;
    v13 = 0xEB00000000656741;
    if (v8 != 2)
    {
      v13 = 0x800000021BE5FEF0;
      v12 = 0xD000000000000026;
    }
  }

  else
  {
    if (v8)
    {
      v11 = "Intro Child/Teen Version";
    }

    else
    {
      v11 = "Intro Adult/Teen Version";
    }

    v13 = (v11 - 32) | 0x8000000000000000;
    v12 = 0xD000000000000018;
  }

  *(inited + 48) = v12;
  *(inited + 56) = v13;
  v14 = sub_21BBB6068(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(v10, &unk_27CDB6F40, qword_21BE36348);
  LOBYTE(v29) = 49;
  v30 = v4;
  v31 = v5;
  v32 = v6;
  v33 = v7;
  v34 = v28;
  v15 = sub_21BCA2F6C(v14);

  sub_21BD5D43C(&v29, &v30, v15);

  if (qword_27CDB4FB8 != -1)
  {
    swift_once();
  }

  v16 = sub_21BE26A4C();
  __swift_project_value_buffer(v16, qword_27CDBB510);
  v17 = sub_21BE26A2C();
  v18 = sub_21BE28FBC();
  if (!os_log_type_enabled(v17, v18))
  {
    goto LABEL_30;
  }

  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v30 = v20;
  *v19 = 136446978;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      v2 = 0x800000021BE5FEF0;
      v3 = 0xD000000000000026;
    }
  }

  else
  {
    if (v8)
    {
      v2 = 0x800000021BE5FF20;
    }

    else
    {
      v2 = 0x800000021BE5FF40;
    }

    v3 = 0xD000000000000018;
  }

  v21 = 0x6E776F6E6B6E55;
  v22 = sub_21BB3D81C(v3, v2, &v30);

  *(v19 + 4) = v22;
  *(v19 + 12) = 2082;
  if (v7 <= 1)
  {
    if (v7)
    {
      v23 = 0x800000021BE5FE70;
      v24 = 0xD000000000000016;
    }

    else
    {
      v23 = 0xE300000000000000;
      v24 = 4804673;
    }
  }

  else if (v7 == 2)
  {
    v23 = 0xE300000000000000;
    v24 = 5588547;
  }

  else if (v7 == 3)
  {
    v23 = 0xEF73676E69747465;
    v24 = 0x5320796C696D6146;
  }

  else
  {
    v23 = 0xE700000000000000;
    v24 = 0x6E776F6E6B6E55;
  }

  v25 = sub_21BB3D81C(v24, v23, &v30);

  *(v19 + 14) = v25;
  *(v19 + 22) = 2082;
  if (v5)
  {
    goto LABEL_28;
  }

  if (v4 > 0)
  {
    if (v4 == 1)
    {
      v26 = 0xE400000000000000;
      v21 = 1852138836;
      goto LABEL_29;
    }

    if (v4 == 2)
    {
      v26 = 0xE500000000000000;
      v21 = 0x646C696843;
      goto LABEL_29;
    }
  }

  else
  {
    if (v4 == -1)
    {
LABEL_28:
      v26 = 0xE700000000000000;
LABEL_29:
      v27 = sub_21BB3D81C(v21, v26, &v30);

      *(v19 + 24) = v27;
      *(v19 + 32) = 1026;
      *(v19 + 34) = v28;
      _os_log_impl(&dword_21BB35000, v17, v18, "AgeRange Analytics - Sent onboarding view navigation event: view=%{public}s, entryPoint=%{public}s, ageRange=%{public}s, onChildDevice=%{BOOL,public}d", v19, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v20, -1, -1);
      MEMORY[0x21CF05C50](v19, -1, -1);
LABEL_30:

      return;
    }

    if (!v4)
    {
      v26 = 0xE500000000000000;
      v21 = 0x746C756441;
      goto LABEL_29;
    }
  }

  type metadata accessor for FAMemberType(0);
  v29 = v4;
  sub_21BE299DC();
  __break(1u);
}

uint64_t sub_21BD5DC44(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  v6 = *(a2 + 10);
  v7 = *(a2 + 11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE374E0;
  *(inited + 32) = 0x65676E6152656761;
  *(inited + 40) = 0xE800000000000000;
  if (v4)
  {
    goto LABEL_2;
  }

  if (v3 > 0)
  {
    if (v3 == 2)
    {
      v9 = 0xE500000000000000;
      v10 = 0x646C696843;
      goto LABEL_3;
    }

    if (v3 == 1)
    {
      v9 = 0xE400000000000000;
      v10 = 1852138836;
      goto LABEL_3;
    }

    goto LABEL_26;
  }

  if (v3 != -1)
  {
    if (!v3)
    {
      v9 = 0xE500000000000000;
      v10 = 0x746C756441;
      goto LABEL_3;
    }

LABEL_26:
    type metadata accessor for FAMemberType(0);
    result = sub_21BE299DC();
    __break(1u);
    return result;
  }

LABEL_2:
  v9 = 0xE700000000000000;
  v10 = 0x6E776F6E6B6E55;
LABEL_3:
  v11 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 48) = v10;
  *(inited + 56) = v9;
  *(inited + 88) = 0x696D61466E497369;
  *(inited + 96) = 0xEA0000000000796CLL;
  v12 = MEMORY[0x277D839B0];
  if (v5 == 2)
  {
    v13 = 0;
    v14 = 0;
    *(inited + 104) = 0;
    *(inited + 112) = 0;
    *(inited + 120) = 0;
  }

  else
  {
    *(inited + 104) = v5 & 1;
    v14 = &protocol witness table for Bool;
    v13 = MEMORY[0x277D839B0];
  }

  *(inited + 128) = v13;
  *(inited + 136) = v14;
  strcpy((inited + 144), "onChildDevice");
  *(inited + 158) = -4864;
  *(inited + 184) = v12;
  *(inited + 192) = &protocol witness table for Bool;
  *(inited + 160) = v7;
  *(inited + 200) = 0x696F507972746E65;
  *(inited + 208) = 0xEA0000000000746ELL;
  if (v6 <= 1)
  {
    if (v6)
    {
      v15 = 0x800000021BE5FE70;
      v16 = 0xD000000000000016;
    }

    else
    {
      v15 = 0xE300000000000000;
      v16 = 4804673;
    }
  }

  else if (v6 == 2)
  {
    v15 = 0xE300000000000000;
    v16 = 5588547;
  }

  else if (v6 == 3)
  {
    v15 = 0xEF73676E69747465;
    v16 = 0x5320796C696D6146;
  }

  else
  {
    v15 = 0xE700000000000000;
    v16 = 0x6E776F6E6B6E55;
  }

  *(inited + 240) = v11;
  *(inited + 248) = &protocol witness table for String;
  *(inited + 216) = v16;
  *(inited + 224) = v15;
  v17 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
  swift_arrayDestroy();
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  LOBYTE(v19) = v2;

  sub_21BCA55DC(&v19, v17);
}

unint64_t sub_21BD5DFA8()
{
  result = qword_27CDB78D0;
  if (!qword_27CDB78D0)
  {
    type metadata accessor for AgeRangeSharingViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB78D0);
  }

  return result;
}

void sub_21BD5E010(uint64_t a1, unsigned __int8 *a2, char a3, const char *a4)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 9);
  v8 = *(a1 + 10);
  v9 = *(a1 + 11);
  v10 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F38, &qword_21BE36340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 0x4F676E6972616873;
  v12 = inited + 32;
  *(inited + 40) = 0xED00006E6F697470;
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v13 = 0xE500000000000000;
      v14 = 0x726576654ELL;
    }

    else
    {
      v13 = 0xE700000000000000;
      v14 = 0x6E776F6E6B6E55;
    }
  }

  else if (v10)
  {
    v14 = 0x73726946206B7341;
    v13 = 0xE900000000000074;
  }

  else
  {
    v13 = 0xE600000000000000;
    v14 = 0x737961776C41;
  }

  *(inited + 48) = v14;
  *(inited + 56) = v13;
  v15 = sub_21BBB6068(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(v12, &unk_27CDB6F40, qword_21BE36348);
  LOBYTE(v33) = a3;
  v34 = v5;
  v35 = v6;
  v36 = v7;
  v37 = v8;
  v38 = v9;
  v16 = sub_21BCA2F6C(v15);

  sub_21BD5D43C(&v33, &v34, v16);

  if (qword_27CDB4FB8 != -1)
  {
    swift_once();
  }

  v17 = sub_21BE26A4C();
  __swift_project_value_buffer(v17, qword_27CDBB510);
  v18 = sub_21BE26A2C();
  v19 = sub_21BE28FBC();
  if (!os_log_type_enabled(v18, v19))
  {
    goto LABEL_25;
  }

  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v34 = v21;
  *v20 = 136446722;
  if (v6)
  {
    goto LABEL_12;
  }

  if (v5 > 0)
  {
    if (v5 == 2)
    {
      v22 = 0xE500000000000000;
      v23 = 0x646C696843;
      goto LABEL_13;
    }

    if (v5 == 1)
    {
      v22 = 0xE400000000000000;
      v23 = 1852138836;
      goto LABEL_13;
    }
  }

  else
  {
    if (v5 == -1)
    {
LABEL_12:
      v22 = 0xE700000000000000;
      v23 = 0x6E776F6E6B6E55;
LABEL_13:
      v24 = sub_21BB3D81C(v23, v22, &v34);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      v25 = 0xE600000000000000;
      v26 = 0xE500000000000000;
      v27 = 0x726576654ELL;
      if (v10 != 2)
      {
        v27 = 0x6E776F6E6B6E55;
        v26 = 0xE700000000000000;
      }

      v28 = 0x73726946206B7341;
      if (v10)
      {
        v25 = 0xE900000000000074;
      }

      else
      {
        v28 = 0x737961776C41;
      }

      if (v10 <= 1)
      {
        v29 = v28;
      }

      else
      {
        v29 = v27;
      }

      if (v10 <= 1)
      {
        v30 = v25;
      }

      else
      {
        v30 = v26;
      }

      v31 = sub_21BB3D81C(v29, v30, &v34);

      *(v20 + 14) = v31;
      *(v20 + 22) = 1026;
      *(v20 + 24) = v9;
      _os_log_impl(&dword_21BB35000, v18, v19, a4, v20, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v21, -1, -1);
      MEMORY[0x21CF05C50](v20, -1, -1);
LABEL_25:

      return;
    }

    if (!v5)
    {
      v22 = 0xE500000000000000;
      v23 = 0x746C756441;
      goto LABEL_13;
    }
  }

  type metadata accessor for FAMemberType(0);
  v33 = v5;
  sub_21BE299DC();
  __break(1u);
}

void _s14FamilyCircleUI0A25DeclaredAgeRangeAnalyticsC31sendSettingsViewNavigationEvent4with4view10entryPointyAA0adefG7PackageV_AA0efiJ0OAA0efk5EntryP0OtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = 0xEA00000000006C69;
  v3 = 0x6174654420707041;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = *(a1 + 10);
  v29 = *(a1 + 11);
  v8 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F38, &qword_21BE36340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 32) = 2003134838;
  v10 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  if (v8)
  {
    v11 = 0x6174654420707041;
    v12 = 0xEA00000000006C69;
    if (v8 != 1)
    {
      goto LABEL_6;
    }

    v13 = "Age Range For Apps Child/Teen Version";
  }

  else
  {
    v13 = "Age Range For Apps Adult/Teen Version";
  }

  v12 = (v13 - 32) | 0x8000000000000000;
  v11 = 0xD000000000000025;
LABEL_6:
  *(inited + 48) = v11;
  *(inited + 56) = v12;
  v14 = sub_21BBB6068(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(v10, &unk_27CDB6F40, qword_21BE36348);
  LOBYTE(v30) = 54;
  v31 = v4;
  v32 = v5;
  v33 = v6;
  v34 = v7;
  v35 = v29;
  v15 = sub_21BCA2F6C(v14);

  sub_21BD5D43C(&v30, &v31, v15);

  if (qword_27CDB4FB8 != -1)
  {
    swift_once();
  }

  v16 = sub_21BE26A4C();
  __swift_project_value_buffer(v16, qword_27CDBB510);
  v17 = sub_21BE26A2C();
  v18 = sub_21BE28FBC();
  if (!os_log_type_enabled(v17, v18))
  {
    goto LABEL_26;
  }

  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v31 = v20;
  *v19 = 136446978;
  if (v8)
  {
    if (v8 != 1)
    {
      goto LABEL_14;
    }

    v21 = "Age Range For Apps Child/Teen Version";
  }

  else
  {
    v21 = "Age Range For Apps Adult/Teen Version";
  }

  v2 = (v21 - 32) | 0x8000000000000000;
  v3 = 0xD000000000000025;
LABEL_14:
  v22 = 0x6E776F6E6B6E55;
  v23 = sub_21BB3D81C(v3, v2, &v31);

  *(v19 + 4) = v23;
  *(v19 + 12) = 2082;
  if (v7 <= 1)
  {
    if (v7)
    {
      v24 = 0x800000021BE5FE70;
      v25 = 0xD000000000000016;
    }

    else
    {
      v24 = 0xE300000000000000;
      v25 = 4804673;
    }
  }

  else if (v7 == 2)
  {
    v24 = 0xE300000000000000;
    v25 = 5588547;
  }

  else if (v7 == 3)
  {
    v24 = 0xEF73676E69747465;
    v25 = 0x5320796C696D6146;
  }

  else
  {
    v24 = 0xE700000000000000;
    v25 = 0x6E776F6E6B6E55;
  }

  v26 = sub_21BB3D81C(v25, v24, &v31);

  *(v19 + 14) = v26;
  *(v19 + 22) = 2082;
  if (v5)
  {
    goto LABEL_24;
  }

  if (v4 > 0)
  {
    if (v4 == 1)
    {
      v27 = 0xE400000000000000;
      v22 = 1852138836;
      goto LABEL_25;
    }

    if (v4 == 2)
    {
      v27 = 0xE500000000000000;
      v22 = 0x646C696843;
      goto LABEL_25;
    }
  }

  else
  {
    if (v4 == -1)
    {
LABEL_24:
      v27 = 0xE700000000000000;
LABEL_25:
      v28 = sub_21BB3D81C(v22, v27, &v31);

      *(v19 + 24) = v28;
      *(v19 + 32) = 1026;
      *(v19 + 34) = v29;
      _os_log_impl(&dword_21BB35000, v17, v18, "AgeRange Analytics - Sent settings view navigation event: view=%{public}s, entryPoint=%{public}s, ageRange=%{public}s, onChildDevice=%{BOOL,public}d", v19, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v20, -1, -1);
      MEMORY[0x21CF05C50](v19, -1, -1);
LABEL_26:

      return;
    }

    if (!v4)
    {
      v27 = 0xE500000000000000;
      v22 = 0x746C756441;
      goto LABEL_25;
    }
  }

  type metadata accessor for FAMemberType(0);
  v30 = v4;
  sub_21BE299DC();
  __break(1u);
}

void sub_21BD5E850(uint64_t a1, char a2, const char *a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = *(a1 + 11);
  LOBYTE(v16) = a2;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  sub_21BD5DC44(&v16, &v17);
  if (qword_27CDB4FB8 != -1)
  {
    swift_once();
  }

  v8 = sub_21BE26A4C();
  __swift_project_value_buffer(v8, qword_27CDBB510);
  oslog = sub_21BE26A2C();
  v9 = sub_21BE28FBC();
  if (!os_log_type_enabled(oslog, v9))
  {
    goto LABEL_7;
  }

  v10 = 0x6E776F6E6B6E55;
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v17 = v12;
  *v11 = 136446466;
  if (v5)
  {
    goto LABEL_5;
  }

  if (v4 > 0)
  {
    if (v4 == 2)
    {
      v13 = 0xE500000000000000;
      v10 = 0x646C696843;
      goto LABEL_6;
    }

    if (v4 == 1)
    {
      v13 = 0xE400000000000000;
      v10 = 1852138836;
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  if (v4 != -1)
  {
    if (!v4)
    {
      v13 = 0xE500000000000000;
      v10 = 0x746C756441;
      goto LABEL_6;
    }

LABEL_18:
    type metadata accessor for FAMemberType(0);
    v16 = v4;
    sub_21BE299DC();
    __break(1u);
    return;
  }

LABEL_5:
  v13 = 0xE700000000000000;
LABEL_6:
  v14 = sub_21BB3D81C(v10, v13, &v17);

  *(v11 + 4) = v14;
  *(v11 + 12) = 1026;
  *(v11 + 14) = v7;
  _os_log_impl(&dword_21BB35000, oslog, v9, a3, v11, 0x12u);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  MEMORY[0x21CF05C50](v12, -1, -1);
  MEMORY[0x21CF05C50](v11, -1, -1);
LABEL_7:
}

unint64_t sub_21BD5EAC0()
{
  result = qword_27CDBB528;
  if (!qword_27CDBB528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB528);
  }

  return result;
}

unint64_t sub_21BD5EB18()
{
  result = qword_27CDBB530;
  if (!qword_27CDBB530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB530);
  }

  return result;
}

unint64_t sub_21BD5EB70()
{
  result = qword_27CDBB538;
  if (!qword_27CDBB538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB538);
  }

  return result;
}

unint64_t sub_21BD5EBC8()
{
  result = qword_27CDBB540;
  if (!qword_27CDBB540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB540);
  }

  return result;
}

unint64_t sub_21BD5EC20()
{
  result = qword_27CDBB548;
  if (!qword_27CDBB548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB548);
  }

  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FamilyDeclaredAgeRangeAnalyticsPackage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 12))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 11);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FamilyDeclaredAgeRangeAnalyticsPackage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 11) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21BD5EDB8(void *a1, char a2, uint64_t a3)
{
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = type metadata accessor for SharedFamilyGroceryIntroView();
  v15 = (a3 + v14[9]);
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v29) = v16;
  *(&v29 + 1) = v17;
  LOBYTE(v28) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  if (a2)
  {
    sub_21BE261BC();
    sub_21BC51D50(a1);
    (*(v7 + 8))(v11, v6);
    v18 = (a3 + v14[10]);
    v19 = *v18;
    v20 = *(v18 + 1);
    LOBYTE(v29) = v19;
    *(&v29 + 1) = v20;
    LOBYTE(v28) = 1;
    return sub_21BE2840C();
  }

  else
  {
    v29 = *(a3 + v14[8]);
    v28 = a1;
    v22 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA400, &qword_21BE433A0);
    sub_21BE2840C();
    sub_21BE261BC();
    v23 = sub_21BE26A2C();
    v24 = sub_21BE28FFC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_21BB35000, v23, v24, "Successfully created shared grocery list", v25, 2u);
      MEMORY[0x21CF05C50](v25, -1, -1);
    }

    (*(v7 + 8))(v13, v6);
    v29 = *(a3 + v14[11]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA418, &qword_21BE43418);
    result = sub_21BE283FC();
    v26 = v28;
    if (v28)
    {
      sub_21BD11324();
      sub_21BDA37EC(v22);
    }
  }

  return result;
}

uint64_t sub_21BD5F090(uint64_t a1)
{
  v2 = type metadata accessor for SharedFamilyGroceryIntroView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_21BE2599C();
  v9 = v8;

  v13[0] = v7;
  v13[1] = v9;
  sub_21BD1613C(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_21BD161A0(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_21BB41FA4();
  return sub_21BE2845C();
}

uint64_t sub_21BD5F234()
{
  v0 = sub_21BE26F5C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BD1269C();
  sub_21BD11124(v4);
  sub_21BE26F4C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_21BD5F304()
{
  v0 = *(*(type metadata accessor for SharedFamilyGroceryIntroView() - 8) + 80);

  return sub_21BD5F234();
}

uint64_t type metadata accessor for MemberDetailsAskToBuyWrapper()
{
  result = qword_27CDBB558;
  if (!qword_27CDBB558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD5F3D8()
{
  sub_21BD5F4A8();
  if (v0 <= 0x3F)
  {
    sub_21BBF088C();
    if (v1 <= 0x3F)
    {
      sub_21BB3A2A4(319, &qword_280BD8A40, 0x277D08268);
      if (v2 <= 0x3F)
      {
        sub_21BD39D4C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21BD5F4A8()
{
  if (!qword_27CDB8B60)
  {
    sub_21BB3A2A4(255, &unk_27CDB6550, 0x277D08338);
    v0 = sub_21BE2946C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB8B60);
    }
  }
}

uint64_t sub_21BD5F52C(void *a1)
{
  v2 = v1;
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v9 = a1;
  v10 = sub_21BE26A2C();
  v11 = sub_21BE28FFC();

  v12 = os_log_type_enabled(v10, v11);
  v36 = v9;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v38 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE5FFE0, &v38);
    *(v13 + 12) = 2080;
    v37 = a1;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDBB568, qword_21BE47588);
    v16 = sub_21BE28A5C();
    v18 = sub_21BB3D81C(v16, v17, &v38);
    v35 = v4;
    v19 = a1;
    v20 = v2;
    v21 = v18;

    *(v13 + 14) = v21;
    v2 = v20;
    _os_log_impl(&dword_21BB35000, v10, v11, "%s subscription: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v14, -1, -1);
    MEMORY[0x21CF05C50](v13, -1, -1);

    (*(v5 + 8))(v8, v35);
    if (!v19)
    {
      goto LABEL_10;
    }
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    if (!a1)
    {
LABEL_10:
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v29 = [objc_opt_self() bundleForClass_];
      v33 = 0xE700000000000000;
      v31 = sub_21BE2599C();
      goto LABEL_13;
    }
  }

  v22 = [v36 subscriberDSIDs];
  if (!v22)
  {
    goto LABEL_10;
  }

  v23 = v22;
  sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
  v24 = sub_21BE28C3C();

  v25 = [*(v2 + *(type metadata accessor for MemberDetailsAskToBuyWrapper() + 24)) dsid];
  if (!v25)
  {

    goto LABEL_10;
  }

  v26 = v25;
  v38 = v25;
  MEMORY[0x28223BE20](v25);
  v33 = &v38;
  v27 = sub_21BC9DAC4(sub_21BBF0CE4, (&v34 - 4), v24);

  type metadata accessor for ConfirmChildAgeViewModel();
  v28 = swift_getObjCClassFromMetadata();
  v29 = [objc_opt_self() bundleForClass_];
  if (v27)
  {
    v33 = 0x800000021BE5FFC0;
  }

  else
  {
    v33 = 0x800000021BE5FFA0;
  }

  v31 = sub_21BE2599C();

LABEL_13:
  return v31;
}

uint64_t sub_21BD5F9B0@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v57 = sub_21BE27A2C();
  v55 = *(v57 - 8);
  v2 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v54 = &v46[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_21BE25FCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v46[-v11];
  v13 = type metadata accessor for StaticSelectableCellTemplate();
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v46[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for MemberDetailsAskToBuyWrapper();
  sub_21BBF0D04(v1 + v17[5], v12);
  v18 = v17[7];
  Strong = swift_unknownObjectWeakLoadStrong();
  v19 = sub_21BD5F52C(*v1);
  v51 = v20;
  v52 = v19;
  v21 = *(v1 + v17[6]);
  v22 = [v21 dsid];
  v23 = v22;
  if (v22)
  {
    v50 = [v22 integerValue];
  }

  else
  {
    v50 = 0;
  }

  v24 = v1 + v17[8];
  v25 = *v24;
  v26 = *(v24 + 1);
  LOBYTE(v24) = v24[16];
  v61 = v25;
  v62 = v26;
  v63 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2856C();
  v48 = v59;
  v49 = v58;
  v47 = v60;
  (*(v5 + 104))(v8, *MEMORY[0x277D07F40], v4);
  v27 = MEMORY[0x21CF01150](v8);
  (*(v5 + 8))(v8, v4);
  if (v27 & 1) != 0 && (sub_21BE2916C() & 1) != 0 && ([v21 isMe])
  {
    v28 = 10;
  }

  else
  {
    v28 = 3;
  }

  if (qword_280BD76F0 != -1)
  {
    swift_once();
  }

  *v16 = 0x425F4F545F4B5341;
  v16[1] = 0xEA00000000005955;
  sub_21BC438F8(v12, v16 + v13[5]);
  *(v16 + v13[6]) = 1;
  v29 = v13[7];
  swift_unknownObjectWeakInit();

  swift_unknownObjectRelease();
  v30 = (v16 + v13[8]);
  v31 = v51;
  *v30 = v52;
  v30[1] = v31;
  v32 = v16 + v13[9];
  v33 = v49;
  *v32 = v50;
  v32[8] = v23 == 0;
  v34 = (v16 + v13[10]);
  *v34 = 0;
  v34[1] = 0;
  v35 = v16 + v13[11];
  v36 = v48;
  *v35 = v33;
  *(v35 + 1) = v36;
  v35[16] = v47;
  v37 = (v16 + v13[12]);
  *v37 = 0;
  v37[1] = 0;
  *(v16 + v13[13]) = 0;
  *(v16 + v13[14]) = v28;
  v38 = (v16 + v13[15]);
  type metadata accessor for ServicesStore();
  sub_21BD3A4A4(&qword_27CDB5750, type metadata accessor for ServicesStore);
  *v38 = sub_21BE270CC();
  v38[1] = v39;
  *(v16 + v13[16]) = 0;
  v40 = v16 + v13[17];
  LOBYTE(v58) = 0;
  sub_21BE283EC();
  v41 = v62;
  *v40 = v61;
  *(v40 + 1) = v41;
  v42 = v13[18];
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  v43 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_27CDB4EE0 != -1)
  {
    swift_once();
  }

  sub_21BE2935C();

  v44 = v54;
  sub_21BE27A0C();
  sub_21BD3A4A4(&qword_27CDB7F90, type metadata accessor for StaticSelectableCellTemplate);
  sub_21BE2805C();
  (*(v55 + 8))(v44, v57);
  return sub_21BC5E088(v16);
}

void sub_21BD5FF5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_21BCB05D4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21BD5FFEC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_21BD60130(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          v19[1] = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_21BD60358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v24 = *(a1 + 16);
  v25 = a1;
  sub_21BE2719C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB5F0, &qword_21BE47618);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB5F8, &qword_21BE47620);
  swift_getTupleTypeMetadata3();
  sub_21BE286EC();
  swift_getWitnessTable();
  v2 = sub_21BE284FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - v5;
  v7 = sub_21BE2719C();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = sub_21BE2719C();
  v27 = *(v11 - 8);
  v12 = *(v27 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  v18 = *(v25 + 24);
  v30 = v24;
  v31 = v18;
  v32 = v28;
  sub_21BE2770C();
  sub_21BE284EC();
  sub_21BE27B6C();
  WitnessTable = swift_getWitnessTable();
  sub_21BE2816C();
  (*(v3 + 8))(v6, v2);
  sub_21BE27B9C();
  v20 = MEMORY[0x277CDF918];
  v35 = WitnessTable;
  v36 = MEMORY[0x277CDF918];
  v21 = swift_getWitnessTable();
  sub_21BE2816C();
  (*(v26 + 8))(v10, v7);
  v33 = v21;
  v34 = v20;
  swift_getWitnessTable();
  sub_21BD37338(v15);
  v22 = *(v27 + 8);
  v22(v15, v11);
  sub_21BD37338(v17);
  return (v22)(v17, v11);
}

uint64_t sub_21BD60760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v76 = a3;
  v5 = sub_21BE2719C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v68 - v11;
  sub_21BE27B8C();
  v70 = a1;
  sub_21BE2816C();
  v108 = a2;
  v109 = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v73 = v12;
  sub_21BD37338(v10);
  v71 = v6;
  v13 = *(v6 + 8);
  v77 = v5;
  v78 = v10;
  v74 = v13;
  v75 = v6 + 8;
  v13(v10, v5);
  v69 = type metadata accessor for OnboardingHeaderView();
  v14 = (a1 + *(v69 + 36));
  v15 = v14[1];
  *&v133 = *v14;
  *(&v133 + 1) = v15;
  v16 = sub_21BB41FA4();

  v68[1] = v16;
  v17 = sub_21BE27DBC();
  v19 = v18;
  LOBYTE(v16) = v20;
  *&v133 = sub_21BE2832C();
  v21 = sub_21BE27D5C();
  v23 = v22;
  LOBYTE(v10) = v24;
  sub_21BBC7C7C(v17, v19, v16 & 1);

  sub_21BE27BDC();
  v25 = sub_21BE27D9C();
  v27 = v26;
  LOBYTE(a2) = v28;

  sub_21BBC7C7C(v21, v23, v10 & 1);

  v29 = sub_21BE27D8C();
  v31 = v30;
  LOBYTE(v10) = v32;
  v34 = v33;
  sub_21BBC7C7C(v25, v27, a2 & 1);

  LOBYTE(v25) = sub_21BE27B8C();
  sub_21BE26E0C();
  LOBYTE(v90) = v10 & 1;
  LOBYTE(v110) = 0;
  *&v117 = v29;
  *(&v117 + 1) = v31;
  LOBYTE(v118) = v10 & 1;
  *(&v118 + 1) = v34;
  LOBYTE(v119) = v25;
  *(&v119 + 1) = v35;
  *&v120 = v36;
  *(&v120 + 1) = v37;
  *&v121 = v38;
  BYTE8(v121) = 0;
  sub_21BD60F4C(&v117);
  v105 = v121;
  v106 = v122;
  v107[0] = v123[0];
  *(v107 + 10) = *(v123 + 10);
  v101 = v117;
  v102 = v118;
  v103 = v119;
  v104 = v120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB600, &qword_21BE47628);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7940, &qword_21BE47630);
  sub_21BD60F58();
  sub_21BC35268();
  sub_21BE2784C();
  v128 = v137;
  v129 = v138;
  v130[0] = v139[0];
  *(v130 + 10) = *(v139 + 10);
  v124 = v133;
  v125 = v134;
  v126 = v135;
  v127 = v136;
  *(v132 + 10) = *(v139 + 10);
  v132[0] = v139[0];
  v131[5] = v138;
  v131[4] = v137;
  v131[3] = v136;
  v131[2] = v135;
  v131[1] = v134;
  v131[0] = v133;
  sub_21BBA3854(&v124, &v101, &qword_27CDBB610, &qword_21BE47638);
  sub_21BB3A4CC(v131, &qword_27CDBB610, &qword_21BE47638);
  KeyPath = swift_getKeyPath();
  v135 = v126;
  v136 = v127;
  *(v139 + 10) = *(v130 + 10);
  v139[0] = v130[0];
  v138 = v129;
  v137 = v128;
  v133 = v124;
  v134 = v125;
  *&v139[2] = KeyPath;
  WORD4(v139[2]) = 1;
  BYTE10(v139[2]) = 1;
  v40 = (v70 + *(v69 + 40));
  v41 = v40[1];
  if (v41)
  {
    *&v101 = *v40;
    *(&v101 + 1) = v41;

    v42 = sub_21BE27DBC();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = sub_21BE27B8C();
    sub_21BE26E0C();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = v46 & 1;
    LOBYTE(v101) = v46 & 1;
    LOBYTE(v90) = 0;
    v59 = sub_21BE2832C();
    v60 = sub_21BE27BFC();
    v61 = swift_getKeyPath();
    v62 = swift_getKeyPath();
    *&v110 = v42;
    *(&v110 + 1) = v44;
    LOBYTE(v111) = v58;
    *(&v111 + 1) = v48;
    LOBYTE(v112) = v49;
    *(&v112 + 1) = v51;
    *&v113 = v53;
    *(&v113 + 1) = v55;
    *&v114 = v57;
    BYTE8(v114) = 0;
    *&v115 = v59;
    *(&v115 + 1) = v61;
    *&v116[0] = v60;
    *(&v116[0] + 1) = v62;
    LOWORD(v116[1]) = 1;
    BYTE2(v116[1]) = 1;
  }

  else
  {
    v115 = 0u;
    memset(v116, 0, 19);
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v110 = 0u;
  }

  v63 = v77;
  v64 = v78;
  v65 = v73;
  (*(v71 + 16))();
  v96 = v139[0];
  v97[0] = v139[1];
  *(v97 + 11) = *(&v139[1] + 11);
  v92 = v135;
  v93 = v136;
  v94 = v137;
  v95 = v138;
  v90 = v133;
  v91 = v134;
  v98[0] = v64;
  v98[1] = &v90;
  v87 = v114;
  v88 = v115;
  v89[0] = v116[0];
  *(v89 + 15) = *(v116 + 15);
  v83 = v110;
  v84 = v111;
  v85 = v112;
  v86 = v113;
  v98[2] = &v83;
  sub_21BBA3854(&v133, &v101, &qword_27CDBB5F0, &qword_21BE47618);
  sub_21BBA3854(&v110, &v101, &qword_27CDBB5F8, &qword_21BE47620);
  v82[0] = v63;
  v82[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB5F0, &qword_21BE47618);
  v82[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB5F8, &qword_21BE47620);
  v79 = WitnessTable;
  v80 = sub_21BD611D8(&qword_27CDBB618, &qword_27CDBB5F0, &qword_21BE47618, sub_21BD60FE4);
  v81 = sub_21BD61128();
  sub_21BDFE148(v98, 3uLL, v82);
  sub_21BB3A4CC(&v110, &qword_27CDBB5F8, &qword_21BE47620);
  sub_21BB3A4CC(&v133, &qword_27CDBB5F0, &qword_21BE47618);
  v66 = v74;
  v74(v65, v63);
  v99[4] = v87;
  v99[5] = v88;
  v100[0] = v89[0];
  *(v100 + 15) = *(v89 + 15);
  v99[0] = v83;
  v99[1] = v84;
  v99[2] = v85;
  v99[3] = v86;
  sub_21BB3A4CC(v99, &qword_27CDBB5F8, &qword_21BE47620);
  v107[0] = v96;
  v107[1] = v97[0];
  *(&v107[1] + 11) = *(v97 + 11);
  v103 = v92;
  v104 = v93;
  v105 = v94;
  v106 = v95;
  v101 = v90;
  v102 = v91;
  sub_21BB3A4CC(&v101, &qword_27CDBB5F0, &qword_21BE47618);
  return v66(v78, v63);
}

unint64_t sub_21BD60F58()
{
  result = qword_27CDBB608;
  if (!qword_27CDBB608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB600, &qword_21BE47628);
    sub_21BC35268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB608);
  }

  return result;
}

unint64_t sub_21BD60FE4()
{
  result = qword_27CDBB620;
  if (!qword_27CDBB620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB628, &unk_21BE47670);
    sub_21BD6109C();
    sub_21BB3B038(&qword_27CDB5D40, &qword_27CDB5D48, &unk_21BE33650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB620);
  }

  return result;
}

unint64_t sub_21BD6109C()
{
  result = qword_27CDBB630;
  if (!qword_27CDBB630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB610, &qword_21BE47638);
    sub_21BD60F58();
    sub_21BC35268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB630);
  }

  return result;
}

unint64_t sub_21BD61128()
{
  result = qword_27CDBB638;
  if (!qword_27CDBB638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB5F8, &qword_21BE47620);
    sub_21BD611D8(&qword_27CDBB640, &qword_27CDBB648, &qword_21BE47680, sub_21BD6125C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB638);
  }

  return result;
}

uint64_t sub_21BD611D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BD6125C()
{
  result = qword_27CDBB650;
  if (!qword_27CDBB650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB658, &qword_21BE47688);
    sub_21BD61314();
    sub_21BB3B038(&qword_27CDB5D40, &qword_27CDB5D48, &unk_21BE33650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB650);
  }

  return result;
}

unint64_t sub_21BD61314()
{
  result = qword_27CDBB660;
  if (!qword_27CDBB660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB668, &qword_21BE47690);
    sub_21BD613CC();
    sub_21BB3B038(&unk_27CDBC3F0, &qword_27CDB5D50, &qword_21BE36430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB660);
  }

  return result;
}

unint64_t sub_21BD613CC()
{
  result = qword_27CDBB670;
  if (!qword_27CDBB670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB678, &qword_21BE47698);
    sub_21BC35268();
    sub_21BB3B038(&qword_27CDBB680, qword_27CDBB688, &unk_21BE476A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB670);
  }

  return result;
}

uint64_t sub_21BD614C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  return sub_21BD615D4();
}

uint64_t sub_21BD61540()
{
  MEMORY[0x21CF05D90](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21BD615D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  sub_21BE283EC();
  return v1;
}

uint64_t sub_21BD6161C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a6;
  v31 = a4;
  v32 = a3;
  v38 = a7;
  v37 = *(a5 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v12;
  type metadata accessor for NavigationControllerReader.ReaderRepresentable();
  v29 = sub_21BE2719C();
  WitnessTable = swift_getWitnessTable();
  v49 = WitnessTable;
  v50 = MEMORY[0x277CDF900];
  v36 = MEMORY[0x277CDFAD8];
  v30 = swift_getWitnessTable();
  v33 = sub_21BE2782C();
  v13 = sub_21BE2719C();
  v34 = *(v13 - 8);
  v14 = *(v34 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  v45 = a1;
  v46 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB818, &qword_21BE47848);
  sub_21BE283FC();
  Strong = swift_unknownObjectWeakLoadStrong();

  v32(Strong);

  v41 = a1;
  v42 = a2;
  sub_21BE2841C();
  v41 = v45;
  v42 = v46;
  v43 = v47;
  sub_21BE2814C();

  v41 = v45;
  v42 = v46;
  v43 = v47;
  v44 = v48;
  sub_21BE2869C();
  v21 = v28;
  v22 = v35;
  sub_21BE27E9C();

  (*(v37 + 8))(v11, v21);
  v23 = swift_getWitnessTable();
  v39 = v22;
  v40 = v23;
  swift_getWitnessTable();
  sub_21BD37338(v17);
  v24 = *(v34 + 8);
  v24(v17, v13);
  sub_21BD37338(v19);
  return (v24)(v19, v13);
}

uint64_t sub_21BD61A0C()
{
  v1 = v0 + qword_27CDBB710;
  v2 = *(v0 + qword_27CDBB710);
  v3 = *(v0 + qword_27CDBB710 + 8);
  v4 = *(v1 + 16);

  return v2;
}

id sub_21BD61AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *MEMORY[0x277D85000];
  v6 = (v3 + qword_27CDBB710);
  *v6 = a1;
  v6[1] = a2;
  v6[2] = a3;
  v7 = *((v5 & v4) + 0x50);
  v8 = *((v5 & v4) + 0x58);
  v10.receiver = v3;
  v10.super_class = type metadata accessor for NavigationControllerReader.Reader();
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

void sub_21BD61B40()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for NavigationControllerReader.Reader();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_21BD61C1C(void *a1)
{
  v1 = a1;
  sub_21BD61B40();
}

void sub_21BD61C64(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_21BD625DC();
}

void sub_21BD61CD0(uint64_t a1, char a2)
{
  v5 = *((*MEMORY[0x277D85000] & *v2) + 0x50);
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x58);
  v7.receiver = v2;
  v7.super_class = type metadata accessor for NavigationControllerReader.Reader();
  objc_msgSendSuper2(&v7, sel_viewDidMoveToWindow_shouldAppearOrDisappear_, a1, a2 & 1);
  if (a1)
  {
    sub_21BD61ED0();
  }
}

void sub_21BD61D68(void *a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3;
  v8 = a1;
  sub_21BD61CD0(a3, a4);
}

void sub_21BD61DDC(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NavigationControllerReader.Reader();
  objc_msgSendSuper2(&v5, sel_didMoveToParentViewController_, a1);
  if (a1)
  {
    sub_21BD61ED0();
  }
}

void sub_21BD61E64(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_21BD61DDC(a3);
}

void sub_21BD61ED0()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = sub_21BD620F4(v1);

    v12 = sub_21BD61A0C();
    v13 = v4;
    v14 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDBB820, &unk_21BE47850);
    MEMORY[0x21CF036E0](&v11);

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      if (v3)
      {

        if (Strong == v3)
        {

          return;
        }
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_9;
    }

    if (v3)
    {
LABEL_9:
      v12 = sub_21BD61A0C();
      v13 = v8;
      v14 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v11 = v10;
      sub_21BE2854C();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_21BD62064(void *a1)
{
  v2 = [a1 nextResponder];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  result = [a1 nextResponder];
  if (result)
  {
    v5 = result;
    v6 = sub_21BD62064();

    return v6;
  }

  return result;
}

id sub_21BD620F4(void *a1)
{
  v1 = a1;
  while (1)
  {
    v2 = v1;
    v3 = sub_21BD62064(v2);
    if (v3)
    {
      break;
    }

LABEL_3:
    v1 = [v2 superview];

    if (!v1)
    {
      return v1;
    }
  }

  v4 = v3;
  v1 = [v3 navigationController];

  if (!v1)
  {
    goto LABEL_3;
  }

  return v1;
}

void sub_21BD621AC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v5 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v6 = a4;

  sub_21BD62638();
}

id sub_21BD6221C()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for NavigationControllerReader.Reader();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_21BD6228C(uint64_t a1)
{
  v1 = *(a1 + qword_27CDBB710);
  v2 = *(a1 + qword_27CDBB710 + 8);
  v3 = *(a1 + qword_27CDBB710 + 16);
}

uint64_t sub_21BD622F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21BD623A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDBB820, &unk_21BE47850);
  sub_21BE2856C();
  return v1;
}

id sub_21BD623F8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  return sub_21BD626C0();
}

uint64_t sub_21BD6240C(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return sub_21BD62758(a1);
}

uint64_t sub_21BD62418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_21BD62494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_21BD62510()
{
  swift_getWitnessTable();
  sub_21BE27ABC();
  __break(1u);
}

void sub_21BD62550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + qword_27CDBB710);
  v5 = *(v3 + qword_27CDBB710);
  v6 = *(v3 + qword_27CDBB710 + 8);
  v7 = *(v3 + qword_27CDBB710 + 16);
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;

  sub_21BD61ED0();
}

uint64_t sub_21BD62668()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_21BD626C0()
{
  v0 = type metadata accessor for NavigationControllerReader.Reader();
  v1 = sub_21BD623A4();
  v3 = v2;
  v5 = v4;
  v6 = objc_allocWithZone(v0);
  return sub_21BD61AB4(v1, v3, v5);
}

uint64_t sub_21BD62758(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v3 = sub_21BD623A4();
  sub_21BD62550(v3, v4, v5);
}

uint64_t sub_21BD62830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a2;
  v36 = a4;
  v6 = type metadata accessor for CircleStateControllerHostView(0);
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB8C0, &unk_21BE47A80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8418, &qword_21BE3B9C0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  if (!a3)
  {
    goto LABEL_10;
  }

  if (!*(a3 + 40))
  {
    __break(1u);
LABEL_10:
    type metadata accessor for ServicesStore();
    sub_21BD63704(&qword_27CDB5750, type metadata accessor for ServicesStore);
    result = sub_21BE2726C();
    __break(1u);
    return result;
  }

  swift_retain_n();

  sub_21BE262BC();

  if ((*(v15 + 88))(v18, v14) == *MEMORY[0x277D07FD8])
  {

    (*(v15 + 8))(v18, v14);
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    v21 = sub_21BE2599C();
    v23 = v22;

    v37 = v21;
    v38 = v23;
    sub_21BB41FA4();
    *v13 = sub_21BE27DBC();
    *(v13 + 1) = v24;
    v13[16] = v25 & 1;
    *(v13 + 3) = v26;
    swift_storeEnumTagMultiPayload();
    sub_21BD63704(&qword_27CDB7BF8, type metadata accessor for CircleStateControllerHostView);
    v27 = v36;
    sub_21BE2784C();
    v28 = 0;
  }

  else
  {
    (*(v15 + 8))(v18, v14);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v29 = sub_21BCE6070(a1, v35, v37);

    if (v29)
    {
      v30 = v6[5];
      v31 = @"FACircleEventTypeSharedService";
      sub_21BCE7090(v29, v9 + v30);

      *v9 = v31;
      *(v9 + v6[6]) = 0;
      v32 = (v9 + v6[7]);
      *v32 = &unk_21BE39410;
      v32[1] = 0;
      sub_21BD634F4(v9, v13);
      swift_storeEnumTagMultiPayload();
      sub_21BD63704(&qword_27CDB7BF8, type metadata accessor for CircleStateControllerHostView);
      v27 = v36;
      sub_21BE2784C();

      sub_21BC77378(v9);
      v28 = 0;
    }

    else
    {

      v28 = 1;
      v27 = v36;
    }
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB8C8, &qword_21BE47AD8);
  return (*(*(v33 - 8) + 56))(v27, v28, 1, v33);
}

uint64_t sub_21BD62D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = sub_21BE28D7C();
  v4[7] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v4[8] = v7;
  v4[9] = v6;

  return MEMORY[0x2822009F8](sub_21BD62E48, v7, v6);
}

uint64_t sub_21BD62E48()
{
  if (v0[3])
  {
    v1 = v0[6];

    v0[10] = sub_21BE28D6C();
    v3 = sub_21BE28D0C();
    v0[11] = v3;
    v0[12] = v2;

    return MEMORY[0x2822009F8](sub_21BD62F50, v3, v2);
  }

  else
  {
    v4 = v0[4];
    type metadata accessor for ServicesStore();
    sub_21BD63704(&qword_27CDB5750, type metadata accessor for ServicesStore);

    return sub_21BE2726C();
  }
}

void sub_21BD62F50()
{
  v1 = *(v0[3] + 40);
  v0[13] = v1;
  if (v1)
  {
    v2 = v0[5];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FD0] + 4);
    v7 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_21BD63064;
    v6 = v0[5];

    v7(v0 + 2, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BD63064()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 112);
  v5 = *v1;

  v6 = *(v2 + 104);
  v7 = *(v2 + 40);
  if (v0)
  {

    sub_21BBDE578(v7);
    v8 = *(v3 + 88);
    v9 = *(v3 + 96);
    v10 = sub_21BD632B8;
  }

  else
  {
    sub_21BBDE578(v7);

    v8 = *(v3 + 88);
    v9 = *(v3 + 96);
    v10 = sub_21BD631D4;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_21BD631D4()
{
  v1 = v0[10];
  v2 = v0[3];

  v3 = v0[2];

  v4 = v0[8];
  v5 = v0[9];

  return MEMORY[0x2822009F8](sub_21BD6324C, v4, v5);
}

uint64_t sub_21BD6324C()
{
  v1 = v0[7];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21BD632B8()
{
  v1 = v0[10];
  v2 = v0[3];

  v3 = v0[8];
  v4 = v0[9];

  return MEMORY[0x2822009F8](sub_21BD6374C, v3, v4);
}

uint64_t sub_21BD63328@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = sub_21BE2770C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB8A8, &qword_21BE47A50);
  sub_21BD62830(v4, v3, v6, a1 + *(v7 + 44));
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = v3;
  v8[4] = v6;
  v8[5] = v5;
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB8B0, &qword_21BE47A68) + 36));
  LODWORD(v4) = *(sub_21BE2701C() + 20);

  sub_21BE28D8C();
  *v9 = &unk_21BE47A60;
  v9[1] = v8;
  v10 = sub_21BE271CC();
  LOBYTE(v6) = sub_21BE27B7C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB8B8, &unk_21BE47A70);
  v12 = a1 + *(result + 36);
  *v12 = v10;
  *(v12 + 8) = v6;
  return result;
}

uint64_t sub_21BD63448()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21BBA6A64;

  return sub_21BD62D74(v2, v3, v5, v4);
}

uint64_t sub_21BD634F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CircleStateControllerHostView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21BD63558()
{
  result = qword_27CDBB8D0;
  if (!qword_27CDBB8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB8B8, &unk_21BE47A70);
    sub_21BD635E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB8D0);
  }

  return result;
}

unint64_t sub_21BD635E4()
{
  result = qword_27CDBB8D8;
  if (!qword_27CDBB8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB8B0, &qword_21BE47A68);
    sub_21BD636A0();
    sub_21BD63704(&qword_27CDB5058, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB8D8);
  }

  return result;
}

unint64_t sub_21BD636A0()
{
  result = qword_27CDBB8E0;
  if (!qword_27CDBB8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB8E8, qword_21BE47AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB8E0);
  }

  return result;
}

uint64_t sub_21BD63704(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BD63750(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_21BD6381C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BD638CC(uint64_t a1, char a2)
{
  *(v3 + 341) = a2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v2;
  v4 = sub_21BE26A4C();
  *(v3 + 264) = v4;
  v5 = *(v4 - 8);
  *(v3 + 272) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 280) = swift_task_alloc();
  sub_21BE28D7C();
  *(v3 + 288) = sub_21BE28D6C();
  v8 = sub_21BE28D0C();
  *(v3 + 296) = v8;
  *(v3 + 304) = v7;

  return MEMORY[0x2822009F8](sub_21BD639C4, v8, v7);
}

uint64_t sub_21BD639C4()
{
  v1 = [*(*(v0 + 256) + OBJC_IVAR____TtC14FamilyCircleUI24ChildRepairFlowViewModel_childMember) dsid];
  *(v0 + 312) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 341);
    v5 = *(v0 + 248);
    v4 = *(v0 + 256);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7EF8, &unk_21BE40470);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BE32770;
    *(inited + 32) = v5;
    *(inited + 64) = MEMORY[0x277D839B0];
    *(inited + 40) = v3;
    v7 = v2;
    v8 = v5;
    sub_21BBB6848(inited);
    swift_setDeallocating();
    sub_21BC545C8(inited + 32);
    v9 = objc_allocWithZone(MEMORY[0x277D08350]);
    type metadata accessor for FAUpdateMemberFlagKey(0);
    sub_21BC54630();
    v10 = sub_21BE288EC();

    v11 = [v9 initWithFamilyMemberDSID:v7 flags:v10];
    *(v0 + 320) = v11;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 336) = 1;

    sub_21BE26CBC();
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 337;
    *(v0 + 24) = sub_21BD63C9C;
    v12 = swift_continuation_init();
    *(v0 + 208) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7F00, &qword_21BE40480);
    *(v0 + 152) = MEMORY[0x277D85DD0];
    *(v0 + 160) = 1107296256;
    *(v0 + 168) = sub_21BD63750;
    *(v0 + 176) = &block_descriptor_45;
    *(v0 + 184) = v12;
    [v11 startRequestWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v13 = *(v0 + 288);

    v14 = *(v0 + 280);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_21BD63C9C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 328) = v3;
  v4 = *(v1 + 304);
  v5 = *(v1 + 296);
  if (v3)
  {
    v6 = sub_21BD63E98;
  }

  else
  {
    v6 = sub_21BD63DCC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21BD63DCC()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 288);
  v4 = *(v0 + 256);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 340) = 0;

  sub_21BE26CBC();

  v5 = *(v0 + 280);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_21BD63E98()
{
  v31 = v0;
  v1 = *(v0 + 328);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);

  swift_willThrow();
  sub_21BE2614C();
  v4 = v1;
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FDC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 328);
    v9 = *(v0 + 272);
    v8 = *(v0 + 280);
    v10 = *(v0 + 264);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    v15 = *(v0 + 232);
    v16 = sub_21BE29A5C();
    v18 = sub_21BB3D81C(v16, v17, &v30);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_21BB35000, v5, v6, "Update member flag call failed with error: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v20 = *(v0 + 272);
    v19 = *(v0 + 280);
    v21 = *(v0 + 264);

    (*(v20 + 8))(v19, v21);
  }

  v23 = *(v0 + 320);
  v22 = *(v0 + 328);
  v24 = *(v0 + 312);
  v25 = *(v0 + 280);
  v26 = *(v0 + 256);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 338) = 0;

  sub_21BE26CBC();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 339) = 1;

  sub_21BE26CBC();
  swift_willThrow();

  v27 = *(v0 + 8);
  v28 = *(v0 + 328);

  return v27();
}

uint64_t sub_21BD6410C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC14FamilyCircleUI24ChildRepairFlowViewModel_flowOrigin);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t sub_21BD6429C()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI24ChildRepairFlowViewModel__currentScreen;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB938, &unk_21BE47D90);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14FamilyCircleUI24ChildRepairFlowViewModel__showGenericAlert;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC14FamilyCircleUI24ChildRepairFlowViewModel__isLoading, v4);
  v5(v0 + OBJC_IVAR____TtC14FamilyCircleUI24ChildRepairFlowViewModel__dismissSheet, v4);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChildRepairFlowViewModel()
{
  result = qword_27CDBB910;
  if (!qword_27CDBB910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD64440()
{
  sub_21BC46D8C(319, &qword_27CDBB920);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_21BC46D8C(319, &qword_280BD6A70);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_21BD64568()
{
  result = qword_27CDBB928;
  if (!qword_27CDBB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB928);
  }

  return result;
}

uint64_t sub_21BD645BC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ChildRepairFlowViewModel();
  result = sub_21BE26C0C();
  *a1 = result;
  return result;
}

unint64_t sub_21BD64600()
{
  result = qword_27CDBB930;
  if (!qword_27CDBB930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBB930);
  }

  return result;
}

uint64_t sub_21BD64654@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BD646D4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t get_enum_tag_for_layout_string_14FamilyCircleUI18FAInformativeLabelV6ActionVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_21BD6477C(uint64_t a1, int a2)
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

uint64_t sub_21BD647C4(uint64_t result, int a2, int a3)
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

double sub_21BD64840@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 3);
  if (v3)
  {
    v5 = *(v1 + 4);
    v4 = *(v1 + 5);
    v6 = *(v1 + 2);
    v27 = *v1;
    v24 = v27;
    if (v1[3])
    {
      v7 = 10;
    }

    else
    {
      v7 = 32;
    }

    sub_21BBC8120(&v27, &v19);
    MEMORY[0x21CF03CA0](v7, 0xE100000000000000);

    MEMORY[0x21CF03CA0](91, 0xE100000000000000);
    MEMORY[0x21CF03CA0](v6, v3);
    MEMORY[0x21CF03CA0](10333, 0xE200000000000000);
    MEMORY[0x21CF03CA0](v5, v4);
    MEMORY[0x21CF03CA0](41, 0xE100000000000000);
    sub_21BE2767C();
    v19 = sub_21BE27DAC();
    v20 = v8;
    v21 = v9 & 1;
    v22 = v10;
    v23 = 0;
  }

  else
  {
    v12 = *v1;
    v11 = *(v1 + 1);

    sub_21BE2767C();
    v19 = sub_21BE27DAC();
    v20 = v14;
    v21 = v13 & 1;
    v22 = v15;
    v23 = 1;
  }

  sub_21BE2784C();
  result = *&v24;
  v17 = v25;
  v18 = v26;
  *a1 = v24;
  *(a1 + 16) = v17;
  *(a1 + 32) = v18;
  return result;
}

id FAImageMarqueeViewWrapperImpl.__allocating_init(familyCircle:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController] = 0;
  *&v3[OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_familyCircle] = a1;
  v4 = a1;
  v5 = [v4 members];
  sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
  v6 = sub_21BE28C3C();

  *&v3[OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_membersToRender] = v6;
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id FAImageMarqueeViewWrapperImpl.init(familyCircle:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController] = 0;
  *&v1[OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_familyCircle] = a1;
  v2 = a1;
  v3 = [v2 members];
  sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
  v4 = sub_21BE28C3C();

  *&v1[OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_membersToRender] = v4;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for FAImageMarqueeViewWrapperImpl();
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

id FAImageMarqueeViewWrapperImpl.__allocating_init(membersToRender:familyCircle:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController] = 0;
  *&v5[OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_membersToRender] = a1;
  *&v5[OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_familyCircle] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id FAImageMarqueeViewWrapperImpl.init(membersToRender:familyCircle:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController] = 0;
  *&v2[OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_membersToRender] = a1;
  *&v2[OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl_familyCircle] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FAImageMarqueeViewWrapperImpl();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_21BD64E2C()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController;
  v2 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl____lazy_storage___viewController);
  }

  else
  {
    v4 = sub_21BD64ED8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}