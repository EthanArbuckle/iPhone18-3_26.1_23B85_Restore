uint64_t sub_2457A4754(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 56) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2457A48A4, 0, 0);
  }
}

uint64_t sub_2457A48A4()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = [*(v0 + 56) aclData];
    v3 = sub_24590C154();
    v5 = v4;

    v6 = [v1 aclType];
  }

  else
  {
    v6 = 0;
    v3 = 0;
    v5 = 0xF000000000000000;
  }

  v7 = *(v0 + 8);

  return v7(v3, v5, v6, v1 == 0);
}

uint64_t sub_2457A4984()
{
  v1[2] = v0;
  v2 = sub_24590EA74();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_24590F354();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2457A4AAC, 0, 0);
}

uint64_t sub_2457A4AAC()
{
  v1 = sub_2457A7A78();
  v0[10] = v1;
  if (v1 == 2)
  {
    sub_24590C714();
    v16 = sub_24590F344();
    v17 = sub_245910F54();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_245767000, v16, v17, "Using passcode binding unbound acl", v18, 2u);
      MEMORY[0x245D77B40](v18, -1, -1);
    }

    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[6];
    v22 = v0[2];

    (*(v20 + 8))(v19, v21);
    v23 = v22[4];
    v24 = v22[5];
    __swift_project_boxed_opaque_existential_1(v22 + 1, v23);
    v28 = (*(v24 + 32) + **(v24 + 32));
    v25 = swift_task_alloc();
    v0[12] = v25;
    *v25 = v0;
    v25[1] = sub_2457A5108;
    v12 = v23;
    v13 = v24;
    v14 = v28;

    return v14(v12, v13);
  }

  if (v1 == 1)
  {
    sub_24590C714();
    v2 = sub_24590F344();
    v3 = sub_245910F54();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_245767000, v2, v3, "Using bio binding unbound acl", v4, 2u);
      MEMORY[0x245D77B40](v4, -1, -1);
    }

    v5 = v0[9];
    v6 = v0[6];
    v7 = v0[7];
    v8 = v0[2];

    (*(v7 + 8))(v5, v6);
    v9 = v8[4];
    v10 = v8[5];
    __swift_project_boxed_opaque_existential_1(v8 + 1, v9);
    v27 = (*(v10 + 24) + **(v10 + 24));
    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = sub_2457A4F8C;
    v12 = v9;
    v13 = v10;
    v14 = v27;

    return v14(v12, v13);
  }

  (*(v0[4] + 104))(v0[5], *MEMORY[0x277CFFC00], v0[3]);
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_2457AA3A8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  v26 = v0[1];

  return v26();
}

uint64_t sub_2457A4F8C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  v11 = *(v7 + 8);
  if (!v2)
  {
    v10 = *(v6 + 80);
    v8 = a1;
    v9 = a2;
  }

  return v11(v8, v9, v10);
}

uint64_t sub_2457A5108(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  v11 = *(v7 + 8);
  if (!v2)
  {
    v10 = *(v6 + 80);
    v8 = a1;
    v9 = a2;
  }

  return v11(v8, v9, v10);
}

uint64_t sub_2457A5284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[25] = a6;
  v7[26] = v6;
  v7[23] = a4;
  v7[24] = a5;
  v7[21] = a2;
  v7[22] = a3;
  v7[20] = a1;
  v8 = sub_24590EA74();
  v7[27] = v8;
  v7[28] = *(v8 - 8);
  v7[29] = swift_task_alloc();
  v9 = sub_24590F354();
  v7[30] = v9;
  v7[31] = *(v9 - 8);
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2457A53F4, 0, 0);
}

uint64_t sub_2457A53F4()
{
  v30 = v0;
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "BiometricBindingEnrollmentProvider: Prompt for binding started", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v4 = v0[38];
  v5 = v0[30];
  v6 = v0[31];

  v7 = *(v6 + 8);
  v0[39] = v7;
  v7(v4, v5);
  type metadata accessor for SecAccessControl(0);
  v8 = sub_2459110B4();
  v0[40] = v8;
  v9 = v8;
  v10 = v0[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_245916930;
  *(inited + 32) = 1011;
  v12 = inited + 32;
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = 0;
  v13 = sub_2458B85B4(inited);
  swift_setDeallocating();
  v14 = v9;
  sub_245778F94(v12, &qword_27EE29058);
  v0[16] = v13;
  v15 = MEMORY[0x277D837D0];
  if (v10)
  {
    v17 = v0[24];
    v16 = v0[25];
    v29 = MEMORY[0x277D837D0];
    v27 = v17;
    v28 = v16;

    sub_2457A05A4(&v27, 2u);
  }

  v18 = v0[23];
  if (v18)
  {
    v19 = v0[22];
    v29 = v15;
    v27 = v19;
    v28 = v18;

    v18 = sub_2457A05A4(&v27, 0x406u);
  }

  (*(v0[26] + 48))(v18);
  v20 = v0[14];
  v21 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v20);
  v22 = v0[16];
  v0[41] = v22;
  v23 = sub_2457A0880(v22);
  v0[42] = v23;
  v26 = (*(v21 + 16) + **(v21 + 16));
  v24 = swift_task_alloc();
  v0[43] = v24;
  *v24 = v0;
  v24[1] = sub_2457A59A0;

  return v26(v14, 3, v23, v20, v21);
}

uint64_t sub_2457A59A0()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 320);

    v4 = sub_2457A5C4C;
  }

  else
  {
    v5 = *(v2 + 320);

    v4 = sub_2457A5B04;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2457A5B04()
{
  result = SecAccessControlCopyData();
  if (result)
  {
    v2 = result;

    v6 = sub_24590C154();
    v4 = v3;

    sub_24590C6C4();
    __swift_destroy_boxed_opaque_existential_1(v0 + 88);

    v5 = *(v0 + 8);

    return v5(v6, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2457A5C4C()
{
  v1 = v0[44];
  type metadata accessor for Code(0);
  v0[17] = -8;
  v2 = v1;
  sub_2457AA3A8(&qword_27EE28948, type metadata accessor for Code);
  v3 = sub_24590BEF4();

  if (v3)
  {
    sub_24590C714();
    v4 = sub_24590F344();
    v5 = sub_245910F64();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_245767000, v4, v5, "Biometric lockout status returned from LA", v6, 2u);
      MEMORY[0x245D77B40](v6, -1, -1);
    }

    v7 = v0[39];
    v8 = v0[36];
    v9 = v0[30];

    v7(v8, v9);
    v10 = swift_task_alloc();
    v0[45] = v10;
    *v10 = v0;
    v11 = sub_2457A6530;
LABEL_5:
    v10[1] = v11;

    return sub_2457A8C48();
  }

  v0[18] = -2;
  v13 = v0[44];
  v14 = v13;
  v15 = sub_24590BEF4();

  if (v15)
  {
    __swift_project_boxed_opaque_existential_1((v0[26] + 104), *(v0[26] + 128));
    if (sub_24590DB04())
    {
      sub_24590C714();
      v16 = sub_24590F344();
      v17 = sub_245910F64();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_245767000, v16, v17, "Biometric lockout status detected", v18, 2u);
        MEMORY[0x245D77B40](v18, -1, -1);
      }

      v19 = v0[39];
      v20 = v0[35];
      v21 = v0[30];

      v19(v20, v21);
      v10 = swift_task_alloc();
      v0[51] = v10;
      *v10 = v0;
      v11 = sub_2457A68D8;
      goto LABEL_5;
    }

    sub_24590C714();
    v36 = sub_24590F344();
    v37 = sub_245910F64();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_245767000, v36, v37, "Biometry error user cancelled", v38, 2u);
      MEMORY[0x245D77B40](v38, -1, -1);
    }

    v28 = v0[44];
    v39 = v0[39];
    v63 = v0[40];
    v40 = v0[34];
    v41 = v0[30];
    v43 = v0[28];
    v42 = v0[29];
    v44 = v0[27];

    v39(v40, v41);
    (*(v43 + 104))(v42, *MEMORY[0x277CFFA88], v44);
    v45 = v28;
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_2457AA3A8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    swift_allocError();
  }

  else
  {
    v22 = v0[44];
    v0[19] = -4;
    v23 = v22;
    v24 = sub_24590BEF4();

    if (v24)
    {
      sub_24590C714();
      v25 = sub_24590F344();
      v26 = sub_245910F64();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_245767000, v25, v26, "Biometry error system cancelled", v27, 2u);
        MEMORY[0x245D77B40](v27, -1, -1);
      }

      v28 = v0[44];
      v29 = v0[39];
      v63 = v0[40];
      v30 = v0[33];
      v31 = v0[30];
      v33 = v0[28];
      v32 = v0[29];
      v34 = v0[27];

      v29(v30, v31);
      (*(v33 + 104))(v32, *MEMORY[0x277CFFAD8], v34);
      v35 = v28;
      sub_2458CC8AC(MEMORY[0x277D84F90]);
      sub_24590EA84();
      sub_2457AA3A8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
      swift_allocError();
    }

    else
    {
      v46 = v0[44];
      sub_24590C714();
      v47 = v46;
      v48 = sub_24590F344();
      v49 = sub_245910F64();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = v0[44];
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v51 = 138412290;
        v53 = v50;
        v54 = _swift_stdlib_bridgeErrorToNSError();
        *(v51 + 4) = v54;
        *v52 = v54;
        _os_log_impl(&dword_245767000, v48, v49, "Biometry error from LA: %@", v51, 0xCu);
        sub_245778F94(v52, &qword_27EE297C0);
        MEMORY[0x245D77B40](v52, -1, -1);
        MEMORY[0x245D77B40](v51, -1, -1);
      }

      v28 = v0[44];
      v55 = v0[39];
      v63 = v0[40];
      v56 = v0[32];
      v57 = v0[29];
      v58 = v0[30];
      v59 = v0[27];
      v60 = v0[28];

      v55(v56, v58);
      (*(v60 + 104))(v57, *MEMORY[0x277CFFB00], v59);
      v61 = v28;
      sub_2458CC8AC(MEMORY[0x277D84F90]);
      sub_24590EA84();
      sub_2457AA3A8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
      swift_allocError();
    }
  }

  sub_24590EA94();
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1((v0 + 11));

  v62 = v0[1];

  return v62();
}

uint64_t sub_2457A6530()
{
  v2 = *v1;
  v2[46] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2457A6C80, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[47] = v3;
    *v3 = v2;
    v3[1] = sub_2457A66AC;
    v4 = v2[25];
    v5 = v2[23];
    v6 = v2[24];
    v7 = v2[21];
    v8 = v2[22];
    v9 = v2[20];

    return sub_2457A5284(v9, v7, v8, v5, v6, v4);
  }
}

uint64_t sub_2457A66AC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 384) = v2;

  if (v2)
  {
    v7 = sub_2457A6D5C;
  }

  else
  {
    *(v6 + 392) = a2;
    *(v6 + 400) = a1;
    v7 = sub_2457A67E0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2457A67E0()
{
  v1 = *(v0 + 392);
  v4 = *(v0 + 400);

  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  v2 = *(v0 + 8);

  return v2(v4, v1);
}

uint64_t sub_2457A68D8()
{
  v2 = *v1;
  v2[52] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2457A6E38, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[53] = v3;
    *v3 = v2;
    v3[1] = sub_2457A6A54;
    v4 = v2[25];
    v5 = v2[23];
    v6 = v2[24];
    v7 = v2[21];
    v8 = v2[22];
    v9 = v2[20];

    return sub_2457A5284(v9, v7, v8, v5, v6, v4);
  }
}

uint64_t sub_2457A6A54(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 432) = v2;

  if (v2)
  {
    v7 = sub_2457A6F14;
  }

  else
  {
    *(v6 + 440) = a2;
    *(v6 + 448) = a1;
    v7 = sub_2457A6B88;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2457A6B88()
{
  v1 = *(v0 + 440);
  v4 = *(v0 + 448);

  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  v2 = *(v0 + 8);

  return v2(v4, v1);
}

uint64_t sub_2457A6C80()
{
  v1 = *(v0 + 320);

  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2457A6D5C()
{
  v1 = *(v0 + 320);

  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2457A6E38()
{
  v1 = *(v0 + 320);

  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2457A6F14()
{
  v1 = *(v0 + 320);

  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2457A6FF0()
{
  v1[2] = v0;
  v2 = sub_24590EA74();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_24590F354();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2457A710C, 0, 0);
}

uint64_t sub_2457A710C()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F44();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "Fetching biometric binding attestations", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  v7 = v0[2];

  (*(v5 + 8))(v4, v6);
  v8 = v7[4];
  v9 = v7[5];
  __swift_project_boxed_opaque_existential_1(v7 + 1, v8);
  v12 = (*(v9 + 8) + **(v9 + 8));
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_2457A72D4;

  return v12(v8, v9);
}

uint64_t sub_2457A72D4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_2457A7740;
  }

  else
  {
    v4 = sub_2457A73E8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2457A73E8()
{
  v1 = *(v0 + 16);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_2457A7510;

  return v6(v2, v3);
}

uint64_t sub_2457A7510(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_2457A78D8;
  }

  else
  {
    v4 = sub_2457A7624;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2457A7624()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = [v1 attestationData];
    v3 = sub_24590C154();
    v5 = v4;

    v6 = *(v0 + 104);
    if (v6)
    {
LABEL_3:
      v7 = [v6 attestationData];
      v8 = sub_24590C154();
      v10 = v9;

      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    v5 = 0xF000000000000000;
    v6 = *(v0 + 104);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
  v10 = 0xF000000000000000;
LABEL_6:

  v11 = *(v0 + 8);

  return v11(v3, v5, v8, v10);
}

uint64_t sub_2457A7740()
{
  v1 = v0[11];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277CFF920], v0[3]);
  v2 = v1;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_2457AA3A8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2457A78D8()
{
  v1 = *(v0 + 112);
  (*(*(v0 + 32) + 104))(*(v0 + 40), *MEMORY[0x277CFF920], *(v0 + 24));
  v2 = v1;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_2457AA3A8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2457A7A78()
{
  v1 = sub_24590F354();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v20 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v20 - v10;
  v12 = *v0;
  if (((*(*v12 + 104))(v9) & 1) == 0)
  {
    if ((*(*v12 + 96))())
    {
      sub_24590C714();
      v13 = sub_24590F344();
      v17 = sub_245910F54();
      v16 = 2;
      if (!os_log_type_enabled(v13, v17))
      {
        v11 = v8;
        goto LABEL_11;
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_245767000, v13, v17, "Expecting passcode binding unbound acl", v15, 2u);
      v11 = v8;
    }

    else
    {
      sub_24590C714();
      v13 = sub_24590F344();
      v18 = sub_245910F54();
      if (!os_log_type_enabled(v13, v18))
      {
        v16 = 0;
        v11 = v5;
        goto LABEL_11;
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_245767000, v13, v18, "Invalid binding acl", v15, 2u);
      v16 = 0;
      v11 = v5;
    }

    goto LABEL_10;
  }

  sub_24590C714();
  v13 = sub_24590F344();
  v14 = sub_245910F54();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_245767000, v13, v14, "Expecting bio binding unbound acl", v15, 2u);
    v16 = 1;
LABEL_10:
    MEMORY[0x245D77B40](v15, -1, -1);
    goto LABEL_11;
  }

  v16 = 1;
LABEL_11:

  (*(v2 + 8))(v11, v1);
  return v16;
}

uint64_t sub_2457A7D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[42] = a2;
  v3[43] = a3;
  v3[41] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29040);
  v3[44] = v4;
  v3[45] = *(v4 - 8);
  v3[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  v3[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2457A7E68, 0, 0);
}

uint64_t sub_2457A7E68()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = sub_245910D64();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  sub_2457AA10C(v3, v0 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v7 = *(v0 + 128);
  *(v6 + 128) = *(v0 + 112);
  *(v6 + 144) = v7;
  *(v6 + 160) = *(v0 + 144);
  *(v6 + 176) = *(v0 + 160);
  v8 = *(v0 + 64);
  *(v6 + 64) = *(v0 + 48);
  *(v6 + 80) = v8;
  v9 = *(v0 + 96);
  *(v6 + 96) = *(v0 + 80);
  *(v6 + 112) = v9;
  v10 = *(v0 + 32);
  *(v6 + 32) = *(v0 + 16);
  *(v6 + 48) = v10;
  sub_2457A86BC(v1, &unk_245917068, v6);
  sub_245778F94(v1, &unk_27EE297B0);
  v5(v1, 1, 1, v4);
  sub_2457AA10C(v3, v0 + 168);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  v12 = *(v0 + 280);
  *(v11 + 128) = *(v0 + 264);
  *(v11 + 144) = v12;
  *(v11 + 160) = *(v0 + 296);
  *(v11 + 176) = *(v0 + 312);
  v13 = *(v0 + 216);
  *(v11 + 64) = *(v0 + 200);
  *(v11 + 80) = v13;
  v14 = *(v0 + 248);
  *(v11 + 96) = *(v0 + 232);
  *(v11 + 112) = v14;
  v15 = *(v0 + 184);
  *(v11 + 32) = *(v0 + 168);
  *(v11 + 48) = v15;
  sub_2457A86BC(v1, &unk_245917078, v11);
  sub_245778F94(v1, &unk_27EE297B0);
  *(v0 + 384) = *v2;
  *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
  sub_245910E04();
  v16 = swift_task_alloc();
  *(v0 + 400) = v16;
  *v16 = v0;
  v16[1] = sub_2457A8108;
  v17 = *(v0 + 352);

  return MEMORY[0x2822004E8](v0 + 408, 0, 0, v17, v0 + 320);
}

uint64_t sub_2457A8108()
{

  if (v0)
  {
    v1 = sub_2457A836C;
  }

  else
  {
    v1 = sub_2457A8218;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2457A8218()
{
  v1 = *(v0 + 408);
  if (v1 == 2)
  {
    v2 = 0;
LABEL_5:
    v3 = *(v0 + 328);
    (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));
    *v3 = v2;

    v4 = *(v0 + 8);

    return v4();
  }

  if (v1)
  {
    sub_245910E24();
    v2 = 1;
    goto LABEL_5;
  }

  v6 = swift_task_alloc();
  *(v0 + 400) = v6;
  *v6 = v0;
  v6[1] = sub_2457A8108;
  v7 = *(v0 + 352);

  return MEMORY[0x2822004E8](v0 + 408, 0, 0, v7, v0 + 320);
}

uint64_t sub_2457A836C()
{
  (*(v0[45] + 8))(v0[46], v0[44]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2457A83FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_2457A841C, 0, 0);
}

uint64_t sub_2457A841C()
{
  v1 = *(v0 + 24);
  v2 = v1[11];
  v3 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v2);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_2457A84D4;

  return MEMORY[0x2821513B0](v2, v3);
}

uint64_t sub_2457A84D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;

  if (v3)
  {
    v10 = v9[1];

    return v10();
  }

  else
  {
    v8[5] = a3;
    v8[6] = a2;
    v8[7] = a1;

    return MEMORY[0x2822009F8](sub_2457A8638, 0, 0);
  }
}

uint64_t sub_2457A8638()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);

  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  else
  {
    **(v0 + 16) = v1 + v2 > 0;
    v4 = *(v0 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_2457A86BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  sub_2457AA338(a1, v18 - v8);
  v10 = sub_245910D64();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_245778F94(v9, &unk_27EE297B0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_245910CD4();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_245910D54();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_2457A8898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 152) = a1;
  *(v4 + 160) = a4;
  return MEMORY[0x2822009F8](sub_2457A88B8, 0, 0);
}

uint64_t sub_2457A88B8()
{
  v1 = *(v0[20] + 144);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2457A89D8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29048);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2457A8B7C;
  v0[13] = &block_descriptor_6;
  v0[14] = v2;
  [v1 watchIdentityPassesCountWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2457A89D8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_2457A8B10;
  }

  else
  {
    v2 = sub_2457A8AE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2457A8B10()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2457A8B7C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
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

uint64_t sub_2457A8C48()
{
  v1[20] = v0;
  v2 = sub_24590EA74();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  sub_24590C234();
  v1[24] = swift_task_alloc();
  sub_2459109B4();
  v1[25] = swift_task_alloc();
  v3 = sub_24590F354();
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2457A8DBC, 0, 0);
}

uint64_t sub_2457A8DBC()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "Managing bio lockout", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 208);
  v7 = *(v0 + 160);

  v8 = (*(v5 + 8))(v4, v6);
  (*(v7 + 48))(v8);
  v9 = *(v0 + 144);
  v10 = *(v0 + 152);
  __swift_project_boxed_opaque_existential_1((v0 + 120), v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29008);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_245916930;
  *(v0 + 256) = 1030;
  sub_245911484();
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v12 = qword_27EE32B38;
  sub_24590C224();
  v13 = sub_245910A54();
  *(inited + 96) = MEMORY[0x277D837D0];
  *(inited + 72) = v13;
  *(inited + 80) = v14;
  v15 = sub_2458B86D0(inited);
  *(v0 + 232) = v15;
  swift_setDeallocating();
  sub_245778F94(inited + 32, &qword_27EE29010);
  v18 = (*(v10 + 8) + **(v10 + 8));
  v16 = swift_task_alloc();
  *(v0 + 240) = v16;
  *v16 = v0;
  v16[1] = sub_2457A90C0;

  return v18(2, v15, v9, v10);
}

uint64_t sub_2457A90C0()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_2457A9288;
  }

  else
  {

    v2 = sub_2457A91F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2457A91F0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 120);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2457A9288()
{
  v1 = v0[31];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];

  (*(v3 + 104))(v2, *MEMORY[0x277CFFBD0], v4);
  v5 = v1;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_2457AA3A8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1((v0 + 15));

  v6 = v0[1];

  return v6();
}

double sub_2457A9440@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_24588C5BC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24580CDB8();
      v10 = v12;
    }

    sub_2457AA3F0((*(v10 + 56) + 32 * v8), a3);
    sub_2457A9658(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_2457A94E4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2459113C4() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 4 * v6);
      result = MEMORY[0x245D76E40](*(a2 + 40), *v11, 4);
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 4 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (v3 != v6 || v17 >= v18 + 2)
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
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
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2457A9658(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2459113C4() + 1) & ~v5;
    do
    {
      sub_245911824();

      sub_245910AF4();
      v10 = sub_245911864();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2457A9808(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2459113C4() + 1) & ~v5;
    do
    {
      sub_245911824();

      sub_245910AF4();
      v9 = sub_245911864();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2457A99B8(uint64_t a1, unint64_t a2, char a3)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_24590C144();
  }

  v4[18] = v6;
  v4[2] = v4;
  v4[3] = sub_2457A9AF8;
  v7 = swift_continuation_init();
  v4[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FF0);
  v4[10] = MEMORY[0x277D85DD0];
  v4[11] = 1107296256;
  v4[12] = sub_24579D0B4;
  v4[13] = &block_descriptor_57;
  v4[14] = v7;
  [v3 refreshProgenitorKeyDesignationsWithSessionHandoffToken:v6 onlyIfNeeded:a3 & 1 completion:v4 + 10];

  return MEMORY[0x282200938](v4 + 2);
}

uint64_t sub_2457A9AF8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 144);
  if (*(v1 + 48))
  {
    swift_willThrow();
  }

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_2457A9C18(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a2)
  {
    v6 = sub_2459108E4();
  }

  else
  {
    v6 = 0;
  }

  v3[19] = v6;
  v3[2] = v3;
  v3[7] = v3 + 18;
  v3[3] = sub_2457A9D80;
  v7 = swift_continuation_init();
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29018);
  v3[10] = MEMORY[0x277D85DD0];
  v3[11] = 1107296256;
  v3[12] = sub_24579F894;
  v3[13] = &block_descriptor_51;
  v3[14] = v7;
  [v4 evaluatePolicy:a1 options:v6 reply:v3 + 10];

  return MEMORY[0x282200938](v3 + 2);
}

uint64_t sub_2457A9D80()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 152);
  if (*(v1 + 48))
  {
    swift_willThrow();

    v5 = *(v3 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 144);

    v8 = *(v3 + 8);

    return v8(v7);
  }
}

uint64_t sub_2457A9EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  if (a3)
  {
    v8 = sub_2459108E4();
  }

  else
  {
    v8 = 0;
  }

  v4[19] = v8;
  v4[2] = v4;
  v4[7] = v4 + 18;
  v4[3] = sub_2457AA498;
  v9 = swift_continuation_init();
  v4[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29018);
  v4[10] = MEMORY[0x277D85DD0];
  v4[11] = 1107296256;
  v4[12] = sub_24579F894;
  v4[13] = &block_descriptor_45;
  v4[14] = v9;
  [v5 evaluateAccessControl:a1 operation:a2 options:v8 reply:v4 + 10];

  return MEMORY[0x282200938](v4 + 2);
}

uint64_t sub_2457AA05C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2457AA49C;

  return sub_2457A7D60(a1, a2, v6);
}

uint64_t sub_2457AA144(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2457AA49C;

  return sub_2457A83FC(a1, v4, v5, v1 + 32);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2457AA25C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2457AA49C;

  return sub_2457A8898(a1, v4, v5, v1 + 32);
}

uint64_t sub_2457AA338(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2457AA3A8(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_2457AA3F0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2457AA400()
{
  result = qword_27EE29080;
  if (!qword_27EE29080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE29080);
  }

  return result;
}

uint64_t sub_2457AA4AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_2459108F4();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

id sub_2457AA558()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController____lazy_storage___cancelButton;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController____lazy_storage___cancelButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController____lazy_storage___cancelButton);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v0 action:sel_cancelBarButtonClicked];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2457AA5E0(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_titleLabel;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6 = OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_textLabel;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v7 = OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_primaryButton;
  *&v2[v7] = [objc_opt_self() buttonWithType_];
  v8 = OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_context;
  *&v2[v8] = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  v9 = &v2[OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_delegate];
  *(v9 + 4) = 0;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController____lazy_storage___cancelButton] = 0;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController____lazy_storage___activityIndicator] = 0;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController____lazy_storage___activityIndicatorBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_target] = a1;
  *&v2[OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_biometricBindingController] = a2;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for BiometricBindingReplacementViewController();
  return objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
}

id sub_2457AA748()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v0 setView_];

  sub_2457AA988();
  sub_2457AAE74();
  sub_2457AB17C();
  v2 = [v0 navigationItem];
  v3 = sub_2457AA558();
  [v2 setLeftBarButtonItem_];

  result = [v0 view];
  if (result)
  {
    v5 = result;
    v6 = objc_opt_self();
    v7 = [v6 systemBackgroundColor];
    [v5 setBackgroundColor_];

    v8 = sub_24590C754();
    if (v8 == sub_24590C754())
    {
      [v0 setOverrideUserInterfaceStyle_];
      v9 = *&v0[OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_primaryButton];
      v10 = [v6 systemGray5Color];
      [v9 setBackgroundColor_];

      v11 = *&v0[OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController____lazy_storage___cancelButton];
      v12 = [v6 systemOrangeColor];
      [v11 setTintColor_];
    }

    v13 = *&v0[OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController____lazy_storage___cancelButton];

    return [v13 setEnabled_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2457AA988()
{
  v1 = sub_24590C234();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2459109B4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = *&v0[OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_titleLabel];
  [v3 setNumberOfLines_];
  v4 = [objc_opt_self() labelColor];
  [v3 setTextColor_];

  [v3 setAccessibilityTraits_];
  [v3 setTextAlignment_];
  [v3 setAdjustsFontForContentSizeCategory_];
  v5 = objc_opt_self();
  v6 = [v5 _preferredFontForTextStyle_maximumContentSizeCategory_];
  if (!v6)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  [v6 pointSize];
  v8 = [v5 systemFontOfSize_weight_];

  [v3 setFont_];
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v9 = qword_27EE32B38;
  sub_24590C224();
  sub_245910A54();
  v10 = sub_2459109C4();
  [v3 setText_];

  v11 = [v0 view];
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = v11;
  [v11 addSubview_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [v3 topAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = v14;
  v16 = [v14 safeAreaLayoutGuide];

  v17 = [v16 topAnchor];
  v18 = [v13 constraintEqualToAnchor:v17 constant:10.0];

  [v18 setActive_];
  v19 = [v3 leadingAnchor];
  v20 = [v0 view];
  if (!v20)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v21 = v20;
  v22 = [v20 leadingAnchor];

  v23 = [v19 constraintEqualToAnchor:v22 constant:20.0];
  [v23 setActive_];

  v24 = [v3 trailingAnchor];
  v25 = [v0 view];
  if (v25)
  {
    v26 = v25;

    v27 = [v26 trailingAnchor];

    v28 = [v24 constraintEqualToAnchor:v27 constant:-20.0];
    [v28 setActive_];

    return;
  }

LABEL_13:
  __break(1u);
}

void sub_2457AAE74()
{
  v1 = *&v0[OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_textLabel];
  [v1 setNumberOfLines_];
  v2 = [objc_opt_self() labelColor];
  [v1 setTextColor_];

  [v1 setTextAlignment_];
  [v1 setAdjustsFontForContentSizeCategory_];
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v1 setFont_];

  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  [v4 addSubview_];

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v1 topAnchor];
  v7 = [*&v0[OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_titleLabel] bottomAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:20.0];

  [v8 setActive_];
  v9 = [v1 leadingAnchor];
  v10 = [v0 view];
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  v12 = [v10 leadingAnchor];

  v13 = [v9 constraintEqualToAnchor:v12 constant:20.0];
  [v13 setActive_];

  v14 = [v1 trailingAnchor];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = [v15 trailingAnchor];

  v18 = [v14 constraintEqualToAnchor:v17 constant:-20.0];
  [v18 setActive_];
}

id sub_2457AB17C()
{
  v1 = *&v0[OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_primaryButton];
  v2 = objc_opt_self();
  v3 = [v2 systemBlueColor];
  [v1 setBackgroundColor_];

  [v1 addTarget:v0 action:sel_performBinding forControlEvents:64];
  v4 = [v1 layer];
  [v4 setCornerRadius_];

  v5 = [v2 whiteColor];
  [v1 setTintColor_];

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [v1 titleLabel];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() preferredFontForTextStyle_];
    [v7 setFont_];
  }

  v9 = [v1 titleLabel];
  if (v9)
  {
    v10 = v9;
    [v9 setAdjustsFontSizeToFitWidth_];
  }

  v11 = [v1 titleLabel];
  if (v11)
  {
    v12 = v11;
    [v11 setAdjustsFontForContentSizeCategory_];
  }

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = result;
  [result addSubview_];

  v15 = [v1 bottomAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = result;
  v17 = [result safeAreaLayoutGuide];

  v18 = [v17 bottomAnchor];
  v19 = [v15 constraintEqualToAnchor:v18 constant:-40.0];

  [v19 setActive_];
  v20 = [v1 leadingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = result;
  v22 = [result leadingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:20.0];
  [v23 setActive_];

  v24 = [v1 trailingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v25 = result;
  v26 = [result trailingAnchor];

  v27 = [v24 constraintEqualToAnchor:v26 constant:-20.0];
  [v27 setActive_];

  v28 = [v1 heightAnchor];
  v29 = [v28 constraintEqualToConstant_];

  [v29 setActive_];
  [v1 setEnabled_];

  return [v1 setHidden_];
}

uint64_t sub_2457AB5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a4;
  v5 = sub_24590F354();
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();
  v6 = sub_24590EA74();
  v4[34] = v6;
  v4[35] = *(v6 - 8);
  v4[36] = swift_task_alloc();
  v7 = sub_24590EA84();
  v4[37] = v7;
  v4[38] = *(v7 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  sub_245910D34();
  v4[41] = sub_245910D24();
  v9 = sub_245910CD4();
  v4[42] = v9;
  v4[43] = v8;

  return MEMORY[0x2822009F8](sub_2457AB7B4, v9, v8);
}

uint64_t sub_2457AB7B4()
{
  v1 = swift_task_alloc();
  *(v0 + 352) = v1;
  *v1 = v0;
  v1[1] = sub_2457AB850;

  return sub_24579DE54();
}

uint64_t sub_2457AB850(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 360) = a1;
  *(v4 + 368) = a2;

  v5 = *(v3 + 344);
  v6 = *(v3 + 336);

  return MEMORY[0x2822009F8](sub_2457AB978, v6, v5);
}

uint64_t sub_2457AB978()
{
  v1 = v0[46];

  if (v1 >> 60 == 15)
  {
    v2 = v0[30];
    (*(v0[35] + 104))(v0[36], *MEMORY[0x277CFFB38], v0[34]);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA94();
    v3 = OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_delegate;
    swift_beginAccess();
    sub_2457ACAB4(v2 + v3, (v0 + 17));
    v4 = v0[40];
    v5 = v0[37];
    v6 = v0[38];
    if (v0[20])
    {
      v7 = v0[30];
      sub_2457ACB24((v0 + 17), (v0 + 22));
      sub_245778F94((v0 + 17), &qword_27EE290D8);
      v8 = v0[25];
      v9 = v0[26];
      __swift_project_boxed_opaque_existential_1(v0 + 22, v8);
      sub_2457AD0C8(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
      v10 = swift_allocError();
      (*(v6 + 16))(v11, v4, v5);
      (*(v9 + 8))(v7, 0, 0xF000000000000000, v10, v8, v9);

      (*(v6 + 8))(v4, v5);
      __swift_destroy_boxed_opaque_existential_1((v0 + 22));
    }

    else
    {
      (*(v6 + 8))(v0[40], v0[37]);
      sub_245778F94((v0 + 17), &qword_27EE290D8);
    }
  }

  else
  {
    v12 = *(v0[30] + OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_context);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for SecAccessControl(0);

    v14 = sub_2459110B4();
    v16 = v0[45];
    v15 = v0[46];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_245916930;
    *(inited + 32) = 1011;
    v18 = inited + 32;
    *(inited + 64) = MEMORY[0x277D839B0];
    *(inited + 40) = 0;
    v19 = sub_2458B85B4(inited);
    swift_setDeallocating();
    v20 = v14;
    sub_245778F94(v18, &qword_27EE29058);
    v21 = v20;
    sub_2457A0880(v19);

    v22 = sub_2459108E4();

    v23 = swift_allocObject();
    *(v23 + 16) = sub_2457ACB88;
    *(v23 + 24) = v13;
    *(v23 + 32) = v21;
    *(v23 + 40) = 1;
    v0[15] = sub_2457AD054;
    v0[16] = v23;
    v0[11] = MEMORY[0x277D85DD0];
    v0[12] = 1107296256;
    v0[13] = sub_2457AA4AC;
    v0[14] = &block_descriptor_7;
    v24 = _Block_copy(v0 + 11);

    [v12 evaluateAccessControl:v21 operation:3 options:v22 reply:v24];
    sub_245771C44(v16, v15);

    _Block_release(v24);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_2457AC1B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_delegate;
  swift_beginAccess();
  sub_2457ACAB4(v1 + v3, v10);
  if (!v11)
  {
    return sub_245778F94(v10, &qword_27EE290D8);
  }

  sub_2457ACB24(v10, v7);
  sub_245778F94(v10, &qword_27EE290D8);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 16))(v1, a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_2457AC29C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_delegate;
  swift_beginAccess();
  sub_2457ACAB4(v2 + v5, v12);
  if (!v13)
  {
    return sub_245778F94(v12, &qword_27EE290D8);
  }

  sub_2457ACB24(v12, v9);
  sub_245778F94(v12, &qword_27EE290D8);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 8))(v2, a1, a2, 0, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_2457AC394()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_245910D64();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_245910D34();
  v5 = v0;
  v6 = sub_245910D24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_2458B90EC(0, 0, v3, &unk_2459171A8, v7);
}

uint64_t sub_2457AC4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_245910D34();
  v4[4] = sub_245910D24();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_2457AC574;

  return sub_24579FEB0();
}

uint64_t sub_2457AC574()
{
  *(*v1 + 48) = v0;

  v3 = sub_245910CD4();
  if (v0)
  {
    v4 = sub_2457AC77C;
  }

  else
  {
    v4 = sub_2457AC6D0;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_2457AC6D0()
{
  v1 = *(v0 + 16);

  (*((*MEMORY[0x277D85000] & *v1) + 0x150))(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2457AC77C()
{
  v1 = v0[6];
  v2 = v0[2];

  v3 = *((*MEMORY[0x277D85000] & *v2) + 0x138);
  v4 = v1;
  v3(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2457AC850()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_delegate;
  swift_beginAccess();
  sub_2457ACAB4(v0 + v1, &v5);
  if (!v6)
  {
    return sub_245778F94(&v5, &qword_27EE290D8);
  }

  sub_245771B9C(&v5, v7);
  v2 = v8;
  v3 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v3 + 16))(v0, 0, v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

id sub_2457AC990()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BiometricBindingReplacementViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2457ACAB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE290D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2457ACB24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2457ACB94()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_textLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_primaryButton;
  *(v0 + v3) = [objc_opt_self() buttonWithType_];
  v4 = OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_context;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  v5 = v0 + OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_delegate;
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController____lazy_storage___cancelButton) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController____lazy_storage___activityIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController____lazy_storage___activityIndicatorBarButtonItem) = 0;
  sub_2459115D4();
  __break(1u);
}

void sub_2457ACCC4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE2A800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v24 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = Strong;
  if (a2 >> 60 != 15)
  {
    v14 = *((*MEMORY[0x277D85000] & *Strong) + 0x140);
    sub_24578FB80(a1, a2);
    v14(a1, a2);
    sub_245771C44(a1, a2);
    goto LABEL_7;
  }

  if (!a3)
  {
LABEL_7:

    return;
  }

  v11 = sub_24590BF94();
  v27[0] = v11;
  sub_2457AD07C();
  sub_2457AD0C8(&qword_27EE290E8, sub_2457AD07C);
  sub_2459117E4();
  v12 = sub_24590EA74();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_245778F94(v8, &qword_27EE2A800);
  }

  else
  {
    v15 = (*(v13 + 88))(v8, v12);
    v16 = *MEMORY[0x277CFF9B0];
    v17 = (*(v13 + 8))(v8, v12);
    if (v15 == v16)
    {
      (*((*MEMORY[0x277D85000] & *v10) + 0x148))(v17);

      return;
    }
  }

  v18 = OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_delegate;
  swift_beginAccess();
  sub_2457ACAB4(v10 + v18, v27);
  if (v27[3])
  {
    sub_2457ACB24(v27, v24);
    sub_245778F94(v27, &qword_27EE290D8);
    v19 = v25;
    v20 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v21 = *(v20 + 8);
    v22 = v10;
    v23 = v11;
    v21(v10, 0, 0xF000000000000000, v11, v19, v20);

    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {

    sub_245778F94(v27, &qword_27EE290D8);
  }
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2457AD07C()
{
  result = qword_27EE290E0;
  if (!qword_27EE290E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE290E0);
  }

  return result;
}

uint64_t sub_2457AD0C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2457AD110(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457AA49C;

  return sub_2457AC4B8(a1, v4, v5, v6);
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2457AD204(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457A18F4;

  return sub_2457AB5FC(a1, v4, v5, v6);
}

id sub_2457AD2B8()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI48BiometricBindingTouchIDReplacementViewController____lazy_storage___glyph;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI48BiometricBindingTouchIDReplacementViewController____lazy_storage___glyph);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI48BiometricBindingTouchIDReplacementViewController____lazy_storage___glyph);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D24238]) initWithStyle_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2457AD330()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI48BiometricBindingTouchIDReplacementViewController____lazy_storage___glyphContainerView;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI48BiometricBindingTouchIDReplacementViewController____lazy_storage___glyphContainerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI48BiometricBindingTouchIDReplacementViewController____lazy_storage___glyphContainerView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_2457AD3E4()
{
  v1 = sub_24590C234();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2459109B4();
  MEMORY[0x28223BE20](v2 - 8);
  v7.receiver = v0;
  v7.super_class = type metadata accessor for BiometricBindingTouchIDReplacementViewController();
  objc_msgSendSuper2(&v7, sel_loadView);
  v3 = *&v0[OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_textLabel];
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v4 = qword_27EE32B38;
  sub_24590C224();
  sub_245910A54();
  v5 = sub_2459109C4();

  [v3 setText_];

  [*&v0[OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_primaryButton] setHidden_];
  sub_24590C8C4();
  swift_allocObject();
  sub_24590C8B4();
  if ((sub_24590C894() & 1) == 0)
  {
    sub_2457AE730();
  }
}

uint64_t sub_2457AD624(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for BiometricBindingTouchIDReplacementViewController();
  v14.receiver = v2;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, sel_viewDidAppear_, a1 & 1);
  [*&v2[OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_context] setUiDelegate_];
  v8 = sub_245910D64();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_245910D34();
  v9 = sub_245910D24();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v2;
  v12 = v2;
  sub_2458B90EC(0, 0, v6, &unk_245917208, v10);
}

uint64_t sub_2457AD7E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_2457AD2B8();
  v5 = [v4 view];

  [v5 removeFromSuperview];
  v6 = sub_245910D64();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  sub_245910D34();
  v7 = v0;
  v8 = sub_245910D24();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  sub_2458B90EC(0, 0, v3, &unk_2459171A8, v9);
}

uint64_t sub_2457AD93C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  sub_2457AE730();
  v4 = sub_245910D64();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_245910D34();
  v5 = v0;
  v6 = sub_245910D24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_2458B90EC(0, 0, v3, &unk_2459171B0, v7);
}

uint64_t sub_2457ADA64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24590C544();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24590C4E4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_delegate;
  swift_beginAccess();
  sub_2457ACAB4(v2 + v12, v20);
  if (v21)
  {
    sub_2457ACB24(v20, v17);
    sub_245778F94(v20, &qword_27EE290D8);
    v13 = v18;
    v14 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v14 + 16))(v2, a1, v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_245778F94(v20, &qword_27EE290D8);
  }

  [*(v2 + OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_context) failProcessedEvent:1 failureError:0 reply:0];
  sub_24590C594();
  (*(v9 + 104))(v11, *MEMORY[0x277CFF360], v8);
  (*(v5 + 104))(v7, *MEMORY[0x277CFF380], v4);
  sub_24590C584();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2457ADD18(uint64_t a1, unint64_t a2)
{
  v28 = a2;
  v4 = sub_2459107E4();
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_245910814();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_245910834();
  v27 = v10;
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  sub_24579D5E0(0, &qword_27EE2ABC0);
  v25 = sub_245911034();
  sub_245910824();
  sub_245910874();
  v26 = *(v11 + 8);
  v26(v14, v10);
  v17 = swift_allocObject();
  v17[2] = v2;
  v17[3] = a1;
  v18 = a1;
  v19 = v28;
  v17[4] = v28;
  aBlock[4] = sub_2457AF578;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_8;
  v20 = _Block_copy(aBlock);
  v21 = v2;
  sub_24578FB80(v18, v19);

  sub_245910804();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_245780A50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
  sub_245780AA8();
  sub_2459113A4();
  v22 = v25;
  MEMORY[0x245D76640](v16, v9, v6, v20);
  _Block_release(v20);

  (*(v31 + 8))(v6, v4);
  (*(v29 + 8))(v9, v30);
  return (v26)(v16, v27);
}

uint64_t sub_2457AE0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24590C544();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24590C4E4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_delegate;
  swift_beginAccess();
  sub_2457ACAB4(a1 + v14, v27);
  if (v28)
  {
    sub_2457ACB24(v27, v24);
    sub_245778F94(v27, &qword_27EE290D8);
    v23 = v9;
    v15 = v7;
    v16 = v10;
    v17 = v6;
    v18 = a3;
    v19 = v25;
    v20 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v21 = v18;
    v6 = v17;
    v10 = v16;
    v7 = v15;
    v9 = v23;
    (*(v20 + 8))(a1, a2, v21, 0, v19, v20);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    sub_245778F94(v27, &qword_27EE290D8);
  }

  sub_24590C594();
  (*(v11 + 104))(v13, *MEMORY[0x277CFF360], v10);
  (*(v7 + 104))(v9, *MEMORY[0x277CFF378], v6);
  sub_24590C584();
  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

void sub_2457AE36C()
{
  v1 = v0;
  v2 = sub_24590C234();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2459109B4();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_24590C554();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24590C4E4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24590C594();
  (*(v9 + 104))(v11, *MEMORY[0x277CFF360], v8);
  (*(v5 + 104))(v7, *MEMORY[0x277CFF390], v4);
  sub_24590C754();
  sub_24590C534();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  v12 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_titleLabel);
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v13 = qword_27EE32B38;
  sub_24590C224();
  v14 = v13;
  sub_245910A54();
  v15 = sub_2459109C4();

  [v12 setText_];

  v16 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_textLabel);
  sub_245910944();
  sub_24590C224();
  sub_245910A54();
  v17 = sub_2459109C4();

  [v16 setText_];
}

void sub_2457AE730()
{
  sub_2457AEA00();
  v1 = sub_2457AD330();
  v2 = sub_2457AD2B8();
  v3 = [v2 view];

  [v1 addSubview_];
  v4 = OBJC_IVAR____TtC9CoreIDVUI48BiometricBindingTouchIDReplacementViewController____lazy_storage___glyph;
  v5 = [*(v0 + OBJC_IVAR____TtC9CoreIDVUI48BiometricBindingTouchIDReplacementViewController____lazy_storage___glyph) view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];

  v6 = [*(v0 + v4) view];
  v7 = [v6 widthAnchor];

  v8 = [v7 constraintEqualToConstant_];
  [v8 setActive_];

  v9 = [*(v0 + v4) view];
  v10 = [v9 heightAnchor];

  v11 = [v10 constraintEqualToConstant_];
  [v11 setActive_];

  v12 = [*(v0 + v4) view];
  v13 = [v12 centerXAnchor];

  v14 = OBJC_IVAR____TtC9CoreIDVUI48BiometricBindingTouchIDReplacementViewController____lazy_storage___glyphContainerView;
  v15 = [*(v0 + OBJC_IVAR____TtC9CoreIDVUI48BiometricBindingTouchIDReplacementViewController____lazy_storage___glyphContainerView) centerXAnchor];
  v16 = [v13 constraintEqualToAnchor_];

  [v16 setActive_];
  v17 = [*(v0 + v4) view];
  v18 = [v17 centerYAnchor];

  v19 = [*(v0 + v14) centerYAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  [v20 setActive_];
}

void sub_2457AEA00()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = sub_2457AD330();
  [v2 addSubview_];

  v4 = OBJC_IVAR____TtC9CoreIDVUI48BiometricBindingTouchIDReplacementViewController____lazy_storage___glyphContainerView;
  [*&v0[OBJC_IVAR____TtC9CoreIDVUI48BiometricBindingTouchIDReplacementViewController____lazy_storage___glyphContainerView] setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [*&v0[v4] topAnchor];
  v6 = [*&v0[OBJC_IVAR____TtC9CoreIDVUI41BiometricBindingReplacementViewController_textLabel] bottomAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  [v7 setActive_];
  v8 = [*&v0[v4] leadingAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [v9 leadingAnchor];

  v12 = [v8 constraintEqualToAnchor_];
  [v12 setActive_];

  v13 = [*&v0[v4] trailingAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  v16 = [v14 trailingAnchor];

  v17 = [v13 constraintEqualToAnchor_];
  [v17 setActive_];

  v18 = [*&v0[v4] bottomAnchor];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = [v19 safeAreaLayoutGuide];

  v22 = [v21 bottomAnchor];
  v23 = [v18 constraintEqualToAnchor_];

  [v23 setActive_];
}

void sub_2457AECFC(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, void))
{
  v5 = sub_2457AEDBC(a1, a2, v3);
  if ((v6 & 1) == 0 && (*(v3 + OBJC_IVAR____TtC9CoreIDVUI48BiometricBindingTouchIDReplacementViewController_hasObtainedTouchIDMatch) & 1) == 0)
  {
    *(v3 + OBJC_IVAR____TtC9CoreIDVUI48BiometricBindingTouchIDReplacementViewController_hasObtainedTouchIDMatch) = v5 == 2;
    v7 = v5;
    v8 = sub_2457AD2B8();
    [v8 setState_];

    if (a3)
    {
      v9 = sub_2458B86D0(MEMORY[0x277D84F90]);
      a3(v9, 0);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2457AEDBC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_2459107E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_245910814();
  v11 = *(v10 - 8);
  result = MEMORY[0x28223BE20](v10);
  v14 = &aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    if (!a2)
    {
      __break(1u);
      return result;
    }

    v15 = result;
    *&v29[0] = 0;
    sub_245911484();
    if (*(a2 + 16))
    {
      v16 = sub_24588C770(aBlock);
      if (v17)
      {
        sub_2457816F0(*(a2 + 56) + 32 * v16, v29);
        sub_2457AF59C(aBlock);
        sub_245778F94(v29, &unk_27EE292B0);
        return 0;
      }
    }

    sub_2457AF59C(aBlock);
    memset(v29, 0, sizeof(v29));
    sub_245778F94(v29, &unk_27EE292B0);
    v28 = 6;
    sub_245911484();
    if (*(a2 + 16) && (v18 = sub_24588C770(aBlock), (v19 & 1) != 0))
    {
      sub_2457816F0(*(a2 + 56) + 32 * v18, v29);
      sub_2457AF59C(aBlock);
      sub_24579D5E0(0, &qword_27EE29168);
      if (swift_dynamicCast())
      {
        v20 = v28;
        v21 = [v28 integerValue];
        if (v21 > 1)
        {
          if (v21 == 2)
          {

            return 2;
          }

          if (v21 == 3)
          {
            sub_24579D5E0(0, &qword_27EE2ABC0);
            v26 = sub_245911034();
            v22 = swift_allocObject();
            *(v22 + 16) = a3;
            aBlock[4] = sub_2457AF5F0;
            aBlock[5] = v22;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_2458935A8;
            aBlock[3] = &block_descriptor_38;
            v23 = _Block_copy(aBlock);
            v24 = a3;

            sub_245910804();
            aBlock[0] = MEMORY[0x277D84F90];
            sub_245780A50();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
            sub_245780AA8();
            sub_2459113A4();
            v25 = v26;
            MEMORY[0x245D76690](0, v14, v9, v23);

            _Block_release(v23);
            (*(v7 + 8))(v9, v6);
            (*(v11 + 8))(v14, v15);
            return 0;
          }
        }

        else
        {
          if (!v21)
          {

            return 1;
          }

          if (v21 == 1)
          {

            return 0;
          }
        }
      }
    }

    else
    {
      sub_2457AF59C(aBlock);
    }
  }

  return 0;
}

void sub_2457AF20C()
{
  v0 = sub_2457AD2B8();
  [v0 shake];

  sub_2457AE36C();
}

id sub_2457AF334(void *a1)
{
  v1[OBJC_IVAR____TtC9CoreIDVUI48BiometricBindingTouchIDReplacementViewController_hasObtainedTouchIDMatch] = 0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI48BiometricBindingTouchIDReplacementViewController____lazy_storage___glyph] = 0;
  *&v1[OBJC_IVAR____TtC9CoreIDVUI48BiometricBindingTouchIDReplacementViewController____lazy_storage___glyphContainerView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BiometricBindingTouchIDReplacementViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void sub_2457AF3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_2459108E4();
    if (a2)
    {
LABEL_3:
      v6 = sub_24590BF94();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_2457AF494()
{
  v1 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI48BiometricBindingTouchIDReplacementViewController____lazy_storage___glyphContainerView);
}

id sub_2457AF4D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BiometricBindingTouchIDReplacementViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2457AF608()
{
  v0 = sub_24590C234();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2459109B4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v2 = qword_27EE32B38;
  sub_24590C224();
  return sub_245910A54();
}

uint64_t sub_2457AF7E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29180);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - v4;
  sub_24590C8C4();
  swift_allocObject();
  sub_24590C8B4();
  if ((sub_24590C874() & 1) == 0)
  {

    return 2;
  }

  sub_24590C884();

  v6 = sub_24590D1F4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_3:
    sub_2457AFBF4(v5);
    return 2;
  }

  sub_2457AFC5C(v5, v3);
  v9 = (*(v7 + 88))(v3, v6);
  if (v9 == *MEMORY[0x277CFF470])
  {
    sub_2457AFBF4(v5);
    return 0;
  }

  else
  {
    if (v9 != *MEMORY[0x277CFF468])
    {
      (*(v7 + 8))(v3, v6);
      goto LABEL_3;
    }

    sub_2457AFBF4(v5);
    return 1;
  }
}

id sub_2457AF9B0(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() deviceWithDescriptor:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_24590BFA4();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_2457AFA74()
{
  v11[2] = *MEMORY[0x277D85DE8];
  sub_24579D5E0(0, &qword_27EE29170);
  v0 = [objc_opt_self() deviceDescriptorForType_];
  v1 = sub_2457AF9B0(v0);

  v11[0] = 0;
  v2 = [v1 identitiesWithError_];
  v3 = v11[0];
  if (v2)
  {
    v4 = v2;
    sub_24579D5E0(0, &qword_27EE29178);
    v5 = sub_245910C44();
    v6 = v3;

    if (v5 >> 62)
    {
      v7 = sub_245911424();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v7;
  }

  else
  {
    v9 = v11[0];
    v10 = sub_24590BFA4();

    swift_willThrow();
    return 0;
  }
}

uint64_t sub_2457AFBF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2457AFC5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_2457AFD00()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___scrollView;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___scrollView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___scrollView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setShowsVerticalScrollIndicator_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2457AFD9C()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___primaryStackView;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___primaryStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___primaryStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setSpacing_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setAlignment_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2457AFE60()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___bottomTray;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___bottomTray);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___bottomTray);
  }

  else
  {
    v4 = sub_2457AFEC0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2457AFEC0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() systemBackgroundColor];
  [v0 setBackgroundColor_];

  [v0 setAlignment_];
  [v0 setAxis_];
  [v0 setSpacing_];

  return v0;
}

id sub_2457AFFB0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setNumberOfLines_];
    [v4 setLineBreakMode_];
    [v4 setTextAlignment_];
    v5 = *(v1 + v2);
    *(v1 + v2) = v4;

    v3 = 0;
  }

  v6 = v3;
  return v4;
}

_BYTE *sub_2457B0070()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___primaryButton;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___primaryButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___primaryButton);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(type metadata accessor for CoreIDVUIButton()) initWithFrame_];
    v5[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_style] = 0;
    sub_2458B51B8();
    v6 = v5;
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = [objc_opt_self() systemBlueColor];
    [v6 setBackgroundColor_];

    [v6 addTarget:v4 action:sel_primaryButtonClicked forControlEvents:64];
    v8 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

_BYTE *sub_2457B01B8(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v9 = v3;
    v10 = [objc_allocWithZone(type metadata accessor for CoreIDVUIButton()) initWithFrame_];
    v10[OBJC_IVAR____TtC9CoreIDVUI15CoreIDVUIButton_style] = a2;
    sub_2458B51B8();
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 systemBlueColor];
    [v12 setTitleColor:v13 forState:0];

    [v12 addTarget:v9 action:*a3 forControlEvents:64];
    v14 = *(v9 + v4);
    *(v9 + v4) = v12;
    v6 = v12;

    v5 = 0;
  }

  v15 = v5;
  return v6;
}

id sub_2457B02E8()
{
  v88.receiver = v0;
  v88.super_class = type metadata accessor for IdentityProofingErrorRetryViewController();
  objc_msgSendSuper2(&v88, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = result;
  v3 = [objc_opt_self() systemBackgroundColor];
  [v2 setBackgroundColor_];

  v4 = sub_2457AFD00();
  v5 = sub_2457AFD9C();
  [v4 addSubview_];

  result = [v0 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  v7 = sub_2457AFE60();
  [v6 addSubview_];

  result = [v0 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  v9 = OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___scrollView;
  [result addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_245917250;
  v11 = OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___bottomTray;
  v12 = [*&v0[OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___bottomTray] widthAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = result;
  v14 = [result widthAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:-40.0];
  *(v10 + 32) = v15;
  v16 = [*&v0[v11] bottomAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = result;
  v18 = [result safeAreaLayoutGuide];

  v19 = [v18 bottomAnchor];
  v20 = [v16 constraintEqualToAnchor:v19 constant:-10.0];

  *(v10 + 40) = v20;
  v21 = [*&v0[v11] centerXAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = result;
  v23 = [result centerXAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v10 + 48) = v24;
  v25 = [*&v0[v9] &selRef_getGlobalProgenitorKeyAttestation_ + 5];
  v26 = [*&v0[v11] topAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v10 + 56) = v27;
  v28 = [*&v0[v9] topAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v29 = result;
  v30 = [result safeAreaLayoutGuide];

  v31 = [v30 topAnchor];
  v32 = [v28 constraintEqualToAnchor_];

  *(v10 + 64) = v32;
  v33 = [*&v0[v9] leadingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v34 = result;
  v35 = [result safeAreaLayoutGuide];

  v36 = [v35 leadingAnchor];
  v37 = [v33 constraintEqualToAnchor:v36 constant:20.0];

  *(v10 + 72) = v37;
  v38 = [*&v0[v9] trailingAnchor];
  result = [v0 view];
  if (result)
  {
    v39 = result;
    v87 = objc_opt_self();
    v40 = [v39 safeAreaLayoutGuide];

    v41 = [v40 trailingAnchor];
    v42 = [v38 constraintEqualToAnchor:v41 constant:-20.0];

    *(v10 + 80) = v42;
    v43 = OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___primaryStackView;
    v44 = [*&v0[OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___primaryStackView] topAnchor];
    v45 = [*&v0[v9] topAnchor];
    v46 = [v44 constraintEqualToAnchor_];

    *(v10 + 88) = v46;
    v47 = [*&v0[v43] bottomAnchor];
    v48 = [*&v0[v9] bottomAnchor];
    v49 = [v47 constraintEqualToAnchor_];

    *(v10 + 96) = v49;
    v50 = [*&v0[v43] leadingAnchor];
    v51 = [*&v0[v9] leadingAnchor];
    v52 = [v50 constraintEqualToAnchor_];

    *(v10 + 104) = v52;
    v53 = [*&v0[v43] trailingAnchor];
    v54 = [*&v0[v9] trailingAnchor];
    v55 = [v53 constraintEqualToAnchor_];

    *(v10 + 112) = v55;
    v56 = [*&v0[v43] widthAnchor];
    v57 = [*&v0[v9] widthAnchor];
    v58 = [v56 constraintEqualToAnchor_];

    *(v10 + 120) = v58;
    sub_2457B191C();
    v59 = sub_245910C34();

    [v87 activateConstraints_];

    v60 = *&v0[v43];
    v61 = sub_2457AFF98();
    [v60 addArrangedSubview_];

    v62 = *&v0[v43];
    v63 = sub_2457AFFA4();
    [v62 addArrangedSubview_];

    v64 = *&v0[v43];
    v65 = sub_2457B01A0();
    [v64 addArrangedSubview_];

    v66 = *&v0[v11];
    v67 = sub_2457B0070();
    [v66 addArrangedSubview_];

    v68 = *&v0[v11];
    v69 = sub_2457B0188();
    [v68 addArrangedSubview_];

    v70 = [*&v0[OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___bodyButton] heightAnchor];
    v71 = [v70 constraintEqualToConstant_];

    [v71 setActive_];
    v72 = OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___primaryButton;
    v73 = [*&v0[OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___primaryButton] widthAnchor];
    v74 = [*&v0[v11] widthAnchor];
    v75 = [v73 constraintEqualToAnchor:v74 constant:-20.0];

    [v75 setActive_];
    v76 = [*&v0[v72] heightAnchor];
    v77 = [v76 constraintEqualToConstant_];

    [v77 setActive_];
    v78 = OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___secondaryButton;
    v79 = [*&v0[OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___secondaryButton] widthAnchor];
    v80 = [*&v0[v11] widthAnchor];
    v81 = [v79 constraintEqualToAnchor:v80 constant:-20.0];

    [v81 setActive_];
    v82 = [*&v0[v78] heightAnchor];
    v83 = [v82 constraintEqualToConstant_];

    [v83 setActive_];
    sub_2457B13E8();
    sub_2457B1070();
    sub_2457B0E48((*(*&v0[OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController_proofingFlowManager] + 144) & 3) == 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29480);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_245916930;
    v85 = sub_24590F3E4();
    v86 = MEMORY[0x277D74DB8];
    *(v84 + 32) = v85;
    *(v84 + 40) = v86;
    MEMORY[0x245D76610](v84, sel_configureFonts);
    swift_unknownObjectRelease();
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_2457B0E48(char a1)
{
  if (a1)
  {
    v2 = sub_2457AFF98();
    v3 = objc_opt_self();
    v4 = [v3 whiteColor];
    [v2 setTextColor_];

    v5 = sub_2457AFFA4();
    v6 = [v3 whiteColor];
    [v5 setTextColor_];

    v7 = sub_2457B0070();
    v8 = [v3 systemGray5Color];
    [v7 setBackgroundColor_];

    v9 = sub_2457B01A0();
    v10 = [v3 systemOrangeColor];
    [v9 setTitleColor:v10 forState:0];

    v11 = sub_2457B0188();
    v12 = [v3 systemOrangeColor];
    [v11 setTitleColor:v12 forState:0];

    [v1 setOverrideUserInterfaceStyle_];
    v13 = [v1 navigationController];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 navigationBar];

      v16 = [v3 systemOrangeColor];
      [v15 setTintColor_];
    }
  }
}

void sub_2457B1070()
{
  v1 = sub_2457AFF98();
  v2 = objc_opt_self();
  v3 = *MEMORY[0x277D76800];
  v4 = [v2 _preferredFontForTextStyle_maximumContentSizeCategory_];
  if (v4)
  {
    v5 = v4;
    [v4 pointSize];
    v6 = [v2 systemFontOfSize_weight_];

    [v1 setFont_];
    [*(v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___titleLabel) setAdjustsFontForContentSizeCategory_];
    v7 = sub_2457AFFA4();
    v8 = [v2 _preferredFontForTextStyle_maximumContentSizeCategory_];
    [v7 setFont_];

    [*(v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___primaryLabel) setAdjustsFontForContentSizeCategory_];
    v9 = sub_2457B0070();
    v10 = [v9 titleLabel];

    v11 = MEMORY[0x277D76988];
    if (v10)
    {
      v12 = [v2 preferredFontForTextStyle_];
      [v10 setFont_];
    }

    v13 = [*(v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___primaryButton) titleLabel];
    [v13 setAdjustsFontSizeToFitWidth_];

    v14 = sub_2457B0188();
    v15 = [v14 titleLabel];

    if (v15)
    {
      v16 = [v2 preferredFontForTextStyle_];
      [v15 setFont_];
    }

    v17 = [*(v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___secondaryButton) titleLabel];
    [v17 setAdjustsFontSizeToFitWidth_];

    v18 = sub_2457B01A0();
    v19 = [v18 titleLabel];

    if (v19)
    {
      v20 = [v2 preferredFontForTextStyle_];
      [v19 setFont_];
    }

    v21 = [*(v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___bodyButton) titleLabel];
    [v21 setAdjustsFontSizeToFitWidth_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2457B13E8()
{
  v1 = v0;
  v2 = sub_2457AFF98();
  v3 = OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController_viewConfig;
  sub_2457ACB24(v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController_viewConfig, v28);
  v4 = v29;
  v5 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v5 + 8))(v4, v5);
  if (v6)
  {
    v7 = sub_2459109C4();
  }

  else
  {
    v7 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  [v2 setText_];

  v8 = sub_2457AFFA4();
  sub_2457ACB24(v1 + v3, v28);
  v9 = v29;
  v10 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v10 + 16))(v9, v10);
  if (v11)
  {
    v12 = sub_2459109C4();
  }

  else
  {
    v12 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  [v8 setText_];

  v13 = sub_2457B0070();
  sub_2457ACB24(v1 + v3, v28);
  v14 = v29;
  v15 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v15 + 24))(v14, v15);
  if (v16)
  {
    v17 = sub_2459109C4();
  }

  else
  {
    v17 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  [v13 setTitle:v17 forState:0];

  v18 = sub_2457B0188();
  sub_2457ACB24(v1 + v3, v28);
  v19 = v29;
  v20 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v20 + 32))(v19, v20);
  if (v21)
  {
    v22 = sub_2459109C4();
  }

  else
  {
    v22 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  [v18 setTitle:v22 forState:0];

  v23 = sub_2457B01A0();
  sub_2457ACB24(v1 + v3, v28);
  v24 = v29;
  v25 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v25 + 40))(v24, v25);
  if (v26)
  {
    v27 = sub_2459109C4();
  }

  else
  {
    v27 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  [v23 setTitle:v27 forState:0];
}

char *sub_2457B170C(char *result, uint64_t a2, void *a3)
{
  v3 = *&result[*a3];
  if (v3)
  {
    v4 = result;
    v5 = sub_245771BB4(v3);
    v3(v5);

    return sub_245771C34(v3);
  }

  return result;
}

id sub_2457B17BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityProofingErrorRetryViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2457B191C()
{
  result = qword_27EE291F0;
  if (!qword_27EE291F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE291F0);
  }

  return result;
}

void sub_2457B1968()
{
  v1 = (v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController_primaryButtonTargetAction);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController_secondaryButtonTargetAction);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController_bodyButtonTargetAction);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___scrollView) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___primaryStackView) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___bottomTray) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___primaryLabel) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___primaryButton) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___secondaryButton) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI40IdentityProofingErrorRetryViewController____lazy_storage___bodyButton) = 0;
  sub_2459115D4();
  __break(1u);
}

uint64_t sub_2457B1A54()
{
  v0 = sub_24590C234();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2459109B4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v2 = qword_27EE32B38;
  sub_24590C224();
  result = sub_245910A54();
  qword_27EE291F8 = result;
  unk_27EE29200 = v4;
  return result;
}

uint64_t sub_2457B1B94()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2457B1BC4()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2457B1BFC()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_2457B1C34()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_2457B1C6C()
{
  v1 = *(v0 + 88);

  return v1;
}

void sub_2457B1CA4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24590D524();
  v21 = v5;
  v22 = v4;
  if (qword_27EE286A8 != -1)
  {
    swift_once();
  }

  v6 = unk_27EE29200;
  v20 = qword_27EE291F8;

  v19 = sub_24590D534();
  v8 = v7;
  v9 = sub_24590D5E4();
  v11 = v9;
  if (v10)
  {
    v11 = sub_24586C880(v9, v10);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v15 = sub_24590D634();
  if (v14)
  {
    v16 = v14;

    v15 = sub_24586C880(v15, v16);
    v18 = v17;
    swift_bridgeObjectRelease_n();
  }

  else
  {

    v18 = 0;
  }

  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;
  *(a2 + 24) = v18;
  *(a2 + 32) = 1;
  *(a2 + 40) = v22;
  *(a2 + 48) = v21;
  *(a2 + 56) = 1;
  *(a2 + 64) = v20;
  *(a2 + 72) = v6;
  *(a2 + 80) = 1;
  *(a2 + 88) = v19;
  *(a2 + 96) = v8;
  *(a2 + 104) = 3;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2457B1E4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
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

uint64_t sub_2457B1EA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2457B1F84()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for IdentityProofingAuthCodeRetryViewController();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = &v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  v3 = *&v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v2 = sub_2457B2578;
  v2[1] = v1;

  sub_245771C34(v3);

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = &v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  v6 = *&v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v5 = sub_2457B2580;
  v5[1] = v4;

  sub_245771C34(v6);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = &v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  v9 = *&v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_linkButtonTargetAction];
  *v8 = sub_2457B2588;
  v8[1] = v7;

  sub_245771C34(v9);
}

void sub_2457B2104()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;

    v2 = [v1 navigationController];
    sub_24586CA74(v2, 2, 0, 0);
  }
}

uint64_t sub_2457B21A8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_245883548(0);
  }

  return result;
}

void sub_2457B221C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_24590C094();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (*(*&Strong[OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingAuthCodeRetryViewController_proofingFlowManager] + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_learnMoreURL + 8))
    {

      sub_24590C084();

      if ((*(v4 + 48))(v2, 1, v3) == 1)
      {
        sub_2457B2590(v2);
      }

      else
      {
        (*(v4 + 32))(v6, v2, v3);
        v9 = [objc_opt_self() sharedApplication];
        v10 = sub_24590C034();
        sub_2458B880C(MEMORY[0x277D84F90]);
        type metadata accessor for OpenExternalURLOptionsKey(0);
        sub_2457B25F8();
        v11 = sub_2459108E4();

        [v9 openURL:v10 options:v11 completionHandler:0];

        (*(v4 + 8))(v6, v3);
      }
    }

    else
    {
    }
  }
}

id sub_2457B2510()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityProofingAuthCodeRetryViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2457B2590(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2457B25F8()
{
  result = qword_27EE28988;
  if (!qword_27EE28988)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28988);
  }

  return result;
}

uint64_t sub_2457B2650()
{
  v0 = sub_24590C234();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24590BFB4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2459109B4();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24590BFC4();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_24590D584();
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = sub_24586C880(v7, v9);
  v12 = v11;

  if (v12)
  {
    return v10;
  }

  sub_245910944();
  if (qword_27EE28730 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v1, qword_27EE2C450);
  (*(v2 + 16))(v4, v14, v1);
  sub_24590C224();
  sub_24590BFE4();
  return sub_245910A64();
}

uint64_t sub_2457B28E8()
{
  v0 = sub_24590C234();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24590BFB4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2459109B4();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24590BFC4();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_24590D5A4();
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = sub_24586C880(v7, v9);
  v12 = v11;

  if (v12)
  {
    return v10;
  }

  sub_245910944();
  if (qword_27EE28730 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v1, qword_27EE2C450);
  (*(v2 + 16))(v4, v14, v1);
  sub_24590C224();
  sub_24590BFE4();
  return sub_245910A64();
}

uint64_t sub_2457B2B80()
{
  if (*(v0 + 48))
  {
    return 0;
  }

  v2 = 2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v0 + 80);
    ObjectType = swift_getObjectType();
    LOBYTE(v3) = (*(v3 + 8))(ObjectType, v3);
    swift_unknownObjectRelease();
    if (v3)
    {
      v2 = 0;
    }

    else
    {
      v2 = 2;
    }
  }

  if ((*(*(v0 + 24) + 144) & 3) == 2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2457B2C24()
{

  sub_245771C34(*(v0 + 56));
  sub_2457B2F00(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_2457B2CD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = sub_24586C880(v3, v5);

  return v6;
}

uint64_t sub_2457B2D78()
{
  v1 = *v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 80);
    ObjectType = swift_getObjectType();
    LOBYTE(v3) = (*(v3 + 8))(ObjectType, v3);
    swift_unknownObjectRelease();
    return v3 & 1;
  }

  return result;
}

id sub_2457B2E04()
{
  v0 = sub_2458935F0();
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v4 = sub_24590C144();
  v5 = [v3 initWithData_];

  sub_24578FC28(v0, v2);
  return v5;
}

uint64_t sub_2457B2ED0()
{
  if (*(*v0 + 48))
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_2457B2EE8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  return sub_245771C34(v4);
}

BOOL sub_2457B2F28()
{
  v1 = sub_24590BE34();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(*(v0 + OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_authCodeTextField) + OBJC_IVAR____TtC9CoreIDVUI17AuthCodeTextField_textField) text];
  if (v5)
  {
    v6 = v5;
    v7 = sub_245910A04();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v20[0] = v7;
  v20[1] = v9;
  sub_24590BE24();
  sub_245778CE8();
  sub_245911304();
  (*(v2 + 8))(v4, v1);

  v10 = sub_24590D654();
  v12 = v11;

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  v14 = sub_24590D644();
  v16 = v15;

  if (sub_245910B04() >= v13)
  {
    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v14;
    }

    v19 = sub_245910B04();

    return v18 >= v19;
  }

  else
  {

    return 0;
  }
}

char *sub_2457B3124(void *a1, uint64_t a2, char a3)
{
  v7 = OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_authCodeTextField;
  v8 = [objc_allocWithZone(type metadata accessor for AuthCodeTextField()) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v7] = v8;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_proofIdentityTask] = 0;
  v3[OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_viewConfigured] = 0;
  type metadata accessor for IdentityProofingCardArtResolutionHelper();
  v9 = swift_allocObject();
  type metadata accessor for IdentityProofingAuthCodeViewConfiguration();
  v10 = swift_allocObject();
  *(v10 + 80) = 0;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = v9;
  type metadata accessor for IdentityProofingImageAssetProvider();
  v11 = swift_allocObject();
  v11[3] = v9;
  v11[4] = a1;
  v11[2] = a2;
  *(v10 + 40) = v11;
  *(v10 + 48) = a3;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_config] = v10;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_proofingFlowManager] = a2;
  swift_retain_n();
  v12 = a1;

  v14 = sub_24588E11C(v13, v3);
  *(*&v14[OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_config] + 80) = &off_28588B5F8;
  swift_unknownObjectWeakAssign();
  return v14;
}

void sub_2457B333C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_dismissKeyboard];
  [v1 setCancelsTouchesInView_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 addGestureRecognizer_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 setUserInteractionEnabled_];
}

uint64_t sub_2457B3424()
{
  ObjectType = swift_getObjectType();
  [*(*&v0[OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_authCodeTextField] + OBJC_IVAR____TtC9CoreIDVUI17AuthCodeTextField_textField) setDelegate_];
  v8[3] = ObjectType;
  v8[0] = v0;
  v2 = v0;
  sub_2458B3370(v8, sel_textFieldDidChange_, 0x20000);
  sub_2457B67E4(v8);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = &v2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  v5 = *&v2[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v4 = sub_2457B6A7C;
  v4[1] = v3;
  v6 = v2;
  return sub_245771C34(v5);
}

uint64_t sub_2457B3508()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  result = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  if (*(*&v0[OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_config] + 48) == 1)
  {
    v5 = sub_245910D64();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    sub_245910D34();
    v6 = v0;
    v7 = sub_245910D24();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v6;
    *&v6[OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_proofIdentityTask] = sub_24586CFCC(0, 0, v4, &unk_245917450, v8);
  }

  return result;
}

void sub_2457B37C0(char a1)
{
  v2 = v1;
  v17.receiver = v2;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_viewWillAppear_, a1 & 1);
  v4 = *&v2[OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_authCodeTextField];
  v5 = OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_config;

  sub_24590D544();
  v7 = v6;

  v8 = *(v4 + OBJC_IVAR____TtC9CoreIDVUI17AuthCodeTextField_textFieldLabel);
  if (v7)
  {
    v9 = sub_2459109C4();
  }

  else
  {
    v9 = 0;
  }

  [v8 setText_];

  sub_24590D564();
  v11 = v10;

  v12 = *(v4 + OBJC_IVAR____TtC9CoreIDVUI17AuthCodeTextField_textField);
  if (v11)
  {
    v13 = sub_2459109C4();
  }

  else
  {
    v13 = 0;
  }

  [v12 setPlaceholder_];

  v14 = sub_2458A1B04();
  [v14 setEnabled_];

  v15 = *(*&v2[v5] + 56);
  if (v15)
  {

    v15(v16);
    sub_245771C34(v15);
  }
}

id sub_2457B39A8(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, sel_viewDidAppear_, a1 & 1);
  if (*(*&v1[OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_config] + 48) != 1)
  {
    return [*(*&v1[OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_authCodeTextField] + OBJC_IVAR____TtC9CoreIDVUI17AuthCodeTextField_textField) becomeFirstResponder];
  }

  v7 = sub_245910D64();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_245910D34();
  v8 = v1;
  v9 = sub_245910D24();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  sub_2458B90EC(0, 0, v6, &unk_245917420, v10);
}

uint64_t sub_2457B3B38()
{
  v0[2] = sub_245910D34();
  v0[3] = sub_245910D24();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2457B3BE4;

  return sub_2457B3D80();
}

uint64_t sub_2457B3BE4()
{

  v1 = sub_245910CD4();

  return MEMORY[0x2822009F8](sub_2457B3D20, v1, v0);
}

uint64_t sub_2457B3D20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2457B3D80()
{
  v1[9] = v0;
  v2 = sub_24590F354();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  v1[15] = swift_task_alloc();
  v1[16] = sub_245910D34();
  v1[17] = sub_245910D24();
  v4 = sub_245910CD4();
  v1[18] = v4;
  v1[19] = v3;

  return MEMORY[0x2822009F8](sub_2457B3EC8, v4, v3);
}

uint64_t sub_2457B3EC8()
{
  v38 = v0;
  v1 = v0[9];
  v2 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_authCodeTextField);
  v0[20] = *(v1 + OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_proofingFlowManager);
  v3 = OBJC_IVAR____TtC9CoreIDVUI17AuthCodeTextField_textField;
  v4 = *(v2 + OBJC_IVAR____TtC9CoreIDVUI17AuthCodeTextField_textField);

  v5 = sub_2459109C4();

  [v4 setText_];

  [*(v2 + v3) setEnabled_];
  v6 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_proofIdentityTask);
  v0[21] = v6;
  if (v6)
  {
    v7 = v0[15];
    v8 = v0[9];
    v9 = swift_allocObject();
    v0[22] = v9;
    *(v9 + 16) = 0;
    v10 = sub_245910D64();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);

    v11 = v8;

    v12 = sub_245910D24();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v11;
    v13[5] = v9;
    v0[23] = sub_2458B90EC(0, 0, v7, &unk_245917438, v13);
    sub_24590C714();
    v15 = sub_24590F344();
    v16 = sub_245910F54();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[14];
    v19 = v0[10];
    v20 = v0[11];
    if (v17)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v37 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_2458CC378(0xD00000000000008FLL, 0x80000002459259D0, &v37);
      _os_log_impl(&dword_245767000, v15, v16, "IdentityProofingAuthCodeViewController proofIdentity - %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x245D77B40](v22, -1, -1);
      MEMORY[0x245D77B40](v21, -1, -1);
    }

    v23 = *(v20 + 8);
    v23(v18, v19);
    v0[24] = v23;
    v24 = swift_task_alloc();
    v0[25] = v24;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
    *v24 = v0;
    v24[1] = sub_2457B4330;
    v26 = MEMORY[0x277D84950];
    v27 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200430](v25, v6, v27, v25, v26);
  }

  else
  {

    sub_24590C714();
    v28 = sub_24590F344();
    v29 = sub_245910F54();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[13];
    v32 = v0[10];
    v33 = v0[11];
    if (v30)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_245767000, v28, v29, "IdentityProofingAuthCodeViewController not starting authcode submission flow, code hasn't been submitted", v34, 2u);
      MEMORY[0x245D77B40](v34, -1, -1);
    }

    (*(v33 + 8))(v31, v32);

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_2457B4330()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_2457B45B4;
  }

  else
  {
    v5 = sub_2457B446C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2457B446C()
{
  v1 = v0[22];

  swift_beginAccess();
  if ((*(v1 + 16) & 1) == 0)
  {
    v2 = v0[9];
    sub_245910DD4();
    v3 = [v2 navigationController];
    sub_24586CA74(v3, 2, 0, 0);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_2457B45B4()
{
  v22 = v0;
  v1 = v0[26];

  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F54();

  if (os_log_type_enabled(v3, v4))
  {
    v20 = v0[24];
    v5 = v0[12];
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v9 = sub_2459117D4();
    v11 = sub_2458CC378(v9, v10, &v21);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_245767000, v3, v4, "IdentityProofingAuthCodeViewController Error occured during auth code proofing, %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245D77B40](v8, -1, -1);
    MEMORY[0x245D77B40](v7, -1, -1);

    v20(v5, v6);
  }

  else
  {
    v12 = v0[24];
    v13 = v0[12];
    v14 = v0[10];

    v12(v13, v14);
  }

  v15 = v0[26];
  v16 = v0[9];
  sub_245910DD4();
  v17 = [v16 navigationController];
  sub_2458866E0(v17, 0);

  v18 = v0[1];

  return v18();
}

id sub_2457B4914(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_24590F354();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v2;
  v17.super_class = ObjectType;
  result = objc_msgSendSuper2(&v17, sel_willMoveToParentViewController_, a1);
  if (!a1)
  {
    v10 = *(*&v2[OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_proofingFlowManager] + 152);
    v11 = *(v10 + 16);
    v12 = __OFSUB__(v11, 1);
    v13 = v11 - 1;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      *(v10 + 16) = v13;
      sub_24590C714();
      v14 = sub_24590F344();
      v15 = sub_245910F54();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_245767000, v14, v15, "IdentityProofingAuthCodeEntryViewController Back button clicked on xmas watch authcode entry page. Will go back to the previous page", v16, 2u);
        MEMORY[0x245D77B40](v16, -1, -1);
      }

      return (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

void sub_2457B4B0C()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewDidLayoutSubviews);
  v1 = OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_viewConfigured;
  if ((v0[OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_viewConfigured] & 1) == 0)
  {
    v2 = *(*&v0[OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_config] + 56);
    if (v2)
    {

      v2(v3);
      sub_245771C34(v2);
    }

    sub_2458A6BA0(*&v0[OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_authCodeTextField], 0, 1, 0, 1);
    v0[v1] = 1;
  }
}

void sub_2457B4C80()
{
  v1 = sub_24590F354();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - v6;
  v8 = [v0 view];
  if (v8)
  {
    v9 = v8;
    [v8 endEditing_];

    if (sub_2457B2F28())
    {
      v10 = *&v0[OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_proofingFlowManager];
      v11 = [*(*&v0[OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_authCodeTextField] + OBJC_IVAR____TtC9CoreIDVUI17AuthCodeTextField_textField) text];
      if (v11)
      {
        v12 = v11;
        v13 = sub_245910A04();
        v15 = v14;
      }

      else
      {
        v13 = 0;
        v15 = 0xE000000000000000;
      }

      v24 = (v10 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager__passcode);
      *v24 = v13;
      v24[1] = v15;

      sub_24590C714();
      v25 = v0;
      v26 = sub_24590F344();
      v27 = sub_245910F54();

      if (os_log_type_enabled(v26, v27))
      {
        v35 = v1;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v36 = v29;
        *v28 = 136315138;
        if (v24[1])
        {
          v30 = *v24;
          v31 = v24[1];
        }

        else
        {
          v30 = 0;
          v31 = 0xE000000000000000;
        }

        v33 = sub_2458CC378(v30, v31, &v36);

        *(v28 + 4) = v33;
        _os_log_impl(&dword_245767000, v26, v27, "IdentityProofingAuthCodeEntryViewController the passcode has been set to '%s'", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x245D77B40](v29, -1, -1);
        MEMORY[0x245D77B40](v28, -1, -1);

        (*(v2 + 8))(v7, v35);
      }

      else
      {

        (*(v2 + 8))(v7, v1);
      }

      v34 = [v25 navigationController];
      sub_24586CA74(v34, 2, 0, 0);
    }

    else
    {
      sub_24590C714();
      v16 = v0;
      v17 = sub_24590F344();
      v18 = sub_245910F54();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v36 = v20;
        *v19 = 136315138;
        v21 = (*&v16[OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_proofingFlowManager] + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager__passcode);
        if (v21[1])
        {
          v22 = *v21;
          v23 = v21[1];
        }

        else
        {
          v22 = 0;
          v23 = 0xE000000000000000;
        }

        v32 = sub_2458CC378(v22, v23, &v36);

        *(v19 + 4) = v32;
        _os_log_impl(&dword_245767000, v17, v18, "IdentityProofingAuthCodeEntryViewController nextButton clicked, but aborting because pass code is invalide; code: '%s'", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x245D77B40](v20, -1, -1);
        MEMORY[0x245D77B40](v19, -1, -1);
      }

      (*(v2 + 8))(v5, v1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2457B5098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_245910D34();
  v4[3] = sub_245910D24();
  v6 = sub_245910CD4();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_2457B5130, v6, v5);
}

uint64_t sub_2457B5130()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_proofingFlowManager);
  v2 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager__passcode);
  v3 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager__passcode + 8);
  v0[6] = v3;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_2457B51FC;

  return sub_245872958(v2, v3);
}

uint64_t sub_2457B51FC()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_2457B537C;
  }

  else
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_2457B5318;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2457B5318()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2457B537C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2457B53EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = sub_24590F354();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v7 = sub_2459115A4();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  sub_245910D34();
  v5[20] = sub_245910D24();
  v9 = sub_245910CD4();
  v5[21] = v9;
  v5[22] = v8;

  return MEMORY[0x2822009F8](sub_2457B5548, v9, v8);
}

uint64_t sub_2457B5548()
{
  v0[23] = *(v0[11] + OBJC_IVAR____TtC9CoreIDVUI38IdentityProofingAuthCodeViewController_proofingFlowManager);
  v1 = sub_245911894();
  v3 = v2;
  sub_2459117A4();
  v4 = swift_task_alloc();
  v0[24] = v4;
  *v4 = v0;
  v4[1] = sub_2457B5638;

  return sub_2458959E4(v1, v3, 0, 0, 1);
}

uint64_t sub_2457B5638()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  *(*v1 + 200) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 176);
  v7 = *(v2 + 168);
  if (v0)
  {
    v8 = sub_2457B59DC;
  }

  else
  {
    v8 = sub_2457B57D0;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2457B57D0()
{

  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "IdentityProofingAuthCodeViewController UI timed out- moving to next screen", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v4 = v0[23];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[11];
  v9 = v0[12];

  (*(v7 + 8))(v5, v6);
  swift_beginAccess();
  *(v9 + 16) = 1;
  v10 = objc_allocWithZone(type metadata accessor for IdentityProofingPendingViewController());
  *&v10[OBJC_IVAR____TtC9CoreIDVUI37IdentityProofingPendingViewController_proofingFlowManager] = v4;
  type metadata accessor for IdentityProofingCardArtResolutionHelper();
  swift_initStackObject();
  type metadata accessor for IdentityProofingPendingViewConfiguration();
  swift_allocObject();
  v11 = swift_retain_n();
  *&v10[OBJC_IVAR____TtC9CoreIDVUI37IdentityProofingPendingViewController_configuration] = sub_24584D444(v11);
  v10[OBJC_IVAR____TtC9CoreIDVUI37IdentityProofingPendingViewController_isRetryProvisioningFlow] = 0;

  v13 = sub_24588E6A8(v12, v10);
  v14 = [v8 navigationController];
  sub_24586D558(v13, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_2457B59DC()
{
  v20 = v0;
  v1 = *(v0 + 200);

  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 200);
    v6 = *(v0 + 112);
    v18 = *(v0 + 120);
    v7 = *(v0 + 104);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_2459117D4();
    v12 = sub_2458CC378(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_245767000, v3, v4, "IdentityProofingAuthCodeViewController Error occurs for UI timeout: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245D77B40](v9, -1, -1);
    MEMORY[0x245D77B40](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 112);
    v13 = *(v0 + 120);
    v15 = *(v0 + 104);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2457B5BD0()
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_24590C714();
    v6 = sub_24590F344();
    v7 = sub_245910F54();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_245767000, v6, v7, "IdentityProofingAuthCodeEntryViewController complete verification later button pressed", v8, 2u);
      MEMORY[0x245D77B40](v8, -1, -1);
    }

    (*(v1 + 8))(v3, v0);

    sub_245883548(0);
  }

  return result;
}

void sub_2457B5DD4(void *a1)
{
  v2 = [a1 userInfo];
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  v4 = sub_2459108F4();

  if (!v4)
  {
    goto LABEL_9;
  }

  sub_245910A04();
  sub_245911484();
  if (!*(v4 + 16) || (v5 = sub_24588C770(v13), (v6 & 1) == 0))
  {

    sub_2457AF59C(v13);
LABEL_9:
    v14 = 0u;
    v15 = 0u;
    goto LABEL_10;
  }

  sub_2457816F0(*(v4 + 56) + 32 * v5, &v14);
  sub_2457AF59C(v13);

  if (!*(&v15 + 1))
  {
LABEL_10:
    sub_2457B67E4(&v14);
    return;
  }

  type metadata accessor for CGRect(0);
  if (swift_dynamicCast())
  {
    v7 = *v13;
    v8 = *&v13[1];
    v9 = *&v13[2];
    v10 = *&v13[3];
    v11 = sub_2458A1930();
    v16.origin.x = v7;
    v16.origin.y = v8;
    v16.size.width = v9;
    v16.size.height = v10;
    CGRectGetHeight(v16);
    [v11 contentInset];
    [v11 setContentInset_];

    v12 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___scrollView);
    v17.origin.x = v7;
    v17.origin.y = v8;
    v17.size.width = v9;
    v17.size.height = v10;
    CGRectGetHeight(v17);
    [v12 verticalScrollIndicatorInsets];
    [v12 setVerticalScrollIndicatorInsets_];
  }
}

uint64_t sub_2457B6144()
{
}

id sub_2457B61A4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_2457B62DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = [a1 text];
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v9 = sub_245910A04();
  v11 = v10;

  v12 = sub_245910EF4();
  if (v14)
  {

    return 1;
  }

  sub_2457B63EC(v12, v13, a4, a5, v9, v11);

  v16 = sub_245910B04();

  v17 = sub_24590D644();
  v19 = v18;

  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17;
  }

  return v20 >= v16;
}

unint64_t sub_2457B63EC(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  sub_2459112E4();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  sub_2459112E4();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v17 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v17) = 1;
  }

  v18 = 4 << v17;
  v19 = a1;
  if ((a1 & 0xC) == 4 << v17)
  {
    result = sub_2458487F0(a1, a5, a6);
    v19 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v20 = v19 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v21 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v22 = (v21 << 16) | 7;
    LOBYTE(v23) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v21 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 < v19 >> 16)
  {
    goto LABEL_42;
  }

  v20 = sub_245910B74();
  v27 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v27 = 7;
  }

  v22 = v27 | (v21 << 16);
  v23 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  result = a2;
  if ((a2 & 0xC) == 4 << v23)
  {
    v28 = v22;
    result = sub_2458487F0(a2, a5, a6);
    v22 = v28;
  }

  if ((v22 & 0xC) == v18)
  {
    v29 = result;
    v22 = sub_2458487F0(v22, a5, a6);
    result = v29;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      result = (v22 >> 16) - (result >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v21 < result >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v21 >= v22 >> 16)
  {
    result = sub_245910B74();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(a4) & 0xF;
        v26 = __OFADD__(v20, v25);
        v24 = v20 + v25;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v24 = v20 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v20, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v30 = result;
    v31 = sub_245910B44();
    result = v30;
    v26 = __OFADD__(v20, v31);
    v24 = v20 + v31;
    if (!v26)
    {
LABEL_21:
      v26 = __OFADD__(v24, result);
      result += v24;
      if (!v26)
      {
        MEMORY[0x245D76110](result);
LABEL_23:
        sub_245910BE4();
        sub_2457B6790();
        sub_245910B14();

        sub_245910B14();
        sub_245841200(a2, a5, a6);
        sub_245910B14();

        return 0;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_2457B6790()
{
  result = qword_27EE292A0;
  if (!qword_27EE292A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE292A0);
  }

  return result;
}

uint64_t sub_2457B67E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2457B684C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2457AA49C;

  return sub_2457B3B38();
}

uint64_t sub_2457B6900(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2457A18F4;

  return sub_2457B53EC(a1, v4, v5, v7, v6);
}

uint64_t sub_2457B69C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457A18F4;

  return sub_2457B5098(a1, v4, v5, v6);
}

uint64_t sub_2457B6AA0()
{
  v0 = sub_24590C234();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2459109B4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v2 = qword_27EE32B38;
  sub_24590C224();
  result = sub_245910A54();
  qword_27EE29330 = result;
  *algn_27EE29338 = v4;
  return result;
}

uint64_t sub_2457B6BE8()
{
  v0 = sub_24590C234();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2459109B4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v2 = qword_27EE32B38;
  sub_24590C224();
  result = sub_245910A54();
  qword_27EE29340 = result;
  *algn_27EE29348 = v4;
  return result;
}

uint64_t sub_2457B6D2C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  MEMORY[0x28223BE20](v6 - 8);
  v87 = &v73 - v7;
  v94 = sub_24590F354();
  v8 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_issuerURL;
  v12 = sub_24590C094();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v78 = v12;
  v77 = v14;
  v76 = v13 + 56;
  (v14)(v3 + v11, 1, 1);
  *(v3 + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_launchURLTask) = 0;
  *(v3 + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_showPrimaryButton) = 1;
  v15 = (v3 + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_primaryButtonTitleText);
  *v15 = 0;
  v15[1] = 0;
  v85 = v15;
  *(v3 + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_showSecondaryButton) = 1;
  v16 = (v3 + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_secondaryButtonTitleText);
  *v16 = 0;
  v16[1] = 0;
  v86 = v16;
  *(v3 + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_headerViewImageDisplayMode) = 3;
  v17 = (v3 + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_updateContent);
  *v17 = 0;
  v17[1] = 0;
  *(v3 + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_proofingConfig) = a1;
  *(v3 + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_proofingFlowManager) = a2;
  v18 = a1;
  v95 = a2;

  v19 = sub_24590D5E4();
  v21 = v20;
  v22 = sub_24590D624();
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v81 = sub_24590D584();
  v83 = v24;
  result = sub_24590D5A4();
  v82 = result;
  v84 = v27;
  if (v21)
  {

    v28 = sub_24586C880(v19, v21);
    v30 = v29;
    result = swift_bridgeObjectRelease_n();
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v31 = (v3 + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_titleText);
  *v31 = v28;
  v31[1] = v30;
  v32 = *(v23 + 16);
  if (v32)
  {
    v33 = 0;
    v92 = (v8 + 8);
    v93 = OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_textReplacementHelper;
    v34 = v23 + 40;
    v74 = v32 - 1;
    v88 = MEMORY[0x277D84F90];
    *&v26 = 136315138;
    v89 = v26;
    v79 = v18;
    v80 = v3;
    v90 = v10;
    v91 = v32;
    v75 = v23 + 40;
    while (1)
    {
      v35 = (v34 + 16 * v33);
      v36 = v33;
      while (1)
      {
        if (v36 >= *(v23 + 16))
        {
          __break(1u);
          return result;
        }

        v38 = *(v35 - 1);
        v37 = *v35;

        sub_24590C714();

        v39 = sub_24590F344();
        v40 = sub_245910F54();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = v23;
          v43 = swift_slowAlloc();
          v96 = v43;
          *v41 = v89;
          *(v41 + 4) = sub_2458CC378(v38, v37, &v96);
          _os_log_impl(&dword_245767000, v39, v40, "looking up text for %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v43);
          v44 = v43;
          v23 = v42;
          MEMORY[0x245D77B40](v44, -1, -1);
          v45 = v41;
          v46 = v94;
          v10 = v90;
          MEMORY[0x245D77B40](v45, -1, -1);

          (*v92)(v10, v46);
        }

        else
        {

          (*v92)(v10, v94);
        }

        if (*(v95 + v93))
        {
          break;
        }

LABEL_11:
        ++v36;
        v35 += 2;
        if (v91 == v36)
        {
          v18 = v79;
          v3 = v80;
          goto LABEL_27;
        }
      }

      v47 = sub_24590E664();
      v49 = v48;

      if (!v49)
      {
        goto LABEL_11;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v50 = v23;
      if ((result & 1) == 0)
      {
        result = sub_24580A178(0, *(v88 + 2) + 1, 1, v88);
        v88 = result;
      }

      v18 = v79;
      v52 = *(v88 + 2);
      v51 = *(v88 + 3);
      if (v52 >= v51 >> 1)
      {
        result = sub_24580A178((v51 > 1), v52 + 1, 1, v88);
        v88 = result;
      }

      v33 = v36 + 1;
      v53 = v88;
      *(v88 + 2) = v52 + 1;
      v54 = &v53[16 * v52];
      *(v54 + 4) = v47;
      *(v54 + 5) = v49;
      v55 = v74 == v36;
      v3 = v80;
      v23 = v50;
      v34 = v75;
      if (v55)
      {
        goto LABEL_27;
      }
    }
  }

  v88 = MEMORY[0x277D84F90];
LABEL_27:

  v96 = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29378);
  sub_2457B9E20();
  v56 = sub_245910924();
  v58 = v57;

  v59 = (v3 + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_subtitleText);
  *v59 = v56;
  v59[1] = v58;
  v60 = v83;
  if (v83)
  {

    v61 = sub_24586C880(v81, v60);
    v63 = v62;
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v61 = 0;
    v63 = 0;
  }

  v64 = v85;
  v65 = v86;
  v66 = v84;
  *v85 = v61;
  v64[1] = v63;

  if (v66)
  {

    v67 = sub_24586C880(v82, v66);
    v69 = v68;
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v67 = 0;
    v69 = 0;
  }

  *v65 = v67;
  v65[1] = v69;

  *(v3 + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_inWatchModeOnly) = (*(v95 + 144) & 3) == 2;
  sub_24590D5B4();
  if (v70)
  {
    v71 = v87;
    sub_24590C084();
  }

  else
  {

    v71 = v87;
    v77(v87, 1, 1, v78);
  }

  v72 = OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_issuerURL;
  swift_beginAccess();
  sub_2457B9E84(v71, v3 + v72);
  swift_endAccess();
  return v3;
}

uint64_t sub_2457B7450(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 112) = a1;
  v3 = sub_24590F354();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  sub_245910D34();
  *(v2 + 48) = sub_245910D24();
  v5 = sub_245910CD4();
  *(v2 + 56) = v5;
  *(v2 + 64) = v4;

  return MEMORY[0x2822009F8](sub_2457B7548, v5, v4);
}

uint64_t sub_2457B7548()
{
  v0[9] = *(v0[2] + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_proofingConfig);
  v1 = sub_24590D5B4();
  v3 = v2;
  v0[10] = v2;
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_2457B7618;

  return sub_245780C94(v1, v3);
}

uint64_t sub_2457B7618(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = a2;

  v5 = *(v3 + 64);
  v6 = *(v3 + 56);

  return MEMORY[0x2822009F8](sub_2457B7764, v6, v5);
}

uint64_t sub_2457B7764()
{
  v1 = *(v0 + 104);

  if (v1)
  {
    v2 = *(v0 + 104);
    if (qword_27EE286B8 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 96);
    v4 = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29398);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_245916930;
    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = sub_2457BA078();
    *(v5 + 32) = v3;
    *(v5 + 40) = v2;
    v6 = sub_2459109D4();
    v8 = v7;

    v9 = (v4 + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_primaryButtonTitleText);
    *v9 = v6;
    v9[1] = v8;
  }

  if (*(v0 + 112) == 1)
  {
    v10 = sub_24590D5A4();
    if (v11)
    {
      v12 = sub_24586C880(v10, v11);
      v14 = v13;

      v10 = v12;
    }

    else
    {
      v14 = 0;
    }

    v17 = (*(v0 + 16) + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_secondaryButtonTitleText);
    *v17 = v10;
    v17[1] = v14;
  }

  else
  {
    if (qword_27EE286B0 != -1)
    {
      swift_once();
    }

    v15 = *algn_27EE29338;
    v16 = (*(v0 + 16) + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_secondaryButtonTitleText);
    *v16 = qword_27EE29330;
    v16[1] = v15;
  }

  sub_24590C714();
  v18 = sub_24590F344();
  v19 = sub_245910F54();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_245767000, v18, v19, "IdentityProofingExtendedReviewViewConfiguration notify content updates", v20, 2u);
    MEMORY[0x245D77B40](v20, -1, -1);
  }

  v22 = *(v0 + 32);
  v21 = *(v0 + 40);
  v24 = *(v0 + 16);
  v23 = *(v0 + 24);

  (*(v22 + 8))(v21, v23);
  v25 = *(v24 + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_updateContent);
  if (v25)
  {

    v25(v26);
    sub_245771C34(v25);
  }

  v27 = *(v0 + 8);

  return v27();
}

BOOL sub_2457B7A40()
{
  v1 = sub_24590F354();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_launchURLTask;
  v9 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_launchURLTask);
  if (v9)
  {
    sub_24590C714();
    v10 = sub_24590F344();
    v11 = sub_245910F54();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_245767000, v10, v11, "IdentityProofingExtendedReviewViewConfiguration Launch issuer URL already in progress", v12, 2u);
      MEMORY[0x245D77B40](v12, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v13 = sub_245910D64();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    sub_245910D34();

    v14 = sub_245910D24();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v0;
    *(v0 + v8) = sub_24586CFCC(0, 0, v7, &unk_245917538, v15);
  }

  return v9 == 0;
}

uint64_t sub_2457B7CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_245910D34();
  v4[4] = sub_245910D24();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_2457B7D58;

  return sub_2457B7F94();
}

uint64_t sub_2457B7D58()
{
  *(*v1 + 48) = v0;

  v3 = sub_245910CD4();
  if (v0)
  {
    v4 = sub_2457B7F30;
  }

  else
  {
    v4 = sub_2457B7EB4;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_2457B7EB4()
{
  v1 = *(v0 + 16);

  *(v1 + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_launchURLTask) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2457B7F30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2457B7F94()
{
  v1[24] = v0;
  v2 = sub_24590F354();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v3 = sub_24590C094();
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  sub_245910D34();
  v1[35] = sub_245910D24();
  v5 = sub_245910CD4();
  v1[36] = v5;
  v1[37] = v4;

  return MEMORY[0x2822009F8](sub_2457B8140, v5, v4);
}

uint64_t sub_2457B8140()
{
  v43 = v0;
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[24];
  v5 = OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_issuerURL;
  swift_beginAccess();
  sub_2457B9FA8(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_245778F94(v0[29], &unk_27EE29470);
    v6 = swift_task_alloc();
    v0[38] = v6;
    *v6 = v0;
    v6[1] = sub_2457B8648;
    v7 = v0[33];

    return sub_2457B8DF4(v7);
  }

  else
  {
    v9 = v0[30];
    v10 = v0[31];
    v11 = v0[28];
    (*(v10 + 32))(v0[34], v0[29], v9);
    (*(v10 + 56))(v11, 1, 1, v9);
    swift_beginAccess();
    sub_2457B9E84(v11, v4 + v5);
    swift_endAccess();
    v12 = v0[34];
    v14 = v0[31];
    v13 = v0[32];
    v15 = v0[30];
    sub_24590C714();
    (*(v14 + 16))(v13, v12, v15);
    v16 = sub_24590F344();
    v17 = sub_245910F54();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[31];
    v19 = v0[32];
    v21 = v0[30];
    v23 = v0[26];
    v22 = v0[27];
    v24 = v0[25];
    if (v18)
    {
      v41 = v0[25];
      v25 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v42 = v40;
      *v25 = 136315138;
      sub_2457BA030(&qword_27EE29390, MEMORY[0x277CC9260]);
      v26 = sub_2459116E4();
      v39 = v22;
      v28 = v27;
      v38 = v17;
      v31 = *(v20 + 8);
      v29 = v20 + 8;
      v30 = v31;
      v31(v19, v21);
      v32 = sub_2458CC378(v26, v28, &v42);

      *(v25 + 4) = v32;
      _os_log_impl(&dword_245767000, v16, v38, "IdentityProofingExtendedReviewViewConfiguration Valid Extended Review URL: %s, opening the app or an external browser", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x245D77B40](v40, -1, -1);
      MEMORY[0x245D77B40](v25, -1, -1);

      (*(v23 + 8))(v39, v41);
    }

    else
    {

      v33 = *(v20 + 8);
      v29 = v20 + 8;
      v30 = v33;
      v33(v19, v21);
      (*(v23 + 8))(v22, v24);
    }

    v0[40] = v29;
    v0[41] = v30;
    v34 = [objc_opt_self() sharedApplication];
    v0[42] = v34;
    v35 = sub_24590C034();
    v0[43] = v35;
    sub_2458B880C(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_2457BA030(&qword_27EE28988, type metadata accessor for OpenExternalURLOptionsKey);
    v36 = sub_2459108E4();
    v0[44] = v36;

    v0[2] = v0;
    v0[7] = v0 + 45;
    v0[3] = sub_2457B8B48;
    v37 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29388);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2457B99C0;
    v0[13] = &block_descriptor_9;
    v0[14] = v37;
    [v34 openURL:v35 options:v36 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_2457B8648()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_2457B8D44;
  }

  else
  {
    v5 = sub_2457B8784;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2457B8784()
{
  v33 = v0;
  (*(v0[31] + 32))(v0[34], v0[33], v0[30]);
  v1 = v0[34];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  sub_24590C714();
  (*(v3 + 16))(v2, v1, v4);
  v5 = sub_24590F344();
  v6 = sub_245910F54();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[30];
  v12 = v0[26];
  v11 = v0[27];
  v13 = v0[25];
  if (v7)
  {
    v31 = v0[25];
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v14 = 136315138;
    sub_2457BA030(&qword_27EE29390, MEMORY[0x277CC9260]);
    v15 = sub_2459116E4();
    v29 = v11;
    v17 = v16;
    v28 = v6;
    v20 = *(v9 + 8);
    v18 = v9 + 8;
    v19 = v20;
    v20(v8, v10);
    v21 = sub_2458CC378(v15, v17, &v32);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_245767000, v5, v28, "IdentityProofingExtendedReviewViewConfiguration Valid Extended Review URL: %s, opening the app or an external browser", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x245D77B40](v30, -1, -1);
    MEMORY[0x245D77B40](v14, -1, -1);

    (*(v12 + 8))(v29, v31);
  }

  else
  {

    v22 = *(v9 + 8);
    v18 = v9 + 8;
    v19 = v22;
    v22(v8, v10);
    (*(v12 + 8))(v11, v13);
  }

  v0[40] = v18;
  v0[41] = v19;
  v23 = [objc_opt_self() sharedApplication];
  v0[42] = v23;
  v24 = sub_24590C034();
  v0[43] = v24;
  sub_2458B880C(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_2457BA030(&qword_27EE28988, type metadata accessor for OpenExternalURLOptionsKey);
  v25 = sub_2459108E4();
  v0[44] = v25;

  v0[2] = v0;
  v0[7] = v0 + 45;
  v0[3] = sub_2457B8B48;
  v26 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29388);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2457B99C0;
  v0[13] = &block_descriptor_9;
  v0[14] = v26;
  [v23 openURL:v24 options:v25 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2457B8B48()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);

  return MEMORY[0x2822009F8](sub_2457B8C50, v2, v1);
}

uint64_t sub_2457B8C50()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[41];
  v4 = v0[42];
  v5 = v0[34];
  v6 = v0[30];

  v3(v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2457B8D44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2457B8DF4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_24590EA74();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  v2[7] = swift_task_alloc();
  v4 = sub_24590F354();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  sub_245910D34();
  v2[12] = sub_245910D24();
  v6 = sub_245910CD4();
  v2[13] = v6;
  v2[14] = v5;

  return MEMORY[0x2822009F8](sub_2457B8F88, v6, v5);
}

uint64_t sub_2457B8F88()
{
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "IdentityProofingExtendedReviewViewConfiguration fetching new extended review link", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];

  v7 = *(v6 + 8);
  v0[15] = v7;
  v7(v4, v5);
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_2457B90D0;

  return sub_245872148();
}

uint64_t sub_2457B90D0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = v1;

  v5 = *(v3 + 112);
  v6 = *(v3 + 104);
  if (v1)
  {
    v7 = sub_2457B9708;
  }

  else
  {
    v7 = sub_2457B9214;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

unint64_t sub_2457B9214()
{

  result = sub_24590DA44();
  if (!result)
  {
    goto LABEL_13;
  }

  v2 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_12:

    goto LABEL_13;
  }

  v13 = result;
  v14 = sub_245911424();
  result = v13;
  if (!v14)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x245D76B30](0);
  }

  else
  {
    if (!*(v2 + 16))
    {
      __break(1u);
      return result;
    }

    v3 = *(result + 32);
  }

  v4 = v3;

  sub_24590D5B4();
  v6 = v5;

  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = *(v0 + 56);
  sub_24590C084();

  v8 = sub_24590C094();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_245778F94(*(v0 + 56), &unk_27EE29470);
LABEL_13:
    v15 = *(v0 + 136);
    (*(*(v0 + 40) + 104))(*(v0 + 48), *MEMORY[0x277CFFB40], *(v0 + 32));
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_2457BA030(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
    v16 = swift_allocError();
    sub_24590EA94();
    swift_willThrow();

    sub_24590C714();
    v17 = v16;
    v18 = sub_24590F344();
    v19 = sub_245910F54();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v16;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_245767000, v18, v19, "IdentityProofingExtendedReviewViewConfiguration failed to refresh extended review link: %@", v20, 0xCu);
      sub_245778F94(v21, &qword_27EE297C0);
      MEMORY[0x245D77B40](v21, -1, -1);
      MEMORY[0x245D77B40](v20, -1, -1);
    }

    v24 = *(v0 + 120);
    v25 = *(v0 + 80);
    v26 = *(v0 + 64);
    v27 = *(v0 + 48);
    v28 = *(v0 + 32);
    v29 = *(v0 + 40);

    v24(v25, v26);
    (*(v29 + 104))(v27, *MEMORY[0x277CFF920], v28);
    v30 = v16;
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();

    v12 = *(v0 + 8);
    goto LABEL_16;
  }

  v10 = *(v0 + 56);
  v11 = *(v0 + 16);

  (*(v9 + 32))(v11, v10, v8);

  v12 = *(v0 + 8);
LABEL_16:

  return v12();
}

uint64_t sub_2457B9708()
{

  v1 = v0[18];
  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F54();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_245767000, v3, v4, "IdentityProofingExtendedReviewViewConfiguration failed to refresh extended review link: %@", v5, 0xCu);
    sub_245778F94(v6, &qword_27EE297C0);
    MEMORY[0x245D77B40](v6, -1, -1);
    MEMORY[0x245D77B40](v5, -1, -1);
  }

  v9 = v0[15];
  v10 = v0[10];
  v11 = v0[8];
  v12 = v0[6];
  v14 = v0[4];
  v13 = v0[5];

  v9(v10, v11);
  (*(v13 + 104))(v12, *MEMORY[0x277CFF920], v14);
  v15 = v1;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_2457BA030(&qword_27EE2BC40, MEMORY[0x277CFFE30]);
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_2457B99C0(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_2457B9A1C()
{
  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_issuerURL, &unk_27EE29470);

  sub_2457B2F00(v0 + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_delegate);

  sub_245771C34(*(v0 + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_updateContent));
  return v0;
}

uint64_t sub_2457B9AF8()
{
  sub_2457B9A1C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IdentityProofingExtendedReviewViewConfiguration()
{
  result = qword_27EE29360;
  if (!qword_27EE29360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2457B9BA4()
{
  sub_2457B9C88();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2457B9C88()
{
  if (!qword_27EE29370)
  {
    sub_24590C094();
    v0 = sub_2459112C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE29370);
    }
  }
}

uint64_t sub_2457B9D18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*v3 + *a3);

  return v4;
}

uint64_t sub_2457B9D68()
{
  v1 = *v0 + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_delegate;
  v2 = 2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    LOBYTE(v3) = (*(v3 + 8))(ObjectType, v3);
    swift_unknownObjectRelease();
    if (v3)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }

  return v2;
}

uint64_t sub_2457B9DFC(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_updateContent);
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  return sub_245771C34(v4);
}

unint64_t sub_2457B9E20()
{
  result = qword_27EE29380;
  if (!qword_27EE29380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE29378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE29380);
  }

  return result;
}

uint64_t sub_2457B9E84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2457B9EF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457A18F4;

  return sub_2457B7CA8(a1, v4, v5, v6);
}

uint64_t sub_2457B9FA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2457BA030(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2457BA078()
{
  result = qword_27EE293A0;
  if (!qword_27EE293A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE293A0);
  }

  return result;
}

char *sub_2457BA0CC(void *a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for IdentityProofingExtendedReviewViewConfiguration();
  swift_allocObject();
  v6 = a1;

  *&v3[OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingExtendedReviewViewController_viewConfig] = sub_2457B6D2C(v6, a2);
  *&v3[OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingExtendedReviewViewController_proofingFlowManager] = a2;
  v7 = swift_retain_n();
  v8 = sub_24588E6E8(v7, v3);

  *(*&v8[OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingExtendedReviewViewController_viewConfig] + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_delegate + 8) = &off_28588B5F8;
  swift_unknownObjectWeakAssign();
  return v8;
}

uint64_t sub_2457BA204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  sub_245910D34();
  v4[11] = sub_245910D24();
  v6 = sub_245910CD4();
  v4[12] = v6;
  v4[13] = v5;

  return MEMORY[0x2822009F8](sub_2457BA29C, v6, v5);
}

uint64_t sub_2457BA29C()
{
  v1 = [*(v0 + 80) navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 80);
    v4 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration;
    swift_beginAccess();
    sub_2457ACB24(v3 + v4, v0 + 16);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    LOBYTE(v3) = (*(v6 + 208))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    if ((v3 & 1) == 0)
    {
      v8 = [v2 viewControllers];
      sub_245790840();
      v9 = sub_245910C44();

      if (v9 >> 62)
      {
        v10 = sub_245911424();
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v7 = v10 == 1;
      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_8:
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *v11 = v0;
  v11[1] = sub_2457BA458;

  return sub_2457B7450(v7);
}

uint64_t sub_2457BA458()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_2457BA578, v3, v2);
}

uint64_t sub_2457BA578()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2457BA734(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for IdentityProofingExtendedReviewViewController();
  objc_msgSendSuper2(&v6, sel_viewDidDisappear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC9CoreIDVUI44IdentityProofingExtendedReviewViewController_viewConfig];
  v4 = OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_launchURLTask;
  if (*(v3 + OBJC_IVAR____TtC9CoreIDVUI47IdentityProofingExtendedReviewViewConfiguration_launchURLTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
    sub_245910DD4();
  }

  *(v3 + v4) = 0;
}

uint64_t sub_2457BA848()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = (v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction);
  v3 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction);
  *v2 = sub_2457BAF2C;
  v2[1] = v1;

  sub_245771C34(v3);

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = (v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction);
  v6 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction);
  *v5 = sub_2457BAF34;
  v5[1] = v4;

  sub_245771C34(v6);
}

void sub_2457BA950()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;

    v2 = sub_2457B7A40();

    if (v2)
    {
      sub_24590E3B4();
      sub_24590E034();
      sub_2457BAC28();
    }
  }
}

void sub_2457BAA0C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [v1 navigationController];
    if (v2)
    {
      v3 = v2;
      v4 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration;
      swift_beginAccess();
      sub_2457ACB24(v1 + v4, v10);
      v5 = v11;
      v6 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      LOBYTE(v4) = (*(v6 + 208))(v5, v6);
      __swift_destroy_boxed_opaque_existential_1(v10);
      if ((v4 & 1) == 0)
      {
        v7 = [v3 viewControllers];
        sub_245790840();
        v8 = sub_245910C44();

        if (v8 >> 62)
        {
          v9 = sub_245911424();
        }

        else
        {
          v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v9 == 1)
        {

          sub_245883548(0);

          sub_24590E3B4();
          sub_24590DFE4();
          sub_2457BAC28();

          return;
        }

        goto LABEL_6;
      }
    }

LABEL_6:

    sub_245887AB8(v1, 0x6E61437472656C61, 0xEB000000006C6563, 1, 0, 0);
  }
}

uint64_t sub_2457BAC28()
{
  v1 = [v0 navigationController];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_configuration;
  swift_beginAccess();
  sub_2457ACB24(v0 + v3, v11);
  v4 = v12;
  v5 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v6 = (*(v5 + 208))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v11);
  if (v6)
  {

LABEL_8:
    sub_24590E1F4();
    goto LABEL_9;
  }

  v7 = [v2 viewControllers];
  sub_245790840();
  v8 = sub_245910C44();

  if (v8 >> 62)
  {
    v9 = sub_245911424();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 != 1)
  {
    goto LABEL_8;
  }

  sub_24590E254();
LABEL_9:

  sub_24590E0D4();
  sub_24586F98C();
  sub_24590E484();
}

uint64_t sub_2457BAE48()
{
}

id sub_2457BAE88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityProofingExtendedReviewViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2457BAF3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2457A18F4;

  return sub_2457BA204(a1, v4, v5, v6);
}

uint64_t sub_2457BAFF0()
{
  v1[18] = v0;
  v2 = sub_24590F354();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2457BB0BC, 0, 0);
}

uint64_t sub_2457BB0BC()
{
  v1 = *(v0[18] + 16);
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_2457BB1DC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE293C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2457BB544;
  v0[13] = &block_descriptor_10_0;
  v0[14] = v2;
  [v1 checkUserConsentWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2457BB1DC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_2457BB414;
  }

  else
  {
    v2 = sub_2457BB2EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2457BB2EC()
{
  v1 = *(v0 + 192);
  sub_24590C714();
  v2 = sub_24590F344();
  v3 = sub_245910F54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v1;
    _os_log_impl(&dword_245767000, v2, v3, "checkUserConsent -> %{BOOL}d", v4, 8u);
    MEMORY[0x245D77B40](v4, -1, -1);
  }

  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  v7 = *(v0 + 160);

  (*(v7 + 8))(v5, v6);

  v8 = *(v0 + 8);

  return v8(v1);
}

uint64_t sub_2457BB414()
{
  swift_willThrow();
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F64();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_245767000, v1, v2, "Received an error while check if user consent data exists to share biome data", v3, 2u);
    MEMORY[0x245D77B40](v3, -1, -1);
  }

  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];

  (*(v5 + 8))(v4, v6);
  swift_willThrow();

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_2457BB544(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0);
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

uint64_t sub_2457BB610()
{
  v1[23] = v0;
  v2 = sub_24590F354();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2457BB6DC, 0, 0);
}

uint64_t sub_2457BB6DC()
{
  v1 = *(v0[23] + 16);
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_2457BB7FC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE293B8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2457A8B7C;
  v0[13] = &block_descriptor_6_1;
  v0[14] = v2;
  [v1 fetchUserConsentWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2457BB7FC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_2457BBAAC;
  }

  else
  {
    v2 = sub_2457BB90C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2457BB90C()
{
  v16 = v0;
  v1 = v0[21];
  sub_24590C714();
  v2 = sub_24590F344();
  v3 = sub_245910F54();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = sub_24590E6F4();
    v12 = sub_2458CC378(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_245767000, v2, v3, "Received the consent -> %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245D77B40](v9, -1, -1);
    MEMORY[0x245D77B40](v8, -1, -1);

    (*(v6 + 8))(v5, v7);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v13 = v0[1];

  return v13(v1);
}

uint64_t sub_2457BBAAC()
{
  v19 = v0;
  v1 = v0[28];
  swift_willThrow();
  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[25];
    v5 = v0[26];
    v7 = v0[24];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_2459117D4();
    v12 = sub_2458CC378(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_245767000, v3, v4, "Received an error while retrieving the consent -> %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245D77B40](v9, -1, -1);
    MEMORY[0x245D77B40](v8, -1, -1);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v14 = v0[25];
    v13 = v0[26];
    v15 = v0[24];

    (*(v14 + 8))(v13, v15);
  }

  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_2457BBC90(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = sub_24590F354();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2457BBD5C, 0, 0);
}

uint64_t sub_2457BBD5C()
{
  sub_24590E3C4();
  v1 = sub_24590E714();
  if (v1 == sub_24590E714())
  {
    sub_24590E104();
  }

  else
  {
    sub_24590E144();
  }

  v2 = v0[23];
  v11 = v0[22];
  sub_24590E4B4();
  sub_24590E4A4();
  sub_24590DF44();
  BYTE2(v10) = 2;
  LOWORD(v10) = 514;
  v8 = sub_24590E1B4();
  v9 = v3;
  LOBYTE(v7) = 2;
  sub_24590E484();

  v4 = *(v2 + 16);
  v0[2] = v0;
  v0[3] = sub_2457BBF70;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FF0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24579D0B4;
  v0[13] = &block_descriptor_10;
  v0[14] = v5;
  [v4 didChangeUserConsentWithStatus:v11 completionHandler:{v7, 0, 0, 0, 0, 0, 0, v8, v9, 0, 0, v10, 0, 0}];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2457BBF70()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_2457BC200;
  }

  else
  {
    v2 = sub_2457BC080;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2457BC080()
{
  v15 = v0;
  sub_24590C714();
  v1 = sub_24590F344();
  v2 = sub_245910F54();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = sub_24590E6F4();
    v11 = sub_2458CC378(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_245767000, v1, v2, "The consent has been changed to %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245D77B40](v8, -1, -1);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  (*(v6 + 8))(v4, v5);

  v12 = v0[1];

  return v12();
}

uint64_t sub_2457BC200()
{
  v19 = v0;
  v1 = v0[28];
  swift_willThrow();
  sub_24590C714();
  v2 = v1;
  v3 = sub_24590F344();
  v4 = sub_245910F64();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[25];
    v5 = v0[26];
    v7 = v0[24];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_2459117D4();
    v12 = sub_2458CC378(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_245767000, v3, v4, "Received an error while updating the consent -> %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245D77B40](v9, -1, -1);
    MEMORY[0x245D77B40](v8, -1, -1);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v14 = v0[25];
    v13 = v0[26];
    v15 = v0[24];

    (*(v14 + 8))(v13, v15);
  }

  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_2457BC3E4()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_2457BC47C()
{
  result = qword_27EE293C8;
  if (!qword_27EE293C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE293C8);
  }

  return result;
}

id sub_2457BC4D0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = objc_opt_self();
  result = [v1 _preferredFontForTextStyle_maximumContentSizeCategory_];
  if (result)
  {
    v3 = result;
    [result pointSize];
    v4 = [v1 systemFontOfSize_weight_];

    [v0 setFont_];
    [v0 setAdjustsFontForContentSizeCategory_];
    [v0 setNumberOfLines_];
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2457BC5F0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() _preferredFontForTextStyle_maximumContentSizeCategory_];
  [v0 setFont_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setNumberOfLines_];
  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setAdjustsFontForContentSizeCategory_];
  return v0;
}

id sub_2457BC6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingFedStatsOptinTableViewCell_headlineLabel;
  *&v3[v6] = sub_2457BC4D0();
  v7 = OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingFedStatsOptinTableViewCell_subtitle;
  *&v3[v7] = sub_2457BC5F0();
  v8 = OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingFedStatsOptinTableViewCell_bulletList;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setNumberOfLines_];
  v10 = objc_opt_self();
  v11 = [v10 secondaryLabelColor];
  [v9 setTextColor_];

  [v9 setAdjustsFontForContentSizeCategory_];
  *&v3[v8] = v9;
  v12 = OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingFedStatsOptinTableViewCell_divider;
  v13 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v14 = [v10 systemGray3Color];
  [v13 setBackgroundColor_];

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v12] = v13;
  v15 = OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingFedStatsOptinTableViewCell_checkmarkImageView;
  v16 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [objc_opt_self() checkmarkImage];
  [v16 setImage_];

  *&v3[v15] = v16;
  if (a3)
  {
    v18 = sub_2459109C4();
  }

  else
  {
    v18 = 0;
  }

  v22.receiver = v3;
  v22.super_class = type metadata accessor for IdentityProofingFedStatsOptinTableViewCell();
  v19 = objc_msgSendSuper2(&v22, sel_initWithStyle_reuseIdentifier_, a1, v18);

  sub_24579D5E0(0, &qword_27EE2A9A0);
  v20 = v19;
  sub_2459110A4();
  MEMORY[0x245D76800]();

  swift_unknownObjectRelease();

  return v20;
}

void sub_2457BC9F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingFedStatsOptinTableViewCell_headlineLabel);
  sub_24590E794();
  if (v2)
  {
    v3 = sub_2459109C4();
  }

  else
  {
    v3 = 0;
  }

  [v1 setText_];

  v4 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingFedStatsOptinTableViewCell_subtitle);
  sub_24590E7C4();
  if (v5)
  {
    v6 = sub_2459109C4();
  }

  else
  {
    v6 = 0;
  }

  [v4 setText_];

  v7 = sub_24590E7A4();
  if (v7)
  {
    v8 = v7;
    v9 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingFedStatsOptinTableViewCell_bulletList);
    v10 = objc_opt_self();
    v11 = *MEMORY[0x277D76968];
    v12 = v9;
    v13 = [v10 preferredFontForTextStyle_];
    v14 = sub_24577FCE8(v8, v13);

    [v12 setAttributedText_];
  }

  sub_2457BCEB0();
}

void sub_2457BCB74(char a1)
{
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 pointSize];
  v5 = v4;

  v6 = [objc_opt_self() configurationWithPointSize:4 weight:v5];
  v16 = v6;
  if (a1)
  {
    v7 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingFedStatsOptinTableViewCell_checkmarkImageView);
    v8 = v16;
    v9 = sub_2459109C4();
    v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];
  }

  else
  {
    v11 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingFedStatsOptinTableViewCell_checkmarkImageView);
    v12 = v6;
    v7 = v11;
    v13 = sub_2459109C4();
    v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v12];

    if (v14)
    {
      v15 = [objc_opt_self() systemGray2Color];
      v10 = [v14 imageWithTintColor:v15 renderingMode:1];
    }

    else
    {
      v10 = 0;
    }
  }

  [v7 setImage_];
}

void sub_2457BCD8C()
{
  v1 = [v0 contentView];
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  v4 = objc_opt_self();
  v5 = &selRef_secondarySystemGroupedBackgroundColor;
  if (v3 != 2)
  {
    v5 = &selRef_systemGroupedBackgroundColor;
  }

  v6 = [v4 *v5];
  [v1 setBackgroundColor_];
}

void sub_2457BCEB0()
{
  v1 = v0;
  v2 = [v0 contentView];
  v76 = OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingFedStatsOptinTableViewCell_subtitle;
  [v2 addSubview_];

  v3 = [v0 contentView];
  v4 = OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingFedStatsOptinTableViewCell_headlineLabel;
  [v3 addSubview_];

  v5 = [v0 contentView];
  v6 = OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingFedStatsOptinTableViewCell_checkmarkImageView;
  [v5 addSubview_];

  v7 = [v1 contentView];
  v77 = OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingFedStatsOptinTableViewCell_bulletList;
  [v7 addSubview_];

  [v1 setSelectionStyle_];
  v78 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2459176C0;
  v9 = [*&v1[v6] leadingAnchor];
  v10 = [v1 contentView];
  v11 = [v10 leadingAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:12.0];
  *(v8 + 32) = v12;
  v13 = [*&v1[v6] widthAnchor];
  v14 = [v13 constraintEqualToConstant_];

  *(v8 + 40) = v14;
  v15 = [*&v1[v6] heightAnchor];
  v16 = [v15 constraintEqualToConstant_];

  *(v8 + 48) = v16;
  v17 = [*&v1[v6] centerYAnchor];
  v18 = [*&v1[v4] centerYAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v8 + 56) = v19;
  v20 = [*&v1[v4] leadingAnchor];
  v21 = [*&v1[v6] trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:8.0];

  *(v8 + 64) = v22;
  v23 = [*&v1[v4] trailingAnchor];
  v24 = [v1 contentView];
  v25 = [v24 layoutMarginsGuide];

  v26 = [v25 trailingAnchor];
  v27 = [v23 constraintEqualToAnchor:v26 constant:-20.0];

  *(v8 + 72) = v27;
  v28 = [*&v1[v4] firstBaselineAnchor];
  v29 = [v1 contentView];
  v30 = [v29 layoutMarginsGuide];

  v31 = [v30 topAnchor];
  v32 = [v28 constraintEqualToSystemSpacingBelowAnchor:v31 multiplier:1.0];

  *(v8 + 80) = v32;
  sub_24579D5E0(0, &qword_27EE291F0);
  v33 = sub_245910C34();

  [v78 activateConstraints_];

  sub_24590E7C4();
  if (v34)
  {

    v35 = [v1 &selRef_runAction_forKey_completionHandler_];
    v36 = OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingFedStatsOptinTableViewCell_divider;
    [v35 addSubview_];

    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_2459176D0;
    v38 = [*&v1[v36] heightAnchor];
    v39 = [v38 constraintEqualToConstant_];

    *(v37 + 32) = v39;
    v40 = [*&v1[v36] topAnchor];
    v41 = [*&v1[v4] bottomAnchor];
    v42 = [v40 constraintEqualToAnchor:v41 constant:16.0];

    *(v37 + 40) = v42;
    v43 = [*&v1[v36] leadingAnchor];
    v44 = [*&v1[v4] leadingAnchor];
    v45 = [v43 constraintEqualToAnchor_];

    *(v37 + 48) = v45;
    v46 = [*&v1[v36] trailingAnchor];
    v47 = [*&v1[v4] &_OBJC_LABEL_PROTOCOL___UITableViewDataSource + 4];
    v48 = [v46 &selRef_secondaryButtonClicked + 5];

    *(v37 + 56) = v48;
    v49 = [*&v1[v76] leadingAnchor];
    v50 = [*&v1[v4] leadingAnchor];
    v51 = [v49 &selRef_secondaryButtonClicked + 5];

    *(v37 + 64) = v51;
    v52 = [*&v1[v76] trailingAnchor];
    v53 = [*&v1[v4] trailingAnchor];
    v54 = [v52 &selRef_secondaryButtonClicked + 5];

    *(v37 + 72) = v54;
    v55 = [*&v1[v76] topAnchor];
    v56 = [*&v1[v36] bottomAnchor];
    v57 = [v55 constraintEqualToAnchor:v56 constant:16.0];

    *(v37 + 80) = v57;
    v58 = [*&v1[v77] topAnchor];
    v59 = [*&v1[v76] bottomAnchor];
    v60 = [v58 constraintEqualToAnchor:v59 constant:4.0];

    *(v37 + 88) = v60;
    v61 = [*&v1[v77] leadingAnchor];
    v62 = [*&v1[v4] leadingAnchor];
    v63 = [v61 constraintEqualToAnchor_];

    *(v37 + 96) = v63;
    v64 = [*&v1[v77] trailingAnchor];
    v65 = [*&v1[v4] trailingAnchor];
    v66 = [v64 constraintEqualToAnchor_];

    *(v37 + 104) = v66;
    v67 = [*&v1[v77] &selRef_getGlobalProgenitorKeyAttestation_ + 5];
    v68 = [v1 contentView];
    v69 = [v68 &selRef_getGlobalProgenitorKeyAttestation_ + 5];

    v70 = [v67 constraintEqualToAnchor:v69 constant:-20.0];
    *(v37 + 112) = v70;
    v71 = sub_245910C34();

    [v78 activateConstraints_];
  }

  else
  {
    v72 = [v1 &selRef_runAction_forKey_completionHandler_];
    v73 = [v72 layoutMarginsGuide];

    v74 = [v73 bottomAnchor];
    v75 = [*&v1[v4] lastBaselineAnchor];
    v71 = [v74 constraintEqualToSystemSpacingBelowAnchor:v75 multiplier:1.0];

    [v71 setActive_];
  }

  sub_2457BCB74(0);

  sub_2457BCD8C();
}

id sub_2457BD8F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityProofingFedStatsOptinTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2457BD9C8()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingFedStatsOptinTableViewCell_headlineLabel;
  *(v0 + v1) = sub_2457BC4D0();
  v2 = OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingFedStatsOptinTableViewCell_subtitle;
  *(v0 + v2) = sub_2457BC5F0();
  v3 = OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingFedStatsOptinTableViewCell_bulletList;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setNumberOfLines_];
  v5 = objc_opt_self();
  v6 = [v5 secondaryLabelColor];
  [v4 setTextColor_];

  [v4 setAdjustsFontForContentSizeCategory_];
  *(v0 + v3) = v4;
  v7 = OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingFedStatsOptinTableViewCell_divider;
  v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v9 = [v5 systemGray3Color];
  [v8 setBackgroundColor_];

  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v7) = v8;
  v10 = OBJC_IVAR____TtC9CoreIDVUI42IdentityProofingFedStatsOptinTableViewCell_checkmarkImageView;
  v11 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = [objc_opt_self() checkmarkImage];
  [v11 setImage_];

  *(v0 + v10) = v11;
  sub_2459115D4();
  __break(1u);
}

id sub_2457BDBF0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setNumberOfLines_];
  [v0 setLineBreakMode_];
  [v0 setTextAlignment_];
  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  return v0;
}

id sub_2457BDCC0()
{
  type metadata accessor for CoreIDVUIButton();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() systemBlueColor];
  [v0 setTitleColor:v1 forState:0];

  v2 = [objc_opt_self() configurationWithPointSize:4 weight:18.0];
  v3 = sub_2459109C4();
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  [v0 di:0.0 setTitleEdgeInsets:{8.0, 0.0, 0.0}];
  [v0 setImage:v4 forState:0];

  [v0 setContentHorizontalAlignment_];
  return v0;
}

uint64_t sub_2457BDE4C()
{
  v1 = sub_24590F354();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_24590C094();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_learnMoreURL + 8))
  {

    sub_24590C084();

    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v11, v7, v8);
      v16 = [objc_opt_self() sharedApplication];
      v17 = sub_24590C034();
      sub_2458B880C(MEMORY[0x277D84F90]);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_2457B25F8();
      v18 = sub_2459108E4();

      [v16 openURL:v17 options:v18 completionHandler:0];

      return (*(v9 + 8))(v11, v8);
    }

    sub_2457B2590(v7);
  }

  sub_24590C714();
  v12 = sub_24590F344();
  v13 = sub_245910F54();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_245767000, v12, v13, "The learnMoreURL doesn't exist in the biome fed stats unOrderedUI", v14, 2u);
    MEMORY[0x245D77B40](v14, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

void sub_2457BE1E4()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_tableView;
  v2 = [*(v0 + OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_tableView) tableHeaderView];
  if (v2)
  {
    v13 = v2;
    [v2 frame];
    v4 = v3;
    v6 = v5;
    [*(v0 + v1) bounds];
    v7 = CGRectGetWidth(v15) + -76.0;
    v8 = *(MEMORY[0x277D76C78] + 8);
    [*(v0 + OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_titleLabel) setPreferredMaxLayoutWidth_];
    [*(v0 + OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_subtitleLabel) setPreferredMaxLayoutWidth_];
    [v13 layoutIfNeeded];
    LODWORD(v9) = 1148846080;
    LODWORD(v10) = 1112014848;
    [v13 systemLayoutSizeFittingSize:v7 withHorizontalFittingPriority:v8 verticalFittingPriority:{v9, v10}];
    [v13 setFrame_];
    v12 = *(v0 + v1);
    [v12 setTableHeaderView_];
  }
}

void sub_2457BE3B0()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_titleLabel);
  v3 = objc_opt_self();
  v4 = *MEMORY[0x277D76A20];
  v5 = *MEMORY[0x277D76800];
  v6 = v2;
  v7 = [v3 _preferredFontForTextStyle_maximumContentSizeCategory_];
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  [v7 pointSize];
  v9 = [v3 systemFontOfSize_weight_];

  [v6 setFont_];
  [*(v0 + v1) setAdjustsFontForContentSizeCategory_];
  v10 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_subtitleLabel;
  v11 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_subtitleLabel);
  v12 = [v3 _preferredFontForTextStyle_maximumContentSizeCategory_];
  [v11 setFont_];

  [*(v0 + v10) setAdjustsFontForContentSizeCategory_];
  v13 = *(v0 + v10);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 secondaryLabelColor];
  [v15 setTextColor_];

  v17 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_confirmButton;
  v18 = [*(v0 + OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_confirmButton) titleLabel];
  if (v18)
  {
    v19 = v18;
    v20 = [v3 _preferredFontForTextStyle_maximumContentSizeCategory_];
    if (v20)
    {
      v21 = v20;
      [v20 pointSize];
      v22 = [v3 systemFontOfSize_weight_];

      [v19 setFont_];
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

LABEL_5:
  v23 = [*(v0 + v17) titleLabel];
  [v23 setAdjustsFontSizeToFitWidth_];
}

uint64_t sub_2457BE774(char a1, SEL *a2, void (*a3)(id))
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for IdentityProofingFedStatsOptinViewController();
  v7 = objc_msgSendSuper2(&v9, *a2, a1 & 1);
  a3(v7);

  sub_24590E0E4();
  sub_24590E1B4();
  sub_24590E484();
}

void sub_2457BE8F8()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 1);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v100 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v100 - v10;
  v12 = *&v0[OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_uiConfig];
  if (v12)
  {
    v107 = *&v0[OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_uiConfig];
    v13 = v12;
    v14 = sub_24590D554();
    if (v14 != 2 && (v14 & 1) != 0)
    {
      v105 = v3;
      v106 = v2;
      goto LABEL_8;
    }
  }

  v13 = sub_245792F14();

  if (!v13)
  {
    sub_24590C714();
    v28 = sub_24590F344();
    v29 = sub_245910F54();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_245767000, v28, v29, "Unable to retrieve the UI config for Fed Stats UI from Static or dynamic workflow", v30, 2u);
      MEMORY[0x245D77B40](v30, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return;
  }

  v105 = v3;
  v106 = v2;
  v107 = v13;
LABEL_8:
  v15 = v13;
  v16 = sub_24590D5E4();
  v18 = &qword_27EE29000;
  if (v17)
  {
    v19 = v16;
    v20 = v17;

    sub_24586C880(v19, v20);

    v21 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_titleLabel);
    v22 = sub_2459109C4();

    [v21 setText_];
  }

  v23 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_subtitleLabel);
  v24 = sub_24590D634();
  if (v25)
  {
    v26 = v24;
    v27 = v25;

    sub_24586C880(v26, v27);

    v18 = &qword_27EE29000;
  }

  v31 = sub_2459109C4();

  [v23 setText_];

  v32 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_confirmButton);
  v33 = sub_24590D584();
  if (v34)
  {
    v35 = v33;
    v36 = v34;
    v18 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_proofingFlowManager);

    sub_24586C880(v35, v36);
  }

  v37 = sub_2459109C4();

  [v32 setTitle:v37 forState:0];

  v38 = sub_24590D5B4();
  v39 = (v1 + OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_learnMoreURL);
  *v39 = v38;
  v39[1] = v40;

  v41 = sub_24590D614();
  if (v41)
  {
    v42 = v41;
    v43 = (v41 & 0xFFFFFFFFFFFFFF8);
    if (v41 >> 62)
    {
      if (sub_245911424() == 2)
      {
LABEL_20:
        v101 = v43;
        v104 = v42 & 0xC000000000000001;
        if ((v42 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x245D76B30](0, v42);
        }

        else
        {
          if (!v43[2])
          {
            __break(1u);
LABEL_66:
            v42 = sub_24580A3A4(0, *(v42 + 16) + 1, 1, v42);
            *&v32[v1] = v42;
LABEL_56:
            v96 = v103;
            v98 = *(v42 + 16);
            v97 = *(v42 + 24);
            if (v98 >= v97 >> 1)
            {
              v42 = sub_24580A3A4((v97 > 1), v98 + 1, 1, v42);
            }

            *(v42 + 16) = v98 + 1;
            *(v42 + 8 * v98 + 32) = v9;
            *&v32[v1] = v42;
            swift_endAccess();

            return;
          }

          v44 = *(v42 + 32);
        }

        v45 = v44;
        v108 = MEMORY[0x277D84F90];
        v46 = sub_24590E7A4();
        if (v46)
        {
          v47 = v46;
          v48 = v1;
          sub_2457C0F64(v47, &v108, v48);
        }

        v49 = sub_2457BF418(v45);
        if (v50)
        {
          v51 = v50;
          v103 = v49;
          sub_24590C714();
          v52 = sub_24590F344();
          v53 = sub_245910F54();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&dword_245767000, v52, v53, "Liveness assessment bullet exists in the fed stats UI config", v54, 2u);
            MEMORY[0x245D77B40](v54, -1, -1);
          }

          (*(v105 + 1))(v11, v106);
          v55 = v108;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = sub_24580A178(0, *(v55 + 2) + 1, 1, v55);
          }

          v57 = *(v55 + 2);
          v56 = *(v55 + 3);
          if (v57 >= v56 >> 1)
          {
            v55 = sub_24580A178((v56 > 1), v57 + 1, 1, v55);
          }

          *(v55 + 2) = v57 + 1;
          v58 = &v55[16 * v57];
          *(v58 + 4) = v103;
          *(v58 + 5) = v51;
          v108 = v55;
        }

        v59 = sub_2457BF440(v45);
        if (v60)
        {
          v61 = v59;
          v62 = v60;
          sub_24590C714();
          v63 = sub_24590F344();
          v64 = sub_245910F54();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            *v65 = 0;
            _os_log_impl(&dword_245767000, v63, v64, "AX Settings bullet exists in the fed stats UI config", v65, 2u);
            MEMORY[0x245D77B40](v65, -1, -1);
          }

          (*(v105 + 1))(v9, v106);
          v66 = v108;
          v67 = v45;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_24580A178(0, *(v66 + 2) + 1, 1, v66);
          }

          v69 = *(v66 + 2);
          v68 = *(v66 + 3);
          if (v69 >= v68 >> 1)
          {
            v66 = sub_24580A178((v68 > 1), v69 + 1, 1, v66);
          }

          *(v66 + 2) = v69 + 1;
          v70 = &v66[16 * v69];
          *(v70 + 4) = v61;
          *(v70 + 5) = v62;
          v108 = v66;
          v45 = v67;
        }

        v106 = v45;
        v71 = sub_24590E794();
        if (v72)
        {
          v73 = v71;
          v74 = v72;

          sub_24586C880(v73, v74);
        }

        v75 = sub_24590E7C4();
        if (v76)
        {
          v77 = v75;
          v78 = v76;

          sub_24586C880(v77, v78);
        }

        v79 = v108;
        v80 = sub_24590E7D4();
        v81 = objc_allocWithZone(v80);

        v105 = v79;
        v82 = sub_24590E784();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
        v83 = swift_allocObject();
        v102 = xmmword_245916860;
        *(v83 + 16) = xmmword_245916860;
        *(v83 + 32) = v82;
        v32 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_viewModels;
        swift_beginAccess();
        v84 = *&v32[v1];
        v103 = v82;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v32[v1] = v84;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v84 = sub_24580A3A4(0, v84[2] + 1, 1, v84);
          *&v32[v1] = v84;
        }

        v87 = v84[2];
        v86 = v84[3];
        if (v87 >= v86 >> 1)
        {
          v84 = sub_24580A3A4((v86 > 1), v87 + 1, 1, v84);
        }

        v84[2] = v87 + 1;
        v84[v87 + 4] = v83;
        *&v32[v1] = v84;
        swift_endAccess();
        if (v104)
        {
          v88 = MEMORY[0x245D76B30](1, v42);
        }

        else
        {
          if (v101[2] < 2uLL)
          {
            __break(1u);
            return;
          }

          v88 = *(v42 + 40);
        }

        v18 = v88;

        v89 = sub_24590E794();
        if (v90)
        {
          v91 = v89;
          v92 = v90;

          sub_24586C880(v91, v92);
        }

        v93 = objc_allocWithZone(v80);
        v94 = sub_24590E784();
        v9 = swift_allocObject();
        *(v9 + 1) = v102;
        *(v9 + 4) = v94;
        swift_beginAccess();
        v42 = *&v32[v1];
        v43 = v94;
        v95 = swift_isUniquelyReferenced_nonNull_native();
        *&v32[v1] = v42;
        if (v95)
        {
          goto LABEL_56;
        }

        goto LABEL_66;
      }
    }

    else if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) == 2)
    {
      goto LABEL_20;
    }
  }

  v99 = v107;
}

uint64_t sub_2457BF468(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = a2();
  if (result)
  {
    v5 = result;
    if (*(result + 16) && (v6 = sub_24588C5BC(a3, 0xE800000000000000), (v7 & 1) != 0))
    {
      v8 = (*(v5 + 56) + 16 * v6);
      v9 = *v8;
      v10 = v8[1];

      v11 = sub_24586C880(v9, v10);
      v13 = v12;

      if (v13)
      {
        return v11;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_2457BF540()
{
  v1 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_tableView;
  [*&v0[OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_tableView] setLayoutMargins_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29460);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2459176D0;
  v3 = [*&v0[v1] bottomAnchor];
  v4 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_confirmButton;
  v5 = [*&v0[OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_confirmButton] topAnchor];
  v6 = [v3 constraintEqualToAnchor:v5 constant:-20.0];

  *(v2 + 32) = v6;
  v7 = [*&v0[v1] topAnchor];
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v8;
  v10 = [v8 topAnchor];

  v11 = [v7 constraintEqualToAnchor_];
  *(v2 + 40) = v11;
  v12 = [*&v0[v1] widthAnchor];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v13;
  v15 = [v13 widthAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v2 + 48) = v16;
  v17 = [*&v0[v1] leadingAnchor];
  v18 = [v0 view];
  if (!v18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  *(v2 + 56) = v21;
  v22 = [*&v0[v1] trailingAnchor];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24 = v23;
  v25 = [v23 trailingAnchor];

  v26 = [v22 constraintEqualToAnchor_];
  *(v2 + 64) = v26;
  v27 = [*&v0[v4] leadingAnchor];
  v28 = [v0 view];
  if (!v28)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = v28;
  v30 = [v28 leadingAnchor];

  v31 = [v27 constraintEqualToAnchor:v30 constant:38.0];
  *(v2 + 72) = v31;
  v32 = [*&v0[v4] trailingAnchor];
  v33 = [v0 view];
  if (!v33)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v34 = v33;
  v35 = [v33 trailingAnchor];

  v36 = [v32 constraintEqualToAnchor:v35 constant:-38.0];
  *(v2 + 80) = v36;
  v37 = [*&v0[v4] heightAnchor];
  v38 = [v37 constraintEqualToConstant_];

  *(v2 + 88) = v38;
  v39 = [*&v0[v4] bottomAnchor];
  v40 = [v0 view];
  if (!v40)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v41 = v40;
  v42 = [v40 bottomAnchor];

  v43 = [v39 &selRef:v42 setAlignment:-38.0 + 6];
  *(v2 + 96) = v43;
  v44 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_learnMoreButton;
  v45 = [*&v0[OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_learnMoreButton] heightAnchor];
  v46 = [v45 constraintEqualToConstant_];

  *(v2 + 104) = v46;
  v47 = [*&v0[v44] leadingAnchor];
  v48 = [v0 view];
  if (!v48)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v49 = v48;
  v50 = [v48 leadingAnchor];

  v51 = [v47 &selRef:v50 setAlignment:45.0 + 6];
  *(v2 + 112) = v51;
  v52 = objc_opt_self();
  sub_2457B191C();
  v53 = sub_245910C34();

  [v52 activateConstraints_];
}

uint64_t sub_2457BFB38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v1 - 8);
  v13 = &v11 - v2;
  v3 = v0[OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_consentResult];
  sub_24590E3B4();
  sub_24590E184();
  v14 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_proofingFlowManager;
  v12 = (v3 & 1) == 0;

  sub_24590E0E4();
  sub_24590E1B4();
  sub_24590E484();

  v4 = sub_245910D64();
  v5 = v13;
  (*(*(v4 - 8) + 56))(v13, 1, 1, v4);
  sub_245910D34();
  v6 = v0;
  v7 = sub_245910D24();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 32) = v6;
  *(v8 + 40) = v12;
  sub_2458B90EC(0, 0, v5, &unk_245917760, v8);

  sub_245883548(0);
}

uint64_t sub_2457BFD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = a5;
  *(v5 + 16) = a4;
  sub_245910D34();
  *(v5 + 24) = sub_245910D24();
  v7 = sub_245910CD4();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return MEMORY[0x2822009F8](sub_2457BFE38, v7, v6);
}

uint64_t sub_2457BFE38()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_proofingFlowManager;
  v3 = *(*(v1 + OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_proofingFlowManager) + 168);
  if (!v3 || (v4 = v3, v5 = sub_24590DD94(), v4, !v5))
  {

    v5 = MEMORY[0x277D84F90];
  }

  *(v0 + 48) = v5;
  *(v0 + 56) = *(v1 + v2);

  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_2457BFF3C;
  v7 = *(v0 + 72);

  return sub_245871988(v7, v5, 0);
}

uint64_t sub_2457BFF3C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_2457B3D20, v3, v2);
}

id sub_2457C00E4()
{
  v22.receiver = v0;
  v22.super_class = type metadata accessor for IdentityProofingFedStatsOptinViewController();
  objc_msgSendSuper2(&v22, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  v3 = [objc_opt_self() systemBackgroundColor];
  [v2 setBackgroundColor_];

  result = [v0 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  v5 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_tableView;
  [result addSubview_];

  result = [v0 view];
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_confirmButton;
    [result addSubview_];

    v8 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_primaryStackView;
    [*&v0[OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_primaryStackView] addArrangedSubview_];
    v9 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_subtitleLabel;
    [*&v0[v8] addArrangedSubview_];
    v10 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_learnMoreButton;
    [*&v0[v8] addArrangedSubview_];
    [*&v0[v8] setCustomSpacing:*&v0[v9] afterView:12.0];
    sub_2457BE3B0();
    v11 = *&v0[v5];
    type metadata accessor for IdentityProofingFedStatsOptinTableViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = v11;
    v14 = sub_2459109C4();
    [v13 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v14];

    [*&v0[v5] setDataSource_];
    [*&v0[v5] setDelegate_];
    [*&v0[v5] setTableHeaderView_];
    sub_2457BF540();
    [*&v0[v7] addTarget:v0 action:sel_confirmButtonClicked forControlEvents:64];
    sub_2457BE8F8();
    v15 = [v0 navigationItem];
    [v15 setHidesBackButton:1 animated:0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29480);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_245916930;
    v17 = sub_24590F3E4();
    v18 = MEMORY[0x277D74DB8];
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    MEMORY[0x245D76610](v16, sel_configureFonts);
    swift_unknownObjectRelease();

    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_245916930;
    *(v19 + 32) = v17;
    *(v19 + 40) = v18;
    MEMORY[0x245D76610]();
    swift_unknownObjectRelease();

    v20 = *&v0[v10];
    sub_24590D534();
    v21 = sub_2459109C4();

    [v20 setTitle:v21 forState:0];

    return [*&v0[v10] addTarget:v0 action:sel_learnMoreButtonClicked forControlEvents:64];
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_2457C04F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentityProofingFedStatsOptinViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2457C070C(void *a1)
{
  v2 = v1;
  v4 = sub_2459109C4();
  v5 = sub_24590C244();
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:v5];

  type metadata accessor for IdentityProofingFedStatsOptinTableViewCell();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

    v15 = objc_allocWithZone(MEMORY[0x277D75B48]);

    return [v15 init];
  }

  v8 = v7;
  v9 = sub_24590C274();
  v10 = sub_24590C264();
  v11 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_viewModels;
  result = swift_beginAccess();
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = *(v2 + v11);
  if (v9 >= *(v13 + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v2 = *(v13 + 8 * v9 + 32);
  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v14 = MEMORY[0x245D76B30](v10, v2);

    goto LABEL_8;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v10 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v2 + 8 * v10 + 32);
LABEL_8:
    sub_2457BC9F4();

    return v8;
  }

  __break(1u);
  return result;
}

void sub_2457C09CC(void *a1)
{
  v2 = v1;
  v4 = sub_24590C244();
  v21 = [a1 cellForRowAtIndexPath_];

  if (!v21)
  {
    return;
  }

  type metadata accessor for IdentityProofingFedStatsOptinTableViewCell();
  if (swift_dynamicCastClass())
  {
    v5 = sub_24590C274();
    v6 = sub_24590C264();
    v7 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_viewModels;
    swift_beginAccess();
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v8 = *(v2 + v7);
      if (v5 < *(v8 + 16))
      {
        v7 = *(v8 + 8 * v5 + 32);
        if ((v7 & 0xC000000000000001) == 0)
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v6 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v9 = *(v7 + 8 * v6 + 32);
LABEL_9:
            if (sub_24590E7A4())
            {

              v10 = 0;
            }

            else
            {
              v10 = 1;
            }

            *(v2 + OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_consentResult) = v10;
            sub_2457BCB74(1);
            sub_24590E3C4();
            if (*(v2 + OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_consentResult))
            {
              sub_24590E144();
            }

            else
            {
              sub_24590E104();
            }

            sub_24590E0E4();
            BYTE2(v20) = 2;
            LOWORD(v20) = 514;
            v18 = sub_24590E1B4();
            v19 = v11;
            LOBYTE(v17) = 2;
            sub_24590E484();

            v12 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_confirmButton;
            v13 = *(v2 + OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_confirmButton);
            v14 = objc_opt_self();
            v15 = v13;
            v16 = [v14 systemBlueColor];
            [v15 setBackgroundColor_];

            [*(v2 + v12) setUserInteractionEnabled_];
            return;
          }

          __break(1u);
          return;
        }

LABEL_22:

        v9 = MEMORY[0x245D76B30](v6, v7);

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_22;
  }
}

uint64_t sub_2457C0F64(uint64_t a1, char **a2, uint64_t a3)
{
  v34 = a3;
  v35 = a2;
  v33 = sub_24590F354();
  result = MEMORY[0x28223BE20](v33);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v31 = (v5 + 8);
    v32 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_proofingFlowManager;
    v10 = (a1 + 40);
    *&v6 = 136315138;
    v30 = v6;
    do
    {
      v37 = v9;
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = *(v34 + v32);

      sub_24590C714();

      v14 = sub_24590F344();
      v15 = v8;
      v16 = sub_245910F54();

      v17 = os_log_type_enabled(v14, v16);
      v36 = v11;
      if (v17)
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v38 = v19;
        *v18 = v30;
        *(v18 + 4) = sub_2458CC378(v11, v12, &v38);
        _os_log_impl(&dword_245767000, v14, v16, "looking up text for %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x245D77B40](v19, -1, -1);
        MEMORY[0x245D77B40](v18, -1, -1);
      }

      (*v31)(v15, v33);
      v8 = v15;
      if (*(v13 + OBJC_IVAR____TtC9CoreIDVUI27IdentityProofingFlowManager_textReplacementHelper))
      {

        v20 = sub_24590E664();
        v22 = v21;

        if (!v22)
        {
          v20 = 0;
          v22 = 0xE000000000000000;
        }
      }

      else
      {

        v20 = 0;
        v22 = 0xE000000000000000;
      }

      v23 = v35;
      v24 = *v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v23 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_24580A178(0, *(v24 + 2) + 1, 1, v24);
        *v35 = v24;
      }

      v27 = *(v24 + 2);
      v26 = *(v24 + 3);
      if (v27 >= v26 >> 1)
      {
        v24 = sub_24580A178((v26 > 1), v27 + 1, 1, v24);
        *v35 = v24;
      }

      *(v24 + 2) = v27 + 1;
      v28 = &v24[16 * v27];
      *(v28 + 4) = v20;
      *(v28 + 5) = v22;

      v10 += 2;
      v9 = v37 - 1;
    }

    while (v37 != 1);
  }

  return result;
}

id sub_2457C1270(uint64_t a1, void *a2)
{
  v3 = v2;
  v3[OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_consentResult] = 1;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_viewModels] = MEMORY[0x277D84F90];
  v6 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_uiConfig;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_uiConfig] = 0;
  v7 = &v3[OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_learnMoreURL];
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_primaryStackView;
  v9 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v9 setAxis_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setAlignment_];
  *&v3[v8] = v9;
  v10 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_titleLabel;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setNumberOfLines_];
  [v11 setLineBreakMode_];
  [v11 setTextAlignment_];

  *&v3[v10] = v11;
  v12 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_subtitleLabel;
  *&v3[v12] = sub_2457BDBF0();
  v13 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_confirmButton;
  type metadata accessor for CoreIDVUIButton();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = objc_opt_self();
  v16 = [v15 systemGray5Color];
  [v14 setBackgroundColor_];

  [v14 setUserInteractionEnabled_];
  *&v3[v13] = v14;
  v17 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_tableView;
  v18 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = v18;
  v20 = [v15 systemBackgroundColor];
  [v19 setBackgroundColor_];

  [v19 setScrollEnabled_];
  *&v3[v17] = v19;
  v21 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_learnMoreButton;
  *&v3[v21] = sub_2457BDCC0();
  *&v3[OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_proofingFlowManager] = a1;
  *&v3[OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_uiConfigFactory] = sub_24588520C();
  v22 = *&v3[v6];
  *&v3[v6] = a2;

  v23 = a2;

  v25.receiver = v3;
  v25.super_class = type metadata accessor for IdentityProofingFedStatsOptinViewController();
  return objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_2457C1594(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2457A18F4;

  return sub_2457BFD9C(a1, v4, v5, v6, v7);
}

void sub_2457C1658()
{
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_consentResult) = 1;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_viewModels) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_uiConfig) = 0;
  v1 = (v0 + OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_learnMoreURL);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_primaryStackView;
  v3 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v3 setAxis_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setAlignment_];
  *(v0 + v2) = v3;
  v4 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_titleLabel;
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setNumberOfLines_];
  [v5 setLineBreakMode_];
  [v5 setTextAlignment_];

  *(v0 + v4) = v5;
  v6 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_subtitleLabel;
  *(v0 + v6) = sub_2457BDBF0();
  v7 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_confirmButton;
  type metadata accessor for CoreIDVUIButton();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = objc_opt_self();
  v10 = [v9 systemGray5Color];
  [v8 setBackgroundColor_];

  [v8 setUserInteractionEnabled_];
  *(v0 + v7) = v8;
  v11 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_tableView;
  v12 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = v12;
  v14 = [v9 systemBackgroundColor];
  [v13 setBackgroundColor_];

  [v13 setScrollEnabled_];
  *(v0 + v11) = v13;
  v15 = OBJC_IVAR____TtC9CoreIDVUI43IdentityProofingFedStatsOptinViewController_learnMoreButton;
  *(v0 + v15) = sub_2457BDCC0();
  sub_2459115D4();
  __break(1u);
}

uint64_t sub_2457C1954()
{
  v0 = sub_24590C234();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2459109B4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v2 = qword_27EE32B38;
  sub_24590C224();
  return sub_245910A54();
}

uint64_t sub_2457C1A98()
{
  v0 = sub_24590C234();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2459109B4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v2 = qword_27EE32B38;
  sub_24590C224();
  return sub_245910A54();
}

uint64_t sub_2457C1BD4()
{
  v0 = sub_24590C234();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2459109B4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v2 = qword_27EE32B38;
  sub_24590C224();
  return sub_245910A54();
}

uint64_t sub_2457C1D10()
{
  v0 = sub_24590C234();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2459109B4();
  MEMORY[0x28223BE20](v1 - 8);
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v2 = qword_27EE32B38;
  sub_24590C224();
  return sub_245910A54();
}

uint64_t sub_2457C1E4C()
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24577FB34();
  v4 = sub_24590D8A4();
  v5 = MEMORY[0x245D76600](v4);

  if (v5)
  {
    sub_24590C714();
    v6 = sub_24590F344();
    v7 = sub_245910F54();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_245767000, v6, v7, "Prompting user for feedback due to user defaults setting", v8, 2u);
      MEMORY[0x245D77B40](v8, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }

  return v5 & 1;
}

uint64_t sub_2457C2014()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ProvideFeedbackViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = &v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  v3 = *&v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_primaryButtonTargetAction];
  *v2 = sub_2457C27BC;
  v2[1] = v1;

  sub_245771C34(v3);

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = &v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  v6 = *&v0[OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController_secondaryButtonTargetAction];
  *v5 = sub_2457C27C4;
  v5[1] = v4;

  sub_245771C34(v6);
}

uint64_t sub_2457C2130()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE29470);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v24 - v1;
  v3 = sub_24590C094();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24590F354();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v11 = sub_24590F344();
  v12 = sub_245910F54();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = v2;
    v14 = v3;
    v15 = v13;
    *v13 = 0;
    _os_log_impl(&dword_245767000, v11, v12, "User chose to provide feedback; launching Feedback Assisstant", v13, 2u);
    v16 = v15;
    v3 = v14;
    v2 = v24;
    MEMORY[0x245D77B40](v16, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = *(Strong + OBJC_IVAR____TtC9CoreIDVUI29ProvideFeedbackViewController_continuation);
    v19 = Strong;
    sub_245771BB4(v18);

    if (v18)
    {
      v18();
      sub_245771C34(v18);
    }
  }

  sub_24590C084();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v21 = [objc_opt_self() sharedApplication];
    v22 = sub_24590C034();
    sub_2458B880C(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_2457B25F8();
    v23 = sub_2459108E4();

    [v21 openURL:v22 options:v23 completionHandler:0];

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void sub_2457C24E8()
{
  v0 = sub_24590F354();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v4 = sub_24590F344();
  v5 = sub_245910F54();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_245767000, v4, v5, "User chose not to provide feedback", v6, 2u);
    MEMORY[0x245D77B40](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC9CoreIDVUI29ProvideFeedbackViewController_continuation);
    v9 = Strong;
    sub_245771BB4(v8);

    if (v8)
    {
      v8();
      sub_245771C34(v8);
    }
  }
}

uint64_t sub_2457C26D0()
{

  v1 = *(v0 + OBJC_IVAR____TtC9CoreIDVUI29ProvideFeedbackViewController_continuation);

  return sub_245771C34(v1);
}

id sub_2457C2714()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvideFeedbackViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2457C27CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v20[3] = a2;
  v20[4] = a3;
  v20[2] = a1;
  v7 = sub_24590F354();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();

  v11 = sub_24590F344();
  v12 = sub_245910F84();

  if (os_log_type_enabled(v11, v12))
  {
    v20[1] = a4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    v15 = *(v5 + 24);
    if (*(v15 + 288))
    {
      v16 = *(v15 + 280);
      v17 = *(v15 + 288);
    }

    else
    {
      v17 = 0xE300000000000000;
      v16 = 7104878;
    }

    v18 = sub_2458CC378(v16, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_245767000, v11, v12, "State: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x245D77B40](v14, -1, -1);
    MEMORY[0x245D77B40](v13, -1, -1);

    (*(v8 + 8))(v10, v7);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  sub_24590E214();
  (*(**(v5 + 48) + 96))();
  sub_24590E044();

  sub_24590E1B4();
  sub_24590E484();
}

uint64_t sub_2457C2AB4()
{
  v1 = v0;
  v2 = sub_2459107E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_245910814();
  v6 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24590F354();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + 48);
  if (((*(*v14 + 112))(v11) & 1) != 0 && ((*(*v14 + 104))() & 1) == 0)
  {
    sub_24590C714();
    v18 = sub_24590F344();
    v19 = sub_245910F54();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_245767000, v18, v19, "The user is eligible to proof but have not enabled the biometrics. Show setup biometrics alert", v20, 2u);
      MEMORY[0x245D77B40](v20, -1, -1);
    }

    result = (*(v10 + 8))(v13, v9);
    v21 = *(v1 + 64);
    if (v21)
    {
      v22 = swift_allocObject();
      swift_weakInit();
      v23 = v21;

      sub_2457C43C8(v23, sub_2457C5128, v22);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_2457809BC();
    v15 = sub_245911034();
    aBlock[4] = sub_2457C510C;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2458935A8;
    aBlock[3] = &block_descriptor_48;
    v16 = _Block_copy(aBlock);

    sub_245910804();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24579FE68(&qword_27EE2A980, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18);
    sub_245780AA8();
    sub_2459113A4();
    MEMORY[0x245D76690](0, v8, v5, v16);
    _Block_release(v16);

    (*(v3 + 8))(v5, v2);
    return (*(v6 + 8))(v8, v25);
  }

  return result;
}